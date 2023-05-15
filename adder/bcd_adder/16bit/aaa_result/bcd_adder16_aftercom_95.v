
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
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141;

  GTECH_XOR2 U51 ( .A(n83), .B(n84), .Z(sum[9]) );
  GTECH_XNOR3 U52 ( .A(b[8]), .B(a[8]), .C(n85), .Z(sum[8]) );
  GTECH_XOR2 U53 ( .A(n86), .B(n87), .Z(sum[7]) );
  GTECH_AND2 U54 ( .A(n88), .B(n89), .Z(n87) );
  GTECH_OAI22 U55 ( .A(n90), .B(n91), .C(n85), .D(n88), .Z(sum[6]) );
  GTECH_NOR2 U56 ( .A(n85), .B(n92), .Z(n90) );
  GTECH_XNOR2 U57 ( .A(n85), .B(n92), .Z(sum[5]) );
  GTECH_XNOR3 U58 ( .A(b[4]), .B(a[4]), .C(n93), .Z(sum[4]) );
  GTECH_XOR2 U59 ( .A(n94), .B(n95), .Z(sum[3]) );
  GTECH_AND2 U60 ( .A(n96), .B(n97), .Z(n95) );
  GTECH_OAI22 U61 ( .A(n98), .B(n99), .C(n93), .D(n96), .Z(sum[2]) );
  GTECH_AND_NOT U62 ( .A(n97), .B(n100), .Z(n98) );
  GTECH_XNOR2 U63 ( .A(n93), .B(n100), .Z(sum[1]) );
  GTECH_XOR2 U64 ( .A(n101), .B(n102), .Z(sum[15]) );
  GTECH_AND2 U65 ( .A(n103), .B(cout), .Z(n102) );
  GTECH_OAI22 U66 ( .A(n104), .B(n105), .C(n106), .D(n103), .Z(sum[14]) );
  GTECH_NOR2 U67 ( .A(n106), .B(n107), .Z(n104) );
  GTECH_XNOR2 U68 ( .A(n106), .B(n107), .Z(sum[13]) );
  GTECH_XNOR3 U69 ( .A(b[12]), .B(a[12]), .C(n83), .Z(sum[12]) );
  GTECH_XOR2 U70 ( .A(n108), .B(n109), .Z(sum[11]) );
  GTECH_AND2 U71 ( .A(n110), .B(n111), .Z(n109) );
  GTECH_OAI22 U72 ( .A(n112), .B(n113), .C(n83), .D(n110), .Z(sum[10]) );
  GTECH_AND2 U73 ( .A(n111), .B(n84), .Z(n112) );
  GTECH_XOR3 U74 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_NOT U75 ( .A(n106), .Z(cout) );
  GTECH_AOI222 U76 ( .A(a[15]), .B(n114), .C(b[15]), .D(n115), .E(n101), .F(
        n103), .Z(n106) );
  GTECH_OR_NOT U77 ( .A(n107), .B(n105), .Z(n103) );
  GTECH_XNOR3 U78 ( .A(b[14]), .B(a[14]), .C(n116), .Z(n105) );
  GTECH_XOR3 U79 ( .A(b[13]), .B(a[13]), .C(n117), .Z(n107) );
  GTECH_XOR3 U80 ( .A(b[15]), .B(a[15]), .C(n114), .Z(n101) );
  GTECH_OR2 U81 ( .A(a[15]), .B(n114), .Z(n115) );
  GTECH_AO22 U82 ( .A(n116), .B(a[14]), .C(n118), .D(b[14]), .Z(n114) );
  GTECH_OR2 U83 ( .A(n116), .B(a[14]), .Z(n118) );
  GTECH_AO22 U84 ( .A(n119), .B(b[13]), .C(n117), .D(a[13]), .Z(n116) );
  GTECH_OR2 U85 ( .A(n117), .B(a[13]), .Z(n119) );
  GTECH_AO22 U86 ( .A(n111), .B(a[12]), .C(n120), .D(b[12]), .Z(n117) );
  GTECH_OR_NOT U87 ( .A(a[12]), .B(n83), .Z(n120) );
  GTECH_NOT U88 ( .A(n83), .Z(n111) );
  GTECH_AOI222 U89 ( .A(a[11]), .B(n121), .C(b[11]), .D(n122), .E(n108), .F(
        n110), .Z(n83) );
  GTECH_OR_NOT U90 ( .A(n123), .B(n113), .Z(n110) );
  GTECH_XNOR3 U91 ( .A(b[10]), .B(a[10]), .C(n124), .Z(n113) );
  GTECH_NOT U92 ( .A(n84), .Z(n123) );
  GTECH_XNOR3 U93 ( .A(b[9]), .B(a[9]), .C(n125), .Z(n84) );
  GTECH_XOR3 U94 ( .A(b[11]), .B(a[11]), .C(n121), .Z(n108) );
  GTECH_OR2 U95 ( .A(n121), .B(a[11]), .Z(n122) );
  GTECH_AO22 U96 ( .A(n126), .B(b[10]), .C(n124), .D(a[10]), .Z(n121) );
  GTECH_OR2 U97 ( .A(n124), .B(a[10]), .Z(n126) );
  GTECH_AO22 U98 ( .A(n127), .B(b[9]), .C(n125), .D(a[9]), .Z(n124) );
  GTECH_OR2 U99 ( .A(n125), .B(a[9]), .Z(n127) );
  GTECH_AO22 U100 ( .A(n89), .B(a[8]), .C(n128), .D(b[8]), .Z(n125) );
  GTECH_OR_NOT U101 ( .A(a[8]), .B(n85), .Z(n128) );
  GTECH_NOT U102 ( .A(n85), .Z(n89) );
  GTECH_AOI222 U103 ( .A(a[7]), .B(n129), .C(b[7]), .D(n130), .E(n86), .F(n88), 
        .Z(n85) );
  GTECH_OR_NOT U104 ( .A(n92), .B(n91), .Z(n88) );
  GTECH_XNOR3 U105 ( .A(b[6]), .B(a[6]), .C(n131), .Z(n91) );
  GTECH_XOR3 U106 ( .A(b[5]), .B(a[5]), .C(n132), .Z(n92) );
  GTECH_XOR3 U107 ( .A(b[7]), .B(a[7]), .C(n129), .Z(n86) );
  GTECH_OR2 U108 ( .A(n129), .B(a[7]), .Z(n130) );
  GTECH_AO22 U109 ( .A(n133), .B(b[6]), .C(n131), .D(a[6]), .Z(n129) );
  GTECH_OR2 U110 ( .A(n131), .B(a[6]), .Z(n133) );
  GTECH_AO22 U111 ( .A(n134), .B(b[5]), .C(n132), .D(a[5]), .Z(n131) );
  GTECH_OR2 U112 ( .A(n132), .B(a[5]), .Z(n134) );
  GTECH_AO22 U113 ( .A(n97), .B(a[4]), .C(n135), .D(b[4]), .Z(n132) );
  GTECH_OR_NOT U114 ( .A(a[4]), .B(n93), .Z(n135) );
  GTECH_NOT U115 ( .A(n93), .Z(n97) );
  GTECH_AOI222 U116 ( .A(a[3]), .B(n136), .C(b[3]), .D(n137), .E(n94), .F(n96), 
        .Z(n93) );
  GTECH_OR_NOT U117 ( .A(n100), .B(n99), .Z(n96) );
  GTECH_XNOR3 U118 ( .A(b[2]), .B(a[2]), .C(n138), .Z(n99) );
  GTECH_XOR3 U119 ( .A(b[1]), .B(a[1]), .C(n139), .Z(n100) );
  GTECH_XOR3 U120 ( .A(b[3]), .B(a[3]), .C(n136), .Z(n94) );
  GTECH_OR2 U121 ( .A(n136), .B(a[3]), .Z(n137) );
  GTECH_AO22 U122 ( .A(n140), .B(b[2]), .C(n138), .D(a[2]), .Z(n136) );
  GTECH_OR2 U123 ( .A(n138), .B(a[2]), .Z(n140) );
  GTECH_AO22 U124 ( .A(n141), .B(b[1]), .C(n139), .D(a[1]), .Z(n138) );
  GTECH_OR2 U125 ( .A(n139), .B(a[1]), .Z(n141) );
  GTECH_ADD_ABC U126 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n139) );
endmodule

