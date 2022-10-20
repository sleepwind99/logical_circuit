`timescale 1ps/1ps
module or3gate(a,b,c,r);
  input a,b,c;
  output r;
  
  assign #30 r = a | b | c;
  
endmodule