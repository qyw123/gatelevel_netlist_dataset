
module carry_bypass_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167;

  GTECH_XOR2 U62 ( .A(n125), .B(n126), .Z(sum[9]) );
  GTECH_XOR2 U63 ( .A(n127), .B(n128), .Z(sum[8]) );
  GTECH_XNOR2 U64 ( .A(n129), .B(n130), .Z(sum[7]) );
  GTECH_XNOR2 U65 ( .A(n131), .B(n132), .Z(sum[6]) );
  GTECH_XNOR2 U66 ( .A(n133), .B(n134), .Z(sum[5]) );
  GTECH_XNOR2 U67 ( .A(n135), .B(n136), .Z(sum[4]) );
  GTECH_XOR3 U68 ( .A(b[3]), .B(a[3]), .C(n137), .Z(sum[3]) );
  GTECH_XOR3 U69 ( .A(b[2]), .B(a[2]), .C(n138), .Z(sum[2]) );
  GTECH_XOR3 U70 ( .A(b[1]), .B(a[1]), .C(n139), .Z(sum[1]) );
  GTECH_XOR3 U71 ( .A(b[15]), .B(a[15]), .C(n140), .Z(sum[15]) );
  GTECH_XOR3 U72 ( .A(b[14]), .B(a[14]), .C(n141), .Z(sum[14]) );
  GTECH_XOR3 U73 ( .A(b[13]), .B(a[13]), .C(n142), .Z(sum[13]) );
  GTECH_XOR3 U74 ( .A(b[12]), .B(a[12]), .C(n143), .Z(sum[12]) );
  GTECH_XOR2 U75 ( .A(n144), .B(n145), .Z(sum[11]) );
  GTECH_XOR2 U76 ( .A(n146), .B(n147), .Z(sum[10]) );
  GTECH_XOR3 U77 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_AO21 U78 ( .A(n140), .B(a[15]), .C(n148), .Z(cout) );
  GTECH_OA21 U79 ( .A(a[15]), .B(n140), .C(b[15]), .Z(n148) );
  GTECH_AO21 U80 ( .A(n141), .B(a[14]), .C(n149), .Z(n140) );
  GTECH_OA21 U81 ( .A(a[14]), .B(n141), .C(b[14]), .Z(n149) );
  GTECH_AO21 U82 ( .A(n142), .B(a[13]), .C(n150), .Z(n141) );
  GTECH_OA21 U83 ( .A(a[13]), .B(n142), .C(b[13]), .Z(n150) );
  GTECH_AO21 U84 ( .A(n143), .B(a[12]), .C(n151), .Z(n142) );
  GTECH_OA21 U85 ( .A(a[12]), .B(n143), .C(b[12]), .Z(n151) );
  GTECH_MUX2 U86 ( .A(n127), .B(n152), .S(n153), .Z(n143) );
  GTECH_NAND4 U87 ( .A(n125), .B(n128), .C(n144), .D(n146), .Z(n153) );
  GTECH_XOR2 U88 ( .A(a[10]), .B(b[10]), .Z(n146) );
  GTECH_XOR2 U89 ( .A(a[11]), .B(b[11]), .Z(n144) );
  GTECH_XOR2 U90 ( .A(a[8]), .B(b[8]), .Z(n128) );
  GTECH_XOR2 U91 ( .A(a[9]), .B(b[9]), .Z(n125) );
  GTECH_OA21 U92 ( .A(a[11]), .B(n145), .C(n154), .Z(n152) );
  GTECH_AO21 U93 ( .A(n145), .B(a[11]), .C(b[11]), .Z(n154) );
  GTECH_AO21 U94 ( .A(n147), .B(a[10]), .C(n155), .Z(n145) );
  GTECH_OA21 U95 ( .A(a[10]), .B(n147), .C(b[10]), .Z(n155) );
  GTECH_AO21 U96 ( .A(n126), .B(a[9]), .C(n156), .Z(n147) );
  GTECH_OA21 U97 ( .A(a[9]), .B(n126), .C(b[9]), .Z(n156) );
  GTECH_AO21 U98 ( .A(n127), .B(a[8]), .C(n157), .Z(n126) );
  GTECH_OA21 U99 ( .A(a[8]), .B(n127), .C(b[8]), .Z(n157) );
  GTECH_MUX2 U100 ( .A(n158), .B(n136), .S(n159), .Z(n127) );
  GTECH_NOR4 U101 ( .A(n129), .B(n131), .C(n133), .D(n135), .Z(n159) );
  GTECH_XNOR2 U102 ( .A(a[4]), .B(b[4]), .Z(n135) );
  GTECH_XNOR2 U103 ( .A(a[5]), .B(b[5]), .Z(n133) );
  GTECH_XNOR2 U104 ( .A(a[6]), .B(b[6]), .Z(n131) );
  GTECH_XNOR2 U105 ( .A(a[7]), .B(b[7]), .Z(n129) );
  GTECH_OA21 U106 ( .A(a[7]), .B(n130), .C(n160), .Z(n158) );
  GTECH_AO21 U107 ( .A(n130), .B(a[7]), .C(b[7]), .Z(n160) );
  GTECH_AO21 U108 ( .A(n132), .B(a[6]), .C(n161), .Z(n130) );
  GTECH_OA21 U109 ( .A(a[6]), .B(n132), .C(b[6]), .Z(n161) );
  GTECH_AO21 U110 ( .A(n134), .B(a[5]), .C(n162), .Z(n132) );
  GTECH_OA21 U111 ( .A(a[5]), .B(n134), .C(b[5]), .Z(n162) );
  GTECH_AO21 U112 ( .A(n136), .B(a[4]), .C(n163), .Z(n134) );
  GTECH_OA21 U113 ( .A(a[4]), .B(n136), .C(b[4]), .Z(n163) );
  GTECH_AO21 U114 ( .A(n137), .B(a[3]), .C(n164), .Z(n136) );
  GTECH_OA21 U115 ( .A(a[3]), .B(n137), .C(b[3]), .Z(n164) );
  GTECH_AO21 U116 ( .A(n138), .B(a[2]), .C(n165), .Z(n137) );
  GTECH_OA21 U117 ( .A(a[2]), .B(n138), .C(b[2]), .Z(n165) );
  GTECH_AO21 U118 ( .A(n139), .B(a[1]), .C(n166), .Z(n138) );
  GTECH_OA21 U119 ( .A(a[1]), .B(n139), .C(b[1]), .Z(n166) );
  GTECH_AO21 U120 ( .A(a[0]), .B(b[0]), .C(n167), .Z(n139) );
  GTECH_OA21 U121 ( .A(a[0]), .B(b[0]), .C(cin), .Z(n167) );
endmodule

