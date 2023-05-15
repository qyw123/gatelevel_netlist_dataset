
module carry_bypass_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199;

  GTECH_XNOR2 U78 ( .A(n141), .B(n142), .Z(sum[9]) );
  GTECH_XNOR2 U79 ( .A(n143), .B(n144), .Z(sum[8]) );
  GTECH_XOR2 U80 ( .A(n145), .B(n146), .Z(sum[7]) );
  GTECH_XOR2 U81 ( .A(n147), .B(n148), .Z(sum[6]) );
  GTECH_XOR2 U82 ( .A(n149), .B(n150), .Z(sum[5]) );
  GTECH_XNOR2 U83 ( .A(n151), .B(n152), .Z(sum[4]) );
  GTECH_XNOR3 U84 ( .A(b[3]), .B(a[3]), .C(n153), .Z(sum[3]) );
  GTECH_XNOR3 U85 ( .A(b[2]), .B(a[2]), .C(n154), .Z(sum[2]) );
  GTECH_XNOR3 U86 ( .A(b[1]), .B(a[1]), .C(n155), .Z(sum[1]) );
  GTECH_XNOR3 U87 ( .A(b[15]), .B(a[15]), .C(n156), .Z(sum[15]) );
  GTECH_XNOR3 U88 ( .A(b[14]), .B(a[14]), .C(n157), .Z(sum[14]) );
  GTECH_XNOR3 U89 ( .A(b[13]), .B(a[13]), .C(n158), .Z(sum[13]) );
  GTECH_XOR3 U90 ( .A(b[12]), .B(a[12]), .C(n159), .Z(sum[12]) );
  GTECH_XOR2 U91 ( .A(n160), .B(n161), .Z(sum[11]) );
  GTECH_XOR2 U92 ( .A(n162), .B(n163), .Z(sum[10]) );
  GTECH_XOR3 U93 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_OAI21 U94 ( .A(n156), .B(n164), .C(n165), .Z(cout) );
  GTECH_OAI21 U95 ( .A(a[15]), .B(n166), .C(b[15]), .Z(n165) );
  GTECH_NOT U96 ( .A(n156), .Z(n166) );
  GTECH_NOT U97 ( .A(a[15]), .Z(n164) );
  GTECH_AOI21 U98 ( .A(n167), .B(a[14]), .C(n168), .Z(n156) );
  GTECH_OA21 U99 ( .A(a[14]), .B(n167), .C(b[14]), .Z(n168) );
  GTECH_NOT U100 ( .A(n157), .Z(n167) );
  GTECH_AOI21 U101 ( .A(n169), .B(a[13]), .C(n170), .Z(n157) );
  GTECH_OA21 U102 ( .A(a[13]), .B(n169), .C(b[13]), .Z(n170) );
  GTECH_NOT U103 ( .A(n158), .Z(n169) );
  GTECH_AOI21 U104 ( .A(n159), .B(a[12]), .C(n171), .Z(n158) );
  GTECH_OA21 U105 ( .A(a[12]), .B(n159), .C(b[12]), .Z(n171) );
  GTECH_MUX2 U106 ( .A(n172), .B(n143), .S(n173), .Z(n159) );
  GTECH_NOR4 U107 ( .A(n162), .B(n160), .C(n144), .D(n142), .Z(n173) );
  GTECH_XNOR2 U108 ( .A(a[9]), .B(b[9]), .Z(n142) );
  GTECH_XNOR2 U109 ( .A(a[8]), .B(b[8]), .Z(n144) );
  GTECH_XNOR2 U110 ( .A(a[11]), .B(b[11]), .Z(n160) );
  GTECH_XNOR2 U111 ( .A(a[10]), .B(b[10]), .Z(n162) );
  GTECH_AOI21 U112 ( .A(n174), .B(n161), .C(n175), .Z(n172) );
  GTECH_OA21 U113 ( .A(n161), .B(n174), .C(n176), .Z(n175) );
  GTECH_NOT U114 ( .A(b[11]), .Z(n176) );
  GTECH_AOI21 U115 ( .A(n177), .B(a[10]), .C(n178), .Z(n161) );
  GTECH_OA21 U116 ( .A(a[10]), .B(n177), .C(b[10]), .Z(n178) );
  GTECH_NOT U117 ( .A(n163), .Z(n177) );
  GTECH_AOI21 U118 ( .A(a[9]), .B(n141), .C(n179), .Z(n163) );
  GTECH_OA21 U119 ( .A(n141), .B(a[9]), .C(b[9]), .Z(n179) );
  GTECH_OA21 U120 ( .A(a[8]), .B(n143), .C(n180), .Z(n141) );
  GTECH_NOT U121 ( .A(n181), .Z(n180) );
  GTECH_AOI21 U122 ( .A(n143), .B(a[8]), .C(b[8]), .Z(n181) );
  GTECH_MUX2 U123 ( .A(n182), .B(n183), .S(n184), .Z(n143) );
  GTECH_AND4 U124 ( .A(n151), .B(n149), .C(n147), .D(n145), .Z(n184) );
  GTECH_XNOR2 U125 ( .A(n185), .B(b[7]), .Z(n145) );
  GTECH_XOR2 U126 ( .A(a[6]), .B(b[6]), .Z(n147) );
  GTECH_XOR2 U127 ( .A(a[5]), .B(b[5]), .Z(n149) );
  GTECH_XOR2 U128 ( .A(a[4]), .B(b[4]), .Z(n151) );
  GTECH_AOI21 U129 ( .A(n185), .B(n186), .C(n187), .Z(n182) );
  GTECH_AOI21 U130 ( .A(n146), .B(a[7]), .C(b[7]), .Z(n187) );
  GTECH_NOT U131 ( .A(n186), .Z(n146) );
  GTECH_AOI21 U132 ( .A(n148), .B(a[6]), .C(n188), .Z(n186) );
  GTECH_OA21 U133 ( .A(a[6]), .B(n148), .C(b[6]), .Z(n188) );
  GTECH_NOT U134 ( .A(n189), .Z(n148) );
  GTECH_AOI21 U135 ( .A(n150), .B(a[5]), .C(n190), .Z(n189) );
  GTECH_OA21 U136 ( .A(a[5]), .B(n150), .C(b[5]), .Z(n190) );
  GTECH_OAI21 U137 ( .A(n152), .B(n191), .C(n192), .Z(n150) );
  GTECH_OAI21 U138 ( .A(a[4]), .B(n183), .C(b[4]), .Z(n192) );
  GTECH_NOT U139 ( .A(n152), .Z(n183) );
  GTECH_NOT U140 ( .A(a[4]), .Z(n191) );
  GTECH_AOI21 U141 ( .A(n193), .B(a[3]), .C(n194), .Z(n152) );
  GTECH_OA21 U142 ( .A(a[3]), .B(n193), .C(b[3]), .Z(n194) );
  GTECH_NOT U143 ( .A(n153), .Z(n193) );
  GTECH_AOI21 U144 ( .A(n195), .B(a[2]), .C(n196), .Z(n153) );
  GTECH_OA21 U145 ( .A(a[2]), .B(n195), .C(b[2]), .Z(n196) );
  GTECH_NOT U146 ( .A(n154), .Z(n195) );
  GTECH_AOI21 U147 ( .A(n197), .B(a[1]), .C(n198), .Z(n154) );
  GTECH_OA21 U148 ( .A(a[1]), .B(n197), .C(b[1]), .Z(n198) );
  GTECH_NOT U149 ( .A(n155), .Z(n197) );
  GTECH_AOI21 U150 ( .A(a[0]), .B(b[0]), .C(n199), .Z(n155) );
  GTECH_OA21 U151 ( .A(a[0]), .B(b[0]), .C(cin), .Z(n199) );
  GTECH_NOT U152 ( .A(a[7]), .Z(n185) );
  GTECH_NOT U153 ( .A(a[11]), .Z(n174) );
endmodule

