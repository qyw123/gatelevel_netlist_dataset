
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
         n192, n193;

  GTECH_XOR2 U74 ( .A(n137), .B(n138), .Z(sum[9]) );
  GTECH_XOR2 U75 ( .A(n139), .B(n140), .Z(sum[8]) );
  GTECH_XNOR2 U76 ( .A(n141), .B(n142), .Z(sum[7]) );
  GTECH_XOR2 U77 ( .A(n143), .B(n144), .Z(sum[6]) );
  GTECH_XOR2 U78 ( .A(n145), .B(n146), .Z(sum[5]) );
  GTECH_XOR2 U79 ( .A(n147), .B(n148), .Z(sum[4]) );
  GTECH_XOR3 U80 ( .A(b[3]), .B(n149), .C(n150), .Z(sum[3]) );
  GTECH_XOR3 U81 ( .A(b[2]), .B(a[2]), .C(n151), .Z(sum[2]) );
  GTECH_XOR3 U82 ( .A(b[1]), .B(a[1]), .C(n152), .Z(sum[1]) );
  GTECH_XOR3 U83 ( .A(b[15]), .B(a[15]), .C(n153), .Z(sum[15]) );
  GTECH_XOR3 U84 ( .A(b[14]), .B(a[14]), .C(n154), .Z(sum[14]) );
  GTECH_XOR3 U85 ( .A(b[13]), .B(a[13]), .C(n155), .Z(sum[13]) );
  GTECH_XOR3 U86 ( .A(b[12]), .B(a[12]), .C(n156), .Z(sum[12]) );
  GTECH_XOR2 U87 ( .A(n157), .B(n158), .Z(sum[11]) );
  GTECH_XOR2 U88 ( .A(n159), .B(n160), .Z(sum[10]) );
  GTECH_XOR3 U89 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_AO21 U90 ( .A(n153), .B(a[15]), .C(n161), .Z(cout) );
  GTECH_NOT U91 ( .A(n162), .Z(n161) );
  GTECH_OAI21 U92 ( .A(a[15]), .B(n153), .C(b[15]), .Z(n162) );
  GTECH_AO21 U93 ( .A(n154), .B(a[14]), .C(n163), .Z(n153) );
  GTECH_NOT U94 ( .A(n164), .Z(n163) );
  GTECH_OAI21 U95 ( .A(a[14]), .B(n154), .C(b[14]), .Z(n164) );
  GTECH_AO21 U96 ( .A(n155), .B(a[13]), .C(n165), .Z(n154) );
  GTECH_NOT U97 ( .A(n166), .Z(n165) );
  GTECH_OAI21 U98 ( .A(a[13]), .B(n155), .C(b[13]), .Z(n166) );
  GTECH_AO21 U99 ( .A(n156), .B(a[12]), .C(n167), .Z(n155) );
  GTECH_NOT U100 ( .A(n168), .Z(n167) );
  GTECH_OAI21 U101 ( .A(a[12]), .B(n156), .C(b[12]), .Z(n168) );
  GTECH_OAI2N2 U102 ( .A(n169), .B(n170), .C(n140), .D(n169), .Z(n156) );
  GTECH_OAI21 U103 ( .A(a[11]), .B(n158), .C(n171), .Z(n170) );
  GTECH_AO21 U104 ( .A(n158), .B(a[11]), .C(b[11]), .Z(n171) );
  GTECH_AO21 U105 ( .A(n160), .B(a[10]), .C(n172), .Z(n158) );
  GTECH_NOT U106 ( .A(n173), .Z(n172) );
  GTECH_OAI21 U107 ( .A(a[10]), .B(n160), .C(b[10]), .Z(n173) );
  GTECH_AO21 U108 ( .A(n138), .B(a[9]), .C(n174), .Z(n160) );
  GTECH_NOT U109 ( .A(n175), .Z(n174) );
  GTECH_OAI21 U110 ( .A(a[9]), .B(n138), .C(b[9]), .Z(n175) );
  GTECH_AO21 U111 ( .A(n140), .B(a[8]), .C(n176), .Z(n138) );
  GTECH_NOT U112 ( .A(n177), .Z(n176) );
  GTECH_OAI21 U113 ( .A(a[8]), .B(n140), .C(b[8]), .Z(n177) );
  GTECH_OAI2N2 U114 ( .A(n178), .B(n179), .C(n147), .D(n179), .Z(n140) );
  GTECH_AOI21 U115 ( .A(n149), .B(n150), .C(n180), .Z(n147) );
  GTECH_AOI21 U116 ( .A(n181), .B(a[3]), .C(b[3]), .Z(n180) );
  GTECH_NOT U117 ( .A(n181), .Z(n150) );
  GTECH_NOT U118 ( .A(a[3]), .Z(n149) );
  GTECH_AND4 U119 ( .A(n148), .B(n145), .C(n143), .D(n141), .Z(n179) );
  GTECH_XOR2 U120 ( .A(a[7]), .B(b[7]), .Z(n141) );
  GTECH_XOR2 U121 ( .A(a[6]), .B(b[6]), .Z(n143) );
  GTECH_XOR2 U122 ( .A(a[5]), .B(b[5]), .Z(n145) );
  GTECH_XOR2 U123 ( .A(a[4]), .B(b[4]), .Z(n148) );
  GTECH_AOI2N2 U124 ( .A(n182), .B(b[7]), .C(n142), .D(n183), .Z(n178) );
  GTECH_NAND2 U125 ( .A(n183), .B(n142), .Z(n182) );
  GTECH_AOI21 U126 ( .A(n144), .B(a[6]), .C(n184), .Z(n142) );
  GTECH_NOT U127 ( .A(n185), .Z(n184) );
  GTECH_OAI21 U128 ( .A(a[6]), .B(n144), .C(b[6]), .Z(n185) );
  GTECH_AO21 U129 ( .A(n146), .B(a[5]), .C(n186), .Z(n144) );
  GTECH_NOT U130 ( .A(n187), .Z(n186) );
  GTECH_OAI21 U131 ( .A(a[5]), .B(n146), .C(b[5]), .Z(n187) );
  GTECH_ADD_ABC U132 ( .A(n188), .B(a[4]), .C(b[4]), .COUT(n146) );
  GTECH_OA22 U133 ( .A(a[3]), .B(n181), .C(b[3]), .D(n189), .Z(n188) );
  GTECH_AND2 U134 ( .A(n181), .B(a[3]), .Z(n189) );
  GTECH_AO21 U135 ( .A(n151), .B(a[2]), .C(n190), .Z(n181) );
  GTECH_NOT U136 ( .A(n191), .Z(n190) );
  GTECH_OAI21 U137 ( .A(a[2]), .B(n151), .C(b[2]), .Z(n191) );
  GTECH_AO21 U138 ( .A(n152), .B(a[1]), .C(n192), .Z(n151) );
  GTECH_NOT U139 ( .A(n193), .Z(n192) );
  GTECH_OAI21 U140 ( .A(a[1]), .B(n152), .C(b[1]), .Z(n193) );
  GTECH_ADD_ABC U141 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n152) );
  GTECH_NOT U142 ( .A(a[7]), .Z(n183) );
  GTECH_AND4 U143 ( .A(n159), .B(n157), .C(n139), .D(n137), .Z(n169) );
  GTECH_XOR2 U144 ( .A(a[9]), .B(b[9]), .Z(n137) );
  GTECH_XOR2 U145 ( .A(a[8]), .B(b[8]), .Z(n139) );
  GTECH_XOR2 U146 ( .A(a[11]), .B(b[11]), .Z(n157) );
  GTECH_XOR2 U147 ( .A(a[10]), .B(b[10]), .Z(n159) );
endmodule

