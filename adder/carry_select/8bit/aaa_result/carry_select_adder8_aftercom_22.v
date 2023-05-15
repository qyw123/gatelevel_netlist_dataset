
module carry_select_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177;

  GTECH_OAI22 U61 ( .A(n130), .B(n131), .C(n132), .D(n133), .Z(sum[7]) );
  GTECH_XOR2 U62 ( .A(n134), .B(n135), .Z(n133) );
  GTECH_OA21 U63 ( .A(a[6]), .B(n136), .C(n137), .Z(n135) );
  GTECH_AO21 U64 ( .A(n136), .B(a[6]), .C(b[6]), .Z(n137) );
  GTECH_XOR2 U65 ( .A(n138), .B(n134), .Z(n130) );
  GTECH_XNOR2 U66 ( .A(a[7]), .B(b[7]), .Z(n134) );
  GTECH_OAI22 U67 ( .A(n139), .B(n131), .C(n140), .D(n132), .Z(sum[6]) );
  GTECH_XOR2 U68 ( .A(n136), .B(n141), .Z(n140) );
  GTECH_OAI2N2 U69 ( .A(n142), .B(n143), .C(a[5]), .D(b[5]), .Z(n136) );
  GTECH_XOR2 U70 ( .A(n144), .B(n141), .Z(n139) );
  GTECH_XNOR2 U71 ( .A(a[6]), .B(b[6]), .Z(n141) );
  GTECH_OAI22 U72 ( .A(n145), .B(n131), .C(n132), .D(n146), .Z(sum[5]) );
  GTECH_XOR2 U73 ( .A(n147), .B(n143), .Z(n146) );
  GTECH_NOT U74 ( .A(n148), .Z(n143) );
  GTECH_XOR2 U75 ( .A(n149), .B(n147), .Z(n145) );
  GTECH_AOI21 U76 ( .A(a[5]), .B(b[5]), .C(n142), .Z(n147) );
  GTECH_NAND2 U77 ( .A(n150), .B(n151), .Z(sum[4]) );
  GTECH_OAI21 U78 ( .A(n148), .B(n149), .C(n132), .Z(n150) );
  GTECH_OAI22 U79 ( .A(n152), .B(n153), .C(cin), .D(n154), .Z(sum[3]) );
  GTECH_XOR2 U80 ( .A(n155), .B(n156), .Z(n154) );
  GTECH_OA21 U81 ( .A(a[2]), .B(n157), .C(n158), .Z(n156) );
  GTECH_AO21 U82 ( .A(n157), .B(a[2]), .C(b[2]), .Z(n158) );
  GTECH_XOR2 U83 ( .A(n159), .B(n155), .Z(n153) );
  GTECH_XNOR2 U84 ( .A(a[3]), .B(b[3]), .Z(n155) );
  GTECH_OAI22 U85 ( .A(n152), .B(n160), .C(cin), .D(n161), .Z(sum[2]) );
  GTECH_XOR2 U86 ( .A(n157), .B(n162), .Z(n161) );
  GTECH_AO21 U87 ( .A(n163), .B(n164), .C(n165), .Z(n157) );
  GTECH_XOR2 U88 ( .A(n166), .B(n162), .Z(n160) );
  GTECH_XNOR2 U89 ( .A(a[2]), .B(b[2]), .Z(n162) );
  GTECH_OAI2N2 U90 ( .A(n167), .B(n168), .C(n169), .D(n168), .Z(sum[1]) );
  GTECH_OAI21 U91 ( .A(cin), .B(n164), .C(n170), .Z(n169) );
  GTECH_AND_NOT U92 ( .A(n163), .B(n165), .Z(n168) );
  GTECH_AOI21 U93 ( .A(n170), .B(cin), .C(n164), .Z(n167) );
  GTECH_XOR2 U94 ( .A(cin), .B(n171), .Z(sum[0]) );
  GTECH_OAI21 U95 ( .A(n172), .B(n131), .C(n151), .Z(cout) );
  GTECH_OR3 U96 ( .A(n148), .B(n149), .C(n132), .Z(n151) );
  GTECH_AND2 U97 ( .A(a[4]), .B(b[4]), .Z(n148) );
  GTECH_NOT U98 ( .A(n132), .Z(n131) );
  GTECH_OA22 U99 ( .A(n173), .B(n152), .C(cin), .D(n171), .Z(n132) );
  GTECH_AND_NOT U100 ( .A(n170), .B(n164), .Z(n171) );
  GTECH_AND2 U101 ( .A(a[0]), .B(b[0]), .Z(n164) );
  GTECH_NOT U102 ( .A(cin), .Z(n152) );
  GTECH_OA21 U103 ( .A(a[3]), .B(n159), .C(n174), .Z(n173) );
  GTECH_AO21 U104 ( .A(n159), .B(a[3]), .C(b[3]), .Z(n174) );
  GTECH_AO21 U105 ( .A(n166), .B(a[2]), .C(n175), .Z(n159) );
  GTECH_OA21 U106 ( .A(a[2]), .B(n166), .C(b[2]), .Z(n175) );
  GTECH_AO21 U107 ( .A(n170), .B(n163), .C(n165), .Z(n166) );
  GTECH_AND2 U108 ( .A(b[1]), .B(a[1]), .Z(n165) );
  GTECH_OR2 U109 ( .A(a[1]), .B(b[1]), .Z(n163) );
  GTECH_OR2 U110 ( .A(b[0]), .B(a[0]), .Z(n170) );
  GTECH_AOI21 U111 ( .A(n138), .B(a[7]), .C(n176), .Z(n172) );
  GTECH_OA21 U112 ( .A(a[7]), .B(n138), .C(b[7]), .Z(n176) );
  GTECH_AO21 U113 ( .A(n144), .B(a[6]), .C(n177), .Z(n138) );
  GTECH_OA21 U114 ( .A(a[6]), .B(n144), .C(b[6]), .Z(n177) );
  GTECH_OAI2N2 U115 ( .A(n149), .B(n142), .C(a[5]), .D(b[5]), .Z(n144) );
  GTECH_NOR2 U116 ( .A(a[5]), .B(b[5]), .Z(n142) );
  GTECH_NOR2 U117 ( .A(b[4]), .B(a[4]), .Z(n149) );
endmodule

