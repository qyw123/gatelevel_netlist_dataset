
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
         n145, n146, n147, n148, n149, n150;

  GTECH_XNOR2 U55 ( .A(n87), .B(n88), .Z(sum[9]) );
  GTECH_XOR3 U56 ( .A(b[8]), .B(a[8]), .C(n89), .Z(sum[8]) );
  GTECH_XNOR2 U57 ( .A(n90), .B(n91), .Z(sum[7]) );
  GTECH_AND_NOT U58 ( .A(n89), .B(n92), .Z(n91) );
  GTECH_OAI2N2 U59 ( .A(n93), .B(n94), .C(n92), .D(n89), .Z(sum[6]) );
  GTECH_AND_NOT U60 ( .A(n89), .B(n95), .Z(n93) );
  GTECH_XNOR2 U61 ( .A(n96), .B(n89), .Z(sum[5]) );
  GTECH_XNOR3 U62 ( .A(b[4]), .B(a[4]), .C(n97), .Z(sum[4]) );
  GTECH_XOR2 U63 ( .A(n98), .B(n99), .Z(sum[3]) );
  GTECH_AND_NOT U64 ( .A(n100), .B(n97), .Z(n99) );
  GTECH_OAI22 U65 ( .A(n100), .B(n97), .C(n101), .D(n102), .Z(sum[2]) );
  GTECH_NOR2 U66 ( .A(n103), .B(n97), .Z(n101) );
  GTECH_XNOR2 U67 ( .A(n103), .B(n97), .Z(sum[1]) );
  GTECH_OAI22 U68 ( .A(n100), .B(n104), .C(n98), .D(n104), .Z(n97) );
  GTECH_XNOR2 U69 ( .A(n105), .B(n106), .Z(sum[15]) );
  GTECH_AND_NOT U70 ( .A(cout), .B(n107), .Z(n106) );
  GTECH_OAI2N2 U71 ( .A(n108), .B(n109), .C(n107), .D(cout), .Z(sum[14]) );
  GTECH_AND_NOT U72 ( .A(cout), .B(n110), .Z(n108) );
  GTECH_XOR2 U73 ( .A(n110), .B(cout), .Z(sum[13]) );
  GTECH_XOR3 U74 ( .A(b[12]), .B(n111), .C(n88), .Z(sum[12]) );
  GTECH_XNOR2 U75 ( .A(n112), .B(n113), .Z(sum[11]) );
  GTECH_NOR2 U76 ( .A(n88), .B(n114), .Z(n113) );
  GTECH_OAI2N2 U77 ( .A(n115), .B(n116), .C(n114), .D(n117), .Z(sum[10]) );
  GTECH_AND_NOT U78 ( .A(n117), .B(n87), .Z(n115) );
  GTECH_NOT U79 ( .A(n88), .Z(n117) );
  GTECH_XOR3 U80 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_AOI22 U81 ( .A(n107), .B(n118), .C(n105), .D(n118), .Z(cout) );
  GTECH_XNOR3 U82 ( .A(b[15]), .B(a[15]), .C(n119), .Z(n105) );
  GTECH_AOI22 U83 ( .A(n120), .B(b[15]), .C(n119), .D(a[15]), .Z(n118) );
  GTECH_OR2 U84 ( .A(a[15]), .B(n119), .Z(n120) );
  GTECH_AO22 U85 ( .A(n121), .B(b[14]), .C(n122), .D(a[14]), .Z(n119) );
  GTECH_OR2 U86 ( .A(a[14]), .B(n122), .Z(n121) );
  GTECH_AND_NOT U87 ( .A(n109), .B(n110), .Z(n107) );
  GTECH_XNOR3 U88 ( .A(b[13]), .B(a[13]), .C(n123), .Z(n110) );
  GTECH_XNOR3 U89 ( .A(b[14]), .B(a[14]), .C(n122), .Z(n109) );
  GTECH_OAI2N2 U90 ( .A(n123), .B(n124), .C(n125), .D(b[13]), .Z(n122) );
  GTECH_OR_NOT U91 ( .A(a[13]), .B(n123), .Z(n125) );
  GTECH_NOT U92 ( .A(a[13]), .Z(n124) );
  GTECH_ADD_ABC U93 ( .A(n88), .B(n111), .C(n126), .COUT(n123) );
  GTECH_NOT U94 ( .A(b[12]), .Z(n126) );
  GTECH_NOT U95 ( .A(a[12]), .Z(n111) );
  GTECH_AO22 U96 ( .A(n114), .B(n127), .C(n112), .D(n127), .Z(n88) );
  GTECH_XNOR3 U97 ( .A(b[11]), .B(a[11]), .C(n128), .Z(n112) );
  GTECH_AOI22 U98 ( .A(n129), .B(b[11]), .C(n128), .D(a[11]), .Z(n127) );
  GTECH_OR2 U99 ( .A(a[11]), .B(n128), .Z(n129) );
  GTECH_OAI2N2 U100 ( .A(n130), .B(n131), .C(n132), .D(b[10]), .Z(n128) );
  GTECH_OR_NOT U101 ( .A(a[10]), .B(n130), .Z(n132) );
  GTECH_NOT U102 ( .A(a[10]), .Z(n131) );
  GTECH_AND2 U103 ( .A(n116), .B(n133), .Z(n114) );
  GTECH_NOT U104 ( .A(n87), .Z(n133) );
  GTECH_XOR3 U105 ( .A(b[9]), .B(a[9]), .C(n134), .Z(n87) );
  GTECH_XOR3 U106 ( .A(b[10]), .B(a[10]), .C(n130), .Z(n116) );
  GTECH_AOI22 U107 ( .A(n135), .B(b[9]), .C(n134), .D(a[9]), .Z(n130) );
  GTECH_OR2 U108 ( .A(a[9]), .B(n134), .Z(n135) );
  GTECH_ADD_ABC U109 ( .A(n89), .B(a[8]), .C(b[8]), .COUT(n134) );
  GTECH_AOI22 U110 ( .A(n90), .B(n136), .C(n92), .D(n136), .Z(n89) );
  GTECH_AND2 U111 ( .A(n94), .B(n96), .Z(n92) );
  GTECH_NOT U112 ( .A(n95), .Z(n96) );
  GTECH_XOR3 U113 ( .A(b[5]), .B(a[5]), .C(n137), .Z(n95) );
  GTECH_XNOR3 U114 ( .A(b[6]), .B(a[6]), .C(n138), .Z(n94) );
  GTECH_AOI2N2 U115 ( .A(n139), .B(b[7]), .C(n140), .D(n141), .Z(n136) );
  GTECH_NOT U116 ( .A(a[7]), .Z(n141) );
  GTECH_OR_NOT U117 ( .A(a[7]), .B(n140), .Z(n139) );
  GTECH_XOR3 U118 ( .A(b[7]), .B(a[7]), .C(n140), .Z(n90) );
  GTECH_AOI22 U119 ( .A(n142), .B(b[6]), .C(n138), .D(a[6]), .Z(n140) );
  GTECH_OR2 U120 ( .A(a[6]), .B(n138), .Z(n142) );
  GTECH_AO22 U121 ( .A(n143), .B(b[5]), .C(n137), .D(a[5]), .Z(n138) );
  GTECH_OR2 U122 ( .A(a[5]), .B(n137), .Z(n143) );
  GTECH_ADD_ABC U123 ( .A(n144), .B(a[4]), .C(b[4]), .COUT(n137) );
  GTECH_OA22 U124 ( .A(n100), .B(n104), .C(n98), .D(n104), .Z(n144) );
  GTECH_XOR3 U125 ( .A(b[3]), .B(a[3]), .C(n145), .Z(n98) );
  GTECH_AO22 U126 ( .A(n145), .B(a[3]), .C(n146), .D(b[3]), .Z(n104) );
  GTECH_OR2 U127 ( .A(a[3]), .B(n145), .Z(n146) );
  GTECH_AO22 U128 ( .A(n147), .B(b[2]), .C(n148), .D(a[2]), .Z(n145) );
  GTECH_OR2 U129 ( .A(a[2]), .B(n148), .Z(n147) );
  GTECH_OR_NOT U130 ( .A(n103), .B(n102), .Z(n100) );
  GTECH_XNOR3 U131 ( .A(b[2]), .B(a[2]), .C(n148), .Z(n102) );
  GTECH_AO22 U132 ( .A(n149), .B(a[1]), .C(n150), .D(b[1]), .Z(n148) );
  GTECH_OR2 U133 ( .A(n149), .B(a[1]), .Z(n150) );
  GTECH_XOR3 U134 ( .A(b[1]), .B(a[1]), .C(n149), .Z(n103) );
  GTECH_ADD_ABC U135 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n149) );
endmodule

