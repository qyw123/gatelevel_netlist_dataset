
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
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197;

  GTECH_MUX2 U69 ( .A(n138), .B(n139), .S(n140), .Z(sum[7]) );
  GTECH_XOR2 U70 ( .A(n141), .B(n142), .Z(n139) );
  GTECH_NOT U71 ( .A(n143), .Z(n142) );
  GTECH_XOR2 U72 ( .A(n141), .B(n144), .Z(n138) );
  GTECH_ADD_AB U73 ( .A(n145), .B(n146), .COUT(n144) );
  GTECH_OAI22 U74 ( .A(n147), .B(n148), .C(b[6]), .D(a[6]), .Z(n146) );
  GTECH_XNOR2 U75 ( .A(a[7]), .B(b[7]), .Z(n141) );
  GTECH_OAI21 U76 ( .A(n149), .B(n145), .C(n150), .Z(sum[6]) );
  GTECH_MUX2 U77 ( .A(n151), .B(n152), .S(b[6]), .Z(n150) );
  GTECH_OR_NOT U78 ( .A(a[6]), .B(n149), .Z(n152) );
  GTECH_XOR2 U79 ( .A(a[6]), .B(n149), .Z(n151) );
  GTECH_OA21 U80 ( .A(n153), .B(n154), .C(n155), .Z(n149) );
  GTECH_AND_NOT U81 ( .A(n156), .B(n148), .Z(n155) );
  GTECH_NOR2 U82 ( .A(n157), .B(n158), .Z(n148) );
  GTECH_NOT U83 ( .A(n140), .Z(n154) );
  GTECH_MUX2 U84 ( .A(n159), .B(n160), .S(n140), .Z(sum[5]) );
  GTECH_XNOR2 U85 ( .A(n161), .B(n162), .Z(n160) );
  GTECH_XOR2 U86 ( .A(n163), .B(n162), .Z(n159) );
  GTECH_AND_NOT U87 ( .A(n156), .B(n158), .Z(n162) );
  GTECH_XNOR2 U88 ( .A(n140), .B(n164), .Z(sum[4]) );
  GTECH_MUX2 U89 ( .A(n165), .B(n166), .S(n167), .Z(sum[3]) );
  GTECH_XNOR2 U90 ( .A(n168), .B(n169), .Z(n166) );
  GTECH_OA21 U91 ( .A(n170), .B(n171), .C(n172), .Z(n169) );
  GTECH_XOR2 U92 ( .A(n168), .B(n173), .Z(n165) );
  GTECH_XOR2 U93 ( .A(a[3]), .B(b[3]), .Z(n168) );
  GTECH_MUX2 U94 ( .A(n174), .B(n175), .S(cin), .Z(sum[2]) );
  GTECH_MUX2 U95 ( .A(n176), .B(n177), .S(n178), .Z(n175) );
  GTECH_MUX2 U96 ( .A(n176), .B(n177), .S(n171), .Z(n174) );
  GTECH_AOI21 U97 ( .A(n179), .B(n180), .C(n181), .Z(n171) );
  GTECH_XOR2 U98 ( .A(n182), .B(n183), .Z(n177) );
  GTECH_OAI21 U99 ( .A(b[2]), .B(a[2]), .C(n172), .Z(n176) );
  GTECH_MUX2 U100 ( .A(n184), .B(n185), .S(n186), .Z(sum[1]) );
  GTECH_AND_NOT U101 ( .A(n179), .B(n181), .Z(n186) );
  GTECH_OAI21 U102 ( .A(cin), .B(n180), .C(n187), .Z(n185) );
  GTECH_AO21 U103 ( .A(n187), .B(cin), .C(n180), .Z(n184) );
  GTECH_XNOR2 U104 ( .A(n167), .B(n188), .Z(sum[0]) );
  GTECH_NOT U105 ( .A(n189), .Z(cout) );
  GTECH_MUX2 U106 ( .A(n164), .B(n190), .S(n140), .Z(n189) );
  GTECH_MUX2 U107 ( .A(n191), .B(n188), .S(n167), .Z(n140) );
  GTECH_NOT U108 ( .A(cin), .Z(n167) );
  GTECH_AND_NOT U109 ( .A(n187), .B(n180), .Z(n188) );
  GTECH_ADD_AB U110 ( .A(a[0]), .B(b[0]), .COUT(n180) );
  GTECH_OA21 U111 ( .A(a[3]), .B(n173), .C(n192), .Z(n191) );
  GTECH_AO21 U112 ( .A(n173), .B(a[3]), .C(b[3]), .Z(n192) );
  GTECH_OAI21 U113 ( .A(n178), .B(n170), .C(n172), .Z(n173) );
  GTECH_OR_NOT U114 ( .A(n183), .B(a[2]), .Z(n172) );
  GTECH_ADD_AB U115 ( .A(n182), .B(n183), .COUT(n170) );
  GTECH_NOT U116 ( .A(b[2]), .Z(n183) );
  GTECH_NOT U117 ( .A(a[2]), .Z(n182) );
  GTECH_AOI21 U118 ( .A(n179), .B(n187), .C(n181), .Z(n178) );
  GTECH_ADD_AB U119 ( .A(a[1]), .B(b[1]), .COUT(n181) );
  GTECH_NOT U120 ( .A(n193), .Z(n187) );
  GTECH_NOR2 U121 ( .A(a[0]), .B(b[0]), .Z(n193) );
  GTECH_OR2 U122 ( .A(b[1]), .B(a[1]), .Z(n179) );
  GTECH_AOI21 U123 ( .A(n143), .B(a[7]), .C(n194), .Z(n190) );
  GTECH_NOT U124 ( .A(n195), .Z(n194) );
  GTECH_OAI21 U125 ( .A(a[7]), .B(n143), .C(b[7]), .Z(n195) );
  GTECH_OAI21 U126 ( .A(n153), .B(n196), .C(n145), .Z(n143) );
  GTECH_OR_NOT U127 ( .A(n197), .B(a[6]), .Z(n145) );
  GTECH_NOT U128 ( .A(b[6]), .Z(n197) );
  GTECH_NOR2 U129 ( .A(b[6]), .B(a[6]), .Z(n196) );
  GTECH_OA21 U130 ( .A(n161), .B(n158), .C(n156), .Z(n153) );
  GTECH_NOT U131 ( .A(n147), .Z(n156) );
  GTECH_ADD_AB U132 ( .A(a[5]), .B(b[5]), .COUT(n147) );
  GTECH_NOR2 U133 ( .A(b[5]), .B(a[5]), .Z(n158) );
  GTECH_OR_NOT U134 ( .A(n161), .B(n157), .Z(n164) );
  GTECH_NOT U135 ( .A(n163), .Z(n157) );
  GTECH_ADD_AB U136 ( .A(b[4]), .B(a[4]), .COUT(n163) );
  GTECH_NOR2 U137 ( .A(a[4]), .B(b[4]), .Z(n161) );
endmodule

