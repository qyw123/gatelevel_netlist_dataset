
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
         n180, n181, n182, n183, n184;

  GTECH_MUX2 U67 ( .A(n136), .B(n137), .S(n138), .Z(sum[7]) );
  GTECH_XOR2 U68 ( .A(n139), .B(n140), .Z(n137) );
  GTECH_AOI21 U69 ( .A(n141), .B(n142), .C(n143), .Z(n139) );
  GTECH_XOR2 U70 ( .A(n144), .B(n140), .Z(n136) );
  GTECH_XOR2 U71 ( .A(a[7]), .B(b[7]), .Z(n140) );
  GTECH_MUX2 U72 ( .A(n145), .B(n146), .S(n138), .Z(sum[6]) );
  GTECH_XOR2 U73 ( .A(n147), .B(n141), .Z(n146) );
  GTECH_AOI21 U74 ( .A(n148), .B(n149), .C(n150), .Z(n141) );
  GTECH_XOR2 U75 ( .A(n147), .B(n151), .Z(n145) );
  GTECH_OR_NOT U76 ( .A(n143), .B(n142), .Z(n147) );
  GTECH_MUX2 U77 ( .A(n152), .B(n153), .S(n138), .Z(sum[5]) );
  GTECH_XOR2 U78 ( .A(n154), .B(n155), .Z(n153) );
  GTECH_XNOR2 U79 ( .A(n155), .B(n156), .Z(n152) );
  GTECH_OR_NOT U80 ( .A(n150), .B(n148), .Z(n155) );
  GTECH_OR_NOT U81 ( .A(n157), .B(n158), .Z(sum[4]) );
  GTECH_AO21 U82 ( .A(n154), .B(n156), .C(n138), .Z(n158) );
  GTECH_MUX2 U83 ( .A(n159), .B(n160), .S(cin), .Z(sum[3]) );
  GTECH_XOR2 U84 ( .A(n161), .B(n162), .Z(n160) );
  GTECH_XOR2 U85 ( .A(n163), .B(n162), .Z(n159) );
  GTECH_XOR2 U86 ( .A(a[3]), .B(b[3]), .Z(n162) );
  GTECH_AOI21 U87 ( .A(n164), .B(n165), .C(n166), .Z(n163) );
  GTECH_MUX2 U88 ( .A(n167), .B(n168), .S(cin), .Z(sum[2]) );
  GTECH_XOR2 U89 ( .A(n169), .B(n170), .Z(n168) );
  GTECH_XOR2 U90 ( .A(n169), .B(n164), .Z(n167) );
  GTECH_AOI21 U91 ( .A(n171), .B(n172), .C(n173), .Z(n164) );
  GTECH_OR_NOT U92 ( .A(n166), .B(n165), .Z(n169) );
  GTECH_MUX2 U93 ( .A(n174), .B(n175), .S(n176), .Z(sum[1]) );
  GTECH_OR_NOT U94 ( .A(n173), .B(n171), .Z(n176) );
  GTECH_OAI21 U95 ( .A(n177), .B(n178), .C(n179), .Z(n175) );
  GTECH_NOT U96 ( .A(n172), .Z(n179) );
  GTECH_OAI21 U97 ( .A(cin), .B(n172), .C(n180), .Z(n174) );
  GTECH_XNOR2 U98 ( .A(n178), .B(n181), .Z(sum[0]) );
  GTECH_NOT U99 ( .A(cin), .Z(n178) );
  GTECH_AO21 U100 ( .A(n182), .B(n183), .C(n157), .Z(cout) );
  GTECH_AND3 U101 ( .A(n154), .B(n156), .C(n138), .Z(n157) );
  GTECH_NOT U102 ( .A(n182), .Z(n138) );
  GTECH_NOT U103 ( .A(n149), .Z(n154) );
  GTECH_AND2 U104 ( .A(b[4]), .B(a[4]), .Z(n149) );
  GTECH_ADD_ABC U105 ( .A(a[7]), .B(n144), .C(b[7]), .COUT(n183) );
  GTECH_AOI21 U106 ( .A(n151), .B(n142), .C(n143), .Z(n144) );
  GTECH_NOR2 U107 ( .A(a[6]), .B(b[6]), .Z(n143) );
  GTECH_NAND2 U108 ( .A(b[6]), .B(a[6]), .Z(n142) );
  GTECH_AOI21 U109 ( .A(n156), .B(n148), .C(n150), .Z(n151) );
  GTECH_AND2 U110 ( .A(a[5]), .B(b[5]), .Z(n150) );
  GTECH_OR2 U111 ( .A(b[5]), .B(a[5]), .Z(n148) );
  GTECH_OR2 U112 ( .A(a[4]), .B(b[4]), .Z(n156) );
  GTECH_MUX2 U113 ( .A(n181), .B(n184), .S(cin), .Z(n182) );
  GTECH_ADD_ABC U114 ( .A(a[3]), .B(n161), .C(b[3]), .COUT(n184) );
  GTECH_AOI21 U115 ( .A(n165), .B(n170), .C(n166), .Z(n161) );
  GTECH_NOR2 U116 ( .A(a[2]), .B(b[2]), .Z(n166) );
  GTECH_AOI21 U117 ( .A(n180), .B(n171), .C(n173), .Z(n170) );
  GTECH_AND2 U118 ( .A(a[1]), .B(b[1]), .Z(n173) );
  GTECH_OR2 U119 ( .A(b[1]), .B(a[1]), .Z(n171) );
  GTECH_NAND2 U120 ( .A(b[2]), .B(a[2]), .Z(n165) );
  GTECH_NOR2 U121 ( .A(n172), .B(n177), .Z(n181) );
  GTECH_NOT U122 ( .A(n180), .Z(n177) );
  GTECH_OR2 U123 ( .A(a[0]), .B(b[0]), .Z(n180) );
  GTECH_AND2 U124 ( .A(b[0]), .B(a[0]), .Z(n172) );
endmodule

