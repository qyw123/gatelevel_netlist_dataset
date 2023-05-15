
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
         n179, n180, n181, n182;

  GTECH_OAI22 U66 ( .A(n135), .B(n136), .C(n137), .D(n138), .Z(sum[7]) );
  GTECH_XNOR2 U67 ( .A(n139), .B(n140), .Z(n137) );
  GTECH_XNOR2 U68 ( .A(n140), .B(n141), .Z(n136) );
  GTECH_ADD_ABC U69 ( .A(a[6]), .B(n142), .C(b[6]), .COUT(n141) );
  GTECH_XOR2 U70 ( .A(a[7]), .B(b[7]), .Z(n140) );
  GTECH_OAI22 U71 ( .A(n138), .B(n143), .C(n135), .D(n144), .Z(sum[6]) );
  GTECH_XOR2 U72 ( .A(n145), .B(n142), .Z(n144) );
  GTECH_OA21 U73 ( .A(n146), .B(n147), .C(n148), .Z(n142) );
  GTECH_XOR2 U74 ( .A(n145), .B(n149), .Z(n143) );
  GTECH_XNOR2 U75 ( .A(a[6]), .B(b[6]), .Z(n145) );
  GTECH_OAI22 U76 ( .A(n135), .B(n150), .C(n151), .D(n138), .Z(sum[5]) );
  GTECH_XOR2 U77 ( .A(n152), .B(n153), .Z(n151) );
  GTECH_XOR2 U78 ( .A(n147), .B(n152), .Z(n150) );
  GTECH_OAI21 U79 ( .A(a[5]), .B(b[5]), .C(n154), .Z(n152) );
  GTECH_NOT U80 ( .A(n146), .Z(n154) );
  GTECH_NAND2 U81 ( .A(n155), .B(n156), .Z(sum[4]) );
  GTECH_OAI21 U82 ( .A(n147), .B(n157), .C(n135), .Z(n155) );
  GTECH_OAI22 U83 ( .A(n158), .B(n159), .C(cin), .D(n160), .Z(sum[3]) );
  GTECH_XNOR2 U84 ( .A(n161), .B(n162), .Z(n160) );
  GTECH_OA21 U85 ( .A(a[2]), .B(n163), .C(n164), .Z(n162) );
  GTECH_AO21 U86 ( .A(n163), .B(a[2]), .C(b[2]), .Z(n164) );
  GTECH_XNOR2 U87 ( .A(n165), .B(n161), .Z(n159) );
  GTECH_XOR2 U88 ( .A(a[3]), .B(b[3]), .Z(n161) );
  GTECH_OAI22 U89 ( .A(n158), .B(n166), .C(cin), .D(n167), .Z(sum[2]) );
  GTECH_XNOR2 U90 ( .A(n163), .B(n168), .Z(n167) );
  GTECH_AO21 U91 ( .A(n169), .B(n170), .C(n171), .Z(n163) );
  GTECH_XNOR2 U92 ( .A(n172), .B(n168), .Z(n166) );
  GTECH_XOR2 U93 ( .A(a[2]), .B(b[2]), .Z(n168) );
  GTECH_OAI2N2 U94 ( .A(n173), .B(n174), .C(n175), .D(n173), .Z(sum[1]) );
  GTECH_OAI21 U95 ( .A(cin), .B(n170), .C(n176), .Z(n175) );
  GTECH_AOI21 U96 ( .A(n176), .B(cin), .C(n170), .Z(n174) );
  GTECH_AND2 U97 ( .A(a[0]), .B(b[0]), .Z(n170) );
  GTECH_AND_NOT U98 ( .A(n169), .B(n171), .Z(n173) );
  GTECH_XNOR2 U99 ( .A(n158), .B(n177), .Z(sum[0]) );
  GTECH_OAI21 U100 ( .A(n178), .B(n138), .C(n156), .Z(cout) );
  GTECH_OR3 U101 ( .A(n157), .B(n147), .C(n135), .Z(n156) );
  GTECH_NOT U102 ( .A(n138), .Z(n135) );
  GTECH_AND2 U103 ( .A(b[4]), .B(a[4]), .Z(n147) );
  GTECH_NOT U104 ( .A(n153), .Z(n157) );
  GTECH_AOI2N2 U105 ( .A(n158), .B(n177), .C(n179), .D(n158), .Z(n138) );
  GTECH_AOI21 U106 ( .A(n165), .B(a[3]), .C(n180), .Z(n179) );
  GTECH_OA21 U107 ( .A(a[3]), .B(n165), .C(b[3]), .Z(n180) );
  GTECH_AO21 U108 ( .A(n172), .B(a[2]), .C(n181), .Z(n165) );
  GTECH_OA21 U109 ( .A(a[2]), .B(n172), .C(b[2]), .Z(n181) );
  GTECH_AO21 U110 ( .A(n169), .B(n176), .C(n171), .Z(n172) );
  GTECH_AND2 U111 ( .A(b[1]), .B(a[1]), .Z(n171) );
  GTECH_OR2 U112 ( .A(b[0]), .B(a[0]), .Z(n176) );
  GTECH_OR2 U113 ( .A(a[1]), .B(b[1]), .Z(n169) );
  GTECH_XOR2 U114 ( .A(a[0]), .B(b[0]), .Z(n177) );
  GTECH_NOT U115 ( .A(cin), .Z(n158) );
  GTECH_AOI21 U116 ( .A(n139), .B(a[7]), .C(n182), .Z(n178) );
  GTECH_OA21 U117 ( .A(a[7]), .B(n139), .C(b[7]), .Z(n182) );
  GTECH_ADD_ABC U118 ( .A(a[6]), .B(n149), .C(b[6]), .COUT(n139) );
  GTECH_OA21 U119 ( .A(n146), .B(n153), .C(n148), .Z(n149) );
  GTECH_OR2 U120 ( .A(b[5]), .B(a[5]), .Z(n148) );
  GTECH_OR2 U121 ( .A(a[4]), .B(b[4]), .Z(n153) );
  GTECH_AND2 U122 ( .A(a[5]), .B(b[5]), .Z(n146) );
endmodule

