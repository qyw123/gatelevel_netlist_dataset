
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
         n145, n146, n147, n148, n149;

  GTECH_XOR2 U56 ( .A(n88), .B(n89), .Z(sum[9]) );
  GTECH_XOR3 U57 ( .A(b[8]), .B(a[8]), .C(n90), .Z(sum[8]) );
  GTECH_XOR2 U58 ( .A(n91), .B(n92), .Z(sum[7]) );
  GTECH_AND2 U59 ( .A(n93), .B(n90), .Z(n92) );
  GTECH_OAI21 U60 ( .A(n94), .B(n93), .C(n95), .Z(sum[6]) );
  GTECH_AO21 U61 ( .A(n90), .B(n96), .C(n97), .Z(n95) );
  GTECH_XOR2 U62 ( .A(n94), .B(n96), .Z(sum[5]) );
  GTECH_XOR3 U63 ( .A(b[4]), .B(a[4]), .C(n98), .Z(sum[4]) );
  GTECH_XOR2 U64 ( .A(n99), .B(n100), .Z(sum[3]) );
  GTECH_AND2 U65 ( .A(n101), .B(n98), .Z(n100) );
  GTECH_OAI21 U66 ( .A(n102), .B(n101), .C(n103), .Z(sum[2]) );
  GTECH_AO21 U67 ( .A(n98), .B(n104), .C(n105), .Z(n103) );
  GTECH_XOR2 U68 ( .A(n102), .B(n104), .Z(sum[1]) );
  GTECH_XOR2 U69 ( .A(n106), .B(n107), .Z(sum[15]) );
  GTECH_AND2 U70 ( .A(n108), .B(cout), .Z(n107) );
  GTECH_OAI21 U71 ( .A(n109), .B(n108), .C(n110), .Z(sum[14]) );
  GTECH_AO21 U72 ( .A(cout), .B(n111), .C(n112), .Z(n110) );
  GTECH_XOR2 U73 ( .A(n109), .B(n111), .Z(sum[13]) );
  GTECH_XOR3 U74 ( .A(b[12]), .B(a[12]), .C(n113), .Z(sum[12]) );
  GTECH_XOR2 U75 ( .A(n114), .B(n115), .Z(sum[11]) );
  GTECH_AND2 U76 ( .A(n116), .B(n113), .Z(n115) );
  GTECH_OAI21 U77 ( .A(n88), .B(n116), .C(n117), .Z(sum[10]) );
  GTECH_AO21 U78 ( .A(n113), .B(n89), .C(n118), .Z(n117) );
  GTECH_XOR3 U79 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_NOT U80 ( .A(n109), .Z(cout) );
  GTECH_AOI222 U81 ( .A(a[15]), .B(n119), .C(b[15]), .D(n120), .E(n106), .F(
        n108), .Z(n109) );
  GTECH_NAND2 U82 ( .A(n112), .B(n111), .Z(n108) );
  GTECH_XNOR3 U83 ( .A(b[13]), .B(a[13]), .C(n121), .Z(n111) );
  GTECH_XNOR3 U84 ( .A(b[14]), .B(a[14]), .C(n122), .Z(n112) );
  GTECH_XOR3 U85 ( .A(b[15]), .B(a[15]), .C(n119), .Z(n106) );
  GTECH_OR_NOT U86 ( .A(a[15]), .B(n123), .Z(n120) );
  GTECH_NOT U87 ( .A(n123), .Z(n119) );
  GTECH_AOI21 U88 ( .A(n122), .B(a[14]), .C(n124), .Z(n123) );
  GTECH_OA21 U89 ( .A(a[14]), .B(n122), .C(b[14]), .Z(n124) );
  GTECH_AO21 U90 ( .A(n121), .B(a[13]), .C(n125), .Z(n122) );
  GTECH_OA21 U91 ( .A(a[13]), .B(n121), .C(b[13]), .Z(n125) );
  GTECH_AO21 U92 ( .A(n113), .B(a[12]), .C(n126), .Z(n121) );
  GTECH_OA21 U93 ( .A(a[12]), .B(n113), .C(b[12]), .Z(n126) );
  GTECH_NOT U94 ( .A(n88), .Z(n113) );
  GTECH_AOI222 U95 ( .A(a[11]), .B(n127), .C(b[11]), .D(n128), .E(n114), .F(
        n116), .Z(n88) );
  GTECH_NAND2 U96 ( .A(n118), .B(n89), .Z(n116) );
  GTECH_XNOR3 U97 ( .A(b[9]), .B(a[9]), .C(n129), .Z(n89) );
  GTECH_XNOR3 U98 ( .A(b[10]), .B(a[10]), .C(n130), .Z(n118) );
  GTECH_XOR3 U99 ( .A(b[11]), .B(a[11]), .C(n127), .Z(n114) );
  GTECH_NOT U100 ( .A(n131), .Z(n128) );
  GTECH_NOR2 U101 ( .A(a[11]), .B(n127), .Z(n131) );
  GTECH_AO21 U102 ( .A(n130), .B(a[10]), .C(n132), .Z(n127) );
  GTECH_OA21 U103 ( .A(a[10]), .B(n130), .C(b[10]), .Z(n132) );
  GTECH_AO21 U104 ( .A(n129), .B(a[9]), .C(n133), .Z(n130) );
  GTECH_OA21 U105 ( .A(a[9]), .B(n129), .C(b[9]), .Z(n133) );
  GTECH_AO21 U106 ( .A(n90), .B(a[8]), .C(n134), .Z(n129) );
  GTECH_OA21 U107 ( .A(a[8]), .B(n90), .C(b[8]), .Z(n134) );
  GTECH_NOT U108 ( .A(n94), .Z(n90) );
  GTECH_AOI222 U109 ( .A(a[7]), .B(n135), .C(b[7]), .D(n136), .E(n91), .F(n93), 
        .Z(n94) );
  GTECH_NAND2 U110 ( .A(n97), .B(n96), .Z(n93) );
  GTECH_XNOR3 U111 ( .A(b[5]), .B(a[5]), .C(n137), .Z(n96) );
  GTECH_XNOR3 U112 ( .A(b[6]), .B(a[6]), .C(n138), .Z(n97) );
  GTECH_XOR3 U113 ( .A(b[7]), .B(a[7]), .C(n135), .Z(n91) );
  GTECH_NOT U114 ( .A(n139), .Z(n136) );
  GTECH_NOR2 U115 ( .A(a[7]), .B(n135), .Z(n139) );
  GTECH_AO21 U116 ( .A(n138), .B(a[6]), .C(n140), .Z(n135) );
  GTECH_OA21 U117 ( .A(a[6]), .B(n138), .C(b[6]), .Z(n140) );
  GTECH_AO21 U118 ( .A(n137), .B(a[5]), .C(n141), .Z(n138) );
  GTECH_OA21 U119 ( .A(a[5]), .B(n137), .C(b[5]), .Z(n141) );
  GTECH_AO21 U120 ( .A(n98), .B(a[4]), .C(n142), .Z(n137) );
  GTECH_OA21 U121 ( .A(a[4]), .B(n98), .C(b[4]), .Z(n142) );
  GTECH_NOT U122 ( .A(n102), .Z(n98) );
  GTECH_AOI222 U123 ( .A(a[3]), .B(n143), .C(b[3]), .D(n144), .E(n99), .F(n101), .Z(n102) );
  GTECH_NAND2 U124 ( .A(n105), .B(n104), .Z(n101) );
  GTECH_XNOR3 U125 ( .A(b[1]), .B(a[1]), .C(n145), .Z(n104) );
  GTECH_XNOR3 U126 ( .A(b[2]), .B(a[2]), .C(n146), .Z(n105) );
  GTECH_XOR3 U127 ( .A(b[3]), .B(a[3]), .C(n143), .Z(n99) );
  GTECH_NOT U128 ( .A(n147), .Z(n144) );
  GTECH_NOR2 U129 ( .A(a[3]), .B(n143), .Z(n147) );
  GTECH_AO21 U130 ( .A(n146), .B(a[2]), .C(n148), .Z(n143) );
  GTECH_OA21 U131 ( .A(a[2]), .B(n146), .C(b[2]), .Z(n148) );
  GTECH_AO21 U132 ( .A(n145), .B(a[1]), .C(n149), .Z(n146) );
  GTECH_OA21 U133 ( .A(a[1]), .B(n145), .C(b[1]), .Z(n149) );
  GTECH_ADD_ABC U134 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n145) );
endmodule

