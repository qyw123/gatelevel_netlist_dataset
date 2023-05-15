
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
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202;

  GTECH_XNOR2 U75 ( .A(n138), .B(n139), .Z(sum[9]) );
  GTECH_XOR2 U76 ( .A(n140), .B(n141), .Z(sum[8]) );
  GTECH_XOR2 U77 ( .A(n142), .B(n143), .Z(sum[7]) );
  GTECH_XNOR2 U78 ( .A(n144), .B(n145), .Z(sum[6]) );
  GTECH_XNOR2 U79 ( .A(n146), .B(n147), .Z(sum[5]) );
  GTECH_XOR2 U80 ( .A(n148), .B(n149), .Z(sum[4]) );
  GTECH_XNOR3 U81 ( .A(b[3]), .B(a[3]), .C(n150), .Z(sum[3]) );
  GTECH_XOR3 U82 ( .A(b[2]), .B(a[2]), .C(n151), .Z(sum[2]) );
  GTECH_XOR3 U83 ( .A(b[1]), .B(a[1]), .C(n152), .Z(sum[1]) );
  GTECH_XNOR3 U84 ( .A(b[15]), .B(n153), .C(n154), .Z(sum[15]) );
  GTECH_NOT U85 ( .A(a[15]), .Z(n153) );
  GTECH_XOR3 U86 ( .A(b[14]), .B(a[14]), .C(n155), .Z(sum[14]) );
  GTECH_XOR3 U87 ( .A(b[13]), .B(a[13]), .C(n156), .Z(sum[13]) );
  GTECH_XOR3 U88 ( .A(b[12]), .B(a[12]), .C(n157), .Z(sum[12]) );
  GTECH_MUX2 U89 ( .A(n158), .B(n159), .S(n160), .Z(n157) );
  GTECH_AOI21 U90 ( .A(n161), .B(n162), .C(n163), .Z(n158) );
  GTECH_AOI21 U91 ( .A(n164), .B(a[11]), .C(b[11]), .Z(n163) );
  GTECH_XOR2 U92 ( .A(n165), .B(n162), .Z(sum[11]) );
  GTECH_XNOR2 U93 ( .A(n166), .B(n167), .Z(sum[10]) );
  GTECH_XOR3 U94 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_AO21 U95 ( .A(n154), .B(a[15]), .C(n168), .Z(cout) );
  GTECH_NOT U96 ( .A(n169), .Z(n168) );
  GTECH_OAI21 U97 ( .A(a[15]), .B(n154), .C(b[15]), .Z(n169) );
  GTECH_AO21 U98 ( .A(n155), .B(a[14]), .C(n170), .Z(n154) );
  GTECH_NOT U99 ( .A(n171), .Z(n170) );
  GTECH_OAI21 U100 ( .A(a[14]), .B(n155), .C(b[14]), .Z(n171) );
  GTECH_AO21 U101 ( .A(n156), .B(a[13]), .C(n172), .Z(n155) );
  GTECH_NOT U102 ( .A(n173), .Z(n172) );
  GTECH_OAI21 U103 ( .A(a[13]), .B(n156), .C(b[13]), .Z(n173) );
  GTECH_ADD_ABC U104 ( .A(n174), .B(a[12]), .C(b[12]), .COUT(n156) );
  GTECH_MUX2 U105 ( .A(n175), .B(n159), .S(n160), .Z(n174) );
  GTECH_NOR4 U106 ( .A(n138), .B(n141), .C(n165), .D(n166), .Z(n160) );
  GTECH_XNOR2 U107 ( .A(a[10]), .B(b[10]), .Z(n166) );
  GTECH_XOR2 U108 ( .A(n161), .B(b[11]), .Z(n165) );
  GTECH_XNOR2 U109 ( .A(a[8]), .B(b[8]), .Z(n141) );
  GTECH_XNOR2 U110 ( .A(a[9]), .B(b[9]), .Z(n138) );
  GTECH_NOT U111 ( .A(n140), .Z(n159) );
  GTECH_MUX2 U112 ( .A(n176), .B(n148), .S(n177), .Z(n140) );
  GTECH_AOI2N2 U113 ( .A(n178), .B(a[7]), .C(n179), .D(n180), .Z(n176) );
  GTECH_AND2 U114 ( .A(n143), .B(n181), .Z(n179) );
  GTECH_AOI2N2 U115 ( .A(n161), .B(n162), .C(b[11]), .D(n182), .Z(n175) );
  GTECH_AND2 U116 ( .A(a[11]), .B(n164), .Z(n182) );
  GTECH_NOT U117 ( .A(n162), .Z(n164) );
  GTECH_AOI21 U118 ( .A(n167), .B(a[10]), .C(n183), .Z(n162) );
  GTECH_NOT U119 ( .A(n184), .Z(n183) );
  GTECH_OAI21 U120 ( .A(a[10]), .B(n167), .C(b[10]), .Z(n184) );
  GTECH_AO21 U121 ( .A(n139), .B(a[9]), .C(n185), .Z(n167) );
  GTECH_NOT U122 ( .A(n186), .Z(n185) );
  GTECH_OAI21 U123 ( .A(a[9]), .B(n139), .C(b[9]), .Z(n186) );
  GTECH_ADD_ABC U124 ( .A(n187), .B(a[8]), .C(b[8]), .COUT(n139) );
  GTECH_NOT U125 ( .A(n188), .Z(n187) );
  GTECH_MUX2 U126 ( .A(n189), .B(n148), .S(n177), .Z(n188) );
  GTECH_NOR4 U127 ( .A(n142), .B(n144), .C(n146), .D(n149), .Z(n177) );
  GTECH_XNOR2 U128 ( .A(a[4]), .B(b[4]), .Z(n149) );
  GTECH_XNOR2 U129 ( .A(a[5]), .B(b[5]), .Z(n146) );
  GTECH_XNOR2 U130 ( .A(a[6]), .B(b[6]), .Z(n144) );
  GTECH_XOR2 U131 ( .A(n181), .B(b[7]), .Z(n142) );
  GTECH_OAI21 U132 ( .A(a[3]), .B(n190), .C(n191), .Z(n148) );
  GTECH_AO21 U133 ( .A(n190), .B(a[3]), .C(b[3]), .Z(n191) );
  GTECH_AOI21 U134 ( .A(n178), .B(a[7]), .C(n192), .Z(n189) );
  GTECH_AOI21 U135 ( .A(n181), .B(n143), .C(n180), .Z(n192) );
  GTECH_NOT U136 ( .A(b[7]), .Z(n180) );
  GTECH_NOT U137 ( .A(a[7]), .Z(n181) );
  GTECH_NOT U138 ( .A(n143), .Z(n178) );
  GTECH_AOI21 U139 ( .A(n145), .B(a[6]), .C(n193), .Z(n143) );
  GTECH_NOT U140 ( .A(n194), .Z(n193) );
  GTECH_OAI21 U141 ( .A(a[6]), .B(n145), .C(b[6]), .Z(n194) );
  GTECH_AO21 U142 ( .A(n147), .B(a[5]), .C(n195), .Z(n145) );
  GTECH_NOT U143 ( .A(n196), .Z(n195) );
  GTECH_OAI21 U144 ( .A(a[5]), .B(n147), .C(b[5]), .Z(n196) );
  GTECH_ADD_ABC U145 ( .A(n197), .B(a[4]), .C(b[4]), .COUT(n147) );
  GTECH_OA22 U146 ( .A(a[3]), .B(n190), .C(b[3]), .D(n198), .Z(n197) );
  GTECH_AND2 U147 ( .A(a[3]), .B(n190), .Z(n198) );
  GTECH_NOT U148 ( .A(n150), .Z(n190) );
  GTECH_AOI21 U149 ( .A(n151), .B(a[2]), .C(n199), .Z(n150) );
  GTECH_NOT U150 ( .A(n200), .Z(n199) );
  GTECH_OAI21 U151 ( .A(a[2]), .B(n151), .C(b[2]), .Z(n200) );
  GTECH_AO21 U152 ( .A(n152), .B(a[1]), .C(n201), .Z(n151) );
  GTECH_NOT U153 ( .A(n202), .Z(n201) );
  GTECH_OAI21 U154 ( .A(a[1]), .B(n152), .C(b[1]), .Z(n202) );
  GTECH_ADD_ABC U155 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n152) );
  GTECH_NOT U156 ( .A(a[11]), .Z(n161) );
endmodule

