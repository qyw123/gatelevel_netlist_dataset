
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
         n145, n146, n147, n148, n149, n150, n151, n152;

  GTECH_XNOR2 U55 ( .A(n87), .B(n88), .Z(sum[9]) );
  GTECH_XOR3 U56 ( .A(b[8]), .B(a[8]), .C(n89), .Z(sum[8]) );
  GTECH_XNOR2 U57 ( .A(n90), .B(n91), .Z(sum[7]) );
  GTECH_AND2 U58 ( .A(n92), .B(n89), .Z(n90) );
  GTECH_OAI21 U59 ( .A(n93), .B(n92), .C(n94), .Z(sum[6]) );
  GTECH_OAI21 U60 ( .A(n93), .B(n95), .C(n96), .Z(n94) );
  GTECH_NOT U61 ( .A(n97), .Z(n92) );
  GTECH_XNOR2 U62 ( .A(n93), .B(n95), .Z(sum[5]) );
  GTECH_NOT U63 ( .A(n89), .Z(n93) );
  GTECH_XOR3 U64 ( .A(b[4]), .B(a[4]), .C(n98), .Z(sum[4]) );
  GTECH_XNOR2 U65 ( .A(n99), .B(n100), .Z(sum[3]) );
  GTECH_AND2 U66 ( .A(n101), .B(n98), .Z(n99) );
  GTECH_OAI21 U67 ( .A(n102), .B(n101), .C(n103), .Z(sum[2]) );
  GTECH_OAI21 U68 ( .A(n102), .B(n104), .C(n105), .Z(n103) );
  GTECH_NOT U69 ( .A(n106), .Z(n101) );
  GTECH_XNOR2 U70 ( .A(n102), .B(n104), .Z(sum[1]) );
  GTECH_NOT U71 ( .A(n98), .Z(n102) );
  GTECH_XNOR2 U72 ( .A(n107), .B(n108), .Z(sum[15]) );
  GTECH_AND2 U73 ( .A(n109), .B(cout), .Z(n107) );
  GTECH_OAI21 U74 ( .A(n110), .B(n109), .C(n111), .Z(sum[14]) );
  GTECH_OAI21 U75 ( .A(n110), .B(n112), .C(n113), .Z(n111) );
  GTECH_NOT U76 ( .A(n114), .Z(n109) );
  GTECH_XNOR2 U77 ( .A(n110), .B(n112), .Z(sum[13]) );
  GTECH_NOT U78 ( .A(cout), .Z(n110) );
  GTECH_XOR3 U79 ( .A(b[12]), .B(a[12]), .C(n115), .Z(sum[12]) );
  GTECH_XNOR2 U80 ( .A(n116), .B(n117), .Z(sum[11]) );
  GTECH_AND2 U81 ( .A(n118), .B(n115), .Z(n116) );
  GTECH_OAI21 U82 ( .A(n87), .B(n118), .C(n119), .Z(sum[10]) );
  GTECH_OAI21 U83 ( .A(n87), .B(n88), .C(n120), .Z(n119) );
  GTECH_NOT U84 ( .A(n121), .Z(n118) );
  GTECH_NOT U85 ( .A(n115), .Z(n87) );
  GTECH_XOR3 U86 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_AO21 U87 ( .A(n122), .B(a[15]), .C(n123), .Z(cout) );
  GTECH_OAI21 U88 ( .A(n114), .B(n108), .C(n124), .Z(n123) );
  GTECH_OAI21 U89 ( .A(a[15]), .B(n122), .C(b[15]), .Z(n124) );
  GTECH_XNOR3 U90 ( .A(b[15]), .B(a[15]), .C(n122), .Z(n108) );
  GTECH_NOR2 U91 ( .A(n112), .B(n113), .Z(n114) );
  GTECH_XOR3 U92 ( .A(b[14]), .B(a[14]), .C(n125), .Z(n113) );
  GTECH_XOR3 U93 ( .A(b[13]), .B(a[13]), .C(n126), .Z(n112) );
  GTECH_AO21 U94 ( .A(n125), .B(a[14]), .C(n127), .Z(n122) );
  GTECH_OA21 U95 ( .A(a[14]), .B(n125), .C(b[14]), .Z(n127) );
  GTECH_AO21 U96 ( .A(n126), .B(a[13]), .C(n128), .Z(n125) );
  GTECH_OA21 U97 ( .A(a[13]), .B(n126), .C(b[13]), .Z(n128) );
  GTECH_AO21 U98 ( .A(n115), .B(a[12]), .C(n129), .Z(n126) );
  GTECH_OA21 U99 ( .A(a[12]), .B(n115), .C(b[12]), .Z(n129) );
  GTECH_AO21 U100 ( .A(n130), .B(a[11]), .C(n131), .Z(n115) );
  GTECH_OAI21 U101 ( .A(n121), .B(n117), .C(n132), .Z(n131) );
  GTECH_OAI21 U102 ( .A(a[11]), .B(n130), .C(b[11]), .Z(n132) );
  GTECH_XNOR3 U103 ( .A(b[11]), .B(a[11]), .C(n130), .Z(n117) );
  GTECH_NOR2 U104 ( .A(n88), .B(n120), .Z(n121) );
  GTECH_XOR3 U105 ( .A(b[10]), .B(a[10]), .C(n133), .Z(n120) );
  GTECH_XOR3 U106 ( .A(b[9]), .B(a[9]), .C(n134), .Z(n88) );
  GTECH_AO21 U107 ( .A(n133), .B(a[10]), .C(n135), .Z(n130) );
  GTECH_OA21 U108 ( .A(a[10]), .B(n133), .C(b[10]), .Z(n135) );
  GTECH_AO21 U109 ( .A(n134), .B(a[9]), .C(n136), .Z(n133) );
  GTECH_OA21 U110 ( .A(a[9]), .B(n134), .C(b[9]), .Z(n136) );
  GTECH_AO21 U111 ( .A(n89), .B(a[8]), .C(n137), .Z(n134) );
  GTECH_OA21 U112 ( .A(a[8]), .B(n89), .C(b[8]), .Z(n137) );
  GTECH_AO21 U113 ( .A(n138), .B(a[7]), .C(n139), .Z(n89) );
  GTECH_OAI21 U114 ( .A(n97), .B(n91), .C(n140), .Z(n139) );
  GTECH_OAI21 U115 ( .A(a[7]), .B(n138), .C(b[7]), .Z(n140) );
  GTECH_XNOR3 U116 ( .A(b[7]), .B(a[7]), .C(n138), .Z(n91) );
  GTECH_NOR2 U117 ( .A(n95), .B(n96), .Z(n97) );
  GTECH_XOR3 U118 ( .A(b[6]), .B(a[6]), .C(n141), .Z(n96) );
  GTECH_XOR3 U119 ( .A(b[5]), .B(a[5]), .C(n142), .Z(n95) );
  GTECH_AO21 U120 ( .A(n141), .B(a[6]), .C(n143), .Z(n138) );
  GTECH_OA21 U121 ( .A(a[6]), .B(n141), .C(b[6]), .Z(n143) );
  GTECH_AO21 U122 ( .A(n142), .B(a[5]), .C(n144), .Z(n141) );
  GTECH_OA21 U123 ( .A(a[5]), .B(n142), .C(b[5]), .Z(n144) );
  GTECH_AO21 U124 ( .A(n98), .B(a[4]), .C(n145), .Z(n142) );
  GTECH_OA21 U125 ( .A(a[4]), .B(n98), .C(b[4]), .Z(n145) );
  GTECH_AO21 U126 ( .A(n146), .B(a[3]), .C(n147), .Z(n98) );
  GTECH_OAI21 U127 ( .A(n106), .B(n100), .C(n148), .Z(n147) );
  GTECH_OAI21 U128 ( .A(a[3]), .B(n146), .C(b[3]), .Z(n148) );
  GTECH_XNOR3 U129 ( .A(b[3]), .B(a[3]), .C(n146), .Z(n100) );
  GTECH_NOR2 U130 ( .A(n104), .B(n105), .Z(n106) );
  GTECH_XOR3 U131 ( .A(b[2]), .B(a[2]), .C(n149), .Z(n105) );
  GTECH_XOR3 U132 ( .A(b[1]), .B(a[1]), .C(n150), .Z(n104) );
  GTECH_AO21 U133 ( .A(n149), .B(a[2]), .C(n151), .Z(n146) );
  GTECH_OA21 U134 ( .A(a[2]), .B(n149), .C(b[2]), .Z(n151) );
  GTECH_AO21 U135 ( .A(n150), .B(a[1]), .C(n152), .Z(n149) );
  GTECH_OA21 U136 ( .A(a[1]), .B(n150), .C(b[1]), .Z(n152) );
  GTECH_ADD_ABC U137 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n150) );
endmodule

