
module bcd_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163;

  GTECH_XOR2 U63 ( .A(n95), .B(n96), .Z(sum[9]) );
  GTECH_XNOR3 U64 ( .A(b[8]), .B(a[8]), .C(n97), .Z(sum[8]) );
  GTECH_XOR2 U65 ( .A(n98), .B(n99), .Z(sum[7]) );
  GTECH_AND_NOT U66 ( .A(n100), .B(n97), .Z(n99) );
  GTECH_OAI21 U67 ( .A(n97), .B(n100), .C(n101), .Z(sum[6]) );
  GTECH_AO21 U68 ( .A(n102), .B(n103), .C(n104), .Z(n101) );
  GTECH_XNOR2 U69 ( .A(n102), .B(n103), .Z(sum[5]) );
  GTECH_XNOR3 U70 ( .A(b[4]), .B(a[4]), .C(n105), .Z(sum[4]) );
  GTECH_XOR2 U71 ( .A(n106), .B(n107), .Z(sum[3]) );
  GTECH_AND_NOT U72 ( .A(n108), .B(n105), .Z(n107) );
  GTECH_OAI21 U73 ( .A(n105), .B(n108), .C(n109), .Z(sum[2]) );
  GTECH_AO21 U74 ( .A(n110), .B(n111), .C(n112), .Z(n109) );
  GTECH_XNOR2 U75 ( .A(n110), .B(n111), .Z(sum[1]) );
  GTECH_XOR2 U76 ( .A(n113), .B(n114), .Z(sum[15]) );
  GTECH_AND_NOT U77 ( .A(n115), .B(n116), .Z(n114) );
  GTECH_OAI21 U78 ( .A(n116), .B(n115), .C(n117), .Z(sum[14]) );
  GTECH_AO21 U79 ( .A(cout), .B(n118), .C(n119), .Z(n117) );
  GTECH_XNOR2 U80 ( .A(cout), .B(n118), .Z(sum[13]) );
  GTECH_XNOR3 U81 ( .A(b[12]), .B(a[12]), .C(n120), .Z(sum[12]) );
  GTECH_XOR2 U82 ( .A(n121), .B(n122), .Z(sum[11]) );
  GTECH_AND_NOT U83 ( .A(n123), .B(n120), .Z(n122) );
  GTECH_OAI21 U84 ( .A(n120), .B(n123), .C(n124), .Z(sum[10]) );
  GTECH_OAI21 U85 ( .A(n120), .B(n96), .C(n125), .Z(n124) );
  GTECH_XOR3 U86 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_NOT U87 ( .A(n116), .Z(cout) );
  GTECH_AOI222 U88 ( .A(a[15]), .B(n126), .C(b[15]), .D(n127), .E(n113), .F(
        n115), .Z(n116) );
  GTECH_NAND2 U89 ( .A(n119), .B(n118), .Z(n115) );
  GTECH_XNOR3 U90 ( .A(b[13]), .B(a[13]), .C(n128), .Z(n118) );
  GTECH_XNOR3 U91 ( .A(b[14]), .B(a[14]), .C(n129), .Z(n119) );
  GTECH_XOR3 U92 ( .A(b[15]), .B(a[15]), .C(n126), .Z(n113) );
  GTECH_OR2 U93 ( .A(a[15]), .B(n126), .Z(n127) );
  GTECH_AO21 U94 ( .A(n129), .B(a[14]), .C(n130), .Z(n126) );
  GTECH_NOT U95 ( .A(n131), .Z(n130) );
  GTECH_OAI21 U96 ( .A(a[14]), .B(n129), .C(b[14]), .Z(n131) );
  GTECH_AO21 U97 ( .A(n128), .B(a[13]), .C(n132), .Z(n129) );
  GTECH_NOT U98 ( .A(n133), .Z(n132) );
  GTECH_OAI21 U99 ( .A(a[13]), .B(n128), .C(b[13]), .Z(n133) );
  GTECH_OAI21 U100 ( .A(n120), .B(n134), .C(n135), .Z(n128) );
  GTECH_OAI21 U101 ( .A(a[12]), .B(n95), .C(b[12]), .Z(n135) );
  GTECH_NOT U102 ( .A(n120), .Z(n95) );
  GTECH_NOT U103 ( .A(a[12]), .Z(n134) );
  GTECH_AOI222 U104 ( .A(a[11]), .B(n136), .C(b[11]), .D(n137), .E(n121), .F(
        n123), .Z(n120) );
  GTECH_OR2 U105 ( .A(n125), .B(n96), .Z(n123) );
  GTECH_XOR3 U106 ( .A(b[9]), .B(a[9]), .C(n138), .Z(n96) );
  GTECH_XOR3 U107 ( .A(b[10]), .B(a[10]), .C(n139), .Z(n125) );
  GTECH_XOR3 U108 ( .A(b[11]), .B(a[11]), .C(n136), .Z(n121) );
  GTECH_OR2 U109 ( .A(n136), .B(a[11]), .Z(n137) );
  GTECH_AO21 U110 ( .A(n139), .B(a[10]), .C(n140), .Z(n136) );
  GTECH_NOT U111 ( .A(n141), .Z(n140) );
  GTECH_OAI21 U112 ( .A(a[10]), .B(n139), .C(b[10]), .Z(n141) );
  GTECH_AO21 U113 ( .A(n138), .B(a[9]), .C(n142), .Z(n139) );
  GTECH_NOT U114 ( .A(n143), .Z(n142) );
  GTECH_OAI21 U115 ( .A(a[9]), .B(n138), .C(b[9]), .Z(n143) );
  GTECH_OAI21 U116 ( .A(n97), .B(n144), .C(n145), .Z(n138) );
  GTECH_OAI21 U117 ( .A(a[8]), .B(n102), .C(b[8]), .Z(n145) );
  GTECH_NOT U118 ( .A(n97), .Z(n102) );
  GTECH_NOT U119 ( .A(a[8]), .Z(n144) );
  GTECH_AOI222 U120 ( .A(a[7]), .B(n146), .C(b[7]), .D(n147), .E(n98), .F(n100), .Z(n97) );
  GTECH_NAND2 U121 ( .A(n104), .B(n103), .Z(n100) );
  GTECH_XNOR3 U122 ( .A(b[5]), .B(a[5]), .C(n148), .Z(n103) );
  GTECH_XNOR3 U123 ( .A(b[6]), .B(a[6]), .C(n149), .Z(n104) );
  GTECH_XOR3 U124 ( .A(b[7]), .B(a[7]), .C(n146), .Z(n98) );
  GTECH_OR2 U125 ( .A(n146), .B(a[7]), .Z(n147) );
  GTECH_AO21 U126 ( .A(n149), .B(a[6]), .C(n150), .Z(n146) );
  GTECH_NOT U127 ( .A(n151), .Z(n150) );
  GTECH_OAI21 U128 ( .A(a[6]), .B(n149), .C(b[6]), .Z(n151) );
  GTECH_AO21 U129 ( .A(n148), .B(a[5]), .C(n152), .Z(n149) );
  GTECH_NOT U130 ( .A(n153), .Z(n152) );
  GTECH_OAI21 U131 ( .A(a[5]), .B(n148), .C(b[5]), .Z(n153) );
  GTECH_OAI21 U132 ( .A(n105), .B(n154), .C(n155), .Z(n148) );
  GTECH_OAI21 U133 ( .A(a[4]), .B(n110), .C(b[4]), .Z(n155) );
  GTECH_NOT U134 ( .A(n105), .Z(n110) );
  GTECH_NOT U135 ( .A(a[4]), .Z(n154) );
  GTECH_AOI222 U136 ( .A(a[3]), .B(n156), .C(b[3]), .D(n157), .E(n106), .F(
        n108), .Z(n105) );
  GTECH_NAND2 U137 ( .A(n112), .B(n111), .Z(n108) );
  GTECH_XNOR3 U138 ( .A(b[1]), .B(a[1]), .C(n158), .Z(n111) );
  GTECH_XNOR3 U139 ( .A(b[2]), .B(a[2]), .C(n159), .Z(n112) );
  GTECH_XOR3 U140 ( .A(b[3]), .B(a[3]), .C(n156), .Z(n106) );
  GTECH_OR2 U141 ( .A(n156), .B(a[3]), .Z(n157) );
  GTECH_AO21 U142 ( .A(n159), .B(a[2]), .C(n160), .Z(n156) );
  GTECH_NOT U143 ( .A(n161), .Z(n160) );
  GTECH_OAI21 U144 ( .A(a[2]), .B(n159), .C(b[2]), .Z(n161) );
  GTECH_AO21 U145 ( .A(n158), .B(a[1]), .C(n162), .Z(n159) );
  GTECH_NOT U146 ( .A(n163), .Z(n162) );
  GTECH_OAI21 U147 ( .A(a[1]), .B(n158), .C(b[1]), .Z(n163) );
  GTECH_ADD_ABC U148 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n158) );
endmodule

