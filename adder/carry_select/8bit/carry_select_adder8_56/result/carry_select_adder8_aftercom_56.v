
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
         n178, n179, n180, n181;

  GTECH_MUX2 U65 ( .A(n134), .B(n135), .S(n136), .Z(sum[7]) );
  GTECH_XOR2 U66 ( .A(n137), .B(n138), .Z(n135) );
  GTECH_AOI21 U67 ( .A(n139), .B(n140), .C(n141), .Z(n138) );
  GTECH_XOR2 U68 ( .A(n137), .B(n142), .Z(n134) );
  GTECH_XOR2 U69 ( .A(n143), .B(b[7]), .Z(n137) );
  GTECH_MUX2 U70 ( .A(n144), .B(n145), .S(n146), .Z(sum[6]) );
  GTECH_XOR2 U71 ( .A(n147), .B(n148), .Z(n145) );
  GTECH_XOR2 U72 ( .A(n140), .B(n147), .Z(n144) );
  GTECH_AND_NOT U73 ( .A(n139), .B(n141), .Z(n147) );
  GTECH_AO21 U74 ( .A(n149), .B(n150), .C(n151), .Z(n140) );
  GTECH_MUX2 U75 ( .A(n152), .B(n153), .S(n154), .Z(sum[5]) );
  GTECH_AOI21 U76 ( .A(n155), .B(n146), .C(n150), .Z(n154) );
  GTECH_XOR2 U77 ( .A(b[5]), .B(a[5]), .Z(n153) );
  GTECH_OR_NOT U78 ( .A(n151), .B(n149), .Z(n152) );
  GTECH_OAI21 U79 ( .A(n156), .B(n136), .C(n157), .Z(sum[4]) );
  GTECH_AND_NOT U80 ( .A(n155), .B(n150), .Z(n156) );
  GTECH_MUX2 U81 ( .A(n158), .B(n159), .S(cin), .Z(sum[3]) );
  GTECH_XOR2 U82 ( .A(n160), .B(n161), .Z(n159) );
  GTECH_XOR2 U83 ( .A(n162), .B(n160), .Z(n158) );
  GTECH_XOR2 U84 ( .A(a[3]), .B(b[3]), .Z(n160) );
  GTECH_OA21 U85 ( .A(a[2]), .B(n163), .C(n164), .Z(n162) );
  GTECH_AO21 U86 ( .A(n163), .B(a[2]), .C(b[2]), .Z(n164) );
  GTECH_MUX2 U87 ( .A(n165), .B(n166), .S(cin), .Z(sum[2]) );
  GTECH_XOR2 U88 ( .A(n167), .B(n168), .Z(n166) );
  GTECH_XOR2 U89 ( .A(n168), .B(n163), .Z(n165) );
  GTECH_ADD_ABC U90 ( .A(a[1]), .B(n169), .C(b[1]), .COUT(n163) );
  GTECH_XOR2 U91 ( .A(a[2]), .B(b[2]), .Z(n168) );
  GTECH_MUX2 U92 ( .A(n170), .B(n171), .S(n172), .Z(sum[1]) );
  GTECH_XOR2 U93 ( .A(b[1]), .B(a[1]), .Z(n172) );
  GTECH_OAI21 U94 ( .A(cin), .B(n169), .C(n173), .Z(n171) );
  GTECH_AO21 U95 ( .A(n173), .B(cin), .C(n169), .Z(n170) );
  GTECH_AND2 U96 ( .A(a[0]), .B(b[0]), .Z(n169) );
  GTECH_XOR2 U97 ( .A(cin), .B(n174), .Z(sum[0]) );
  GTECH_OAI21 U98 ( .A(n175), .B(n136), .C(n157), .Z(cout) );
  GTECH_OR3 U99 ( .A(n176), .B(n150), .C(n146), .Z(n157) );
  GTECH_AND2 U100 ( .A(a[4]), .B(b[4]), .Z(n150) );
  GTECH_NOT U101 ( .A(n146), .Z(n136) );
  GTECH_MUX2 U102 ( .A(n174), .B(n177), .S(cin), .Z(n146) );
  GTECH_AO21 U103 ( .A(n161), .B(a[3]), .C(n178), .Z(n177) );
  GTECH_OA21 U104 ( .A(a[3]), .B(n161), .C(b[3]), .Z(n178) );
  GTECH_ADD_ABC U105 ( .A(n167), .B(a[2]), .C(b[2]), .COUT(n161) );
  GTECH_OA21 U106 ( .A(a[1]), .B(n173), .C(n179), .Z(n167) );
  GTECH_AO21 U107 ( .A(n173), .B(a[1]), .C(b[1]), .Z(n179) );
  GTECH_OR2 U108 ( .A(a[0]), .B(b[0]), .Z(n173) );
  GTECH_XOR2 U109 ( .A(a[0]), .B(b[0]), .Z(n174) );
  GTECH_OA21 U110 ( .A(n142), .B(n143), .C(n180), .Z(n175) );
  GTECH_OAI21 U111 ( .A(a[7]), .B(n181), .C(b[7]), .Z(n180) );
  GTECH_NOT U112 ( .A(a[7]), .Z(n143) );
  GTECH_NOT U113 ( .A(n181), .Z(n142) );
  GTECH_AO21 U114 ( .A(n148), .B(n139), .C(n141), .Z(n181) );
  GTECH_AND2 U115 ( .A(a[6]), .B(b[6]), .Z(n141) );
  GTECH_OR2 U116 ( .A(b[6]), .B(a[6]), .Z(n139) );
  GTECH_AO21 U117 ( .A(n149), .B(n155), .C(n151), .Z(n148) );
  GTECH_AND2 U118 ( .A(a[5]), .B(b[5]), .Z(n151) );
  GTECH_NOT U119 ( .A(n176), .Z(n155) );
  GTECH_NOR2 U120 ( .A(b[4]), .B(a[4]), .Z(n176) );
  GTECH_OR2 U121 ( .A(b[5]), .B(a[5]), .Z(n149) );
endmodule

