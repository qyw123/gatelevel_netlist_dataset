
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
  GTECH_XNOR2 U56 ( .A(n120), .B(n121), .Z(sum[8]) );
  GTECH_XNOR2 U57 ( .A(n122), .B(n123), .Z(sum[7]) );
  GTECH_XNOR2 U58 ( .A(n124), .B(n125), .Z(sum[6]) );
  GTECH_XNOR2 U59 ( .A(n126), .B(n127), .Z(sum[5]) );
  GTECH_XNOR2 U60 ( .A(n128), .B(n129), .Z(sum[4]) );
  GTECH_XNOR3 U61 ( .A(b[3]), .B(a[3]), .C(n130), .Z(sum[3]) );
  GTECH_XNOR3 U62 ( .A(b[2]), .B(a[2]), .C(n131), .Z(sum[2]) );
  GTECH_XOR3 U63 ( .A(b[1]), .B(a[1]), .C(n132), .Z(sum[1]) );
  GTECH_XNOR3 U64 ( .A(b[15]), .B(a[15]), .C(n133), .Z(sum[15]) );
  GTECH_XNOR3 U65 ( .A(b[14]), .B(a[14]), .C(n134), .Z(sum[14]) );
  GTECH_XNOR3 U66 ( .A(b[13]), .B(a[13]), .C(n135), .Z(sum[13]) );
  GTECH_XOR3 U67 ( .A(b[12]), .B(a[12]), .C(n136), .Z(sum[12]) );
  GTECH_XNOR2 U68 ( .A(n137), .B(n138), .Z(sum[11]) );
  GTECH_XNOR2 U69 ( .A(n139), .B(n140), .Z(sum[10]) );
  GTECH_XOR3 U70 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_OAI21 U71 ( .A(n133), .B(n141), .C(n142), .Z(cout) );
  GTECH_OAI21 U72 ( .A(a[15]), .B(n143), .C(b[15]), .Z(n142) );
  GTECH_NOT U73 ( .A(n133), .Z(n143) );
  GTECH_NOT U74 ( .A(a[15]), .Z(n141) );
  GTECH_AOI21 U75 ( .A(n144), .B(a[14]), .C(n145), .Z(n133) );
  GTECH_OA21 U76 ( .A(a[14]), .B(n144), .C(b[14]), .Z(n145) );
  GTECH_NOT U77 ( .A(n134), .Z(n144) );
  GTECH_AOI21 U78 ( .A(n146), .B(a[13]), .C(n147), .Z(n134) );
  GTECH_OA21 U79 ( .A(a[13]), .B(n146), .C(b[13]), .Z(n147) );
  GTECH_NOT U80 ( .A(n135), .Z(n146) );
  GTECH_AOI21 U81 ( .A(n136), .B(a[12]), .C(n148), .Z(n135) );
  GTECH_OA21 U82 ( .A(a[12]), .B(n136), .C(b[12]), .Z(n148) );
  GTECH_OAI2N2 U83 ( .A(n149), .B(n150), .C(n121), .D(n150), .Z(n136) );
  GTECH_NOR4 U84 ( .A(n139), .B(n137), .C(n120), .D(n119), .Z(n150) );
  GTECH_XNOR2 U85 ( .A(a[9]), .B(b[9]), .Z(n119) );
  GTECH_XNOR2 U86 ( .A(a[8]), .B(b[8]), .Z(n120) );
  GTECH_XNOR2 U87 ( .A(a[11]), .B(b[11]), .Z(n137) );
  GTECH_XNOR2 U88 ( .A(a[10]), .B(b[10]), .Z(n139) );
  GTECH_AOI21 U89 ( .A(n138), .B(a[11]), .C(n151), .Z(n149) );
  GTECH_OA21 U90 ( .A(a[11]), .B(n138), .C(b[11]), .Z(n151) );
  GTECH_NOT U91 ( .A(n152), .Z(n138) );
  GTECH_AOI21 U92 ( .A(n140), .B(a[10]), .C(n153), .Z(n152) );
  GTECH_OA21 U93 ( .A(a[10]), .B(n140), .C(b[10]), .Z(n153) );
  GTECH_ADD_ABC U94 ( .A(a[9]), .B(n118), .C(b[9]), .COUT(n140) );
  GTECH_OA21 U95 ( .A(a[8]), .B(n121), .C(n154), .Z(n118) );
  GTECH_NOT U96 ( .A(n155), .Z(n154) );
  GTECH_AOI21 U97 ( .A(n121), .B(a[8]), .C(b[8]), .Z(n155) );
  GTECH_OAI2N2 U98 ( .A(n156), .B(n157), .C(n129), .D(n157), .Z(n121) );
  GTECH_NOR4 U99 ( .A(n128), .B(n126), .C(n124), .D(n122), .Z(n157) );
  GTECH_XNOR2 U100 ( .A(a[7]), .B(b[7]), .Z(n122) );
  GTECH_XNOR2 U101 ( .A(a[6]), .B(b[6]), .Z(n124) );
  GTECH_XNOR2 U102 ( .A(a[5]), .B(b[5]), .Z(n126) );
  GTECH_XNOR2 U103 ( .A(a[4]), .B(b[4]), .Z(n128) );
  GTECH_AOI21 U104 ( .A(n123), .B(a[7]), .C(n158), .Z(n156) );
  GTECH_OA21 U105 ( .A(a[7]), .B(n123), .C(b[7]), .Z(n158) );
  GTECH_NOT U106 ( .A(n159), .Z(n123) );
  GTECH_AOI21 U107 ( .A(n125), .B(a[6]), .C(n160), .Z(n159) );
  GTECH_OA21 U108 ( .A(a[6]), .B(n125), .C(b[6]), .Z(n160) );
  GTECH_NOT U109 ( .A(n161), .Z(n125) );
  GTECH_AOI21 U110 ( .A(n127), .B(a[5]), .C(n162), .Z(n161) );
  GTECH_OA21 U111 ( .A(a[5]), .B(n127), .C(b[5]), .Z(n162) );
  GTECH_NOT U112 ( .A(n163), .Z(n127) );
  GTECH_AOI21 U113 ( .A(n129), .B(a[4]), .C(n164), .Z(n163) );
  GTECH_OA21 U114 ( .A(a[4]), .B(n129), .C(b[4]), .Z(n164) );
  GTECH_NOT U115 ( .A(n165), .Z(n129) );
  GTECH_AOI21 U116 ( .A(n166), .B(a[3]), .C(n167), .Z(n165) );
  GTECH_OA21 U117 ( .A(a[3]), .B(n166), .C(b[3]), .Z(n167) );
  GTECH_NOT U118 ( .A(n130), .Z(n166) );
  GTECH_AOI21 U119 ( .A(n168), .B(a[2]), .C(n169), .Z(n130) );
  GTECH_OA21 U120 ( .A(a[2]), .B(n168), .C(b[2]), .Z(n169) );
  GTECH_NOT U121 ( .A(n131), .Z(n168) );
  GTECH_AOI21 U122 ( .A(n132), .B(a[1]), .C(n170), .Z(n131) );
  GTECH_OA21 U123 ( .A(a[1]), .B(n132), .C(b[1]), .Z(n170) );
  GTECH_ADD_ABC U124 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n132) );
endmodule

