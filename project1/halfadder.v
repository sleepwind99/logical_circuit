`timescale 1ps/1ps
module halfadder(a,b,c,s);
  input a,b;
  output c,s;
  
  assign #30 s = a ^ b; 
  assign #20 c = a & b; 
  
endmodule