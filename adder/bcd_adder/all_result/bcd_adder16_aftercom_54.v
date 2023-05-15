
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
         n145, n146, n147, n148;

  GTECH_ADD_AB U55 ( .A(n87), .B(n88), .S(sum[9]) );
  GTECH_XOR3 U56 ( .A(b[8]), .B(a[8]), .C(n89), .Z(sum[8]) );
  GTECH_ADD_AB U57 ( .A(n90), .B(n91), .S(sum[7]) );
  GTECH_AND_NOT U58 ( .A(n92), .B(n93), .Z(n90) );
  GTECH_OAI21 U59 ( .A(n93), .B(n92), .C(n94), .Z(sum[6]) );
  GTECH_AO21 U60 ( .A(n89), .B(n95), .C(n96), .Z(n94) );
  GTECH_ADD_AB U61 ( .A(n89), .B(n97), .S(sum[5]) );
  GTECH_XOR3 U62 ( .A(b[4]), .B(a[4]), .C(n98), .Z(sum[4]) );
  GTECH_ADD_AB U63 ( .A(n99), .B(n100), .S(sum[3]) );
  GTECH_AND_NOT U64 ( .A(n101), .B(n102), .Z(n99) );
  GTECH_OAI21 U65 ( .A(n102), .B(n101), .C(n103), .Z(sum[2]) );
  GTECH_AO21 U66 ( .A(n98), .B(n104), .C(n105), .Z(n103) );
  GTECH_ADD_AB U67 ( .A(n98), .B(n106), .S(sum[1]) );
  GTECH_ADD_AB U68 ( .A(n107), .B(n108), .S(sum[15]) );
  GTECH_AND_NOT U69 ( .A(n109), .B(n110), .Z(n107) );
  GTECH_OAI21 U70 ( .A(n110), .B(n109), .C(n111), .Z(sum[14]) );
  GTECH_AO21 U71 ( .A(cout), .B(n112), .C(n113), .Z(n111) );
  GTECH_ADD_AB U72 ( .A(n110), .B(n112), .S(sum[13]) );
  GTECH_XOR3 U73 ( .A(b[12]), .B(a[12]), .C(n87), .Z(sum[12]) );
  GTECH_ADD_AB U74 ( .A(n114), .B(n115), .S(sum[11]) );
  GTECH_AND_NOT U75 ( .A(n116), .B(n117), .Z(n114) );
  GTECH_OAI21 U76 ( .A(n117), .B(n116), .C(n118), .Z(sum[10]) );
  GTECH_AO21 U77 ( .A(n87), .B(n119), .C(n120), .Z(n118) );
  GTECH_XOR3 U78 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_NOT U79 ( .A(n110), .Z(cout) );
  GTECH_AOI222 U80 ( .A(n121), .B(a[15]), .C(b[15]), .D(n122), .E(n108), .F(
        n109), .Z(n110) );
  GTECH_NAND2 U81 ( .A(n112), .B(n113), .Z(n109) );
  GTECH_XNOR3 U82 ( .A(b[14]), .B(a[14]), .C(n123), .Z(n113) );
  GTECH_XNOR3 U83 ( .A(b[13]), .B(a[13]), .C(n124), .Z(n112) );
  GTECH_XOR3 U84 ( .A(b[15]), .B(a[15]), .C(n121), .Z(n108) );
  GTECH_OR2 U85 ( .A(n121), .B(a[15]), .Z(n122) );
  GTECH_OA21 U86 ( .A(a[14]), .B(n123), .C(n125), .Z(n121) );
  GTECH_AO21 U87 ( .A(a[14]), .B(n123), .C(b[14]), .Z(n125) );
  GTECH_OA21 U88 ( .A(a[13]), .B(n124), .C(n126), .Z(n123) );
  GTECH_AO21 U89 ( .A(a[13]), .B(n124), .C(b[13]), .Z(n126) );
  GTECH_OA21 U90 ( .A(a[12]), .B(n87), .C(n127), .Z(n124) );
  GTECH_AO21 U91 ( .A(n87), .B(a[12]), .C(b[12]), .Z(n127) );
  GTECH_NOT U92 ( .A(n117), .Z(n87) );
  GTECH_AOI222 U93 ( .A(n128), .B(a[11]), .C(b[11]), .D(n129), .E(n115), .F(
        n116), .Z(n117) );
  GTECH_OR_NOT U94 ( .A(n88), .B(n120), .Z(n116) );
  GTECH_XNOR3 U95 ( .A(b[10]), .B(a[10]), .C(n130), .Z(n120) );
  GTECH_NOT U96 ( .A(n119), .Z(n88) );
  GTECH_XNOR3 U97 ( .A(b[9]), .B(a[9]), .C(n131), .Z(n119) );
  GTECH_XOR3 U98 ( .A(b[11]), .B(a[11]), .C(n128), .Z(n115) );
  GTECH_OR2 U99 ( .A(n128), .B(a[11]), .Z(n129) );
  GTECH_OA21 U100 ( .A(a[10]), .B(n130), .C(n132), .Z(n128) );
  GTECH_AO21 U101 ( .A(n130), .B(a[10]), .C(b[10]), .Z(n132) );
  GTECH_OA21 U102 ( .A(a[9]), .B(n131), .C(n133), .Z(n130) );
  GTECH_AO21 U103 ( .A(n131), .B(a[9]), .C(b[9]), .Z(n133) );
  GTECH_OA21 U104 ( .A(a[8]), .B(n89), .C(n134), .Z(n131) );
  GTECH_AO21 U105 ( .A(n89), .B(a[8]), .C(b[8]), .Z(n134) );
  GTECH_NOT U106 ( .A(n93), .Z(n89) );
  GTECH_AOI222 U107 ( .A(n135), .B(a[7]), .C(b[7]), .D(n136), .E(n91), .F(n92), 
        .Z(n93) );
  GTECH_OR_NOT U108 ( .A(n97), .B(n96), .Z(n92) );
  GTECH_XNOR3 U109 ( .A(b[6]), .B(a[6]), .C(n137), .Z(n96) );
  GTECH_NOT U110 ( .A(n95), .Z(n97) );
  GTECH_XNOR3 U111 ( .A(b[5]), .B(a[5]), .C(n138), .Z(n95) );
  GTECH_XOR3 U112 ( .A(b[7]), .B(a[7]), .C(n135), .Z(n91) );
  GTECH_OR2 U113 ( .A(n135), .B(a[7]), .Z(n136) );
  GTECH_OA21 U114 ( .A(a[6]), .B(n137), .C(n139), .Z(n135) );
  GTECH_AO21 U115 ( .A(n137), .B(a[6]), .C(b[6]), .Z(n139) );
  GTECH_OA21 U116 ( .A(a[5]), .B(n138), .C(n140), .Z(n137) );
  GTECH_AO21 U117 ( .A(n138), .B(a[5]), .C(b[5]), .Z(n140) );
  GTECH_OA21 U118 ( .A(a[4]), .B(n98), .C(n141), .Z(n138) );
  GTECH_AO21 U119 ( .A(n98), .B(a[4]), .C(b[4]), .Z(n141) );
  GTECH_NOT U120 ( .A(n102), .Z(n98) );
  GTECH_AOI222 U121 ( .A(n142), .B(a[3]), .C(b[3]), .D(n143), .E(n100), .F(
        n101), .Z(n102) );
  GTECH_OR_NOT U122 ( .A(n106), .B(n105), .Z(n101) );
  GTECH_XNOR3 U123 ( .A(b[2]), .B(a[2]), .C(n144), .Z(n105) );
  GTECH_NOT U124 ( .A(n104), .Z(n106) );
  GTECH_XNOR3 U125 ( .A(b[1]), .B(a[1]), .C(n145), .Z(n104) );
  GTECH_XOR3 U126 ( .A(b[3]), .B(a[3]), .C(n142), .Z(n100) );
  GTECH_OR2 U127 ( .A(n142), .B(a[3]), .Z(n143) );
  GTECH_OA21 U128 ( .A(a[2]), .B(n144), .C(n146), .Z(n142) );
  GTECH_AO21 U129 ( .A(n144), .B(a[2]), .C(b[2]), .Z(n146) );
  GTECH_OA21 U130 ( .A(a[1]), .B(n145), .C(n147), .Z(n144) );
  GTECH_AO21 U131 ( .A(n145), .B(a[1]), .C(b[1]), .Z(n147) );
  GTECH_OA21 U132 ( .A(b[0]), .B(a[0]), .C(n148), .Z(n145) );
  GTECH_AO21 U133 ( .A(a[0]), .B(b[0]), .C(cin), .Z(n148) );
endmodule

