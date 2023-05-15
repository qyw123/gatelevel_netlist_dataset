
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
         n145, n146, n147, n148, n149, n150, n151;

  GTECH_XOR2 U55 ( .A(n87), .B(n88), .Z(sum[9]) );
  GTECH_XOR3 U56 ( .A(b[8]), .B(a[8]), .C(n89), .Z(sum[8]) );
  GTECH_XOR2 U57 ( .A(n90), .B(n91), .Z(sum[7]) );
  GTECH_NAND2 U58 ( .A(n89), .B(n92), .Z(n91) );
  GTECH_OAI21 U59 ( .A(n93), .B(n92), .C(n94), .Z(sum[6]) );
  GTECH_AO21 U60 ( .A(n89), .B(n95), .C(n96), .Z(n94) );
  GTECH_XOR2 U61 ( .A(n93), .B(n95), .Z(sum[5]) );
  GTECH_XOR3 U62 ( .A(b[4]), .B(a[4]), .C(n97), .Z(sum[4]) );
  GTECH_XOR2 U63 ( .A(n98), .B(n99), .Z(sum[3]) );
  GTECH_NAND2 U64 ( .A(n97), .B(n100), .Z(n99) );
  GTECH_OAI21 U65 ( .A(n101), .B(n100), .C(n102), .Z(sum[2]) );
  GTECH_AO21 U66 ( .A(n97), .B(n103), .C(n104), .Z(n102) );
  GTECH_XOR2 U67 ( .A(n101), .B(n103), .Z(sum[1]) );
  GTECH_XOR2 U68 ( .A(n105), .B(n106), .Z(sum[15]) );
  GTECH_OR_NOT U69 ( .A(n107), .B(cout), .Z(n106) );
  GTECH_AO21 U70 ( .A(cout), .B(n107), .C(n108), .Z(sum[14]) );
  GTECH_AOI21 U71 ( .A(cout), .B(n109), .C(n110), .Z(n108) );
  GTECH_XOR2 U72 ( .A(cout), .B(n111), .Z(sum[13]) );
  GTECH_XOR3 U73 ( .A(b[12]), .B(a[12]), .C(n112), .Z(sum[12]) );
  GTECH_XOR2 U74 ( .A(n113), .B(n114), .Z(sum[11]) );
  GTECH_NAND2 U75 ( .A(n112), .B(n115), .Z(n114) );
  GTECH_OAI21 U76 ( .A(n87), .B(n115), .C(n116), .Z(sum[10]) );
  GTECH_AO21 U77 ( .A(n112), .B(n88), .C(n117), .Z(n116) );
  GTECH_NOT U78 ( .A(n118), .Z(n115) );
  GTECH_XOR3 U79 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_AO21 U80 ( .A(n119), .B(a[15]), .C(n120), .Z(cout) );
  GTECH_OAI21 U81 ( .A(n107), .B(n105), .C(n121), .Z(n120) );
  GTECH_OAI21 U82 ( .A(a[15]), .B(n119), .C(b[15]), .Z(n121) );
  GTECH_XNOR3 U83 ( .A(b[15]), .B(a[15]), .C(n119), .Z(n105) );
  GTECH_AND_NOT U84 ( .A(n110), .B(n111), .Z(n107) );
  GTECH_NOT U85 ( .A(n109), .Z(n111) );
  GTECH_XNOR3 U86 ( .A(b[13]), .B(a[13]), .C(n122), .Z(n109) );
  GTECH_XNOR3 U87 ( .A(b[14]), .B(a[14]), .C(n123), .Z(n110) );
  GTECH_AO21 U88 ( .A(n123), .B(a[14]), .C(n124), .Z(n119) );
  GTECH_OA21 U89 ( .A(a[14]), .B(n123), .C(b[14]), .Z(n124) );
  GTECH_AO21 U90 ( .A(n122), .B(a[13]), .C(n125), .Z(n123) );
  GTECH_OA21 U91 ( .A(a[13]), .B(n122), .C(b[13]), .Z(n125) );
  GTECH_AO21 U92 ( .A(n112), .B(a[12]), .C(n126), .Z(n122) );
  GTECH_OA21 U93 ( .A(a[12]), .B(n112), .C(b[12]), .Z(n126) );
  GTECH_NOT U94 ( .A(n87), .Z(n112) );
  GTECH_AOI21 U95 ( .A(n127), .B(a[11]), .C(n128), .Z(n87) );
  GTECH_OAI21 U96 ( .A(n118), .B(n113), .C(n129), .Z(n128) );
  GTECH_OAI21 U97 ( .A(a[11]), .B(n127), .C(b[11]), .Z(n129) );
  GTECH_XNOR3 U98 ( .A(b[11]), .B(a[11]), .C(n127), .Z(n113) );
  GTECH_AND2 U99 ( .A(n88), .B(n117), .Z(n118) );
  GTECH_XNOR3 U100 ( .A(b[10]), .B(a[10]), .C(n130), .Z(n117) );
  GTECH_XNOR3 U101 ( .A(b[9]), .B(a[9]), .C(n131), .Z(n88) );
  GTECH_AO21 U102 ( .A(n130), .B(a[10]), .C(n132), .Z(n127) );
  GTECH_OA21 U103 ( .A(a[10]), .B(n130), .C(b[10]), .Z(n132) );
  GTECH_AO21 U104 ( .A(n131), .B(a[9]), .C(n133), .Z(n130) );
  GTECH_OA21 U105 ( .A(a[9]), .B(n131), .C(b[9]), .Z(n133) );
  GTECH_AO21 U106 ( .A(n89), .B(a[8]), .C(n134), .Z(n131) );
  GTECH_OA21 U107 ( .A(a[8]), .B(n89), .C(b[8]), .Z(n134) );
  GTECH_NOT U108 ( .A(n93), .Z(n89) );
  GTECH_AOI21 U109 ( .A(n135), .B(a[7]), .C(n136), .Z(n93) );
  GTECH_OAI21 U110 ( .A(n137), .B(n90), .C(n138), .Z(n136) );
  GTECH_OAI21 U111 ( .A(a[7]), .B(n135), .C(b[7]), .Z(n138) );
  GTECH_XNOR3 U112 ( .A(b[7]), .B(a[7]), .C(n135), .Z(n90) );
  GTECH_NOT U113 ( .A(n92), .Z(n137) );
  GTECH_NAND2 U114 ( .A(n96), .B(n95), .Z(n92) );
  GTECH_XNOR3 U115 ( .A(b[5]), .B(a[5]), .C(n139), .Z(n95) );
  GTECH_XNOR3 U116 ( .A(b[6]), .B(a[6]), .C(n140), .Z(n96) );
  GTECH_AO21 U117 ( .A(n140), .B(a[6]), .C(n141), .Z(n135) );
  GTECH_OA21 U118 ( .A(a[6]), .B(n140), .C(b[6]), .Z(n141) );
  GTECH_AO21 U119 ( .A(n139), .B(a[5]), .C(n142), .Z(n140) );
  GTECH_OA21 U120 ( .A(a[5]), .B(n139), .C(b[5]), .Z(n142) );
  GTECH_AO21 U121 ( .A(n97), .B(a[4]), .C(n143), .Z(n139) );
  GTECH_OA21 U122 ( .A(a[4]), .B(n97), .C(b[4]), .Z(n143) );
  GTECH_NOT U123 ( .A(n101), .Z(n97) );
  GTECH_AOI21 U124 ( .A(n144), .B(a[3]), .C(n145), .Z(n101) );
  GTECH_OAI21 U125 ( .A(n146), .B(n98), .C(n147), .Z(n145) );
  GTECH_OAI21 U126 ( .A(a[3]), .B(n144), .C(b[3]), .Z(n147) );
  GTECH_XNOR3 U127 ( .A(b[3]), .B(a[3]), .C(n144), .Z(n98) );
  GTECH_NOT U128 ( .A(n100), .Z(n146) );
  GTECH_NAND2 U129 ( .A(n104), .B(n103), .Z(n100) );
  GTECH_XNOR3 U130 ( .A(b[1]), .B(a[1]), .C(n148), .Z(n103) );
  GTECH_XNOR3 U131 ( .A(b[2]), .B(a[2]), .C(n149), .Z(n104) );
  GTECH_AO21 U132 ( .A(n149), .B(a[2]), .C(n150), .Z(n144) );
  GTECH_OA21 U133 ( .A(a[2]), .B(n149), .C(b[2]), .Z(n150) );
  GTECH_AO21 U134 ( .A(n148), .B(a[1]), .C(n151), .Z(n149) );
  GTECH_OA21 U135 ( .A(a[1]), .B(n148), .C(b[1]), .Z(n151) );
  GTECH_ADD_ABC U136 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n148) );
endmodule

