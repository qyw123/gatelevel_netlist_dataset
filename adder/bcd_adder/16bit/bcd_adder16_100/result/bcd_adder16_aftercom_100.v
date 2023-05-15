
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
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168;

  GTECH_XOR2 U55 ( .A(n87), .B(n88), .Z(sum[9]) );
  GTECH_XNOR3 U56 ( .A(b[8]), .B(a[8]), .C(n89), .Z(sum[8]) );
  GTECH_XNOR2 U57 ( .A(n90), .B(n91), .Z(sum[7]) );
  GTECH_AND_NOT U58 ( .A(n92), .B(n89), .Z(n91) );
  GTECH_OAI21 U59 ( .A(n89), .B(n92), .C(n93), .Z(sum[6]) );
  GTECH_OAI21 U60 ( .A(n89), .B(n94), .C(n95), .Z(n93) );
  GTECH_NOT U61 ( .A(n96), .Z(n89) );
  GTECH_XOR2 U62 ( .A(n96), .B(n94), .Z(sum[5]) );
  GTECH_XNOR3 U63 ( .A(b[4]), .B(a[4]), .C(n97), .Z(sum[4]) );
  GTECH_XNOR2 U64 ( .A(n98), .B(n99), .Z(sum[3]) );
  GTECH_AND_NOT U65 ( .A(n100), .B(n97), .Z(n99) );
  GTECH_OAI21 U66 ( .A(n97), .B(n100), .C(n101), .Z(sum[2]) );
  GTECH_OAI21 U67 ( .A(n97), .B(n102), .C(n103), .Z(n101) );
  GTECH_NOT U68 ( .A(n104), .Z(n97) );
  GTECH_XOR2 U69 ( .A(n104), .B(n102), .Z(sum[1]) );
  GTECH_XNOR2 U70 ( .A(n105), .B(n106), .Z(sum[15]) );
  GTECH_AND_NOT U71 ( .A(n107), .B(n108), .Z(n106) );
  GTECH_OAI21 U72 ( .A(n108), .B(n107), .C(n109), .Z(sum[14]) );
  GTECH_OAI21 U73 ( .A(n108), .B(n110), .C(n111), .Z(n109) );
  GTECH_NOT U74 ( .A(cout), .Z(n108) );
  GTECH_XOR2 U75 ( .A(cout), .B(n110), .Z(sum[13]) );
  GTECH_XNOR3 U76 ( .A(b[12]), .B(a[12]), .C(n112), .Z(sum[12]) );
  GTECH_XNOR2 U77 ( .A(n113), .B(n114), .Z(sum[11]) );
  GTECH_AND_NOT U78 ( .A(n115), .B(n112), .Z(n114) );
  GTECH_OAI21 U79 ( .A(n112), .B(n115), .C(n116), .Z(sum[10]) );
  GTECH_OAI21 U80 ( .A(n112), .B(n88), .C(n117), .Z(n116) );
  GTECH_NOT U81 ( .A(n87), .Z(n112) );
  GTECH_XOR3 U82 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_AO21 U83 ( .A(n118), .B(a[15]), .C(n119), .Z(cout) );
  GTECH_OAI21 U84 ( .A(n120), .B(n105), .C(n121), .Z(n119) );
  GTECH_OAI21 U85 ( .A(a[15]), .B(n118), .C(b[15]), .Z(n121) );
  GTECH_XNOR3 U86 ( .A(b[15]), .B(a[15]), .C(n118), .Z(n105) );
  GTECH_NOT U87 ( .A(n107), .Z(n120) );
  GTECH_OR2 U88 ( .A(n111), .B(n110), .Z(n107) );
  GTECH_XNOR3 U89 ( .A(b[13]), .B(a[13]), .C(n122), .Z(n110) );
  GTECH_XNOR3 U90 ( .A(b[14]), .B(a[14]), .C(n123), .Z(n111) );
  GTECH_OAI21 U91 ( .A(n123), .B(n124), .C(n125), .Z(n118) );
  GTECH_AO21 U92 ( .A(n124), .B(n123), .C(n126), .Z(n125) );
  GTECH_NOT U93 ( .A(b[14]), .Z(n126) );
  GTECH_NOT U94 ( .A(a[14]), .Z(n124) );
  GTECH_OA21 U95 ( .A(n122), .B(n127), .C(n128), .Z(n123) );
  GTECH_OAI21 U96 ( .A(a[13]), .B(n129), .C(b[13]), .Z(n128) );
  GTECH_NOT U97 ( .A(a[13]), .Z(n127) );
  GTECH_NOT U98 ( .A(n129), .Z(n122) );
  GTECH_AO21 U99 ( .A(n87), .B(a[12]), .C(n130), .Z(n129) );
  GTECH_OA21 U100 ( .A(a[12]), .B(n87), .C(b[12]), .Z(n130) );
  GTECH_AO21 U101 ( .A(n131), .B(a[11]), .C(n132), .Z(n87) );
  GTECH_OAI21 U102 ( .A(n133), .B(n113), .C(n134), .Z(n132) );
  GTECH_OAI21 U103 ( .A(a[11]), .B(n131), .C(b[11]), .Z(n134) );
  GTECH_XNOR3 U104 ( .A(b[11]), .B(a[11]), .C(n131), .Z(n113) );
  GTECH_NOT U105 ( .A(n115), .Z(n133) );
  GTECH_OR2 U106 ( .A(n117), .B(n88), .Z(n115) );
  GTECH_XNOR3 U107 ( .A(b[9]), .B(a[9]), .C(n135), .Z(n88) );
  GTECH_XNOR3 U108 ( .A(b[10]), .B(a[10]), .C(n136), .Z(n117) );
  GTECH_OAI21 U109 ( .A(n136), .B(n137), .C(n138), .Z(n131) );
  GTECH_AO21 U110 ( .A(n137), .B(n136), .C(n139), .Z(n138) );
  GTECH_NOT U111 ( .A(b[10]), .Z(n139) );
  GTECH_NOT U112 ( .A(a[10]), .Z(n137) );
  GTECH_OA21 U113 ( .A(n135), .B(n140), .C(n141), .Z(n136) );
  GTECH_OAI21 U114 ( .A(a[9]), .B(n142), .C(b[9]), .Z(n141) );
  GTECH_NOT U115 ( .A(a[9]), .Z(n140) );
  GTECH_NOT U116 ( .A(n142), .Z(n135) );
  GTECH_AO21 U117 ( .A(n96), .B(a[8]), .C(n143), .Z(n142) );
  GTECH_OA21 U118 ( .A(a[8]), .B(n96), .C(b[8]), .Z(n143) );
  GTECH_AO21 U119 ( .A(n144), .B(a[7]), .C(n145), .Z(n96) );
  GTECH_OAI21 U120 ( .A(n146), .B(n90), .C(n147), .Z(n145) );
  GTECH_OAI21 U121 ( .A(a[7]), .B(n144), .C(b[7]), .Z(n147) );
  GTECH_XNOR3 U122 ( .A(b[7]), .B(a[7]), .C(n144), .Z(n90) );
  GTECH_NOT U123 ( .A(n92), .Z(n146) );
  GTECH_OR2 U124 ( .A(n95), .B(n94), .Z(n92) );
  GTECH_XNOR3 U125 ( .A(b[5]), .B(a[5]), .C(n148), .Z(n94) );
  GTECH_XNOR3 U126 ( .A(b[6]), .B(a[6]), .C(n149), .Z(n95) );
  GTECH_OAI21 U127 ( .A(n149), .B(n150), .C(n151), .Z(n144) );
  GTECH_AO21 U128 ( .A(n150), .B(n149), .C(n152), .Z(n151) );
  GTECH_NOT U129 ( .A(b[6]), .Z(n152) );
  GTECH_NOT U130 ( .A(a[6]), .Z(n150) );
  GTECH_OA21 U131 ( .A(n148), .B(n153), .C(n154), .Z(n149) );
  GTECH_OAI21 U132 ( .A(a[5]), .B(n155), .C(b[5]), .Z(n154) );
  GTECH_NOT U133 ( .A(a[5]), .Z(n153) );
  GTECH_NOT U134 ( .A(n155), .Z(n148) );
  GTECH_AO21 U135 ( .A(n104), .B(a[4]), .C(n156), .Z(n155) );
  GTECH_OA21 U136 ( .A(a[4]), .B(n104), .C(b[4]), .Z(n156) );
  GTECH_AO21 U137 ( .A(n157), .B(a[3]), .C(n158), .Z(n104) );
  GTECH_OAI21 U138 ( .A(n159), .B(n98), .C(n160), .Z(n158) );
  GTECH_OAI21 U139 ( .A(a[3]), .B(n157), .C(b[3]), .Z(n160) );
  GTECH_XNOR3 U140 ( .A(b[3]), .B(a[3]), .C(n157), .Z(n98) );
  GTECH_NOT U141 ( .A(n100), .Z(n159) );
  GTECH_OR2 U142 ( .A(n103), .B(n102), .Z(n100) );
  GTECH_XNOR3 U143 ( .A(b[1]), .B(a[1]), .C(n161), .Z(n102) );
  GTECH_XNOR3 U144 ( .A(b[2]), .B(a[2]), .C(n162), .Z(n103) );
  GTECH_OAI21 U145 ( .A(n162), .B(n163), .C(n164), .Z(n157) );
  GTECH_AO21 U146 ( .A(n163), .B(n162), .C(n165), .Z(n164) );
  GTECH_NOT U147 ( .A(b[2]), .Z(n165) );
  GTECH_NOT U148 ( .A(a[2]), .Z(n163) );
  GTECH_OA21 U149 ( .A(n161), .B(n166), .C(n167), .Z(n162) );
  GTECH_OAI21 U150 ( .A(a[1]), .B(n168), .C(b[1]), .Z(n167) );
  GTECH_NOT U151 ( .A(a[1]), .Z(n166) );
  GTECH_NOT U152 ( .A(n168), .Z(n161) );
  GTECH_ADD_ABC U153 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n168) );
endmodule

