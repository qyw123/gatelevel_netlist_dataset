
module bcd_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160;

  GTECH_XNOR2 U56 ( .A(n88), .B(n89), .Z(sum[9]) );
  GTECH_XNOR3 U57 ( .A(b[8]), .B(a[8]), .C(n90), .Z(sum[8]) );
  GTECH_XOR2 U58 ( .A(n91), .B(n92), .Z(sum[7]) );
  GTECH_AND_NOT U59 ( .A(n93), .B(n90), .Z(n92) );
  GTECH_OAI22 U60 ( .A(n90), .B(n93), .C(n94), .D(n95), .Z(sum[6]) );
  GTECH_AND_NOT U61 ( .A(n96), .B(n90), .Z(n94) );
  GTECH_XNOR2 U62 ( .A(n97), .B(n96), .Z(sum[5]) );
  GTECH_XNOR3 U63 ( .A(b[4]), .B(a[4]), .C(n98), .Z(sum[4]) );
  GTECH_XOR2 U64 ( .A(n99), .B(n100), .Z(sum[3]) );
  GTECH_AND_NOT U65 ( .A(n101), .B(n98), .Z(n100) );
  GTECH_OAI22 U66 ( .A(n98), .B(n101), .C(n102), .D(n103), .Z(sum[2]) );
  GTECH_AND_NOT U67 ( .A(n104), .B(n98), .Z(n102) );
  GTECH_XNOR2 U68 ( .A(n105), .B(n104), .Z(sum[1]) );
  GTECH_XOR2 U69 ( .A(n106), .B(n107), .Z(sum[15]) );
  GTECH_AND_NOT U70 ( .A(n108), .B(n109), .Z(n107) );
  GTECH_OAI22 U71 ( .A(n109), .B(n108), .C(n110), .D(n111), .Z(sum[14]) );
  GTECH_AND_NOT U72 ( .A(n112), .B(n109), .Z(n110) );
  GTECH_XNOR2 U73 ( .A(cout), .B(n112), .Z(sum[13]) );
  GTECH_XNOR3 U74 ( .A(b[12]), .B(a[12]), .C(n88), .Z(sum[12]) );
  GTECH_XOR2 U75 ( .A(n113), .B(n114), .Z(sum[11]) );
  GTECH_AND_NOT U76 ( .A(n115), .B(n88), .Z(n114) );
  GTECH_OAI22 U77 ( .A(n88), .B(n115), .C(n116), .D(n117), .Z(sum[10]) );
  GTECH_NOR2 U78 ( .A(n88), .B(n89), .Z(n116) );
  GTECH_XOR3 U79 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_NOT U80 ( .A(n109), .Z(cout) );
  GTECH_AOI222 U81 ( .A(a[15]), .B(n118), .C(b[15]), .D(n119), .E(n106), .F(
        n108), .Z(n109) );
  GTECH_NAND2 U82 ( .A(n112), .B(n111), .Z(n108) );
  GTECH_XNOR3 U83 ( .A(b[14]), .B(a[14]), .C(n120), .Z(n111) );
  GTECH_XNOR3 U84 ( .A(b[13]), .B(a[13]), .C(n121), .Z(n112) );
  GTECH_XOR3 U85 ( .A(b[15]), .B(a[15]), .C(n118), .Z(n106) );
  GTECH_OR_NOT U86 ( .A(a[15]), .B(n122), .Z(n119) );
  GTECH_NOT U87 ( .A(n122), .Z(n118) );
  GTECH_AOI22 U88 ( .A(n120), .B(a[14]), .C(n123), .D(b[14]), .Z(n122) );
  GTECH_NOT U89 ( .A(n124), .Z(n123) );
  GTECH_NOR2 U90 ( .A(n120), .B(a[14]), .Z(n124) );
  GTECH_OAI2N2 U91 ( .A(n125), .B(n126), .C(n121), .D(a[13]), .Z(n120) );
  GTECH_NOT U92 ( .A(b[13]), .Z(n126) );
  GTECH_NOR2 U93 ( .A(n121), .B(a[13]), .Z(n125) );
  GTECH_OAI2N2 U94 ( .A(n88), .B(n127), .C(n128), .D(b[12]), .Z(n121) );
  GTECH_NAND2 U95 ( .A(n127), .B(n88), .Z(n128) );
  GTECH_NOT U96 ( .A(a[12]), .Z(n127) );
  GTECH_AOI222 U97 ( .A(a[11]), .B(n129), .C(b[11]), .D(n130), .E(n113), .F(
        n115), .Z(n88) );
  GTECH_OR_NOT U98 ( .A(n89), .B(n117), .Z(n115) );
  GTECH_XNOR3 U99 ( .A(b[10]), .B(a[10]), .C(n131), .Z(n117) );
  GTECH_XOR3 U100 ( .A(b[9]), .B(a[9]), .C(n132), .Z(n89) );
  GTECH_XOR3 U101 ( .A(b[11]), .B(a[11]), .C(n129), .Z(n113) );
  GTECH_OR_NOT U102 ( .A(n129), .B(n133), .Z(n130) );
  GTECH_NOT U103 ( .A(a[11]), .Z(n133) );
  GTECH_AO22 U104 ( .A(n134), .B(b[10]), .C(n131), .D(a[10]), .Z(n129) );
  GTECH_NOT U105 ( .A(n135), .Z(n134) );
  GTECH_NOR2 U106 ( .A(n131), .B(a[10]), .Z(n135) );
  GTECH_AO22 U107 ( .A(n136), .B(b[9]), .C(n132), .D(a[9]), .Z(n131) );
  GTECH_NOT U108 ( .A(n137), .Z(n136) );
  GTECH_NOR2 U109 ( .A(n132), .B(a[9]), .Z(n137) );
  GTECH_AO22 U110 ( .A(n97), .B(a[8]), .C(n138), .D(b[8]), .Z(n132) );
  GTECH_OR_NOT U111 ( .A(a[8]), .B(n90), .Z(n138) );
  GTECH_NOT U112 ( .A(n90), .Z(n97) );
  GTECH_AOI222 U113 ( .A(a[7]), .B(n139), .C(b[7]), .D(n140), .E(n91), .F(n93), 
        .Z(n90) );
  GTECH_NAND2 U114 ( .A(n96), .B(n95), .Z(n93) );
  GTECH_XNOR3 U115 ( .A(b[6]), .B(a[6]), .C(n141), .Z(n95) );
  GTECH_XNOR3 U116 ( .A(b[5]), .B(a[5]), .C(n142), .Z(n96) );
  GTECH_XOR3 U117 ( .A(b[7]), .B(a[7]), .C(n139), .Z(n91) );
  GTECH_OR_NOT U118 ( .A(n139), .B(n143), .Z(n140) );
  GTECH_NOT U119 ( .A(a[7]), .Z(n143) );
  GTECH_AO22 U120 ( .A(n144), .B(b[6]), .C(n141), .D(a[6]), .Z(n139) );
  GTECH_NOT U121 ( .A(n145), .Z(n144) );
  GTECH_NOR2 U122 ( .A(n141), .B(a[6]), .Z(n145) );
  GTECH_OAI2N2 U123 ( .A(n146), .B(n147), .C(n142), .D(a[5]), .Z(n141) );
  GTECH_NOT U124 ( .A(b[5]), .Z(n147) );
  GTECH_NOR2 U125 ( .A(n142), .B(a[5]), .Z(n146) );
  GTECH_AO22 U126 ( .A(n105), .B(a[4]), .C(n148), .D(b[4]), .Z(n142) );
  GTECH_OR_NOT U127 ( .A(a[4]), .B(n98), .Z(n148) );
  GTECH_NOT U128 ( .A(n98), .Z(n105) );
  GTECH_AOI222 U129 ( .A(a[3]), .B(n149), .C(b[3]), .D(n150), .E(n99), .F(n101), .Z(n98) );
  GTECH_NAND2 U130 ( .A(n104), .B(n103), .Z(n101) );
  GTECH_XOR3 U131 ( .A(n151), .B(n152), .C(n153), .Z(n103) );
  GTECH_XOR3 U132 ( .A(b[1]), .B(a[1]), .C(n154), .Z(n104) );
  GTECH_XOR3 U133 ( .A(b[3]), .B(a[3]), .C(n149), .Z(n99) );
  GTECH_OR_NOT U134 ( .A(a[3]), .B(n155), .Z(n150) );
  GTECH_NOT U135 ( .A(n155), .Z(n149) );
  GTECH_OA22 U136 ( .A(n153), .B(n152), .C(n156), .D(n151), .Z(n155) );
  GTECH_NOT U137 ( .A(b[2]), .Z(n151) );
  GTECH_AND_NOT U138 ( .A(n153), .B(a[2]), .Z(n156) );
  GTECH_NOT U139 ( .A(a[2]), .Z(n152) );
  GTECH_AOI2N2 U140 ( .A(n157), .B(b[1]), .C(n154), .D(n158), .Z(n153) );
  GTECH_NOT U141 ( .A(a[1]), .Z(n158) );
  GTECH_NOT U142 ( .A(n159), .Z(n157) );
  GTECH_AND_NOT U143 ( .A(n154), .B(a[1]), .Z(n159) );
  GTECH_NOT U144 ( .A(n160), .Z(n154) );
  GTECH_ADD_ABC U145 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n160) );
endmodule

