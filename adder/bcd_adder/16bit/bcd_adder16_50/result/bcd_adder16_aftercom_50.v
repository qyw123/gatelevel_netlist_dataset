
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
         n148, n149, n150, n151, n152, n153, n154, n155, n156;

  GTECH_XNOR2 U59 ( .A(n91), .B(n92), .Z(sum[9]) );
  GTECH_XOR3 U60 ( .A(b[8]), .B(a[8]), .C(n93), .Z(sum[8]) );
  GTECH_XOR2 U61 ( .A(n94), .B(n95), .Z(sum[7]) );
  GTECH_AND2 U62 ( .A(n96), .B(n93), .Z(n95) );
  GTECH_OAI21 U63 ( .A(n97), .B(n96), .C(n98), .Z(sum[6]) );
  GTECH_AO21 U64 ( .A(n93), .B(n99), .C(n100), .Z(n98) );
  GTECH_NOT U65 ( .A(n101), .Z(n100) );
  GTECH_XOR2 U66 ( .A(n97), .B(n99), .Z(sum[5]) );
  GTECH_XOR3 U67 ( .A(b[4]), .B(a[4]), .C(n102), .Z(sum[4]) );
  GTECH_XOR2 U68 ( .A(n103), .B(n104), .Z(sum[3]) );
  GTECH_AND2 U69 ( .A(n105), .B(n102), .Z(n104) );
  GTECH_OAI21 U70 ( .A(n106), .B(n105), .C(n107), .Z(sum[2]) );
  GTECH_AO21 U71 ( .A(n102), .B(n108), .C(n109), .Z(n107) );
  GTECH_NOT U72 ( .A(n110), .Z(n109) );
  GTECH_XOR2 U73 ( .A(n106), .B(n108), .Z(sum[1]) );
  GTECH_XOR2 U74 ( .A(n111), .B(n112), .Z(sum[15]) );
  GTECH_AND2 U75 ( .A(n113), .B(cout), .Z(n112) );
  GTECH_OAI21 U76 ( .A(n114), .B(n113), .C(n115), .Z(sum[14]) );
  GTECH_AO21 U77 ( .A(cout), .B(n116), .C(n117), .Z(n115) );
  GTECH_NOT U78 ( .A(n118), .Z(n117) );
  GTECH_XOR2 U79 ( .A(n114), .B(n116), .Z(sum[13]) );
  GTECH_XOR3 U80 ( .A(b[12]), .B(a[12]), .C(n119), .Z(sum[12]) );
  GTECH_XOR2 U81 ( .A(n120), .B(n121), .Z(sum[11]) );
  GTECH_AND2 U82 ( .A(n122), .B(n119), .Z(n121) );
  GTECH_OAI21 U83 ( .A(n91), .B(n122), .C(n123), .Z(sum[10]) );
  GTECH_OAI21 U84 ( .A(n91), .B(n92), .C(n124), .Z(n123) );
  GTECH_NOT U85 ( .A(n125), .Z(n92) );
  GTECH_XOR3 U86 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_NOT U87 ( .A(n114), .Z(cout) );
  GTECH_AOI222 U88 ( .A(a[15]), .B(n126), .C(b[15]), .D(n127), .E(n111), .F(
        n113), .Z(n114) );
  GTECH_OR_NOT U89 ( .A(n118), .B(n116), .Z(n113) );
  GTECH_XNOR3 U90 ( .A(b[13]), .B(a[13]), .C(n128), .Z(n116) );
  GTECH_XOR3 U91 ( .A(b[14]), .B(a[14]), .C(n129), .Z(n118) );
  GTECH_XOR3 U92 ( .A(b[15]), .B(a[15]), .C(n126), .Z(n111) );
  GTECH_OR_NOT U93 ( .A(a[15]), .B(n130), .Z(n127) );
  GTECH_NOT U94 ( .A(n130), .Z(n126) );
  GTECH_AOI21 U95 ( .A(n129), .B(a[14]), .C(n131), .Z(n130) );
  GTECH_OA21 U96 ( .A(a[14]), .B(n129), .C(b[14]), .Z(n131) );
  GTECH_AO21 U97 ( .A(n128), .B(a[13]), .C(n132), .Z(n129) );
  GTECH_OA21 U98 ( .A(a[13]), .B(n128), .C(b[13]), .Z(n132) );
  GTECH_AO21 U99 ( .A(n119), .B(a[12]), .C(n133), .Z(n128) );
  GTECH_OA21 U100 ( .A(a[12]), .B(n119), .C(b[12]), .Z(n133) );
  GTECH_NOT U101 ( .A(n91), .Z(n119) );
  GTECH_AOI222 U102 ( .A(a[11]), .B(n134), .C(b[11]), .D(n135), .E(n120), .F(
        n122), .Z(n91) );
  GTECH_OR_NOT U103 ( .A(n124), .B(n125), .Z(n122) );
  GTECH_XNOR3 U104 ( .A(b[9]), .B(a[9]), .C(n136), .Z(n125) );
  GTECH_XOR3 U105 ( .A(b[10]), .B(a[10]), .C(n137), .Z(n124) );
  GTECH_XOR3 U106 ( .A(b[11]), .B(a[11]), .C(n134), .Z(n120) );
  GTECH_NOT U107 ( .A(n138), .Z(n135) );
  GTECH_NOR2 U108 ( .A(a[11]), .B(n134), .Z(n138) );
  GTECH_AO21 U109 ( .A(n137), .B(a[10]), .C(n139), .Z(n134) );
  GTECH_OA21 U110 ( .A(a[10]), .B(n137), .C(b[10]), .Z(n139) );
  GTECH_AO21 U111 ( .A(n136), .B(a[9]), .C(n140), .Z(n137) );
  GTECH_OA21 U112 ( .A(a[9]), .B(n136), .C(b[9]), .Z(n140) );
  GTECH_AO21 U113 ( .A(n93), .B(a[8]), .C(n141), .Z(n136) );
  GTECH_OA21 U114 ( .A(a[8]), .B(n93), .C(b[8]), .Z(n141) );
  GTECH_NOT U115 ( .A(n97), .Z(n93) );
  GTECH_AOI222 U116 ( .A(a[7]), .B(n142), .C(b[7]), .D(n143), .E(n94), .F(n96), 
        .Z(n97) );
  GTECH_OR_NOT U117 ( .A(n101), .B(n99), .Z(n96) );
  GTECH_XNOR3 U118 ( .A(b[5]), .B(a[5]), .C(n144), .Z(n99) );
  GTECH_XOR3 U119 ( .A(b[6]), .B(a[6]), .C(n145), .Z(n101) );
  GTECH_XOR3 U120 ( .A(b[7]), .B(a[7]), .C(n142), .Z(n94) );
  GTECH_NOT U121 ( .A(n146), .Z(n143) );
  GTECH_NOR2 U122 ( .A(a[7]), .B(n142), .Z(n146) );
  GTECH_AO21 U123 ( .A(n145), .B(a[6]), .C(n147), .Z(n142) );
  GTECH_OA21 U124 ( .A(a[6]), .B(n145), .C(b[6]), .Z(n147) );
  GTECH_AO21 U125 ( .A(n144), .B(a[5]), .C(n148), .Z(n145) );
  GTECH_OA21 U126 ( .A(a[5]), .B(n144), .C(b[5]), .Z(n148) );
  GTECH_AO21 U127 ( .A(n102), .B(a[4]), .C(n149), .Z(n144) );
  GTECH_OA21 U128 ( .A(a[4]), .B(n102), .C(b[4]), .Z(n149) );
  GTECH_NOT U129 ( .A(n106), .Z(n102) );
  GTECH_AOI222 U130 ( .A(a[3]), .B(n150), .C(b[3]), .D(n151), .E(n103), .F(
        n105), .Z(n106) );
  GTECH_OR_NOT U131 ( .A(n110), .B(n108), .Z(n105) );
  GTECH_XNOR3 U132 ( .A(b[1]), .B(a[1]), .C(n152), .Z(n108) );
  GTECH_XOR3 U133 ( .A(b[2]), .B(a[2]), .C(n153), .Z(n110) );
  GTECH_XOR3 U134 ( .A(b[3]), .B(a[3]), .C(n150), .Z(n103) );
  GTECH_NOT U135 ( .A(n154), .Z(n151) );
  GTECH_NOR2 U136 ( .A(a[3]), .B(n150), .Z(n154) );
  GTECH_AO21 U137 ( .A(n153), .B(a[2]), .C(n155), .Z(n150) );
  GTECH_OA21 U138 ( .A(a[2]), .B(n153), .C(b[2]), .Z(n155) );
  GTECH_AO21 U139 ( .A(n152), .B(a[1]), .C(n156), .Z(n153) );
  GTECH_OA21 U140 ( .A(a[1]), .B(n152), .C(b[1]), .Z(n156) );
  GTECH_ADD_ABC U141 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n152) );
endmodule

