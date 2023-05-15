
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
         n182, n183, n184, n185, n186, n187, n188, n189;

  GTECH_OAI22 U69 ( .A(n138), .B(n139), .C(n140), .D(n141), .Z(sum[7]) );
  GTECH_XOR2 U70 ( .A(n142), .B(n143), .Z(n141) );
  GTECH_OA21 U71 ( .A(n144), .B(n145), .C(n146), .Z(n143) );
  GTECH_XOR2 U72 ( .A(n142), .B(n147), .Z(n139) );
  GTECH_XNOR2 U73 ( .A(a[7]), .B(b[7]), .Z(n142) );
  GTECH_OAI22 U74 ( .A(n138), .B(n148), .C(n140), .D(n149), .Z(sum[6]) );
  GTECH_XOR2 U75 ( .A(n145), .B(n150), .Z(n149) );
  GTECH_NOT U76 ( .A(n151), .Z(n145) );
  GTECH_OAI21 U77 ( .A(n152), .B(n153), .C(n154), .Z(n151) );
  GTECH_XOR2 U78 ( .A(n155), .B(n150), .Z(n148) );
  GTECH_OAI21 U79 ( .A(a[6]), .B(b[6]), .C(n156), .Z(n150) );
  GTECH_NOT U80 ( .A(n144), .Z(n156) );
  GTECH_OAI22 U81 ( .A(n140), .B(n157), .C(n158), .D(n138), .Z(sum[5]) );
  GTECH_XNOR2 U82 ( .A(n159), .B(n160), .Z(n158) );
  GTECH_XOR2 U83 ( .A(n153), .B(n159), .Z(n157) );
  GTECH_OAI21 U84 ( .A(a[5]), .B(b[5]), .C(n161), .Z(n159) );
  GTECH_OR_NOT U85 ( .A(n162), .B(n163), .Z(sum[4]) );
  GTECH_OAI21 U86 ( .A(n153), .B(n160), .C(n140), .Z(n163) );
  GTECH_OAI22 U87 ( .A(n164), .B(n165), .C(cin), .D(n166), .Z(sum[3]) );
  GTECH_XOR2 U88 ( .A(n167), .B(n168), .Z(n166) );
  GTECH_OA21 U89 ( .A(n169), .B(n170), .C(n171), .Z(n167) );
  GTECH_XNOR2 U90 ( .A(n172), .B(n168), .Z(n165) );
  GTECH_XOR2 U91 ( .A(a[3]), .B(b[3]), .Z(n168) );
  GTECH_OAI22 U92 ( .A(n164), .B(n173), .C(cin), .D(n174), .Z(sum[2]) );
  GTECH_XOR2 U93 ( .A(n175), .B(n170), .Z(n174) );
  GTECH_AOI21 U94 ( .A(n176), .B(n177), .C(n178), .Z(n170) );
  GTECH_XOR2 U95 ( .A(n179), .B(n175), .Z(n173) );
  GTECH_AND_NOT U96 ( .A(n171), .B(n169), .Z(n175) );
  GTECH_OAI2N2 U97 ( .A(n180), .B(n181), .C(n182), .D(n180), .Z(sum[1]) );
  GTECH_OAI21 U98 ( .A(cin), .B(n177), .C(n183), .Z(n182) );
  GTECH_AOI21 U99 ( .A(n183), .B(cin), .C(n177), .Z(n181) );
  GTECH_AND_NOT U100 ( .A(b[0]), .B(n184), .Z(n177) );
  GTECH_AND_NOT U101 ( .A(n176), .B(n178), .Z(n180) );
  GTECH_XNOR2 U102 ( .A(n164), .B(n185), .Z(sum[0]) );
  GTECH_AO21 U103 ( .A(n140), .B(n186), .C(n162), .Z(cout) );
  GTECH_NOR3 U104 ( .A(n153), .B(n160), .C(n140), .Z(n162) );
  GTECH_ADD_AB U105 ( .A(b[4]), .B(a[4]), .COUT(n153) );
  GTECH_ADD_ABC U106 ( .A(a[7]), .B(n147), .C(b[7]), .COUT(n186) );
  GTECH_OA21 U107 ( .A(n144), .B(n155), .C(n146), .Z(n147) );
  GTECH_OR2 U108 ( .A(b[6]), .B(a[6]), .Z(n146) );
  GTECH_AOI21 U109 ( .A(n161), .B(n160), .C(n187), .Z(n155) );
  GTECH_NOT U110 ( .A(n154), .Z(n187) );
  GTECH_OR2 U111 ( .A(b[5]), .B(a[5]), .Z(n154) );
  GTECH_NOR2 U112 ( .A(a[4]), .B(b[4]), .Z(n160) );
  GTECH_NOT U113 ( .A(n152), .Z(n161) );
  GTECH_ADD_AB U114 ( .A(a[5]), .B(b[5]), .COUT(n152) );
  GTECH_ADD_AB U115 ( .A(a[6]), .B(b[6]), .COUT(n144) );
  GTECH_NOT U116 ( .A(n138), .Z(n140) );
  GTECH_AOI2N2 U117 ( .A(n164), .B(n185), .C(n188), .D(n164), .Z(n138) );
  GTECH_AOI21 U118 ( .A(n172), .B(a[3]), .C(n189), .Z(n188) );
  GTECH_OA21 U119 ( .A(a[3]), .B(n172), .C(b[3]), .Z(n189) );
  GTECH_OAI21 U120 ( .A(n179), .B(n169), .C(n171), .Z(n172) );
  GTECH_NAND2 U121 ( .A(b[2]), .B(a[2]), .Z(n171) );
  GTECH_NOR2 U122 ( .A(a[2]), .B(b[2]), .Z(n169) );
  GTECH_AOI21 U123 ( .A(n183), .B(n176), .C(n178), .Z(n179) );
  GTECH_ADD_AB U124 ( .A(a[1]), .B(b[1]), .COUT(n178) );
  GTECH_OR2 U125 ( .A(b[1]), .B(a[1]), .Z(n176) );
  GTECH_OR2 U126 ( .A(b[0]), .B(a[0]), .Z(n183) );
  GTECH_XNOR2 U127 ( .A(n184), .B(b[0]), .Z(n185) );
  GTECH_NOT U128 ( .A(a[0]), .Z(n184) );
  GTECH_NOT U129 ( .A(cin), .Z(n164) );
endmodule

