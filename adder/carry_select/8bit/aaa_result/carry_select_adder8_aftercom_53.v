
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
         n174, n175, n176, n177, n178, n179, n180, n181, n182;

  GTECH_MUX2 U61 ( .A(n130), .B(n131), .S(n132), .Z(sum[7]) );
  GTECH_XNOR2 U62 ( .A(n133), .B(n134), .Z(n131) );
  GTECH_XNOR2 U63 ( .A(n133), .B(n135), .Z(n130) );
  GTECH_AOI21 U64 ( .A(n136), .B(n137), .C(n138), .Z(n135) );
  GTECH_XNOR2 U65 ( .A(a[7]), .B(n139), .Z(n133) );
  GTECH_MUX2 U66 ( .A(n140), .B(n141), .S(n132), .Z(sum[6]) );
  GTECH_XOR2 U67 ( .A(n142), .B(n143), .Z(n141) );
  GTECH_XOR2 U68 ( .A(n142), .B(n136), .Z(n140) );
  GTECH_AO21 U69 ( .A(n144), .B(n145), .C(n146), .Z(n136) );
  GTECH_AND2 U70 ( .A(n147), .B(n137), .Z(n142) );
  GTECH_MUX2 U71 ( .A(n148), .B(n149), .S(n132), .Z(sum[5]) );
  GTECH_XOR2 U72 ( .A(n150), .B(n151), .Z(n149) );
  GTECH_XNOR2 U73 ( .A(n145), .B(n150), .Z(n148) );
  GTECH_OR_NOT U74 ( .A(n146), .B(n144), .Z(n150) );
  GTECH_NAND2 U75 ( .A(n152), .B(n153), .Z(sum[4]) );
  GTECH_OAI21 U76 ( .A(n145), .B(n151), .C(n132), .Z(n153) );
  GTECH_MUX2 U77 ( .A(n154), .B(n155), .S(cin), .Z(sum[3]) );
  GTECH_XOR2 U78 ( .A(n156), .B(n157), .Z(n155) );
  GTECH_XNOR2 U79 ( .A(n156), .B(n158), .Z(n154) );
  GTECH_AOI21 U80 ( .A(n159), .B(n160), .C(n161), .Z(n158) );
  GTECH_XOR2 U81 ( .A(a[3]), .B(b[3]), .Z(n156) );
  GTECH_MUX2 U82 ( .A(n162), .B(n163), .S(cin), .Z(sum[2]) );
  GTECH_XOR2 U83 ( .A(n164), .B(n165), .Z(n163) );
  GTECH_XOR2 U84 ( .A(n164), .B(n160), .Z(n162) );
  GTECH_AO21 U85 ( .A(n166), .B(n167), .C(n168), .Z(n160) );
  GTECH_AND2 U86 ( .A(n169), .B(n159), .Z(n164) );
  GTECH_MUX2 U87 ( .A(n170), .B(n171), .S(n172), .Z(sum[1]) );
  GTECH_OR_NOT U88 ( .A(n168), .B(n166), .Z(n172) );
  GTECH_AO21 U89 ( .A(n173), .B(cin), .C(n167), .Z(n171) );
  GTECH_OAI21 U90 ( .A(cin), .B(n167), .C(n173), .Z(n170) );
  GTECH_XNOR2 U91 ( .A(cin), .B(n174), .Z(sum[0]) );
  GTECH_OAI21 U92 ( .A(n175), .B(n176), .C(n152), .Z(cout) );
  GTECH_OR3 U93 ( .A(n151), .B(n145), .C(n132), .Z(n152) );
  GTECH_AND2 U94 ( .A(b[4]), .B(a[4]), .Z(n145) );
  GTECH_NOT U95 ( .A(n177), .Z(n151) );
  GTECH_NOT U96 ( .A(n132), .Z(n176) );
  GTECH_MUX2 U97 ( .A(n178), .B(n179), .S(cin), .Z(n132) );
  GTECH_OA21 U98 ( .A(a[3]), .B(n157), .C(n180), .Z(n179) );
  GTECH_AO21 U99 ( .A(n157), .B(a[3]), .C(b[3]), .Z(n180) );
  GTECH_AO21 U100 ( .A(n165), .B(n159), .C(n161), .Z(n157) );
  GTECH_NOT U101 ( .A(n169), .Z(n161) );
  GTECH_NAND2 U102 ( .A(b[2]), .B(a[2]), .Z(n169) );
  GTECH_OR2 U103 ( .A(b[2]), .B(a[2]), .Z(n159) );
  GTECH_AO21 U104 ( .A(n173), .B(n166), .C(n168), .Z(n165) );
  GTECH_AND2 U105 ( .A(b[1]), .B(a[1]), .Z(n168) );
  GTECH_OR2 U106 ( .A(b[1]), .B(a[1]), .Z(n166) );
  GTECH_NOT U107 ( .A(n174), .Z(n178) );
  GTECH_OR_NOT U108 ( .A(n167), .B(n173), .Z(n174) );
  GTECH_OR2 U109 ( .A(b[0]), .B(a[0]), .Z(n173) );
  GTECH_AND2 U110 ( .A(b[0]), .B(a[0]), .Z(n167) );
  GTECH_OA21 U111 ( .A(n134), .B(n181), .C(n182), .Z(n175) );
  GTECH_AO21 U112 ( .A(n181), .B(n134), .C(n139), .Z(n182) );
  GTECH_NOT U113 ( .A(b[7]), .Z(n139) );
  GTECH_NOT U114 ( .A(a[7]), .Z(n181) );
  GTECH_AOI21 U115 ( .A(n137), .B(n143), .C(n138), .Z(n134) );
  GTECH_NOT U116 ( .A(n147), .Z(n138) );
  GTECH_NAND2 U117 ( .A(b[6]), .B(a[6]), .Z(n147) );
  GTECH_AO21 U118 ( .A(n144), .B(n177), .C(n146), .Z(n143) );
  GTECH_AND2 U119 ( .A(b[5]), .B(a[5]), .Z(n146) );
  GTECH_OR2 U120 ( .A(b[4]), .B(a[4]), .Z(n177) );
  GTECH_OR2 U121 ( .A(b[5]), .B(a[5]), .Z(n144) );
  GTECH_OR2 U122 ( .A(b[6]), .B(a[6]), .Z(n137) );
endmodule

