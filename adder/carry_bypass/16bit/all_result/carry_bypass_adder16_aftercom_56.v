
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
         n166, n167, n168, n169, n170;

  GTECH_XNOR2 U59 ( .A(n122), .B(n123), .Z(sum[9]) );
  GTECH_XNOR2 U60 ( .A(n124), .B(n125), .Z(sum[8]) );
  GTECH_XOR2 U61 ( .A(n126), .B(n127), .Z(sum[7]) );
  GTECH_XOR2 U62 ( .A(n128), .B(n129), .Z(sum[6]) );
  GTECH_XOR2 U63 ( .A(n130), .B(n131), .Z(sum[5]) );
  GTECH_XOR2 U64 ( .A(n132), .B(n133), .Z(sum[4]) );
  GTECH_XOR3 U65 ( .A(b[3]), .B(n134), .C(n135), .Z(sum[3]) );
  GTECH_XOR3 U66 ( .A(b[2]), .B(a[2]), .C(n136), .Z(sum[2]) );
  GTECH_XOR3 U67 ( .A(b[1]), .B(a[1]), .C(n137), .Z(sum[1]) );
  GTECH_XOR3 U68 ( .A(b[15]), .B(a[15]), .C(n138), .Z(sum[15]) );
  GTECH_XOR3 U69 ( .A(b[14]), .B(a[14]), .C(n139), .Z(sum[14]) );
  GTECH_XOR3 U70 ( .A(b[13]), .B(a[13]), .C(n140), .Z(sum[13]) );
  GTECH_XOR3 U71 ( .A(b[12]), .B(a[12]), .C(n141), .Z(sum[12]) );
  GTECH_XOR2 U72 ( .A(n142), .B(n143), .Z(sum[11]) );
  GTECH_XNOR2 U73 ( .A(n144), .B(n145), .Z(sum[10]) );
  GTECH_XOR3 U74 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_OAI21 U75 ( .A(n146), .B(n147), .C(n148), .Z(cout) );
  GTECH_OAI21 U76 ( .A(a[15]), .B(n138), .C(b[15]), .Z(n148) );
  GTECH_NOT U77 ( .A(n146), .Z(n138) );
  GTECH_NOT U78 ( .A(a[15]), .Z(n147) );
  GTECH_AOI21 U79 ( .A(n139), .B(a[14]), .C(n149), .Z(n146) );
  GTECH_OA21 U80 ( .A(a[14]), .B(n139), .C(b[14]), .Z(n149) );
  GTECH_NOT U81 ( .A(n150), .Z(n139) );
  GTECH_AOI21 U82 ( .A(n140), .B(a[13]), .C(n151), .Z(n150) );
  GTECH_OA21 U83 ( .A(a[13]), .B(n140), .C(b[13]), .Z(n151) );
  GTECH_ADD_ABC U84 ( .A(n141), .B(a[12]), .C(b[12]), .COUT(n140) );
  GTECH_MUX2 U85 ( .A(n152), .B(n124), .S(n153), .Z(n141) );
  GTECH_NOR4 U86 ( .A(n142), .B(n144), .C(n125), .D(n123), .Z(n153) );
  GTECH_XNOR2 U87 ( .A(a[9]), .B(b[9]), .Z(n123) );
  GTECH_XNOR2 U88 ( .A(a[8]), .B(b[8]), .Z(n125) );
  GTECH_XNOR2 U89 ( .A(a[10]), .B(b[10]), .Z(n144) );
  GTECH_XOR2 U90 ( .A(n154), .B(b[11]), .Z(n142) );
  GTECH_OAI21 U91 ( .A(n143), .B(n154), .C(n155), .Z(n152) );
  GTECH_OAI21 U92 ( .A(a[11]), .B(n156), .C(b[11]), .Z(n155) );
  GTECH_NOT U93 ( .A(n143), .Z(n156) );
  GTECH_NOT U94 ( .A(a[11]), .Z(n154) );
  GTECH_AOI21 U95 ( .A(n145), .B(a[10]), .C(n157), .Z(n143) );
  GTECH_OA21 U96 ( .A(a[10]), .B(n145), .C(b[10]), .Z(n157) );
  GTECH_ADD_ABC U97 ( .A(a[9]), .B(n122), .C(b[9]), .COUT(n145) );
  GTECH_ADD_ABC U98 ( .A(a[8]), .B(n124), .C(b[8]), .COUT(n122) );
  GTECH_MUX2 U99 ( .A(n158), .B(n132), .S(n159), .Z(n124) );
  GTECH_AND4 U100 ( .A(n133), .B(n130), .C(n128), .D(n126), .Z(n159) );
  GTECH_XNOR2 U101 ( .A(n160), .B(b[7]), .Z(n126) );
  GTECH_XOR2 U102 ( .A(a[6]), .B(b[6]), .Z(n128) );
  GTECH_XOR2 U103 ( .A(a[5]), .B(b[5]), .Z(n130) );
  GTECH_XOR2 U104 ( .A(a[4]), .B(b[4]), .Z(n133) );
  GTECH_OAI21 U105 ( .A(n161), .B(n160), .C(n162), .Z(n158) );
  GTECH_OAI21 U106 ( .A(a[7]), .B(n127), .C(b[7]), .Z(n162) );
  GTECH_NOT U107 ( .A(n161), .Z(n127) );
  GTECH_NOT U108 ( .A(a[7]), .Z(n160) );
  GTECH_AOI21 U109 ( .A(n129), .B(a[6]), .C(n163), .Z(n161) );
  GTECH_OA21 U110 ( .A(a[6]), .B(n129), .C(b[6]), .Z(n163) );
  GTECH_NOT U111 ( .A(n164), .Z(n129) );
  GTECH_AOI21 U112 ( .A(n131), .B(a[5]), .C(n165), .Z(n164) );
  GTECH_OA21 U113 ( .A(a[5]), .B(n131), .C(b[5]), .Z(n165) );
  GTECH_ADD_ABC U114 ( .A(n132), .B(a[4]), .C(b[4]), .COUT(n131) );
  GTECH_AOI21 U115 ( .A(n134), .B(n135), .C(n166), .Z(n132) );
  GTECH_OA21 U116 ( .A(n135), .B(n134), .C(n167), .Z(n166) );
  GTECH_NOT U117 ( .A(b[3]), .Z(n167) );
  GTECH_AOI21 U118 ( .A(n136), .B(a[2]), .C(n168), .Z(n135) );
  GTECH_OA21 U119 ( .A(a[2]), .B(n136), .C(b[2]), .Z(n168) );
  GTECH_NOT U120 ( .A(n169), .Z(n136) );
  GTECH_AOI21 U121 ( .A(n137), .B(a[1]), .C(n170), .Z(n169) );
  GTECH_OA21 U122 ( .A(a[1]), .B(n137), .C(b[1]), .Z(n170) );
  GTECH_ADD_ABC U123 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n137) );
  GTECH_NOT U124 ( .A(a[3]), .Z(n134) );
endmodule

