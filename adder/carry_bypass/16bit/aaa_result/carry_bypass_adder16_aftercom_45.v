
module carry_bypass_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170;

  GTECH_XNOR2 U55 ( .A(n118), .B(n119), .Z(sum[9]) );
  GTECH_ADD_AB U56 ( .A(n120), .B(n121), .S(sum[8]) );
  GTECH_XNOR2 U57 ( .A(n122), .B(n123), .Z(sum[7]) );
  GTECH_ADD_AB U58 ( .A(n124), .B(n125), .S(sum[6]) );
  GTECH_ADD_AB U59 ( .A(n126), .B(n127), .S(sum[5]) );
  GTECH_ADD_AB U60 ( .A(n128), .B(n129), .S(sum[4]) );
  GTECH_XOR3 U61 ( .A(b[3]), .B(a[3]), .C(n130), .Z(sum[3]) );
  GTECH_XNOR3 U62 ( .A(b[2]), .B(a[2]), .C(n131), .Z(sum[2]) );
  GTECH_XOR3 U63 ( .A(b[1]), .B(a[1]), .C(n132), .Z(sum[1]) );
  GTECH_XNOR3 U64 ( .A(b[15]), .B(a[15]), .C(n133), .Z(sum[15]) );
  GTECH_XNOR3 U65 ( .A(b[14]), .B(a[14]), .C(n134), .Z(sum[14]) );
  GTECH_XOR3 U66 ( .A(b[13]), .B(a[13]), .C(n135), .Z(sum[13]) );
  GTECH_XOR3 U67 ( .A(b[12]), .B(a[12]), .C(n136), .Z(sum[12]) );
  GTECH_ADD_AB U68 ( .A(n137), .B(n138), .S(sum[11]) );
  GTECH_ADD_AB U69 ( .A(n139), .B(n140), .S(sum[10]) );
  GTECH_XOR3 U70 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_OAI21 U71 ( .A(n133), .B(n141), .C(n142), .Z(cout) );
  GTECH_OAI21 U72 ( .A(a[15]), .B(n143), .C(b[15]), .Z(n142) );
  GTECH_NOT U73 ( .A(n133), .Z(n143) );
  GTECH_NOT U74 ( .A(a[15]), .Z(n141) );
  GTECH_AOI21 U75 ( .A(n144), .B(a[14]), .C(n145), .Z(n133) );
  GTECH_OA21 U76 ( .A(a[14]), .B(n144), .C(b[14]), .Z(n145) );
  GTECH_NOT U77 ( .A(n134), .Z(n144) );
  GTECH_AOI21 U78 ( .A(n135), .B(a[13]), .C(n146), .Z(n134) );
  GTECH_OA21 U79 ( .A(a[13]), .B(n135), .C(b[13]), .Z(n146) );
  GTECH_ADD_ABC U80 ( .A(n136), .B(a[12]), .C(b[12]), .COUT(n135) );
  GTECH_MUX2 U81 ( .A(n147), .B(n120), .S(n148), .Z(n136) );
  GTECH_AND4 U82 ( .A(n140), .B(n138), .C(n121), .D(n119), .Z(n148) );
  GTECH_ADD_AB U83 ( .A(b[9]), .B(a[9]), .S(n119) );
  GTECH_ADD_AB U84 ( .A(b[8]), .B(a[8]), .S(n121) );
  GTECH_XNOR2 U85 ( .A(b[11]), .B(n149), .Z(n138) );
  GTECH_ADD_AB U86 ( .A(b[10]), .B(a[10]), .S(n140) );
  GTECH_OAI21 U87 ( .A(n150), .B(n149), .C(n151), .Z(n147) );
  GTECH_OAI21 U88 ( .A(a[11]), .B(n137), .C(b[11]), .Z(n151) );
  GTECH_NOT U89 ( .A(n150), .Z(n137) );
  GTECH_NOT U90 ( .A(a[11]), .Z(n149) );
  GTECH_AOI21 U91 ( .A(n139), .B(a[10]), .C(n152), .Z(n150) );
  GTECH_OA21 U92 ( .A(a[10]), .B(n139), .C(b[10]), .Z(n152) );
  GTECH_OAI21 U93 ( .A(n118), .B(n153), .C(n154), .Z(n139) );
  GTECH_OAI21 U94 ( .A(a[9]), .B(n155), .C(b[9]), .Z(n154) );
  GTECH_NOT U95 ( .A(n118), .Z(n155) );
  GTECH_NOT U96 ( .A(a[9]), .Z(n153) );
  GTECH_AOI21 U97 ( .A(n120), .B(a[8]), .C(n156), .Z(n118) );
  GTECH_OA21 U98 ( .A(a[8]), .B(n120), .C(b[8]), .Z(n156) );
  GTECH_MUX2 U99 ( .A(n157), .B(n128), .S(n158), .Z(n120) );
  GTECH_AND4 U100 ( .A(n129), .B(n127), .C(n125), .D(n123), .Z(n158) );
  GTECH_ADD_AB U101 ( .A(b[7]), .B(a[7]), .S(n123) );
  GTECH_ADD_AB U102 ( .A(b[6]), .B(a[6]), .S(n125) );
  GTECH_ADD_AB U103 ( .A(b[5]), .B(a[5]), .S(n127) );
  GTECH_ADD_AB U104 ( .A(b[4]), .B(a[4]), .S(n129) );
  GTECH_AOI21 U105 ( .A(n159), .B(n122), .C(n160), .Z(n157) );
  GTECH_OA21 U106 ( .A(n122), .B(n159), .C(n161), .Z(n160) );
  GTECH_NOT U107 ( .A(b[7]), .Z(n161) );
  GTECH_AOI21 U108 ( .A(n124), .B(a[6]), .C(n162), .Z(n122) );
  GTECH_OA21 U109 ( .A(a[6]), .B(n124), .C(b[6]), .Z(n162) );
  GTECH_NOT U110 ( .A(n163), .Z(n124) );
  GTECH_AOI21 U111 ( .A(n126), .B(a[5]), .C(n164), .Z(n163) );
  GTECH_OA21 U112 ( .A(a[5]), .B(n126), .C(b[5]), .Z(n164) );
  GTECH_ADD_ABC U113 ( .A(a[4]), .B(n128), .C(b[4]), .COUT(n126) );
  GTECH_OA21 U114 ( .A(a[3]), .B(n130), .C(n165), .Z(n128) );
  GTECH_NOT U115 ( .A(n166), .Z(n165) );
  GTECH_AOI21 U116 ( .A(n130), .B(a[3]), .C(b[3]), .Z(n166) );
  GTECH_NOT U117 ( .A(n167), .Z(n130) );
  GTECH_AOI21 U118 ( .A(n168), .B(a[2]), .C(n169), .Z(n167) );
  GTECH_OA21 U119 ( .A(a[2]), .B(n168), .C(b[2]), .Z(n169) );
  GTECH_NOT U120 ( .A(n131), .Z(n168) );
  GTECH_AOI21 U121 ( .A(n132), .B(a[1]), .C(n170), .Z(n131) );
  GTECH_OA21 U122 ( .A(a[1]), .B(n132), .C(b[1]), .Z(n170) );
  GTECH_ADD_ABC U123 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n132) );
  GTECH_NOT U124 ( .A(a[7]), .Z(n159) );
endmodule

