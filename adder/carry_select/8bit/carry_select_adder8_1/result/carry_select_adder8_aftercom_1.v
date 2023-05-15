
module carry_select_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180;

  GTECH_MUX2 U59 ( .A(n128), .B(n129), .S(n130), .Z(sum[7]) );
  GTECH_XOR2 U60 ( .A(n131), .B(n132), .Z(n129) );
  GTECH_XNOR2 U61 ( .A(n131), .B(n133), .Z(n128) );
  GTECH_AND2 U62 ( .A(n134), .B(n135), .Z(n133) );
  GTECH_OAI21 U63 ( .A(b[6]), .B(a[6]), .C(n136), .Z(n134) );
  GTECH_XOR2 U64 ( .A(a[7]), .B(b[7]), .Z(n131) );
  GTECH_MUX2 U65 ( .A(n137), .B(n138), .S(n130), .Z(sum[6]) );
  GTECH_XOR2 U66 ( .A(n139), .B(n140), .Z(n138) );
  GTECH_XOR2 U67 ( .A(n139), .B(n136), .Z(n137) );
  GTECH_OAI21 U68 ( .A(n141), .B(n142), .C(n143), .Z(n136) );
  GTECH_OA21 U69 ( .A(b[6]), .B(a[6]), .C(n135), .Z(n139) );
  GTECH_MUX2 U70 ( .A(n144), .B(n145), .S(n130), .Z(sum[5]) );
  GTECH_XNOR2 U71 ( .A(n146), .B(n147), .Z(n145) );
  GTECH_XOR2 U72 ( .A(n148), .B(n146), .Z(n144) );
  GTECH_AND_NOT U73 ( .A(n143), .B(n141), .Z(n146) );
  GTECH_NAND2 U74 ( .A(n149), .B(n150), .Z(sum[4]) );
  GTECH_OAI21 U75 ( .A(n148), .B(n147), .C(n130), .Z(n149) );
  GTECH_MUX2 U76 ( .A(n151), .B(n152), .S(n153), .Z(sum[3]) );
  GTECH_XNOR2 U77 ( .A(n154), .B(n155), .Z(n152) );
  GTECH_AND2 U78 ( .A(n156), .B(n157), .Z(n155) );
  GTECH_OAI21 U79 ( .A(b[2]), .B(a[2]), .C(n158), .Z(n156) );
  GTECH_XOR2 U80 ( .A(n154), .B(n159), .Z(n151) );
  GTECH_XOR2 U81 ( .A(a[3]), .B(b[3]), .Z(n154) );
  GTECH_MUX2 U82 ( .A(n160), .B(n161), .S(n153), .Z(sum[2]) );
  GTECH_XOR2 U83 ( .A(n162), .B(n158), .Z(n161) );
  GTECH_OAI21 U84 ( .A(n163), .B(n164), .C(n165), .Z(n158) );
  GTECH_XOR2 U85 ( .A(n162), .B(n166), .Z(n160) );
  GTECH_OA21 U86 ( .A(b[2]), .B(a[2]), .C(n157), .Z(n162) );
  GTECH_MUX2 U87 ( .A(n167), .B(n168), .S(n169), .Z(sum[1]) );
  GTECH_AND_NOT U88 ( .A(n165), .B(n163), .Z(n169) );
  GTECH_NOT U89 ( .A(n170), .Z(n168) );
  GTECH_AOI21 U90 ( .A(n153), .B(n164), .C(n171), .Z(n170) );
  GTECH_OAI21 U91 ( .A(n171), .B(n153), .C(n164), .Z(n167) );
  GTECH_XNOR2 U92 ( .A(n153), .B(n172), .Z(sum[0]) );
  GTECH_OAI21 U93 ( .A(n173), .B(n174), .C(n150), .Z(cout) );
  GTECH_OR3 U94 ( .A(n148), .B(n147), .C(n130), .Z(n150) );
  GTECH_NOT U95 ( .A(n142), .Z(n148) );
  GTECH_NAND2 U96 ( .A(a[4]), .B(b[4]), .Z(n142) );
  GTECH_NOT U97 ( .A(n130), .Z(n174) );
  GTECH_MUX2 U98 ( .A(n175), .B(n172), .S(n153), .Z(n130) );
  GTECH_NOT U99 ( .A(cin), .Z(n153) );
  GTECH_AND_NOT U100 ( .A(n164), .B(n171), .Z(n172) );
  GTECH_NAND2 U101 ( .A(b[0]), .B(a[0]), .Z(n164) );
  GTECH_OA21 U102 ( .A(a[3]), .B(n159), .C(n176), .Z(n175) );
  GTECH_NOT U103 ( .A(n177), .Z(n176) );
  GTECH_AOI21 U104 ( .A(n159), .B(a[3]), .C(b[3]), .Z(n177) );
  GTECH_NAND2 U105 ( .A(n178), .B(n157), .Z(n159) );
  GTECH_NAND2 U106 ( .A(a[2]), .B(b[2]), .Z(n157) );
  GTECH_OAI21 U107 ( .A(a[2]), .B(b[2]), .C(n166), .Z(n178) );
  GTECH_OAI21 U108 ( .A(n163), .B(n171), .C(n165), .Z(n166) );
  GTECH_NAND2 U109 ( .A(a[1]), .B(b[1]), .Z(n165) );
  GTECH_NOR2 U110 ( .A(a[0]), .B(b[0]), .Z(n171) );
  GTECH_NOR2 U111 ( .A(b[1]), .B(a[1]), .Z(n163) );
  GTECH_AOI21 U112 ( .A(n132), .B(a[7]), .C(n179), .Z(n173) );
  GTECH_OA21 U113 ( .A(a[7]), .B(n132), .C(b[7]), .Z(n179) );
  GTECH_NAND2 U114 ( .A(n180), .B(n135), .Z(n132) );
  GTECH_NAND2 U115 ( .A(a[6]), .B(b[6]), .Z(n135) );
  GTECH_OAI21 U116 ( .A(a[6]), .B(b[6]), .C(n140), .Z(n180) );
  GTECH_OAI21 U117 ( .A(n141), .B(n147), .C(n143), .Z(n140) );
  GTECH_NAND2 U118 ( .A(a[5]), .B(b[5]), .Z(n143) );
  GTECH_NOR2 U119 ( .A(b[4]), .B(a[4]), .Z(n147) );
  GTECH_NOR2 U120 ( .A(a[5]), .B(b[5]), .Z(n141) );
endmodule

