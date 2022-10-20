module fulladder(a,b,cin,cout,s);
  input a,b,cin;
  output cout, s;
  wire ms, mc1, mc2; 

  halfadder h0(a,b,mc1,ms);
  halfadder h1(ms,cin,mc2,s);
  or2gate co(mc1,mc2,cout);
    
endmodule