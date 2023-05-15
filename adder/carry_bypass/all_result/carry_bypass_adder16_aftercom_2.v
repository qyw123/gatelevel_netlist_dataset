
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
         n167, n168, n169, n170, n171, n172, n173;

  GTECH_XOR2 U60 ( .A(n123), .B(n124), .Z(sum[9]) );
  GTECH_XOR2 U61 ( .A(n125), .B(n126), .Z(sum[8]) );
  GTECH_XOR2 U62 ( .A(n127), .B(n128), .Z(sum[7]) );
  GTECH_XNOR2 U63 ( .A(n129), .B(n130), .Z(sum[6]) );
  GTECH_XNOR2 U64 ( .A(n131), .B(n132), .Z(sum[5]) );
  GTECH_XOR2 U65 ( .A(n133), .B(n134), .Z(sum[4]) );
  GTECH_ADD_ABC U66 ( .A(b[3]), .B(a[3]), .C(n135), .S(sum[3]) );
  GTECH_ADD_ABC U67 ( .A(b[2]), .B(a[2]), .C(n136), .S(sum[2]) );
  GTECH_ADD_ABC U68 ( .A(b[1]), .B(a[1]), .C(n137), .S(sum[1]) );
  GTECH_ADD_ABC U69 ( .A(b[15]), .B(a[15]), .C(n138), .S(sum[15]) );
  GTECH_ADD_ABC U70 ( .A(b[14]), .B(a[14]), .C(n139), .S(sum[14]) );
  GTECH_ADD_ABC U71 ( .A(b[13]), .B(a[13]), .C(n140), .S(sum[13]) );
  GTECH_ADD_ABC U72 ( .A(b[12]), .B(a[12]), .C(n141), .S(sum[12]) );
  GTECH_MUX2 U73 ( .A(n125), .B(n142), .S(n143), .Z(n141) );
  GTECH_XNOR2 U74 ( .A(n144), .B(n145), .Z(sum[11]) );
  GTECH_XOR2 U75 ( .A(n146), .B(n147), .Z(sum[10]) );
  GTECH_ADD_ABC U76 ( .A(cin), .B(b[0]), .C(a[0]), .S(sum[0]) );
  GTECH_AO21 U77 ( .A(n138), .B(a[15]), .C(n148), .Z(cout) );
  GTECH_OA21 U78 ( .A(a[15]), .B(n138), .C(b[15]), .Z(n148) );
  GTECH_AO21 U79 ( .A(n139), .B(a[14]), .C(n149), .Z(n138) );
  GTECH_OA21 U80 ( .A(a[14]), .B(n139), .C(b[14]), .Z(n149) );
  GTECH_AO21 U81 ( .A(n140), .B(a[13]), .C(n150), .Z(n139) );
  GTECH_OA21 U82 ( .A(a[13]), .B(n140), .C(b[13]), .Z(n150) );
  GTECH_ADD_ABC U83 ( .A(n151), .B(a[12]), .C(b[12]), .COUT(n140) );
  GTECH_MUX2 U84 ( .A(n142), .B(n125), .S(n152), .Z(n151) );
  GTECH_NOT U85 ( .A(n143), .Z(n152) );
  GTECH_NAND4 U86 ( .A(n146), .B(n144), .C(n126), .D(n123), .Z(n143) );
  GTECH_XOR2 U87 ( .A(a[9]), .B(b[9]), .Z(n123) );
  GTECH_XOR2 U88 ( .A(a[8]), .B(b[8]), .Z(n126) );
  GTECH_XNOR2 U89 ( .A(n153), .B(b[11]), .Z(n144) );
  GTECH_XOR2 U90 ( .A(a[10]), .B(b[10]), .Z(n146) );
  GTECH_NOT U91 ( .A(n154), .Z(n125) );
  GTECH_MUX2 U92 ( .A(n134), .B(n155), .S(n156), .Z(n154) );
  GTECH_AO21 U93 ( .A(n157), .B(n128), .C(n158), .Z(n155) );
  GTECH_AOI21 U94 ( .A(n153), .B(n145), .C(n159), .Z(n142) );
  GTECH_AOI21 U95 ( .A(n160), .B(a[11]), .C(b[11]), .Z(n159) );
  GTECH_NOT U96 ( .A(n145), .Z(n160) );
  GTECH_AOI21 U97 ( .A(n147), .B(a[10]), .C(n161), .Z(n145) );
  GTECH_OA21 U98 ( .A(a[10]), .B(n147), .C(b[10]), .Z(n161) );
  GTECH_AO21 U99 ( .A(n124), .B(a[9]), .C(n162), .Z(n147) );
  GTECH_OA21 U100 ( .A(a[9]), .B(n124), .C(b[9]), .Z(n162) );
  GTECH_ADD_ABC U101 ( .A(n163), .B(a[8]), .C(b[8]), .COUT(n124) );
  GTECH_MUX2 U102 ( .A(n164), .B(n165), .S(n166), .Z(n163) );
  GTECH_NOT U103 ( .A(n156), .Z(n166) );
  GTECH_OR4 U104 ( .A(n133), .B(n131), .C(n129), .D(n127), .Z(n156) );
  GTECH_XNOR2 U105 ( .A(a[7]), .B(b[7]), .Z(n127) );
  GTECH_XNOR2 U106 ( .A(a[6]), .B(b[6]), .Z(n129) );
  GTECH_XNOR2 U107 ( .A(a[5]), .B(b[5]), .Z(n131) );
  GTECH_XNOR2 U108 ( .A(a[4]), .B(b[4]), .Z(n133) );
  GTECH_AOI21 U109 ( .A(n157), .B(n128), .C(n158), .Z(n164) );
  GTECH_AOI21 U110 ( .A(n167), .B(a[7]), .C(b[7]), .Z(n158) );
  GTECH_NOT U111 ( .A(n128), .Z(n167) );
  GTECH_AOI21 U112 ( .A(n130), .B(a[6]), .C(n168), .Z(n128) );
  GTECH_OA21 U113 ( .A(a[6]), .B(n130), .C(b[6]), .Z(n168) );
  GTECH_AO21 U114 ( .A(n132), .B(a[5]), .C(n169), .Z(n130) );
  GTECH_OA21 U115 ( .A(a[5]), .B(n132), .C(b[5]), .Z(n169) );
  GTECH_AO21 U116 ( .A(n165), .B(a[4]), .C(n170), .Z(n132) );
  GTECH_OA21 U117 ( .A(a[4]), .B(n165), .C(b[4]), .Z(n170) );
  GTECH_NOT U118 ( .A(n134), .Z(n165) );
  GTECH_AOI21 U119 ( .A(n135), .B(a[3]), .C(n171), .Z(n134) );
  GTECH_OA21 U120 ( .A(a[3]), .B(n135), .C(b[3]), .Z(n171) );
  GTECH_AO21 U121 ( .A(n136), .B(a[2]), .C(n172), .Z(n135) );
  GTECH_OA21 U122 ( .A(a[2]), .B(n136), .C(b[2]), .Z(n172) );
  GTECH_AO21 U123 ( .A(n137), .B(a[1]), .C(n173), .Z(n136) );
  GTECH_OA21 U124 ( .A(a[1]), .B(n137), .C(b[1]), .Z(n173) );
  GTECH_ADD_ABC U125 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n137) );
  GTECH_NOT U126 ( .A(a[7]), .Z(n157) );
  GTECH_NOT U127 ( .A(a[11]), .Z(n153) );
endmodule

