
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
         n145, n146, n147;

  GTECH_XNOR2 U55 ( .A(n87), .B(n88), .Z(sum[9]) );
  GTECH_XOR3 U56 ( .A(b[8]), .B(a[8]), .C(n89), .Z(sum[8]) );
  GTECH_XNOR2 U57 ( .A(n90), .B(n91), .Z(sum[7]) );
  GTECH_AND_NOT U58 ( .A(n89), .B(n92), .Z(n91) );
  GTECH_AO21 U59 ( .A(n89), .B(n92), .C(n93), .Z(sum[6]) );
  GTECH_AOI21 U60 ( .A(n89), .B(n94), .C(n95), .Z(n93) );
  GTECH_XNOR2 U61 ( .A(n89), .B(n94), .Z(sum[5]) );
  GTECH_XOR3 U62 ( .A(b[4]), .B(a[4]), .C(n96), .Z(sum[4]) );
  GTECH_XNOR2 U63 ( .A(n97), .B(n98), .Z(sum[3]) );
  GTECH_AND_NOT U64 ( .A(n96), .B(n99), .Z(n98) );
  GTECH_AO21 U65 ( .A(n96), .B(n99), .C(n100), .Z(sum[2]) );
  GTECH_AOI21 U66 ( .A(n96), .B(n101), .C(n102), .Z(n100) );
  GTECH_XNOR2 U67 ( .A(n96), .B(n101), .Z(sum[1]) );
  GTECH_XNOR2 U68 ( .A(n103), .B(n104), .Z(sum[15]) );
  GTECH_AND_NOT U69 ( .A(cout), .B(n105), .Z(n104) );
  GTECH_AO21 U70 ( .A(cout), .B(n105), .C(n106), .Z(sum[14]) );
  GTECH_AOI21 U71 ( .A(cout), .B(n107), .C(n108), .Z(n106) );
  GTECH_XNOR2 U72 ( .A(cout), .B(n107), .Z(sum[13]) );
  GTECH_XOR3 U73 ( .A(b[12]), .B(a[12]), .C(n109), .Z(sum[12]) );
  GTECH_XNOR2 U74 ( .A(n110), .B(n111), .Z(sum[11]) );
  GTECH_NOR2 U75 ( .A(n87), .B(n112), .Z(n111) );
  GTECH_AO21 U76 ( .A(n109), .B(n112), .C(n113), .Z(sum[10]) );
  GTECH_OA21 U77 ( .A(n87), .B(n88), .C(n114), .Z(n113) );
  GTECH_NOT U78 ( .A(n109), .Z(n87) );
  GTECH_XOR3 U79 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_AO21 U80 ( .A(n115), .B(a[15]), .C(n116), .Z(cout) );
  GTECH_OAI21 U81 ( .A(n105), .B(n103), .C(n117), .Z(n116) );
  GTECH_OAI21 U82 ( .A(a[15]), .B(n115), .C(b[15]), .Z(n117) );
  GTECH_XNOR3 U83 ( .A(b[15]), .B(a[15]), .C(n115), .Z(n103) );
  GTECH_AND2 U84 ( .A(n107), .B(n108), .Z(n105) );
  GTECH_XNOR3 U85 ( .A(b[14]), .B(a[14]), .C(n118), .Z(n108) );
  GTECH_XNOR3 U86 ( .A(b[13]), .B(a[13]), .C(n119), .Z(n107) );
  GTECH_AO21 U87 ( .A(n118), .B(a[14]), .C(n120), .Z(n115) );
  GTECH_OA21 U88 ( .A(a[14]), .B(n118), .C(b[14]), .Z(n120) );
  GTECH_AO21 U89 ( .A(n119), .B(a[13]), .C(n121), .Z(n118) );
  GTECH_OA21 U90 ( .A(a[13]), .B(n119), .C(b[13]), .Z(n121) );
  GTECH_AO21 U91 ( .A(n109), .B(a[12]), .C(n122), .Z(n119) );
  GTECH_OA21 U92 ( .A(a[12]), .B(n109), .C(b[12]), .Z(n122) );
  GTECH_AO21 U93 ( .A(n123), .B(a[11]), .C(n124), .Z(n109) );
  GTECH_OAI21 U94 ( .A(n112), .B(n110), .C(n125), .Z(n124) );
  GTECH_OAI21 U95 ( .A(a[11]), .B(n123), .C(b[11]), .Z(n125) );
  GTECH_XNOR3 U96 ( .A(b[11]), .B(a[11]), .C(n123), .Z(n110) );
  GTECH_NOR2 U97 ( .A(n88), .B(n114), .Z(n112) );
  GTECH_XOR3 U98 ( .A(b[10]), .B(a[10]), .C(n126), .Z(n114) );
  GTECH_XNOR3 U99 ( .A(b[9]), .B(a[9]), .C(n127), .Z(n88) );
  GTECH_AO21 U100 ( .A(n126), .B(a[10]), .C(n128), .Z(n123) );
  GTECH_OA21 U101 ( .A(a[10]), .B(n126), .C(b[10]), .Z(n128) );
  GTECH_OAI21 U102 ( .A(n127), .B(n129), .C(n130), .Z(n126) );
  GTECH_AO21 U103 ( .A(n129), .B(n127), .C(n131), .Z(n130) );
  GTECH_NOT U104 ( .A(b[9]), .Z(n131) );
  GTECH_NOT U105 ( .A(a[9]), .Z(n129) );
  GTECH_AOI21 U106 ( .A(n89), .B(a[8]), .C(n132), .Z(n127) );
  GTECH_OA21 U107 ( .A(a[8]), .B(n89), .C(b[8]), .Z(n132) );
  GTECH_AO21 U108 ( .A(n133), .B(a[7]), .C(n134), .Z(n89) );
  GTECH_OAI21 U109 ( .A(n92), .B(n90), .C(n135), .Z(n134) );
  GTECH_OAI21 U110 ( .A(a[7]), .B(n133), .C(b[7]), .Z(n135) );
  GTECH_XNOR3 U111 ( .A(b[7]), .B(a[7]), .C(n133), .Z(n90) );
  GTECH_AND2 U112 ( .A(n94), .B(n95), .Z(n92) );
  GTECH_XNOR3 U113 ( .A(b[6]), .B(a[6]), .C(n136), .Z(n95) );
  GTECH_XNOR3 U114 ( .A(b[5]), .B(a[5]), .C(n137), .Z(n94) );
  GTECH_AO21 U115 ( .A(n136), .B(a[6]), .C(n138), .Z(n133) );
  GTECH_OA21 U116 ( .A(a[6]), .B(n136), .C(b[6]), .Z(n138) );
  GTECH_AO21 U117 ( .A(n137), .B(a[5]), .C(n139), .Z(n136) );
  GTECH_OA21 U118 ( .A(a[5]), .B(n137), .C(b[5]), .Z(n139) );
  GTECH_AO21 U119 ( .A(n96), .B(a[4]), .C(n140), .Z(n137) );
  GTECH_OA21 U120 ( .A(a[4]), .B(n96), .C(b[4]), .Z(n140) );
  GTECH_AO21 U121 ( .A(n141), .B(a[3]), .C(n142), .Z(n96) );
  GTECH_OAI21 U122 ( .A(n99), .B(n97), .C(n143), .Z(n142) );
  GTECH_OAI21 U123 ( .A(a[3]), .B(n141), .C(b[3]), .Z(n143) );
  GTECH_XNOR3 U124 ( .A(b[3]), .B(a[3]), .C(n141), .Z(n97) );
  GTECH_AND2 U125 ( .A(n101), .B(n102), .Z(n99) );
  GTECH_XNOR3 U126 ( .A(b[2]), .B(a[2]), .C(n144), .Z(n102) );
  GTECH_XNOR3 U127 ( .A(b[1]), .B(a[1]), .C(n145), .Z(n101) );
  GTECH_AO21 U128 ( .A(n144), .B(a[2]), .C(n146), .Z(n141) );
  GTECH_OA21 U129 ( .A(a[2]), .B(n144), .C(b[2]), .Z(n146) );
  GTECH_AO21 U130 ( .A(n145), .B(a[1]), .C(n147), .Z(n144) );
  GTECH_OA21 U131 ( .A(a[1]), .B(n145), .C(b[1]), .Z(n147) );
  GTECH_ADD_ABC U132 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n145) );
endmodule

