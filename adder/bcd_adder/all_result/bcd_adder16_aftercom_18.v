
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
  GTECH_XNOR3 U56 ( .A(b[8]), .B(a[8]), .C(n89), .Z(sum[8]) );
  GTECH_ADD_AB U57 ( .A(n90), .B(n91), .S(sum[7]) );
  GTECH_AND2 U58 ( .A(n92), .B(n93), .Z(n90) );
  GTECH_OAI21 U59 ( .A(n89), .B(n92), .C(n94), .Z(sum[6]) );
  GTECH_AO21 U60 ( .A(n93), .B(n95), .C(n96), .Z(n94) );
  GTECH_XNOR2 U61 ( .A(n93), .B(n95), .Z(sum[5]) );
  GTECH_XNOR3 U62 ( .A(b[4]), .B(a[4]), .C(n97), .Z(sum[4]) );
  GTECH_ADD_AB U63 ( .A(n98), .B(n99), .S(sum[3]) );
  GTECH_AND2 U64 ( .A(n100), .B(n101), .Z(n98) );
  GTECH_OAI21 U65 ( .A(n97), .B(n100), .C(n102), .Z(sum[2]) );
  GTECH_AO21 U66 ( .A(n101), .B(n103), .C(n104), .Z(n102) );
  GTECH_XNOR2 U67 ( .A(n101), .B(n103), .Z(sum[1]) );
  GTECH_ADD_AB U68 ( .A(n105), .B(n106), .S(sum[15]) );
  GTECH_AND2 U69 ( .A(n107), .B(cout), .Z(n105) );
  GTECH_OAI21 U70 ( .A(n108), .B(n107), .C(n109), .Z(sum[14]) );
  GTECH_AO21 U71 ( .A(cout), .B(n110), .C(n111), .Z(n109) );
  GTECH_XNOR2 U72 ( .A(cout), .B(n110), .Z(sum[13]) );
  GTECH_XNOR3 U73 ( .A(b[12]), .B(a[12]), .C(n112), .Z(sum[12]) );
  GTECH_ADD_AB U74 ( .A(n113), .B(n114), .S(sum[11]) );
  GTECH_AND2 U75 ( .A(n115), .B(n87), .Z(n113) );
  GTECH_OAI21 U76 ( .A(n112), .B(n115), .C(n116), .Z(sum[10]) );
  GTECH_OAI21 U77 ( .A(n112), .B(n117), .C(n118), .Z(n116) );
  GTECH_ADD_ABC U78 ( .A(cin), .B(b[0]), .C(a[0]), .S(sum[0]) );
  GTECH_NOT U79 ( .A(n108), .Z(cout) );
  GTECH_AOI222 U80 ( .A(a[15]), .B(n119), .C(b[15]), .D(n120), .E(n106), .F(
        n107), .Z(n108) );
  GTECH_NAND2 U81 ( .A(n111), .B(n110), .Z(n107) );
  GTECH_XNOR3 U82 ( .A(b[13]), .B(a[13]), .C(n121), .Z(n110) );
  GTECH_XNOR3 U83 ( .A(b[14]), .B(a[14]), .C(n122), .Z(n111) );
  GTECH_XNOR3 U84 ( .A(b[15]), .B(a[15]), .C(n123), .Z(n106) );
  GTECH_OR2 U85 ( .A(a[15]), .B(n119), .Z(n120) );
  GTECH_NOT U86 ( .A(n123), .Z(n119) );
  GTECH_AOI21 U87 ( .A(n122), .B(a[14]), .C(n124), .Z(n123) );
  GTECH_OA21 U88 ( .A(a[14]), .B(n122), .C(b[14]), .Z(n124) );
  GTECH_AO21 U89 ( .A(n121), .B(a[13]), .C(n125), .Z(n122) );
  GTECH_OA21 U90 ( .A(a[13]), .B(n121), .C(b[13]), .Z(n125) );
  GTECH_AO21 U91 ( .A(n87), .B(a[12]), .C(n126), .Z(n121) );
  GTECH_NOT U92 ( .A(n127), .Z(n126) );
  GTECH_OAI21 U93 ( .A(a[12]), .B(n87), .C(b[12]), .Z(n127) );
  GTECH_NOT U94 ( .A(n112), .Z(n87) );
  GTECH_AOI222 U95 ( .A(a[11]), .B(n128), .C(b[11]), .D(n129), .E(n114), .F(
        n115), .Z(n112) );
  GTECH_OR2 U96 ( .A(n118), .B(n117), .Z(n115) );
  GTECH_NOT U97 ( .A(n88), .Z(n117) );
  GTECH_XNOR3 U98 ( .A(b[9]), .B(a[9]), .C(n130), .Z(n88) );
  GTECH_ADD_ABC U99 ( .A(b[10]), .B(a[10]), .C(n131), .S(n118) );
  GTECH_XNOR3 U100 ( .A(b[11]), .B(a[11]), .C(n132), .Z(n114) );
  GTECH_OR2 U101 ( .A(a[11]), .B(n128), .Z(n129) );
  GTECH_NOT U102 ( .A(n132), .Z(n128) );
  GTECH_AOI21 U103 ( .A(n131), .B(a[10]), .C(n133), .Z(n132) );
  GTECH_OA21 U104 ( .A(a[10]), .B(n131), .C(b[10]), .Z(n133) );
  GTECH_AO21 U105 ( .A(n130), .B(a[9]), .C(n134), .Z(n131) );
  GTECH_OA21 U106 ( .A(a[9]), .B(n130), .C(b[9]), .Z(n134) );
  GTECH_AO21 U107 ( .A(n93), .B(a[8]), .C(n135), .Z(n130) );
  GTECH_NOT U108 ( .A(n136), .Z(n135) );
  GTECH_OAI21 U109 ( .A(a[8]), .B(n93), .C(b[8]), .Z(n136) );
  GTECH_NOT U110 ( .A(n89), .Z(n93) );
  GTECH_AOI222 U111 ( .A(a[7]), .B(n137), .C(b[7]), .D(n138), .E(n91), .F(n92), 
        .Z(n89) );
  GTECH_NAND2 U112 ( .A(n96), .B(n95), .Z(n92) );
  GTECH_XNOR3 U113 ( .A(b[5]), .B(a[5]), .C(n139), .Z(n95) );
  GTECH_XNOR3 U114 ( .A(b[6]), .B(a[6]), .C(n140), .Z(n96) );
  GTECH_XNOR3 U115 ( .A(b[7]), .B(a[7]), .C(n141), .Z(n91) );
  GTECH_OR2 U116 ( .A(a[7]), .B(n137), .Z(n138) );
  GTECH_NOT U117 ( .A(n141), .Z(n137) );
  GTECH_AOI21 U118 ( .A(n140), .B(a[6]), .C(n142), .Z(n141) );
  GTECH_OA21 U119 ( .A(a[6]), .B(n140), .C(b[6]), .Z(n142) );
  GTECH_AO21 U120 ( .A(n139), .B(a[5]), .C(n143), .Z(n140) );
  GTECH_OA21 U121 ( .A(a[5]), .B(n139), .C(b[5]), .Z(n143) );
  GTECH_AO21 U122 ( .A(n101), .B(a[4]), .C(n144), .Z(n139) );
  GTECH_NOT U123 ( .A(n145), .Z(n144) );
  GTECH_OAI21 U124 ( .A(a[4]), .B(n101), .C(b[4]), .Z(n145) );
  GTECH_NOT U125 ( .A(n97), .Z(n101) );
  GTECH_AOI222 U126 ( .A(a[3]), .B(n146), .C(b[3]), .D(n147), .E(n99), .F(n100), .Z(n97) );
  GTECH_NAND2 U127 ( .A(n104), .B(n103), .Z(n100) );
  GTECH_XNOR3 U128 ( .A(b[1]), .B(a[1]), .C(n148), .Z(n103) );
  GTECH_XNOR3 U129 ( .A(b[2]), .B(a[2]), .C(n149), .Z(n104) );
  GTECH_XNOR3 U130 ( .A(b[3]), .B(a[3]), .C(n150), .Z(n99) );
  GTECH_OR2 U131 ( .A(a[3]), .B(n146), .Z(n147) );
  GTECH_NOT U132 ( .A(n150), .Z(n146) );
  GTECH_AOI21 U133 ( .A(n149), .B(a[2]), .C(n151), .Z(n150) );
  GTECH_OA21 U134 ( .A(a[2]), .B(n149), .C(b[2]), .Z(n151) );
  GTECH_AO21 U135 ( .A(n148), .B(a[1]), .C(n152), .Z(n149) );
  GTECH_OA21 U136 ( .A(a[1]), .B(n148), .C(b[1]), .Z(n152) );
  GTECH_ADD_ABC U137 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n148) );
endmodule

