
module bcd_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162;

  GTECH_ADD_AB U59 ( .A(n91), .B(n92), .S(sum[9]) );
  GTECH_XOR3 U60 ( .A(b[8]), .B(n93), .C(n94), .Z(sum[8]) );
  GTECH_ADD_AB U61 ( .A(n95), .B(n96), .S(sum[7]) );
  GTECH_AND_NOT U62 ( .A(n97), .B(n94), .Z(n95) );
  GTECH_OAI21 U63 ( .A(n94), .B(n97), .C(n98), .Z(sum[6]) );
  GTECH_OAI21 U64 ( .A(n94), .B(n99), .C(n100), .Z(n98) );
  GTECH_ADD_AB U65 ( .A(n94), .B(n101), .S(sum[5]) );
  GTECH_XOR3 U66 ( .A(b[4]), .B(n102), .C(n103), .Z(sum[4]) );
  GTECH_ADD_AB U67 ( .A(n104), .B(n105), .S(sum[3]) );
  GTECH_AND_NOT U68 ( .A(n106), .B(n103), .Z(n104) );
  GTECH_OAI21 U69 ( .A(n103), .B(n106), .C(n107), .Z(sum[2]) );
  GTECH_AO21 U70 ( .A(n108), .B(n109), .C(n110), .Z(n107) );
  GTECH_ADD_AB U71 ( .A(n103), .B(n109), .S(sum[1]) );
  GTECH_ADD_AB U72 ( .A(n111), .B(n112), .S(sum[15]) );
  GTECH_AND_NOT U73 ( .A(n113), .B(n114), .Z(n111) );
  GTECH_OAI21 U74 ( .A(n114), .B(n113), .C(n115), .Z(sum[14]) );
  GTECH_OAI21 U75 ( .A(n114), .B(n116), .C(n117), .Z(n115) );
  GTECH_ADD_AB U76 ( .A(n114), .B(n118), .S(sum[13]) );
  GTECH_XOR3 U77 ( .A(b[12]), .B(n119), .C(n91), .Z(sum[12]) );
  GTECH_ADD_AB U78 ( .A(n120), .B(n121), .S(sum[11]) );
  GTECH_AND_NOT U79 ( .A(n122), .B(n91), .Z(n120) );
  GTECH_OAI21 U80 ( .A(n91), .B(n122), .C(n123), .Z(sum[10]) );
  GTECH_OAI21 U81 ( .A(n91), .B(n124), .C(n125), .Z(n123) );
  GTECH_XOR3 U82 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_NOT U83 ( .A(n114), .Z(cout) );
  GTECH_AOI222 U84 ( .A(a[15]), .B(n126), .C(b[15]), .D(n127), .E(n112), .F(
        n113), .Z(n114) );
  GTECH_OR_NOT U85 ( .A(n117), .B(n118), .Z(n113) );
  GTECH_NOT U86 ( .A(n116), .Z(n118) );
  GTECH_XOR3 U87 ( .A(b[13]), .B(a[13]), .C(n128), .Z(n116) );
  GTECH_XOR3 U88 ( .A(b[14]), .B(a[14]), .C(n129), .Z(n117) );
  GTECH_XOR3 U89 ( .A(b[15]), .B(a[15]), .C(n126), .Z(n112) );
  GTECH_OR2 U90 ( .A(a[15]), .B(n126), .Z(n127) );
  GTECH_AO21 U91 ( .A(n129), .B(a[14]), .C(n130), .Z(n126) );
  GTECH_NOT U92 ( .A(n131), .Z(n130) );
  GTECH_OAI21 U93 ( .A(a[14]), .B(n129), .C(b[14]), .Z(n131) );
  GTECH_AO21 U94 ( .A(n128), .B(a[13]), .C(n132), .Z(n129) );
  GTECH_NOT U95 ( .A(n133), .Z(n132) );
  GTECH_OAI21 U96 ( .A(a[13]), .B(n128), .C(b[13]), .Z(n133) );
  GTECH_OAI21 U97 ( .A(n91), .B(n119), .C(n134), .Z(n128) );
  GTECH_OAI21 U98 ( .A(a[12]), .B(n135), .C(b[12]), .Z(n134) );
  GTECH_NOT U99 ( .A(n91), .Z(n135) );
  GTECH_NOT U100 ( .A(a[12]), .Z(n119) );
  GTECH_AOI222 U101 ( .A(a[11]), .B(n136), .C(b[11]), .D(n137), .E(n121), .F(
        n122), .Z(n91) );
  GTECH_OR_NOT U102 ( .A(n125), .B(n92), .Z(n122) );
  GTECH_NOT U103 ( .A(n124), .Z(n92) );
  GTECH_XOR3 U104 ( .A(b[9]), .B(a[9]), .C(n138), .Z(n124) );
  GTECH_XOR3 U105 ( .A(b[10]), .B(a[10]), .C(n139), .Z(n125) );
  GTECH_XOR3 U106 ( .A(b[11]), .B(a[11]), .C(n136), .Z(n121) );
  GTECH_OR2 U107 ( .A(a[11]), .B(n136), .Z(n137) );
  GTECH_AO21 U108 ( .A(n139), .B(a[10]), .C(n140), .Z(n136) );
  GTECH_NOT U109 ( .A(n141), .Z(n140) );
  GTECH_OAI21 U110 ( .A(a[10]), .B(n139), .C(b[10]), .Z(n141) );
  GTECH_AO21 U111 ( .A(n138), .B(a[9]), .C(n142), .Z(n139) );
  GTECH_NOT U112 ( .A(n143), .Z(n142) );
  GTECH_OAI21 U113 ( .A(a[9]), .B(n138), .C(b[9]), .Z(n143) );
  GTECH_OAI21 U114 ( .A(n94), .B(n93), .C(n144), .Z(n138) );
  GTECH_OAI21 U115 ( .A(a[8]), .B(n145), .C(b[8]), .Z(n144) );
  GTECH_NOT U116 ( .A(n94), .Z(n145) );
  GTECH_NOT U117 ( .A(a[8]), .Z(n93) );
  GTECH_AOI222 U118 ( .A(a[7]), .B(n146), .C(b[7]), .D(n147), .E(n96), .F(n97), 
        .Z(n94) );
  GTECH_OR_NOT U119 ( .A(n100), .B(n101), .Z(n97) );
  GTECH_NOT U120 ( .A(n99), .Z(n101) );
  GTECH_XOR3 U121 ( .A(b[5]), .B(a[5]), .C(n148), .Z(n99) );
  GTECH_XOR3 U122 ( .A(b[6]), .B(a[6]), .C(n149), .Z(n100) );
  GTECH_XOR3 U123 ( .A(b[7]), .B(a[7]), .C(n146), .Z(n96) );
  GTECH_OR2 U124 ( .A(a[7]), .B(n146), .Z(n147) );
  GTECH_AO21 U125 ( .A(n149), .B(a[6]), .C(n150), .Z(n146) );
  GTECH_NOT U126 ( .A(n151), .Z(n150) );
  GTECH_OAI21 U127 ( .A(a[6]), .B(n149), .C(b[6]), .Z(n151) );
  GTECH_AO21 U128 ( .A(n148), .B(a[5]), .C(n152), .Z(n149) );
  GTECH_NOT U129 ( .A(n153), .Z(n152) );
  GTECH_OAI21 U130 ( .A(a[5]), .B(n148), .C(b[5]), .Z(n153) );
  GTECH_OAI21 U131 ( .A(n103), .B(n102), .C(n154), .Z(n148) );
  GTECH_OAI21 U132 ( .A(a[4]), .B(n108), .C(b[4]), .Z(n154) );
  GTECH_NOT U133 ( .A(n103), .Z(n108) );
  GTECH_NOT U134 ( .A(a[4]), .Z(n102) );
  GTECH_AOI222 U135 ( .A(a[3]), .B(n155), .C(b[3]), .D(n156), .E(n105), .F(
        n106), .Z(n103) );
  GTECH_NAND2 U136 ( .A(n109), .B(n110), .Z(n106) );
  GTECH_XNOR3 U137 ( .A(b[2]), .B(a[2]), .C(n157), .Z(n110) );
  GTECH_XNOR3 U138 ( .A(b[1]), .B(a[1]), .C(n158), .Z(n109) );
  GTECH_XOR3 U139 ( .A(b[3]), .B(a[3]), .C(n155), .Z(n105) );
  GTECH_OR2 U140 ( .A(a[3]), .B(n155), .Z(n156) );
  GTECH_AO21 U141 ( .A(n157), .B(a[2]), .C(n159), .Z(n155) );
  GTECH_NOT U142 ( .A(n160), .Z(n159) );
  GTECH_OAI21 U143 ( .A(a[2]), .B(n157), .C(b[2]), .Z(n160) );
  GTECH_AO21 U144 ( .A(n158), .B(a[1]), .C(n161), .Z(n157) );
  GTECH_NOT U145 ( .A(n162), .Z(n161) );
  GTECH_OAI21 U146 ( .A(a[1]), .B(n158), .C(b[1]), .Z(n162) );
  GTECH_ADD_ABC U147 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n158) );
endmodule

