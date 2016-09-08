// Module to synchronize 26 bits between 2 clock domains using the ASYNC_REG
// attribute. This version accepts ddr data; the input data is clocked on
// on both clock edges.
//
// 06-Feb-2016 DFN Initial version
//

module ddr_synchronizer_26bit
  (
   input [12:0] ASYNC_IN,
   input  DDR_CLK,
   input CLK,
   output [25:0] SYNC_OUT                          
   );

   wire [12:0] POSSTAGE2;
   wire [12:0] NEGSTAGE2;
   reg [12:0] POSSTAGE1;
   reg [12:0] NEGSTAGE1;
   reg [12:0] POSEDGE;
   reg [12:0] NEGEDGE;

always @(negedge DDR_CLK)
  NEGEDGE <= ASYNC_IN;

always @(posedge DDR_CLK)
begin
   POSEDGE <= ASYNC_IN;
   POSSTAGE1 <= POSEDGE;
   NEGSTAGE1 <= NEGEDGE;
end   
   
   // Clock domain crossing
   genvar i;
   generate for (i = 0; i<13; i=i+1) 
     begin: syncddr
        synchronizer_1bit synca(.ASYNC_IN(POSSTAGE1[i]), .CLK(CLK), 
	 	                    .SYNC_OUT(POSSTAGE2[i]));
	assign SYNC_OUT[i] = POSSTAGE2[i];
        synchronizer_1bit syncb(.ASYNC_IN(NEGSTAGE1[i]), .CLK(CLK), 
	 	                .SYNC_OUT(NEGSTAGE2[i]));
	assign SYNC_OUT[i+13] = NEGSTAGE2[i];
     end
   endgenerate
endmodule
