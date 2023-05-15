
module carry_select_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182;

  GTECH_MUX2 U63 ( .A(n132), .B(n133), .S(n134), .Z(sum[7]) );
  GTECH_XOR2 U64 ( .A(n135), .B(n136), .Z(n133) );
  GTECH_XOR2 U65 ( .A(n135), .B(n137), .Z(n132) );
  GTECH_AND2 U66 ( .A(n138), .B(n139), .Z(n137) );
  GTECH_OAI21 U67 ( .A(b[6]), .B(a[6]), .C(n140), .Z(n138) );
  GTECH_XNOR2 U68 ( .A(a[7]), .B(b[7]), .Z(n135) );
  GTECH_MUX2 U69 ( .A(n141), .B(n142), .S(n134), .Z(sum[6]) );
  GTECH_XOR2 U70 ( .A(n143), .B(n144), .Z(n142) );
  GTECH_XOR2 U71 ( .A(n143), .B(n140), .Z(n141) );
  GTECH_AO21 U72 ( .A(n145), .B(n146), .C(n147), .Z(n140) );
  GTECH_OA21 U73 ( .A(b[6]), .B(a[6]), .C(n139), .Z(n143) );
  GTECH_MUX2 U74 ( .A(n148), .B(n149), .S(n134), .Z(sum[5]) );
  GTECH_XOR2 U75 ( .A(n150), .B(n151), .Z(n149) );
  GTECH_XOR2 U76 ( .A(n146), .B(n150), .Z(n148) );
  GTECH_AND_NOT U77 ( .A(n145), .B(n147), .Z(n150) );
  GTECH_NAND2 U78 ( .A(n152), .B(n153), .Z(sum[4]) );
  GTECH_OAI21 U79 ( .A(n146), .B(n154), .C(n134), .Z(n152) );
  GTECH_MUX2 U80 ( .A(n155), .B(n156), .S(cin), .Z(sum[3]) );
  GTECH_XOR2 U81 ( .A(n157), .B(n158), .Z(n156) );
  GTECH_XOR2 U82 ( .A(n157), .B(n159), .Z(n155) );
  GTECH_AO21 U83 ( .A(n160), .B(n161), .C(n162), .Z(n159) );
  GTECH_XOR2 U84 ( .A(a[3]), .B(b[3]), .Z(n157) );
  GTECH_MUX2 U85 ( .A(n163), .B(n164), .S(cin), .Z(sum[2]) );
  GTECH_XOR2 U86 ( .A(n165), .B(n166), .Z(n164) );
  GTECH_XOR2 U87 ( .A(n165), .B(n161), .Z(n163) );
  GTECH_AO21 U88 ( .A(n167), .B(n168), .C(n169), .Z(n161) );
  GTECH_AND_NOT U89 ( .A(n160), .B(n162), .Z(n165) );
  GTECH_MUX2 U90 ( .A(n170), .B(n171), .S(n172), .Z(sum[1]) );
  GTECH_AND_NOT U91 ( .A(n167), .B(n169), .Z(n172) );
  GTECH_OAI21 U92 ( .A(cin), .B(n168), .C(n173), .Z(n171) );
  GTECH_AO21 U93 ( .A(n173), .B(cin), .C(n168), .Z(n170) );
  GTECH_XOR2 U94 ( .A(cin), .B(n174), .Z(sum[0]) );
  GTECH_OAI21 U95 ( .A(n175), .B(n176), .C(n153), .Z(cout) );
  GTECH_OR3 U96 ( .A(n154), .B(n146), .C(n134), .Z(n153) );
  GTECH_AND2 U97 ( .A(a[4]), .B(b[4]), .Z(n146) );
  GTECH_NOT U98 ( .A(n151), .Z(n154) );
  GTECH_NOT U99 ( .A(n134), .Z(n176) );
  GTECH_MUX2 U100 ( .A(n174), .B(n177), .S(cin), .Z(n134) );
  GTECH_OA21 U101 ( .A(a[3]), .B(n158), .C(n178), .Z(n177) );
  GTECH_AO21 U102 ( .A(n158), .B(a[3]), .C(b[3]), .Z(n178) );
  GTECH_AO21 U103 ( .A(n160), .B(n166), .C(n162), .Z(n158) );
  GTECH_AND2 U104 ( .A(a[2]), .B(b[2]), .Z(n162) );
  GTECH_AO21 U105 ( .A(n173), .B(n167), .C(n169), .Z(n166) );
  GTECH_AND2 U106 ( .A(b[1]), .B(a[1]), .Z(n169) );
  GTECH_OR2 U107 ( .A(b[1]), .B(a[1]), .Z(n167) );
  GTECH_OR2 U108 ( .A(b[2]), .B(a[2]), .Z(n160) );
  GTECH_AND_NOT U109 ( .A(n173), .B(n168), .Z(n174) );
  GTECH_AND2 U110 ( .A(b[0]), .B(a[0]), .Z(n168) );
  GTECH_OR2 U111 ( .A(a[0]), .B(b[0]), .Z(n173) );
  GTECH_OA21 U112 ( .A(n136), .B(n179), .C(n180), .Z(n175) );
  GTECH_OAI21 U113 ( .A(a[7]), .B(n181), .C(b[7]), .Z(n180) );
  GTECH_NOT U114 ( .A(a[7]), .Z(n179) );
  GTECH_NOT U115 ( .A(n181), .Z(n136) );
  GTECH_NAND2 U116 ( .A(n182), .B(n139), .Z(n181) );
  GTECH_NAND2 U117 ( .A(b[6]), .B(a[6]), .Z(n139) );
  GTECH_OAI21 U118 ( .A(a[6]), .B(b[6]), .C(n144), .Z(n182) );
  GTECH_AO21 U119 ( .A(n145), .B(n151), .C(n147), .Z(n144) );
  GTECH_AND2 U120 ( .A(a[5]), .B(b[5]), .Z(n147) );
  GTECH_OR2 U121 ( .A(b[4]), .B(a[4]), .Z(n151) );
  GTECH_OR2 U122 ( .A(b[5]), .B(a[5]), .Z(n145) );
endmodule

