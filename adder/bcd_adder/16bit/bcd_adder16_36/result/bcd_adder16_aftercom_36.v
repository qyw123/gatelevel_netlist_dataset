
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

  GTECH_XNOR2 U55 ( .A(n87), .B(n88), .Z(sum[9]) );
  GTECH_XOR3 U56 ( .A(b[8]), .B(a[8]), .C(n89), .Z(sum[8]) );
  GTECH_XOR2 U57 ( .A(n90), .B(n91), .Z(sum[7]) );
  GTECH_AND2 U58 ( .A(n92), .B(n89), .Z(n91) );
  GTECH_OAI21 U59 ( .A(n93), .B(n92), .C(n94), .Z(sum[6]) );
  GTECH_OAI21 U60 ( .A(n93), .B(n95), .C(n96), .Z(n94) );
  GTECH_XNOR2 U61 ( .A(n93), .B(n95), .Z(sum[5]) );
  GTECH_XOR3 U62 ( .A(b[4]), .B(a[4]), .C(n97), .Z(sum[4]) );
  GTECH_XOR2 U63 ( .A(n98), .B(n99), .Z(sum[3]) );
  GTECH_AND2 U64 ( .A(n100), .B(n97), .Z(n99) );
  GTECH_OAI21 U65 ( .A(n101), .B(n100), .C(n102), .Z(sum[2]) );
  GTECH_OAI21 U66 ( .A(n101), .B(n103), .C(n104), .Z(n102) );
  GTECH_XNOR2 U67 ( .A(n101), .B(n103), .Z(sum[1]) );
  GTECH_XOR2 U68 ( .A(n105), .B(n106), .Z(sum[15]) );
  GTECH_AND2 U69 ( .A(n107), .B(cout), .Z(n106) );
  GTECH_OAI21 U70 ( .A(n108), .B(n107), .C(n109), .Z(sum[14]) );
  GTECH_OAI21 U71 ( .A(n108), .B(n110), .C(n111), .Z(n109) );
  GTECH_XNOR2 U72 ( .A(n108), .B(n110), .Z(sum[13]) );
  GTECH_XOR3 U73 ( .A(b[12]), .B(a[12]), .C(n112), .Z(sum[12]) );
  GTECH_XOR2 U74 ( .A(n113), .B(n114), .Z(sum[11]) );
  GTECH_AND2 U75 ( .A(n115), .B(n112), .Z(n114) );
  GTECH_OAI21 U76 ( .A(n87), .B(n115), .C(n116), .Z(sum[10]) );
  GTECH_OAI21 U77 ( .A(n87), .B(n88), .C(n117), .Z(n116) );
  GTECH_XOR3 U78 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_NOT U79 ( .A(n108), .Z(cout) );
  GTECH_AOI222 U80 ( .A(a[15]), .B(n118), .C(b[15]), .D(n119), .E(n105), .F(
        n107), .Z(n108) );
  GTECH_OR2 U81 ( .A(n111), .B(n110), .Z(n107) );
  GTECH_XOR3 U82 ( .A(b[13]), .B(n120), .C(n121), .Z(n110) );
  GTECH_XOR3 U83 ( .A(b[14]), .B(n122), .C(n123), .Z(n111) );
  GTECH_XOR3 U84 ( .A(b[15]), .B(a[15]), .C(n118), .Z(n105) );
  GTECH_OR_NOT U85 ( .A(a[15]), .B(n124), .Z(n119) );
  GTECH_NOT U86 ( .A(n124), .Z(n118) );
  GTECH_OA21 U87 ( .A(n123), .B(n122), .C(n125), .Z(n124) );
  GTECH_OAI21 U88 ( .A(a[14]), .B(n126), .C(b[14]), .Z(n125) );
  GTECH_NOT U89 ( .A(n123), .Z(n126) );
  GTECH_NOT U90 ( .A(a[14]), .Z(n122) );
  GTECH_OA21 U91 ( .A(n121), .B(n120), .C(n127), .Z(n123) );
  GTECH_OAI21 U92 ( .A(a[13]), .B(n128), .C(b[13]), .Z(n127) );
  GTECH_NOT U93 ( .A(n121), .Z(n128) );
  GTECH_NOT U94 ( .A(a[13]), .Z(n120) );
  GTECH_OA21 U95 ( .A(n87), .B(n129), .C(n130), .Z(n121) );
  GTECH_OAI21 U96 ( .A(a[12]), .B(n112), .C(b[12]), .Z(n130) );
  GTECH_NOT U97 ( .A(n87), .Z(n112) );
  GTECH_NOT U98 ( .A(a[12]), .Z(n129) );
  GTECH_AOI222 U99 ( .A(a[11]), .B(n131), .C(b[11]), .D(n132), .E(n113), .F(
        n115), .Z(n87) );
  GTECH_OR2 U100 ( .A(n117), .B(n88), .Z(n115) );
  GTECH_XOR3 U101 ( .A(b[9]), .B(n133), .C(n134), .Z(n88) );
  GTECH_XOR3 U102 ( .A(b[10]), .B(n135), .C(n136), .Z(n117) );
  GTECH_XOR3 U103 ( .A(b[11]), .B(a[11]), .C(n131), .Z(n113) );
  GTECH_OR2 U104 ( .A(a[11]), .B(n131), .Z(n132) );
  GTECH_OAI21 U105 ( .A(n136), .B(n135), .C(n137), .Z(n131) );
  GTECH_OAI21 U106 ( .A(a[10]), .B(n138), .C(b[10]), .Z(n137) );
  GTECH_NOT U107 ( .A(n136), .Z(n138) );
  GTECH_NOT U108 ( .A(a[10]), .Z(n135) );
  GTECH_OA21 U109 ( .A(n134), .B(n133), .C(n139), .Z(n136) );
  GTECH_OAI21 U110 ( .A(a[9]), .B(n140), .C(b[9]), .Z(n139) );
  GTECH_NOT U111 ( .A(n134), .Z(n140) );
  GTECH_NOT U112 ( .A(a[9]), .Z(n133) );
  GTECH_OA21 U113 ( .A(n93), .B(n141), .C(n142), .Z(n134) );
  GTECH_OAI21 U114 ( .A(a[8]), .B(n89), .C(b[8]), .Z(n142) );
  GTECH_NOT U115 ( .A(n93), .Z(n89) );
  GTECH_NOT U116 ( .A(a[8]), .Z(n141) );
  GTECH_AOI222 U117 ( .A(a[7]), .B(n143), .C(b[7]), .D(n144), .E(n90), .F(n92), 
        .Z(n93) );
  GTECH_OR2 U118 ( .A(n96), .B(n95), .Z(n92) );
  GTECH_XOR3 U119 ( .A(b[5]), .B(n145), .C(n146), .Z(n95) );
  GTECH_XOR3 U120 ( .A(b[6]), .B(n147), .C(n148), .Z(n96) );
  GTECH_XOR3 U121 ( .A(b[7]), .B(a[7]), .C(n143), .Z(n90) );
  GTECH_OR2 U122 ( .A(a[7]), .B(n143), .Z(n144) );
  GTECH_OAI21 U123 ( .A(n148), .B(n147), .C(n149), .Z(n143) );
  GTECH_OAI21 U124 ( .A(a[6]), .B(n150), .C(b[6]), .Z(n149) );
  GTECH_NOT U125 ( .A(n148), .Z(n150) );
  GTECH_NOT U126 ( .A(a[6]), .Z(n147) );
  GTECH_OA21 U127 ( .A(n146), .B(n145), .C(n151), .Z(n148) );
  GTECH_OAI21 U128 ( .A(a[5]), .B(n152), .C(b[5]), .Z(n151) );
  GTECH_NOT U129 ( .A(n146), .Z(n152) );
  GTECH_NOT U130 ( .A(a[5]), .Z(n145) );
  GTECH_OA21 U131 ( .A(n101), .B(n153), .C(n154), .Z(n146) );
  GTECH_OAI21 U132 ( .A(a[4]), .B(n97), .C(b[4]), .Z(n154) );
  GTECH_NOT U133 ( .A(n101), .Z(n97) );
  GTECH_NOT U134 ( .A(a[4]), .Z(n153) );
  GTECH_AOI222 U135 ( .A(a[3]), .B(n155), .C(b[3]), .D(n156), .E(n98), .F(n100), .Z(n101) );
  GTECH_OR2 U136 ( .A(n104), .B(n103), .Z(n100) );
  GTECH_XOR3 U137 ( .A(b[1]), .B(n157), .C(n158), .Z(n103) );
  GTECH_XOR3 U138 ( .A(b[2]), .B(n159), .C(n160), .Z(n104) );
  GTECH_XOR3 U139 ( .A(b[3]), .B(a[3]), .C(n155), .Z(n98) );
  GTECH_OR2 U140 ( .A(a[3]), .B(n155), .Z(n156) );
  GTECH_OAI21 U141 ( .A(n160), .B(n159), .C(n161), .Z(n155) );
  GTECH_OAI21 U142 ( .A(a[2]), .B(n162), .C(b[2]), .Z(n161) );
  GTECH_NOT U143 ( .A(n160), .Z(n162) );
  GTECH_NOT U144 ( .A(a[2]), .Z(n159) );
  GTECH_OA21 U145 ( .A(n158), .B(n157), .C(n163), .Z(n160) );
  GTECH_OAI21 U146 ( .A(a[1]), .B(n164), .C(b[1]), .Z(n163) );
  GTECH_NOT U147 ( .A(a[1]), .Z(n157) );
  GTECH_NOT U148 ( .A(n164), .Z(n158) );
  GTECH_ADD_ABC U149 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n164) );
endmodule

