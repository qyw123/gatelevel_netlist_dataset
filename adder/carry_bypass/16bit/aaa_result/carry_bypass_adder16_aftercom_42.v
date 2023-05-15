
module carry_bypass_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176;

  GTECH_XNOR2 U61 ( .A(n124), .B(n125), .Z(sum[9]) );
  GTECH_XNOR2 U62 ( .A(n126), .B(n127), .Z(sum[8]) );
  GTECH_ADD_AB U63 ( .A(n128), .B(n129), .S(sum[7]) );
  GTECH_ADD_AB U64 ( .A(n130), .B(n131), .S(sum[6]) );
  GTECH_ADD_AB U65 ( .A(n132), .B(n133), .S(sum[5]) );
  GTECH_ADD_AB U66 ( .A(n134), .B(n135), .S(sum[4]) );
  GTECH_XNOR3 U67 ( .A(b[3]), .B(a[3]), .C(n136), .Z(sum[3]) );
  GTECH_XNOR3 U68 ( .A(b[2]), .B(a[2]), .C(n137), .Z(sum[2]) );
  GTECH_XNOR3 U69 ( .A(b[1]), .B(a[1]), .C(n138), .Z(sum[1]) );
  GTECH_XNOR3 U70 ( .A(b[15]), .B(a[15]), .C(n139), .Z(sum[15]) );
  GTECH_XNOR3 U71 ( .A(b[14]), .B(a[14]), .C(n140), .Z(sum[14]) );
  GTECH_XNOR3 U72 ( .A(b[13]), .B(a[13]), .C(n141), .Z(sum[13]) );
  GTECH_XOR3 U73 ( .A(b[12]), .B(a[12]), .C(n142), .Z(sum[12]) );
  GTECH_XNOR2 U74 ( .A(n143), .B(n144), .Z(sum[11]) );
  GTECH_XNOR2 U75 ( .A(n145), .B(n146), .Z(sum[10]) );
  GTECH_XOR3 U76 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_AO21 U77 ( .A(n147), .B(a[15]), .C(n148), .Z(cout) );
  GTECH_NOT U78 ( .A(n149), .Z(n148) );
  GTECH_OAI21 U79 ( .A(a[15]), .B(n147), .C(b[15]), .Z(n149) );
  GTECH_NOT U80 ( .A(n139), .Z(n147) );
  GTECH_OA21 U81 ( .A(n140), .B(n150), .C(n151), .Z(n139) );
  GTECH_OAI21 U82 ( .A(a[14]), .B(n152), .C(b[14]), .Z(n151) );
  GTECH_NOT U83 ( .A(n140), .Z(n152) );
  GTECH_NOT U84 ( .A(a[14]), .Z(n150) );
  GTECH_OA21 U85 ( .A(n141), .B(n153), .C(n154), .Z(n140) );
  GTECH_OAI21 U86 ( .A(a[13]), .B(n155), .C(b[13]), .Z(n154) );
  GTECH_NOT U87 ( .A(a[13]), .Z(n153) );
  GTECH_NOT U88 ( .A(n155), .Z(n141) );
  GTECH_ADD_ABC U89 ( .A(n142), .B(a[12]), .C(b[12]), .COUT(n155) );
  GTECH_MUX2 U90 ( .A(n126), .B(n156), .S(n157), .Z(n142) );
  GTECH_OR4 U91 ( .A(n146), .B(n144), .C(n127), .D(n125), .Z(n157) );
  GTECH_XNOR2 U92 ( .A(b[9]), .B(a[9]), .Z(n125) );
  GTECH_XNOR2 U93 ( .A(b[8]), .B(a[8]), .Z(n127) );
  GTECH_XNOR2 U94 ( .A(b[11]), .B(a[11]), .Z(n144) );
  GTECH_XNOR2 U95 ( .A(b[10]), .B(a[10]), .Z(n146) );
  GTECH_AO21 U96 ( .A(n143), .B(a[11]), .C(n158), .Z(n156) );
  GTECH_OA21 U97 ( .A(a[11]), .B(n143), .C(b[11]), .Z(n158) );
  GTECH_AO21 U98 ( .A(n145), .B(a[10]), .C(n159), .Z(n143) );
  GTECH_OA21 U99 ( .A(a[10]), .B(n145), .C(b[10]), .Z(n159) );
  GTECH_AO21 U100 ( .A(n124), .B(a[9]), .C(n160), .Z(n145) );
  GTECH_OA21 U101 ( .A(a[9]), .B(n124), .C(b[9]), .Z(n160) );
  GTECH_AO21 U102 ( .A(n126), .B(a[8]), .C(n161), .Z(n124) );
  GTECH_OA21 U103 ( .A(a[8]), .B(n126), .C(b[8]), .Z(n161) );
  GTECH_MUX2 U104 ( .A(n162), .B(n134), .S(n163), .Z(n126) );
  GTECH_AND4 U105 ( .A(n129), .B(n131), .C(n133), .D(n135), .Z(n163) );
  GTECH_ADD_AB U106 ( .A(b[4]), .B(a[4]), .S(n135) );
  GTECH_ADD_AB U107 ( .A(b[5]), .B(a[5]), .S(n133) );
  GTECH_ADD_AB U108 ( .A(b[6]), .B(a[6]), .S(n131) );
  GTECH_ADD_AB U109 ( .A(b[7]), .B(a[7]), .S(n129) );
  GTECH_AO21 U110 ( .A(n128), .B(a[7]), .C(n164), .Z(n162) );
  GTECH_OA21 U111 ( .A(a[7]), .B(n128), .C(b[7]), .Z(n164) );
  GTECH_AO21 U112 ( .A(n130), .B(a[6]), .C(n165), .Z(n128) );
  GTECH_OA21 U113 ( .A(a[6]), .B(n130), .C(b[6]), .Z(n165) );
  GTECH_AO21 U114 ( .A(n132), .B(a[5]), .C(n166), .Z(n130) );
  GTECH_OA21 U115 ( .A(a[5]), .B(n132), .C(b[5]), .Z(n166) );
  GTECH_AO21 U116 ( .A(n134), .B(a[4]), .C(n167), .Z(n132) );
  GTECH_OA21 U117 ( .A(a[4]), .B(n134), .C(b[4]), .Z(n167) );
  GTECH_OAI21 U118 ( .A(n136), .B(n168), .C(n169), .Z(n134) );
  GTECH_OAI21 U119 ( .A(a[3]), .B(n170), .C(b[3]), .Z(n169) );
  GTECH_NOT U120 ( .A(n136), .Z(n170) );
  GTECH_NOT U121 ( .A(a[3]), .Z(n168) );
  GTECH_OA21 U122 ( .A(n137), .B(n171), .C(n172), .Z(n136) );
  GTECH_OAI21 U123 ( .A(a[2]), .B(n173), .C(b[2]), .Z(n172) );
  GTECH_NOT U124 ( .A(n137), .Z(n173) );
  GTECH_NOT U125 ( .A(a[2]), .Z(n171) );
  GTECH_OA21 U126 ( .A(n138), .B(n174), .C(n175), .Z(n137) );
  GTECH_OAI21 U127 ( .A(a[1]), .B(n176), .C(b[1]), .Z(n175) );
  GTECH_NOT U128 ( .A(a[1]), .Z(n174) );
  GTECH_NOT U129 ( .A(n176), .Z(n138) );
  GTECH_ADD_ABC U130 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n176) );
endmodule

