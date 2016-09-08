// 2 to 1 mux
//

module shwr_memory_mux1
  (
   input SEL_B,
   input [1:0] D,
   output wire Q
   );

  assign Q = D[SEL_B];

endmodule // shwr_memory_mux1
