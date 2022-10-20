module mux2_1(x,y,s,r);
  input x,y,s;
  output r;
  
  assign r = (x & ~s) | (y & s);
endmodule
  
