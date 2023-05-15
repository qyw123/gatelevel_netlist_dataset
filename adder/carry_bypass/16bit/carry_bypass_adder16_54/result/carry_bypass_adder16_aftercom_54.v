
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
         n192, n193, n194, n195, n196, n197, n198, n199;

  GTECH_XNOR2 U74 ( .A(n137), .B(n138), .Z(sum[9]) );
  GTECH_XNOR2 U75 ( .A(n139), .B(n140), .Z(sum[8]) );
  GTECH_XNOR2 U76 ( .A(n141), .B(n142), .Z(sum[7]) );
  GTECH_XOR2 U77 ( .A(n143), .B(n144), .Z(sum[6]) );
  GTECH_XOR2 U78 ( .A(n145), .B(n146), .Z(sum[5]) );
  GTECH_XNOR2 U79 ( .A(n147), .B(n148), .Z(sum[4]) );
  GTECH_XOR3 U80 ( .A(b[3]), .B(a[3]), .C(n149), .Z(sum[3]) );
  GTECH_XOR3 U81 ( .A(b[2]), .B(a[2]), .C(n150), .Z(sum[2]) );
  GTECH_XOR3 U82 ( .A(b[1]), .B(a[1]), .C(n151), .Z(sum[1]) );
  GTECH_XOR3 U83 ( .A(b[15]), .B(a[15]), .C(n152), .Z(sum[15]) );
  GTECH_XOR3 U84 ( .A(b[14]), .B(a[14]), .C(n153), .Z(sum[14]) );
  GTECH_XOR3 U85 ( .A(b[13]), .B(a[13]), .C(n154), .Z(sum[13]) );
  GTECH_XOR3 U86 ( .A(b[12]), .B(a[12]), .C(n155), .Z(sum[12]) );
  GTECH_MUX2 U87 ( .A(n156), .B(n139), .S(n157), .Z(n155) );
  GTECH_AOI21 U88 ( .A(n158), .B(n159), .C(n160), .Z(n156) );
  GTECH_AOI21 U89 ( .A(n161), .B(a[11]), .C(b[11]), .Z(n160) );
  GTECH_XOR2 U90 ( .A(n162), .B(n159), .Z(sum[11]) );
  GTECH_XNOR2 U91 ( .A(n163), .B(n164), .Z(sum[10]) );
  GTECH_XOR3 U92 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_AO21 U93 ( .A(n152), .B(a[15]), .C(n165), .Z(cout) );
  GTECH_NOT U94 ( .A(n166), .Z(n165) );
  GTECH_OAI21 U95 ( .A(a[15]), .B(n152), .C(b[15]), .Z(n166) );
  GTECH_AO21 U96 ( .A(n153), .B(a[14]), .C(n167), .Z(n152) );
  GTECH_NOT U97 ( .A(n168), .Z(n167) );
  GTECH_OAI21 U98 ( .A(a[14]), .B(n153), .C(b[14]), .Z(n168) );
  GTECH_AO21 U99 ( .A(n154), .B(a[13]), .C(n169), .Z(n153) );
  GTECH_NOT U100 ( .A(n170), .Z(n169) );
  GTECH_OAI21 U101 ( .A(a[13]), .B(n154), .C(b[13]), .Z(n170) );
  GTECH_ADD_ABC U102 ( .A(n171), .B(a[12]), .C(b[12]), .COUT(n154) );
  GTECH_MUX2 U103 ( .A(n172), .B(n139), .S(n157), .Z(n171) );
  GTECH_NOR4 U104 ( .A(n163), .B(n162), .C(n140), .D(n137), .Z(n157) );
  GTECH_XNOR2 U105 ( .A(a[9]), .B(b[9]), .Z(n137) );
  GTECH_XNOR2 U106 ( .A(a[8]), .B(b[8]), .Z(n140) );
  GTECH_XOR2 U107 ( .A(n158), .B(b[11]), .Z(n162) );
  GTECH_XNOR2 U108 ( .A(a[10]), .B(b[10]), .Z(n163) );
  GTECH_NOT U109 ( .A(n173), .Z(n139) );
  GTECH_MUX2 U110 ( .A(n174), .B(n147), .S(n175), .Z(n173) );
  GTECH_AOI2N2 U111 ( .A(n176), .B(a[7]), .C(n177), .D(n178), .Z(n174) );
  GTECH_AND2 U112 ( .A(n142), .B(n179), .Z(n177) );
  GTECH_AOI2N2 U113 ( .A(n158), .B(n159), .C(b[11]), .D(n180), .Z(n172) );
  GTECH_AND2 U114 ( .A(a[11]), .B(n161), .Z(n180) );
  GTECH_NOT U115 ( .A(n161), .Z(n159) );
  GTECH_AO21 U116 ( .A(n164), .B(a[10]), .C(n181), .Z(n161) );
  GTECH_NOT U117 ( .A(n182), .Z(n181) );
  GTECH_OAI21 U118 ( .A(a[10]), .B(n164), .C(b[10]), .Z(n182) );
  GTECH_AO21 U119 ( .A(n138), .B(a[9]), .C(n183), .Z(n164) );
  GTECH_NOT U120 ( .A(n184), .Z(n183) );
  GTECH_OAI21 U121 ( .A(a[9]), .B(n138), .C(b[9]), .Z(n184) );
  GTECH_ADD_ABC U122 ( .A(n185), .B(a[8]), .C(b[8]), .COUT(n138) );
  GTECH_NOT U123 ( .A(n186), .Z(n185) );
  GTECH_MUX2 U124 ( .A(n187), .B(n147), .S(n175), .Z(n186) );
  GTECH_AND4 U125 ( .A(n148), .B(n145), .C(n143), .D(n141), .Z(n175) );
  GTECH_XNOR2 U126 ( .A(a[7]), .B(n178), .Z(n141) );
  GTECH_XOR2 U127 ( .A(a[6]), .B(b[6]), .Z(n143) );
  GTECH_XOR2 U128 ( .A(a[5]), .B(b[5]), .Z(n145) );
  GTECH_XOR2 U129 ( .A(a[4]), .B(b[4]), .Z(n148) );
  GTECH_OAI21 U130 ( .A(a[3]), .B(n149), .C(n188), .Z(n147) );
  GTECH_AO21 U131 ( .A(n149), .B(a[3]), .C(b[3]), .Z(n188) );
  GTECH_AOI21 U132 ( .A(n176), .B(a[7]), .C(n189), .Z(n187) );
  GTECH_AOI21 U133 ( .A(n179), .B(n142), .C(n178), .Z(n189) );
  GTECH_NOT U134 ( .A(b[7]), .Z(n178) );
  GTECH_NOT U135 ( .A(n176), .Z(n142) );
  GTECH_NOT U136 ( .A(a[7]), .Z(n179) );
  GTECH_AO21 U137 ( .A(n144), .B(a[6]), .C(n190), .Z(n176) );
  GTECH_NOT U138 ( .A(n191), .Z(n190) );
  GTECH_OAI21 U139 ( .A(a[6]), .B(n144), .C(b[6]), .Z(n191) );
  GTECH_AO21 U140 ( .A(n146), .B(a[5]), .C(n192), .Z(n144) );
  GTECH_NOT U141 ( .A(n193), .Z(n192) );
  GTECH_OAI21 U142 ( .A(a[5]), .B(n146), .C(b[5]), .Z(n193) );
  GTECH_ADD_ABC U143 ( .A(n194), .B(a[4]), .C(b[4]), .COUT(n146) );
  GTECH_OA22 U144 ( .A(a[3]), .B(n149), .C(b[3]), .D(n195), .Z(n194) );
  GTECH_AND2 U145 ( .A(a[3]), .B(n149), .Z(n195) );
  GTECH_AO21 U146 ( .A(n150), .B(a[2]), .C(n196), .Z(n149) );
  GTECH_NOT U147 ( .A(n197), .Z(n196) );
  GTECH_OAI21 U148 ( .A(a[2]), .B(n150), .C(b[2]), .Z(n197) );
  GTECH_AO21 U149 ( .A(n151), .B(a[1]), .C(n198), .Z(n150) );
  GTECH_NOT U150 ( .A(n199), .Z(n198) );
  GTECH_OAI21 U151 ( .A(a[1]), .B(n151), .C(b[1]), .Z(n199) );
  GTECH_ADD_ABC U152 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n151) );
  GTECH_NOT U153 ( .A(a[11]), .Z(n158) );
endmodule

