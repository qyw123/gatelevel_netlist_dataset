
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
         n183, n184, n185, n186, n187, n188;

  GTECH_OAI22 U70 ( .A(n139), .B(n140), .C(n141), .D(n142), .Z(sum[7]) );
  GTECH_XOR2 U71 ( .A(n143), .B(n144), .Z(n142) );
  GTECH_XOR2 U72 ( .A(n143), .B(n145), .Z(n140) );
  GTECH_AOI21 U73 ( .A(n146), .B(n147), .C(n148), .Z(n145) );
  GTECH_XNOR2 U74 ( .A(a[7]), .B(b[7]), .Z(n143) );
  GTECH_OAI22 U75 ( .A(n139), .B(n149), .C(n141), .D(n150), .Z(sum[6]) );
  GTECH_XNOR2 U76 ( .A(n151), .B(n152), .Z(n150) );
  GTECH_XNOR2 U77 ( .A(n147), .B(n152), .Z(n149) );
  GTECH_OAI21 U78 ( .A(a[6]), .B(b[6]), .C(n146), .Z(n152) );
  GTECH_AO21 U79 ( .A(n153), .B(n154), .C(n155), .Z(n147) );
  GTECH_NOT U80 ( .A(n156), .Z(n154) );
  GTECH_OAI22 U81 ( .A(n157), .B(n141), .C(n139), .D(n158), .Z(sum[5]) );
  GTECH_XNOR2 U82 ( .A(n159), .B(n156), .Z(n158) );
  GTECH_NOT U83 ( .A(n139), .Z(n141) );
  GTECH_XOR2 U84 ( .A(n160), .B(n159), .Z(n157) );
  GTECH_OA21 U85 ( .A(a[5]), .B(b[5]), .C(n153), .Z(n159) );
  GTECH_OR_NOT U86 ( .A(n161), .B(n162), .Z(sum[4]) );
  GTECH_OAI21 U87 ( .A(n156), .B(n160), .C(n139), .Z(n162) );
  GTECH_OAI22 U88 ( .A(n163), .B(n164), .C(cin), .D(n165), .Z(sum[3]) );
  GTECH_XOR2 U89 ( .A(n166), .B(n167), .Z(n165) );
  GTECH_OA21 U90 ( .A(n168), .B(n169), .C(n170), .Z(n166) );
  GTECH_XNOR2 U91 ( .A(n171), .B(n167), .Z(n164) );
  GTECH_XOR2 U92 ( .A(a[3]), .B(b[3]), .Z(n167) );
  GTECH_OAI22 U93 ( .A(n163), .B(n172), .C(cin), .D(n173), .Z(sum[2]) );
  GTECH_XOR2 U94 ( .A(n174), .B(n169), .Z(n173) );
  GTECH_AOI21 U95 ( .A(n175), .B(n176), .C(n177), .Z(n169) );
  GTECH_XOR2 U96 ( .A(n174), .B(n178), .Z(n172) );
  GTECH_AND_NOT U97 ( .A(n170), .B(n168), .Z(n174) );
  GTECH_OAI2N2 U98 ( .A(n179), .B(n180), .C(n181), .D(n179), .Z(sum[1]) );
  GTECH_OAI21 U99 ( .A(cin), .B(n176), .C(n182), .Z(n181) );
  GTECH_AOI21 U100 ( .A(n182), .B(cin), .C(n176), .Z(n180) );
  GTECH_AND2 U101 ( .A(b[0]), .B(a[0]), .Z(n176) );
  GTECH_AND_NOT U102 ( .A(n175), .B(n177), .Z(n179) );
  GTECH_XNOR2 U103 ( .A(cin), .B(n183), .Z(sum[0]) );
  GTECH_AO21 U104 ( .A(n139), .B(n184), .C(n161), .Z(cout) );
  GTECH_NOR3 U105 ( .A(n156), .B(n160), .C(n139), .Z(n161) );
  GTECH_AND2 U106 ( .A(b[4]), .B(a[4]), .Z(n156) );
  GTECH_ADD_ABC U107 ( .A(a[7]), .B(n144), .C(b[7]), .COUT(n184) );
  GTECH_AOI21 U108 ( .A(n146), .B(n151), .C(n148), .Z(n144) );
  GTECH_NOR2 U109 ( .A(b[6]), .B(a[6]), .Z(n148) );
  GTECH_AO21 U110 ( .A(n153), .B(n160), .C(n155), .Z(n151) );
  GTECH_NOR2 U111 ( .A(a[5]), .B(b[5]), .Z(n155) );
  GTECH_NOR2 U112 ( .A(b[4]), .B(a[4]), .Z(n160) );
  GTECH_NAND2 U113 ( .A(b[5]), .B(a[5]), .Z(n153) );
  GTECH_NAND2 U114 ( .A(a[6]), .B(b[6]), .Z(n146) );
  GTECH_AOI2N2 U115 ( .A(n163), .B(n183), .C(n185), .D(n163), .Z(n139) );
  GTECH_OA21 U116 ( .A(a[3]), .B(n171), .C(n186), .Z(n185) );
  GTECH_AO21 U117 ( .A(n171), .B(a[3]), .C(b[3]), .Z(n186) );
  GTECH_OAI21 U118 ( .A(n178), .B(n168), .C(n170), .Z(n171) );
  GTECH_NAND2 U119 ( .A(a[2]), .B(b[2]), .Z(n170) );
  GTECH_NOR2 U120 ( .A(a[2]), .B(b[2]), .Z(n168) );
  GTECH_AOI21 U121 ( .A(n175), .B(n182), .C(n177), .Z(n178) );
  GTECH_AND2 U122 ( .A(a[1]), .B(b[1]), .Z(n177) );
  GTECH_OR_NOT U123 ( .A(b[0]), .B(n187), .Z(n182) );
  GTECH_OR_NOT U124 ( .A(a[1]), .B(n188), .Z(n175) );
  GTECH_NOT U125 ( .A(b[1]), .Z(n188) );
  GTECH_XOR2 U126 ( .A(n187), .B(b[0]), .Z(n183) );
  GTECH_NOT U127 ( .A(a[0]), .Z(n187) );
  GTECH_NOT U128 ( .A(cin), .Z(n163) );
endmodule

