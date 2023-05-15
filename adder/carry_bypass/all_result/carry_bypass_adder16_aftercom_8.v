
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
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180;

  GTECH_XOR2 U60 ( .A(n123), .B(n124), .Z(sum[9]) );
  GTECH_XNOR2 U61 ( .A(n125), .B(n126), .Z(sum[8]) );
  GTECH_XNOR2 U62 ( .A(n127), .B(n128), .Z(sum[7]) );
  GTECH_XNOR2 U63 ( .A(n129), .B(n130), .Z(sum[6]) );
  GTECH_XNOR2 U64 ( .A(n131), .B(n132), .Z(sum[5]) );
  GTECH_XNOR2 U65 ( .A(n133), .B(n134), .Z(sum[4]) );
  GTECH_XOR3 U66 ( .A(b[3]), .B(n135), .C(n136), .Z(sum[3]) );
  GTECH_XOR3 U67 ( .A(b[2]), .B(n137), .C(n138), .Z(sum[2]) );
  GTECH_XOR3 U68 ( .A(b[1]), .B(n139), .C(n140), .Z(sum[1]) );
  GTECH_XOR3 U69 ( .A(n141), .B(a[15]), .C(n142), .Z(sum[15]) );
  GTECH_XOR3 U70 ( .A(b[14]), .B(n143), .C(n144), .Z(sum[14]) );
  GTECH_XNOR3 U71 ( .A(b[13]), .B(a[13]), .C(n145), .Z(sum[13]) );
  GTECH_XNOR3 U72 ( .A(n146), .B(n147), .C(n148), .Z(sum[12]) );
  GTECH_XOR2 U73 ( .A(n149), .B(n150), .Z(sum[11]) );
  GTECH_XOR2 U74 ( .A(n151), .B(n152), .Z(sum[10]) );
  GTECH_XOR3 U75 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_OAI21 U76 ( .A(n142), .B(n153), .C(n154), .Z(cout) );
  GTECH_AO21 U77 ( .A(n153), .B(n142), .C(n141), .Z(n154) );
  GTECH_NOT U78 ( .A(b[15]), .Z(n141) );
  GTECH_NOT U79 ( .A(a[15]), .Z(n153) );
  GTECH_OA21 U80 ( .A(n144), .B(n143), .C(n155), .Z(n142) );
  GTECH_AO21 U81 ( .A(n143), .B(n144), .C(n156), .Z(n155) );
  GTECH_NOT U82 ( .A(b[14]), .Z(n156) );
  GTECH_NOT U83 ( .A(a[14]), .Z(n143) );
  GTECH_OA21 U84 ( .A(n145), .B(n157), .C(n158), .Z(n144) );
  GTECH_OAI21 U85 ( .A(a[13]), .B(n159), .C(b[13]), .Z(n158) );
  GTECH_NOT U86 ( .A(n145), .Z(n159) );
  GTECH_NOT U87 ( .A(a[13]), .Z(n157) );
  GTECH_ADD_ABC U88 ( .A(n148), .B(n147), .C(n146), .COUT(n145) );
  GTECH_NOT U89 ( .A(b[12]), .Z(n146) );
  GTECH_NOT U90 ( .A(a[12]), .Z(n147) );
  GTECH_MUX2 U91 ( .A(n160), .B(n125), .S(n161), .Z(n148) );
  GTECH_AND4 U92 ( .A(n151), .B(n149), .C(n126), .D(n123), .Z(n161) );
  GTECH_XOR2 U93 ( .A(a[9]), .B(b[9]), .Z(n123) );
  GTECH_XOR2 U94 ( .A(a[8]), .B(b[8]), .Z(n126) );
  GTECH_XOR2 U95 ( .A(a[11]), .B(b[11]), .Z(n149) );
  GTECH_XOR2 U96 ( .A(a[10]), .B(b[10]), .Z(n151) );
  GTECH_MUX2 U97 ( .A(n162), .B(n163), .S(n164), .Z(n125) );
  GTECH_NOT U98 ( .A(n134), .Z(n163) );
  GTECH_OAI21 U99 ( .A(a[7]), .B(n128), .C(n165), .Z(n162) );
  GTECH_OAI21 U100 ( .A(a[11]), .B(n150), .C(n166), .Z(n160) );
  GTECH_AO21 U101 ( .A(n150), .B(a[11]), .C(b[11]), .Z(n166) );
  GTECH_AO21 U102 ( .A(n152), .B(a[10]), .C(n167), .Z(n150) );
  GTECH_OA21 U103 ( .A(a[10]), .B(n152), .C(b[10]), .Z(n167) );
  GTECH_AO21 U104 ( .A(n124), .B(a[9]), .C(n168), .Z(n152) );
  GTECH_OA21 U105 ( .A(a[9]), .B(n124), .C(b[9]), .Z(n168) );
  GTECH_ADD_ABC U106 ( .A(n169), .B(a[8]), .C(b[8]), .COUT(n124) );
  GTECH_MUX2 U107 ( .A(n134), .B(n170), .S(n171), .Z(n169) );
  GTECH_NOT U108 ( .A(n164), .Z(n171) );
  GTECH_NOR4 U109 ( .A(n133), .B(n131), .C(n129), .D(n127), .Z(n164) );
  GTECH_XNOR2 U110 ( .A(a[7]), .B(b[7]), .Z(n127) );
  GTECH_XNOR2 U111 ( .A(a[6]), .B(b[6]), .Z(n129) );
  GTECH_XNOR2 U112 ( .A(a[5]), .B(b[5]), .Z(n131) );
  GTECH_XNOR2 U113 ( .A(a[4]), .B(b[4]), .Z(n133) );
  GTECH_OA21 U114 ( .A(a[7]), .B(n128), .C(n165), .Z(n170) );
  GTECH_AO21 U115 ( .A(n128), .B(a[7]), .C(b[7]), .Z(n165) );
  GTECH_AO21 U116 ( .A(n130), .B(a[6]), .C(n172), .Z(n128) );
  GTECH_OA21 U117 ( .A(a[6]), .B(n130), .C(b[6]), .Z(n172) );
  GTECH_AO21 U118 ( .A(n132), .B(a[5]), .C(n173), .Z(n130) );
  GTECH_OA21 U119 ( .A(a[5]), .B(n132), .C(b[5]), .Z(n173) );
  GTECH_AO21 U120 ( .A(n134), .B(a[4]), .C(n174), .Z(n132) );
  GTECH_OA21 U121 ( .A(a[4]), .B(n134), .C(b[4]), .Z(n174) );
  GTECH_OAI21 U122 ( .A(n136), .B(n135), .C(n175), .Z(n134) );
  GTECH_AO21 U123 ( .A(n135), .B(n136), .C(n176), .Z(n175) );
  GTECH_NOT U124 ( .A(b[3]), .Z(n176) );
  GTECH_NOT U125 ( .A(a[3]), .Z(n135) );
  GTECH_OA21 U126 ( .A(n138), .B(n137), .C(n177), .Z(n136) );
  GTECH_AO21 U127 ( .A(n137), .B(n138), .C(n178), .Z(n177) );
  GTECH_NOT U128 ( .A(b[2]), .Z(n178) );
  GTECH_NOT U129 ( .A(a[2]), .Z(n137) );
  GTECH_OA21 U130 ( .A(n140), .B(n139), .C(n179), .Z(n138) );
  GTECH_OAI21 U131 ( .A(a[1]), .B(n180), .C(b[1]), .Z(n179) );
  GTECH_NOT U132 ( .A(a[1]), .Z(n139) );
  GTECH_NOT U133 ( .A(n180), .Z(n140) );
  GTECH_ADD_ABC U134 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n180) );
endmodule

