
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
  GTECH_XNOR2 U64 ( .A(n135), .B(n136), .Z(n133) );
  GTECH_XNOR2 U65 ( .A(n135), .B(n137), .Z(n132) );
  GTECH_OA21 U66 ( .A(n138), .B(n139), .C(n140), .Z(n137) );
  GTECH_XNOR2 U67 ( .A(a[7]), .B(n141), .Z(n135) );
  GTECH_MUX2 U68 ( .A(n142), .B(n143), .S(n134), .Z(sum[6]) );
  GTECH_XOR2 U69 ( .A(n144), .B(n145), .Z(n143) );
  GTECH_XOR2 U70 ( .A(n139), .B(n145), .Z(n142) );
  GTECH_OR_NOT U71 ( .A(n138), .B(n140), .Z(n145) );
  GTECH_AOI21 U72 ( .A(n146), .B(n147), .C(n148), .Z(n139) );
  GTECH_MUX2 U73 ( .A(n149), .B(n150), .S(n151), .Z(sum[5]) );
  GTECH_AOI21 U74 ( .A(n152), .B(n134), .C(n147), .Z(n151) );
  GTECH_XOR2 U75 ( .A(b[5]), .B(a[5]), .Z(n150) );
  GTECH_OR_NOT U76 ( .A(n148), .B(n146), .Z(n149) );
  GTECH_NAND2 U77 ( .A(n153), .B(n154), .Z(sum[4]) );
  GTECH_OAI21 U78 ( .A(n155), .B(n147), .C(n134), .Z(n153) );
  GTECH_MUX2 U79 ( .A(n156), .B(n157), .S(cin), .Z(sum[3]) );
  GTECH_XOR2 U80 ( .A(n158), .B(n159), .Z(n157) );
  GTECH_XNOR2 U81 ( .A(n158), .B(n160), .Z(n156) );
  GTECH_AOI21 U82 ( .A(n161), .B(n162), .C(n163), .Z(n160) );
  GTECH_XOR2 U83 ( .A(a[3]), .B(b[3]), .Z(n158) );
  GTECH_MUX2 U84 ( .A(n164), .B(n165), .S(cin), .Z(sum[2]) );
  GTECH_XNOR2 U85 ( .A(n166), .B(n167), .Z(n165) );
  GTECH_XNOR2 U86 ( .A(n162), .B(n166), .Z(n164) );
  GTECH_OR_NOT U87 ( .A(n163), .B(n161), .Z(n166) );
  GTECH_OAI21 U88 ( .A(n168), .B(n169), .C(n170), .Z(n162) );
  GTECH_NOT U89 ( .A(n171), .Z(n169) );
  GTECH_MUX2 U90 ( .A(n172), .B(n173), .S(n174), .Z(sum[1]) );
  GTECH_AND_NOT U91 ( .A(n170), .B(n168), .Z(n174) );
  GTECH_OAI21 U92 ( .A(cin), .B(n171), .C(n175), .Z(n173) );
  GTECH_AO21 U93 ( .A(n175), .B(cin), .C(n171), .Z(n172) );
  GTECH_AND2 U94 ( .A(a[0]), .B(b[0]), .Z(n171) );
  GTECH_XOR2 U95 ( .A(cin), .B(n176), .Z(sum[0]) );
  GTECH_OAI21 U96 ( .A(n177), .B(n178), .C(n154), .Z(cout) );
  GTECH_OR3 U97 ( .A(n147), .B(n155), .C(n134), .Z(n154) );
  GTECH_NOT U98 ( .A(n152), .Z(n155) );
  GTECH_AND2 U99 ( .A(a[4]), .B(b[4]), .Z(n147) );
  GTECH_NOT U100 ( .A(n134), .Z(n178) );
  GTECH_MUX2 U101 ( .A(n176), .B(n179), .S(cin), .Z(n134) );
  GTECH_OA21 U102 ( .A(a[3]), .B(n159), .C(n180), .Z(n179) );
  GTECH_AO21 U103 ( .A(n159), .B(a[3]), .C(b[3]), .Z(n180) );
  GTECH_AO21 U104 ( .A(n167), .B(n161), .C(n163), .Z(n159) );
  GTECH_AND2 U105 ( .A(a[2]), .B(b[2]), .Z(n163) );
  GTECH_OR2 U106 ( .A(a[2]), .B(b[2]), .Z(n161) );
  GTECH_OAI21 U107 ( .A(n181), .B(n168), .C(n170), .Z(n167) );
  GTECH_OR_NOT U108 ( .A(n182), .B(a[1]), .Z(n170) );
  GTECH_AND_NOT U109 ( .A(n182), .B(a[1]), .Z(n168) );
  GTECH_NOT U110 ( .A(b[1]), .Z(n182) );
  GTECH_NOT U111 ( .A(n175), .Z(n181) );
  GTECH_OR2 U112 ( .A(b[0]), .B(a[0]), .Z(n175) );
  GTECH_XOR2 U113 ( .A(a[0]), .B(b[0]), .Z(n176) );
  GTECH_OA21 U114 ( .A(n136), .B(n183), .C(n184), .Z(n177) );
  GTECH_AO21 U115 ( .A(n183), .B(n136), .C(n141), .Z(n184) );
  GTECH_NOT U116 ( .A(b[7]), .Z(n141) );
  GTECH_NOT U117 ( .A(a[7]), .Z(n183) );
  GTECH_OA21 U118 ( .A(n138), .B(n144), .C(n140), .Z(n136) );
  GTECH_OR_NOT U119 ( .A(n185), .B(a[6]), .Z(n140) );
  GTECH_AOI21 U120 ( .A(n146), .B(n152), .C(n148), .Z(n144) );
  GTECH_AND2 U121 ( .A(a[5]), .B(b[5]), .Z(n148) );
  GTECH_OR2 U122 ( .A(b[4]), .B(a[4]), .Z(n152) );
  GTECH_OR2 U123 ( .A(a[5]), .B(b[5]), .Z(n146) );
  GTECH_AND_NOT U124 ( .A(n185), .B(a[6]), .Z(n138) );
  GTECH_NOT U125 ( .A(b[6]), .Z(n185) );
endmodule

