`timescale 1ps/1ps
module or2gate(a,b,r);
  input a,b;
  output r;
  
  assign #20 r = a | b;
  
endmodule