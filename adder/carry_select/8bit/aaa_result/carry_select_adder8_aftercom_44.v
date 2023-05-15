
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
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183;

  GTECH_MUX2 U61 ( .A(n130), .B(n131), .S(n132), .Z(sum[7]) );
  GTECH_XOR2 U62 ( .A(n133), .B(n134), .Z(n131) );
  GTECH_OAI21 U63 ( .A(a[6]), .B(n135), .C(n136), .Z(n133) );
  GTECH_AO21 U64 ( .A(n135), .B(a[6]), .C(b[6]), .Z(n136) );
  GTECH_XOR2 U65 ( .A(n134), .B(n137), .Z(n130) );
  GTECH_XOR2 U66 ( .A(n138), .B(b[7]), .Z(n134) );
  GTECH_MUX2 U67 ( .A(n139), .B(n140), .S(n132), .Z(sum[6]) );
  GTECH_XOR2 U68 ( .A(n141), .B(n135), .Z(n140) );
  GTECH_AO21 U69 ( .A(n142), .B(n143), .C(n144), .Z(n135) );
  GTECH_XOR2 U70 ( .A(n141), .B(n145), .Z(n139) );
  GTECH_XOR2 U71 ( .A(a[6]), .B(b[6]), .Z(n141) );
  GTECH_MUX2 U72 ( .A(n146), .B(n147), .S(n132), .Z(sum[5]) );
  GTECH_XOR2 U73 ( .A(n148), .B(n149), .Z(n147) );
  GTECH_XOR2 U74 ( .A(n149), .B(n150), .Z(n146) );
  GTECH_OR_NOT U75 ( .A(n144), .B(n142), .Z(n149) );
  GTECH_NAND2 U76 ( .A(n151), .B(n152), .Z(sum[4]) );
  GTECH_AO21 U77 ( .A(n148), .B(n153), .C(n132), .Z(n152) );
  GTECH_NOT U78 ( .A(n143), .Z(n148) );
  GTECH_MUX2 U79 ( .A(n154), .B(n155), .S(cin), .Z(sum[3]) );
  GTECH_XOR2 U80 ( .A(n156), .B(n157), .Z(n155) );
  GTECH_XOR2 U81 ( .A(n158), .B(n156), .Z(n154) );
  GTECH_XOR2 U82 ( .A(a[3]), .B(b[3]), .Z(n156) );
  GTECH_OA21 U83 ( .A(a[2]), .B(n159), .C(n160), .Z(n158) );
  GTECH_AO21 U84 ( .A(n159), .B(a[2]), .C(b[2]), .Z(n160) );
  GTECH_MUX2 U85 ( .A(n161), .B(n162), .S(cin), .Z(sum[2]) );
  GTECH_XOR2 U86 ( .A(n163), .B(n164), .Z(n162) );
  GTECH_XOR2 U87 ( .A(n163), .B(n159), .Z(n161) );
  GTECH_AO21 U88 ( .A(n165), .B(n166), .C(n167), .Z(n159) );
  GTECH_XOR2 U89 ( .A(a[2]), .B(b[2]), .Z(n163) );
  GTECH_OAI21 U90 ( .A(n168), .B(n169), .C(n170), .Z(sum[1]) );
  GTECH_OAI2N2 U91 ( .A(n166), .B(n171), .C(n172), .D(n165), .Z(n170) );
  GTECH_OA21 U92 ( .A(b[0]), .B(a[0]), .C(cin), .Z(n171) );
  GTECH_XOR2 U93 ( .A(n173), .B(b[1]), .Z(n169) );
  GTECH_OA22 U94 ( .A(b[0]), .B(a[0]), .C(cin), .D(n166), .Z(n168) );
  GTECH_AND2 U95 ( .A(a[0]), .B(b[0]), .Z(n166) );
  GTECH_XOR2 U96 ( .A(cin), .B(n174), .Z(sum[0]) );
  GTECH_OAI21 U97 ( .A(n175), .B(n132), .C(n151), .Z(cout) );
  GTECH_OR3 U98 ( .A(n150), .B(n143), .C(n176), .Z(n151) );
  GTECH_AND2 U99 ( .A(b[4]), .B(a[4]), .Z(n143) );
  GTECH_NOT U100 ( .A(n176), .Z(n132) );
  GTECH_MUX2 U101 ( .A(n174), .B(n177), .S(cin), .Z(n176) );
  GTECH_OA21 U102 ( .A(a[3]), .B(n157), .C(n178), .Z(n177) );
  GTECH_AO21 U103 ( .A(n157), .B(a[3]), .C(b[3]), .Z(n178) );
  GTECH_AO21 U104 ( .A(n164), .B(a[2]), .C(n179), .Z(n157) );
  GTECH_OA21 U105 ( .A(a[2]), .B(n164), .C(b[2]), .Z(n179) );
  GTECH_NAND2 U106 ( .A(n172), .B(n180), .Z(n164) );
  GTECH_OAI21 U107 ( .A(a[0]), .B(b[0]), .C(n165), .Z(n180) );
  GTECH_OR_NOT U108 ( .A(b[1]), .B(n173), .Z(n165) );
  GTECH_NOT U109 ( .A(a[1]), .Z(n173) );
  GTECH_NOT U110 ( .A(n167), .Z(n172) );
  GTECH_AND2 U111 ( .A(b[1]), .B(a[1]), .Z(n167) );
  GTECH_XOR2 U112 ( .A(a[0]), .B(b[0]), .Z(n174) );
  GTECH_OA21 U113 ( .A(n137), .B(n138), .C(n181), .Z(n175) );
  GTECH_AO21 U114 ( .A(n138), .B(n137), .C(n182), .Z(n181) );
  GTECH_NOT U115 ( .A(b[7]), .Z(n182) );
  GTECH_NOT U116 ( .A(a[7]), .Z(n138) );
  GTECH_AOI21 U117 ( .A(n145), .B(a[6]), .C(n183), .Z(n137) );
  GTECH_OA21 U118 ( .A(a[6]), .B(n145), .C(b[6]), .Z(n183) );
  GTECH_AO21 U119 ( .A(n142), .B(n153), .C(n144), .Z(n145) );
  GTECH_AND2 U120 ( .A(b[5]), .B(a[5]), .Z(n144) );
  GTECH_NOT U121 ( .A(n150), .Z(n153) );
  GTECH_NOR2 U122 ( .A(b[4]), .B(a[4]), .Z(n150) );
  GTECH_OR2 U123 ( .A(b[5]), .B(a[5]), .Z(n142) );
endmodule

