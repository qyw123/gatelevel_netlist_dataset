
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
         n173, n174, n175, n176, n177, n178, n179;

  GTECH_MUX2 U60 ( .A(n129), .B(n130), .S(n131), .Z(sum[7]) );
  GTECH_XOR2 U61 ( .A(n132), .B(n133), .Z(n130) );
  GTECH_XOR2 U62 ( .A(n132), .B(n134), .Z(n129) );
  GTECH_OAI21 U63 ( .A(n135), .B(n136), .C(n137), .Z(n134) );
  GTECH_XOR2 U64 ( .A(a[7]), .B(b[7]), .Z(n132) );
  GTECH_MUX2 U65 ( .A(n138), .B(n139), .S(n131), .Z(sum[6]) );
  GTECH_XOR2 U66 ( .A(n140), .B(n141), .Z(n139) );
  GTECH_XOR2 U67 ( .A(n135), .B(n141), .Z(n138) );
  GTECH_OR_NOT U68 ( .A(n136), .B(n137), .Z(n141) );
  GTECH_OAI21 U69 ( .A(n142), .B(n143), .C(n144), .Z(n135) );
  GTECH_MUX2 U70 ( .A(n145), .B(n146), .S(n131), .Z(sum[5]) );
  GTECH_XNOR2 U71 ( .A(n147), .B(n148), .Z(n146) );
  GTECH_XOR2 U72 ( .A(n143), .B(n147), .Z(n145) );
  GTECH_AOI21 U73 ( .A(n149), .B(n150), .C(n142), .Z(n147) );
  GTECH_OR_NOT U74 ( .A(n151), .B(n152), .Z(sum[4]) );
  GTECH_OAI21 U75 ( .A(n143), .B(n148), .C(n131), .Z(n152) );
  GTECH_MUX2 U76 ( .A(n153), .B(n154), .S(cin), .Z(sum[3]) );
  GTECH_XNOR2 U77 ( .A(n155), .B(n156), .Z(n154) );
  GTECH_XNOR2 U78 ( .A(n155), .B(n157), .Z(n153) );
  GTECH_OAI21 U79 ( .A(n158), .B(n159), .C(n160), .Z(n157) );
  GTECH_XNOR2 U80 ( .A(a[3]), .B(b[3]), .Z(n155) );
  GTECH_MUX2 U81 ( .A(n161), .B(n162), .S(cin), .Z(sum[2]) );
  GTECH_XNOR2 U82 ( .A(n163), .B(n164), .Z(n162) );
  GTECH_XNOR2 U83 ( .A(n163), .B(n159), .Z(n161) );
  GTECH_AOI21 U84 ( .A(n165), .B(n166), .C(n167), .Z(n159) );
  GTECH_AND_NOT U85 ( .A(n160), .B(n158), .Z(n163) );
  GTECH_MUX2 U86 ( .A(n168), .B(n169), .S(n170), .Z(sum[1]) );
  GTECH_AND_NOT U87 ( .A(n165), .B(n167), .Z(n170) );
  GTECH_OAI21 U88 ( .A(cin), .B(n166), .C(n171), .Z(n169) );
  GTECH_NOT U89 ( .A(n172), .Z(n168) );
  GTECH_AOI21 U90 ( .A(n171), .B(cin), .C(n166), .Z(n172) );
  GTECH_XOR2 U91 ( .A(cin), .B(n173), .Z(sum[0]) );
  GTECH_NOT U92 ( .A(n174), .Z(cout) );
  GTECH_AOI21 U93 ( .A(n175), .B(n131), .C(n151), .Z(n174) );
  GTECH_NOR3 U94 ( .A(n143), .B(n148), .C(n131), .Z(n151) );
  GTECH_NOT U95 ( .A(n176), .Z(n148) );
  GTECH_AND2 U96 ( .A(a[4]), .B(b[4]), .Z(n143) );
  GTECH_MUX2 U97 ( .A(n173), .B(n177), .S(cin), .Z(n131) );
  GTECH_OA22 U98 ( .A(a[3]), .B(n156), .C(b[3]), .D(n178), .Z(n177) );
  GTECH_AND2 U99 ( .A(a[3]), .B(n156), .Z(n178) );
  GTECH_OAI21 U100 ( .A(n164), .B(n158), .C(n160), .Z(n156) );
  GTECH_NAND2 U101 ( .A(b[2]), .B(a[2]), .Z(n160) );
  GTECH_NOR2 U102 ( .A(a[2]), .B(b[2]), .Z(n158) );
  GTECH_AOI21 U103 ( .A(n165), .B(n171), .C(n167), .Z(n164) );
  GTECH_AND2 U104 ( .A(a[1]), .B(b[1]), .Z(n167) );
  GTECH_OR2 U105 ( .A(b[1]), .B(a[1]), .Z(n165) );
  GTECH_AND_NOT U106 ( .A(n171), .B(n166), .Z(n173) );
  GTECH_AND2 U107 ( .A(a[0]), .B(b[0]), .Z(n166) );
  GTECH_OR2 U108 ( .A(b[0]), .B(a[0]), .Z(n171) );
  GTECH_AO22 U109 ( .A(n179), .B(b[7]), .C(n133), .D(a[7]), .Z(n175) );
  GTECH_OR2 U110 ( .A(n133), .B(a[7]), .Z(n179) );
  GTECH_OAI21 U111 ( .A(n136), .B(n140), .C(n137), .Z(n133) );
  GTECH_NAND2 U112 ( .A(b[6]), .B(a[6]), .Z(n137) );
  GTECH_OAI21 U113 ( .A(n142), .B(n176), .C(n144), .Z(n140) );
  GTECH_OR_NOT U114 ( .A(b[5]), .B(n149), .Z(n144) );
  GTECH_NOT U115 ( .A(a[5]), .Z(n149) );
  GTECH_OR2 U116 ( .A(b[4]), .B(a[4]), .Z(n176) );
  GTECH_AND_NOT U117 ( .A(a[5]), .B(n150), .Z(n142) );
  GTECH_NOT U118 ( .A(b[5]), .Z(n150) );
  GTECH_NOR2 U119 ( .A(a[6]), .B(b[6]), .Z(n136) );
endmodule

