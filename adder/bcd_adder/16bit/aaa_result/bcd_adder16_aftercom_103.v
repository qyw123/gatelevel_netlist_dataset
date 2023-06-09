
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
         n156, n157, n158, n159, n160, n161, n162;

  GTECH_XOR2 U55 ( .A(n87), .B(n88), .Z(sum[9]) );
  GTECH_XNOR3 U56 ( .A(b[8]), .B(a[8]), .C(n89), .Z(sum[8]) );
  GTECH_XOR2 U57 ( .A(n90), .B(n91), .Z(sum[7]) );
  GTECH_AND2 U58 ( .A(n92), .B(n93), .Z(n91) );
  GTECH_OAI21 U59 ( .A(n89), .B(n92), .C(n94), .Z(sum[6]) );
  GTECH_OAI21 U60 ( .A(n89), .B(n95), .C(n96), .Z(n94) );
  GTECH_NOT U61 ( .A(n93), .Z(n89) );
  GTECH_XOR2 U62 ( .A(n93), .B(n95), .Z(sum[5]) );
  GTECH_XNOR3 U63 ( .A(b[4]), .B(a[4]), .C(n97), .Z(sum[4]) );
  GTECH_XOR2 U64 ( .A(n98), .B(n99), .Z(sum[3]) );
  GTECH_AND2 U65 ( .A(n100), .B(n101), .Z(n99) );
  GTECH_OAI21 U66 ( .A(n97), .B(n100), .C(n102), .Z(sum[2]) );
  GTECH_OAI21 U67 ( .A(n97), .B(n103), .C(n104), .Z(n102) );
  GTECH_NOT U68 ( .A(n101), .Z(n97) );
  GTECH_XOR2 U69 ( .A(n101), .B(n103), .Z(sum[1]) );
  GTECH_XNOR2 U70 ( .A(n105), .B(n106), .Z(sum[15]) );
  GTECH_AND_NOT U71 ( .A(cout), .B(n107), .Z(n106) );
  GTECH_AO21 U72 ( .A(cout), .B(n107), .C(n108), .Z(sum[14]) );
  GTECH_AOI21 U73 ( .A(cout), .B(n109), .C(n110), .Z(n108) );
  GTECH_XNOR2 U74 ( .A(cout), .B(n109), .Z(sum[13]) );
  GTECH_XNOR3 U75 ( .A(b[12]), .B(a[12]), .C(n111), .Z(sum[12]) );
  GTECH_XOR2 U76 ( .A(n112), .B(n113), .Z(sum[11]) );
  GTECH_AND2 U77 ( .A(n114), .B(n87), .Z(n113) );
  GTECH_OAI21 U78 ( .A(n111), .B(n114), .C(n115), .Z(sum[10]) );
  GTECH_OAI21 U79 ( .A(n111), .B(n88), .C(n116), .Z(n115) );
  GTECH_NOT U80 ( .A(n87), .Z(n111) );
  GTECH_XOR3 U81 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_OAI21 U82 ( .A(n117), .B(n118), .C(n119), .Z(cout) );
  GTECH_AOI2N2 U83 ( .A(n120), .B(b[15]), .C(n107), .D(n105), .Z(n119) );
  GTECH_XNOR3 U84 ( .A(b[15]), .B(n118), .C(n117), .Z(n105) );
  GTECH_AND2 U85 ( .A(n110), .B(n109), .Z(n107) );
  GTECH_XNOR3 U86 ( .A(b[13]), .B(a[13]), .C(n121), .Z(n109) );
  GTECH_XNOR3 U87 ( .A(b[14]), .B(a[14]), .C(n122), .Z(n110) );
  GTECH_NAND2 U88 ( .A(n118), .B(n117), .Z(n120) );
  GTECH_NOT U89 ( .A(a[15]), .Z(n118) );
  GTECH_AOI21 U90 ( .A(n122), .B(a[14]), .C(n123), .Z(n117) );
  GTECH_NOT U91 ( .A(n124), .Z(n123) );
  GTECH_OAI21 U92 ( .A(a[14]), .B(n122), .C(b[14]), .Z(n124) );
  GTECH_AO21 U93 ( .A(n121), .B(a[13]), .C(n125), .Z(n122) );
  GTECH_NOT U94 ( .A(n126), .Z(n125) );
  GTECH_OAI21 U95 ( .A(a[13]), .B(n121), .C(b[13]), .Z(n126) );
  GTECH_AO21 U96 ( .A(n87), .B(a[12]), .C(n127), .Z(n121) );
  GTECH_NOT U97 ( .A(n128), .Z(n127) );
  GTECH_OAI21 U98 ( .A(a[12]), .B(n87), .C(b[12]), .Z(n128) );
  GTECH_OAI21 U99 ( .A(n129), .B(n130), .C(n131), .Z(n87) );
  GTECH_AOI22 U100 ( .A(n114), .B(n112), .C(n132), .D(b[11]), .Z(n131) );
  GTECH_NAND2 U101 ( .A(n130), .B(n129), .Z(n132) );
  GTECH_XNOR3 U102 ( .A(b[11]), .B(a[11]), .C(n129), .Z(n112) );
  GTECH_OR2 U103 ( .A(n88), .B(n116), .Z(n114) );
  GTECH_XOR3 U104 ( .A(b[10]), .B(a[10]), .C(n133), .Z(n116) );
  GTECH_XOR3 U105 ( .A(b[9]), .B(a[9]), .C(n134), .Z(n88) );
  GTECH_NOT U106 ( .A(a[11]), .Z(n130) );
  GTECH_AOI21 U107 ( .A(n133), .B(a[10]), .C(n135), .Z(n129) );
  GTECH_NOT U108 ( .A(n136), .Z(n135) );
  GTECH_OAI21 U109 ( .A(a[10]), .B(n133), .C(b[10]), .Z(n136) );
  GTECH_AO21 U110 ( .A(n134), .B(a[9]), .C(n137), .Z(n133) );
  GTECH_NOT U111 ( .A(n138), .Z(n137) );
  GTECH_OAI21 U112 ( .A(a[9]), .B(n134), .C(b[9]), .Z(n138) );
  GTECH_AO21 U113 ( .A(n93), .B(a[8]), .C(n139), .Z(n134) );
  GTECH_NOT U114 ( .A(n140), .Z(n139) );
  GTECH_OAI21 U115 ( .A(a[8]), .B(n93), .C(b[8]), .Z(n140) );
  GTECH_OAI21 U116 ( .A(n141), .B(n142), .C(n143), .Z(n93) );
  GTECH_AOI22 U117 ( .A(n92), .B(n90), .C(n144), .D(b[7]), .Z(n143) );
  GTECH_NAND2 U118 ( .A(n142), .B(n141), .Z(n144) );
  GTECH_XNOR3 U119 ( .A(b[7]), .B(a[7]), .C(n141), .Z(n90) );
  GTECH_OR2 U120 ( .A(n95), .B(n96), .Z(n92) );
  GTECH_XOR3 U121 ( .A(b[6]), .B(a[6]), .C(n145), .Z(n96) );
  GTECH_XOR3 U122 ( .A(b[5]), .B(a[5]), .C(n146), .Z(n95) );
  GTECH_NOT U123 ( .A(a[7]), .Z(n142) );
  GTECH_AOI21 U124 ( .A(n145), .B(a[6]), .C(n147), .Z(n141) );
  GTECH_NOT U125 ( .A(n148), .Z(n147) );
  GTECH_OAI21 U126 ( .A(a[6]), .B(n145), .C(b[6]), .Z(n148) );
  GTECH_AO21 U127 ( .A(n146), .B(a[5]), .C(n149), .Z(n145) );
  GTECH_NOT U128 ( .A(n150), .Z(n149) );
  GTECH_OAI21 U129 ( .A(a[5]), .B(n146), .C(b[5]), .Z(n150) );
  GTECH_AO21 U130 ( .A(n101), .B(a[4]), .C(n151), .Z(n146) );
  GTECH_NOT U131 ( .A(n152), .Z(n151) );
  GTECH_OAI21 U132 ( .A(a[4]), .B(n101), .C(b[4]), .Z(n152) );
  GTECH_OAI21 U133 ( .A(n153), .B(n154), .C(n155), .Z(n101) );
  GTECH_AOI22 U134 ( .A(n100), .B(n98), .C(n156), .D(b[3]), .Z(n155) );
  GTECH_NAND2 U135 ( .A(n154), .B(n153), .Z(n156) );
  GTECH_XNOR3 U136 ( .A(b[3]), .B(a[3]), .C(n153), .Z(n98) );
  GTECH_OR2 U137 ( .A(n103), .B(n104), .Z(n100) );
  GTECH_XOR3 U138 ( .A(b[2]), .B(a[2]), .C(n157), .Z(n104) );
  GTECH_XOR3 U139 ( .A(b[1]), .B(a[1]), .C(n158), .Z(n103) );
  GTECH_NOT U140 ( .A(a[3]), .Z(n154) );
  GTECH_AOI21 U141 ( .A(n157), .B(a[2]), .C(n159), .Z(n153) );
  GTECH_NOT U142 ( .A(n160), .Z(n159) );
  GTECH_OAI21 U143 ( .A(a[2]), .B(n157), .C(b[2]), .Z(n160) );
  GTECH_AO21 U144 ( .A(n158), .B(a[1]), .C(n161), .Z(n157) );
  GTECH_NOT U145 ( .A(n162), .Z(n161) );
  GTECH_OAI21 U146 ( .A(a[1]), .B(n158), .C(b[1]), .Z(n162) );
  GTECH_ADD_ABC U147 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n158) );
endmodule

