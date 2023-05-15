
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
  GTECH_XOR2 U62 ( .A(n133), .B(n134), .Z(n131) );
  GTECH_OA21 U63 ( .A(n135), .B(n136), .C(n137), .Z(n134) );
  GTECH_XNOR2 U64 ( .A(n133), .B(n138), .Z(n130) );
  GTECH_XNOR2 U65 ( .A(a[7]), .B(b[7]), .Z(n133) );
  GTECH_MUX2 U66 ( .A(n139), .B(n140), .S(n132), .Z(sum[6]) );
  GTECH_XNOR2 U67 ( .A(n141), .B(n136), .Z(n140) );
  GTECH_AO21 U68 ( .A(n142), .B(n143), .C(n144), .Z(n136) );
  GTECH_XNOR2 U69 ( .A(n141), .B(n145), .Z(n139) );
  GTECH_AND_NOT U70 ( .A(n137), .B(n135), .Z(n141) );
  GTECH_MUX2 U71 ( .A(n146), .B(n147), .S(n132), .Z(sum[5]) );
  GTECH_XOR2 U72 ( .A(n148), .B(n143), .Z(n147) );
  GTECH_XNOR2 U73 ( .A(n148), .B(n149), .Z(n146) );
  GTECH_OAI21 U74 ( .A(a[5]), .B(b[5]), .C(n142), .Z(n148) );
  GTECH_NAND2 U75 ( .A(n150), .B(n151), .Z(sum[4]) );
  GTECH_AO21 U76 ( .A(n143), .B(n149), .C(n132), .Z(n150) );
  GTECH_MUX2 U77 ( .A(n152), .B(n153), .S(cin), .Z(sum[3]) );
  GTECH_XNOR2 U78 ( .A(n154), .B(n155), .Z(n153) );
  GTECH_XOR2 U79 ( .A(n154), .B(n156), .Z(n152) );
  GTECH_AOI2N2 U80 ( .A(n157), .B(n158), .C(n159), .D(n160), .Z(n156) );
  GTECH_XNOR2 U81 ( .A(a[3]), .B(b[3]), .Z(n154) );
  GTECH_MUX2 U82 ( .A(n161), .B(n162), .S(cin), .Z(sum[2]) );
  GTECH_XNOR2 U83 ( .A(n163), .B(n164), .Z(n162) );
  GTECH_XNOR2 U84 ( .A(n158), .B(n164), .Z(n161) );
  GTECH_OAI21 U85 ( .A(n159), .B(n160), .C(n157), .Z(n164) );
  GTECH_NOT U86 ( .A(b[2]), .Z(n160) );
  GTECH_NOT U87 ( .A(a[2]), .Z(n159) );
  GTECH_AO21 U88 ( .A(n165), .B(n166), .C(n167), .Z(n158) );
  GTECH_MUX2 U89 ( .A(n168), .B(n169), .S(n170), .Z(sum[1]) );
  GTECH_AND_NOT U90 ( .A(n165), .B(n167), .Z(n170) );
  GTECH_OAI21 U91 ( .A(cin), .B(n166), .C(n171), .Z(n169) );
  GTECH_AO21 U92 ( .A(n171), .B(cin), .C(n166), .Z(n168) );
  GTECH_XOR2 U93 ( .A(cin), .B(n172), .Z(sum[0]) );
  GTECH_OAI21 U94 ( .A(n173), .B(n132), .C(n151), .Z(cout) );
  GTECH_NAND3 U95 ( .A(n143), .B(n149), .C(n132), .Z(n151) );
  GTECH_NOT U96 ( .A(n174), .Z(n149) );
  GTECH_NAND2 U97 ( .A(a[4]), .B(b[4]), .Z(n143) );
  GTECH_MUX2 U98 ( .A(n175), .B(n176), .S(cin), .Z(n132) );
  GTECH_OA21 U99 ( .A(n177), .B(n178), .C(n179), .Z(n176) );
  GTECH_OAI21 U100 ( .A(a[3]), .B(n155), .C(b[3]), .Z(n179) );
  GTECH_NOT U101 ( .A(n177), .Z(n155) );
  GTECH_NOT U102 ( .A(a[3]), .Z(n178) );
  GTECH_AOI22 U103 ( .A(n163), .B(n157), .C(a[2]), .D(b[2]), .Z(n177) );
  GTECH_OR2 U104 ( .A(a[2]), .B(b[2]), .Z(n157) );
  GTECH_AO21 U105 ( .A(n171), .B(n165), .C(n167), .Z(n163) );
  GTECH_AND2 U106 ( .A(a[1]), .B(b[1]), .Z(n167) );
  GTECH_OR2 U107 ( .A(b[1]), .B(a[1]), .Z(n165) );
  GTECH_NOT U108 ( .A(n172), .Z(n175) );
  GTECH_AND_NOT U109 ( .A(n171), .B(n166), .Z(n172) );
  GTECH_AND2 U110 ( .A(b[0]), .B(a[0]), .Z(n166) );
  GTECH_OR2 U111 ( .A(a[0]), .B(b[0]), .Z(n171) );
  GTECH_NOT U112 ( .A(n180), .Z(n173) );
  GTECH_AO21 U113 ( .A(n138), .B(a[7]), .C(n181), .Z(n180) );
  GTECH_NOT U114 ( .A(n182), .Z(n181) );
  GTECH_OAI21 U115 ( .A(a[7]), .B(n138), .C(b[7]), .Z(n182) );
  GTECH_OAI21 U116 ( .A(n135), .B(n145), .C(n137), .Z(n138) );
  GTECH_NAND2 U117 ( .A(b[6]), .B(a[6]), .Z(n137) );
  GTECH_AO21 U118 ( .A(n142), .B(n174), .C(n144), .Z(n145) );
  GTECH_NOR2 U119 ( .A(b[5]), .B(a[5]), .Z(n144) );
  GTECH_NOR2 U120 ( .A(b[4]), .B(a[4]), .Z(n174) );
  GTECH_NAND2 U121 ( .A(b[5]), .B(a[5]), .Z(n142) );
  GTECH_NOR2 U122 ( .A(a[6]), .B(b[6]), .Z(n135) );
endmodule

