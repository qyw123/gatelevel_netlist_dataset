
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
  GTECH_XNOR3 U56 ( .A(b[8]), .B(a[8]), .C(n89), .Z(sum[8]) );
  GTECH_XNOR2 U57 ( .A(n90), .B(n91), .Z(sum[7]) );
  GTECH_AND2 U58 ( .A(n92), .B(n93), .Z(n91) );
  GTECH_OAI21 U59 ( .A(n89), .B(n92), .C(n94), .Z(sum[6]) );
  GTECH_AO21 U60 ( .A(n93), .B(n95), .C(n96), .Z(n94) );
  GTECH_NOT U61 ( .A(n97), .Z(n92) );
  GTECH_NOT U62 ( .A(n93), .Z(n89) );
  GTECH_XOR2 U63 ( .A(n93), .B(n98), .Z(sum[5]) );
  GTECH_XNOR3 U64 ( .A(b[4]), .B(a[4]), .C(n99), .Z(sum[4]) );
  GTECH_XNOR2 U65 ( .A(n100), .B(n101), .Z(sum[3]) );
  GTECH_AND2 U66 ( .A(n102), .B(n103), .Z(n101) );
  GTECH_OAI21 U67 ( .A(n99), .B(n102), .C(n104), .Z(sum[2]) );
  GTECH_AO21 U68 ( .A(n103), .B(n105), .C(n106), .Z(n104) );
  GTECH_NOT U69 ( .A(n107), .Z(n102) );
  GTECH_NOT U70 ( .A(n103), .Z(n99) );
  GTECH_XOR2 U71 ( .A(n103), .B(n108), .Z(sum[1]) );
  GTECH_XNOR2 U72 ( .A(n109), .B(n110), .Z(sum[15]) );
  GTECH_AND2 U73 ( .A(n111), .B(cout), .Z(n110) );
  GTECH_OAI21 U74 ( .A(n112), .B(n111), .C(n113), .Z(sum[14]) );
  GTECH_AO21 U75 ( .A(cout), .B(n114), .C(n115), .Z(n113) );
  GTECH_NOT U76 ( .A(n116), .Z(n111) );
  GTECH_NOT U77 ( .A(cout), .Z(n112) );
  GTECH_XOR2 U78 ( .A(cout), .B(n117), .Z(sum[13]) );
  GTECH_XNOR3 U79 ( .A(b[12]), .B(a[12]), .C(n118), .Z(sum[12]) );
  GTECH_XNOR2 U80 ( .A(n119), .B(n120), .Z(sum[11]) );
  GTECH_AND2 U81 ( .A(n121), .B(n87), .Z(n120) );
  GTECH_OAI21 U82 ( .A(n118), .B(n121), .C(n122), .Z(sum[10]) );
  GTECH_AO21 U83 ( .A(n87), .B(n88), .C(n123), .Z(n122) );
  GTECH_NOT U84 ( .A(n124), .Z(n121) );
  GTECH_NOT U85 ( .A(n87), .Z(n118) );
  GTECH_ADD_ABC U86 ( .A(cin), .B(b[0]), .C(a[0]), .S(sum[0]) );
  GTECH_AO21 U87 ( .A(n125), .B(a[15]), .C(n126), .Z(cout) );
  GTECH_OAI21 U88 ( .A(n116), .B(n109), .C(n127), .Z(n126) );
  GTECH_OAI21 U89 ( .A(a[15]), .B(n125), .C(b[15]), .Z(n127) );
  GTECH_XNOR3 U90 ( .A(b[15]), .B(a[15]), .C(n125), .Z(n109) );
  GTECH_AND_NOT U91 ( .A(n115), .B(n117), .Z(n116) );
  GTECH_NOT U92 ( .A(n114), .Z(n117) );
  GTECH_XNOR3 U93 ( .A(b[13]), .B(a[13]), .C(n128), .Z(n114) );
  GTECH_XNOR3 U94 ( .A(b[14]), .B(a[14]), .C(n129), .Z(n115) );
  GTECH_AO21 U95 ( .A(n129), .B(a[14]), .C(n130), .Z(n125) );
  GTECH_OA21 U96 ( .A(a[14]), .B(n129), .C(b[14]), .Z(n130) );
  GTECH_AO21 U97 ( .A(n128), .B(a[13]), .C(n131), .Z(n129) );
  GTECH_OA21 U98 ( .A(a[13]), .B(n128), .C(b[13]), .Z(n131) );
  GTECH_AO21 U99 ( .A(n87), .B(a[12]), .C(n132), .Z(n128) );
  GTECH_OA21 U100 ( .A(a[12]), .B(n87), .C(b[12]), .Z(n132) );
  GTECH_AO21 U101 ( .A(n133), .B(a[11]), .C(n134), .Z(n87) );
  GTECH_OAI21 U102 ( .A(n124), .B(n119), .C(n135), .Z(n134) );
  GTECH_OAI21 U103 ( .A(a[11]), .B(n133), .C(b[11]), .Z(n135) );
  GTECH_XNOR3 U104 ( .A(b[11]), .B(a[11]), .C(n133), .Z(n119) );
  GTECH_AND2 U105 ( .A(n88), .B(n123), .Z(n124) );
  GTECH_XNOR3 U106 ( .A(b[10]), .B(a[10]), .C(n136), .Z(n123) );
  GTECH_XNOR3 U107 ( .A(b[9]), .B(a[9]), .C(n137), .Z(n88) );
  GTECH_AO21 U108 ( .A(n136), .B(a[10]), .C(n138), .Z(n133) );
  GTECH_OA21 U109 ( .A(a[10]), .B(n136), .C(b[10]), .Z(n138) );
  GTECH_AO21 U110 ( .A(n137), .B(a[9]), .C(n139), .Z(n136) );
  GTECH_OA21 U111 ( .A(a[9]), .B(n137), .C(b[9]), .Z(n139) );
  GTECH_AO21 U112 ( .A(n93), .B(a[8]), .C(n140), .Z(n137) );
  GTECH_OA21 U113 ( .A(a[8]), .B(n93), .C(b[8]), .Z(n140) );
  GTECH_AO21 U114 ( .A(n141), .B(a[7]), .C(n142), .Z(n93) );
  GTECH_OAI21 U115 ( .A(n97), .B(n90), .C(n143), .Z(n142) );
  GTECH_OAI21 U116 ( .A(a[7]), .B(n141), .C(b[7]), .Z(n143) );
  GTECH_XNOR3 U117 ( .A(b[7]), .B(a[7]), .C(n141), .Z(n90) );
  GTECH_AND_NOT U118 ( .A(n96), .B(n98), .Z(n97) );
  GTECH_NOT U119 ( .A(n95), .Z(n98) );
  GTECH_XNOR3 U120 ( .A(b[5]), .B(a[5]), .C(n144), .Z(n95) );
  GTECH_XNOR3 U121 ( .A(b[6]), .B(a[6]), .C(n145), .Z(n96) );
  GTECH_AO21 U122 ( .A(n145), .B(a[6]), .C(n146), .Z(n141) );
  GTECH_OA21 U123 ( .A(a[6]), .B(n145), .C(b[6]), .Z(n146) );
  GTECH_AO21 U124 ( .A(n144), .B(a[5]), .C(n147), .Z(n145) );
  GTECH_OA21 U125 ( .A(a[5]), .B(n144), .C(b[5]), .Z(n147) );
  GTECH_AO21 U126 ( .A(n103), .B(a[4]), .C(n148), .Z(n144) );
  GTECH_OA21 U127 ( .A(a[4]), .B(n103), .C(b[4]), .Z(n148) );
  GTECH_AO21 U128 ( .A(n149), .B(a[3]), .C(n150), .Z(n103) );
  GTECH_OAI21 U129 ( .A(n107), .B(n100), .C(n151), .Z(n150) );
  GTECH_OAI21 U130 ( .A(a[3]), .B(n149), .C(b[3]), .Z(n151) );
  GTECH_XNOR3 U131 ( .A(b[3]), .B(a[3]), .C(n149), .Z(n100) );
  GTECH_AND_NOT U132 ( .A(n106), .B(n108), .Z(n107) );
  GTECH_NOT U133 ( .A(n105), .Z(n108) );
  GTECH_XNOR3 U134 ( .A(b[1]), .B(a[1]), .C(n152), .Z(n105) );
  GTECH_XNOR3 U135 ( .A(b[2]), .B(a[2]), .C(n153), .Z(n106) );
  GTECH_AO21 U136 ( .A(n153), .B(a[2]), .C(n154), .Z(n149) );
  GTECH_OA21 U137 ( .A(a[2]), .B(n153), .C(b[2]), .Z(n154) );
  GTECH_AO21 U138 ( .A(n152), .B(a[1]), .C(n155), .Z(n153) );
  GTECH_OA21 U139 ( .A(a[1]), .B(n152), .C(b[1]), .Z(n155) );
  GTECH_ADD_ABC U140 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n152) );
endmodule

