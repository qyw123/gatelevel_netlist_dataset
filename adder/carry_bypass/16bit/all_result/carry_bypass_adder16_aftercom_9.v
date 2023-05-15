
module carry_bypass_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201;

  GTECH_XNOR2 U74 ( .A(n137), .B(n138), .Z(sum[9]) );
  GTECH_XNOR2 U75 ( .A(n139), .B(n140), .Z(sum[8]) );
  GTECH_XNOR2 U76 ( .A(n141), .B(n142), .Z(sum[7]) );
  GTECH_XOR2 U77 ( .A(n143), .B(n144), .Z(sum[6]) );
  GTECH_XOR2 U78 ( .A(n145), .B(n146), .Z(sum[5]) );
  GTECH_XNOR2 U79 ( .A(n147), .B(n148), .Z(sum[4]) );
  GTECH_XNOR3 U80 ( .A(b[3]), .B(a[3]), .C(n149), .Z(sum[3]) );
  GTECH_XOR3 U81 ( .A(b[2]), .B(a[2]), .C(n150), .Z(sum[2]) );
  GTECH_XOR3 U82 ( .A(b[1]), .B(a[1]), .C(n151), .Z(sum[1]) );
  GTECH_XNOR3 U83 ( .A(b[15]), .B(n152), .C(n153), .Z(sum[15]) );
  GTECH_NOT U84 ( .A(a[15]), .Z(n152) );
  GTECH_XOR3 U85 ( .A(b[14]), .B(a[14]), .C(n154), .Z(sum[14]) );
  GTECH_XOR3 U86 ( .A(b[13]), .B(a[13]), .C(n155), .Z(sum[13]) );
  GTECH_XOR3 U87 ( .A(b[12]), .B(a[12]), .C(n156), .Z(sum[12]) );
  GTECH_MUX2 U88 ( .A(n157), .B(n139), .S(n158), .Z(n156) );
  GTECH_AOI21 U89 ( .A(n159), .B(n160), .C(n161), .Z(n157) );
  GTECH_AOI21 U90 ( .A(n162), .B(a[11]), .C(b[11]), .Z(n161) );
  GTECH_XOR2 U91 ( .A(n163), .B(n160), .Z(sum[11]) );
  GTECH_XNOR2 U92 ( .A(n164), .B(n165), .Z(sum[10]) );
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
  GTECH_MUX2 U104 ( .A(n173), .B(n139), .S(n158), .Z(n172) );
  GTECH_NOR4 U105 ( .A(n164), .B(n163), .C(n140), .D(n137), .Z(n158) );
  GTECH_XNOR2 U106 ( .A(a[9]), .B(b[9]), .Z(n137) );
  GTECH_XNOR2 U107 ( .A(a[8]), .B(b[8]), .Z(n140) );
  GTECH_XOR2 U108 ( .A(n159), .B(b[11]), .Z(n163) );
  GTECH_XNOR2 U109 ( .A(a[10]), .B(b[10]), .Z(n164) );
  GTECH_NOT U110 ( .A(n174), .Z(n139) );
  GTECH_MUX2 U111 ( .A(n175), .B(n147), .S(n176), .Z(n174) );
  GTECH_AOI2N2 U112 ( .A(n177), .B(a[7]), .C(n178), .D(n179), .Z(n175) );
  GTECH_AND2 U113 ( .A(n142), .B(n180), .Z(n178) );
  GTECH_AOI2N2 U114 ( .A(n159), .B(n160), .C(b[11]), .D(n181), .Z(n173) );
  GTECH_AND2 U115 ( .A(a[11]), .B(n162), .Z(n181) );
  GTECH_NOT U116 ( .A(n162), .Z(n160) );
  GTECH_AO21 U117 ( .A(n165), .B(a[10]), .C(n182), .Z(n162) );
  GTECH_NOT U118 ( .A(n183), .Z(n182) );
  GTECH_OAI21 U119 ( .A(a[10]), .B(n165), .C(b[10]), .Z(n183) );
  GTECH_AO21 U120 ( .A(n138), .B(a[9]), .C(n184), .Z(n165) );
  GTECH_NOT U121 ( .A(n185), .Z(n184) );
  GTECH_OAI21 U122 ( .A(a[9]), .B(n138), .C(b[9]), .Z(n185) );
  GTECH_ADD_ABC U123 ( .A(n186), .B(a[8]), .C(b[8]), .COUT(n138) );
  GTECH_NOT U124 ( .A(n187), .Z(n186) );
  GTECH_MUX2 U125 ( .A(n188), .B(n147), .S(n176), .Z(n187) );
  GTECH_AND4 U126 ( .A(n148), .B(n145), .C(n143), .D(n141), .Z(n176) );
  GTECH_XNOR2 U127 ( .A(a[7]), .B(n179), .Z(n141) );
  GTECH_XOR2 U128 ( .A(a[6]), .B(b[6]), .Z(n143) );
  GTECH_XOR2 U129 ( .A(a[5]), .B(b[5]), .Z(n145) );
  GTECH_XOR2 U130 ( .A(a[4]), .B(b[4]), .Z(n148) );
  GTECH_OAI21 U131 ( .A(a[3]), .B(n189), .C(n190), .Z(n147) );
  GTECH_AO21 U132 ( .A(n189), .B(a[3]), .C(b[3]), .Z(n190) );
  GTECH_AOI21 U133 ( .A(n177), .B(a[7]), .C(n191), .Z(n188) );
  GTECH_AOI21 U134 ( .A(n180), .B(n142), .C(n179), .Z(n191) );
  GTECH_NOT U135 ( .A(b[7]), .Z(n179) );
  GTECH_NOT U136 ( .A(n177), .Z(n142) );
  GTECH_NOT U137 ( .A(a[7]), .Z(n180) );
  GTECH_AO21 U138 ( .A(n144), .B(a[6]), .C(n192), .Z(n177) );
  GTECH_NOT U139 ( .A(n193), .Z(n192) );
  GTECH_OAI21 U140 ( .A(a[6]), .B(n144), .C(b[6]), .Z(n193) );
  GTECH_AO21 U141 ( .A(n146), .B(a[5]), .C(n194), .Z(n144) );
  GTECH_NOT U142 ( .A(n195), .Z(n194) );
  GTECH_OAI21 U143 ( .A(a[5]), .B(n146), .C(b[5]), .Z(n195) );
  GTECH_ADD_ABC U144 ( .A(n196), .B(a[4]), .C(b[4]), .COUT(n146) );
  GTECH_OA22 U145 ( .A(a[3]), .B(n189), .C(b[3]), .D(n197), .Z(n196) );
  GTECH_AND2 U146 ( .A(a[3]), .B(n189), .Z(n197) );
  GTECH_NOT U147 ( .A(n149), .Z(n189) );
  GTECH_AOI21 U148 ( .A(n150), .B(a[2]), .C(n198), .Z(n149) );
  GTECH_NOT U149 ( .A(n199), .Z(n198) );
  GTECH_OAI21 U150 ( .A(a[2]), .B(n150), .C(b[2]), .Z(n199) );
  GTECH_AO21 U151 ( .A(n151), .B(a[1]), .C(n200), .Z(n150) );
  GTECH_NOT U152 ( .A(n201), .Z(n200) );
  GTECH_OAI21 U153 ( .A(a[1]), .B(n151), .C(b[1]), .Z(n201) );
  GTECH_ADD_ABC U154 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n151) );
  GTECH_NOT U155 ( .A(a[11]), .Z(n159) );
endmodule

