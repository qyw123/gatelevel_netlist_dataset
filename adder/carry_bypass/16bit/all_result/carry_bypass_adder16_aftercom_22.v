
module carry_bypass_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167;

  GTECH_XOR2 U61 ( .A(n124), .B(n125), .Z(sum[9]) );
  GTECH_XOR2 U62 ( .A(n126), .B(n127), .Z(sum[8]) );
  GTECH_XNOR2 U63 ( .A(n128), .B(n129), .Z(sum[7]) );
  GTECH_XOR2 U64 ( .A(n130), .B(n131), .Z(sum[6]) );
  GTECH_XOR2 U65 ( .A(n132), .B(n133), .Z(sum[5]) );
  GTECH_XOR2 U66 ( .A(n134), .B(n135), .Z(sum[4]) );
  GTECH_ADD_ABC U67 ( .A(b[3]), .B(a[3]), .C(n136), .S(sum[3]) );
  GTECH_ADD_ABC U68 ( .A(b[2]), .B(a[2]), .C(n137), .S(sum[2]) );
  GTECH_ADD_ABC U69 ( .A(b[1]), .B(a[1]), .C(n138), .S(sum[1]) );
  GTECH_ADD_ABC U70 ( .A(b[15]), .B(a[15]), .C(n139), .S(sum[15]) );
  GTECH_ADD_ABC U71 ( .A(b[14]), .B(a[14]), .C(n140), .S(sum[14]) );
  GTECH_ADD_ABC U72 ( .A(b[13]), .B(a[13]), .C(n141), .S(sum[13]) );
  GTECH_ADD_ABC U73 ( .A(b[12]), .B(a[12]), .C(n142), .S(sum[12]) );
  GTECH_XNOR2 U74 ( .A(n143), .B(n144), .Z(sum[11]) );
  GTECH_XOR2 U75 ( .A(n145), .B(n146), .Z(sum[10]) );
  GTECH_ADD_ABC U76 ( .A(cin), .B(b[0]), .C(a[0]), .S(sum[0]) );
  GTECH_AO21 U77 ( .A(n139), .B(a[15]), .C(n147), .Z(cout) );
  GTECH_OA21 U78 ( .A(a[15]), .B(n139), .C(b[15]), .Z(n147) );
  GTECH_AO21 U79 ( .A(n140), .B(a[14]), .C(n148), .Z(n139) );
  GTECH_OA21 U80 ( .A(a[14]), .B(n140), .C(b[14]), .Z(n148) );
  GTECH_AO21 U81 ( .A(n141), .B(a[13]), .C(n149), .Z(n140) );
  GTECH_OA21 U82 ( .A(a[13]), .B(n141), .C(b[13]), .Z(n149) );
  GTECH_ADD_ABC U83 ( .A(n142), .B(a[12]), .C(b[12]), .COUT(n141) );
  GTECH_MUX2 U84 ( .A(n126), .B(n150), .S(n151), .Z(n142) );
  GTECH_NAND4 U85 ( .A(n124), .B(n127), .C(n143), .D(n145), .Z(n151) );
  GTECH_XOR2 U86 ( .A(a[10]), .B(b[10]), .Z(n145) );
  GTECH_XNOR2 U87 ( .A(n152), .B(b[11]), .Z(n143) );
  GTECH_XOR2 U88 ( .A(a[8]), .B(b[8]), .Z(n127) );
  GTECH_XOR2 U89 ( .A(a[9]), .B(b[9]), .Z(n124) );
  GTECH_AOI21 U90 ( .A(n152), .B(n144), .C(n153), .Z(n150) );
  GTECH_AOI21 U91 ( .A(n154), .B(a[11]), .C(b[11]), .Z(n153) );
  GTECH_NOT U92 ( .A(n144), .Z(n154) );
  GTECH_AOI21 U93 ( .A(n146), .B(a[10]), .C(n155), .Z(n144) );
  GTECH_OA21 U94 ( .A(a[10]), .B(n146), .C(b[10]), .Z(n155) );
  GTECH_AO21 U95 ( .A(n125), .B(a[9]), .C(n156), .Z(n146) );
  GTECH_OA21 U96 ( .A(a[9]), .B(n125), .C(b[9]), .Z(n156) );
  GTECH_ADD_ABC U97 ( .A(n126), .B(a[8]), .C(b[8]), .COUT(n125) );
  GTECH_NOT U98 ( .A(a[11]), .Z(n152) );
  GTECH_MUX2 U99 ( .A(n135), .B(n157), .S(n158), .Z(n126) );
  GTECH_NAND4 U100 ( .A(n128), .B(n130), .C(n132), .D(n134), .Z(n158) );
  GTECH_XOR2 U101 ( .A(a[4]), .B(b[4]), .Z(n134) );
  GTECH_XOR2 U102 ( .A(a[5]), .B(b[5]), .Z(n132) );
  GTECH_XOR2 U103 ( .A(a[6]), .B(b[6]), .Z(n130) );
  GTECH_XNOR2 U104 ( .A(n159), .B(b[7]), .Z(n128) );
  GTECH_AOI21 U105 ( .A(n159), .B(n129), .C(n160), .Z(n157) );
  GTECH_AOI21 U106 ( .A(n161), .B(a[7]), .C(b[7]), .Z(n160) );
  GTECH_NOT U107 ( .A(n129), .Z(n161) );
  GTECH_AOI21 U108 ( .A(n131), .B(a[6]), .C(n162), .Z(n129) );
  GTECH_OA21 U109 ( .A(a[6]), .B(n131), .C(b[6]), .Z(n162) );
  GTECH_AO21 U110 ( .A(n133), .B(a[5]), .C(n163), .Z(n131) );
  GTECH_OA21 U111 ( .A(a[5]), .B(n133), .C(b[5]), .Z(n163) );
  GTECH_AO21 U112 ( .A(n135), .B(a[4]), .C(n164), .Z(n133) );
  GTECH_OA21 U113 ( .A(a[4]), .B(n135), .C(b[4]), .Z(n164) );
  GTECH_NOT U114 ( .A(a[7]), .Z(n159) );
  GTECH_AO21 U115 ( .A(n136), .B(a[3]), .C(n165), .Z(n135) );
  GTECH_OA21 U116 ( .A(a[3]), .B(n136), .C(b[3]), .Z(n165) );
  GTECH_AO21 U117 ( .A(n137), .B(a[2]), .C(n166), .Z(n136) );
  GTECH_OA21 U118 ( .A(a[2]), .B(n137), .C(b[2]), .Z(n166) );
  GTECH_AO21 U119 ( .A(n138), .B(a[1]), .C(n167), .Z(n137) );
  GTECH_OA21 U120 ( .A(a[1]), .B(n138), .C(b[1]), .Z(n167) );
  GTECH_ADD_ABC U121 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n138) );
endmodule

