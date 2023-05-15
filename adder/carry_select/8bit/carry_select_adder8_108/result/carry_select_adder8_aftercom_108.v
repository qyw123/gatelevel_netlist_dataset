
module carry_select_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176;

  GTECH_MUX2 U60 ( .A(n129), .B(n130), .S(n131), .Z(sum[7]) );
  GTECH_XNOR2 U61 ( .A(n132), .B(n133), .Z(n130) );
  GTECH_XNOR2 U62 ( .A(n134), .B(n132), .Z(n129) );
  GTECH_XNOR2 U63 ( .A(a[7]), .B(b[7]), .Z(n132) );
  GTECH_AO21 U64 ( .A(n135), .B(n136), .C(n137), .Z(n134) );
  GTECH_MUX2 U65 ( .A(n138), .B(n139), .S(n131), .Z(sum[6]) );
  GTECH_XOR2 U66 ( .A(n140), .B(n141), .Z(n139) );
  GTECH_XOR2 U67 ( .A(n140), .B(n136), .Z(n138) );
  GTECH_AO21 U68 ( .A(n142), .B(n143), .C(n144), .Z(n136) );
  GTECH_AND_NOT U69 ( .A(n135), .B(n137), .Z(n140) );
  GTECH_MUX2 U70 ( .A(n145), .B(n146), .S(n131), .Z(sum[5]) );
  GTECH_XNOR2 U71 ( .A(n147), .B(n148), .Z(n146) );
  GTECH_XNOR2 U72 ( .A(n143), .B(n147), .Z(n145) );
  GTECH_OR_NOT U73 ( .A(n144), .B(n142), .Z(n147) );
  GTECH_NAND2 U74 ( .A(n149), .B(n150), .Z(sum[4]) );
  GTECH_OAI21 U75 ( .A(n143), .B(n151), .C(n131), .Z(n150) );
  GTECH_MUX2 U76 ( .A(n152), .B(n153), .S(cin), .Z(sum[3]) );
  GTECH_XNOR2 U77 ( .A(n154), .B(n155), .Z(n153) );
  GTECH_XNOR2 U78 ( .A(n156), .B(n154), .Z(n152) );
  GTECH_XNOR2 U79 ( .A(a[3]), .B(b[3]), .Z(n154) );
  GTECH_AO21 U80 ( .A(n157), .B(n158), .C(n159), .Z(n156) );
  GTECH_MUX2 U81 ( .A(n160), .B(n161), .S(cin), .Z(sum[2]) );
  GTECH_XOR2 U82 ( .A(n162), .B(n163), .Z(n161) );
  GTECH_XOR2 U83 ( .A(n162), .B(n158), .Z(n160) );
  GTECH_AO22 U84 ( .A(a[1]), .B(b[1]), .C(n164), .D(n165), .Z(n158) );
  GTECH_AND_NOT U85 ( .A(n157), .B(n159), .Z(n162) );
  GTECH_MUX2 U86 ( .A(n166), .B(n167), .S(n168), .Z(sum[1]) );
  GTECH_AO21 U87 ( .A(a[1]), .B(b[1]), .C(n169), .Z(n168) );
  GTECH_NOT U88 ( .A(n164), .Z(n169) );
  GTECH_AO21 U89 ( .A(n170), .B(cin), .C(n165), .Z(n167) );
  GTECH_OAI21 U90 ( .A(cin), .B(n165), .C(n170), .Z(n166) );
  GTECH_XNOR2 U91 ( .A(cin), .B(n171), .Z(sum[0]) );
  GTECH_OAI21 U92 ( .A(n172), .B(n173), .C(n149), .Z(cout) );
  GTECH_OR3 U93 ( .A(n143), .B(n151), .C(n131), .Z(n149) );
  GTECH_NOT U94 ( .A(n173), .Z(n131) );
  GTECH_NOT U95 ( .A(n148), .Z(n151) );
  GTECH_AND2 U96 ( .A(a[4]), .B(b[4]), .Z(n143) );
  GTECH_MUX2 U97 ( .A(n171), .B(n174), .S(cin), .Z(n173) );
  GTECH_AOI22 U98 ( .A(n155), .B(a[3]), .C(n175), .D(b[3]), .Z(n174) );
  GTECH_OR2 U99 ( .A(a[3]), .B(n155), .Z(n175) );
  GTECH_AO21 U100 ( .A(n163), .B(n157), .C(n159), .Z(n155) );
  GTECH_AND2 U101 ( .A(b[2]), .B(a[2]), .Z(n159) );
  GTECH_OR2 U102 ( .A(a[2]), .B(b[2]), .Z(n157) );
  GTECH_AO22 U103 ( .A(a[1]), .B(b[1]), .C(n170), .D(n164), .Z(n163) );
  GTECH_OR2 U104 ( .A(a[1]), .B(b[1]), .Z(n164) );
  GTECH_OR_NOT U105 ( .A(n165), .B(n170), .Z(n171) );
  GTECH_OR2 U106 ( .A(b[0]), .B(a[0]), .Z(n170) );
  GTECH_AND2 U107 ( .A(b[0]), .B(a[0]), .Z(n165) );
  GTECH_AOI22 U108 ( .A(n133), .B(a[7]), .C(n176), .D(b[7]), .Z(n172) );
  GTECH_OR2 U109 ( .A(n133), .B(a[7]), .Z(n176) );
  GTECH_AO21 U110 ( .A(n141), .B(n135), .C(n137), .Z(n133) );
  GTECH_AND2 U111 ( .A(b[6]), .B(a[6]), .Z(n137) );
  GTECH_OR2 U112 ( .A(b[6]), .B(a[6]), .Z(n135) );
  GTECH_AO21 U113 ( .A(n148), .B(n142), .C(n144), .Z(n141) );
  GTECH_AND2 U114 ( .A(b[5]), .B(a[5]), .Z(n144) );
  GTECH_OR2 U115 ( .A(b[5]), .B(a[5]), .Z(n142) );
  GTECH_OR2 U116 ( .A(b[4]), .B(a[4]), .Z(n148) );
endmodule

