module cla(a,b,s_cla,o_cla);
  input [3:0] a, b;
  output [3:0] s_cla;
  output o_cla;
  wire [3:0] c, p, g;
  wire [19:0] w;
  
  facl f0(a[0],b[0],0,s_cla[0],p[0],g[0]);
  and2gate and1(p[0],0,w[0]);
  or2gate or1(w[0],g[0],c[0]);
  
  facl f1(a[1],b[1],c[0],s_cla[1],p[1],g[1]);
  and3gate and2(c[0],p[0],p[1],w[1]);
  and2gate and3(p[1],g[0],w[2]);
  or3gate or2(w[1],w[2],g[1],c[1]);
  
  facl f2(a[2],b[2],c[1],s_cla[2],p[2],g[2]);
  and2gate and4(c[0],p[0],w[3]);
  and2gate and5(p[1],p[2],w[4]);
  and2gate and6(w[3],w[4],w[5]);
  and3gate and7(g[0],p[1],p[2],w[6]);
  and2gate and8(g[1],p[2],w[7]);
  or2gate or3(w[5],w[6],w[8]);
  or2gate or4(w[7],g[2],w[9]);
  or2gate or5(w[8],w[9],c[2]);
  
  facl f3(a[3],b[3],c[2],s_cla[3],p[3],g[3]);
  and3gate and9(c[0],p[0],p[1],w[10]);
  and2gate and10(p[2],p[3],w[11]);
  and2gate and11(g[2],p[1],w[12]);
  and2gate and12(p[2],p[3],w[13]);
  and3gate and13(g[1],p[2],p[3],w[14]);
  and2gate and14(g[2],p[3],w[15]);
  and2gate and15(w[10],w[11],w[16]);
  and2gate and16(w[12],w[13],w[17]);
  or3gate or6(w[16],w[17],w[14],w[18]);
  or2gate or7(w[15],g[3],w[19]);
  or2gate or8(w[18],w[19],c[3]);
  
  overflow o2(c[2],c[3],o_cla);
  
endmodule