
module carry_select_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191;

  GTECH_OAI22 U69 ( .A(n138), .B(n139), .C(n140), .D(n141), .Z(sum[7]) );
  GTECH_XNOR2 U70 ( .A(n142), .B(n143), .Z(n140) );
  GTECH_XOR2 U71 ( .A(n144), .B(n143), .Z(n138) );
  GTECH_XOR2 U72 ( .A(a[7]), .B(b[7]), .Z(n143) );
  GTECH_OA21 U73 ( .A(n145), .B(n146), .C(n147), .Z(n144) );
  GTECH_NOT U74 ( .A(n148), .Z(n145) );
  GTECH_OAI22 U75 ( .A(n141), .B(n149), .C(n139), .D(n150), .Z(sum[6]) );
  GTECH_XOR2 U76 ( .A(n146), .B(n151), .Z(n150) );
  GTECH_AO21 U77 ( .A(n152), .B(n153), .C(n154), .Z(n146) );
  GTECH_XNOR2 U78 ( .A(n155), .B(n151), .Z(n149) );
  GTECH_AND2 U79 ( .A(n147), .B(n148), .Z(n151) );
  GTECH_OAI22 U80 ( .A(n139), .B(n156), .C(n157), .D(n141), .Z(sum[5]) );
  GTECH_XOR2 U81 ( .A(n158), .B(n159), .Z(n157) );
  GTECH_XOR2 U82 ( .A(n152), .B(n159), .Z(n156) );
  GTECH_OA21 U83 ( .A(b[5]), .B(a[5]), .C(n153), .Z(n159) );
  GTECH_OR_NOT U84 ( .A(n160), .B(n161), .Z(sum[4]) );
  GTECH_AO21 U85 ( .A(n162), .B(n152), .C(n141), .Z(n161) );
  GTECH_OAI22 U86 ( .A(n163), .B(n164), .C(cin), .D(n165), .Z(sum[3]) );
  GTECH_XOR2 U87 ( .A(n166), .B(n167), .Z(n165) );
  GTECH_OA21 U88 ( .A(n168), .B(n169), .C(n170), .Z(n166) );
  GTECH_NOT U89 ( .A(n171), .Z(n168) );
  GTECH_XNOR2 U90 ( .A(n172), .B(n167), .Z(n164) );
  GTECH_XOR2 U91 ( .A(a[3]), .B(b[3]), .Z(n167) );
  GTECH_OAI22 U92 ( .A(n163), .B(n173), .C(cin), .D(n174), .Z(sum[2]) );
  GTECH_XOR2 U93 ( .A(n169), .B(n175), .Z(n174) );
  GTECH_AO21 U94 ( .A(n176), .B(n177), .C(n178), .Z(n169) );
  GTECH_XNOR2 U95 ( .A(n179), .B(n175), .Z(n173) );
  GTECH_AND2 U96 ( .A(n170), .B(n171), .Z(n175) );
  GTECH_OAI2N2 U97 ( .A(n180), .B(n181), .C(n182), .D(n180), .Z(sum[1]) );
  GTECH_AO21 U98 ( .A(n163), .B(n176), .C(n183), .Z(n182) );
  GTECH_OA21 U99 ( .A(n183), .B(n163), .C(n176), .Z(n181) );
  GTECH_NAND2 U100 ( .A(a[0]), .B(b[0]), .Z(n176) );
  GTECH_OA21 U101 ( .A(b[1]), .B(a[1]), .C(n177), .Z(n180) );
  GTECH_XOR2 U102 ( .A(cin), .B(n184), .Z(sum[0]) );
  GTECH_AO21 U103 ( .A(n139), .B(n185), .C(n160), .Z(cout) );
  GTECH_AND3 U104 ( .A(n152), .B(n162), .C(n141), .Z(n160) );
  GTECH_NOT U105 ( .A(n139), .Z(n141) );
  GTECH_NAND2 U106 ( .A(b[4]), .B(a[4]), .Z(n152) );
  GTECH_AO22 U107 ( .A(n186), .B(b[7]), .C(n142), .D(a[7]), .Z(n185) );
  GTECH_NOT U108 ( .A(n187), .Z(n186) );
  GTECH_NOR2 U109 ( .A(n142), .B(a[7]), .Z(n187) );
  GTECH_AO21 U110 ( .A(n155), .B(n148), .C(n188), .Z(n142) );
  GTECH_NOT U111 ( .A(n147), .Z(n188) );
  GTECH_NAND2 U112 ( .A(b[6]), .B(a[6]), .Z(n147) );
  GTECH_OR2 U113 ( .A(a[6]), .B(b[6]), .Z(n148) );
  GTECH_AOI21 U114 ( .A(n158), .B(n153), .C(n154), .Z(n155) );
  GTECH_NOR2 U115 ( .A(b[5]), .B(a[5]), .Z(n154) );
  GTECH_NAND2 U116 ( .A(a[5]), .B(b[5]), .Z(n153) );
  GTECH_NOT U117 ( .A(n162), .Z(n158) );
  GTECH_OR2 U118 ( .A(b[4]), .B(a[4]), .Z(n162) );
  GTECH_OAI2N2 U119 ( .A(n189), .B(n163), .C(n163), .D(n184), .Z(n139) );
  GTECH_XOR2 U120 ( .A(a[0]), .B(b[0]), .Z(n184) );
  GTECH_NOT U121 ( .A(cin), .Z(n163) );
  GTECH_AOI21 U122 ( .A(n172), .B(a[3]), .C(n190), .Z(n189) );
  GTECH_OA21 U123 ( .A(n172), .B(a[3]), .C(b[3]), .Z(n190) );
  GTECH_AO21 U124 ( .A(n179), .B(n171), .C(n191), .Z(n172) );
  GTECH_NOT U125 ( .A(n170), .Z(n191) );
  GTECH_NAND2 U126 ( .A(b[2]), .B(a[2]), .Z(n170) );
  GTECH_OR2 U127 ( .A(a[2]), .B(b[2]), .Z(n171) );
  GTECH_AOI21 U128 ( .A(n183), .B(n177), .C(n178), .Z(n179) );
  GTECH_NOR2 U129 ( .A(a[1]), .B(b[1]), .Z(n178) );
  GTECH_NAND2 U130 ( .A(b[1]), .B(a[1]), .Z(n177) );
  GTECH_NOR2 U131 ( .A(b[0]), .B(a[0]), .Z(n183) );
endmodule

