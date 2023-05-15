
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
         n145, n146, n147, n148;

  GTECH_ADD_AB U56 ( .A(n88), .B(n89), .S(sum[9]) );
  GTECH_XNOR3 U57 ( .A(b[8]), .B(n90), .C(n91), .Z(sum[8]) );
  GTECH_ADD_AB U58 ( .A(n92), .B(n93), .S(sum[7]) );
  GTECH_AND2 U59 ( .A(n94), .B(n91), .Z(n92) );
  GTECH_OAI22 U60 ( .A(n95), .B(n96), .C(n97), .D(n94), .Z(sum[6]) );
  GTECH_AND2 U61 ( .A(n98), .B(n91), .Z(n95) );
  GTECH_ADD_AB U62 ( .A(n97), .B(n98), .S(sum[5]) );
  GTECH_XNOR3 U63 ( .A(b[4]), .B(n99), .C(n100), .Z(sum[4]) );
  GTECH_ADD_AB U64 ( .A(n101), .B(n102), .S(sum[3]) );
  GTECH_AND2 U65 ( .A(n103), .B(n100), .Z(n101) );
  GTECH_OAI22 U66 ( .A(n104), .B(n105), .C(n106), .D(n103), .Z(sum[2]) );
  GTECH_NOR2 U67 ( .A(n106), .B(n107), .Z(n104) );
  GTECH_XNOR2 U68 ( .A(n106), .B(n107), .Z(sum[1]) );
  GTECH_ADD_AB U69 ( .A(n108), .B(n109), .S(sum[15]) );
  GTECH_AND2 U70 ( .A(n110), .B(cout), .Z(n108) );
  GTECH_OAI22 U71 ( .A(n111), .B(n112), .C(n113), .D(n110), .Z(sum[14]) );
  GTECH_AND2 U72 ( .A(n114), .B(cout), .Z(n111) );
  GTECH_ADD_AB U73 ( .A(n113), .B(n114), .S(sum[13]) );
  GTECH_XNOR3 U74 ( .A(b[12]), .B(n115), .C(n116), .Z(sum[12]) );
  GTECH_ADD_AB U75 ( .A(n117), .B(n118), .S(sum[11]) );
  GTECH_AND2 U76 ( .A(n119), .B(n116), .Z(n117) );
  GTECH_OAI22 U77 ( .A(n120), .B(n121), .C(n88), .D(n119), .Z(sum[10]) );
  GTECH_AND2 U78 ( .A(n89), .B(n116), .Z(n120) );
  GTECH_XOR3 U79 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_NOT U80 ( .A(n113), .Z(cout) );
  GTECH_AOI222 U81 ( .A(a[15]), .B(n122), .C(b[15]), .D(n123), .E(n109), .F(
        n110), .Z(n113) );
  GTECH_NAND2 U82 ( .A(n112), .B(n114), .Z(n110) );
  GTECH_XNOR3 U83 ( .A(b[13]), .B(a[13]), .C(n124), .Z(n114) );
  GTECH_XNOR3 U84 ( .A(b[14]), .B(a[14]), .C(n125), .Z(n112) );
  GTECH_XOR3 U85 ( .A(b[15]), .B(a[15]), .C(n122), .Z(n109) );
  GTECH_OR2 U86 ( .A(n122), .B(a[15]), .Z(n123) );
  GTECH_AO22 U87 ( .A(n126), .B(b[14]), .C(n125), .D(a[14]), .Z(n122) );
  GTECH_OR2 U88 ( .A(n125), .B(a[14]), .Z(n126) );
  GTECH_AO22 U89 ( .A(n127), .B(b[13]), .C(n124), .D(a[13]), .Z(n125) );
  GTECH_OR2 U90 ( .A(n124), .B(a[13]), .Z(n127) );
  GTECH_AO22 U91 ( .A(n116), .B(a[12]), .C(n128), .D(b[12]), .Z(n124) );
  GTECH_NAND2 U92 ( .A(n115), .B(n88), .Z(n128) );
  GTECH_NOT U93 ( .A(a[12]), .Z(n115) );
  GTECH_NOT U94 ( .A(n88), .Z(n116) );
  GTECH_AOI222 U95 ( .A(a[11]), .B(n129), .C(b[11]), .D(n130), .E(n118), .F(
        n119), .Z(n88) );
  GTECH_NAND2 U96 ( .A(n121), .B(n89), .Z(n119) );
  GTECH_XNOR3 U97 ( .A(b[9]), .B(a[9]), .C(n131), .Z(n89) );
  GTECH_XNOR3 U98 ( .A(b[10]), .B(a[10]), .C(n132), .Z(n121) );
  GTECH_XOR3 U99 ( .A(b[11]), .B(a[11]), .C(n129), .Z(n118) );
  GTECH_OR2 U100 ( .A(n129), .B(a[11]), .Z(n130) );
  GTECH_AO22 U101 ( .A(n133), .B(b[10]), .C(n132), .D(a[10]), .Z(n129) );
  GTECH_OR2 U102 ( .A(n132), .B(a[10]), .Z(n133) );
  GTECH_AO22 U103 ( .A(n134), .B(b[9]), .C(n131), .D(a[9]), .Z(n132) );
  GTECH_OR2 U104 ( .A(n131), .B(a[9]), .Z(n134) );
  GTECH_AO22 U105 ( .A(n91), .B(a[8]), .C(n135), .D(b[8]), .Z(n131) );
  GTECH_NAND2 U106 ( .A(n90), .B(n97), .Z(n135) );
  GTECH_NOT U107 ( .A(a[8]), .Z(n90) );
  GTECH_NOT U108 ( .A(n97), .Z(n91) );
  GTECH_AOI222 U109 ( .A(a[7]), .B(n136), .C(b[7]), .D(n137), .E(n93), .F(n94), 
        .Z(n97) );
  GTECH_NAND2 U110 ( .A(n96), .B(n98), .Z(n94) );
  GTECH_XNOR3 U111 ( .A(b[5]), .B(a[5]), .C(n138), .Z(n98) );
  GTECH_XNOR3 U112 ( .A(b[6]), .B(a[6]), .C(n139), .Z(n96) );
  GTECH_XOR3 U113 ( .A(b[7]), .B(a[7]), .C(n136), .Z(n93) );
  GTECH_OR2 U114 ( .A(n136), .B(a[7]), .Z(n137) );
  GTECH_AO22 U115 ( .A(n140), .B(b[6]), .C(n139), .D(a[6]), .Z(n136) );
  GTECH_OR2 U116 ( .A(n139), .B(a[6]), .Z(n140) );
  GTECH_AO22 U117 ( .A(n141), .B(b[5]), .C(n138), .D(a[5]), .Z(n139) );
  GTECH_OR2 U118 ( .A(n138), .B(a[5]), .Z(n141) );
  GTECH_AO22 U119 ( .A(n100), .B(a[4]), .C(n142), .D(b[4]), .Z(n138) );
  GTECH_NAND2 U120 ( .A(n99), .B(n106), .Z(n142) );
  GTECH_NOT U121 ( .A(a[4]), .Z(n99) );
  GTECH_NOT U122 ( .A(n106), .Z(n100) );
  GTECH_AOI222 U123 ( .A(a[3]), .B(n143), .C(b[3]), .D(n144), .E(n102), .F(
        n103), .Z(n106) );
  GTECH_OR_NOT U124 ( .A(n107), .B(n105), .Z(n103) );
  GTECH_XNOR3 U125 ( .A(b[2]), .B(a[2]), .C(n145), .Z(n105) );
  GTECH_XOR3 U126 ( .A(b[1]), .B(a[1]), .C(n146), .Z(n107) );
  GTECH_XOR3 U127 ( .A(b[3]), .B(a[3]), .C(n143), .Z(n102) );
  GTECH_OR2 U128 ( .A(n143), .B(a[3]), .Z(n144) );
  GTECH_AO22 U129 ( .A(n147), .B(b[2]), .C(n145), .D(a[2]), .Z(n143) );
  GTECH_OR2 U130 ( .A(n145), .B(a[2]), .Z(n147) );
  GTECH_AO22 U131 ( .A(n148), .B(b[1]), .C(n146), .D(a[1]), .Z(n145) );
  GTECH_OR2 U132 ( .A(n146), .B(a[1]), .Z(n148) );
  GTECH_ADD_ABC U133 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n146) );
endmodule

