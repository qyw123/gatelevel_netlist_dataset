
module carry_bypass_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198;

  GTECH_XOR2 U73 ( .A(n136), .B(n137), .Z(sum[9]) );
  GTECH_XOR2 U74 ( .A(n138), .B(n139), .Z(sum[8]) );
  GTECH_XNOR2 U75 ( .A(n140), .B(n141), .Z(sum[7]) );
  GTECH_XNOR2 U76 ( .A(n142), .B(n143), .Z(sum[6]) );
  GTECH_XNOR2 U77 ( .A(n144), .B(n145), .Z(sum[5]) );
  GTECH_XOR2 U78 ( .A(n146), .B(n147), .Z(sum[4]) );
  GTECH_ADD_ABC U79 ( .A(b[3]), .B(a[3]), .C(n148), .S(sum[3]) );
  GTECH_ADD_ABC U80 ( .A(b[2]), .B(a[2]), .C(n149), .S(sum[2]) );
  GTECH_ADD_ABC U81 ( .A(b[1]), .B(a[1]), .C(n150), .S(sum[1]) );
  GTECH_ADD_ABC U82 ( .A(b[15]), .B(a[15]), .C(n151), .S(sum[15]) );
  GTECH_ADD_ABC U83 ( .A(b[14]), .B(a[14]), .C(n152), .S(sum[14]) );
  GTECH_ADD_ABC U84 ( .A(b[13]), .B(a[13]), .C(n153), .S(sum[13]) );
  GTECH_ADD_ABC U85 ( .A(b[12]), .B(a[12]), .C(n154), .S(sum[12]) );
  GTECH_MUX2 U86 ( .A(n138), .B(n155), .S(n156), .Z(n154) );
  GTECH_AOI21 U87 ( .A(n157), .B(n158), .C(n159), .Z(n155) );
  GTECH_AOI21 U88 ( .A(n160), .B(a[11]), .C(b[11]), .Z(n159) );
  GTECH_XNOR2 U89 ( .A(n161), .B(n158), .Z(sum[11]) );
  GTECH_NOT U90 ( .A(n160), .Z(n158) );
  GTECH_XOR2 U91 ( .A(n162), .B(n163), .Z(sum[10]) );
  GTECH_ADD_ABC U92 ( .A(cin), .B(b[0]), .C(a[0]), .S(sum[0]) );
  GTECH_AO21 U93 ( .A(n151), .B(a[15]), .C(n164), .Z(cout) );
  GTECH_NOT U94 ( .A(n165), .Z(n164) );
  GTECH_OAI21 U95 ( .A(a[15]), .B(n151), .C(b[15]), .Z(n165) );
  GTECH_AO21 U96 ( .A(n152), .B(a[14]), .C(n166), .Z(n151) );
  GTECH_NOT U97 ( .A(n167), .Z(n166) );
  GTECH_OAI21 U98 ( .A(a[14]), .B(n152), .C(b[14]), .Z(n167) );
  GTECH_AO21 U99 ( .A(n153), .B(a[13]), .C(n168), .Z(n152) );
  GTECH_NOT U100 ( .A(n169), .Z(n168) );
  GTECH_OAI21 U101 ( .A(a[13]), .B(n153), .C(b[13]), .Z(n169) );
  GTECH_ADD_ABC U102 ( .A(n170), .B(a[12]), .C(b[12]), .COUT(n153) );
  GTECH_MUX2 U103 ( .A(n171), .B(n138), .S(n172), .Z(n170) );
  GTECH_NOT U104 ( .A(n156), .Z(n172) );
  GTECH_NAND4 U105 ( .A(n162), .B(n161), .C(n139), .D(n136), .Z(n156) );
  GTECH_XOR2 U106 ( .A(a[9]), .B(b[9]), .Z(n136) );
  GTECH_XOR2 U107 ( .A(a[8]), .B(b[8]), .Z(n139) );
  GTECH_XOR2 U108 ( .A(a[11]), .B(b[11]), .Z(n161) );
  GTECH_XOR2 U109 ( .A(a[10]), .B(b[10]), .Z(n162) );
  GTECH_NOT U110 ( .A(n173), .Z(n138) );
  GTECH_MUX2 U111 ( .A(n147), .B(n174), .S(n175), .Z(n173) );
  GTECH_OAI21 U112 ( .A(a[7]), .B(n141), .C(n176), .Z(n174) );
  GTECH_AO21 U113 ( .A(n141), .B(a[7]), .C(b[7]), .Z(n176) );
  GTECH_OA22 U114 ( .A(a[11]), .B(n160), .C(b[11]), .D(n177), .Z(n171) );
  GTECH_AND_NOT U115 ( .A(n160), .B(n157), .Z(n177) );
  GTECH_NOT U116 ( .A(a[11]), .Z(n157) );
  GTECH_AO21 U117 ( .A(n163), .B(a[10]), .C(n178), .Z(n160) );
  GTECH_NOT U118 ( .A(n179), .Z(n178) );
  GTECH_OAI21 U119 ( .A(a[10]), .B(n163), .C(b[10]), .Z(n179) );
  GTECH_AO21 U120 ( .A(n137), .B(a[9]), .C(n180), .Z(n163) );
  GTECH_NOT U121 ( .A(n181), .Z(n180) );
  GTECH_OAI21 U122 ( .A(a[9]), .B(n137), .C(b[9]), .Z(n181) );
  GTECH_ADD_ABC U123 ( .A(n182), .B(a[8]), .C(b[8]), .COUT(n137) );
  GTECH_MUX2 U124 ( .A(n183), .B(n184), .S(n185), .Z(n182) );
  GTECH_NOT U125 ( .A(n175), .Z(n185) );
  GTECH_OR4 U126 ( .A(n146), .B(n144), .C(n142), .D(n140), .Z(n175) );
  GTECH_XNOR2 U127 ( .A(a[7]), .B(b[7]), .Z(n140) );
  GTECH_XNOR2 U128 ( .A(a[6]), .B(b[6]), .Z(n142) );
  GTECH_XNOR2 U129 ( .A(a[5]), .B(b[5]), .Z(n144) );
  GTECH_XOR2 U130 ( .A(n186), .B(b[4]), .Z(n146) );
  GTECH_OA22 U131 ( .A(a[7]), .B(n141), .C(b[7]), .D(n187), .Z(n183) );
  GTECH_AND2 U132 ( .A(n141), .B(a[7]), .Z(n187) );
  GTECH_AO21 U133 ( .A(n143), .B(a[6]), .C(n188), .Z(n141) );
  GTECH_NOT U134 ( .A(n189), .Z(n188) );
  GTECH_OAI21 U135 ( .A(a[6]), .B(n143), .C(b[6]), .Z(n189) );
  GTECH_AO21 U136 ( .A(n145), .B(a[5]), .C(n190), .Z(n143) );
  GTECH_NOT U137 ( .A(n191), .Z(n190) );
  GTECH_OAI21 U138 ( .A(a[5]), .B(n145), .C(b[5]), .Z(n191) );
  GTECH_OAI21 U139 ( .A(n147), .B(n186), .C(n192), .Z(n145) );
  GTECH_OAI21 U140 ( .A(a[4]), .B(n184), .C(b[4]), .Z(n192) );
  GTECH_NOT U141 ( .A(n147), .Z(n184) );
  GTECH_NOT U142 ( .A(a[4]), .Z(n186) );
  GTECH_AOI21 U143 ( .A(n148), .B(a[3]), .C(n193), .Z(n147) );
  GTECH_NOT U144 ( .A(n194), .Z(n193) );
  GTECH_OAI21 U145 ( .A(a[3]), .B(n148), .C(b[3]), .Z(n194) );
  GTECH_AO21 U146 ( .A(n149), .B(a[2]), .C(n195), .Z(n148) );
  GTECH_NOT U147 ( .A(n196), .Z(n195) );
  GTECH_OAI21 U148 ( .A(a[2]), .B(n149), .C(b[2]), .Z(n196) );
  GTECH_AO21 U149 ( .A(n150), .B(a[1]), .C(n197), .Z(n149) );
  GTECH_NOT U150 ( .A(n198), .Z(n197) );
  GTECH_OAI21 U151 ( .A(a[1]), .B(n150), .C(b[1]), .Z(n198) );
  GTECH_ADD_ABC U152 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n150) );
endmodule

