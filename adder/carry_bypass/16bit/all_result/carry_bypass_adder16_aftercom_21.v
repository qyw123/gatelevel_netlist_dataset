
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
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172;

  GTECH_XOR2 U55 ( .A(n118), .B(n119), .Z(sum[9]) );
  GTECH_XOR2 U56 ( .A(n120), .B(n121), .Z(sum[8]) );
  GTECH_XOR2 U57 ( .A(n122), .B(n123), .Z(sum[7]) );
  GTECH_XOR2 U58 ( .A(n124), .B(n125), .Z(sum[6]) );
  GTECH_XOR2 U59 ( .A(n126), .B(n127), .Z(sum[5]) );
  GTECH_XNOR2 U60 ( .A(n128), .B(n129), .Z(sum[4]) );
  GTECH_ADD_ABC U61 ( .A(b[3]), .B(a[3]), .C(n130), .S(sum[3]) );
  GTECH_XNOR3 U62 ( .A(b[2]), .B(a[2]), .C(n131), .Z(sum[2]) );
  GTECH_OAI21 U63 ( .A(a[1]), .B(n132), .C(n133), .Z(n131) );
  GTECH_ADD_ABC U64 ( .A(b[1]), .B(a[1]), .C(n132), .S(sum[1]) );
  GTECH_ADD_ABC U65 ( .A(b[15]), .B(n134), .C(n135), .S(sum[15]) );
  GTECH_ADD_ABC U66 ( .A(b[14]), .B(a[14]), .C(n136), .S(sum[14]) );
  GTECH_ADD_ABC U67 ( .A(b[13]), .B(a[13]), .C(n137), .S(sum[13]) );
  GTECH_XNOR3 U68 ( .A(b[12]), .B(a[12]), .C(n138), .Z(sum[12]) );
  GTECH_MUX2 U69 ( .A(n139), .B(n121), .S(n140), .Z(n138) );
  GTECH_NOT U70 ( .A(n141), .Z(n121) );
  GTECH_OA21 U71 ( .A(n142), .B(n143), .C(n144), .Z(n139) );
  GTECH_XNOR2 U72 ( .A(n145), .B(n146), .Z(sum[11]) );
  GTECH_XOR2 U73 ( .A(n147), .B(n148), .Z(sum[10]) );
  GTECH_ADD_ABC U74 ( .A(cin), .B(b[0]), .C(a[0]), .S(sum[0]) );
  GTECH_OAI21 U75 ( .A(n135), .B(n134), .C(n149), .Z(cout) );
  GTECH_OAI21 U76 ( .A(a[15]), .B(n150), .C(b[15]), .Z(n149) );
  GTECH_NOT U77 ( .A(n135), .Z(n150) );
  GTECH_NOT U78 ( .A(a[15]), .Z(n134) );
  GTECH_AOI21 U79 ( .A(n136), .B(a[14]), .C(n151), .Z(n135) );
  GTECH_OA21 U80 ( .A(a[14]), .B(n136), .C(b[14]), .Z(n151) );
  GTECH_ADD_ABC U81 ( .A(n137), .B(a[13]), .C(b[13]), .COUT(n136) );
  GTECH_ADD_ABC U82 ( .A(a[12]), .B(n152), .C(b[12]), .COUT(n137) );
  GTECH_MUX2 U83 ( .A(n153), .B(n141), .S(n140), .Z(n152) );
  GTECH_NOR4 U84 ( .A(n147), .B(n145), .C(n120), .D(n118), .Z(n140) );
  GTECH_XNOR2 U85 ( .A(a[9]), .B(b[9]), .Z(n118) );
  GTECH_XNOR2 U86 ( .A(a[8]), .B(b[8]), .Z(n120) );
  GTECH_XNOR2 U87 ( .A(a[11]), .B(b[11]), .Z(n145) );
  GTECH_XNOR2 U88 ( .A(a[10]), .B(b[10]), .Z(n147) );
  GTECH_OAI21 U89 ( .A(n142), .B(n143), .C(n144), .Z(n153) );
  GTECH_OAI21 U90 ( .A(a[11]), .B(n146), .C(b[11]), .Z(n144) );
  GTECH_NOT U91 ( .A(n142), .Z(n146) );
  GTECH_NOT U92 ( .A(a[11]), .Z(n143) );
  GTECH_AOI21 U93 ( .A(n154), .B(a[10]), .C(n155), .Z(n142) );
  GTECH_OA21 U94 ( .A(a[10]), .B(n154), .C(b[10]), .Z(n155) );
  GTECH_NOT U95 ( .A(n148), .Z(n154) );
  GTECH_AOI21 U96 ( .A(n156), .B(a[9]), .C(n157), .Z(n148) );
  GTECH_OA21 U97 ( .A(a[9]), .B(n156), .C(b[9]), .Z(n157) );
  GTECH_NOT U98 ( .A(n119), .Z(n156) );
  GTECH_AOI21 U99 ( .A(n141), .B(a[8]), .C(n158), .Z(n119) );
  GTECH_OA21 U100 ( .A(a[8]), .B(n141), .C(b[8]), .Z(n158) );
  GTECH_MUX2 U101 ( .A(n159), .B(n160), .S(n161), .Z(n141) );
  GTECH_AND4 U102 ( .A(n122), .B(n124), .C(n126), .D(n128), .Z(n161) );
  GTECH_XOR2 U103 ( .A(a[4]), .B(b[4]), .Z(n128) );
  GTECH_XNOR2 U104 ( .A(n162), .B(b[5]), .Z(n126) );
  GTECH_XOR2 U105 ( .A(a[6]), .B(b[6]), .Z(n124) );
  GTECH_XNOR2 U106 ( .A(n163), .B(b[7]), .Z(n122) );
  GTECH_OAI21 U107 ( .A(n164), .B(n163), .C(n165), .Z(n159) );
  GTECH_OAI21 U108 ( .A(a[7]), .B(n123), .C(b[7]), .Z(n165) );
  GTECH_NOT U109 ( .A(n164), .Z(n123) );
  GTECH_NOT U110 ( .A(a[7]), .Z(n163) );
  GTECH_AOI21 U111 ( .A(n125), .B(a[6]), .C(n166), .Z(n164) );
  GTECH_OA21 U112 ( .A(a[6]), .B(n125), .C(b[6]), .Z(n166) );
  GTECH_OAI21 U113 ( .A(n167), .B(n162), .C(n168), .Z(n125) );
  GTECH_OAI21 U114 ( .A(a[5]), .B(n127), .C(b[5]), .Z(n168) );
  GTECH_NOT U115 ( .A(n167), .Z(n127) );
  GTECH_NOT U116 ( .A(a[5]), .Z(n162) );
  GTECH_AOI21 U117 ( .A(n160), .B(a[4]), .C(n169), .Z(n167) );
  GTECH_OA21 U118 ( .A(a[4]), .B(n160), .C(b[4]), .Z(n169) );
  GTECH_NOT U119 ( .A(n129), .Z(n160) );
  GTECH_AOI21 U120 ( .A(n130), .B(a[3]), .C(n170), .Z(n129) );
  GTECH_OA21 U121 ( .A(a[3]), .B(n130), .C(b[3]), .Z(n170) );
  GTECH_ADD_ABC U122 ( .A(n171), .B(a[2]), .C(b[2]), .COUT(n130) );
  GTECH_OA21 U123 ( .A(a[1]), .B(n132), .C(n133), .Z(n171) );
  GTECH_NOT U124 ( .A(n172), .Z(n133) );
  GTECH_AOI21 U125 ( .A(n132), .B(a[1]), .C(b[1]), .Z(n172) );
  GTECH_ADD_ABC U126 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n132) );
endmodule

