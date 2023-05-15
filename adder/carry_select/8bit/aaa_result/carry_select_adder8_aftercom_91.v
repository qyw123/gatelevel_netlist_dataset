
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
         n176, n177, n178, n179, n180, n181;

  GTECH_OAI22 U63 ( .A(n132), .B(n133), .C(n134), .D(n135), .Z(sum[7]) );
  GTECH_XNOR2 U64 ( .A(n136), .B(n137), .Z(n134) );
  GTECH_AOI21 U65 ( .A(n138), .B(n139), .C(n140), .Z(n136) );
  GTECH_XOR2 U66 ( .A(n141), .B(n137), .Z(n132) );
  GTECH_XNOR2 U67 ( .A(a[7]), .B(b[7]), .Z(n137) );
  GTECH_OAI22 U68 ( .A(n142), .B(n133), .C(n143), .D(n135), .Z(sum[6]) );
  GTECH_XOR2 U69 ( .A(n144), .B(n139), .Z(n143) );
  GTECH_AO21 U70 ( .A(n145), .B(n146), .C(n147), .Z(n139) );
  GTECH_XOR2 U71 ( .A(n144), .B(n148), .Z(n142) );
  GTECH_OR_NOT U72 ( .A(n140), .B(n138), .Z(n144) );
  GTECH_OAI21 U73 ( .A(n149), .B(n150), .C(n151), .Z(sum[5]) );
  GTECH_OAI21 U74 ( .A(n147), .B(n152), .C(n149), .Z(n151) );
  GTECH_NOT U75 ( .A(n145), .Z(n152) );
  GTECH_XNOR2 U76 ( .A(a[5]), .B(b[5]), .Z(n150) );
  GTECH_AO21 U77 ( .A(n153), .B(n135), .C(n146), .Z(n149) );
  GTECH_NAND2 U78 ( .A(n154), .B(n155), .Z(sum[4]) );
  GTECH_OAI21 U79 ( .A(n156), .B(n146), .C(n135), .Z(n154) );
  GTECH_OAI22 U80 ( .A(n157), .B(n158), .C(cin), .D(n159), .Z(sum[3]) );
  GTECH_XNOR2 U81 ( .A(n160), .B(n161), .Z(n159) );
  GTECH_AOI21 U82 ( .A(n162), .B(n163), .C(n164), .Z(n160) );
  GTECH_XOR2 U83 ( .A(n165), .B(n161), .Z(n158) );
  GTECH_XNOR2 U84 ( .A(a[3]), .B(b[3]), .Z(n161) );
  GTECH_OAI22 U85 ( .A(n157), .B(n166), .C(cin), .D(n167), .Z(sum[2]) );
  GTECH_XOR2 U86 ( .A(n168), .B(n163), .Z(n167) );
  GTECH_AO21 U87 ( .A(n169), .B(n170), .C(n171), .Z(n163) );
  GTECH_XOR2 U88 ( .A(n172), .B(n168), .Z(n166) );
  GTECH_OR_NOT U89 ( .A(n164), .B(n162), .Z(n168) );
  GTECH_OAI2N2 U90 ( .A(n173), .B(n174), .C(n175), .D(n174), .Z(sum[1]) );
  GTECH_AO21 U91 ( .A(n176), .B(cin), .C(n170), .Z(n175) );
  GTECH_OR_NOT U92 ( .A(n171), .B(n169), .Z(n174) );
  GTECH_OA21 U93 ( .A(cin), .B(n170), .C(n176), .Z(n173) );
  GTECH_AND2 U94 ( .A(a[0]), .B(b[0]), .Z(n170) );
  GTECH_XNOR2 U95 ( .A(cin), .B(n177), .Z(sum[0]) );
  GTECH_OAI21 U96 ( .A(n178), .B(n133), .C(n155), .Z(cout) );
  GTECH_OR3 U97 ( .A(n156), .B(n146), .C(n135), .Z(n155) );
  GTECH_AND2 U98 ( .A(a[4]), .B(b[4]), .Z(n146) );
  GTECH_NOT U99 ( .A(n153), .Z(n156) );
  GTECH_NOT U100 ( .A(n135), .Z(n133) );
  GTECH_AOI2N2 U101 ( .A(n157), .B(n177), .C(n179), .D(n157), .Z(n135) );
  GTECH_OA21 U102 ( .A(a[3]), .B(n165), .C(n180), .Z(n179) );
  GTECH_AO21 U103 ( .A(n165), .B(a[3]), .C(b[3]), .Z(n180) );
  GTECH_AO21 U104 ( .A(n172), .B(n162), .C(n164), .Z(n165) );
  GTECH_AND2 U105 ( .A(a[2]), .B(b[2]), .Z(n164) );
  GTECH_OR2 U106 ( .A(a[2]), .B(b[2]), .Z(n162) );
  GTECH_AO21 U107 ( .A(n176), .B(n169), .C(n171), .Z(n172) );
  GTECH_AND2 U108 ( .A(a[1]), .B(b[1]), .Z(n171) );
  GTECH_OR2 U109 ( .A(a[1]), .B(b[1]), .Z(n169) );
  GTECH_OR2 U110 ( .A(a[0]), .B(b[0]), .Z(n176) );
  GTECH_XNOR2 U111 ( .A(a[0]), .B(b[0]), .Z(n177) );
  GTECH_NOT U112 ( .A(cin), .Z(n157) );
  GTECH_AOI21 U113 ( .A(n141), .B(a[7]), .C(n181), .Z(n178) );
  GTECH_OA21 U114 ( .A(a[7]), .B(n141), .C(b[7]), .Z(n181) );
  GTECH_AO21 U115 ( .A(n138), .B(n148), .C(n140), .Z(n141) );
  GTECH_AND2 U116 ( .A(a[6]), .B(b[6]), .Z(n140) );
  GTECH_AO21 U117 ( .A(n145), .B(n153), .C(n147), .Z(n148) );
  GTECH_AND2 U118 ( .A(b[5]), .B(a[5]), .Z(n147) );
  GTECH_OR2 U119 ( .A(b[4]), .B(a[4]), .Z(n153) );
  GTECH_OR2 U120 ( .A(b[5]), .B(a[5]), .Z(n145) );
  GTECH_OR2 U121 ( .A(a[6]), .B(b[6]), .Z(n138) );
endmodule

