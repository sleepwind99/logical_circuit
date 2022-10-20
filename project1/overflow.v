`timescale 1ps/1ps
module overflow(a,b,c);
  input a,b;
  output c;

  assign #30 c = a ^ b;
  
endmodule