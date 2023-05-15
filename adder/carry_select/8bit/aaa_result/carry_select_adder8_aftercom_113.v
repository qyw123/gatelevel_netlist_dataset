
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
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185;

  GTECH_MUX2 U63 ( .A(n132), .B(n133), .S(n134), .Z(sum[7]) );
  GTECH_XNOR2 U64 ( .A(n135), .B(n136), .Z(n133) );
  GTECH_XNOR2 U65 ( .A(n135), .B(n137), .Z(n132) );
  GTECH_OA21 U66 ( .A(n138), .B(n139), .C(n140), .Z(n137) );
  GTECH_XNOR2 U67 ( .A(a[7]), .B(n141), .Z(n135) );
  GTECH_MUX2 U68 ( .A(n142), .B(n143), .S(n134), .Z(sum[6]) );
  GTECH_XOR2 U69 ( .A(n144), .B(n145), .Z(n143) );
  GTECH_XOR2 U70 ( .A(n139), .B(n145), .Z(n142) );
  GTECH_OR_NOT U71 ( .A(n138), .B(n140), .Z(n145) );
  GTECH_AOI21 U72 ( .A(n146), .B(n147), .C(n148), .Z(n139) );
  GTECH_MUX2 U73 ( .A(n149), .B(n150), .S(n151), .Z(sum[5]) );
  GTECH_AOI21 U74 ( .A(n152), .B(n134), .C(n147), .Z(n151) );
  GTECH_NOT U75 ( .A(n153), .Z(n147) );
  GTECH_XOR2 U76 ( .A(b[5]), .B(a[5]), .Z(n150) );
  GTECH_OR_NOT U77 ( .A(n148), .B(n146), .Z(n149) );
  GTECH_NAND2 U78 ( .A(n154), .B(n155), .Z(sum[4]) );
  GTECH_AO21 U79 ( .A(n152), .B(n153), .C(n156), .Z(n154) );
  GTECH_MUX2 U80 ( .A(n157), .B(n158), .S(cin), .Z(sum[3]) );
  GTECH_XOR2 U81 ( .A(n159), .B(n160), .Z(n158) );
  GTECH_XNOR2 U82 ( .A(n159), .B(n161), .Z(n157) );
  GTECH_AOI21 U83 ( .A(n162), .B(n163), .C(n164), .Z(n161) );
  GTECH_XOR2 U84 ( .A(a[3]), .B(b[3]), .Z(n159) );
  GTECH_MUX2 U85 ( .A(n165), .B(n166), .S(cin), .Z(sum[2]) );
  GTECH_XNOR2 U86 ( .A(n167), .B(n168), .Z(n166) );
  GTECH_XNOR2 U87 ( .A(n163), .B(n167), .Z(n165) );
  GTECH_OR_NOT U88 ( .A(n164), .B(n162), .Z(n167) );
  GTECH_OAI21 U89 ( .A(n169), .B(n170), .C(n171), .Z(n163) );
  GTECH_NOT U90 ( .A(n172), .Z(n170) );
  GTECH_MUX2 U91 ( .A(n173), .B(n174), .S(n175), .Z(sum[1]) );
  GTECH_AND_NOT U92 ( .A(n171), .B(n169), .Z(n175) );
  GTECH_OAI21 U93 ( .A(cin), .B(n172), .C(n176), .Z(n174) );
  GTECH_AO21 U94 ( .A(n176), .B(cin), .C(n172), .Z(n173) );
  GTECH_AND2 U95 ( .A(a[0]), .B(b[0]), .Z(n172) );
  GTECH_XOR2 U96 ( .A(cin), .B(n177), .Z(sum[0]) );
  GTECH_OAI21 U97 ( .A(n178), .B(n156), .C(n155), .Z(cout) );
  GTECH_NAND3 U98 ( .A(n152), .B(n153), .C(n156), .Z(n155) );
  GTECH_NAND2 U99 ( .A(a[4]), .B(b[4]), .Z(n153) );
  GTECH_NOT U100 ( .A(n134), .Z(n156) );
  GTECH_MUX2 U101 ( .A(n177), .B(n179), .S(cin), .Z(n134) );
  GTECH_OA21 U102 ( .A(a[3]), .B(n160), .C(n180), .Z(n179) );
  GTECH_AO21 U103 ( .A(n160), .B(a[3]), .C(b[3]), .Z(n180) );
  GTECH_AO21 U104 ( .A(n168), .B(n162), .C(n164), .Z(n160) );
  GTECH_AND2 U105 ( .A(a[2]), .B(b[2]), .Z(n164) );
  GTECH_OR2 U106 ( .A(a[2]), .B(b[2]), .Z(n162) );
  GTECH_OAI21 U107 ( .A(n181), .B(n169), .C(n171), .Z(n168) );
  GTECH_OR_NOT U108 ( .A(n182), .B(a[1]), .Z(n171) );
  GTECH_AND_NOT U109 ( .A(n182), .B(a[1]), .Z(n169) );
  GTECH_NOT U110 ( .A(b[1]), .Z(n182) );
  GTECH_NOT U111 ( .A(n176), .Z(n181) );
  GTECH_OR2 U112 ( .A(b[0]), .B(a[0]), .Z(n176) );
  GTECH_XOR2 U113 ( .A(a[0]), .B(b[0]), .Z(n177) );
  GTECH_OA21 U114 ( .A(n136), .B(n183), .C(n184), .Z(n178) );
  GTECH_AO21 U115 ( .A(n183), .B(n136), .C(n141), .Z(n184) );
  GTECH_NOT U116 ( .A(b[7]), .Z(n141) );
  GTECH_NOT U117 ( .A(a[7]), .Z(n183) );
  GTECH_OA21 U118 ( .A(n138), .B(n144), .C(n140), .Z(n136) );
  GTECH_OR_NOT U119 ( .A(n185), .B(a[6]), .Z(n140) );
  GTECH_AOI21 U120 ( .A(n146), .B(n152), .C(n148), .Z(n144) );
  GTECH_AND2 U121 ( .A(a[5]), .B(b[5]), .Z(n148) );
  GTECH_OR2 U122 ( .A(b[4]), .B(a[4]), .Z(n152) );
  GTECH_OR2 U123 ( .A(a[5]), .B(b[5]), .Z(n146) );
  GTECH_AND_NOT U124 ( .A(n185), .B(a[6]), .Z(n138) );
  GTECH_NOT U125 ( .A(b[6]), .Z(n185) );
endmodule

