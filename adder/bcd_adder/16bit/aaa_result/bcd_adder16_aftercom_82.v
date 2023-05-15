
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
         n156, n157, n158, n159, n160, n161, n162, n163;

  GTECH_XOR2 U55 ( .A(n87), .B(n88), .Z(sum[9]) );
  GTECH_XNOR3 U56 ( .A(b[8]), .B(a[8]), .C(n89), .Z(sum[8]) );
  GTECH_XOR2 U57 ( .A(n90), .B(n91), .Z(sum[7]) );
  GTECH_AND_NOT U58 ( .A(n92), .B(n89), .Z(n91) );
  GTECH_OAI21 U59 ( .A(n89), .B(n92), .C(n93), .Z(sum[6]) );
  GTECH_OAI21 U60 ( .A(n89), .B(n94), .C(n95), .Z(n93) );
  GTECH_XNOR2 U61 ( .A(n94), .B(n89), .Z(sum[5]) );
  GTECH_XNOR3 U62 ( .A(b[4]), .B(a[4]), .C(n96), .Z(sum[4]) );
  GTECH_XOR2 U63 ( .A(n97), .B(n98), .Z(sum[3]) );
  GTECH_AND_NOT U64 ( .A(n99), .B(n96), .Z(n98) );
  GTECH_OAI21 U65 ( .A(n96), .B(n99), .C(n100), .Z(sum[2]) );
  GTECH_OAI21 U66 ( .A(n96), .B(n101), .C(n102), .Z(n100) );
  GTECH_XNOR2 U67 ( .A(n101), .B(n96), .Z(sum[1]) );
  GTECH_XOR2 U68 ( .A(n103), .B(n104), .Z(sum[15]) );
  GTECH_AND_NOT U69 ( .A(n105), .B(n106), .Z(n104) );
  GTECH_OAI21 U70 ( .A(n106), .B(n105), .C(n107), .Z(sum[14]) );
  GTECH_OAI21 U71 ( .A(n106), .B(n108), .C(n109), .Z(n107) );
  GTECH_XNOR2 U72 ( .A(n108), .B(n106), .Z(sum[13]) );
  GTECH_XNOR3 U73 ( .A(b[12]), .B(a[12]), .C(n110), .Z(sum[12]) );
  GTECH_XOR2 U74 ( .A(n111), .B(n112), .Z(sum[11]) );
  GTECH_AND_NOT U75 ( .A(n113), .B(n110), .Z(n112) );
  GTECH_OAI21 U76 ( .A(n110), .B(n113), .C(n114), .Z(sum[10]) );
  GTECH_OAI21 U77 ( .A(n110), .B(n87), .C(n115), .Z(n114) );
  GTECH_XNOR3 U78 ( .A(cin), .B(b[0]), .C(n116), .Z(sum[0]) );
  GTECH_NOT U79 ( .A(n106), .Z(cout) );
  GTECH_AOI222 U80 ( .A(a[15]), .B(n117), .C(b[15]), .D(n118), .E(n103), .F(
        n105), .Z(n106) );
  GTECH_OR2 U81 ( .A(n108), .B(n109), .Z(n105) );
  GTECH_XNOR3 U82 ( .A(n119), .B(n120), .C(n121), .Z(n109) );
  GTECH_XOR3 U83 ( .A(b[13]), .B(a[13]), .C(n122), .Z(n108) );
  GTECH_XOR3 U84 ( .A(b[15]), .B(a[15]), .C(n117), .Z(n103) );
  GTECH_OR2 U85 ( .A(n117), .B(a[15]), .Z(n118) );
  GTECH_OAI21 U86 ( .A(n121), .B(n120), .C(n123), .Z(n117) );
  GTECH_AO21 U87 ( .A(n120), .B(n121), .C(n119), .Z(n123) );
  GTECH_NOT U88 ( .A(b[14]), .Z(n119) );
  GTECH_NOT U89 ( .A(a[14]), .Z(n120) );
  GTECH_AOI21 U90 ( .A(a[13]), .B(n122), .C(n124), .Z(n121) );
  GTECH_NOT U91 ( .A(n125), .Z(n124) );
  GTECH_OAI21 U92 ( .A(n122), .B(a[13]), .C(b[13]), .Z(n125) );
  GTECH_AOI21 U93 ( .A(n126), .B(n110), .C(n127), .Z(n122) );
  GTECH_AOI21 U94 ( .A(n88), .B(a[12]), .C(b[12]), .Z(n127) );
  GTECH_NOT U95 ( .A(n110), .Z(n88) );
  GTECH_AOI222 U96 ( .A(a[11]), .B(n128), .C(b[11]), .D(n129), .E(n111), .F(
        n113), .Z(n110) );
  GTECH_OR_NOT U97 ( .A(n115), .B(n130), .Z(n113) );
  GTECH_NOT U98 ( .A(n87), .Z(n130) );
  GTECH_XOR3 U99 ( .A(b[9]), .B(a[9]), .C(n131), .Z(n87) );
  GTECH_XOR3 U100 ( .A(b[10]), .B(a[10]), .C(n132), .Z(n115) );
  GTECH_XOR3 U101 ( .A(b[11]), .B(a[11]), .C(n128), .Z(n111) );
  GTECH_OR2 U102 ( .A(a[11]), .B(n128), .Z(n129) );
  GTECH_NOT U103 ( .A(n133), .Z(n128) );
  GTECH_AOI21 U104 ( .A(n132), .B(a[10]), .C(n134), .Z(n133) );
  GTECH_NOT U105 ( .A(n135), .Z(n134) );
  GTECH_OAI21 U106 ( .A(a[10]), .B(n132), .C(b[10]), .Z(n135) );
  GTECH_AO21 U107 ( .A(n131), .B(a[9]), .C(n136), .Z(n132) );
  GTECH_NOT U108 ( .A(n137), .Z(n136) );
  GTECH_OAI21 U109 ( .A(n131), .B(a[9]), .C(b[9]), .Z(n137) );
  GTECH_AOI21 U110 ( .A(n138), .B(n89), .C(n139), .Z(n131) );
  GTECH_AOI21 U111 ( .A(n140), .B(a[8]), .C(b[8]), .Z(n139) );
  GTECH_NOT U112 ( .A(n89), .Z(n140) );
  GTECH_AOI222 U113 ( .A(a[7]), .B(n141), .C(b[7]), .D(n142), .E(n90), .F(n92), 
        .Z(n89) );
  GTECH_OR2 U114 ( .A(n94), .B(n95), .Z(n92) );
  GTECH_XOR3 U115 ( .A(b[6]), .B(a[6]), .C(n143), .Z(n95) );
  GTECH_XOR3 U116 ( .A(b[5]), .B(a[5]), .C(n144), .Z(n94) );
  GTECH_XOR3 U117 ( .A(b[7]), .B(a[7]), .C(n141), .Z(n90) );
  GTECH_OR2 U118 ( .A(a[7]), .B(n141), .Z(n142) );
  GTECH_NOT U119 ( .A(n145), .Z(n141) );
  GTECH_AOI21 U120 ( .A(n143), .B(a[6]), .C(n146), .Z(n145) );
  GTECH_NOT U121 ( .A(n147), .Z(n146) );
  GTECH_OAI21 U122 ( .A(a[6]), .B(n143), .C(b[6]), .Z(n147) );
  GTECH_AO21 U123 ( .A(n144), .B(a[5]), .C(n148), .Z(n143) );
  GTECH_NOT U124 ( .A(n149), .Z(n148) );
  GTECH_OAI21 U125 ( .A(n144), .B(a[5]), .C(b[5]), .Z(n149) );
  GTECH_AOI21 U126 ( .A(n150), .B(n96), .C(n151), .Z(n144) );
  GTECH_AOI21 U127 ( .A(n152), .B(a[4]), .C(b[4]), .Z(n151) );
  GTECH_NOT U128 ( .A(n96), .Z(n152) );
  GTECH_AOI222 U129 ( .A(a[3]), .B(n153), .C(b[3]), .D(n154), .E(n97), .F(n99), 
        .Z(n96) );
  GTECH_OR2 U130 ( .A(n101), .B(n102), .Z(n99) );
  GTECH_XOR3 U131 ( .A(b[2]), .B(a[2]), .C(n155), .Z(n102) );
  GTECH_XOR3 U132 ( .A(b[1]), .B(a[1]), .C(n156), .Z(n101) );
  GTECH_XOR3 U133 ( .A(b[3]), .B(a[3]), .C(n153), .Z(n97) );
  GTECH_OR2 U134 ( .A(a[3]), .B(n153), .Z(n154) );
  GTECH_NOT U135 ( .A(n157), .Z(n153) );
  GTECH_AOI21 U136 ( .A(n155), .B(a[2]), .C(n158), .Z(n157) );
  GTECH_NOT U137 ( .A(n159), .Z(n158) );
  GTECH_OAI21 U138 ( .A(a[2]), .B(n155), .C(b[2]), .Z(n159) );
  GTECH_AO21 U139 ( .A(n156), .B(a[1]), .C(n160), .Z(n155) );
  GTECH_NOT U140 ( .A(n161), .Z(n160) );
  GTECH_OAI21 U141 ( .A(n156), .B(a[1]), .C(b[1]), .Z(n161) );
  GTECH_AOI21 U142 ( .A(n162), .B(n116), .C(n163), .Z(n156) );
  GTECH_AOI21 U143 ( .A(a[0]), .B(b[0]), .C(cin), .Z(n163) );
  GTECH_NOT U144 ( .A(a[0]), .Z(n116) );
  GTECH_NOT U145 ( .A(b[0]), .Z(n162) );
  GTECH_NOT U146 ( .A(a[4]), .Z(n150) );
  GTECH_NOT U147 ( .A(a[8]), .Z(n138) );
  GTECH_NOT U148 ( .A(a[12]), .Z(n126) );
endmodule

