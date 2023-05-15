
module carry_select_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178;

  GTECH_MUX2 U61 ( .A(n130), .B(n131), .S(n132), .Z(sum[7]) );
  GTECH_XOR2 U62 ( .A(n133), .B(n134), .Z(n131) );
  GTECH_OA21 U63 ( .A(a[6]), .B(n135), .C(n136), .Z(n133) );
  GTECH_AO21 U64 ( .A(n135), .B(a[6]), .C(b[6]), .Z(n136) );
  GTECH_XNOR2 U65 ( .A(n134), .B(n137), .Z(n130) );
  GTECH_XOR2 U66 ( .A(n138), .B(n139), .Z(n134) );
  GTECH_MUX2 U67 ( .A(n140), .B(n141), .S(n132), .Z(sum[6]) );
  GTECH_XOR2 U68 ( .A(n142), .B(n135), .Z(n141) );
  GTECH_AO22 U69 ( .A(n143), .B(n144), .C(a[5]), .D(b[5]), .Z(n135) );
  GTECH_XOR2 U70 ( .A(n142), .B(n145), .Z(n140) );
  GTECH_XOR2 U71 ( .A(a[6]), .B(b[6]), .Z(n142) );
  GTECH_MUX2 U72 ( .A(n146), .B(n147), .S(n132), .Z(sum[5]) );
  GTECH_XOR2 U73 ( .A(n144), .B(n148), .Z(n147) );
  GTECH_XNOR2 U74 ( .A(n148), .B(n149), .Z(n146) );
  GTECH_AOI21 U75 ( .A(a[5]), .B(b[5]), .C(n150), .Z(n148) );
  GTECH_NAND2 U76 ( .A(n151), .B(n152), .Z(sum[4]) );
  GTECH_OAI21 U77 ( .A(n144), .B(n149), .C(n153), .Z(n151) );
  GTECH_MUX2 U78 ( .A(n154), .B(n155), .S(cin), .Z(sum[3]) );
  GTECH_XNOR2 U79 ( .A(n156), .B(n157), .Z(n155) );
  GTECH_XNOR2 U80 ( .A(n158), .B(n156), .Z(n154) );
  GTECH_XNOR2 U81 ( .A(a[3]), .B(b[3]), .Z(n156) );
  GTECH_OA21 U82 ( .A(a[2]), .B(n159), .C(n160), .Z(n158) );
  GTECH_AO21 U83 ( .A(n159), .B(a[2]), .C(b[2]), .Z(n160) );
  GTECH_MUX2 U84 ( .A(n161), .B(n162), .S(cin), .Z(sum[2]) );
  GTECH_XOR2 U85 ( .A(n163), .B(n164), .Z(n162) );
  GTECH_XOR2 U86 ( .A(n163), .B(n159), .Z(n161) );
  GTECH_AO21 U87 ( .A(n165), .B(n166), .C(n167), .Z(n159) );
  GTECH_XOR2 U88 ( .A(a[2]), .B(b[2]), .Z(n163) );
  GTECH_MUX2 U89 ( .A(n168), .B(n169), .S(n170), .Z(sum[1]) );
  GTECH_AND_NOT U90 ( .A(n165), .B(n167), .Z(n170) );
  GTECH_OAI21 U91 ( .A(cin), .B(n166), .C(n171), .Z(n169) );
  GTECH_AO21 U92 ( .A(n171), .B(cin), .C(n166), .Z(n168) );
  GTECH_XOR2 U93 ( .A(cin), .B(n172), .Z(sum[0]) );
  GTECH_OAI21 U94 ( .A(n173), .B(n132), .C(n152), .Z(cout) );
  GTECH_OR3 U95 ( .A(n149), .B(n144), .C(n153), .Z(n152) );
  GTECH_AND2 U96 ( .A(a[4]), .B(b[4]), .Z(n144) );
  GTECH_NOT U97 ( .A(n153), .Z(n132) );
  GTECH_MUX2 U98 ( .A(n172), .B(n174), .S(cin), .Z(n153) );
  GTECH_OA21 U99 ( .A(a[3]), .B(n157), .C(n175), .Z(n174) );
  GTECH_AO21 U100 ( .A(n157), .B(a[3]), .C(b[3]), .Z(n175) );
  GTECH_AO21 U101 ( .A(n164), .B(a[2]), .C(n176), .Z(n157) );
  GTECH_OA21 U102 ( .A(a[2]), .B(n164), .C(b[2]), .Z(n176) );
  GTECH_AO21 U103 ( .A(n171), .B(n165), .C(n167), .Z(n164) );
  GTECH_AND2 U104 ( .A(b[1]), .B(a[1]), .Z(n167) );
  GTECH_OR2 U105 ( .A(a[1]), .B(b[1]), .Z(n165) );
  GTECH_AND_NOT U106 ( .A(n171), .B(n166), .Z(n172) );
  GTECH_AND2 U107 ( .A(a[0]), .B(b[0]), .Z(n166) );
  GTECH_OR2 U108 ( .A(b[0]), .B(a[0]), .Z(n171) );
  GTECH_OA21 U109 ( .A(n137), .B(n138), .C(n177), .Z(n173) );
  GTECH_AO21 U110 ( .A(n138), .B(n137), .C(n139), .Z(n177) );
  GTECH_NOT U111 ( .A(b[7]), .Z(n139) );
  GTECH_NOT U112 ( .A(a[7]), .Z(n138) );
  GTECH_AOI21 U113 ( .A(n145), .B(a[6]), .C(n178), .Z(n137) );
  GTECH_OA21 U114 ( .A(a[6]), .B(n145), .C(b[6]), .Z(n178) );
  GTECH_OAI2N2 U115 ( .A(n149), .B(n150), .C(a[5]), .D(b[5]), .Z(n145) );
  GTECH_NOT U116 ( .A(n143), .Z(n150) );
  GTECH_OR2 U117 ( .A(b[5]), .B(a[5]), .Z(n143) );
  GTECH_NOR2 U118 ( .A(b[4]), .B(a[4]), .Z(n149) );
endmodule

