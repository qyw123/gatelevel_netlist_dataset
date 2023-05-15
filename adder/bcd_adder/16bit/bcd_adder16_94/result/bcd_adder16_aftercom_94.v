
module bcd_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143;

  GTECH_XOR2 U51 ( .A(n83), .B(n84), .Z(sum[9]) );
  GTECH_XNOR3 U52 ( .A(b[8]), .B(n85), .C(n86), .Z(sum[8]) );
  GTECH_XOR2 U53 ( .A(n87), .B(n88), .Z(sum[7]) );
  GTECH_ADD_AB U54 ( .A(n89), .B(n86), .COUT(n88) );
  GTECH_OAI22 U55 ( .A(n90), .B(n91), .C(n92), .D(n89), .Z(sum[6]) );
  GTECH_ADD_AB U56 ( .A(n93), .B(n86), .COUT(n90) );
  GTECH_XOR2 U57 ( .A(n92), .B(n93), .Z(sum[5]) );
  GTECH_XNOR3 U58 ( .A(b[4]), .B(n94), .C(n95), .Z(sum[4]) );
  GTECH_XOR2 U59 ( .A(n96), .B(n97), .Z(sum[3]) );
  GTECH_ADD_AB U60 ( .A(n98), .B(n95), .COUT(n97) );
  GTECH_OAI22 U61 ( .A(n99), .B(n100), .C(n101), .D(n98), .Z(sum[2]) );
  GTECH_NOR2 U62 ( .A(n101), .B(n102), .Z(n99) );
  GTECH_XNOR2 U63 ( .A(n101), .B(n102), .Z(sum[1]) );
  GTECH_XOR2 U64 ( .A(n103), .B(n104), .Z(sum[15]) );
  GTECH_ADD_AB U65 ( .A(n105), .B(cout), .COUT(n104) );
  GTECH_OAI22 U66 ( .A(n106), .B(n107), .C(n108), .D(n105), .Z(sum[14]) );
  GTECH_ADD_AB U67 ( .A(n109), .B(cout), .COUT(n106) );
  GTECH_XOR2 U68 ( .A(n108), .B(n109), .Z(sum[13]) );
  GTECH_XNOR3 U69 ( .A(b[12]), .B(n110), .C(n111), .Z(sum[12]) );
  GTECH_XOR2 U70 ( .A(n112), .B(n113), .Z(sum[11]) );
  GTECH_ADD_AB U71 ( .A(n114), .B(n111), .COUT(n113) );
  GTECH_OAI22 U72 ( .A(n115), .B(n116), .C(n83), .D(n114), .Z(sum[10]) );
  GTECH_ADD_AB U73 ( .A(n84), .B(n111), .COUT(n115) );
  GTECH_XOR3 U74 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_NOT U75 ( .A(n108), .Z(cout) );
  GTECH_AOI222 U76 ( .A(a[15]), .B(n117), .C(b[15]), .D(n118), .E(n103), .F(
        n105), .Z(n108) );
  GTECH_NAND2 U77 ( .A(n107), .B(n109), .Z(n105) );
  GTECH_XNOR3 U78 ( .A(b[13]), .B(a[13]), .C(n119), .Z(n109) );
  GTECH_XNOR3 U79 ( .A(b[14]), .B(a[14]), .C(n120), .Z(n107) );
  GTECH_XOR3 U80 ( .A(b[15]), .B(a[15]), .C(n117), .Z(n103) );
  GTECH_OR2 U81 ( .A(a[15]), .B(n117), .Z(n118) );
  GTECH_AO22 U82 ( .A(n121), .B(b[14]), .C(n120), .D(a[14]), .Z(n117) );
  GTECH_OR2 U83 ( .A(n120), .B(a[14]), .Z(n121) );
  GTECH_AO22 U84 ( .A(n122), .B(b[13]), .C(n119), .D(a[13]), .Z(n120) );
  GTECH_OR2 U85 ( .A(n119), .B(a[13]), .Z(n122) );
  GTECH_AO22 U86 ( .A(n111), .B(a[12]), .C(n123), .D(b[12]), .Z(n119) );
  GTECH_NAND2 U87 ( .A(n110), .B(n83), .Z(n123) );
  GTECH_NOT U88 ( .A(a[12]), .Z(n110) );
  GTECH_NOT U89 ( .A(n83), .Z(n111) );
  GTECH_AOI222 U90 ( .A(a[11]), .B(n124), .C(b[11]), .D(n125), .E(n112), .F(
        n114), .Z(n83) );
  GTECH_NAND2 U91 ( .A(n116), .B(n84), .Z(n114) );
  GTECH_XNOR3 U92 ( .A(b[9]), .B(a[9]), .C(n126), .Z(n84) );
  GTECH_XNOR3 U93 ( .A(b[10]), .B(a[10]), .C(n127), .Z(n116) );
  GTECH_XOR3 U94 ( .A(b[11]), .B(a[11]), .C(n124), .Z(n112) );
  GTECH_OR2 U95 ( .A(n124), .B(a[11]), .Z(n125) );
  GTECH_AO22 U96 ( .A(n128), .B(b[10]), .C(n127), .D(a[10]), .Z(n124) );
  GTECH_OR2 U97 ( .A(n127), .B(a[10]), .Z(n128) );
  GTECH_AO22 U98 ( .A(n129), .B(b[9]), .C(n126), .D(a[9]), .Z(n127) );
  GTECH_OR2 U99 ( .A(n126), .B(a[9]), .Z(n129) );
  GTECH_AO22 U100 ( .A(n86), .B(a[8]), .C(n130), .D(b[8]), .Z(n126) );
  GTECH_NAND2 U101 ( .A(n85), .B(n92), .Z(n130) );
  GTECH_NOT U102 ( .A(a[8]), .Z(n85) );
  GTECH_NOT U103 ( .A(n92), .Z(n86) );
  GTECH_AOI222 U104 ( .A(a[7]), .B(n131), .C(b[7]), .D(n132), .E(n87), .F(n89), 
        .Z(n92) );
  GTECH_NAND2 U105 ( .A(n91), .B(n93), .Z(n89) );
  GTECH_XNOR3 U106 ( .A(b[5]), .B(a[5]), .C(n133), .Z(n93) );
  GTECH_XNOR3 U107 ( .A(b[6]), .B(a[6]), .C(n134), .Z(n91) );
  GTECH_XOR3 U108 ( .A(b[7]), .B(a[7]), .C(n131), .Z(n87) );
  GTECH_OR2 U109 ( .A(n131), .B(a[7]), .Z(n132) );
  GTECH_AO22 U110 ( .A(n135), .B(b[6]), .C(n134), .D(a[6]), .Z(n131) );
  GTECH_OR2 U111 ( .A(n134), .B(a[6]), .Z(n135) );
  GTECH_AO22 U112 ( .A(n136), .B(b[5]), .C(n133), .D(a[5]), .Z(n134) );
  GTECH_OR2 U113 ( .A(n133), .B(a[5]), .Z(n136) );
  GTECH_AO22 U114 ( .A(n95), .B(a[4]), .C(n137), .D(b[4]), .Z(n133) );
  GTECH_NAND2 U115 ( .A(n94), .B(n101), .Z(n137) );
  GTECH_NOT U116 ( .A(a[4]), .Z(n94) );
  GTECH_NOT U117 ( .A(n101), .Z(n95) );
  GTECH_AOI222 U118 ( .A(a[3]), .B(n138), .C(b[3]), .D(n139), .E(n96), .F(n98), 
        .Z(n101) );
  GTECH_OR_NOT U119 ( .A(n102), .B(n100), .Z(n98) );
  GTECH_XNOR3 U120 ( .A(b[2]), .B(a[2]), .C(n140), .Z(n100) );
  GTECH_XOR3 U121 ( .A(b[1]), .B(a[1]), .C(n141), .Z(n102) );
  GTECH_XOR3 U122 ( .A(b[3]), .B(a[3]), .C(n138), .Z(n96) );
  GTECH_OR2 U123 ( .A(n138), .B(a[3]), .Z(n139) );
  GTECH_AO22 U124 ( .A(n142), .B(b[2]), .C(n140), .D(a[2]), .Z(n138) );
  GTECH_OR2 U125 ( .A(n140), .B(a[2]), .Z(n142) );
  GTECH_AO22 U126 ( .A(n143), .B(b[1]), .C(n141), .D(a[1]), .Z(n140) );
  GTECH_OR2 U127 ( .A(n141), .B(a[1]), .Z(n143) );
  GTECH_ADD_ABC U128 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n141) );
endmodule

