
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
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154;

  GTECH_XNOR2 U55 ( .A(n87), .B(n88), .Z(sum[9]) );
  GTECH_XNOR3 U56 ( .A(b[8]), .B(a[8]), .C(n89), .Z(sum[8]) );
  GTECH_XOR2 U57 ( .A(n90), .B(n91), .Z(sum[7]) );
  GTECH_AND2 U58 ( .A(n92), .B(n93), .Z(n91) );
  GTECH_OAI21 U59 ( .A(n89), .B(n92), .C(n94), .Z(sum[6]) );
  GTECH_AO21 U60 ( .A(n93), .B(n95), .C(n96), .Z(n94) );
  GTECH_XOR2 U61 ( .A(n93), .B(n97), .Z(sum[5]) );
  GTECH_XNOR3 U62 ( .A(b[4]), .B(a[4]), .C(n98), .Z(sum[4]) );
  GTECH_XOR2 U63 ( .A(n99), .B(n100), .Z(sum[3]) );
  GTECH_AND2 U64 ( .A(n101), .B(n102), .Z(n100) );
  GTECH_OAI21 U65 ( .A(n98), .B(n101), .C(n103), .Z(sum[2]) );
  GTECH_AO21 U66 ( .A(n102), .B(n104), .C(n105), .Z(n103) );
  GTECH_XOR2 U67 ( .A(n102), .B(n106), .Z(sum[1]) );
  GTECH_XOR2 U68 ( .A(n107), .B(n108), .Z(sum[15]) );
  GTECH_AND2 U69 ( .A(n109), .B(cout), .Z(n108) );
  GTECH_OAI21 U70 ( .A(n110), .B(n109), .C(n111), .Z(sum[14]) );
  GTECH_AO21 U71 ( .A(cout), .B(n112), .C(n113), .Z(n111) );
  GTECH_XOR2 U72 ( .A(cout), .B(n114), .Z(sum[13]) );
  GTECH_XNOR3 U73 ( .A(b[12]), .B(a[12]), .C(n115), .Z(sum[12]) );
  GTECH_XOR2 U74 ( .A(n116), .B(n117), .Z(sum[11]) );
  GTECH_AND2 U75 ( .A(n118), .B(n87), .Z(n117) );
  GTECH_OAI21 U76 ( .A(n115), .B(n118), .C(n119), .Z(sum[10]) );
  GTECH_AO21 U77 ( .A(n87), .B(n88), .C(n120), .Z(n119) );
  GTECH_ADD_ABC U78 ( .A(cin), .B(b[0]), .C(a[0]), .S(sum[0]) );
  GTECH_NOT U79 ( .A(n110), .Z(cout) );
  GTECH_AOI222 U80 ( .A(a[15]), .B(n121), .C(b[15]), .D(n122), .E(n107), .F(
        n109), .Z(n110) );
  GTECH_OR_NOT U81 ( .A(n114), .B(n113), .Z(n109) );
  GTECH_XNOR3 U82 ( .A(b[14]), .B(a[14]), .C(n123), .Z(n113) );
  GTECH_NOT U83 ( .A(n112), .Z(n114) );
  GTECH_XNOR3 U84 ( .A(b[13]), .B(a[13]), .C(n124), .Z(n112) );
  GTECH_ADD_ABC U85 ( .A(b[15]), .B(a[15]), .C(n121), .S(n107) );
  GTECH_OR2 U86 ( .A(a[15]), .B(n121), .Z(n122) );
  GTECH_NOT U87 ( .A(n125), .Z(n121) );
  GTECH_AOI21 U88 ( .A(n123), .B(a[14]), .C(n126), .Z(n125) );
  GTECH_OA21 U89 ( .A(a[14]), .B(n123), .C(b[14]), .Z(n126) );
  GTECH_AO21 U90 ( .A(n124), .B(a[13]), .C(n127), .Z(n123) );
  GTECH_OA21 U91 ( .A(a[13]), .B(n124), .C(b[13]), .Z(n127) );
  GTECH_AO21 U92 ( .A(n87), .B(a[12]), .C(n128), .Z(n124) );
  GTECH_NOT U93 ( .A(n129), .Z(n128) );
  GTECH_OAI21 U94 ( .A(a[12]), .B(n87), .C(b[12]), .Z(n129) );
  GTECH_NOT U95 ( .A(n115), .Z(n87) );
  GTECH_AOI222 U96 ( .A(a[11]), .B(n130), .C(b[11]), .D(n131), .E(n116), .F(
        n118), .Z(n115) );
  GTECH_NAND2 U97 ( .A(n88), .B(n120), .Z(n118) );
  GTECH_XNOR3 U98 ( .A(b[10]), .B(a[10]), .C(n132), .Z(n120) );
  GTECH_XNOR3 U99 ( .A(b[9]), .B(a[9]), .C(n133), .Z(n88) );
  GTECH_XNOR3 U100 ( .A(b[11]), .B(a[11]), .C(n134), .Z(n116) );
  GTECH_OR2 U101 ( .A(a[11]), .B(n130), .Z(n131) );
  GTECH_NOT U102 ( .A(n134), .Z(n130) );
  GTECH_AOI21 U103 ( .A(n132), .B(a[10]), .C(n135), .Z(n134) );
  GTECH_OA21 U104 ( .A(a[10]), .B(n132), .C(b[10]), .Z(n135) );
  GTECH_AO21 U105 ( .A(n133), .B(a[9]), .C(n136), .Z(n132) );
  GTECH_OA21 U106 ( .A(a[9]), .B(n133), .C(b[9]), .Z(n136) );
  GTECH_AO21 U107 ( .A(n93), .B(a[8]), .C(n137), .Z(n133) );
  GTECH_NOT U108 ( .A(n138), .Z(n137) );
  GTECH_OAI21 U109 ( .A(a[8]), .B(n93), .C(b[8]), .Z(n138) );
  GTECH_NOT U110 ( .A(n89), .Z(n93) );
  GTECH_AOI222 U111 ( .A(a[7]), .B(n139), .C(b[7]), .D(n140), .E(n90), .F(n92), 
        .Z(n89) );
  GTECH_OR_NOT U112 ( .A(n97), .B(n96), .Z(n92) );
  GTECH_XNOR3 U113 ( .A(b[6]), .B(a[6]), .C(n141), .Z(n96) );
  GTECH_NOT U114 ( .A(n95), .Z(n97) );
  GTECH_XNOR3 U115 ( .A(b[5]), .B(a[5]), .C(n142), .Z(n95) );
  GTECH_XNOR3 U116 ( .A(b[7]), .B(a[7]), .C(n143), .Z(n90) );
  GTECH_OR2 U117 ( .A(a[7]), .B(n139), .Z(n140) );
  GTECH_NOT U118 ( .A(n143), .Z(n139) );
  GTECH_AOI21 U119 ( .A(n141), .B(a[6]), .C(n144), .Z(n143) );
  GTECH_OA21 U120 ( .A(a[6]), .B(n141), .C(b[6]), .Z(n144) );
  GTECH_AO21 U121 ( .A(n142), .B(a[5]), .C(n145), .Z(n141) );
  GTECH_OA21 U122 ( .A(a[5]), .B(n142), .C(b[5]), .Z(n145) );
  GTECH_AO21 U123 ( .A(n102), .B(a[4]), .C(n146), .Z(n142) );
  GTECH_NOT U124 ( .A(n147), .Z(n146) );
  GTECH_OAI21 U125 ( .A(a[4]), .B(n102), .C(b[4]), .Z(n147) );
  GTECH_NOT U126 ( .A(n98), .Z(n102) );
  GTECH_AOI222 U127 ( .A(a[3]), .B(n148), .C(b[3]), .D(n149), .E(n99), .F(n101), .Z(n98) );
  GTECH_OR_NOT U128 ( .A(n106), .B(n105), .Z(n101) );
  GTECH_XNOR3 U129 ( .A(b[2]), .B(a[2]), .C(n150), .Z(n105) );
  GTECH_NOT U130 ( .A(n104), .Z(n106) );
  GTECH_XNOR3 U131 ( .A(b[1]), .B(a[1]), .C(n151), .Z(n104) );
  GTECH_XNOR3 U132 ( .A(b[3]), .B(a[3]), .C(n152), .Z(n99) );
  GTECH_OR2 U133 ( .A(a[3]), .B(n148), .Z(n149) );
  GTECH_NOT U134 ( .A(n152), .Z(n148) );
  GTECH_AOI21 U135 ( .A(n150), .B(a[2]), .C(n153), .Z(n152) );
  GTECH_OA21 U136 ( .A(a[2]), .B(n150), .C(b[2]), .Z(n153) );
  GTECH_AO21 U137 ( .A(n151), .B(a[1]), .C(n154), .Z(n150) );
  GTECH_OA21 U138 ( .A(a[1]), .B(n151), .C(b[1]), .Z(n154) );
  GTECH_ADD_ABC U139 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n151) );
endmodule

