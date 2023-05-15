
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
         n156, n157, n158, n159, n160, n161, n162;

  GTECH_XNOR2 U55 ( .A(n87), .B(n88), .Z(sum[9]) );
  GTECH_XOR3 U56 ( .A(b[8]), .B(a[8]), .C(n89), .Z(sum[8]) );
  GTECH_XOR2 U57 ( .A(n90), .B(n91), .Z(sum[7]) );
  GTECH_AND_NOT U58 ( .A(n89), .B(n92), .Z(n91) );
  GTECH_AO21 U59 ( .A(n89), .B(n92), .C(n93), .Z(sum[6]) );
  GTECH_AOI21 U60 ( .A(n89), .B(n94), .C(n95), .Z(n93) );
  GTECH_XOR2 U61 ( .A(n96), .B(n94), .Z(sum[5]) );
  GTECH_XOR3 U62 ( .A(b[4]), .B(n97), .C(n98), .Z(sum[4]) );
  GTECH_XOR2 U63 ( .A(n99), .B(n100), .Z(sum[3]) );
  GTECH_AND_NOT U64 ( .A(n101), .B(n102), .Z(n100) );
  GTECH_AO21 U65 ( .A(n101), .B(n102), .C(n103), .Z(sum[2]) );
  GTECH_AOI21 U66 ( .A(n101), .B(n104), .C(n105), .Z(n103) );
  GTECH_XOR2 U67 ( .A(n98), .B(n104), .Z(sum[1]) );
  GTECH_XOR2 U68 ( .A(n106), .B(n107), .Z(sum[15]) );
  GTECH_AND_NOT U69 ( .A(n108), .B(n109), .Z(n107) );
  GTECH_AO21 U70 ( .A(cout), .B(n110), .C(n111), .Z(sum[14]) );
  GTECH_AOI21 U71 ( .A(cout), .B(n112), .C(n113), .Z(n111) );
  GTECH_XOR2 U72 ( .A(n109), .B(n112), .Z(sum[13]) );
  GTECH_XOR3 U73 ( .A(b[12]), .B(n114), .C(n87), .Z(sum[12]) );
  GTECH_XOR2 U74 ( .A(n115), .B(n116), .Z(sum[11]) );
  GTECH_AND_NOT U75 ( .A(n117), .B(n87), .Z(n116) );
  GTECH_OAI21 U76 ( .A(n87), .B(n117), .C(n118), .Z(sum[10]) );
  GTECH_OAI21 U77 ( .A(n87), .B(n88), .C(n119), .Z(n118) );
  GTECH_NOT U78 ( .A(n120), .Z(n119) );
  GTECH_XOR3 U79 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_NOT U80 ( .A(n109), .Z(cout) );
  GTECH_AOI222 U81 ( .A(a[15]), .B(n121), .C(b[15]), .D(n122), .E(n106), .F(
        n108), .Z(n109) );
  GTECH_NOT U82 ( .A(n110), .Z(n108) );
  GTECH_AND2 U83 ( .A(n112), .B(n113), .Z(n110) );
  GTECH_XNOR3 U84 ( .A(b[14]), .B(a[14]), .C(n123), .Z(n113) );
  GTECH_XNOR3 U85 ( .A(b[13]), .B(a[13]), .C(n124), .Z(n112) );
  GTECH_XOR3 U86 ( .A(b[15]), .B(a[15]), .C(n121), .Z(n106) );
  GTECH_OR2 U87 ( .A(a[15]), .B(n121), .Z(n122) );
  GTECH_AO21 U88 ( .A(n123), .B(a[14]), .C(n125), .Z(n121) );
  GTECH_NOT U89 ( .A(n126), .Z(n125) );
  GTECH_OAI21 U90 ( .A(a[14]), .B(n123), .C(b[14]), .Z(n126) );
  GTECH_NOT U91 ( .A(n127), .Z(n123) );
  GTECH_AOI21 U92 ( .A(n124), .B(a[13]), .C(n128), .Z(n127) );
  GTECH_NOT U93 ( .A(n129), .Z(n128) );
  GTECH_OAI21 U94 ( .A(a[13]), .B(n124), .C(b[13]), .Z(n129) );
  GTECH_OAI21 U95 ( .A(n87), .B(n114), .C(n130), .Z(n124) );
  GTECH_OAI21 U96 ( .A(a[12]), .B(n131), .C(b[12]), .Z(n130) );
  GTECH_NOT U97 ( .A(n87), .Z(n131) );
  GTECH_NOT U98 ( .A(a[12]), .Z(n114) );
  GTECH_AOI222 U99 ( .A(a[11]), .B(n132), .C(b[11]), .D(n133), .E(n115), .F(
        n117), .Z(n87) );
  GTECH_OR_NOT U100 ( .A(n88), .B(n120), .Z(n117) );
  GTECH_XOR3 U101 ( .A(n134), .B(n135), .C(n136), .Z(n120) );
  GTECH_XOR3 U102 ( .A(b[9]), .B(a[9]), .C(n137), .Z(n88) );
  GTECH_XOR3 U103 ( .A(b[11]), .B(a[11]), .C(n132), .Z(n115) );
  GTECH_OR2 U104 ( .A(n132), .B(a[11]), .Z(n133) );
  GTECH_OAI21 U105 ( .A(n136), .B(n135), .C(n138), .Z(n132) );
  GTECH_AO21 U106 ( .A(n135), .B(n136), .C(n134), .Z(n138) );
  GTECH_NOT U107 ( .A(b[10]), .Z(n134) );
  GTECH_NOT U108 ( .A(a[10]), .Z(n135) );
  GTECH_AOI21 U109 ( .A(n137), .B(a[9]), .C(n139), .Z(n136) );
  GTECH_NOT U110 ( .A(n140), .Z(n139) );
  GTECH_OAI21 U111 ( .A(a[9]), .B(n137), .C(b[9]), .Z(n140) );
  GTECH_OAI21 U112 ( .A(n96), .B(n141), .C(n142), .Z(n137) );
  GTECH_OAI21 U113 ( .A(a[8]), .B(n89), .C(b[8]), .Z(n142) );
  GTECH_NOT U114 ( .A(n96), .Z(n89) );
  GTECH_NOT U115 ( .A(a[8]), .Z(n141) );
  GTECH_AOI222 U116 ( .A(a[7]), .B(n143), .C(b[7]), .D(n144), .E(n90), .F(n145), .Z(n96) );
  GTECH_NOT U117 ( .A(n92), .Z(n145) );
  GTECH_AND2 U118 ( .A(n94), .B(n95), .Z(n92) );
  GTECH_XNOR3 U119 ( .A(b[6]), .B(a[6]), .C(n146), .Z(n95) );
  GTECH_XNOR3 U120 ( .A(b[5]), .B(a[5]), .C(n147), .Z(n94) );
  GTECH_XOR3 U121 ( .A(b[7]), .B(a[7]), .C(n143), .Z(n90) );
  GTECH_OR2 U122 ( .A(n143), .B(a[7]), .Z(n144) );
  GTECH_AO21 U123 ( .A(n146), .B(a[6]), .C(n148), .Z(n143) );
  GTECH_NOT U124 ( .A(n149), .Z(n148) );
  GTECH_OAI21 U125 ( .A(a[6]), .B(n146), .C(b[6]), .Z(n149) );
  GTECH_NOT U126 ( .A(n150), .Z(n146) );
  GTECH_AOI21 U127 ( .A(n147), .B(a[5]), .C(n151), .Z(n150) );
  GTECH_NOT U128 ( .A(n152), .Z(n151) );
  GTECH_OAI21 U129 ( .A(a[5]), .B(n147), .C(b[5]), .Z(n152) );
  GTECH_OAI21 U130 ( .A(n98), .B(n97), .C(n153), .Z(n147) );
  GTECH_OAI21 U131 ( .A(a[4]), .B(n101), .C(b[4]), .Z(n153) );
  GTECH_NOT U132 ( .A(n98), .Z(n101) );
  GTECH_NOT U133 ( .A(a[4]), .Z(n97) );
  GTECH_AOI222 U134 ( .A(a[3]), .B(n154), .C(b[3]), .D(n155), .E(n99), .F(n156), .Z(n98) );
  GTECH_NOT U135 ( .A(n102), .Z(n156) );
  GTECH_AND2 U136 ( .A(n104), .B(n105), .Z(n102) );
  GTECH_XNOR3 U137 ( .A(b[2]), .B(a[2]), .C(n157), .Z(n105) );
  GTECH_XNOR3 U138 ( .A(b[1]), .B(a[1]), .C(n158), .Z(n104) );
  GTECH_XOR3 U139 ( .A(b[3]), .B(a[3]), .C(n154), .Z(n99) );
  GTECH_OR2 U140 ( .A(n154), .B(a[3]), .Z(n155) );
  GTECH_AO21 U141 ( .A(n157), .B(a[2]), .C(n159), .Z(n154) );
  GTECH_NOT U142 ( .A(n160), .Z(n159) );
  GTECH_OAI21 U143 ( .A(a[2]), .B(n157), .C(b[2]), .Z(n160) );
  GTECH_AO21 U144 ( .A(n158), .B(a[1]), .C(n161), .Z(n157) );
  GTECH_NOT U145 ( .A(n162), .Z(n161) );
  GTECH_OAI21 U146 ( .A(a[1]), .B(n158), .C(b[1]), .Z(n162) );
  GTECH_ADD_ABC U147 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n158) );
endmodule

