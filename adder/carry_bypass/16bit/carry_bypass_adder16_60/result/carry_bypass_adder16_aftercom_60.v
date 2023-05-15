
module carry_bypass_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193;

  GTECH_XOR2 U58 ( .A(n121), .B(n122), .Z(sum[9]) );
  GTECH_XOR2 U59 ( .A(n123), .B(n124), .Z(sum[8]) );
  GTECH_XOR2 U60 ( .A(n125), .B(n126), .Z(sum[7]) );
  GTECH_XOR2 U61 ( .A(n127), .B(n128), .Z(sum[6]) );
  GTECH_XOR2 U62 ( .A(n129), .B(n130), .Z(sum[5]) );
  GTECH_XOR2 U63 ( .A(n131), .B(n132), .Z(sum[4]) );
  GTECH_XOR3 U64 ( .A(b[3]), .B(a[3]), .C(n133), .Z(sum[3]) );
  GTECH_XOR3 U65 ( .A(b[2]), .B(a[2]), .C(n134), .Z(sum[2]) );
  GTECH_XOR3 U66 ( .A(b[1]), .B(a[1]), .C(n135), .Z(sum[1]) );
  GTECH_XOR3 U67 ( .A(b[15]), .B(a[15]), .C(n136), .Z(sum[15]) );
  GTECH_XOR3 U68 ( .A(b[14]), .B(a[14]), .C(n137), .Z(sum[14]) );
  GTECH_XOR3 U69 ( .A(b[13]), .B(a[13]), .C(n138), .Z(sum[13]) );
  GTECH_XOR3 U70 ( .A(b[12]), .B(a[12]), .C(n139), .Z(sum[12]) );
  GTECH_XOR2 U71 ( .A(n140), .B(n141), .Z(sum[11]) );
  GTECH_XOR2 U72 ( .A(n142), .B(n143), .Z(sum[10]) );
  GTECH_XOR3 U73 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_OAI21 U74 ( .A(n144), .B(n145), .C(n146), .Z(cout) );
  GTECH_OAI21 U75 ( .A(a[15]), .B(n136), .C(b[15]), .Z(n146) );
  GTECH_NOT U76 ( .A(n144), .Z(n136) );
  GTECH_NOT U77 ( .A(a[15]), .Z(n145) );
  GTECH_OA21 U78 ( .A(n147), .B(n148), .C(n149), .Z(n144) );
  GTECH_OAI21 U79 ( .A(a[14]), .B(n137), .C(b[14]), .Z(n149) );
  GTECH_NOT U80 ( .A(n147), .Z(n137) );
  GTECH_NOT U81 ( .A(a[14]), .Z(n148) );
  GTECH_OA21 U82 ( .A(n150), .B(n151), .C(n152), .Z(n147) );
  GTECH_OAI21 U83 ( .A(a[13]), .B(n138), .C(b[13]), .Z(n152) );
  GTECH_NOT U84 ( .A(n150), .Z(n138) );
  GTECH_NOT U85 ( .A(a[13]), .Z(n151) );
  GTECH_OA21 U86 ( .A(n153), .B(n154), .C(n155), .Z(n150) );
  GTECH_OAI21 U87 ( .A(a[12]), .B(n139), .C(b[12]), .Z(n155) );
  GTECH_NOT U88 ( .A(a[12]), .Z(n154) );
  GTECH_NOT U89 ( .A(n139), .Z(n153) );
  GTECH_MUX2 U90 ( .A(n156), .B(n157), .S(n158), .Z(n139) );
  GTECH_NOR4 U91 ( .A(n142), .B(n140), .C(n123), .D(n121), .Z(n158) );
  GTECH_XNOR2 U92 ( .A(a[9]), .B(b[9]), .Z(n121) );
  GTECH_XNOR2 U93 ( .A(a[8]), .B(b[8]), .Z(n123) );
  GTECH_XOR2 U94 ( .A(n159), .B(b[11]), .Z(n140) );
  GTECH_XOR2 U95 ( .A(n160), .B(b[10]), .Z(n142) );
  GTECH_OA21 U96 ( .A(a[11]), .B(n161), .C(n162), .Z(n156) );
  GTECH_OAI21 U97 ( .A(n141), .B(n159), .C(n163), .Z(n162) );
  GTECH_NOT U98 ( .A(b[11]), .Z(n163) );
  GTECH_NOT U99 ( .A(a[11]), .Z(n159) );
  GTECH_NOT U100 ( .A(n141), .Z(n161) );
  GTECH_OA21 U101 ( .A(n143), .B(n160), .C(n164), .Z(n141) );
  GTECH_OAI21 U102 ( .A(a[10]), .B(n165), .C(b[10]), .Z(n164) );
  GTECH_NOT U103 ( .A(n143), .Z(n165) );
  GTECH_NOT U104 ( .A(a[10]), .Z(n160) );
  GTECH_OA21 U105 ( .A(n122), .B(n166), .C(n167), .Z(n143) );
  GTECH_OAI21 U106 ( .A(a[9]), .B(n168), .C(b[9]), .Z(n167) );
  GTECH_NOT U107 ( .A(n122), .Z(n168) );
  GTECH_NOT U108 ( .A(a[9]), .Z(n166) );
  GTECH_OA21 U109 ( .A(n124), .B(n169), .C(n170), .Z(n122) );
  GTECH_OAI21 U110 ( .A(a[8]), .B(n157), .C(b[8]), .Z(n170) );
  GTECH_NOT U111 ( .A(a[8]), .Z(n169) );
  GTECH_NOT U112 ( .A(n157), .Z(n124) );
  GTECH_MUX2 U113 ( .A(n171), .B(n172), .S(n173), .Z(n157) );
  GTECH_NOR4 U114 ( .A(n131), .B(n129), .C(n127), .D(n125), .Z(n173) );
  GTECH_XOR2 U115 ( .A(n174), .B(b[7]), .Z(n125) );
  GTECH_XOR2 U116 ( .A(n175), .B(b[6]), .Z(n127) );
  GTECH_XOR2 U117 ( .A(n176), .B(b[5]), .Z(n129) );
  GTECH_XOR2 U118 ( .A(n177), .B(b[4]), .Z(n131) );
  GTECH_OAI21 U119 ( .A(n126), .B(n174), .C(n178), .Z(n171) );
  GTECH_OAI21 U120 ( .A(a[7]), .B(n179), .C(b[7]), .Z(n178) );
  GTECH_NOT U121 ( .A(n126), .Z(n179) );
  GTECH_NOT U122 ( .A(a[7]), .Z(n174) );
  GTECH_OA21 U123 ( .A(n128), .B(n175), .C(n180), .Z(n126) );
  GTECH_OAI21 U124 ( .A(a[6]), .B(n181), .C(b[6]), .Z(n180) );
  GTECH_NOT U125 ( .A(n128), .Z(n181) );
  GTECH_NOT U126 ( .A(a[6]), .Z(n175) );
  GTECH_OA21 U127 ( .A(n130), .B(n176), .C(n182), .Z(n128) );
  GTECH_OAI21 U128 ( .A(a[5]), .B(n183), .C(b[5]), .Z(n182) );
  GTECH_NOT U129 ( .A(n130), .Z(n183) );
  GTECH_NOT U130 ( .A(a[5]), .Z(n176) );
  GTECH_OA21 U131 ( .A(n132), .B(n177), .C(n184), .Z(n130) );
  GTECH_OAI21 U132 ( .A(a[4]), .B(n172), .C(b[4]), .Z(n184) );
  GTECH_NOT U133 ( .A(n132), .Z(n172) );
  GTECH_NOT U134 ( .A(a[4]), .Z(n177) );
  GTECH_OA21 U135 ( .A(n185), .B(n186), .C(n187), .Z(n132) );
  GTECH_OAI21 U136 ( .A(a[3]), .B(n133), .C(b[3]), .Z(n187) );
  GTECH_NOT U137 ( .A(n185), .Z(n133) );
  GTECH_NOT U138 ( .A(a[3]), .Z(n186) );
  GTECH_OA21 U139 ( .A(n188), .B(n189), .C(n190), .Z(n185) );
  GTECH_OAI21 U140 ( .A(a[2]), .B(n134), .C(b[2]), .Z(n190) );
  GTECH_NOT U141 ( .A(n188), .Z(n134) );
  GTECH_NOT U142 ( .A(a[2]), .Z(n189) );
  GTECH_OA21 U143 ( .A(n191), .B(n192), .C(n193), .Z(n188) );
  GTECH_OAI21 U144 ( .A(a[1]), .B(n135), .C(b[1]), .Z(n193) );
  GTECH_NOT U145 ( .A(a[1]), .Z(n192) );
  GTECH_NOT U146 ( .A(n135), .Z(n191) );
  GTECH_ADD_ABC U147 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n135) );
endmodule

