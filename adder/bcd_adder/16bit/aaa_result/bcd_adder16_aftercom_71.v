
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

  GTECH_XNOR2 U55 ( .A(n87), .B(n88), .Z(sum[9]) );
  GTECH_XOR3 U56 ( .A(b[8]), .B(a[8]), .C(n89), .Z(sum[8]) );
  GTECH_XOR2 U57 ( .A(n90), .B(n91), .Z(sum[7]) );
  GTECH_AND2 U58 ( .A(n92), .B(n89), .Z(n90) );
  GTECH_OAI21 U59 ( .A(n93), .B(n92), .C(n94), .Z(sum[6]) );
  GTECH_OAI21 U60 ( .A(n93), .B(n95), .C(n96), .Z(n94) );
  GTECH_XOR2 U61 ( .A(n95), .B(n89), .Z(sum[5]) );
  GTECH_XOR3 U62 ( .A(b[4]), .B(a[4]), .C(n97), .Z(sum[4]) );
  GTECH_XOR2 U63 ( .A(n98), .B(n99), .Z(sum[3]) );
  GTECH_AND2 U64 ( .A(n100), .B(n97), .Z(n98) );
  GTECH_OAI21 U65 ( .A(n101), .B(n100), .C(n102), .Z(sum[2]) );
  GTECH_OAI21 U66 ( .A(n101), .B(n103), .C(n104), .Z(n102) );
  GTECH_XOR2 U67 ( .A(n103), .B(n97), .Z(sum[1]) );
  GTECH_XOR2 U68 ( .A(n105), .B(n106), .Z(sum[15]) );
  GTECH_AND2 U69 ( .A(n107), .B(cout), .Z(n105) );
  GTECH_OAI21 U70 ( .A(n108), .B(n107), .C(n109), .Z(sum[14]) );
  GTECH_OAI21 U71 ( .A(n108), .B(n110), .C(n111), .Z(n109) );
  GTECH_XOR2 U72 ( .A(n110), .B(cout), .Z(sum[13]) );
  GTECH_XOR3 U73 ( .A(b[12]), .B(a[12]), .C(n112), .Z(sum[12]) );
  GTECH_XOR2 U74 ( .A(n113), .B(n114), .Z(sum[11]) );
  GTECH_AND2 U75 ( .A(n115), .B(n112), .Z(n113) );
  GTECH_OAI21 U76 ( .A(n88), .B(n115), .C(n116), .Z(sum[10]) );
  GTECH_OAI21 U77 ( .A(n88), .B(n87), .C(n117), .Z(n116) );
  GTECH_XOR3 U78 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_NOT U79 ( .A(n108), .Z(cout) );
  GTECH_AOI222 U80 ( .A(n118), .B(a[15]), .C(b[15]), .D(n119), .E(n106), .F(
        n107), .Z(n108) );
  GTECH_NAND2 U81 ( .A(n120), .B(n121), .Z(n107) );
  GTECH_NOT U82 ( .A(n110), .Z(n121) );
  GTECH_XOR3 U83 ( .A(b[13]), .B(a[13]), .C(n122), .Z(n110) );
  GTECH_NOT U84 ( .A(n111), .Z(n120) );
  GTECH_XOR3 U85 ( .A(b[14]), .B(a[14]), .C(n123), .Z(n111) );
  GTECH_XOR3 U86 ( .A(b[15]), .B(a[15]), .C(n118), .Z(n106) );
  GTECH_OR2 U87 ( .A(n118), .B(a[15]), .Z(n119) );
  GTECH_OA21 U88 ( .A(a[14]), .B(n123), .C(n124), .Z(n118) );
  GTECH_AO21 U89 ( .A(a[14]), .B(n123), .C(b[14]), .Z(n124) );
  GTECH_OA21 U90 ( .A(a[13]), .B(n122), .C(n125), .Z(n123) );
  GTECH_AO21 U91 ( .A(a[13]), .B(n122), .C(b[13]), .Z(n125) );
  GTECH_OA21 U92 ( .A(a[12]), .B(n112), .C(n126), .Z(n122) );
  GTECH_AO21 U93 ( .A(n112), .B(a[12]), .C(b[12]), .Z(n126) );
  GTECH_NOT U94 ( .A(n88), .Z(n112) );
  GTECH_AOI222 U95 ( .A(n127), .B(a[11]), .C(b[11]), .D(n128), .E(n114), .F(
        n115), .Z(n88) );
  GTECH_OR2 U96 ( .A(n87), .B(n117), .Z(n115) );
  GTECH_XOR3 U97 ( .A(b[10]), .B(a[10]), .C(n129), .Z(n117) );
  GTECH_XOR3 U98 ( .A(b[9]), .B(a[9]), .C(n130), .Z(n87) );
  GTECH_XOR3 U99 ( .A(b[11]), .B(a[11]), .C(n127), .Z(n114) );
  GTECH_OR2 U100 ( .A(n127), .B(a[11]), .Z(n128) );
  GTECH_OA21 U101 ( .A(a[10]), .B(n129), .C(n131), .Z(n127) );
  GTECH_AO21 U102 ( .A(n129), .B(a[10]), .C(b[10]), .Z(n131) );
  GTECH_OA21 U103 ( .A(a[9]), .B(n130), .C(n132), .Z(n129) );
  GTECH_AO21 U104 ( .A(n130), .B(a[9]), .C(b[9]), .Z(n132) );
  GTECH_OA21 U105 ( .A(a[8]), .B(n89), .C(n133), .Z(n130) );
  GTECH_AO21 U106 ( .A(n89), .B(a[8]), .C(b[8]), .Z(n133) );
  GTECH_NOT U107 ( .A(n93), .Z(n89) );
  GTECH_AOI222 U108 ( .A(n134), .B(a[7]), .C(b[7]), .D(n135), .E(n91), .F(n92), 
        .Z(n93) );
  GTECH_NAND2 U109 ( .A(n136), .B(n137), .Z(n92) );
  GTECH_NOT U110 ( .A(n95), .Z(n137) );
  GTECH_XOR3 U111 ( .A(b[5]), .B(a[5]), .C(n138), .Z(n95) );
  GTECH_NOT U112 ( .A(n96), .Z(n136) );
  GTECH_XOR3 U113 ( .A(b[6]), .B(a[6]), .C(n139), .Z(n96) );
  GTECH_XOR3 U114 ( .A(b[7]), .B(a[7]), .C(n134), .Z(n91) );
  GTECH_OR2 U115 ( .A(n134), .B(a[7]), .Z(n135) );
  GTECH_OA21 U116 ( .A(a[6]), .B(n139), .C(n140), .Z(n134) );
  GTECH_AO21 U117 ( .A(n139), .B(a[6]), .C(b[6]), .Z(n140) );
  GTECH_OA21 U118 ( .A(a[5]), .B(n138), .C(n141), .Z(n139) );
  GTECH_AO21 U119 ( .A(n138), .B(a[5]), .C(b[5]), .Z(n141) );
  GTECH_OA21 U120 ( .A(a[4]), .B(n97), .C(n142), .Z(n138) );
  GTECH_AO21 U121 ( .A(n97), .B(a[4]), .C(b[4]), .Z(n142) );
  GTECH_NOT U122 ( .A(n101), .Z(n97) );
  GTECH_AOI222 U123 ( .A(n143), .B(a[3]), .C(b[3]), .D(n144), .E(n99), .F(n100), .Z(n101) );
  GTECH_NAND2 U124 ( .A(n145), .B(n146), .Z(n100) );
  GTECH_NOT U125 ( .A(n103), .Z(n146) );
  GTECH_XOR3 U126 ( .A(b[1]), .B(a[1]), .C(n147), .Z(n103) );
  GTECH_NOT U127 ( .A(n104), .Z(n145) );
  GTECH_XOR3 U128 ( .A(b[2]), .B(a[2]), .C(n148), .Z(n104) );
  GTECH_XOR3 U129 ( .A(b[3]), .B(a[3]), .C(n143), .Z(n99) );
  GTECH_OR2 U130 ( .A(n143), .B(a[3]), .Z(n144) );
  GTECH_OA21 U131 ( .A(a[2]), .B(n148), .C(n149), .Z(n143) );
  GTECH_AO21 U132 ( .A(n148), .B(a[2]), .C(b[2]), .Z(n149) );
  GTECH_OA21 U133 ( .A(a[1]), .B(n147), .C(n150), .Z(n148) );
  GTECH_AO21 U134 ( .A(n147), .B(a[1]), .C(b[1]), .Z(n150) );
  GTECH_OA21 U135 ( .A(b[0]), .B(a[0]), .C(n151), .Z(n147) );
  GTECH_AO21 U136 ( .A(a[0]), .B(b[0]), .C(cin), .Z(n151) );
endmodule

