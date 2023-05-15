
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
         n145, n146, n147, n148;

  GTECH_XOR2 U55 ( .A(n87), .B(n88), .Z(sum[9]) );
  GTECH_XNOR3 U56 ( .A(b[8]), .B(n89), .C(n90), .Z(sum[8]) );
  GTECH_XOR2 U57 ( .A(n91), .B(n92), .Z(sum[7]) );
  GTECH_AND2 U58 ( .A(n93), .B(n90), .Z(n92) );
  GTECH_OAI22 U59 ( .A(n94), .B(n95), .C(n96), .D(n93), .Z(sum[6]) );
  GTECH_AND2 U60 ( .A(n97), .B(n90), .Z(n94) );
  GTECH_XNOR2 U61 ( .A(n90), .B(n97), .Z(sum[5]) );
  GTECH_XNOR3 U62 ( .A(b[4]), .B(n98), .C(n99), .Z(sum[4]) );
  GTECH_XOR2 U63 ( .A(n100), .B(n101), .Z(sum[3]) );
  GTECH_AND2 U64 ( .A(n102), .B(n99), .Z(n101) );
  GTECH_OAI22 U65 ( .A(n103), .B(n104), .C(n105), .D(n102), .Z(sum[2]) );
  GTECH_AND2 U66 ( .A(n106), .B(n99), .Z(n103) );
  GTECH_XNOR2 U67 ( .A(n99), .B(n106), .Z(sum[1]) );
  GTECH_XOR2 U68 ( .A(n107), .B(n108), .Z(sum[15]) );
  GTECH_AND2 U69 ( .A(n109), .B(cout), .Z(n108) );
  GTECH_OAI22 U70 ( .A(n110), .B(n111), .C(n112), .D(n109), .Z(sum[14]) );
  GTECH_AND2 U71 ( .A(n113), .B(cout), .Z(n110) );
  GTECH_XNOR2 U72 ( .A(cout), .B(n113), .Z(sum[13]) );
  GTECH_XNOR3 U73 ( .A(b[12]), .B(n114), .C(n115), .Z(sum[12]) );
  GTECH_XOR2 U74 ( .A(n116), .B(n117), .Z(sum[11]) );
  GTECH_AND2 U75 ( .A(n118), .B(n115), .Z(n117) );
  GTECH_OAI22 U76 ( .A(n119), .B(n120), .C(n87), .D(n118), .Z(sum[10]) );
  GTECH_AND2 U77 ( .A(n88), .B(n115), .Z(n119) );
  GTECH_XOR3 U78 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_NOT U79 ( .A(n112), .Z(cout) );
  GTECH_AOI222 U80 ( .A(a[15]), .B(n121), .C(b[15]), .D(n122), .E(n107), .F(
        n109), .Z(n112) );
  GTECH_NAND2 U81 ( .A(n111), .B(n113), .Z(n109) );
  GTECH_XNOR3 U82 ( .A(b[13]), .B(a[13]), .C(n123), .Z(n113) );
  GTECH_XNOR3 U83 ( .A(b[14]), .B(a[14]), .C(n124), .Z(n111) );
  GTECH_XOR3 U84 ( .A(b[15]), .B(a[15]), .C(n121), .Z(n107) );
  GTECH_OR2 U85 ( .A(a[15]), .B(n121), .Z(n122) );
  GTECH_AO22 U86 ( .A(n125), .B(b[14]), .C(n124), .D(a[14]), .Z(n121) );
  GTECH_OR2 U87 ( .A(n124), .B(a[14]), .Z(n125) );
  GTECH_AO22 U88 ( .A(n126), .B(b[13]), .C(n123), .D(a[13]), .Z(n124) );
  GTECH_OR2 U89 ( .A(n123), .B(a[13]), .Z(n126) );
  GTECH_AO22 U90 ( .A(n115), .B(a[12]), .C(n127), .D(b[12]), .Z(n123) );
  GTECH_NAND2 U91 ( .A(n114), .B(n87), .Z(n127) );
  GTECH_NOT U92 ( .A(a[12]), .Z(n114) );
  GTECH_NOT U93 ( .A(n87), .Z(n115) );
  GTECH_AOI222 U94 ( .A(a[11]), .B(n128), .C(b[11]), .D(n129), .E(n116), .F(
        n118), .Z(n87) );
  GTECH_NAND2 U95 ( .A(n120), .B(n88), .Z(n118) );
  GTECH_XNOR3 U96 ( .A(b[9]), .B(a[9]), .C(n130), .Z(n88) );
  GTECH_XNOR3 U97 ( .A(b[10]), .B(a[10]), .C(n131), .Z(n120) );
  GTECH_XOR3 U98 ( .A(b[11]), .B(a[11]), .C(n128), .Z(n116) );
  GTECH_OR2 U99 ( .A(n128), .B(a[11]), .Z(n129) );
  GTECH_AO22 U100 ( .A(n132), .B(b[10]), .C(n131), .D(a[10]), .Z(n128) );
  GTECH_OR2 U101 ( .A(n131), .B(a[10]), .Z(n132) );
  GTECH_AO22 U102 ( .A(n133), .B(b[9]), .C(n130), .D(a[9]), .Z(n131) );
  GTECH_OR2 U103 ( .A(n130), .B(a[9]), .Z(n133) );
  GTECH_AO22 U104 ( .A(n90), .B(a[8]), .C(n134), .D(b[8]), .Z(n130) );
  GTECH_NAND2 U105 ( .A(n89), .B(n96), .Z(n134) );
  GTECH_NOT U106 ( .A(a[8]), .Z(n89) );
  GTECH_NOT U107 ( .A(n96), .Z(n90) );
  GTECH_AOI222 U108 ( .A(a[7]), .B(n135), .C(b[7]), .D(n136), .E(n91), .F(n93), 
        .Z(n96) );
  GTECH_NAND2 U109 ( .A(n95), .B(n97), .Z(n93) );
  GTECH_XNOR3 U110 ( .A(b[5]), .B(a[5]), .C(n137), .Z(n97) );
  GTECH_XNOR3 U111 ( .A(b[6]), .B(a[6]), .C(n138), .Z(n95) );
  GTECH_XOR3 U112 ( .A(b[7]), .B(a[7]), .C(n135), .Z(n91) );
  GTECH_OR2 U113 ( .A(n135), .B(a[7]), .Z(n136) );
  GTECH_AO22 U114 ( .A(n139), .B(b[6]), .C(n138), .D(a[6]), .Z(n135) );
  GTECH_OR2 U115 ( .A(n138), .B(a[6]), .Z(n139) );
  GTECH_AO22 U116 ( .A(n140), .B(b[5]), .C(n137), .D(a[5]), .Z(n138) );
  GTECH_OR2 U117 ( .A(n137), .B(a[5]), .Z(n140) );
  GTECH_AO22 U118 ( .A(n99), .B(a[4]), .C(n141), .D(b[4]), .Z(n137) );
  GTECH_NAND2 U119 ( .A(n98), .B(n105), .Z(n141) );
  GTECH_NOT U120 ( .A(a[4]), .Z(n98) );
  GTECH_NOT U121 ( .A(n105), .Z(n99) );
  GTECH_AOI222 U122 ( .A(a[3]), .B(n142), .C(b[3]), .D(n143), .E(n100), .F(
        n102), .Z(n105) );
  GTECH_NAND2 U123 ( .A(n104), .B(n106), .Z(n102) );
  GTECH_XNOR3 U124 ( .A(b[1]), .B(a[1]), .C(n144), .Z(n106) );
  GTECH_XNOR3 U125 ( .A(b[2]), .B(a[2]), .C(n145), .Z(n104) );
  GTECH_XOR3 U126 ( .A(b[3]), .B(a[3]), .C(n142), .Z(n100) );
  GTECH_OR2 U127 ( .A(n142), .B(a[3]), .Z(n143) );
  GTECH_AO22 U128 ( .A(n146), .B(b[2]), .C(n145), .D(a[2]), .Z(n142) );
  GTECH_OR2 U129 ( .A(n145), .B(a[2]), .Z(n146) );
  GTECH_AO22 U130 ( .A(n147), .B(b[1]), .C(n144), .D(a[1]), .Z(n145) );
  GTECH_OR2 U131 ( .A(n144), .B(a[1]), .Z(n147) );
  GTECH_AO22 U132 ( .A(n148), .B(cin), .C(a[0]), .D(b[0]), .Z(n144) );
  GTECH_OR2 U133 ( .A(a[0]), .B(b[0]), .Z(n148) );
endmodule

