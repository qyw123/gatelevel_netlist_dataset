
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
         n145, n146, n147, n148, n149, n150, n151, n152, n153;

  GTECH_XOR2 U55 ( .A(n87), .B(n88), .Z(sum[9]) );
  GTECH_XOR3 U56 ( .A(b[8]), .B(a[8]), .C(n89), .Z(sum[8]) );
  GTECH_XOR2 U57 ( .A(n90), .B(n91), .Z(sum[7]) );
  GTECH_AND_NOT U58 ( .A(n92), .B(n93), .Z(n90) );
  GTECH_OAI21 U59 ( .A(n93), .B(n92), .C(n94), .Z(sum[6]) );
  GTECH_AO21 U60 ( .A(n89), .B(n95), .C(n96), .Z(n94) );
  GTECH_XNOR2 U61 ( .A(n97), .B(n93), .Z(sum[5]) );
  GTECH_XOR3 U62 ( .A(b[4]), .B(a[4]), .C(n98), .Z(sum[4]) );
  GTECH_XOR2 U63 ( .A(n99), .B(n100), .Z(sum[3]) );
  GTECH_AND_NOT U64 ( .A(n101), .B(n102), .Z(n99) );
  GTECH_OAI21 U65 ( .A(n102), .B(n101), .C(n103), .Z(sum[2]) );
  GTECH_AO21 U66 ( .A(n98), .B(n104), .C(n105), .Z(n103) );
  GTECH_XNOR2 U67 ( .A(n106), .B(n102), .Z(sum[1]) );
  GTECH_XOR2 U68 ( .A(n107), .B(n108), .Z(sum[15]) );
  GTECH_AND_NOT U69 ( .A(n109), .B(n110), .Z(n107) );
  GTECH_OAI21 U70 ( .A(n110), .B(n109), .C(n111), .Z(sum[14]) );
  GTECH_AO21 U71 ( .A(cout), .B(n112), .C(n113), .Z(n111) );
  GTECH_XNOR2 U72 ( .A(n114), .B(n110), .Z(sum[13]) );
  GTECH_XOR3 U73 ( .A(b[12]), .B(a[12]), .C(n115), .Z(sum[12]) );
  GTECH_XOR2 U74 ( .A(n116), .B(n117), .Z(sum[11]) );
  GTECH_AND_NOT U75 ( .A(n118), .B(n88), .Z(n116) );
  GTECH_OAI21 U76 ( .A(n88), .B(n118), .C(n119), .Z(sum[10]) );
  GTECH_AO21 U77 ( .A(n115), .B(n87), .C(n120), .Z(n119) );
  GTECH_XOR3 U78 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_NOT U79 ( .A(n110), .Z(cout) );
  GTECH_AOI222 U80 ( .A(n121), .B(a[15]), .C(b[15]), .D(n122), .E(n108), .F(
        n109), .Z(n110) );
  GTECH_OR2 U81 ( .A(n123), .B(n114), .Z(n109) );
  GTECH_NOT U82 ( .A(n112), .Z(n114) );
  GTECH_XNOR3 U83 ( .A(b[13]), .B(a[13]), .C(n124), .Z(n112) );
  GTECH_NOT U84 ( .A(n113), .Z(n123) );
  GTECH_XNOR3 U85 ( .A(b[14]), .B(a[14]), .C(n125), .Z(n113) );
  GTECH_XOR3 U86 ( .A(b[15]), .B(a[15]), .C(n121), .Z(n108) );
  GTECH_OR2 U87 ( .A(a[15]), .B(n121), .Z(n122) );
  GTECH_OA21 U88 ( .A(a[14]), .B(n125), .C(n126), .Z(n121) );
  GTECH_AO21 U89 ( .A(a[14]), .B(n125), .C(b[14]), .Z(n126) );
  GTECH_OA21 U90 ( .A(a[13]), .B(n124), .C(n127), .Z(n125) );
  GTECH_AO21 U91 ( .A(a[13]), .B(n124), .C(b[13]), .Z(n127) );
  GTECH_OA21 U92 ( .A(a[12]), .B(n115), .C(n128), .Z(n124) );
  GTECH_AO21 U93 ( .A(n115), .B(a[12]), .C(b[12]), .Z(n128) );
  GTECH_NOT U94 ( .A(n88), .Z(n115) );
  GTECH_AOI222 U95 ( .A(n129), .B(a[11]), .C(b[11]), .D(n130), .E(n117), .F(
        n118), .Z(n88) );
  GTECH_OR2 U96 ( .A(n131), .B(n132), .Z(n118) );
  GTECH_NOT U97 ( .A(n87), .Z(n132) );
  GTECH_XNOR3 U98 ( .A(b[9]), .B(a[9]), .C(n133), .Z(n87) );
  GTECH_NOT U99 ( .A(n120), .Z(n131) );
  GTECH_XNOR3 U100 ( .A(b[10]), .B(a[10]), .C(n134), .Z(n120) );
  GTECH_XOR3 U101 ( .A(b[11]), .B(a[11]), .C(n129), .Z(n117) );
  GTECH_OR2 U102 ( .A(a[11]), .B(n129), .Z(n130) );
  GTECH_OA21 U103 ( .A(a[10]), .B(n134), .C(n135), .Z(n129) );
  GTECH_AO21 U104 ( .A(n134), .B(a[10]), .C(b[10]), .Z(n135) );
  GTECH_OA21 U105 ( .A(a[9]), .B(n133), .C(n136), .Z(n134) );
  GTECH_AO21 U106 ( .A(n133), .B(a[9]), .C(b[9]), .Z(n136) );
  GTECH_OA21 U107 ( .A(a[8]), .B(n89), .C(n137), .Z(n133) );
  GTECH_AO21 U108 ( .A(n89), .B(a[8]), .C(b[8]), .Z(n137) );
  GTECH_NOT U109 ( .A(n93), .Z(n89) );
  GTECH_AOI222 U110 ( .A(n138), .B(a[7]), .C(b[7]), .D(n139), .E(n91), .F(n92), 
        .Z(n93) );
  GTECH_OR2 U111 ( .A(n140), .B(n97), .Z(n92) );
  GTECH_NOT U112 ( .A(n95), .Z(n97) );
  GTECH_XNOR3 U113 ( .A(b[5]), .B(a[5]), .C(n141), .Z(n95) );
  GTECH_NOT U114 ( .A(n96), .Z(n140) );
  GTECH_XNOR3 U115 ( .A(b[6]), .B(a[6]), .C(n142), .Z(n96) );
  GTECH_XOR3 U116 ( .A(b[7]), .B(a[7]), .C(n138), .Z(n91) );
  GTECH_OR2 U117 ( .A(a[7]), .B(n138), .Z(n139) );
  GTECH_OA21 U118 ( .A(a[6]), .B(n142), .C(n143), .Z(n138) );
  GTECH_AO21 U119 ( .A(n142), .B(a[6]), .C(b[6]), .Z(n143) );
  GTECH_OA21 U120 ( .A(a[5]), .B(n141), .C(n144), .Z(n142) );
  GTECH_AO21 U121 ( .A(n141), .B(a[5]), .C(b[5]), .Z(n144) );
  GTECH_OA21 U122 ( .A(a[4]), .B(n98), .C(n145), .Z(n141) );
  GTECH_AO21 U123 ( .A(n98), .B(a[4]), .C(b[4]), .Z(n145) );
  GTECH_NOT U124 ( .A(n102), .Z(n98) );
  GTECH_AOI222 U125 ( .A(n146), .B(a[3]), .C(b[3]), .D(n147), .E(n100), .F(
        n101), .Z(n102) );
  GTECH_OR2 U126 ( .A(n148), .B(n106), .Z(n101) );
  GTECH_NOT U127 ( .A(n104), .Z(n106) );
  GTECH_XNOR3 U128 ( .A(b[1]), .B(a[1]), .C(n149), .Z(n104) );
  GTECH_NOT U129 ( .A(n105), .Z(n148) );
  GTECH_XNOR3 U130 ( .A(b[2]), .B(a[2]), .C(n150), .Z(n105) );
  GTECH_XOR3 U131 ( .A(b[3]), .B(a[3]), .C(n146), .Z(n100) );
  GTECH_OR2 U132 ( .A(a[3]), .B(n146), .Z(n147) );
  GTECH_OA21 U133 ( .A(a[2]), .B(n150), .C(n151), .Z(n146) );
  GTECH_AO21 U134 ( .A(n150), .B(a[2]), .C(b[2]), .Z(n151) );
  GTECH_OA21 U135 ( .A(a[1]), .B(n149), .C(n152), .Z(n150) );
  GTECH_AO21 U136 ( .A(n149), .B(a[1]), .C(b[1]), .Z(n152) );
  GTECH_OA21 U137 ( .A(b[0]), .B(a[0]), .C(n153), .Z(n149) );
  GTECH_AO21 U138 ( .A(a[0]), .B(b[0]), .C(cin), .Z(n153) );
endmodule

