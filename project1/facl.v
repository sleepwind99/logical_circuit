`timescale 1ps/1ps
module facl(a,b,cin,s,p,g);
  input a,b,cin;
  output s,p,g;
  
  assign #30 p = a ^ b;
  assign #20 g = a & b;
  assign #30 s = p ^ cin;
  
endmodule