
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
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144;

  GTECH_XNOR2 U55 ( .A(n87), .B(n88), .Z(sum[9]) );
  GTECH_XNOR3 U56 ( .A(b[8]), .B(a[8]), .C(n89), .Z(sum[8]) );
  GTECH_XOR2 U57 ( .A(n90), .B(n91), .Z(sum[7]) );
  GTECH_AND_NOT U58 ( .A(n92), .B(n89), .Z(n91) );
  GTECH_OAI22 U59 ( .A(n89), .B(n92), .C(n93), .D(n94), .Z(sum[6]) );
  GTECH_AND_NOT U60 ( .A(n95), .B(n89), .Z(n93) );
  GTECH_XOR2 U61 ( .A(n89), .B(n95), .Z(sum[5]) );
  GTECH_XNOR3 U62 ( .A(b[4]), .B(a[4]), .C(n96), .Z(sum[4]) );
  GTECH_XOR2 U63 ( .A(n97), .B(n98), .Z(sum[3]) );
  GTECH_AND_NOT U64 ( .A(n99), .B(n96), .Z(n98) );
  GTECH_OAI22 U65 ( .A(n96), .B(n99), .C(n100), .D(n101), .Z(sum[2]) );
  GTECH_AND_NOT U66 ( .A(n102), .B(n96), .Z(n100) );
  GTECH_XNOR2 U67 ( .A(n103), .B(n102), .Z(sum[1]) );
  GTECH_XOR2 U68 ( .A(n104), .B(n105), .Z(sum[15]) );
  GTECH_AND_NOT U69 ( .A(n106), .B(n107), .Z(n105) );
  GTECH_OAI22 U70 ( .A(n107), .B(n106), .C(n108), .D(n109), .Z(sum[14]) );
  GTECH_AND_NOT U71 ( .A(n110), .B(n107), .Z(n108) );
  GTECH_XOR2 U72 ( .A(n107), .B(n110), .Z(sum[13]) );
  GTECH_XNOR3 U73 ( .A(b[12]), .B(a[12]), .C(n111), .Z(sum[12]) );
  GTECH_XOR2 U74 ( .A(n112), .B(n113), .Z(sum[11]) );
  GTECH_AND_NOT U75 ( .A(n114), .B(n111), .Z(n113) );
  GTECH_OAI22 U76 ( .A(n111), .B(n114), .C(n115), .D(n116), .Z(sum[10]) );
  GTECH_AND_NOT U77 ( .A(n88), .B(n111), .Z(n115) );
  GTECH_XOR3 U78 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_NOT U79 ( .A(n107), .Z(cout) );
  GTECH_AOI222 U80 ( .A(a[15]), .B(n117), .C(b[15]), .D(n118), .E(n104), .F(
        n106), .Z(n107) );
  GTECH_NAND2 U81 ( .A(n109), .B(n110), .Z(n106) );
  GTECH_XNOR3 U82 ( .A(b[13]), .B(a[13]), .C(n119), .Z(n110) );
  GTECH_XNOR3 U83 ( .A(b[14]), .B(a[14]), .C(n120), .Z(n109) );
  GTECH_XOR3 U84 ( .A(b[15]), .B(a[15]), .C(n117), .Z(n104) );
  GTECH_OR2 U85 ( .A(a[15]), .B(n117), .Z(n118) );
  GTECH_AO22 U86 ( .A(n121), .B(b[14]), .C(n120), .D(a[14]), .Z(n117) );
  GTECH_OR2 U87 ( .A(a[14]), .B(n120), .Z(n121) );
  GTECH_AO22 U88 ( .A(n122), .B(b[13]), .C(n119), .D(a[13]), .Z(n120) );
  GTECH_OR2 U89 ( .A(a[13]), .B(n119), .Z(n122) );
  GTECH_AO22 U90 ( .A(n123), .B(b[12]), .C(n87), .D(a[12]), .Z(n119) );
  GTECH_OR2 U91 ( .A(n87), .B(a[12]), .Z(n123) );
  GTECH_NOT U92 ( .A(n111), .Z(n87) );
  GTECH_AOI222 U93 ( .A(a[11]), .B(n124), .C(b[11]), .D(n125), .E(n112), .F(
        n114), .Z(n111) );
  GTECH_NAND2 U94 ( .A(n116), .B(n88), .Z(n114) );
  GTECH_XNOR3 U95 ( .A(b[9]), .B(a[9]), .C(n126), .Z(n88) );
  GTECH_XNOR3 U96 ( .A(b[10]), .B(a[10]), .C(n127), .Z(n116) );
  GTECH_XOR3 U97 ( .A(b[11]), .B(a[11]), .C(n124), .Z(n112) );
  GTECH_OR2 U98 ( .A(a[11]), .B(n124), .Z(n125) );
  GTECH_AO22 U99 ( .A(n128), .B(b[10]), .C(n127), .D(a[10]), .Z(n124) );
  GTECH_OR2 U100 ( .A(a[10]), .B(n127), .Z(n128) );
  GTECH_AO22 U101 ( .A(n129), .B(b[9]), .C(n126), .D(a[9]), .Z(n127) );
  GTECH_OR2 U102 ( .A(a[9]), .B(n126), .Z(n129) );
  GTECH_AO22 U103 ( .A(n130), .B(b[8]), .C(n131), .D(a[8]), .Z(n126) );
  GTECH_OR2 U104 ( .A(n131), .B(a[8]), .Z(n130) );
  GTECH_NOT U105 ( .A(n89), .Z(n131) );
  GTECH_AOI222 U106 ( .A(a[7]), .B(n132), .C(b[7]), .D(n133), .E(n90), .F(n92), 
        .Z(n89) );
  GTECH_NAND2 U107 ( .A(n94), .B(n95), .Z(n92) );
  GTECH_XNOR3 U108 ( .A(b[5]), .B(a[5]), .C(n134), .Z(n95) );
  GTECH_XNOR3 U109 ( .A(b[6]), .B(a[6]), .C(n135), .Z(n94) );
  GTECH_XOR3 U110 ( .A(b[7]), .B(a[7]), .C(n132), .Z(n90) );
  GTECH_OR2 U111 ( .A(a[7]), .B(n132), .Z(n133) );
  GTECH_AO22 U112 ( .A(n136), .B(b[6]), .C(n135), .D(a[6]), .Z(n132) );
  GTECH_OR2 U113 ( .A(a[6]), .B(n135), .Z(n136) );
  GTECH_AO22 U114 ( .A(n137), .B(b[5]), .C(n134), .D(a[5]), .Z(n135) );
  GTECH_OR2 U115 ( .A(a[5]), .B(n134), .Z(n137) );
  GTECH_AO22 U116 ( .A(n138), .B(b[4]), .C(n103), .D(a[4]), .Z(n134) );
  GTECH_OR2 U117 ( .A(n103), .B(a[4]), .Z(n138) );
  GTECH_NOT U118 ( .A(n96), .Z(n103) );
  GTECH_AOI222 U119 ( .A(a[3]), .B(n139), .C(b[3]), .D(n140), .E(n97), .F(n99), 
        .Z(n96) );
  GTECH_NAND2 U120 ( .A(n101), .B(n102), .Z(n99) );
  GTECH_XNOR3 U121 ( .A(b[1]), .B(a[1]), .C(n141), .Z(n102) );
  GTECH_XNOR3 U122 ( .A(b[2]), .B(a[2]), .C(n142), .Z(n101) );
  GTECH_XOR3 U123 ( .A(b[3]), .B(a[3]), .C(n139), .Z(n97) );
  GTECH_OR2 U124 ( .A(a[3]), .B(n139), .Z(n140) );
  GTECH_AO22 U125 ( .A(n143), .B(b[2]), .C(n142), .D(a[2]), .Z(n139) );
  GTECH_OR2 U126 ( .A(a[2]), .B(n142), .Z(n143) );
  GTECH_AO22 U127 ( .A(n144), .B(b[1]), .C(n141), .D(a[1]), .Z(n142) );
  GTECH_OR2 U128 ( .A(n141), .B(a[1]), .Z(n144) );
  GTECH_ADD_ABC U129 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n141) );
endmodule

