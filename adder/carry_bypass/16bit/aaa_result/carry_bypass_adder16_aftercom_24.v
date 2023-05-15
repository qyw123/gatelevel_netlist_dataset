
module carry_bypass_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174;

  GTECH_ADD_AB U60 ( .A(n123), .B(n124), .S(sum[9]) );
  GTECH_ADD_AB U61 ( .A(n125), .B(n126), .S(sum[8]) );
  GTECH_ADD_AB U62 ( .A(n127), .B(n128), .S(sum[7]) );
  GTECH_ADD_AB U63 ( .A(n129), .B(n130), .S(sum[6]) );
  GTECH_ADD_AB U64 ( .A(n131), .B(n132), .S(sum[5]) );
  GTECH_ADD_AB U65 ( .A(n133), .B(n134), .S(sum[4]) );
  GTECH_XOR3 U66 ( .A(b[3]), .B(a[3]), .C(n135), .Z(sum[3]) );
  GTECH_XOR3 U67 ( .A(b[2]), .B(a[2]), .C(n136), .Z(sum[2]) );
  GTECH_XOR3 U68 ( .A(b[1]), .B(a[1]), .C(n137), .Z(sum[1]) );
  GTECH_XNOR3 U69 ( .A(b[15]), .B(a[15]), .C(n138), .Z(sum[15]) );
  GTECH_XOR3 U70 ( .A(b[14]), .B(a[14]), .C(n139), .Z(sum[14]) );
  GTECH_XOR3 U71 ( .A(b[13]), .B(a[13]), .C(n140), .Z(sum[13]) );
  GTECH_XNOR3 U72 ( .A(b[12]), .B(a[12]), .C(n141), .Z(sum[12]) );
  GTECH_ADD_AB U73 ( .A(n142), .B(n143), .S(sum[11]) );
  GTECH_ADD_AB U74 ( .A(n144), .B(n145), .S(sum[10]) );
  GTECH_XOR3 U75 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_AO21 U76 ( .A(n146), .B(a[15]), .C(n147), .Z(cout) );
  GTECH_NOT U77 ( .A(n148), .Z(n147) );
  GTECH_OAI21 U78 ( .A(a[15]), .B(n146), .C(b[15]), .Z(n148) );
  GTECH_NOT U79 ( .A(n138), .Z(n146) );
  GTECH_AOI21 U80 ( .A(n139), .B(a[14]), .C(n149), .Z(n138) );
  GTECH_OA21 U81 ( .A(a[14]), .B(n139), .C(b[14]), .Z(n149) );
  GTECH_AO21 U82 ( .A(n140), .B(a[13]), .C(n150), .Z(n139) );
  GTECH_OA21 U83 ( .A(a[13]), .B(n140), .C(b[13]), .Z(n150) );
  GTECH_ADD_ABC U84 ( .A(n151), .B(a[12]), .C(b[12]), .COUT(n140) );
  GTECH_NOT U85 ( .A(n141), .Z(n151) );
  GTECH_MUX2 U86 ( .A(n152), .B(n125), .S(n153), .Z(n141) );
  GTECH_NOR4 U87 ( .A(n154), .B(n142), .C(n126), .D(n123), .Z(n153) );
  GTECH_ADD_AB U88 ( .A(n155), .B(b[9]), .S(n123) );
  GTECH_ADD_AB U89 ( .A(n156), .B(b[8]), .S(n126) );
  GTECH_NOT U90 ( .A(a[8]), .Z(n156) );
  GTECH_ADD_AB U91 ( .A(a[11]), .B(n157), .S(n142) );
  GTECH_NOT U92 ( .A(n144), .Z(n154) );
  GTECH_ADD_AB U93 ( .A(a[10]), .B(b[10]), .S(n144) );
  GTECH_MUX2 U94 ( .A(n158), .B(n159), .S(n160), .Z(n125) );
  GTECH_OAI21 U95 ( .A(a[7]), .B(n128), .C(n161), .Z(n158) );
  GTECH_AO21 U96 ( .A(n162), .B(n143), .C(n163), .Z(n152) );
  GTECH_OA21 U97 ( .A(n143), .B(n162), .C(n157), .Z(n163) );
  GTECH_NOT U98 ( .A(b[11]), .Z(n157) );
  GTECH_AOI21 U99 ( .A(n145), .B(a[10]), .C(n164), .Z(n143) );
  GTECH_OA21 U100 ( .A(a[10]), .B(n145), .C(b[10]), .Z(n164) );
  GTECH_OAI21 U101 ( .A(n124), .B(n155), .C(n165), .Z(n145) );
  GTECH_OAI21 U102 ( .A(a[9]), .B(n166), .C(b[9]), .Z(n165) );
  GTECH_NOT U103 ( .A(a[9]), .Z(n155) );
  GTECH_NOT U104 ( .A(n166), .Z(n124) );
  GTECH_ADD_ABC U105 ( .A(n167), .B(a[8]), .C(b[8]), .COUT(n166) );
  GTECH_MUX2 U106 ( .A(n168), .B(n134), .S(n160), .Z(n167) );
  GTECH_AND4 U107 ( .A(n133), .B(n131), .C(n129), .D(n127), .Z(n160) );
  GTECH_ADD_AB U108 ( .A(a[7]), .B(b[7]), .S(n127) );
  GTECH_ADD_AB U109 ( .A(a[6]), .B(b[6]), .S(n129) );
  GTECH_ADD_AB U110 ( .A(a[5]), .B(b[5]), .S(n131) );
  GTECH_ADD_AB U111 ( .A(a[4]), .B(b[4]), .S(n133) );
  GTECH_OA21 U112 ( .A(a[7]), .B(n128), .C(n161), .Z(n168) );
  GTECH_AO21 U113 ( .A(n128), .B(a[7]), .C(b[7]), .Z(n161) );
  GTECH_AO21 U114 ( .A(n130), .B(a[6]), .C(n169), .Z(n128) );
  GTECH_OA21 U115 ( .A(a[6]), .B(n130), .C(b[6]), .Z(n169) );
  GTECH_AO21 U116 ( .A(n132), .B(a[5]), .C(n170), .Z(n130) );
  GTECH_OA21 U117 ( .A(a[5]), .B(n132), .C(b[5]), .Z(n170) );
  GTECH_AO21 U118 ( .A(n134), .B(a[4]), .C(n171), .Z(n132) );
  GTECH_OA21 U119 ( .A(a[4]), .B(n134), .C(b[4]), .Z(n171) );
  GTECH_NOT U120 ( .A(n159), .Z(n134) );
  GTECH_AOI21 U121 ( .A(n135), .B(a[3]), .C(n172), .Z(n159) );
  GTECH_OA21 U122 ( .A(a[3]), .B(n135), .C(b[3]), .Z(n172) );
  GTECH_AO21 U123 ( .A(n136), .B(a[2]), .C(n173), .Z(n135) );
  GTECH_OA21 U124 ( .A(a[2]), .B(n136), .C(b[2]), .Z(n173) );
  GTECH_AO21 U125 ( .A(n137), .B(a[1]), .C(n174), .Z(n136) );
  GTECH_OA21 U126 ( .A(a[1]), .B(n137), .C(b[1]), .Z(n174) );
  GTECH_ADD_ABC U127 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n137) );
  GTECH_NOT U128 ( .A(a[11]), .Z(n162) );
endmodule

