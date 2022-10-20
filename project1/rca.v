`timescale 1ps/1ps
module rca(a,b,s_rca,o_rca);
  input [3:0] a, b;
  output [3:0] s_rca;
  output o_rca;
  wire [3:0] c;
  
  fulladder f0(a[0],b[0],0,c[0],s_rca[0]); 
  fulladder f1(a[1],b[1],c[0],c[1],s_rca[1]);
  fulladder f2(a[2],b[2],c[1],c[2],s_rca[2]);
  fulladder f3(a[3],b[3],c[2],c[3],s_rca[3]);
  assign #30 o_rca = c[2] ^ c[3];
  
endmodule