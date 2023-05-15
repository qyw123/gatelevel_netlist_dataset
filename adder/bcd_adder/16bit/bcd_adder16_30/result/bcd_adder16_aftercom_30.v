
module bcd_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155;

  GTECH_XNOR2 U55 ( .A(n87), .B(n88), .Z(sum[9]) );
  GTECH_XOR3 U56 ( .A(b[8]), .B(a[8]), .C(n89), .Z(sum[8]) );
  GTECH_ADD_AB U57 ( .A(n90), .B(n91), .S(sum[7]) );
  GTECH_AND2 U58 ( .A(n92), .B(n89), .Z(n90) );
  GTECH_OAI21 U59 ( .A(n93), .B(n92), .C(n94), .Z(sum[6]) );
  GTECH_OAI21 U60 ( .A(n93), .B(n95), .C(n96), .Z(n94) );
  GTECH_XNOR2 U61 ( .A(n93), .B(n95), .Z(sum[5]) );
  GTECH_XOR3 U62 ( .A(b[4]), .B(a[4]), .C(n97), .Z(sum[4]) );
  GTECH_ADD_AB U63 ( .A(n98), .B(n99), .S(sum[3]) );
  GTECH_AND2 U64 ( .A(n100), .B(n97), .Z(n98) );
  GTECH_OAI21 U65 ( .A(n101), .B(n100), .C(n102), .Z(sum[2]) );
  GTECH_OAI21 U66 ( .A(n101), .B(n103), .C(n104), .Z(n102) );
  GTECH_XNOR2 U67 ( .A(n101), .B(n103), .Z(sum[1]) );
  GTECH_ADD_AB U68 ( .A(n105), .B(n106), .S(sum[15]) );
  GTECH_AND2 U69 ( .A(n107), .B(cout), .Z(n105) );
  GTECH_OAI21 U70 ( .A(n108), .B(n107), .C(n109), .Z(sum[14]) );
  GTECH_OAI21 U71 ( .A(n108), .B(n110), .C(n111), .Z(n109) );
  GTECH_XNOR2 U72 ( .A(n108), .B(n110), .Z(sum[13]) );
  GTECH_XOR3 U73 ( .A(b[12]), .B(a[12]), .C(n112), .Z(sum[12]) );
  GTECH_ADD_AB U74 ( .A(n113), .B(n114), .S(sum[11]) );
  GTECH_AND2 U75 ( .A(n115), .B(n112), .Z(n113) );
  GTECH_OAI21 U76 ( .A(n87), .B(n115), .C(n116), .Z(sum[10]) );
  GTECH_OAI21 U77 ( .A(n87), .B(n88), .C(n117), .Z(n116) );
  GTECH_XOR3 U78 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_NOT U79 ( .A(n108), .Z(cout) );
  GTECH_AOI222 U80 ( .A(a[15]), .B(n118), .C(b[15]), .D(n119), .E(n106), .F(
        n107), .Z(n108) );
  GTECH_OR2 U81 ( .A(n110), .B(n111), .Z(n107) );
  GTECH_XNOR3 U82 ( .A(b[14]), .B(a[14]), .C(n120), .Z(n111) );
  GTECH_XNOR3 U83 ( .A(b[13]), .B(a[13]), .C(n121), .Z(n110) );
  GTECH_XOR3 U84 ( .A(b[15]), .B(a[15]), .C(n118), .Z(n106) );
  GTECH_OR2 U85 ( .A(a[15]), .B(n118), .Z(n119) );
  GTECH_NOT U86 ( .A(n122), .Z(n118) );
  GTECH_AOI21 U87 ( .A(n123), .B(a[14]), .C(n124), .Z(n122) );
  GTECH_OA21 U88 ( .A(a[14]), .B(n123), .C(b[14]), .Z(n124) );
  GTECH_NOT U89 ( .A(n120), .Z(n123) );
  GTECH_AOI21 U90 ( .A(n125), .B(a[13]), .C(n126), .Z(n120) );
  GTECH_OA21 U91 ( .A(a[13]), .B(n125), .C(b[13]), .Z(n126) );
  GTECH_NOT U92 ( .A(n121), .Z(n125) );
  GTECH_AOI21 U93 ( .A(n112), .B(a[12]), .C(n127), .Z(n121) );
  GTECH_OA21 U94 ( .A(a[12]), .B(n112), .C(b[12]), .Z(n127) );
  GTECH_NOT U95 ( .A(n87), .Z(n112) );
  GTECH_AOI222 U96 ( .A(a[11]), .B(n128), .C(b[11]), .D(n129), .E(n114), .F(
        n115), .Z(n87) );
  GTECH_OR2 U97 ( .A(n88), .B(n117), .Z(n115) );
  GTECH_XOR3 U98 ( .A(b[10]), .B(a[10]), .C(n130), .Z(n117) );
  GTECH_XOR3 U99 ( .A(b[9]), .B(a[9]), .C(n131), .Z(n88) );
  GTECH_XOR3 U100 ( .A(b[11]), .B(a[11]), .C(n128), .Z(n114) );
  GTECH_OR2 U101 ( .A(a[11]), .B(n128), .Z(n129) );
  GTECH_NOT U102 ( .A(n132), .Z(n128) );
  GTECH_AOI21 U103 ( .A(n130), .B(a[10]), .C(n133), .Z(n132) );
  GTECH_OA21 U104 ( .A(a[10]), .B(n130), .C(b[10]), .Z(n133) );
  GTECH_NOT U105 ( .A(n134), .Z(n130) );
  GTECH_AOI21 U106 ( .A(n131), .B(a[9]), .C(n135), .Z(n134) );
  GTECH_OA21 U107 ( .A(a[9]), .B(n131), .C(b[9]), .Z(n135) );
  GTECH_NOT U108 ( .A(n136), .Z(n131) );
  GTECH_AOI21 U109 ( .A(n89), .B(a[8]), .C(n137), .Z(n136) );
  GTECH_OA21 U110 ( .A(a[8]), .B(n89), .C(b[8]), .Z(n137) );
  GTECH_NOT U111 ( .A(n93), .Z(n89) );
  GTECH_AOI222 U112 ( .A(a[7]), .B(n138), .C(b[7]), .D(n139), .E(n91), .F(n92), 
        .Z(n93) );
  GTECH_OR2 U113 ( .A(n95), .B(n96), .Z(n92) );
  GTECH_XOR3 U114 ( .A(b[6]), .B(a[6]), .C(n140), .Z(n96) );
  GTECH_XOR3 U115 ( .A(b[5]), .B(a[5]), .C(n141), .Z(n95) );
  GTECH_XOR3 U116 ( .A(b[7]), .B(a[7]), .C(n138), .Z(n91) );
  GTECH_OR2 U117 ( .A(a[7]), .B(n138), .Z(n139) );
  GTECH_NOT U118 ( .A(n142), .Z(n138) );
  GTECH_AOI21 U119 ( .A(n140), .B(a[6]), .C(n143), .Z(n142) );
  GTECH_OA21 U120 ( .A(a[6]), .B(n140), .C(b[6]), .Z(n143) );
  GTECH_NOT U121 ( .A(n144), .Z(n140) );
  GTECH_AOI21 U122 ( .A(n141), .B(a[5]), .C(n145), .Z(n144) );
  GTECH_OA21 U123 ( .A(a[5]), .B(n141), .C(b[5]), .Z(n145) );
  GTECH_NOT U124 ( .A(n146), .Z(n141) );
  GTECH_AOI21 U125 ( .A(n97), .B(a[4]), .C(n147), .Z(n146) );
  GTECH_OA21 U126 ( .A(a[4]), .B(n97), .C(b[4]), .Z(n147) );
  GTECH_NOT U127 ( .A(n101), .Z(n97) );
  GTECH_AOI222 U128 ( .A(a[3]), .B(n148), .C(b[3]), .D(n149), .E(n99), .F(n100), .Z(n101) );
  GTECH_OR2 U129 ( .A(n103), .B(n104), .Z(n100) );
  GTECH_XOR3 U130 ( .A(b[2]), .B(a[2]), .C(n150), .Z(n104) );
  GTECH_XOR3 U131 ( .A(b[1]), .B(a[1]), .C(n151), .Z(n103) );
  GTECH_XOR3 U132 ( .A(b[3]), .B(a[3]), .C(n148), .Z(n99) );
  GTECH_OR2 U133 ( .A(a[3]), .B(n148), .Z(n149) );
  GTECH_NOT U134 ( .A(n152), .Z(n148) );
  GTECH_AOI21 U135 ( .A(n150), .B(a[2]), .C(n153), .Z(n152) );
  GTECH_OA21 U136 ( .A(a[2]), .B(n150), .C(b[2]), .Z(n153) );
  GTECH_NOT U137 ( .A(n154), .Z(n150) );
  GTECH_AOI21 U138 ( .A(n151), .B(a[1]), .C(n155), .Z(n154) );
  GTECH_OA21 U139 ( .A(a[1]), .B(n151), .C(b[1]), .Z(n155) );
  GTECH_ADD_ABC U140 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n151) );
endmodule

