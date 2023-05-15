
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
         n167, n168;

  GTECH_XOR2 U60 ( .A(n123), .B(n124), .Z(sum[9]) );
  GTECH_XNOR2 U61 ( .A(n125), .B(n126), .Z(sum[8]) );
  GTECH_XNOR2 U62 ( .A(n127), .B(n128), .Z(sum[7]) );
  GTECH_XNOR2 U63 ( .A(n129), .B(n130), .Z(sum[6]) );
  GTECH_XNOR2 U64 ( .A(n131), .B(n132), .Z(sum[5]) );
  GTECH_XNOR2 U65 ( .A(n133), .B(n134), .Z(sum[4]) );
  GTECH_XOR3 U66 ( .A(b[3]), .B(a[3]), .C(n135), .Z(sum[3]) );
  GTECH_XOR3 U67 ( .A(b[2]), .B(a[2]), .C(n136), .Z(sum[2]) );
  GTECH_XOR3 U68 ( .A(b[1]), .B(a[1]), .C(n137), .Z(sum[1]) );
  GTECH_XOR3 U69 ( .A(b[15]), .B(a[15]), .C(n138), .Z(sum[15]) );
  GTECH_XOR3 U70 ( .A(b[14]), .B(a[14]), .C(n139), .Z(sum[14]) );
  GTECH_XOR3 U71 ( .A(b[13]), .B(a[13]), .C(n140), .Z(sum[13]) );
  GTECH_XOR3 U72 ( .A(n141), .B(a[12]), .C(n142), .Z(sum[12]) );
  GTECH_NOT U73 ( .A(b[12]), .Z(n141) );
  GTECH_XOR2 U74 ( .A(n143), .B(n144), .Z(sum[11]) );
  GTECH_XOR2 U75 ( .A(n145), .B(n146), .Z(sum[10]) );
  GTECH_XOR3 U76 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_AO21 U77 ( .A(n138), .B(a[15]), .C(n147), .Z(cout) );
  GTECH_OA21 U78 ( .A(a[15]), .B(n138), .C(b[15]), .Z(n147) );
  GTECH_AO21 U79 ( .A(n139), .B(a[14]), .C(n148), .Z(n138) );
  GTECH_OA21 U80 ( .A(a[14]), .B(n139), .C(b[14]), .Z(n148) );
  GTECH_AO21 U81 ( .A(n140), .B(a[13]), .C(n149), .Z(n139) );
  GTECH_OA21 U82 ( .A(a[13]), .B(n140), .C(b[13]), .Z(n149) );
  GTECH_ADD_ABC U83 ( .A(n150), .B(a[12]), .C(b[12]), .COUT(n140) );
  GTECH_NOT U84 ( .A(n142), .Z(n150) );
  GTECH_MUX2 U85 ( .A(n151), .B(n125), .S(n152), .Z(n142) );
  GTECH_AND4 U86 ( .A(n145), .B(n143), .C(n126), .D(n123), .Z(n152) );
  GTECH_XOR2 U87 ( .A(a[9]), .B(b[9]), .Z(n123) );
  GTECH_XOR2 U88 ( .A(a[8]), .B(b[8]), .Z(n126) );
  GTECH_XOR2 U89 ( .A(a[11]), .B(b[11]), .Z(n143) );
  GTECH_XOR2 U90 ( .A(a[10]), .B(b[10]), .Z(n145) );
  GTECH_MUX2 U91 ( .A(n153), .B(n154), .S(n155), .Z(n125) );
  GTECH_NOT U92 ( .A(n134), .Z(n154) );
  GTECH_OAI21 U93 ( .A(a[7]), .B(n128), .C(n156), .Z(n153) );
  GTECH_OAI21 U94 ( .A(a[11]), .B(n144), .C(n157), .Z(n151) );
  GTECH_AO21 U95 ( .A(n144), .B(a[11]), .C(b[11]), .Z(n157) );
  GTECH_AO21 U96 ( .A(n146), .B(a[10]), .C(n158), .Z(n144) );
  GTECH_OA21 U97 ( .A(a[10]), .B(n146), .C(b[10]), .Z(n158) );
  GTECH_AO21 U98 ( .A(n124), .B(a[9]), .C(n159), .Z(n146) );
  GTECH_OA21 U99 ( .A(a[9]), .B(n124), .C(b[9]), .Z(n159) );
  GTECH_ADD_ABC U100 ( .A(n160), .B(a[8]), .C(b[8]), .COUT(n124) );
  GTECH_MUX2 U101 ( .A(n134), .B(n161), .S(n162), .Z(n160) );
  GTECH_NOT U102 ( .A(n155), .Z(n162) );
  GTECH_NOR4 U103 ( .A(n133), .B(n131), .C(n129), .D(n127), .Z(n155) );
  GTECH_XNOR2 U104 ( .A(a[7]), .B(b[7]), .Z(n127) );
  GTECH_XNOR2 U105 ( .A(a[6]), .B(b[6]), .Z(n129) );
  GTECH_XNOR2 U106 ( .A(a[5]), .B(b[5]), .Z(n131) );
  GTECH_XNOR2 U107 ( .A(a[4]), .B(b[4]), .Z(n133) );
  GTECH_OA21 U108 ( .A(a[7]), .B(n128), .C(n156), .Z(n161) );
  GTECH_AO21 U109 ( .A(n128), .B(a[7]), .C(b[7]), .Z(n156) );
  GTECH_AO21 U110 ( .A(n130), .B(a[6]), .C(n163), .Z(n128) );
  GTECH_OA21 U111 ( .A(a[6]), .B(n130), .C(b[6]), .Z(n163) );
  GTECH_AO21 U112 ( .A(n132), .B(a[5]), .C(n164), .Z(n130) );
  GTECH_OA21 U113 ( .A(a[5]), .B(n132), .C(b[5]), .Z(n164) );
  GTECH_AO21 U114 ( .A(n134), .B(a[4]), .C(n165), .Z(n132) );
  GTECH_OA21 U115 ( .A(a[4]), .B(n134), .C(b[4]), .Z(n165) );
  GTECH_AO21 U116 ( .A(n135), .B(a[3]), .C(n166), .Z(n134) );
  GTECH_OA21 U117 ( .A(a[3]), .B(n135), .C(b[3]), .Z(n166) );
  GTECH_AO21 U118 ( .A(n136), .B(a[2]), .C(n167), .Z(n135) );
  GTECH_OA21 U119 ( .A(a[2]), .B(n136), .C(b[2]), .Z(n167) );
  GTECH_AO21 U120 ( .A(n137), .B(a[1]), .C(n168), .Z(n136) );
  GTECH_OA21 U121 ( .A(a[1]), .B(n137), .C(b[1]), .Z(n168) );
  GTECH_ADD_ABC U122 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n137) );
endmodule

