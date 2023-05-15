
module carry_bypass_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182;

  GTECH_XOR2 U69 ( .A(n132), .B(n133), .Z(sum[9]) );
  GTECH_XOR2 U70 ( .A(n134), .B(n135), .Z(sum[8]) );
  GTECH_XOR2 U71 ( .A(n136), .B(n137), .Z(sum[7]) );
  GTECH_XOR2 U72 ( .A(n138), .B(n139), .Z(sum[6]) );
  GTECH_XOR2 U73 ( .A(n140), .B(n141), .Z(sum[5]) );
  GTECH_XOR2 U74 ( .A(n142), .B(n143), .Z(sum[4]) );
  GTECH_XNOR3 U75 ( .A(n144), .B(a[3]), .C(n145), .Z(sum[3]) );
  GTECH_NOT U76 ( .A(b[3]), .Z(n144) );
  GTECH_XNOR3 U77 ( .A(n146), .B(a[2]), .C(n147), .Z(sum[2]) );
  GTECH_NOT U78 ( .A(b[2]), .Z(n146) );
  GTECH_NOT U79 ( .A(n148), .Z(sum[1]) );
  GTECH_XNOR3 U80 ( .A(b[1]), .B(a[1]), .C(n149), .Z(n148) );
  GTECH_XNOR3 U81 ( .A(n150), .B(a[15]), .C(n151), .Z(sum[15]) );
  GTECH_NOT U82 ( .A(b[15]), .Z(n150) );
  GTECH_XNOR3 U83 ( .A(n152), .B(a[14]), .C(n153), .Z(sum[14]) );
  GTECH_NOT U84 ( .A(b[14]), .Z(n152) );
  GTECH_XNOR3 U85 ( .A(n154), .B(a[13]), .C(n155), .Z(sum[13]) );
  GTECH_NOT U86 ( .A(b[13]), .Z(n154) );
  GTECH_XNOR3 U87 ( .A(n156), .B(a[12]), .C(n157), .Z(sum[12]) );
  GTECH_NOT U88 ( .A(b[12]), .Z(n156) );
  GTECH_XOR2 U89 ( .A(n158), .B(n159), .Z(sum[11]) );
  GTECH_XOR2 U90 ( .A(n160), .B(n161), .Z(sum[10]) );
  GTECH_XNOR3 U91 ( .A(n162), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_NOT U92 ( .A(cin), .Z(n162) );
  GTECH_AO21 U93 ( .A(n151), .B(a[15]), .C(n163), .Z(cout) );
  GTECH_OA21 U94 ( .A(a[15]), .B(n151), .C(b[15]), .Z(n163) );
  GTECH_AO21 U95 ( .A(n153), .B(a[14]), .C(n164), .Z(n151) );
  GTECH_OA21 U96 ( .A(a[14]), .B(n153), .C(b[14]), .Z(n164) );
  GTECH_AO21 U97 ( .A(n155), .B(a[13]), .C(n165), .Z(n153) );
  GTECH_OA21 U98 ( .A(a[13]), .B(n155), .C(b[13]), .Z(n165) );
  GTECH_AO21 U99 ( .A(n157), .B(a[12]), .C(n166), .Z(n155) );
  GTECH_OA21 U100 ( .A(a[12]), .B(n157), .C(b[12]), .Z(n166) );
  GTECH_MUX2 U101 ( .A(n167), .B(n134), .S(n168), .Z(n157) );
  GTECH_AND4 U102 ( .A(n160), .B(n158), .C(n135), .D(n132), .Z(n168) );
  GTECH_XOR2 U103 ( .A(a[9]), .B(b[9]), .Z(n132) );
  GTECH_XOR2 U104 ( .A(a[8]), .B(b[8]), .Z(n135) );
  GTECH_XOR2 U105 ( .A(a[11]), .B(b[11]), .Z(n158) );
  GTECH_XOR2 U106 ( .A(a[10]), .B(b[10]), .Z(n160) );
  GTECH_OA21 U107 ( .A(a[11]), .B(n159), .C(n169), .Z(n167) );
  GTECH_AO21 U108 ( .A(n159), .B(a[11]), .C(b[11]), .Z(n169) );
  GTECH_AO21 U109 ( .A(n161), .B(a[10]), .C(n170), .Z(n159) );
  GTECH_OA21 U110 ( .A(a[10]), .B(n161), .C(b[10]), .Z(n170) );
  GTECH_AO21 U111 ( .A(n133), .B(a[9]), .C(n171), .Z(n161) );
  GTECH_OA21 U112 ( .A(a[9]), .B(n133), .C(b[9]), .Z(n171) );
  GTECH_AO21 U113 ( .A(n134), .B(a[8]), .C(n172), .Z(n133) );
  GTECH_OA21 U114 ( .A(a[8]), .B(n134), .C(b[8]), .Z(n172) );
  GTECH_MUX2 U115 ( .A(n173), .B(n143), .S(n174), .Z(n134) );
  GTECH_AND4 U116 ( .A(n142), .B(n140), .C(n138), .D(n136), .Z(n174) );
  GTECH_XOR2 U117 ( .A(a[7]), .B(b[7]), .Z(n136) );
  GTECH_XOR2 U118 ( .A(a[6]), .B(b[6]), .Z(n138) );
  GTECH_XOR2 U119 ( .A(a[5]), .B(b[5]), .Z(n140) );
  GTECH_XOR2 U120 ( .A(a[4]), .B(b[4]), .Z(n142) );
  GTECH_OA21 U121 ( .A(a[7]), .B(n137), .C(n175), .Z(n173) );
  GTECH_AO21 U122 ( .A(n137), .B(a[7]), .C(b[7]), .Z(n175) );
  GTECH_AO21 U123 ( .A(n139), .B(a[6]), .C(n176), .Z(n137) );
  GTECH_OA21 U124 ( .A(a[6]), .B(n139), .C(b[6]), .Z(n176) );
  GTECH_AO21 U125 ( .A(n141), .B(a[5]), .C(n177), .Z(n139) );
  GTECH_OA21 U126 ( .A(a[5]), .B(n141), .C(b[5]), .Z(n177) );
  GTECH_AO21 U127 ( .A(n143), .B(a[4]), .C(n178), .Z(n141) );
  GTECH_OA21 U128 ( .A(a[4]), .B(n143), .C(b[4]), .Z(n178) );
  GTECH_AO21 U129 ( .A(n145), .B(a[3]), .C(n179), .Z(n143) );
  GTECH_OA21 U130 ( .A(a[3]), .B(n145), .C(b[3]), .Z(n179) );
  GTECH_AO21 U131 ( .A(n147), .B(a[2]), .C(n180), .Z(n145) );
  GTECH_OA21 U132 ( .A(a[2]), .B(n147), .C(b[2]), .Z(n180) );
  GTECH_AO21 U133 ( .A(n149), .B(a[1]), .C(n181), .Z(n147) );
  GTECH_OA21 U134 ( .A(a[1]), .B(n149), .C(b[1]), .Z(n181) );
  GTECH_AO21 U135 ( .A(a[0]), .B(b[0]), .C(n182), .Z(n149) );
  GTECH_OA21 U136 ( .A(a[0]), .B(b[0]), .C(cin), .Z(n182) );
endmodule

