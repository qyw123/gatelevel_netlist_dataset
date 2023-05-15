
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
  GTECH_ADD_ABC U56 ( .A(b[8]), .B(n89), .C(n90), .S(sum[8]) );
  GTECH_XOR2 U57 ( .A(n91), .B(n92), .Z(sum[7]) );
  GTECH_AND_NOT U58 ( .A(n93), .B(n90), .Z(n92) );
  GTECH_AO21 U59 ( .A(n94), .B(n95), .C(n96), .Z(sum[6]) );
  GTECH_AOI21 U60 ( .A(n94), .B(n97), .C(n98), .Z(n96) );
  GTECH_XNOR2 U61 ( .A(n90), .B(n99), .Z(sum[5]) );
  GTECH_ADD_ABC U62 ( .A(b[4]), .B(n100), .C(n101), .S(sum[4]) );
  GTECH_XOR2 U63 ( .A(n102), .B(n103), .Z(sum[3]) );
  GTECH_AND_NOT U64 ( .A(n104), .B(n101), .Z(n103) );
  GTECH_AO21 U65 ( .A(n105), .B(n106), .C(n107), .Z(sum[2]) );
  GTECH_AOI21 U66 ( .A(n105), .B(n108), .C(n109), .Z(n107) );
  GTECH_XNOR2 U67 ( .A(n101), .B(n110), .Z(sum[1]) );
  GTECH_XOR2 U68 ( .A(n111), .B(n112), .Z(sum[15]) );
  GTECH_AND_NOT U69 ( .A(n113), .B(n114), .Z(n112) );
  GTECH_AO21 U70 ( .A(cout), .B(n115), .C(n116), .Z(sum[14]) );
  GTECH_AOI21 U71 ( .A(cout), .B(n117), .C(n118), .Z(n116) );
  GTECH_XNOR2 U72 ( .A(n114), .B(n119), .Z(sum[13]) );
  GTECH_ADD_ABC U73 ( .A(b[12]), .B(n120), .C(n87), .S(sum[12]) );
  GTECH_XOR2 U74 ( .A(n121), .B(n122), .Z(sum[11]) );
  GTECH_AND_NOT U75 ( .A(n123), .B(n87), .Z(n122) );
  GTECH_OAI21 U76 ( .A(n87), .B(n123), .C(n124), .Z(sum[10]) );
  GTECH_AO21 U77 ( .A(n125), .B(n88), .C(n126), .Z(n124) );
  GTECH_ADD_ABC U78 ( .A(cin), .B(b[0]), .C(a[0]), .S(sum[0]) );
  GTECH_NOT U79 ( .A(n114), .Z(cout) );
  GTECH_AOI222 U80 ( .A(a[15]), .B(n127), .C(b[15]), .D(n128), .E(n111), .F(
        n113), .Z(n114) );
  GTECH_NOT U81 ( .A(n115), .Z(n113) );
  GTECH_AND2 U82 ( .A(n118), .B(n117), .Z(n115) );
  GTECH_NOT U83 ( .A(n119), .Z(n117) );
  GTECH_ADD_ABC U84 ( .A(b[13]), .B(a[13]), .C(n129), .S(n119) );
  GTECH_XNOR3 U85 ( .A(b[14]), .B(a[14]), .C(n130), .Z(n118) );
  GTECH_ADD_ABC U86 ( .A(b[15]), .B(a[15]), .C(n127), .S(n111) );
  GTECH_OR2 U87 ( .A(a[15]), .B(n127), .Z(n128) );
  GTECH_AO21 U88 ( .A(n130), .B(a[14]), .C(n131), .Z(n127) );
  GTECH_NOT U89 ( .A(n132), .Z(n131) );
  GTECH_OAI21 U90 ( .A(a[14]), .B(n130), .C(b[14]), .Z(n132) );
  GTECH_AO21 U91 ( .A(n129), .B(a[13]), .C(n133), .Z(n130) );
  GTECH_NOT U92 ( .A(n134), .Z(n133) );
  GTECH_OAI21 U93 ( .A(a[13]), .B(n129), .C(b[13]), .Z(n134) );
  GTECH_OAI21 U94 ( .A(n87), .B(n120), .C(n135), .Z(n129) );
  GTECH_OAI21 U95 ( .A(a[12]), .B(n125), .C(b[12]), .Z(n135) );
  GTECH_NOT U96 ( .A(n87), .Z(n125) );
  GTECH_NOT U97 ( .A(a[12]), .Z(n120) );
  GTECH_AOI222 U98 ( .A(a[11]), .B(n136), .C(b[11]), .D(n137), .E(n121), .F(
        n123), .Z(n87) );
  GTECH_NAND2 U99 ( .A(n88), .B(n126), .Z(n123) );
  GTECH_XNOR3 U100 ( .A(b[10]), .B(a[10]), .C(n138), .Z(n126) );
  GTECH_XNOR3 U101 ( .A(b[9]), .B(a[9]), .C(n139), .Z(n88) );
  GTECH_ADD_ABC U102 ( .A(b[11]), .B(a[11]), .C(n136), .S(n121) );
  GTECH_OR2 U103 ( .A(n136), .B(a[11]), .Z(n137) );
  GTECH_AO21 U104 ( .A(n138), .B(a[10]), .C(n140), .Z(n136) );
  GTECH_NOT U105 ( .A(n141), .Z(n140) );
  GTECH_OAI21 U106 ( .A(a[10]), .B(n138), .C(b[10]), .Z(n141) );
  GTECH_AO21 U107 ( .A(n139), .B(a[9]), .C(n142), .Z(n138) );
  GTECH_NOT U108 ( .A(n143), .Z(n142) );
  GTECH_OAI21 U109 ( .A(a[9]), .B(n139), .C(b[9]), .Z(n143) );
  GTECH_OAI21 U110 ( .A(n90), .B(n89), .C(n144), .Z(n139) );
  GTECH_OAI21 U111 ( .A(a[8]), .B(n94), .C(b[8]), .Z(n144) );
  GTECH_NOT U112 ( .A(n90), .Z(n94) );
  GTECH_NOT U113 ( .A(a[8]), .Z(n89) );
  GTECH_AOI222 U114 ( .A(a[7]), .B(n145), .C(b[7]), .D(n146), .E(n91), .F(n93), 
        .Z(n90) );
  GTECH_NOT U115 ( .A(n95), .Z(n93) );
  GTECH_AND2 U116 ( .A(n98), .B(n97), .Z(n95) );
  GTECH_NOT U117 ( .A(n99), .Z(n97) );
  GTECH_ADD_ABC U118 ( .A(b[5]), .B(a[5]), .C(n147), .S(n99) );
  GTECH_XNOR3 U119 ( .A(b[6]), .B(a[6]), .C(n148), .Z(n98) );
  GTECH_ADD_ABC U120 ( .A(b[7]), .B(a[7]), .C(n145), .S(n91) );
  GTECH_OR2 U121 ( .A(n145), .B(a[7]), .Z(n146) );
  GTECH_AO21 U122 ( .A(n148), .B(a[6]), .C(n149), .Z(n145) );
  GTECH_NOT U123 ( .A(n150), .Z(n149) );
  GTECH_OAI21 U124 ( .A(a[6]), .B(n148), .C(b[6]), .Z(n150) );
  GTECH_AO21 U125 ( .A(n147), .B(a[5]), .C(n151), .Z(n148) );
  GTECH_NOT U126 ( .A(n152), .Z(n151) );
  GTECH_OAI21 U127 ( .A(a[5]), .B(n147), .C(b[5]), .Z(n152) );
  GTECH_OAI21 U128 ( .A(n101), .B(n100), .C(n153), .Z(n147) );
  GTECH_OAI21 U129 ( .A(a[4]), .B(n105), .C(b[4]), .Z(n153) );
  GTECH_NOT U130 ( .A(n101), .Z(n105) );
  GTECH_NOT U131 ( .A(a[4]), .Z(n100) );
  GTECH_AOI222 U132 ( .A(a[3]), .B(n154), .C(b[3]), .D(n155), .E(n102), .F(
        n104), .Z(n101) );
  GTECH_NOT U133 ( .A(n106), .Z(n104) );
  GTECH_AND2 U134 ( .A(n109), .B(n108), .Z(n106) );
  GTECH_NOT U135 ( .A(n110), .Z(n108) );
  GTECH_ADD_ABC U136 ( .A(b[1]), .B(a[1]), .C(n156), .S(n110) );
  GTECH_XNOR3 U137 ( .A(b[2]), .B(a[2]), .C(n157), .Z(n109) );
  GTECH_ADD_ABC U138 ( .A(b[3]), .B(a[3]), .C(n154), .S(n102) );
  GTECH_OR_NOT U139 ( .A(a[3]), .B(n158), .Z(n155) );
  GTECH_NOT U140 ( .A(n154), .Z(n158) );
  GTECH_AO21 U141 ( .A(n157), .B(a[2]), .C(n159), .Z(n154) );
  GTECH_NOT U142 ( .A(n160), .Z(n159) );
  GTECH_OAI21 U143 ( .A(a[2]), .B(n157), .C(b[2]), .Z(n160) );
  GTECH_AO21 U144 ( .A(n156), .B(a[1]), .C(n161), .Z(n157) );
  GTECH_NOT U145 ( .A(n162), .Z(n161) );
  GTECH_OAI21 U146 ( .A(a[1]), .B(n156), .C(b[1]), .Z(n162) );
  GTECH_ADD_ABC U147 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n156) );
endmodule

