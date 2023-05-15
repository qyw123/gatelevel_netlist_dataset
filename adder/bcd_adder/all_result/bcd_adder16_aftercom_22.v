
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
  GTECH_AND2 U58 ( .A(n92), .B(n93), .Z(n91) );
  GTECH_OAI21 U59 ( .A(n89), .B(n92), .C(n94), .Z(sum[6]) );
  GTECH_AO21 U60 ( .A(n93), .B(n95), .C(n96), .Z(n94) );
  GTECH_XOR2 U61 ( .A(n89), .B(n95), .Z(sum[5]) );
  GTECH_XNOR3 U62 ( .A(b[4]), .B(a[4]), .C(n97), .Z(sum[4]) );
  GTECH_XOR2 U63 ( .A(n98), .B(n99), .Z(sum[3]) );
  GTECH_AND2 U64 ( .A(n100), .B(n101), .Z(n99) );
  GTECH_OAI21 U65 ( .A(n97), .B(n100), .C(n102), .Z(sum[2]) );
  GTECH_AO21 U66 ( .A(n101), .B(n103), .C(n104), .Z(n102) );
  GTECH_XOR2 U67 ( .A(n97), .B(n103), .Z(sum[1]) );
  GTECH_XOR2 U68 ( .A(n105), .B(n106), .Z(sum[15]) );
  GTECH_AND2 U69 ( .A(n107), .B(cout), .Z(n106) );
  GTECH_OAI21 U70 ( .A(n108), .B(n107), .C(n109), .Z(sum[14]) );
  GTECH_AO21 U71 ( .A(cout), .B(n110), .C(n111), .Z(n109) );
  GTECH_XOR2 U72 ( .A(n108), .B(n110), .Z(sum[13]) );
  GTECH_XNOR3 U73 ( .A(b[12]), .B(a[12]), .C(n112), .Z(sum[12]) );
  GTECH_XOR2 U74 ( .A(n113), .B(n114), .Z(sum[11]) );
  GTECH_AND2 U75 ( .A(n115), .B(n87), .Z(n114) );
  GTECH_OAI21 U76 ( .A(n112), .B(n115), .C(n116), .Z(sum[10]) );
  GTECH_AO21 U77 ( .A(n87), .B(n88), .C(n117), .Z(n116) );
  GTECH_ADD_ABC U78 ( .A(cin), .B(b[0]), .C(a[0]), .S(sum[0]) );
  GTECH_NOT U79 ( .A(n108), .Z(cout) );
  GTECH_AOI222 U80 ( .A(a[15]), .B(n118), .C(b[15]), .D(n119), .E(n105), .F(
        n107), .Z(n108) );
  GTECH_NAND2 U81 ( .A(n111), .B(n110), .Z(n107) );
  GTECH_XNOR3 U82 ( .A(b[13]), .B(a[13]), .C(n120), .Z(n110) );
  GTECH_XNOR3 U83 ( .A(b[14]), .B(a[14]), .C(n121), .Z(n111) );
  GTECH_ADD_ABC U84 ( .A(b[15]), .B(a[15]), .C(n118), .S(n105) );
  GTECH_OR2 U85 ( .A(a[15]), .B(n118), .Z(n119) );
  GTECH_AO21 U86 ( .A(n121), .B(a[14]), .C(n122), .Z(n118) );
  GTECH_OA21 U87 ( .A(a[14]), .B(n121), .C(b[14]), .Z(n122) );
  GTECH_AO21 U88 ( .A(n120), .B(a[13]), .C(n123), .Z(n121) );
  GTECH_OA21 U89 ( .A(a[13]), .B(n120), .C(b[13]), .Z(n123) );
  GTECH_AO21 U90 ( .A(n87), .B(a[12]), .C(n124), .Z(n120) );
  GTECH_OA21 U91 ( .A(a[12]), .B(n87), .C(b[12]), .Z(n124) );
  GTECH_NOT U92 ( .A(n112), .Z(n87) );
  GTECH_AOI222 U93 ( .A(a[11]), .B(n125), .C(b[11]), .D(n126), .E(n113), .F(
        n115), .Z(n112) );
  GTECH_NAND2 U94 ( .A(n88), .B(n117), .Z(n115) );
  GTECH_XNOR3 U95 ( .A(b[10]), .B(a[10]), .C(n127), .Z(n117) );
  GTECH_XNOR3 U96 ( .A(b[9]), .B(a[9]), .C(n128), .Z(n88) );
  GTECH_ADD_ABC U97 ( .A(b[11]), .B(a[11]), .C(n125), .S(n113) );
  GTECH_OR2 U98 ( .A(n125), .B(a[11]), .Z(n126) );
  GTECH_AO21 U99 ( .A(n127), .B(a[10]), .C(n129), .Z(n125) );
  GTECH_OA21 U100 ( .A(a[10]), .B(n127), .C(b[10]), .Z(n129) );
  GTECH_AO21 U101 ( .A(n128), .B(a[9]), .C(n130), .Z(n127) );
  GTECH_OA21 U102 ( .A(a[9]), .B(n128), .C(b[9]), .Z(n130) );
  GTECH_AO21 U103 ( .A(n93), .B(a[8]), .C(n131), .Z(n128) );
  GTECH_OA21 U104 ( .A(a[8]), .B(n93), .C(b[8]), .Z(n131) );
  GTECH_NOT U105 ( .A(n89), .Z(n93) );
  GTECH_AOI222 U106 ( .A(a[7]), .B(n132), .C(b[7]), .D(n133), .E(n90), .F(n92), 
        .Z(n89) );
  GTECH_NAND2 U107 ( .A(n96), .B(n95), .Z(n92) );
  GTECH_XNOR3 U108 ( .A(b[5]), .B(a[5]), .C(n134), .Z(n95) );
  GTECH_XNOR3 U109 ( .A(b[6]), .B(a[6]), .C(n135), .Z(n96) );
  GTECH_ADD_ABC U110 ( .A(b[7]), .B(a[7]), .C(n132), .S(n90) );
  GTECH_OR2 U111 ( .A(n132), .B(a[7]), .Z(n133) );
  GTECH_AO21 U112 ( .A(n135), .B(a[6]), .C(n136), .Z(n132) );
  GTECH_OA21 U113 ( .A(a[6]), .B(n135), .C(b[6]), .Z(n136) );
  GTECH_AO21 U114 ( .A(n134), .B(a[5]), .C(n137), .Z(n135) );
  GTECH_OA21 U115 ( .A(a[5]), .B(n134), .C(b[5]), .Z(n137) );
  GTECH_AO21 U116 ( .A(n101), .B(a[4]), .C(n138), .Z(n134) );
  GTECH_OA21 U117 ( .A(a[4]), .B(n101), .C(b[4]), .Z(n138) );
  GTECH_NOT U118 ( .A(n97), .Z(n101) );
  GTECH_AOI222 U119 ( .A(a[3]), .B(n139), .C(b[3]), .D(n140), .E(n98), .F(n100), .Z(n97) );
  GTECH_NAND2 U120 ( .A(n104), .B(n103), .Z(n100) );
  GTECH_XNOR3 U121 ( .A(b[1]), .B(a[1]), .C(n141), .Z(n103) );
  GTECH_XNOR3 U122 ( .A(b[2]), .B(a[2]), .C(n142), .Z(n104) );
  GTECH_ADD_ABC U123 ( .A(b[3]), .B(a[3]), .C(n139), .S(n98) );
  GTECH_OR2 U124 ( .A(n139), .B(a[3]), .Z(n140) );
  GTECH_AO21 U125 ( .A(n142), .B(a[2]), .C(n143), .Z(n139) );
  GTECH_OA21 U126 ( .A(a[2]), .B(n142), .C(b[2]), .Z(n143) );
  GTECH_AO21 U127 ( .A(n141), .B(a[1]), .C(n144), .Z(n142) );
  GTECH_OA21 U128 ( .A(a[1]), .B(n141), .C(b[1]), .Z(n144) );
  GTECH_ADD_ABC U129 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n141) );
endmodule

