
module carry_bypass_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199;

  GTECH_ADD_AB U75 ( .A(n138), .B(n139), .S(sum[9]) );
  GTECH_ADD_AB U76 ( .A(n140), .B(n141), .S(sum[8]) );
  GTECH_XNOR2 U77 ( .A(n142), .B(n143), .Z(sum[7]) );
  GTECH_ADD_AB U78 ( .A(n144), .B(n145), .S(sum[6]) );
  GTECH_ADD_AB U79 ( .A(n146), .B(n147), .S(sum[5]) );
  GTECH_XNOR2 U80 ( .A(n148), .B(n149), .Z(sum[4]) );
  GTECH_XOR3 U81 ( .A(b[3]), .B(a[3]), .C(n150), .Z(sum[3]) );
  GTECH_XOR3 U82 ( .A(b[2]), .B(a[2]), .C(n151), .Z(sum[2]) );
  GTECH_XOR3 U83 ( .A(b[1]), .B(a[1]), .C(n152), .Z(sum[1]) );
  GTECH_XOR3 U84 ( .A(b[15]), .B(a[15]), .C(n153), .Z(sum[15]) );
  GTECH_XOR3 U85 ( .A(b[14]), .B(a[14]), .C(n154), .Z(sum[14]) );
  GTECH_XOR3 U86 ( .A(b[13]), .B(a[13]), .C(n155), .Z(sum[13]) );
  GTECH_XOR3 U87 ( .A(b[12]), .B(a[12]), .C(n156), .Z(sum[12]) );
  GTECH_MUX2 U88 ( .A(n157), .B(n140), .S(n158), .Z(n156) );
  GTECH_OAI2N2 U89 ( .A(n159), .B(n160), .C(n161), .D(b[11]), .Z(n157) );
  GTECH_OR_NOT U90 ( .A(n162), .B(n160), .Z(n161) );
  GTECH_ADD_AB U91 ( .A(n162), .B(n163), .S(sum[11]) );
  GTECH_ADD_AB U92 ( .A(n164), .B(n165), .S(sum[10]) );
  GTECH_XOR3 U93 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_AO21 U94 ( .A(n153), .B(a[15]), .C(n166), .Z(cout) );
  GTECH_NOT U95 ( .A(n167), .Z(n166) );
  GTECH_OAI21 U96 ( .A(a[15]), .B(n153), .C(b[15]), .Z(n167) );
  GTECH_AO21 U97 ( .A(n154), .B(a[14]), .C(n168), .Z(n153) );
  GTECH_NOT U98 ( .A(n169), .Z(n168) );
  GTECH_OAI21 U99 ( .A(a[14]), .B(n154), .C(b[14]), .Z(n169) );
  GTECH_AO21 U100 ( .A(n155), .B(a[13]), .C(n170), .Z(n154) );
  GTECH_NOT U101 ( .A(n171), .Z(n170) );
  GTECH_OAI21 U102 ( .A(a[13]), .B(n155), .C(b[13]), .Z(n171) );
  GTECH_ADD_ABC U103 ( .A(n172), .B(a[12]), .C(b[12]), .COUT(n155) );
  GTECH_MUX2 U104 ( .A(n173), .B(n140), .S(n158), .Z(n172) );
  GTECH_AND4 U105 ( .A(n165), .B(n163), .C(n141), .D(n139), .Z(n158) );
  GTECH_ADD_AB U106 ( .A(b[9]), .B(a[9]), .S(n139) );
  GTECH_ADD_AB U107 ( .A(b[8]), .B(a[8]), .S(n141) );
  GTECH_ADD_AB U108 ( .A(b[11]), .B(a[11]), .S(n163) );
  GTECH_ADD_AB U109 ( .A(b[10]), .B(a[10]), .S(n165) );
  GTECH_MUX2 U110 ( .A(n174), .B(n175), .S(n176), .Z(n140) );
  GTECH_OAI22 U111 ( .A(n142), .B(n177), .C(n178), .D(n179), .Z(n174) );
  GTECH_AND2 U112 ( .A(n142), .B(n177), .Z(n178) );
  GTECH_OAI21 U113 ( .A(n159), .B(n160), .C(n180), .Z(n173) );
  GTECH_OAI21 U114 ( .A(a[11]), .B(n162), .C(b[11]), .Z(n180) );
  GTECH_NOT U115 ( .A(n159), .Z(n162) );
  GTECH_NOT U116 ( .A(a[11]), .Z(n160) );
  GTECH_AOI21 U117 ( .A(n164), .B(a[10]), .C(n181), .Z(n159) );
  GTECH_NOT U118 ( .A(n182), .Z(n181) );
  GTECH_OAI21 U119 ( .A(a[10]), .B(n164), .C(b[10]), .Z(n182) );
  GTECH_AO21 U120 ( .A(n138), .B(a[9]), .C(n183), .Z(n164) );
  GTECH_NOT U121 ( .A(n184), .Z(n183) );
  GTECH_OAI21 U122 ( .A(a[9]), .B(n138), .C(b[9]), .Z(n184) );
  GTECH_ADD_ABC U123 ( .A(n185), .B(a[8]), .C(b[8]), .COUT(n138) );
  GTECH_MUX2 U124 ( .A(n186), .B(n175), .S(n176), .Z(n185) );
  GTECH_AND4 U125 ( .A(n149), .B(n147), .C(n145), .D(n143), .Z(n176) );
  GTECH_ADD_AB U126 ( .A(b[7]), .B(a[7]), .S(n143) );
  GTECH_ADD_AB U127 ( .A(b[6]), .B(a[6]), .S(n145) );
  GTECH_ADD_AB U128 ( .A(b[5]), .B(a[5]), .S(n147) );
  GTECH_ADD_AB U129 ( .A(b[4]), .B(a[4]), .S(n149) );
  GTECH_OAI21 U130 ( .A(n142), .B(n177), .C(n187), .Z(n186) );
  GTECH_AO21 U131 ( .A(n177), .B(n142), .C(n179), .Z(n187) );
  GTECH_NOT U132 ( .A(b[7]), .Z(n179) );
  GTECH_NOT U133 ( .A(a[7]), .Z(n177) );
  GTECH_AOI21 U134 ( .A(n144), .B(a[6]), .C(n188), .Z(n142) );
  GTECH_NOT U135 ( .A(n189), .Z(n188) );
  GTECH_OAI21 U136 ( .A(a[6]), .B(n144), .C(b[6]), .Z(n189) );
  GTECH_AO21 U137 ( .A(n146), .B(a[5]), .C(n190), .Z(n144) );
  GTECH_NOT U138 ( .A(n191), .Z(n190) );
  GTECH_OAI21 U139 ( .A(a[5]), .B(n146), .C(b[5]), .Z(n191) );
  GTECH_OAI21 U140 ( .A(n148), .B(n192), .C(n193), .Z(n146) );
  GTECH_OAI21 U141 ( .A(a[4]), .B(n175), .C(b[4]), .Z(n193) );
  GTECH_NOT U142 ( .A(n148), .Z(n175) );
  GTECH_NOT U143 ( .A(a[4]), .Z(n192) );
  GTECH_AOI21 U144 ( .A(n150), .B(a[3]), .C(n194), .Z(n148) );
  GTECH_NOT U145 ( .A(n195), .Z(n194) );
  GTECH_OAI21 U146 ( .A(a[3]), .B(n150), .C(b[3]), .Z(n195) );
  GTECH_AO21 U147 ( .A(n151), .B(a[2]), .C(n196), .Z(n150) );
  GTECH_NOT U148 ( .A(n197), .Z(n196) );
  GTECH_OAI21 U149 ( .A(a[2]), .B(n151), .C(b[2]), .Z(n197) );
  GTECH_AO21 U150 ( .A(n152), .B(a[1]), .C(n198), .Z(n151) );
  GTECH_NOT U151 ( .A(n199), .Z(n198) );
  GTECH_OAI21 U152 ( .A(a[1]), .B(n152), .C(b[1]), .Z(n199) );
  GTECH_ADD_ABC U153 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n152) );
endmodule

