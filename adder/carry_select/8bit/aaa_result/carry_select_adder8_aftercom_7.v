
module carry_select_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186;

  GTECH_MUX2 U66 ( .A(n135), .B(n136), .S(n137), .Z(sum[7]) );
  GTECH_XOR2 U67 ( .A(n138), .B(n139), .Z(n136) );
  GTECH_ADD_ABC U68 ( .A(a[6]), .B(n140), .C(b[6]), .COUT(n138) );
  GTECH_XOR2 U69 ( .A(n139), .B(n141), .Z(n135) );
  GTECH_XOR2 U70 ( .A(a[7]), .B(b[7]), .Z(n139) );
  GTECH_MUX2 U71 ( .A(n142), .B(n143), .S(n137), .Z(sum[6]) );
  GTECH_XOR2 U72 ( .A(n140), .B(n144), .Z(n143) );
  GTECH_OA21 U73 ( .A(n145), .B(n146), .C(n147), .Z(n140) );
  GTECH_XOR2 U74 ( .A(n148), .B(n144), .Z(n142) );
  GTECH_XOR2 U75 ( .A(a[6]), .B(b[6]), .Z(n144) );
  GTECH_MUX2 U76 ( .A(n149), .B(n150), .S(n137), .Z(sum[5]) );
  GTECH_XNOR2 U77 ( .A(n151), .B(n146), .Z(n150) );
  GTECH_NOT U78 ( .A(n152), .Z(n146) );
  GTECH_XNOR2 U79 ( .A(n153), .B(n151), .Z(n149) );
  GTECH_OAI21 U80 ( .A(a[5]), .B(b[5]), .C(n154), .Z(n151) );
  GTECH_OR_NOT U81 ( .A(n155), .B(n156), .Z(sum[4]) );
  GTECH_AO21 U82 ( .A(n152), .B(n153), .C(n137), .Z(n156) );
  GTECH_MUX2 U83 ( .A(n157), .B(n158), .S(n159), .Z(sum[3]) );
  GTECH_XOR2 U84 ( .A(n160), .B(n161), .Z(n158) );
  GTECH_OA21 U85 ( .A(a[2]), .B(n162), .C(n163), .Z(n160) );
  GTECH_AO21 U86 ( .A(n162), .B(a[2]), .C(b[2]), .Z(n163) );
  GTECH_XOR2 U87 ( .A(n161), .B(n164), .Z(n157) );
  GTECH_XOR2 U88 ( .A(a[3]), .B(b[3]), .Z(n161) );
  GTECH_MUX2 U89 ( .A(n165), .B(n166), .S(n159), .Z(sum[2]) );
  GTECH_XNOR2 U90 ( .A(n167), .B(n162), .Z(n166) );
  GTECH_OAI21 U91 ( .A(n168), .B(n169), .C(n170), .Z(n162) );
  GTECH_XOR2 U92 ( .A(n167), .B(n171), .Z(n165) );
  GTECH_XNOR2 U93 ( .A(n172), .B(n173), .Z(n167) );
  GTECH_MUX2 U94 ( .A(n174), .B(n175), .S(n176), .Z(sum[1]) );
  GTECH_AND_NOT U95 ( .A(n170), .B(n168), .Z(n176) );
  GTECH_AO21 U96 ( .A(n159), .B(n169), .C(n177), .Z(n175) );
  GTECH_OAI21 U97 ( .A(n177), .B(n159), .C(n169), .Z(n174) );
  GTECH_OR_NOT U98 ( .A(n178), .B(b[0]), .Z(n169) );
  GTECH_XOR2 U99 ( .A(n159), .B(n179), .Z(sum[0]) );
  GTECH_OAI21 U100 ( .A(n180), .B(n137), .C(n181), .Z(cout) );
  GTECH_NOT U101 ( .A(n155), .Z(n181) );
  GTECH_AND3 U102 ( .A(n153), .B(n152), .C(n137), .Z(n155) );
  GTECH_NAND2 U103 ( .A(a[4]), .B(b[4]), .Z(n152) );
  GTECH_MUX2 U104 ( .A(n182), .B(n179), .S(n159), .Z(n137) );
  GTECH_NOT U105 ( .A(cin), .Z(n159) );
  GTECH_XOR2 U106 ( .A(a[0]), .B(n183), .Z(n179) );
  GTECH_AOI21 U107 ( .A(n164), .B(a[3]), .C(n184), .Z(n182) );
  GTECH_OA21 U108 ( .A(a[3]), .B(n164), .C(b[3]), .Z(n184) );
  GTECH_OAI21 U109 ( .A(n171), .B(n172), .C(n185), .Z(n164) );
  GTECH_AO21 U110 ( .A(n172), .B(n171), .C(n173), .Z(n185) );
  GTECH_NOT U111 ( .A(b[2]), .Z(n173) );
  GTECH_NOT U112 ( .A(a[2]), .Z(n172) );
  GTECH_OA21 U113 ( .A(n168), .B(n177), .C(n170), .Z(n171) );
  GTECH_NAND2 U114 ( .A(b[1]), .B(a[1]), .Z(n170) );
  GTECH_AND2 U115 ( .A(n183), .B(n178), .Z(n177) );
  GTECH_NOT U116 ( .A(a[0]), .Z(n178) );
  GTECH_NOT U117 ( .A(b[0]), .Z(n183) );
  GTECH_NOR2 U118 ( .A(a[1]), .B(b[1]), .Z(n168) );
  GTECH_AOI21 U119 ( .A(n141), .B(a[7]), .C(n186), .Z(n180) );
  GTECH_OA21 U120 ( .A(a[7]), .B(n141), .C(b[7]), .Z(n186) );
  GTECH_ADD_ABC U121 ( .A(a[6]), .B(n148), .C(b[6]), .COUT(n141) );
  GTECH_OA21 U122 ( .A(n145), .B(n153), .C(n147), .Z(n148) );
  GTECH_OR2 U123 ( .A(b[5]), .B(a[5]), .Z(n147) );
  GTECH_OR2 U124 ( .A(a[4]), .B(b[4]), .Z(n153) );
  GTECH_NOT U125 ( .A(n154), .Z(n145) );
  GTECH_NAND2 U126 ( .A(a[5]), .B(b[5]), .Z(n154) );
endmodule

