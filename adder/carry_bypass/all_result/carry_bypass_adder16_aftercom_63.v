
module carry_bypass_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206;

  GTECH_XOR2 U79 ( .A(n142), .B(n143), .Z(sum[9]) );
  GTECH_XNOR2 U80 ( .A(n144), .B(n145), .Z(sum[8]) );
  GTECH_XOR2 U81 ( .A(n146), .B(n147), .Z(sum[7]) );
  GTECH_XOR2 U82 ( .A(n148), .B(n149), .Z(sum[6]) );
  GTECH_XOR2 U83 ( .A(n150), .B(n151), .Z(sum[5]) );
  GTECH_XOR2 U84 ( .A(n152), .B(n153), .Z(sum[4]) );
  GTECH_XNOR3 U85 ( .A(b[3]), .B(n154), .C(n155), .Z(sum[3]) );
  GTECH_XOR3 U86 ( .A(b[2]), .B(a[2]), .C(n156), .Z(sum[2]) );
  GTECH_XOR3 U87 ( .A(b[1]), .B(a[1]), .C(n157), .Z(sum[1]) );
  GTECH_XNOR3 U88 ( .A(b[15]), .B(a[15]), .C(n158), .Z(sum[15]) );
  GTECH_XOR3 U89 ( .A(b[14]), .B(a[14]), .C(n159), .Z(sum[14]) );
  GTECH_XOR3 U90 ( .A(b[13]), .B(a[13]), .C(n160), .Z(sum[13]) );
  GTECH_XNOR3 U91 ( .A(b[12]), .B(a[12]), .C(n161), .Z(sum[12]) );
  GTECH_MUX2 U92 ( .A(n162), .B(n144), .S(n163), .Z(n161) );
  GTECH_OAI21 U93 ( .A(a[11]), .B(n164), .C(n165), .Z(n162) );
  GTECH_NOT U94 ( .A(n166), .Z(n165) );
  GTECH_AOI21 U95 ( .A(n164), .B(a[11]), .C(b[11]), .Z(n166) );
  GTECH_XOR2 U96 ( .A(n167), .B(n164), .Z(sum[11]) );
  GTECH_XOR2 U97 ( .A(n168), .B(n169), .Z(sum[10]) );
  GTECH_XOR3 U98 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_OAI21 U99 ( .A(n158), .B(n170), .C(n171), .Z(cout) );
  GTECH_OAI21 U100 ( .A(a[15]), .B(n172), .C(b[15]), .Z(n171) );
  GTECH_NOT U101 ( .A(n158), .Z(n172) );
  GTECH_NOT U102 ( .A(a[15]), .Z(n170) );
  GTECH_AOI21 U103 ( .A(n159), .B(a[14]), .C(n173), .Z(n158) );
  GTECH_NOT U104 ( .A(n174), .Z(n173) );
  GTECH_OAI21 U105 ( .A(a[14]), .B(n159), .C(b[14]), .Z(n174) );
  GTECH_NOT U106 ( .A(n175), .Z(n159) );
  GTECH_AOI21 U107 ( .A(n160), .B(a[13]), .C(n176), .Z(n175) );
  GTECH_NOT U108 ( .A(n177), .Z(n176) );
  GTECH_OAI21 U109 ( .A(a[13]), .B(n160), .C(b[13]), .Z(n177) );
  GTECH_ADD_ABC U110 ( .A(n178), .B(a[12]), .C(b[12]), .COUT(n160) );
  GTECH_NOT U111 ( .A(n179), .Z(n178) );
  GTECH_MUX2 U112 ( .A(n180), .B(n144), .S(n163), .Z(n179) );
  GTECH_AND4 U113 ( .A(n168), .B(n167), .C(n145), .D(n142), .Z(n163) );
  GTECH_XOR2 U114 ( .A(a[9]), .B(b[9]), .Z(n142) );
  GTECH_XOR2 U115 ( .A(a[8]), .B(b[8]), .Z(n145) );
  GTECH_XOR2 U116 ( .A(a[11]), .B(b[11]), .Z(n167) );
  GTECH_XOR2 U117 ( .A(a[10]), .B(b[10]), .Z(n168) );
  GTECH_MUX2 U118 ( .A(n181), .B(n182), .S(n183), .Z(n144) );
  GTECH_NOT U119 ( .A(n152), .Z(n182) );
  GTECH_OAI21 U120 ( .A(a[7]), .B(n147), .C(n184), .Z(n181) );
  GTECH_NOT U121 ( .A(n185), .Z(n184) );
  GTECH_AOI21 U122 ( .A(n147), .B(a[7]), .C(b[7]), .Z(n185) );
  GTECH_OAI22 U123 ( .A(a[11]), .B(n164), .C(b[11]), .D(n186), .Z(n180) );
  GTECH_AND2 U124 ( .A(a[11]), .B(n164), .Z(n186) );
  GTECH_OAI21 U125 ( .A(n187), .B(n188), .C(n189), .Z(n164) );
  GTECH_OAI21 U126 ( .A(a[10]), .B(n169), .C(b[10]), .Z(n189) );
  GTECH_NOT U127 ( .A(n187), .Z(n169) );
  GTECH_NOT U128 ( .A(a[10]), .Z(n188) );
  GTECH_AOI21 U129 ( .A(n143), .B(a[9]), .C(n190), .Z(n187) );
  GTECH_NOT U130 ( .A(n191), .Z(n190) );
  GTECH_OAI21 U131 ( .A(a[9]), .B(n143), .C(b[9]), .Z(n191) );
  GTECH_ADD_ABC U132 ( .A(n192), .B(a[8]), .C(b[8]), .COUT(n143) );
  GTECH_MUX2 U133 ( .A(n193), .B(n152), .S(n183), .Z(n192) );
  GTECH_AND4 U134 ( .A(n153), .B(n151), .C(n148), .D(n146), .Z(n183) );
  GTECH_XOR2 U135 ( .A(a[7]), .B(b[7]), .Z(n146) );
  GTECH_XOR2 U136 ( .A(a[6]), .B(b[6]), .Z(n148) );
  GTECH_XOR2 U137 ( .A(a[5]), .B(b[5]), .Z(n151) );
  GTECH_XOR2 U138 ( .A(a[4]), .B(b[4]), .Z(n153) );
  GTECH_AOI21 U139 ( .A(n154), .B(n194), .C(n195), .Z(n152) );
  GTECH_AOI21 U140 ( .A(n155), .B(a[3]), .C(b[3]), .Z(n195) );
  GTECH_NOT U141 ( .A(a[3]), .Z(n154) );
  GTECH_OA22 U142 ( .A(a[7]), .B(n147), .C(b[7]), .D(n196), .Z(n193) );
  GTECH_AND2 U143 ( .A(a[7]), .B(n147), .Z(n196) );
  GTECH_OAI21 U144 ( .A(n197), .B(n198), .C(n199), .Z(n147) );
  GTECH_OAI21 U145 ( .A(a[6]), .B(n149), .C(b[6]), .Z(n199) );
  GTECH_NOT U146 ( .A(a[6]), .Z(n198) );
  GTECH_NOT U147 ( .A(n149), .Z(n197) );
  GTECH_ADD_ABC U148 ( .A(a[5]), .B(n150), .C(b[5]), .COUT(n149) );
  GTECH_ADD_ABC U149 ( .A(a[4]), .B(n200), .C(b[4]), .COUT(n150) );
  GTECH_OA22 U150 ( .A(a[3]), .B(n155), .C(b[3]), .D(n201), .Z(n200) );
  GTECH_AND2 U151 ( .A(a[3]), .B(n155), .Z(n201) );
  GTECH_NOT U152 ( .A(n194), .Z(n155) );
  GTECH_AOI21 U153 ( .A(n156), .B(a[2]), .C(n202), .Z(n194) );
  GTECH_NOT U154 ( .A(n203), .Z(n202) );
  GTECH_OAI21 U155 ( .A(a[2]), .B(n156), .C(b[2]), .Z(n203) );
  GTECH_OAI21 U156 ( .A(n204), .B(n205), .C(n206), .Z(n156) );
  GTECH_OAI21 U157 ( .A(a[1]), .B(n157), .C(b[1]), .Z(n206) );
  GTECH_NOT U158 ( .A(a[1]), .Z(n205) );
  GTECH_NOT U159 ( .A(n157), .Z(n204) );
  GTECH_ADD_ABC U160 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n157) );
endmodule

