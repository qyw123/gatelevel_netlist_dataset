
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
         n176, n177, n178, n179, n180, n181, n182, n183;

  GTECH_MUX2 U63 ( .A(n132), .B(n133), .S(n134), .Z(sum[7]) );
  GTECH_XNOR2 U64 ( .A(n135), .B(n136), .Z(n133) );
  GTECH_OA21 U65 ( .A(n137), .B(n138), .C(n139), .Z(n136) );
  GTECH_NOR2 U66 ( .A(a[6]), .B(b[6]), .Z(n137) );
  GTECH_XOR2 U67 ( .A(n135), .B(n140), .Z(n132) );
  GTECH_XOR2 U68 ( .A(a[7]), .B(b[7]), .Z(n135) );
  GTECH_MUX2 U69 ( .A(n141), .B(n142), .S(n134), .Z(sum[6]) );
  GTECH_XOR2 U70 ( .A(n143), .B(n138), .Z(n142) );
  GTECH_ADD_AB U71 ( .A(n144), .B(n145), .COUT(n138) );
  GTECH_OAI21 U72 ( .A(b[5]), .B(a[5]), .C(n146), .Z(n144) );
  GTECH_XNOR2 U73 ( .A(n143), .B(n147), .Z(n141) );
  GTECH_OAI21 U74 ( .A(b[6]), .B(a[6]), .C(n139), .Z(n143) );
  GTECH_MUX2 U75 ( .A(n148), .B(n149), .S(n134), .Z(sum[5]) );
  GTECH_XOR2 U76 ( .A(n150), .B(n151), .Z(n149) );
  GTECH_XNOR2 U77 ( .A(n151), .B(n152), .Z(n148) );
  GTECH_OAI21 U78 ( .A(b[5]), .B(a[5]), .C(n145), .Z(n151) );
  GTECH_OR_NOT U79 ( .A(n153), .B(n154), .Z(sum[4]) );
  GTECH_AOI21 U80 ( .A(n150), .B(n152), .C(n134), .Z(n153) );
  GTECH_MUX2 U81 ( .A(n155), .B(n156), .S(cin), .Z(sum[3]) );
  GTECH_XNOR2 U82 ( .A(n157), .B(n158), .Z(n156) );
  GTECH_XOR2 U83 ( .A(n157), .B(n159), .Z(n155) );
  GTECH_OA21 U84 ( .A(n160), .B(n161), .C(n162), .Z(n159) );
  GTECH_NOR2 U85 ( .A(b[2]), .B(a[2]), .Z(n160) );
  GTECH_XNOR2 U86 ( .A(a[3]), .B(b[3]), .Z(n157) );
  GTECH_MUX2 U87 ( .A(n163), .B(n164), .S(cin), .Z(sum[2]) );
  GTECH_XNOR2 U88 ( .A(n165), .B(n166), .Z(n164) );
  GTECH_XOR2 U89 ( .A(n165), .B(n161), .Z(n163) );
  GTECH_OA21 U90 ( .A(n167), .B(n168), .C(n169), .Z(n161) );
  GTECH_OAI21 U91 ( .A(b[2]), .B(a[2]), .C(n162), .Z(n165) );
  GTECH_MUX2 U92 ( .A(n170), .B(n171), .S(n172), .Z(sum[1]) );
  GTECH_AND_NOT U93 ( .A(n169), .B(n167), .Z(n172) );
  GTECH_NOT U94 ( .A(n173), .Z(n171) );
  GTECH_AOI21 U95 ( .A(n174), .B(n168), .C(n175), .Z(n173) );
  GTECH_OAI21 U96 ( .A(n175), .B(n174), .C(n168), .Z(n170) );
  GTECH_NOT U97 ( .A(cin), .Z(n174) );
  GTECH_XNOR2 U98 ( .A(cin), .B(n176), .Z(sum[0]) );
  GTECH_OAI21 U99 ( .A(n177), .B(n134), .C(n154), .Z(cout) );
  GTECH_NAND3 U100 ( .A(n150), .B(n152), .C(n134), .Z(n154) );
  GTECH_NOT U101 ( .A(n146), .Z(n150) );
  GTECH_ADD_AB U102 ( .A(a[4]), .B(b[4]), .COUT(n146) );
  GTECH_MUX2 U103 ( .A(n176), .B(n178), .S(cin), .Z(n134) );
  GTECH_AOI21 U104 ( .A(n158), .B(a[3]), .C(n179), .Z(n178) );
  GTECH_OA21 U105 ( .A(a[3]), .B(n158), .C(b[3]), .Z(n179) );
  GTECH_NAND2 U106 ( .A(n180), .B(n162), .Z(n158) );
  GTECH_NAND2 U107 ( .A(a[2]), .B(b[2]), .Z(n162) );
  GTECH_OAI21 U108 ( .A(a[2]), .B(b[2]), .C(n166), .Z(n180) );
  GTECH_OAI21 U109 ( .A(n167), .B(n175), .C(n169), .Z(n166) );
  GTECH_NAND2 U110 ( .A(a[1]), .B(b[1]), .Z(n169) );
  GTECH_NOR2 U111 ( .A(b[1]), .B(a[1]), .Z(n167) );
  GTECH_OR_NOT U112 ( .A(n175), .B(n168), .Z(n176) );
  GTECH_NAND2 U113 ( .A(b[0]), .B(a[0]), .Z(n168) );
  GTECH_NOR2 U114 ( .A(b[0]), .B(a[0]), .Z(n175) );
  GTECH_AOI21 U115 ( .A(n140), .B(a[7]), .C(n181), .Z(n177) );
  GTECH_OA21 U116 ( .A(a[7]), .B(n140), .C(b[7]), .Z(n181) );
  GTECH_NAND2 U117 ( .A(n182), .B(n139), .Z(n140) );
  GTECH_NAND2 U118 ( .A(a[6]), .B(b[6]), .Z(n139) );
  GTECH_OAI21 U119 ( .A(a[6]), .B(b[6]), .C(n147), .Z(n182) );
  GTECH_NAND2 U120 ( .A(n183), .B(n145), .Z(n147) );
  GTECH_NAND2 U121 ( .A(a[5]), .B(b[5]), .Z(n145) );
  GTECH_OAI21 U122 ( .A(a[5]), .B(b[5]), .C(n152), .Z(n183) );
  GTECH_OR2 U123 ( .A(b[4]), .B(a[4]), .Z(n152) );
endmodule

