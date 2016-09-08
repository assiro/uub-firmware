// Module to mux DMA and PDT memory access.
//
// 08-Aug-2016 DFN Initial version
//

module muon_memory_mux
   (
    input SEL_B,
    input [16:0] ADDR_A,
    input [16:0] ADDR_B,
    input ENA_A,
    input ENA_B,
    output [31:0] ADDR,
    output ENA
    );

   genvar  i;
   generate for (i = 0; i<16; i=i+1) 
     begin: addr_mux
        muon_memory_mux1 addrmux(.SEL_B(SEL_B), .D({ADDR_A[i],ADDR_B[i]}),
                            .Q(ADDR[i]));
     end
   endgenerate
 
   muon_memory_mux1 enamux(.SEL_B(SEL_B), .D({ENA_A,ENA_B}), .Q(ENA));

   
endmodule

