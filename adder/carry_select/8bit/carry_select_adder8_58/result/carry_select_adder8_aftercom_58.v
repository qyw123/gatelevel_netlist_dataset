
module carry_select_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197;

  GTECH_OAI2N2 U70 ( .A(n139), .B(n140), .C(n141), .D(n140), .Z(sum[7]) );
  GTECH_XOR2 U71 ( .A(n142), .B(n143), .Z(n141) );
  GTECH_XOR2 U72 ( .A(n144), .B(n143), .Z(n139) );
  GTECH_XOR2 U73 ( .A(a[7]), .B(b[7]), .Z(n143) );
  GTECH_AND_NOT U74 ( .A(n145), .B(n146), .Z(n144) );
  GTECH_AO21 U75 ( .A(n147), .B(n148), .C(n149), .Z(n145) );
  GTECH_NOT U76 ( .A(n150), .Z(sum[6]) );
  GTECH_AOI222 U77 ( .A(n146), .B(n151), .C(n152), .D(b[6]), .E(n153), .F(n147), .Z(n150) );
  GTECH_XOR2 U78 ( .A(n151), .B(a[6]), .Z(n153) );
  GTECH_NOR2 U79 ( .A(a[6]), .B(n151), .Z(n152) );
  GTECH_OAI21 U80 ( .A(n154), .B(n155), .C(n149), .Z(n151) );
  GTECH_OA21 U81 ( .A(n156), .B(n157), .C(n158), .Z(n149) );
  GTECH_OAI21 U82 ( .A(n159), .B(n160), .C(n161), .Z(sum[5]) );
  GTECH_OAI21 U83 ( .A(n156), .B(n162), .C(n159), .Z(n161) );
  GTECH_NOT U84 ( .A(n158), .Z(n162) );
  GTECH_XOR2 U85 ( .A(n163), .B(b[5]), .Z(n160) );
  GTECH_NOT U86 ( .A(a[5]), .Z(n163) );
  GTECH_OAI21 U87 ( .A(n164), .B(n155), .C(n157), .Z(n159) );
  GTECH_OAI21 U88 ( .A(n165), .B(n155), .C(n166), .Z(sum[4]) );
  GTECH_OAI2N2 U89 ( .A(cin), .B(n167), .C(cin), .D(n168), .Z(sum[3]) );
  GTECH_XOR2 U90 ( .A(n169), .B(n170), .Z(n168) );
  GTECH_XOR2 U91 ( .A(n171), .B(n170), .Z(n167) );
  GTECH_XOR2 U92 ( .A(a[3]), .B(b[3]), .Z(n170) );
  GTECH_AND_NOT U93 ( .A(n172), .B(n173), .Z(n171) );
  GTECH_AO21 U94 ( .A(n174), .B(n175), .C(n176), .Z(n172) );
  GTECH_OAI22 U95 ( .A(n177), .B(n178), .C(cin), .D(n179), .Z(sum[2]) );
  GTECH_AOI2N2 U96 ( .A(n176), .B(n180), .C(n181), .D(n176), .Z(n179) );
  GTECH_OAI22 U97 ( .A(b[1]), .B(a[1]), .C(n182), .D(n183), .Z(n176) );
  GTECH_AOI2N2 U98 ( .A(n184), .B(n180), .C(n181), .D(n184), .Z(n178) );
  GTECH_AOI21 U99 ( .A(n174), .B(n175), .C(n173), .Z(n181) );
  GTECH_XOR2 U100 ( .A(n175), .B(n174), .Z(n180) );
  GTECH_OAI2N2 U101 ( .A(n185), .B(n186), .C(n187), .D(n186), .Z(sum[1]) );
  GTECH_AO21 U102 ( .A(n188), .B(cin), .C(n183), .Z(n187) );
  GTECH_XOR2 U103 ( .A(n189), .B(b[1]), .Z(n186) );
  GTECH_OA21 U104 ( .A(cin), .B(n183), .C(n188), .Z(n185) );
  GTECH_AND2 U105 ( .A(b[0]), .B(a[0]), .Z(n183) );
  GTECH_XOR2 U106 ( .A(n177), .B(n190), .Z(sum[0]) );
  GTECH_OAI21 U107 ( .A(n191), .B(n155), .C(n166), .Z(cout) );
  GTECH_OR_NOT U108 ( .A(n140), .B(n165), .Z(n166) );
  GTECH_AND_NOT U109 ( .A(n157), .B(n164), .Z(n165) );
  GTECH_NAND2 U110 ( .A(a[4]), .B(b[4]), .Z(n157) );
  GTECH_NOT U111 ( .A(n140), .Z(n155) );
  GTECH_AOI2N2 U112 ( .A(n177), .B(n190), .C(n192), .D(n177), .Z(n140) );
  GTECH_OA21 U113 ( .A(a[3]), .B(n169), .C(n193), .Z(n192) );
  GTECH_AO21 U114 ( .A(n169), .B(a[3]), .C(b[3]), .Z(n193) );
  GTECH_OR_NOT U115 ( .A(n173), .B(n194), .Z(n169) );
  GTECH_AO21 U116 ( .A(n175), .B(n174), .C(n184), .Z(n194) );
  GTECH_OAI22 U117 ( .A(n182), .B(n188), .C(b[1]), .D(a[1]), .Z(n184) );
  GTECH_OR2 U118 ( .A(b[0]), .B(a[0]), .Z(n188) );
  GTECH_AND_NOT U119 ( .A(b[1]), .B(n189), .Z(n182) );
  GTECH_NOT U120 ( .A(a[1]), .Z(n189) );
  GTECH_NOT U121 ( .A(b[2]), .Z(n174) );
  GTECH_AND_NOT U122 ( .A(b[2]), .B(n175), .Z(n173) );
  GTECH_NOT U123 ( .A(a[2]), .Z(n175) );
  GTECH_XOR2 U124 ( .A(n195), .B(b[0]), .Z(n190) );
  GTECH_NOT U125 ( .A(a[0]), .Z(n195) );
  GTECH_NOT U126 ( .A(cin), .Z(n177) );
  GTECH_AOI21 U127 ( .A(n142), .B(a[7]), .C(n196), .Z(n191) );
  GTECH_OA21 U128 ( .A(a[7]), .B(n142), .C(b[7]), .Z(n196) );
  GTECH_OR_NOT U129 ( .A(n146), .B(n197), .Z(n142) );
  GTECH_AO21 U130 ( .A(n148), .B(n147), .C(n154), .Z(n197) );
  GTECH_OA21 U131 ( .A(n164), .B(n156), .C(n158), .Z(n154) );
  GTECH_NAND2 U132 ( .A(b[5]), .B(a[5]), .Z(n158) );
  GTECH_NOR2 U133 ( .A(a[5]), .B(b[5]), .Z(n156) );
  GTECH_NOR2 U134 ( .A(b[4]), .B(a[4]), .Z(n164) );
  GTECH_NOT U135 ( .A(b[6]), .Z(n147) );
  GTECH_NOT U136 ( .A(a[6]), .Z(n148) );
  GTECH_AND2 U137 ( .A(b[6]), .B(a[6]), .Z(n146) );
endmodule

