
module carry_select_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186;

  GTECH_MUX2 U67 ( .A(n136), .B(n137), .S(n138), .Z(sum[7]) );
  GTECH_XOR2 U68 ( .A(n139), .B(n140), .Z(n137) );
  GTECH_ADD_ABC U69 ( .A(a[6]), .B(n141), .C(b[6]), .COUT(n139) );
  GTECH_XOR2 U70 ( .A(n140), .B(n142), .Z(n136) );
  GTECH_XOR2 U71 ( .A(a[7]), .B(b[7]), .Z(n140) );
  GTECH_MUX2 U72 ( .A(n143), .B(n144), .S(n138), .Z(sum[6]) );
  GTECH_XOR2 U73 ( .A(n141), .B(n145), .Z(n144) );
  GTECH_OA21 U74 ( .A(n146), .B(n147), .C(n148), .Z(n141) );
  GTECH_XOR2 U75 ( .A(n149), .B(n145), .Z(n143) );
  GTECH_XOR2 U76 ( .A(a[6]), .B(b[6]), .Z(n145) );
  GTECH_MUX2 U77 ( .A(n150), .B(n151), .S(n138), .Z(sum[5]) );
  GTECH_XOR2 U78 ( .A(n152), .B(n153), .Z(n151) );
  GTECH_XNOR2 U79 ( .A(n153), .B(n154), .Z(n150) );
  GTECH_OAI21 U80 ( .A(a[5]), .B(b[5]), .C(n155), .Z(n153) );
  GTECH_NOT U81 ( .A(n146), .Z(n155) );
  GTECH_NAND2 U82 ( .A(n156), .B(n157), .Z(sum[4]) );
  GTECH_OAI21 U83 ( .A(n147), .B(n158), .C(n159), .Z(n157) );
  GTECH_MUX2 U84 ( .A(n160), .B(n161), .S(cin), .Z(sum[3]) );
  GTECH_XOR2 U85 ( .A(n162), .B(n163), .Z(n161) );
  GTECH_XOR2 U86 ( .A(n164), .B(n162), .Z(n160) );
  GTECH_XOR2 U87 ( .A(a[3]), .B(b[3]), .Z(n162) );
  GTECH_OA21 U88 ( .A(a[2]), .B(n165), .C(n166), .Z(n164) );
  GTECH_AO21 U89 ( .A(n165), .B(a[2]), .C(b[2]), .Z(n166) );
  GTECH_MUX2 U90 ( .A(n167), .B(n168), .S(cin), .Z(sum[2]) );
  GTECH_XOR2 U91 ( .A(n169), .B(n170), .Z(n168) );
  GTECH_XNOR2 U92 ( .A(n169), .B(n165), .Z(n167) );
  GTECH_AO21 U93 ( .A(n171), .B(n172), .C(n173), .Z(n165) );
  GTECH_XOR2 U94 ( .A(a[2]), .B(n174), .Z(n169) );
  GTECH_MUX2 U95 ( .A(n175), .B(n176), .S(n177), .Z(sum[1]) );
  GTECH_AND2 U96 ( .A(n171), .B(n178), .Z(n177) );
  GTECH_OAI21 U97 ( .A(cin), .B(n172), .C(n179), .Z(n176) );
  GTECH_AO21 U98 ( .A(n179), .B(cin), .C(n172), .Z(n175) );
  GTECH_AND2 U99 ( .A(a[0]), .B(b[0]), .Z(n172) );
  GTECH_XOR2 U100 ( .A(cin), .B(n180), .Z(sum[0]) );
  GTECH_OAI21 U101 ( .A(n181), .B(n138), .C(n156), .Z(cout) );
  GTECH_NAND3 U102 ( .A(n152), .B(n154), .C(n138), .Z(n156) );
  GTECH_NOT U103 ( .A(n147), .Z(n152) );
  GTECH_AND2 U104 ( .A(b[4]), .B(a[4]), .Z(n147) );
  GTECH_NOT U105 ( .A(n159), .Z(n138) );
  GTECH_MUX2 U106 ( .A(n180), .B(n182), .S(cin), .Z(n159) );
  GTECH_OA21 U107 ( .A(a[3]), .B(n163), .C(n183), .Z(n182) );
  GTECH_AO21 U108 ( .A(n163), .B(a[3]), .C(b[3]), .Z(n183) );
  GTECH_OAI21 U109 ( .A(n170), .B(n184), .C(n185), .Z(n163) );
  GTECH_AO21 U110 ( .A(n184), .B(n170), .C(n174), .Z(n185) );
  GTECH_NOT U111 ( .A(b[2]), .Z(n174) );
  GTECH_NOT U112 ( .A(a[2]), .Z(n184) );
  GTECH_AOI21 U113 ( .A(n171), .B(n179), .C(n173), .Z(n170) );
  GTECH_NOT U114 ( .A(n178), .Z(n173) );
  GTECH_NAND2 U115 ( .A(b[1]), .B(a[1]), .Z(n178) );
  GTECH_OR2 U116 ( .A(b[0]), .B(a[0]), .Z(n179) );
  GTECH_OR2 U117 ( .A(b[1]), .B(a[1]), .Z(n171) );
  GTECH_XOR2 U118 ( .A(a[0]), .B(b[0]), .Z(n180) );
  GTECH_AOI21 U119 ( .A(n142), .B(a[7]), .C(n186), .Z(n181) );
  GTECH_OA21 U120 ( .A(a[7]), .B(n142), .C(b[7]), .Z(n186) );
  GTECH_ADD_ABC U121 ( .A(n149), .B(a[6]), .C(b[6]), .COUT(n142) );
  GTECH_OA21 U122 ( .A(n146), .B(n154), .C(n148), .Z(n149) );
  GTECH_OR2 U123 ( .A(a[5]), .B(b[5]), .Z(n148) );
  GTECH_NOT U124 ( .A(n158), .Z(n154) );
  GTECH_NOR2 U125 ( .A(a[4]), .B(b[4]), .Z(n158) );
  GTECH_AND2 U126 ( .A(b[5]), .B(a[5]), .Z(n146) );
endmodule

