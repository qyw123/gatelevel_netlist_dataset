
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
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160;

  GTECH_XNOR2 U55 ( .A(n87), .B(n88), .Z(sum[9]) );
  GTECH_XOR3 U56 ( .A(b[8]), .B(n89), .C(n90), .Z(sum[8]) );
  GTECH_XOR2 U57 ( .A(n91), .B(n92), .Z(sum[7]) );
  GTECH_AND2 U58 ( .A(n93), .B(n94), .Z(n91) );
  GTECH_OAI21 U59 ( .A(n90), .B(n93), .C(n95), .Z(sum[6]) );
  GTECH_OAI21 U60 ( .A(n90), .B(n96), .C(n97), .Z(n95) );
  GTECH_XOR2 U61 ( .A(n98), .B(n90), .Z(sum[5]) );
  GTECH_XOR3 U62 ( .A(b[4]), .B(n99), .C(n100), .Z(sum[4]) );
  GTECH_XOR2 U63 ( .A(n101), .B(n102), .Z(sum[3]) );
  GTECH_AND2 U64 ( .A(n103), .B(n104), .Z(n101) );
  GTECH_OAI21 U65 ( .A(n100), .B(n103), .C(n105), .Z(sum[2]) );
  GTECH_OAI21 U66 ( .A(n100), .B(n106), .C(n107), .Z(n105) );
  GTECH_XOR2 U67 ( .A(n108), .B(n100), .Z(sum[1]) );
  GTECH_XOR2 U68 ( .A(n109), .B(n110), .Z(sum[15]) );
  GTECH_AND2 U69 ( .A(n111), .B(cout), .Z(n109) );
  GTECH_OAI21 U70 ( .A(n112), .B(n111), .C(n113), .Z(sum[14]) );
  GTECH_OAI21 U71 ( .A(n112), .B(n114), .C(n115), .Z(n113) );
  GTECH_XOR2 U72 ( .A(n116), .B(n112), .Z(sum[13]) );
  GTECH_XOR3 U73 ( .A(b[12]), .B(n117), .C(n88), .Z(sum[12]) );
  GTECH_XOR2 U74 ( .A(n118), .B(n119), .Z(sum[11]) );
  GTECH_AND2 U75 ( .A(n120), .B(n121), .Z(n118) );
  GTECH_OAI21 U76 ( .A(n88), .B(n120), .C(n122), .Z(sum[10]) );
  GTECH_OAI21 U77 ( .A(n88), .B(n87), .C(n123), .Z(n122) );
  GTECH_XOR3 U78 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_NOT U79 ( .A(n112), .Z(cout) );
  GTECH_AOI222 U80 ( .A(n124), .B(a[15]), .C(b[15]), .D(n125), .E(n110), .F(
        n111), .Z(n112) );
  GTECH_OR2 U81 ( .A(n115), .B(n114), .Z(n111) );
  GTECH_NOT U82 ( .A(n116), .Z(n114) );
  GTECH_XNOR3 U83 ( .A(b[13]), .B(a[13]), .C(n126), .Z(n116) );
  GTECH_XOR3 U84 ( .A(b[14]), .B(a[14]), .C(n127), .Z(n115) );
  GTECH_XOR3 U85 ( .A(b[15]), .B(a[15]), .C(n124), .Z(n110) );
  GTECH_OR2 U86 ( .A(n124), .B(a[15]), .Z(n125) );
  GTECH_OA21 U87 ( .A(a[14]), .B(n127), .C(n128), .Z(n124) );
  GTECH_NOT U88 ( .A(n129), .Z(n128) );
  GTECH_AOI21 U89 ( .A(a[14]), .B(n127), .C(b[14]), .Z(n129) );
  GTECH_OA21 U90 ( .A(a[13]), .B(n126), .C(n130), .Z(n127) );
  GTECH_NOT U91 ( .A(n131), .Z(n130) );
  GTECH_AOI21 U92 ( .A(a[13]), .B(n126), .C(b[13]), .Z(n131) );
  GTECH_AOI21 U93 ( .A(n117), .B(n88), .C(n132), .Z(n126) );
  GTECH_AOI21 U94 ( .A(n121), .B(a[12]), .C(b[12]), .Z(n132) );
  GTECH_NOT U95 ( .A(n88), .Z(n121) );
  GTECH_AOI222 U96 ( .A(n133), .B(a[11]), .C(b[11]), .D(n134), .E(n119), .F(
        n120), .Z(n88) );
  GTECH_OR2 U97 ( .A(n123), .B(n87), .Z(n120) );
  GTECH_XOR3 U98 ( .A(b[9]), .B(a[9]), .C(n135), .Z(n87) );
  GTECH_XOR3 U99 ( .A(b[10]), .B(a[10]), .C(n136), .Z(n123) );
  GTECH_XOR3 U100 ( .A(b[11]), .B(a[11]), .C(n133), .Z(n119) );
  GTECH_OR2 U101 ( .A(n133), .B(a[11]), .Z(n134) );
  GTECH_OA21 U102 ( .A(a[10]), .B(n136), .C(n137), .Z(n133) );
  GTECH_NOT U103 ( .A(n138), .Z(n137) );
  GTECH_AOI21 U104 ( .A(n136), .B(a[10]), .C(b[10]), .Z(n138) );
  GTECH_OA21 U105 ( .A(a[9]), .B(n135), .C(n139), .Z(n136) );
  GTECH_NOT U106 ( .A(n140), .Z(n139) );
  GTECH_AOI21 U107 ( .A(n135), .B(a[9]), .C(b[9]), .Z(n140) );
  GTECH_AOI21 U108 ( .A(n89), .B(n90), .C(n141), .Z(n135) );
  GTECH_AOI21 U109 ( .A(n94), .B(a[8]), .C(b[8]), .Z(n141) );
  GTECH_NOT U110 ( .A(n90), .Z(n94) );
  GTECH_AOI222 U111 ( .A(n142), .B(a[7]), .C(b[7]), .D(n143), .E(n92), .F(n93), 
        .Z(n90) );
  GTECH_OR2 U112 ( .A(n97), .B(n96), .Z(n93) );
  GTECH_NOT U113 ( .A(n98), .Z(n96) );
  GTECH_XNOR3 U114 ( .A(b[5]), .B(a[5]), .C(n144), .Z(n98) );
  GTECH_XOR3 U115 ( .A(b[6]), .B(a[6]), .C(n145), .Z(n97) );
  GTECH_XOR3 U116 ( .A(b[7]), .B(a[7]), .C(n142), .Z(n92) );
  GTECH_OR2 U117 ( .A(n142), .B(a[7]), .Z(n143) );
  GTECH_OA21 U118 ( .A(a[6]), .B(n145), .C(n146), .Z(n142) );
  GTECH_NOT U119 ( .A(n147), .Z(n146) );
  GTECH_AOI21 U120 ( .A(n145), .B(a[6]), .C(b[6]), .Z(n147) );
  GTECH_OA21 U121 ( .A(a[5]), .B(n144), .C(n148), .Z(n145) );
  GTECH_NOT U122 ( .A(n149), .Z(n148) );
  GTECH_AOI21 U123 ( .A(n144), .B(a[5]), .C(b[5]), .Z(n149) );
  GTECH_AOI21 U124 ( .A(n99), .B(n100), .C(n150), .Z(n144) );
  GTECH_AOI21 U125 ( .A(n104), .B(a[4]), .C(b[4]), .Z(n150) );
  GTECH_NOT U126 ( .A(n100), .Z(n104) );
  GTECH_AOI222 U127 ( .A(n151), .B(a[3]), .C(b[3]), .D(n152), .E(n102), .F(
        n103), .Z(n100) );
  GTECH_OR2 U128 ( .A(n107), .B(n106), .Z(n103) );
  GTECH_NOT U129 ( .A(n108), .Z(n106) );
  GTECH_XNOR3 U130 ( .A(b[1]), .B(a[1]), .C(n153), .Z(n108) );
  GTECH_XOR3 U131 ( .A(b[2]), .B(a[2]), .C(n154), .Z(n107) );
  GTECH_XOR3 U132 ( .A(b[3]), .B(a[3]), .C(n151), .Z(n102) );
  GTECH_OR2 U133 ( .A(n151), .B(a[3]), .Z(n152) );
  GTECH_OA21 U134 ( .A(a[2]), .B(n154), .C(n155), .Z(n151) );
  GTECH_NOT U135 ( .A(n156), .Z(n155) );
  GTECH_AOI21 U136 ( .A(n154), .B(a[2]), .C(b[2]), .Z(n156) );
  GTECH_OA21 U137 ( .A(a[1]), .B(n153), .C(n157), .Z(n154) );
  GTECH_NOT U138 ( .A(n158), .Z(n157) );
  GTECH_AOI21 U139 ( .A(n153), .B(a[1]), .C(b[1]), .Z(n158) );
  GTECH_OA21 U140 ( .A(b[0]), .B(a[0]), .C(n159), .Z(n153) );
  GTECH_NOT U141 ( .A(n160), .Z(n159) );
  GTECH_AOI21 U142 ( .A(a[0]), .B(b[0]), .C(cin), .Z(n160) );
  GTECH_NOT U143 ( .A(a[4]), .Z(n99) );
  GTECH_NOT U144 ( .A(a[8]), .Z(n89) );
  GTECH_NOT U145 ( .A(a[12]), .Z(n117) );
endmodule

