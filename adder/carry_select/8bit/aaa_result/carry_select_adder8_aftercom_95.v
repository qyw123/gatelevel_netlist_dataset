
module carry_select_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186;

  GTECH_MUX2 U65 ( .A(n134), .B(n135), .S(n136), .Z(sum[7]) );
  GTECH_XOR2 U66 ( .A(n137), .B(n138), .Z(n135) );
  GTECH_XNOR2 U67 ( .A(n139), .B(n137), .Z(n134) );
  GTECH_XOR2 U68 ( .A(n140), .B(b[7]), .Z(n137) );
  GTECH_ADD_ABC U69 ( .A(a[6]), .B(n141), .C(b[6]), .COUT(n139) );
  GTECH_MUX2 U70 ( .A(n142), .B(n143), .S(n136), .Z(sum[6]) );
  GTECH_XOR2 U71 ( .A(n144), .B(n145), .Z(n143) );
  GTECH_XOR2 U72 ( .A(n141), .B(n145), .Z(n142) );
  GTECH_XOR2 U73 ( .A(a[6]), .B(b[6]), .Z(n145) );
  GTECH_AOI21 U74 ( .A(n146), .B(n147), .C(n148), .Z(n141) );
  GTECH_MUX2 U75 ( .A(n149), .B(n150), .S(n136), .Z(sum[5]) );
  GTECH_XNOR2 U76 ( .A(n151), .B(n152), .Z(n150) );
  GTECH_XOR2 U77 ( .A(n146), .B(n152), .Z(n149) );
  GTECH_AO21 U78 ( .A(n153), .B(n154), .C(n155), .Z(n152) );
  GTECH_OR_NOT U79 ( .A(n156), .B(n157), .Z(sum[4]) );
  GTECH_AO21 U80 ( .A(n151), .B(n146), .C(n158), .Z(n157) );
  GTECH_MUX2 U81 ( .A(n159), .B(n160), .S(cin), .Z(sum[3]) );
  GTECH_XNOR2 U82 ( .A(n161), .B(n162), .Z(n160) );
  GTECH_XNOR2 U83 ( .A(n163), .B(n161), .Z(n159) );
  GTECH_XNOR2 U84 ( .A(a[3]), .B(b[3]), .Z(n161) );
  GTECH_OA22 U85 ( .A(a[2]), .B(n164), .C(b[2]), .D(n165), .Z(n163) );
  GTECH_AND2 U86 ( .A(n164), .B(a[2]), .Z(n165) );
  GTECH_MUX2 U87 ( .A(n166), .B(n167), .S(cin), .Z(sum[2]) );
  GTECH_XNOR2 U88 ( .A(n168), .B(n169), .Z(n167) );
  GTECH_XNOR2 U89 ( .A(n168), .B(n164), .Z(n166) );
  GTECH_AO21 U90 ( .A(n170), .B(n171), .C(n172), .Z(n164) );
  GTECH_XNOR2 U91 ( .A(a[2]), .B(b[2]), .Z(n168) );
  GTECH_MUX2 U92 ( .A(n173), .B(n174), .S(cin), .Z(sum[1]) );
  GTECH_XNOR2 U93 ( .A(n175), .B(n176), .Z(n174) );
  GTECH_XNOR2 U94 ( .A(n170), .B(n175), .Z(n173) );
  GTECH_OR_NOT U95 ( .A(n172), .B(n171), .Z(n175) );
  GTECH_XOR2 U96 ( .A(cin), .B(n177), .Z(sum[0]) );
  GTECH_AO21 U97 ( .A(n136), .B(n178), .C(n156), .Z(cout) );
  GTECH_AND3 U98 ( .A(n151), .B(n146), .C(n158), .Z(n156) );
  GTECH_NOT U99 ( .A(n136), .Z(n158) );
  GTECH_NAND2 U100 ( .A(b[4]), .B(a[4]), .Z(n146) );
  GTECH_OAI2N2 U101 ( .A(n138), .B(n140), .C(n179), .D(b[7]), .Z(n178) );
  GTECH_OR_NOT U102 ( .A(a[7]), .B(n138), .Z(n179) );
  GTECH_NOT U103 ( .A(a[7]), .Z(n140) );
  GTECH_NOT U104 ( .A(n180), .Z(n138) );
  GTECH_ADD_ABC U105 ( .A(n144), .B(a[6]), .C(b[6]), .COUT(n180) );
  GTECH_AOI21 U106 ( .A(n181), .B(n147), .C(n148), .Z(n144) );
  GTECH_AND_NOT U107 ( .A(n153), .B(a[5]), .Z(n148) );
  GTECH_NOT U108 ( .A(n155), .Z(n147) );
  GTECH_NOR2 U109 ( .A(n154), .B(n153), .Z(n155) );
  GTECH_NOT U110 ( .A(b[5]), .Z(n153) );
  GTECH_NOT U111 ( .A(a[5]), .Z(n154) );
  GTECH_NOT U112 ( .A(n151), .Z(n181) );
  GTECH_OR2 U113 ( .A(a[4]), .B(b[4]), .Z(n151) );
  GTECH_MUX2 U114 ( .A(n177), .B(n182), .S(cin), .Z(n136) );
  GTECH_OA22 U115 ( .A(a[3]), .B(n162), .C(b[3]), .D(n183), .Z(n182) );
  GTECH_AND2 U116 ( .A(n162), .B(a[3]), .Z(n183) );
  GTECH_OAI2N2 U117 ( .A(n184), .B(n185), .C(n169), .D(a[2]), .Z(n162) );
  GTECH_NOT U118 ( .A(n186), .Z(n169) );
  GTECH_NOT U119 ( .A(b[2]), .Z(n185) );
  GTECH_AND_NOT U120 ( .A(n186), .B(a[2]), .Z(n184) );
  GTECH_AOI21 U121 ( .A(n171), .B(n176), .C(n172), .Z(n186) );
  GTECH_AND2 U122 ( .A(a[1]), .B(b[1]), .Z(n172) );
  GTECH_OR2 U123 ( .A(b[1]), .B(a[1]), .Z(n171) );
  GTECH_AND_NOT U124 ( .A(n176), .B(n170), .Z(n177) );
  GTECH_AND2 U125 ( .A(a[0]), .B(b[0]), .Z(n170) );
  GTECH_OR2 U126 ( .A(b[0]), .B(a[0]), .Z(n176) );
endmodule

