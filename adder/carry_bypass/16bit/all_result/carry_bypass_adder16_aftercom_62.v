
module carry_bypass_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198;

  GTECH_XOR2 U76 ( .A(n139), .B(n140), .Z(sum[9]) );
  GTECH_XOR2 U77 ( .A(n141), .B(n142), .Z(sum[8]) );
  GTECH_XOR2 U78 ( .A(n143), .B(n144), .Z(sum[7]) );
  GTECH_XOR2 U79 ( .A(n145), .B(n146), .Z(sum[6]) );
  GTECH_XOR2 U80 ( .A(n147), .B(n148), .Z(sum[5]) );
  GTECH_XOR2 U81 ( .A(n149), .B(n150), .Z(sum[4]) );
  GTECH_XOR3 U82 ( .A(b[3]), .B(a[3]), .C(n151), .Z(sum[3]) );
  GTECH_XOR3 U83 ( .A(b[2]), .B(a[2]), .C(n152), .Z(sum[2]) );
  GTECH_XOR3 U84 ( .A(b[1]), .B(a[1]), .C(n153), .Z(sum[1]) );
  GTECH_XOR3 U85 ( .A(b[15]), .B(a[15]), .C(n154), .Z(sum[15]) );
  GTECH_XOR3 U86 ( .A(b[14]), .B(a[14]), .C(n155), .Z(sum[14]) );
  GTECH_XOR3 U87 ( .A(b[13]), .B(a[13]), .C(n156), .Z(sum[13]) );
  GTECH_XOR3 U88 ( .A(b[12]), .B(a[12]), .C(n157), .Z(sum[12]) );
  GTECH_XOR2 U89 ( .A(n158), .B(n159), .Z(sum[11]) );
  GTECH_XOR2 U90 ( .A(n160), .B(n161), .Z(sum[10]) );
  GTECH_XOR3 U91 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_AO21 U92 ( .A(n154), .B(a[15]), .C(n162), .Z(cout) );
  GTECH_NOT U93 ( .A(n163), .Z(n162) );
  GTECH_OAI21 U94 ( .A(a[15]), .B(n154), .C(b[15]), .Z(n163) );
  GTECH_AO21 U95 ( .A(n155), .B(a[14]), .C(n164), .Z(n154) );
  GTECH_NOT U96 ( .A(n165), .Z(n164) );
  GTECH_OAI21 U97 ( .A(a[14]), .B(n155), .C(b[14]), .Z(n165) );
  GTECH_AO21 U98 ( .A(n156), .B(a[13]), .C(n166), .Z(n155) );
  GTECH_NOT U99 ( .A(n167), .Z(n166) );
  GTECH_OAI21 U100 ( .A(a[13]), .B(n156), .C(b[13]), .Z(n167) );
  GTECH_AO21 U101 ( .A(n157), .B(a[12]), .C(n168), .Z(n156) );
  GTECH_NOT U102 ( .A(n169), .Z(n168) );
  GTECH_OAI21 U103 ( .A(a[12]), .B(n157), .C(b[12]), .Z(n169) );
  GTECH_MUX2 U104 ( .A(n170), .B(n141), .S(n171), .Z(n157) );
  GTECH_AND4 U105 ( .A(n160), .B(n158), .C(n142), .D(n139), .Z(n171) );
  GTECH_XOR2 U106 ( .A(a[9]), .B(b[9]), .Z(n139) );
  GTECH_XOR2 U107 ( .A(a[8]), .B(b[8]), .Z(n142) );
  GTECH_XOR2 U108 ( .A(a[11]), .B(b[11]), .Z(n158) );
  GTECH_XOR2 U109 ( .A(a[10]), .B(b[10]), .Z(n160) );
  GTECH_NOT U110 ( .A(n172), .Z(n170) );
  GTECH_OAI21 U111 ( .A(a[11]), .B(n159), .C(n173), .Z(n172) );
  GTECH_AO21 U112 ( .A(n159), .B(a[11]), .C(b[11]), .Z(n173) );
  GTECH_AO21 U113 ( .A(n161), .B(a[10]), .C(n174), .Z(n159) );
  GTECH_NOT U114 ( .A(n175), .Z(n174) );
  GTECH_OAI21 U115 ( .A(a[10]), .B(n161), .C(b[10]), .Z(n175) );
  GTECH_AO21 U116 ( .A(n140), .B(a[9]), .C(n176), .Z(n161) );
  GTECH_NOT U117 ( .A(n177), .Z(n176) );
  GTECH_OAI21 U118 ( .A(a[9]), .B(n140), .C(b[9]), .Z(n177) );
  GTECH_AO21 U119 ( .A(n141), .B(a[8]), .C(n178), .Z(n140) );
  GTECH_NOT U120 ( .A(n179), .Z(n178) );
  GTECH_OAI21 U121 ( .A(a[8]), .B(n141), .C(b[8]), .Z(n179) );
  GTECH_MUX2 U122 ( .A(n180), .B(n150), .S(n181), .Z(n141) );
  GTECH_AND4 U123 ( .A(n149), .B(n147), .C(n146), .D(n143), .Z(n181) );
  GTECH_XOR2 U124 ( .A(a[7]), .B(b[7]), .Z(n143) );
  GTECH_XOR2 U125 ( .A(a[6]), .B(b[6]), .Z(n146) );
  GTECH_XOR2 U126 ( .A(a[5]), .B(b[5]), .Z(n147) );
  GTECH_XOR2 U127 ( .A(a[4]), .B(b[4]), .Z(n149) );
  GTECH_NOT U128 ( .A(n182), .Z(n180) );
  GTECH_OAI21 U129 ( .A(a[7]), .B(n144), .C(n183), .Z(n182) );
  GTECH_AO21 U130 ( .A(n144), .B(a[7]), .C(b[7]), .Z(n183) );
  GTECH_AO21 U131 ( .A(n145), .B(a[6]), .C(n184), .Z(n144) );
  GTECH_NOT U132 ( .A(n185), .Z(n184) );
  GTECH_OAI21 U133 ( .A(n145), .B(a[6]), .C(b[6]), .Z(n185) );
  GTECH_AOI21 U134 ( .A(n186), .B(n187), .C(n188), .Z(n145) );
  GTECH_AOI21 U135 ( .A(n148), .B(a[5]), .C(b[5]), .Z(n188) );
  GTECH_NOT U136 ( .A(n148), .Z(n187) );
  GTECH_AO21 U137 ( .A(n150), .B(a[4]), .C(n189), .Z(n148) );
  GTECH_NOT U138 ( .A(n190), .Z(n189) );
  GTECH_OAI21 U139 ( .A(a[4]), .B(n150), .C(b[4]), .Z(n190) );
  GTECH_AO21 U140 ( .A(n151), .B(a[3]), .C(n191), .Z(n150) );
  GTECH_NOT U141 ( .A(n192), .Z(n191) );
  GTECH_OAI21 U142 ( .A(a[3]), .B(n151), .C(b[3]), .Z(n192) );
  GTECH_AO21 U143 ( .A(n152), .B(a[2]), .C(n193), .Z(n151) );
  GTECH_NOT U144 ( .A(n194), .Z(n193) );
  GTECH_OAI21 U145 ( .A(a[2]), .B(n152), .C(b[2]), .Z(n194) );
  GTECH_AO21 U146 ( .A(n153), .B(a[1]), .C(n195), .Z(n152) );
  GTECH_NOT U147 ( .A(n196), .Z(n195) );
  GTECH_OAI21 U148 ( .A(a[1]), .B(n153), .C(b[1]), .Z(n196) );
  GTECH_AO21 U149 ( .A(a[0]), .B(b[0]), .C(n197), .Z(n153) );
  GTECH_NOT U150 ( .A(n198), .Z(n197) );
  GTECH_OAI21 U151 ( .A(a[0]), .B(b[0]), .C(cin), .Z(n198) );
  GTECH_NOT U152 ( .A(a[5]), .Z(n186) );
endmodule

