
module carry_bypass_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170;

  GTECH_XOR2 U53 ( .A(n116), .B(n117), .Z(sum[9]) );
  GTECH_XNOR2 U54 ( .A(n118), .B(n119), .Z(sum[8]) );
  GTECH_XOR2 U55 ( .A(n120), .B(n121), .Z(sum[7]) );
  GTECH_XOR2 U56 ( .A(n122), .B(n123), .Z(sum[6]) );
  GTECH_XOR2 U57 ( .A(n124), .B(n125), .Z(sum[5]) );
  GTECH_XNOR2 U58 ( .A(n126), .B(n127), .Z(sum[4]) );
  GTECH_XNOR3 U59 ( .A(b[3]), .B(a[3]), .C(n128), .Z(sum[3]) );
  GTECH_XNOR3 U60 ( .A(b[2]), .B(a[2]), .C(n129), .Z(sum[2]) );
  GTECH_XOR3 U61 ( .A(b[1]), .B(a[1]), .C(n130), .Z(sum[1]) );
  GTECH_XNOR3 U62 ( .A(b[15]), .B(a[15]), .C(n131), .Z(sum[15]) );
  GTECH_XNOR3 U63 ( .A(b[14]), .B(a[14]), .C(n132), .Z(sum[14]) );
  GTECH_XOR3 U64 ( .A(b[13]), .B(a[13]), .C(n133), .Z(sum[13]) );
  GTECH_XOR3 U65 ( .A(b[12]), .B(a[12]), .C(n134), .Z(sum[12]) );
  GTECH_XOR2 U66 ( .A(n135), .B(n136), .Z(sum[11]) );
  GTECH_XOR2 U67 ( .A(n137), .B(n138), .Z(sum[10]) );
  GTECH_XOR3 U68 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_OAI21 U69 ( .A(n131), .B(n139), .C(n140), .Z(cout) );
  GTECH_OAI21 U70 ( .A(a[15]), .B(n141), .C(b[15]), .Z(n140) );
  GTECH_NOT U71 ( .A(n131), .Z(n141) );
  GTECH_NOT U72 ( .A(a[15]), .Z(n139) );
  GTECH_AOI21 U73 ( .A(n142), .B(a[14]), .C(n143), .Z(n131) );
  GTECH_OA21 U74 ( .A(a[14]), .B(n142), .C(b[14]), .Z(n143) );
  GTECH_NOT U75 ( .A(n132), .Z(n142) );
  GTECH_AOI21 U76 ( .A(n133), .B(a[13]), .C(n144), .Z(n132) );
  GTECH_OA21 U77 ( .A(a[13]), .B(n133), .C(b[13]), .Z(n144) );
  GTECH_ADD_ABC U78 ( .A(n134), .B(a[12]), .C(b[12]), .COUT(n133) );
  GTECH_MUX2 U79 ( .A(n119), .B(n145), .S(n146), .Z(n134) );
  GTECH_OR4 U80 ( .A(n137), .B(n135), .C(n118), .D(n116), .Z(n146) );
  GTECH_XNOR2 U81 ( .A(a[9]), .B(b[9]), .Z(n116) );
  GTECH_XNOR2 U82 ( .A(a[8]), .B(b[8]), .Z(n118) );
  GTECH_XNOR2 U83 ( .A(a[11]), .B(b[11]), .Z(n135) );
  GTECH_XNOR2 U84 ( .A(a[10]), .B(b[10]), .Z(n137) );
  GTECH_OAI21 U85 ( .A(n136), .B(n147), .C(n148), .Z(n145) );
  GTECH_OAI21 U86 ( .A(a[11]), .B(n149), .C(b[11]), .Z(n148) );
  GTECH_NOT U87 ( .A(n136), .Z(n149) );
  GTECH_NOT U88 ( .A(a[11]), .Z(n147) );
  GTECH_AOI21 U89 ( .A(n150), .B(a[10]), .C(n151), .Z(n136) );
  GTECH_OA21 U90 ( .A(a[10]), .B(n150), .C(b[10]), .Z(n151) );
  GTECH_NOT U91 ( .A(n138), .Z(n150) );
  GTECH_AOI21 U92 ( .A(n152), .B(a[9]), .C(n153), .Z(n138) );
  GTECH_OA21 U93 ( .A(a[9]), .B(n152), .C(b[9]), .Z(n153) );
  GTECH_NOT U94 ( .A(n117), .Z(n152) );
  GTECH_AOI21 U95 ( .A(n119), .B(a[8]), .C(n154), .Z(n117) );
  GTECH_OA21 U96 ( .A(a[8]), .B(n119), .C(b[8]), .Z(n154) );
  GTECH_MUX2 U97 ( .A(n155), .B(n156), .S(n157), .Z(n119) );
  GTECH_AND4 U98 ( .A(n126), .B(n124), .C(n122), .D(n120), .Z(n157) );
  GTECH_XNOR2 U99 ( .A(n158), .B(b[7]), .Z(n120) );
  GTECH_XOR2 U100 ( .A(a[6]), .B(b[6]), .Z(n122) );
  GTECH_XNOR2 U101 ( .A(n159), .B(b[5]), .Z(n124) );
  GTECH_XOR2 U102 ( .A(a[4]), .B(b[4]), .Z(n126) );
  GTECH_AOI21 U103 ( .A(n158), .B(n160), .C(n161), .Z(n155) );
  GTECH_AOI21 U104 ( .A(n121), .B(a[7]), .C(b[7]), .Z(n161) );
  GTECH_NOT U105 ( .A(n160), .Z(n121) );
  GTECH_AOI21 U106 ( .A(n123), .B(a[6]), .C(n162), .Z(n160) );
  GTECH_OA21 U107 ( .A(a[6]), .B(n123), .C(b[6]), .Z(n162) );
  GTECH_OAI21 U108 ( .A(n163), .B(n159), .C(n164), .Z(n123) );
  GTECH_OAI21 U109 ( .A(a[5]), .B(n125), .C(b[5]), .Z(n164) );
  GTECH_NOT U110 ( .A(n163), .Z(n125) );
  GTECH_NOT U111 ( .A(a[5]), .Z(n159) );
  GTECH_AOI21 U112 ( .A(n156), .B(a[4]), .C(n165), .Z(n163) );
  GTECH_OA21 U113 ( .A(a[4]), .B(n156), .C(b[4]), .Z(n165) );
  GTECH_NOT U114 ( .A(n127), .Z(n156) );
  GTECH_AOI21 U115 ( .A(n166), .B(a[3]), .C(n167), .Z(n127) );
  GTECH_OA21 U116 ( .A(a[3]), .B(n166), .C(b[3]), .Z(n167) );
  GTECH_NOT U117 ( .A(n128), .Z(n166) );
  GTECH_AOI21 U118 ( .A(n168), .B(a[2]), .C(n169), .Z(n128) );
  GTECH_OA21 U119 ( .A(a[2]), .B(n168), .C(b[2]), .Z(n169) );
  GTECH_NOT U120 ( .A(n129), .Z(n168) );
  GTECH_AOI21 U121 ( .A(n130), .B(a[1]), .C(n170), .Z(n129) );
  GTECH_OA21 U122 ( .A(a[1]), .B(n130), .C(b[1]), .Z(n170) );
  GTECH_ADD_ABC U123 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n130) );
  GTECH_NOT U124 ( .A(a[7]), .Z(n158) );
endmodule

