
module carry_bypass_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174;

  GTECH_XOR2 U59 ( .A(n122), .B(n123), .Z(sum[9]) );
  GTECH_XOR2 U60 ( .A(n124), .B(n125), .Z(sum[8]) );
  GTECH_XOR2 U61 ( .A(n126), .B(n127), .Z(sum[7]) );
  GTECH_XOR2 U62 ( .A(n128), .B(n129), .Z(sum[6]) );
  GTECH_XOR2 U63 ( .A(n130), .B(n131), .Z(sum[5]) );
  GTECH_XOR2 U64 ( .A(n132), .B(n133), .Z(sum[4]) );
  GTECH_XNOR3 U65 ( .A(b[3]), .B(a[3]), .C(n134), .Z(sum[3]) );
  GTECH_XNOR3 U66 ( .A(b[2]), .B(a[2]), .C(n135), .Z(sum[2]) );
  GTECH_XOR3 U67 ( .A(b[1]), .B(a[1]), .C(n136), .Z(sum[1]) );
  GTECH_XNOR3 U68 ( .A(b[15]), .B(a[15]), .C(n137), .Z(sum[15]) );
  GTECH_XNOR3 U69 ( .A(b[14]), .B(a[14]), .C(n138), .Z(sum[14]) );
  GTECH_XOR3 U70 ( .A(b[13]), .B(a[13]), .C(n139), .Z(sum[13]) );
  GTECH_XOR3 U71 ( .A(b[12]), .B(a[12]), .C(n140), .Z(sum[12]) );
  GTECH_XOR2 U72 ( .A(n141), .B(n142), .Z(sum[11]) );
  GTECH_XOR2 U73 ( .A(n143), .B(n144), .Z(sum[10]) );
  GTECH_XOR3 U74 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_OAI21 U75 ( .A(n137), .B(n145), .C(n146), .Z(cout) );
  GTECH_OAI21 U76 ( .A(a[15]), .B(n147), .C(b[15]), .Z(n146) );
  GTECH_NOT U77 ( .A(n137), .Z(n147) );
  GTECH_NOT U78 ( .A(a[15]), .Z(n145) );
  GTECH_AOI21 U79 ( .A(n148), .B(a[14]), .C(n149), .Z(n137) );
  GTECH_OA21 U80 ( .A(a[14]), .B(n148), .C(b[14]), .Z(n149) );
  GTECH_NOT U81 ( .A(n138), .Z(n148) );
  GTECH_AOI21 U82 ( .A(n139), .B(a[13]), .C(n150), .Z(n138) );
  GTECH_OA21 U83 ( .A(a[13]), .B(n139), .C(b[13]), .Z(n150) );
  GTECH_ADD_ABC U84 ( .A(n140), .B(a[12]), .C(b[12]), .COUT(n139) );
  GTECH_MUX2 U85 ( .A(n151), .B(n125), .S(n152), .Z(n140) );
  GTECH_AND4 U86 ( .A(n143), .B(n141), .C(n124), .D(n123), .Z(n152) );
  GTECH_XOR2 U87 ( .A(a[9]), .B(b[9]), .Z(n123) );
  GTECH_XOR2 U88 ( .A(a[8]), .B(b[8]), .Z(n124) );
  GTECH_XOR2 U89 ( .A(a[11]), .B(b[11]), .Z(n141) );
  GTECH_XOR2 U90 ( .A(a[10]), .B(b[10]), .Z(n143) );
  GTECH_OAI21 U91 ( .A(n153), .B(n154), .C(n155), .Z(n151) );
  GTECH_OAI21 U92 ( .A(a[11]), .B(n142), .C(b[11]), .Z(n155) );
  GTECH_NOT U93 ( .A(n153), .Z(n142) );
  GTECH_NOT U94 ( .A(a[11]), .Z(n154) );
  GTECH_AOI21 U95 ( .A(n144), .B(a[10]), .C(n156), .Z(n153) );
  GTECH_OA21 U96 ( .A(a[10]), .B(n144), .C(b[10]), .Z(n156) );
  GTECH_ADD_ABC U97 ( .A(b[9]), .B(a[9]), .C(n122), .COUT(n144) );
  GTECH_NOR2 U98 ( .A(n157), .B(n158), .Z(n122) );
  GTECH_NOR2 U99 ( .A(n125), .B(a[8]), .Z(n158) );
  GTECH_AOI21 U100 ( .A(n125), .B(a[8]), .C(b[8]), .Z(n157) );
  GTECH_MUX2 U101 ( .A(n159), .B(n133), .S(n160), .Z(n125) );
  GTECH_AND4 U102 ( .A(n132), .B(n130), .C(n128), .D(n126), .Z(n160) );
  GTECH_XOR2 U103 ( .A(a[7]), .B(b[7]), .Z(n126) );
  GTECH_XOR2 U104 ( .A(a[6]), .B(b[6]), .Z(n128) );
  GTECH_XOR2 U105 ( .A(a[5]), .B(b[5]), .Z(n130) );
  GTECH_XOR2 U106 ( .A(a[4]), .B(b[4]), .Z(n132) );
  GTECH_OA21 U107 ( .A(a[7]), .B(n127), .C(n161), .Z(n159) );
  GTECH_NOT U108 ( .A(n162), .Z(n161) );
  GTECH_AOI21 U109 ( .A(n127), .B(a[7]), .C(b[7]), .Z(n162) );
  GTECH_NOT U110 ( .A(n163), .Z(n127) );
  GTECH_AOI21 U111 ( .A(n129), .B(a[6]), .C(n164), .Z(n163) );
  GTECH_OA21 U112 ( .A(a[6]), .B(n129), .C(b[6]), .Z(n164) );
  GTECH_OAI21 U113 ( .A(n165), .B(n166), .C(n167), .Z(n129) );
  GTECH_OAI21 U114 ( .A(a[5]), .B(n131), .C(b[5]), .Z(n167) );
  GTECH_NOT U115 ( .A(n165), .Z(n131) );
  GTECH_NOT U116 ( .A(a[5]), .Z(n166) );
  GTECH_AOI21 U117 ( .A(n133), .B(a[4]), .C(n168), .Z(n165) );
  GTECH_OA21 U118 ( .A(a[4]), .B(n133), .C(b[4]), .Z(n168) );
  GTECH_NOT U119 ( .A(n169), .Z(n133) );
  GTECH_AOI21 U120 ( .A(n170), .B(a[3]), .C(n171), .Z(n169) );
  GTECH_OA21 U121 ( .A(a[3]), .B(n170), .C(b[3]), .Z(n171) );
  GTECH_NOT U122 ( .A(n134), .Z(n170) );
  GTECH_AOI21 U123 ( .A(n172), .B(a[2]), .C(n173), .Z(n134) );
  GTECH_OA21 U124 ( .A(a[2]), .B(n172), .C(b[2]), .Z(n173) );
  GTECH_NOT U125 ( .A(n135), .Z(n172) );
  GTECH_AOI21 U126 ( .A(n136), .B(a[1]), .C(n174), .Z(n135) );
  GTECH_OA21 U127 ( .A(a[1]), .B(n136), .C(b[1]), .Z(n174) );
  GTECH_ADD_ABC U128 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n136) );
endmodule

