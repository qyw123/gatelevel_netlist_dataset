
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
  GTECH_XOR2 U64 ( .A(n135), .B(n136), .Z(n133) );
  GTECH_AOI22 U65 ( .A(n137), .B(n138), .C(a[6]), .D(b[6]), .Z(n136) );
  GTECH_XOR2 U66 ( .A(n135), .B(n139), .Z(n132) );
  GTECH_XOR2 U67 ( .A(n140), .B(b[7]), .Z(n135) );
  GTECH_NOT U68 ( .A(n141), .Z(sum[6]) );
  GTECH_MUX2 U69 ( .A(n142), .B(n143), .S(n134), .Z(n141) );
  GTECH_XOR2 U70 ( .A(n138), .B(n144), .Z(n143) );
  GTECH_OAI21 U71 ( .A(n145), .B(n146), .C(n147), .Z(n138) );
  GTECH_NOT U72 ( .A(n148), .Z(n146) );
  GTECH_XOR2 U73 ( .A(n149), .B(n144), .Z(n142) );
  GTECH_OAI21 U74 ( .A(n150), .B(n151), .C(n137), .Z(n144) );
  GTECH_MUX2 U75 ( .A(n152), .B(n153), .S(n154), .Z(sum[5]) );
  GTECH_AOI21 U76 ( .A(n155), .B(n156), .C(n148), .Z(n154) );
  GTECH_XOR2 U77 ( .A(b[5]), .B(a[5]), .Z(n153) );
  GTECH_OR_NOT U78 ( .A(n145), .B(n147), .Z(n152) );
  GTECH_AO21 U79 ( .A(n157), .B(n155), .C(n158), .Z(sum[4]) );
  GTECH_MUX2 U80 ( .A(n159), .B(n160), .S(cin), .Z(sum[3]) );
  GTECH_XOR2 U81 ( .A(n161), .B(n162), .Z(n160) );
  GTECH_NOT U82 ( .A(n163), .Z(n159) );
  GTECH_XOR2 U83 ( .A(n161), .B(n164), .Z(n163) );
  GTECH_AOI21 U84 ( .A(n165), .B(n166), .C(n167), .Z(n164) );
  GTECH_XOR2 U85 ( .A(a[3]), .B(b[3]), .Z(n161) );
  GTECH_MUX2 U86 ( .A(n168), .B(n169), .S(cin), .Z(sum[2]) );
  GTECH_XOR2 U87 ( .A(n170), .B(n171), .Z(n169) );
  GTECH_XOR2 U88 ( .A(n170), .B(n165), .Z(n168) );
  GTECH_AO22 U89 ( .A(n172), .B(n173), .C(a[1]), .D(b[1]), .Z(n165) );
  GTECH_AND_NOT U90 ( .A(n166), .B(n167), .Z(n170) );
  GTECH_MUX2 U91 ( .A(n174), .B(n175), .S(n176), .Z(sum[1]) );
  GTECH_XOR2 U92 ( .A(b[1]), .B(a[1]), .Z(n176) );
  GTECH_OAI21 U93 ( .A(cin), .B(n173), .C(n177), .Z(n175) );
  GTECH_AO21 U94 ( .A(n177), .B(cin), .C(n173), .Z(n174) );
  GTECH_AND2 U95 ( .A(b[0]), .B(a[0]), .Z(n173) );
  GTECH_NOT U96 ( .A(n178), .Z(sum[0]) );
  GTECH_XOR2 U97 ( .A(cin), .B(n179), .Z(n178) );
  GTECH_AO21 U98 ( .A(n180), .B(n155), .C(n158), .Z(cout) );
  GTECH_NOR2 U99 ( .A(n155), .B(n157), .Z(n158) );
  GTECH_OR_NOT U100 ( .A(n148), .B(n156), .Z(n157) );
  GTECH_NOT U101 ( .A(n181), .Z(n156) );
  GTECH_AND2 U102 ( .A(a[4]), .B(b[4]), .Z(n148) );
  GTECH_NOT U103 ( .A(n134), .Z(n155) );
  GTECH_MUX2 U104 ( .A(n179), .B(n182), .S(cin), .Z(n134) );
  GTECH_AOI22 U105 ( .A(n162), .B(a[3]), .C(n183), .D(b[3]), .Z(n182) );
  GTECH_OR2 U106 ( .A(a[3]), .B(n162), .Z(n183) );
  GTECH_AO21 U107 ( .A(n171), .B(n166), .C(n167), .Z(n162) );
  GTECH_AND2 U108 ( .A(b[2]), .B(a[2]), .Z(n167) );
  GTECH_OR2 U109 ( .A(a[2]), .B(b[2]), .Z(n166) );
  GTECH_AO22 U110 ( .A(a[1]), .B(b[1]), .C(n177), .D(n172), .Z(n171) );
  GTECH_OR2 U111 ( .A(a[1]), .B(b[1]), .Z(n172) );
  GTECH_OR2 U112 ( .A(b[0]), .B(a[0]), .Z(n177) );
  GTECH_XOR2 U113 ( .A(n184), .B(b[0]), .Z(n179) );
  GTECH_NOT U114 ( .A(a[0]), .Z(n184) );
  GTECH_OAI2N2 U115 ( .A(n139), .B(n140), .C(n185), .D(b[7]), .Z(n180) );
  GTECH_NAND2 U116 ( .A(n140), .B(n139), .Z(n185) );
  GTECH_NOT U117 ( .A(a[7]), .Z(n140) );
  GTECH_AOI22 U118 ( .A(n137), .B(n149), .C(a[6]), .D(b[6]), .Z(n139) );
  GTECH_OAI21 U119 ( .A(n181), .B(n145), .C(n147), .Z(n149) );
  GTECH_NAND2 U120 ( .A(a[5]), .B(b[5]), .Z(n147) );
  GTECH_NOR2 U121 ( .A(b[5]), .B(a[5]), .Z(n145) );
  GTECH_NOR2 U122 ( .A(b[4]), .B(a[4]), .Z(n181) );
  GTECH_NAND2 U123 ( .A(n151), .B(n150), .Z(n137) );
  GTECH_NOT U124 ( .A(a[6]), .Z(n150) );
  GTECH_NOT U125 ( .A(b[6]), .Z(n151) );
endmodule

