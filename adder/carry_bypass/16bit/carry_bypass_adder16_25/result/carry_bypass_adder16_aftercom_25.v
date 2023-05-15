
module carry_bypass_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164;

  GTECH_XOR2 U59 ( .A(n122), .B(n123), .Z(sum[9]) );
  GTECH_XOR2 U60 ( .A(n124), .B(n125), .Z(sum[8]) );
  GTECH_XOR2 U61 ( .A(n126), .B(n127), .Z(sum[7]) );
  GTECH_XOR2 U62 ( .A(n128), .B(n129), .Z(sum[6]) );
  GTECH_XOR2 U63 ( .A(n130), .B(n131), .Z(sum[5]) );
  GTECH_XOR2 U64 ( .A(n132), .B(n133), .Z(sum[4]) );
  GTECH_XOR3 U65 ( .A(b[3]), .B(a[3]), .C(n134), .Z(sum[3]) );
  GTECH_XOR3 U66 ( .A(b[2]), .B(a[2]), .C(n135), .Z(sum[2]) );
  GTECH_XOR3 U67 ( .A(b[1]), .B(a[1]), .C(n136), .Z(sum[1]) );
  GTECH_XOR3 U68 ( .A(n137), .B(a[15]), .C(n138), .Z(sum[15]) );
  GTECH_XOR3 U69 ( .A(b[14]), .B(a[14]), .C(n139), .Z(sum[14]) );
  GTECH_XOR3 U70 ( .A(b[13]), .B(a[13]), .C(n140), .Z(sum[13]) );
  GTECH_XOR3 U71 ( .A(b[12]), .B(a[12]), .C(n141), .Z(sum[12]) );
  GTECH_XOR2 U72 ( .A(n142), .B(n143), .Z(sum[11]) );
  GTECH_XOR2 U73 ( .A(n144), .B(n145), .Z(sum[10]) );
  GTECH_XOR3 U74 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_OAI21 U75 ( .A(n138), .B(n146), .C(n147), .Z(cout) );
  GTECH_AO21 U76 ( .A(n146), .B(n138), .C(n137), .Z(n147) );
  GTECH_NOT U77 ( .A(b[15]), .Z(n137) );
  GTECH_NOT U78 ( .A(a[15]), .Z(n146) );
  GTECH_AOI21 U79 ( .A(n139), .B(a[14]), .C(n148), .Z(n138) );
  GTECH_OA21 U80 ( .A(a[14]), .B(n139), .C(b[14]), .Z(n148) );
  GTECH_AO21 U81 ( .A(n140), .B(a[13]), .C(n149), .Z(n139) );
  GTECH_OA21 U82 ( .A(a[13]), .B(n140), .C(b[13]), .Z(n149) );
  GTECH_ADD_ABC U83 ( .A(n141), .B(a[12]), .C(b[12]), .COUT(n140) );
  GTECH_MUX2 U84 ( .A(n150), .B(n124), .S(n151), .Z(n141) );
  GTECH_AND4 U85 ( .A(n144), .B(n142), .C(n125), .D(n122), .Z(n151) );
  GTECH_XOR2 U86 ( .A(a[9]), .B(b[9]), .Z(n122) );
  GTECH_XOR2 U87 ( .A(a[8]), .B(b[8]), .Z(n125) );
  GTECH_XOR2 U88 ( .A(a[11]), .B(b[11]), .Z(n142) );
  GTECH_XOR2 U89 ( .A(a[10]), .B(b[10]), .Z(n144) );
  GTECH_AOI21 U90 ( .A(n152), .B(n153), .C(n154), .Z(n150) );
  GTECH_AOI21 U91 ( .A(n143), .B(a[11]), .C(b[11]), .Z(n154) );
  GTECH_NOT U92 ( .A(n153), .Z(n143) );
  GTECH_AOI21 U93 ( .A(n145), .B(a[10]), .C(n155), .Z(n153) );
  GTECH_OA21 U94 ( .A(a[10]), .B(n145), .C(b[10]), .Z(n155) );
  GTECH_AO21 U95 ( .A(n123), .B(a[9]), .C(n156), .Z(n145) );
  GTECH_OA21 U96 ( .A(a[9]), .B(n123), .C(b[9]), .Z(n156) );
  GTECH_ADD_ABC U97 ( .A(n124), .B(a[8]), .C(b[8]), .COUT(n123) );
  GTECH_MUX2 U98 ( .A(n157), .B(n132), .S(n158), .Z(n124) );
  GTECH_AND4 U99 ( .A(n133), .B(n130), .C(n128), .D(n126), .Z(n158) );
  GTECH_XOR2 U100 ( .A(a[7]), .B(b[7]), .Z(n126) );
  GTECH_XOR2 U101 ( .A(a[6]), .B(b[6]), .Z(n128) );
  GTECH_XOR2 U102 ( .A(a[5]), .B(b[5]), .Z(n130) );
  GTECH_XOR2 U103 ( .A(a[4]), .B(b[4]), .Z(n133) );
  GTECH_AO21 U104 ( .A(n127), .B(a[7]), .C(n159), .Z(n157) );
  GTECH_OA21 U105 ( .A(a[7]), .B(n127), .C(b[7]), .Z(n159) );
  GTECH_AO21 U106 ( .A(n129), .B(a[6]), .C(n160), .Z(n127) );
  GTECH_OA21 U107 ( .A(a[6]), .B(n129), .C(b[6]), .Z(n160) );
  GTECH_AO21 U108 ( .A(n131), .B(a[5]), .C(n161), .Z(n129) );
  GTECH_OA21 U109 ( .A(a[5]), .B(n131), .C(b[5]), .Z(n161) );
  GTECH_ADD_ABC U110 ( .A(n132), .B(a[4]), .C(b[4]), .COUT(n131) );
  GTECH_OA21 U111 ( .A(a[3]), .B(n134), .C(n162), .Z(n132) );
  GTECH_AO21 U112 ( .A(n134), .B(a[3]), .C(b[3]), .Z(n162) );
  GTECH_AO21 U113 ( .A(n135), .B(a[2]), .C(n163), .Z(n134) );
  GTECH_OA21 U114 ( .A(a[2]), .B(n135), .C(b[2]), .Z(n163) );
  GTECH_AO21 U115 ( .A(n136), .B(a[1]), .C(n164), .Z(n135) );
  GTECH_OA21 U116 ( .A(a[1]), .B(n136), .C(b[1]), .Z(n164) );
  GTECH_ADD_ABC U117 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n136) );
  GTECH_NOT U118 ( .A(a[11]), .Z(n152) );
endmodule

