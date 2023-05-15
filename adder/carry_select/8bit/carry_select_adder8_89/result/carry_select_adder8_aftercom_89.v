
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
         n179, n180, n181, n182, n183, n184;

  GTECH_OAI22 U66 ( .A(n135), .B(n136), .C(n137), .D(n138), .Z(sum[7]) );
  GTECH_XNOR2 U67 ( .A(n139), .B(n140), .Z(n137) );
  GTECH_XNOR2 U68 ( .A(n140), .B(n141), .Z(n136) );
  GTECH_OA21 U69 ( .A(a[6]), .B(n142), .C(n143), .Z(n141) );
  GTECH_AO21 U70 ( .A(n142), .B(a[6]), .C(b[6]), .Z(n143) );
  GTECH_XOR2 U71 ( .A(a[7]), .B(b[7]), .Z(n140) );
  GTECH_OAI22 U72 ( .A(n138), .B(n144), .C(n135), .D(n145), .Z(sum[6]) );
  GTECH_XOR2 U73 ( .A(n146), .B(n142), .Z(n145) );
  GTECH_OA21 U74 ( .A(n147), .B(n148), .C(n149), .Z(n142) );
  GTECH_XOR2 U75 ( .A(n146), .B(n150), .Z(n144) );
  GTECH_XNOR2 U76 ( .A(a[6]), .B(b[6]), .Z(n146) );
  GTECH_OAI22 U77 ( .A(n135), .B(n151), .C(n152), .D(n138), .Z(sum[5]) );
  GTECH_XOR2 U78 ( .A(n153), .B(n154), .Z(n152) );
  GTECH_XOR2 U79 ( .A(n148), .B(n153), .Z(n151) );
  GTECH_OAI21 U80 ( .A(a[5]), .B(b[5]), .C(n155), .Z(n153) );
  GTECH_NOT U81 ( .A(n147), .Z(n155) );
  GTECH_NAND2 U82 ( .A(n156), .B(n157), .Z(sum[4]) );
  GTECH_OAI21 U83 ( .A(n148), .B(n158), .C(n135), .Z(n156) );
  GTECH_OAI22 U84 ( .A(n159), .B(n160), .C(cin), .D(n161), .Z(sum[3]) );
  GTECH_XNOR2 U85 ( .A(n162), .B(n163), .Z(n161) );
  GTECH_OA21 U86 ( .A(a[2]), .B(n164), .C(n165), .Z(n163) );
  GTECH_AO21 U87 ( .A(n164), .B(a[2]), .C(b[2]), .Z(n165) );
  GTECH_XNOR2 U88 ( .A(n166), .B(n162), .Z(n160) );
  GTECH_XOR2 U89 ( .A(a[3]), .B(b[3]), .Z(n162) );
  GTECH_OAI22 U90 ( .A(n159), .B(n167), .C(cin), .D(n168), .Z(sum[2]) );
  GTECH_XNOR2 U91 ( .A(n164), .B(n169), .Z(n168) );
  GTECH_AO21 U92 ( .A(n170), .B(n171), .C(n172), .Z(n164) );
  GTECH_XNOR2 U93 ( .A(n173), .B(n169), .Z(n167) );
  GTECH_XOR2 U94 ( .A(a[2]), .B(b[2]), .Z(n169) );
  GTECH_OAI2N2 U95 ( .A(n174), .B(n175), .C(n176), .D(n174), .Z(sum[1]) );
  GTECH_OAI21 U96 ( .A(cin), .B(n171), .C(n177), .Z(n176) );
  GTECH_AOI21 U97 ( .A(n177), .B(cin), .C(n171), .Z(n175) );
  GTECH_AND2 U98 ( .A(a[0]), .B(b[0]), .Z(n171) );
  GTECH_AND_NOT U99 ( .A(n170), .B(n172), .Z(n174) );
  GTECH_XNOR2 U100 ( .A(n159), .B(n178), .Z(sum[0]) );
  GTECH_OAI21 U101 ( .A(n179), .B(n138), .C(n157), .Z(cout) );
  GTECH_OR3 U102 ( .A(n148), .B(n158), .C(n135), .Z(n157) );
  GTECH_NOT U103 ( .A(n138), .Z(n135) );
  GTECH_NOT U104 ( .A(n154), .Z(n158) );
  GTECH_AND2 U105 ( .A(b[4]), .B(a[4]), .Z(n148) );
  GTECH_AOI2N2 U106 ( .A(n159), .B(n178), .C(n180), .D(n159), .Z(n138) );
  GTECH_AOI21 U107 ( .A(n166), .B(a[3]), .C(n181), .Z(n180) );
  GTECH_OA21 U108 ( .A(a[3]), .B(n166), .C(b[3]), .Z(n181) );
  GTECH_AO21 U109 ( .A(n173), .B(a[2]), .C(n182), .Z(n166) );
  GTECH_OA21 U110 ( .A(a[2]), .B(n173), .C(b[2]), .Z(n182) );
  GTECH_AO21 U111 ( .A(n170), .B(n177), .C(n172), .Z(n173) );
  GTECH_AND2 U112 ( .A(b[1]), .B(a[1]), .Z(n172) );
  GTECH_OR2 U113 ( .A(b[0]), .B(a[0]), .Z(n177) );
  GTECH_OR2 U114 ( .A(a[1]), .B(b[1]), .Z(n170) );
  GTECH_XOR2 U115 ( .A(a[0]), .B(b[0]), .Z(n178) );
  GTECH_NOT U116 ( .A(cin), .Z(n159) );
  GTECH_AOI21 U117 ( .A(n139), .B(a[7]), .C(n183), .Z(n179) );
  GTECH_OA21 U118 ( .A(a[7]), .B(n139), .C(b[7]), .Z(n183) );
  GTECH_AO21 U119 ( .A(a[6]), .B(n150), .C(n184), .Z(n139) );
  GTECH_OA21 U120 ( .A(n150), .B(a[6]), .C(b[6]), .Z(n184) );
  GTECH_OA21 U121 ( .A(n147), .B(n154), .C(n149), .Z(n150) );
  GTECH_OR2 U122 ( .A(b[5]), .B(a[5]), .Z(n149) );
  GTECH_OR2 U123 ( .A(a[4]), .B(b[4]), .Z(n154) );
  GTECH_AND2 U124 ( .A(a[5]), .B(b[5]), .Z(n147) );
endmodule

