
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
         n156, n157, n158, n159, n160, n161, n162, n163, n164;

  GTECH_XOR2 U55 ( .A(n87), .B(n88), .Z(sum[9]) );
  GTECH_XNOR3 U56 ( .A(b[8]), .B(a[8]), .C(n89), .Z(sum[8]) );
  GTECH_XNOR2 U57 ( .A(n90), .B(n91), .Z(sum[7]) );
  GTECH_AND_NOT U58 ( .A(n92), .B(n89), .Z(n91) );
  GTECH_OAI21 U59 ( .A(n89), .B(n92), .C(n93), .Z(sum[6]) );
  GTECH_OAI21 U60 ( .A(n89), .B(n94), .C(n95), .Z(n93) );
  GTECH_XNOR2 U61 ( .A(n89), .B(n94), .Z(sum[5]) );
  GTECH_XNOR3 U62 ( .A(b[4]), .B(a[4]), .C(n96), .Z(sum[4]) );
  GTECH_XNOR2 U63 ( .A(n97), .B(n98), .Z(sum[3]) );
  GTECH_AND_NOT U64 ( .A(n99), .B(n96), .Z(n98) );
  GTECH_OAI21 U65 ( .A(n96), .B(n99), .C(n100), .Z(sum[2]) );
  GTECH_OAI21 U66 ( .A(n96), .B(n101), .C(n102), .Z(n100) );
  GTECH_NOT U67 ( .A(n103), .Z(n99) );
  GTECH_XNOR2 U68 ( .A(n104), .B(n105), .Z(sum[1]) );
  GTECH_XNOR2 U69 ( .A(n106), .B(n107), .Z(sum[15]) );
  GTECH_AND_NOT U70 ( .A(n108), .B(n109), .Z(n107) );
  GTECH_OAI21 U71 ( .A(n109), .B(n108), .C(n110), .Z(sum[14]) );
  GTECH_OAI21 U72 ( .A(n109), .B(n111), .C(n112), .Z(n110) );
  GTECH_XNOR2 U73 ( .A(n109), .B(n111), .Z(sum[13]) );
  GTECH_XNOR3 U74 ( .A(b[12]), .B(a[12]), .C(n113), .Z(sum[12]) );
  GTECH_XNOR2 U75 ( .A(n114), .B(n115), .Z(sum[11]) );
  GTECH_AND_NOT U76 ( .A(n116), .B(n113), .Z(n115) );
  GTECH_OAI21 U77 ( .A(n113), .B(n116), .C(n117), .Z(sum[10]) );
  GTECH_OAI21 U78 ( .A(n113), .B(n88), .C(n118), .Z(n117) );
  GTECH_XOR3 U79 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_NOT U80 ( .A(n109), .Z(cout) );
  GTECH_AOI21 U81 ( .A(n119), .B(a[15]), .C(n120), .Z(n109) );
  GTECH_OAI21 U82 ( .A(n121), .B(n106), .C(n122), .Z(n120) );
  GTECH_OAI21 U83 ( .A(a[15]), .B(n119), .C(b[15]), .Z(n122) );
  GTECH_XOR3 U84 ( .A(b[15]), .B(a[15]), .C(n123), .Z(n106) );
  GTECH_NOT U85 ( .A(n108), .Z(n121) );
  GTECH_OR2 U86 ( .A(n111), .B(n112), .Z(n108) );
  GTECH_XNOR3 U87 ( .A(b[14]), .B(a[14]), .C(n124), .Z(n112) );
  GTECH_XNOR3 U88 ( .A(b[13]), .B(a[13]), .C(n125), .Z(n111) );
  GTECH_NOT U89 ( .A(n123), .Z(n119) );
  GTECH_AOI21 U90 ( .A(n126), .B(a[14]), .C(n127), .Z(n123) );
  GTECH_OA21 U91 ( .A(a[14]), .B(n126), .C(b[14]), .Z(n127) );
  GTECH_NOT U92 ( .A(n124), .Z(n126) );
  GTECH_AOI21 U93 ( .A(n128), .B(a[13]), .C(n129), .Z(n124) );
  GTECH_OA21 U94 ( .A(a[13]), .B(n128), .C(b[13]), .Z(n129) );
  GTECH_NOT U95 ( .A(n125), .Z(n128) );
  GTECH_AOI21 U96 ( .A(n87), .B(a[12]), .C(n130), .Z(n125) );
  GTECH_OA21 U97 ( .A(a[12]), .B(n87), .C(b[12]), .Z(n130) );
  GTECH_NOT U98 ( .A(n113), .Z(n87) );
  GTECH_AOI21 U99 ( .A(n131), .B(a[11]), .C(n132), .Z(n113) );
  GTECH_OAI21 U100 ( .A(n133), .B(n114), .C(n134), .Z(n132) );
  GTECH_OAI21 U101 ( .A(a[11]), .B(n131), .C(b[11]), .Z(n134) );
  GTECH_XOR3 U102 ( .A(b[11]), .B(a[11]), .C(n135), .Z(n114) );
  GTECH_NOT U103 ( .A(n116), .Z(n133) );
  GTECH_OR2 U104 ( .A(n88), .B(n118), .Z(n116) );
  GTECH_XNOR3 U105 ( .A(b[10]), .B(a[10]), .C(n136), .Z(n118) );
  GTECH_XOR3 U106 ( .A(b[9]), .B(a[9]), .C(n137), .Z(n88) );
  GTECH_NOT U107 ( .A(n135), .Z(n131) );
  GTECH_AOI21 U108 ( .A(n138), .B(a[10]), .C(n139), .Z(n135) );
  GTECH_OA21 U109 ( .A(a[10]), .B(n138), .C(b[10]), .Z(n139) );
  GTECH_NOT U110 ( .A(n136), .Z(n138) );
  GTECH_AOI21 U111 ( .A(n137), .B(a[9]), .C(n140), .Z(n136) );
  GTECH_OA21 U112 ( .A(a[9]), .B(n137), .C(b[9]), .Z(n140) );
  GTECH_NOT U113 ( .A(n141), .Z(n137) );
  GTECH_AOI21 U114 ( .A(n142), .B(a[8]), .C(n143), .Z(n141) );
  GTECH_OA21 U115 ( .A(a[8]), .B(n142), .C(b[8]), .Z(n143) );
  GTECH_NOT U116 ( .A(n89), .Z(n142) );
  GTECH_AOI21 U117 ( .A(n144), .B(a[7]), .C(n145), .Z(n89) );
  GTECH_OAI21 U118 ( .A(n146), .B(n90), .C(n147), .Z(n145) );
  GTECH_OAI21 U119 ( .A(a[7]), .B(n144), .C(b[7]), .Z(n147) );
  GTECH_XOR3 U120 ( .A(b[7]), .B(a[7]), .C(n148), .Z(n90) );
  GTECH_NOT U121 ( .A(n92), .Z(n146) );
  GTECH_OR2 U122 ( .A(n94), .B(n95), .Z(n92) );
  GTECH_XNOR3 U123 ( .A(b[6]), .B(a[6]), .C(n149), .Z(n95) );
  GTECH_XNOR3 U124 ( .A(b[5]), .B(a[5]), .C(n150), .Z(n94) );
  GTECH_NOT U125 ( .A(n148), .Z(n144) );
  GTECH_AOI21 U126 ( .A(n151), .B(a[6]), .C(n152), .Z(n148) );
  GTECH_OA21 U127 ( .A(a[6]), .B(n151), .C(b[6]), .Z(n152) );
  GTECH_NOT U128 ( .A(n149), .Z(n151) );
  GTECH_AOI21 U129 ( .A(n153), .B(a[5]), .C(n154), .Z(n149) );
  GTECH_OA21 U130 ( .A(a[5]), .B(n153), .C(b[5]), .Z(n154) );
  GTECH_NOT U131 ( .A(n150), .Z(n153) );
  GTECH_AOI21 U132 ( .A(n104), .B(a[4]), .C(n155), .Z(n150) );
  GTECH_OA21 U133 ( .A(a[4]), .B(n104), .C(b[4]), .Z(n155) );
  GTECH_NOT U134 ( .A(n96), .Z(n104) );
  GTECH_AOI21 U135 ( .A(n156), .B(a[3]), .C(n157), .Z(n96) );
  GTECH_OAI21 U136 ( .A(n103), .B(n97), .C(n158), .Z(n157) );
  GTECH_OAI21 U137 ( .A(a[3]), .B(n156), .C(b[3]), .Z(n158) );
  GTECH_XOR3 U138 ( .A(b[3]), .B(a[3]), .C(n159), .Z(n97) );
  GTECH_AND_NOT U139 ( .A(n105), .B(n102), .Z(n103) );
  GTECH_XNOR3 U140 ( .A(b[2]), .B(a[2]), .C(n160), .Z(n102) );
  GTECH_NOT U141 ( .A(n101), .Z(n105) );
  GTECH_XOR3 U142 ( .A(b[1]), .B(a[1]), .C(n161), .Z(n101) );
  GTECH_NOT U143 ( .A(n159), .Z(n156) );
  GTECH_AOI21 U144 ( .A(n162), .B(a[2]), .C(n163), .Z(n159) );
  GTECH_OA21 U145 ( .A(a[2]), .B(n162), .C(b[2]), .Z(n163) );
  GTECH_NOT U146 ( .A(n160), .Z(n162) );
  GTECH_AOI21 U147 ( .A(n161), .B(a[1]), .C(n164), .Z(n160) );
  GTECH_OA21 U148 ( .A(a[1]), .B(n161), .C(b[1]), .Z(n164) );
  GTECH_ADD_ABC U149 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n161) );
endmodule

