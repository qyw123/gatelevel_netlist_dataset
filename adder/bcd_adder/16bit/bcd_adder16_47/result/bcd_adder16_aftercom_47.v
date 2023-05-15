
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
         n148, n149, n150, n151, n152;

  GTECH_XNOR2 U59 ( .A(n91), .B(n92), .Z(sum[9]) );
  GTECH_XNOR3 U60 ( .A(b[8]), .B(a[8]), .C(n93), .Z(sum[8]) );
  GTECH_XOR2 U61 ( .A(n94), .B(n95), .Z(sum[7]) );
  GTECH_AND_NOT U62 ( .A(n96), .B(n93), .Z(n95) );
  GTECH_OAI21 U63 ( .A(n93), .B(n96), .C(n97), .Z(sum[6]) );
  GTECH_AO21 U64 ( .A(n98), .B(n99), .C(n100), .Z(n97) );
  GTECH_XNOR2 U65 ( .A(n98), .B(n99), .Z(sum[5]) );
  GTECH_XNOR3 U66 ( .A(b[4]), .B(a[4]), .C(n101), .Z(sum[4]) );
  GTECH_XOR2 U67 ( .A(n102), .B(n103), .Z(sum[3]) );
  GTECH_AND_NOT U68 ( .A(n104), .B(n101), .Z(n103) );
  GTECH_OAI21 U69 ( .A(n101), .B(n104), .C(n105), .Z(sum[2]) );
  GTECH_AO21 U70 ( .A(n106), .B(n107), .C(n108), .Z(n105) );
  GTECH_XNOR2 U71 ( .A(n106), .B(n107), .Z(sum[1]) );
  GTECH_XOR2 U72 ( .A(n109), .B(n110), .Z(sum[15]) );
  GTECH_AND_NOT U73 ( .A(n111), .B(n112), .Z(n110) );
  GTECH_OAI21 U74 ( .A(n112), .B(n111), .C(n113), .Z(sum[14]) );
  GTECH_AO21 U75 ( .A(cout), .B(n114), .C(n115), .Z(n113) );
  GTECH_XNOR2 U76 ( .A(cout), .B(n114), .Z(sum[13]) );
  GTECH_XNOR3 U77 ( .A(b[12]), .B(a[12]), .C(n116), .Z(sum[12]) );
  GTECH_XOR2 U78 ( .A(n117), .B(n118), .Z(sum[11]) );
  GTECH_AND_NOT U79 ( .A(n119), .B(n116), .Z(n118) );
  GTECH_OAI21 U80 ( .A(n116), .B(n119), .C(n120), .Z(sum[10]) );
  GTECH_AO21 U81 ( .A(n91), .B(n92), .C(n121), .Z(n120) );
  GTECH_XOR3 U82 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_NOT U83 ( .A(n112), .Z(cout) );
  GTECH_AOI222 U84 ( .A(a[15]), .B(n122), .C(b[15]), .D(n123), .E(n109), .F(
        n111), .Z(n112) );
  GTECH_NAND2 U85 ( .A(n115), .B(n114), .Z(n111) );
  GTECH_XNOR3 U86 ( .A(b[13]), .B(a[13]), .C(n124), .Z(n114) );
  GTECH_XNOR3 U87 ( .A(b[14]), .B(a[14]), .C(n125), .Z(n115) );
  GTECH_XOR3 U88 ( .A(b[15]), .B(a[15]), .C(n122), .Z(n109) );
  GTECH_OR_NOT U89 ( .A(a[15]), .B(n126), .Z(n123) );
  GTECH_NOT U90 ( .A(n122), .Z(n126) );
  GTECH_AO21 U91 ( .A(n125), .B(a[14]), .C(n127), .Z(n122) );
  GTECH_OA21 U92 ( .A(a[14]), .B(n125), .C(b[14]), .Z(n127) );
  GTECH_AO21 U93 ( .A(n124), .B(a[13]), .C(n128), .Z(n125) );
  GTECH_OA21 U94 ( .A(a[13]), .B(n124), .C(b[13]), .Z(n128) );
  GTECH_AO21 U95 ( .A(n91), .B(a[12]), .C(n129), .Z(n124) );
  GTECH_OA21 U96 ( .A(a[12]), .B(n91), .C(b[12]), .Z(n129) );
  GTECH_NOT U97 ( .A(n116), .Z(n91) );
  GTECH_AOI222 U98 ( .A(a[11]), .B(n130), .C(b[11]), .D(n131), .E(n117), .F(
        n119), .Z(n116) );
  GTECH_NAND2 U99 ( .A(n121), .B(n92), .Z(n119) );
  GTECH_XNOR3 U100 ( .A(b[9]), .B(a[9]), .C(n132), .Z(n92) );
  GTECH_XNOR3 U101 ( .A(b[10]), .B(a[10]), .C(n133), .Z(n121) );
  GTECH_XNOR3 U102 ( .A(b[11]), .B(a[11]), .C(n134), .Z(n117) );
  GTECH_OR_NOT U103 ( .A(a[11]), .B(n134), .Z(n131) );
  GTECH_NOT U104 ( .A(n130), .Z(n134) );
  GTECH_AO21 U105 ( .A(n133), .B(a[10]), .C(n135), .Z(n130) );
  GTECH_OA21 U106 ( .A(a[10]), .B(n133), .C(b[10]), .Z(n135) );
  GTECH_AO21 U107 ( .A(n132), .B(a[9]), .C(n136), .Z(n133) );
  GTECH_OA21 U108 ( .A(a[9]), .B(n132), .C(b[9]), .Z(n136) );
  GTECH_AO21 U109 ( .A(n98), .B(a[8]), .C(n137), .Z(n132) );
  GTECH_OA21 U110 ( .A(a[8]), .B(n98), .C(b[8]), .Z(n137) );
  GTECH_NOT U111 ( .A(n93), .Z(n98) );
  GTECH_AOI222 U112 ( .A(a[7]), .B(n138), .C(b[7]), .D(n139), .E(n94), .F(n96), 
        .Z(n93) );
  GTECH_NAND2 U113 ( .A(n100), .B(n99), .Z(n96) );
  GTECH_XNOR3 U114 ( .A(b[5]), .B(a[5]), .C(n140), .Z(n99) );
  GTECH_XNOR3 U115 ( .A(b[6]), .B(a[6]), .C(n141), .Z(n100) );
  GTECH_XNOR3 U116 ( .A(b[7]), .B(a[7]), .C(n142), .Z(n94) );
  GTECH_OR_NOT U117 ( .A(a[7]), .B(n142), .Z(n139) );
  GTECH_NOT U118 ( .A(n138), .Z(n142) );
  GTECH_AO21 U119 ( .A(n141), .B(a[6]), .C(n143), .Z(n138) );
  GTECH_OA21 U120 ( .A(a[6]), .B(n141), .C(b[6]), .Z(n143) );
  GTECH_AO21 U121 ( .A(n140), .B(a[5]), .C(n144), .Z(n141) );
  GTECH_OA21 U122 ( .A(a[5]), .B(n140), .C(b[5]), .Z(n144) );
  GTECH_AO21 U123 ( .A(n106), .B(a[4]), .C(n145), .Z(n140) );
  GTECH_OA21 U124 ( .A(a[4]), .B(n106), .C(b[4]), .Z(n145) );
  GTECH_NOT U125 ( .A(n101), .Z(n106) );
  GTECH_AOI222 U126 ( .A(a[3]), .B(n146), .C(b[3]), .D(n147), .E(n102), .F(
        n104), .Z(n101) );
  GTECH_NAND2 U127 ( .A(n108), .B(n107), .Z(n104) );
  GTECH_XNOR3 U128 ( .A(b[1]), .B(a[1]), .C(n148), .Z(n107) );
  GTECH_XNOR3 U129 ( .A(b[2]), .B(a[2]), .C(n149), .Z(n108) );
  GTECH_XNOR3 U130 ( .A(b[3]), .B(a[3]), .C(n150), .Z(n102) );
  GTECH_OR_NOT U131 ( .A(a[3]), .B(n150), .Z(n147) );
  GTECH_NOT U132 ( .A(n146), .Z(n150) );
  GTECH_AO21 U133 ( .A(n149), .B(a[2]), .C(n151), .Z(n146) );
  GTECH_OA21 U134 ( .A(a[2]), .B(n149), .C(b[2]), .Z(n151) );
  GTECH_AO21 U135 ( .A(n148), .B(a[1]), .C(n152), .Z(n149) );
  GTECH_OA21 U136 ( .A(a[1]), .B(n148), .C(b[1]), .Z(n152) );
  GTECH_ADD_ABC U137 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n148) );
endmodule

