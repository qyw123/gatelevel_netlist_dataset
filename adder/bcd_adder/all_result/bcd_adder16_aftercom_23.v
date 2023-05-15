
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
         n145, n146, n147;

  GTECH_XOR2 U55 ( .A(n87), .B(n88), .Z(sum[9]) );
  GTECH_ADD_ABC U56 ( .A(b[8]), .B(a[8]), .C(n89), .S(sum[8]) );
  GTECH_XOR2 U57 ( .A(n90), .B(n91), .Z(sum[7]) );
  GTECH_AND2 U58 ( .A(n92), .B(n89), .Z(n91) );
  GTECH_OAI22 U59 ( .A(n93), .B(n94), .C(n95), .D(n92), .Z(sum[6]) );
  GTECH_AND2 U60 ( .A(n96), .B(n89), .Z(n93) );
  GTECH_XNOR2 U61 ( .A(n89), .B(n96), .Z(sum[5]) );
  GTECH_ADD_ABC U62 ( .A(b[4]), .B(a[4]), .C(n97), .S(sum[4]) );
  GTECH_XOR2 U63 ( .A(n98), .B(n99), .Z(sum[3]) );
  GTECH_AND2 U64 ( .A(n100), .B(n97), .Z(n99) );
  GTECH_OAI22 U65 ( .A(n101), .B(n102), .C(n103), .D(n100), .Z(sum[2]) );
  GTECH_AND2 U66 ( .A(n104), .B(n97), .Z(n101) );
  GTECH_XNOR2 U67 ( .A(n97), .B(n104), .Z(sum[1]) );
  GTECH_XOR2 U68 ( .A(n105), .B(n106), .Z(sum[15]) );
  GTECH_AND2 U69 ( .A(n107), .B(cout), .Z(n106) );
  GTECH_OAI22 U70 ( .A(n108), .B(n109), .C(n110), .D(n107), .Z(sum[14]) );
  GTECH_AND2 U71 ( .A(n111), .B(cout), .Z(n108) );
  GTECH_XNOR2 U72 ( .A(cout), .B(n111), .Z(sum[13]) );
  GTECH_ADD_ABC U73 ( .A(b[12]), .B(a[12]), .C(n112), .S(sum[12]) );
  GTECH_XOR2 U74 ( .A(n113), .B(n114), .Z(sum[11]) );
  GTECH_AND2 U75 ( .A(n115), .B(n112), .Z(n114) );
  GTECH_OAI22 U76 ( .A(n116), .B(n117), .C(n87), .D(n115), .Z(sum[10]) );
  GTECH_AND2 U77 ( .A(n88), .B(n112), .Z(n116) );
  GTECH_ADD_ABC U78 ( .A(cin), .B(b[0]), .C(a[0]), .S(sum[0]) );
  GTECH_NOT U79 ( .A(n110), .Z(cout) );
  GTECH_AOI222 U80 ( .A(a[15]), .B(n118), .C(b[15]), .D(n119), .E(n105), .F(
        n107), .Z(n110) );
  GTECH_NAND2 U81 ( .A(n109), .B(n111), .Z(n107) );
  GTECH_ADD_ABC U82 ( .A(b[13]), .B(a[13]), .C(n120), .S(n111) );
  GTECH_XNOR3 U83 ( .A(b[14]), .B(a[14]), .C(n121), .Z(n109) );
  GTECH_ADD_ABC U84 ( .A(b[15]), .B(a[15]), .C(n118), .S(n105) );
  GTECH_OR2 U85 ( .A(a[15]), .B(n118), .Z(n119) );
  GTECH_AO22 U86 ( .A(n121), .B(a[14]), .C(n122), .D(b[14]), .Z(n118) );
  GTECH_OR2 U87 ( .A(n121), .B(a[14]), .Z(n122) );
  GTECH_AO22 U88 ( .A(n123), .B(a[13]), .C(n124), .D(b[13]), .Z(n121) );
  GTECH_OR2 U89 ( .A(a[13]), .B(n123), .Z(n124) );
  GTECH_NOT U90 ( .A(n120), .Z(n123) );
  GTECH_AOI22 U91 ( .A(n125), .B(b[12]), .C(n112), .D(a[12]), .Z(n120) );
  GTECH_NOT U92 ( .A(n87), .Z(n112) );
  GTECH_OR_NOT U93 ( .A(a[12]), .B(n87), .Z(n125) );
  GTECH_AOI222 U94 ( .A(a[11]), .B(n126), .C(b[11]), .D(n127), .E(n113), .F(
        n115), .Z(n87) );
  GTECH_NAND2 U95 ( .A(n117), .B(n88), .Z(n115) );
  GTECH_ADD_ABC U96 ( .A(b[9]), .B(a[9]), .C(n128), .S(n88) );
  GTECH_XNOR3 U97 ( .A(b[10]), .B(a[10]), .C(n129), .Z(n117) );
  GTECH_ADD_ABC U98 ( .A(b[11]), .B(a[11]), .C(n126), .S(n113) );
  GTECH_OR2 U99 ( .A(a[11]), .B(n126), .Z(n127) );
  GTECH_AO22 U100 ( .A(n129), .B(a[10]), .C(n130), .D(b[10]), .Z(n126) );
  GTECH_OR2 U101 ( .A(n129), .B(a[10]), .Z(n130) );
  GTECH_AO22 U102 ( .A(n131), .B(a[9]), .C(n132), .D(b[9]), .Z(n129) );
  GTECH_OR2 U103 ( .A(a[9]), .B(n131), .Z(n132) );
  GTECH_NOT U104 ( .A(n128), .Z(n131) );
  GTECH_AOI22 U105 ( .A(n133), .B(b[8]), .C(n89), .D(a[8]), .Z(n128) );
  GTECH_NOT U106 ( .A(n95), .Z(n89) );
  GTECH_OR_NOT U107 ( .A(a[8]), .B(n95), .Z(n133) );
  GTECH_AOI222 U108 ( .A(a[7]), .B(n134), .C(b[7]), .D(n135), .E(n90), .F(n92), 
        .Z(n95) );
  GTECH_NAND2 U109 ( .A(n94), .B(n96), .Z(n92) );
  GTECH_ADD_ABC U110 ( .A(b[5]), .B(a[5]), .C(n136), .S(n96) );
  GTECH_XNOR3 U111 ( .A(b[6]), .B(a[6]), .C(n137), .Z(n94) );
  GTECH_ADD_ABC U112 ( .A(b[7]), .B(a[7]), .C(n134), .S(n90) );
  GTECH_OR2 U113 ( .A(a[7]), .B(n134), .Z(n135) );
  GTECH_AO22 U114 ( .A(n137), .B(a[6]), .C(n138), .D(b[6]), .Z(n134) );
  GTECH_OR2 U115 ( .A(n137), .B(a[6]), .Z(n138) );
  GTECH_AO22 U116 ( .A(n139), .B(a[5]), .C(n140), .D(b[5]), .Z(n137) );
  GTECH_OR2 U117 ( .A(a[5]), .B(n139), .Z(n140) );
  GTECH_NOT U118 ( .A(n136), .Z(n139) );
  GTECH_AOI22 U119 ( .A(n141), .B(b[4]), .C(n97), .D(a[4]), .Z(n136) );
  GTECH_NOT U120 ( .A(n103), .Z(n97) );
  GTECH_OR_NOT U121 ( .A(a[4]), .B(n103), .Z(n141) );
  GTECH_AOI222 U122 ( .A(a[3]), .B(n142), .C(b[3]), .D(n143), .E(n98), .F(n100), .Z(n103) );
  GTECH_NAND2 U123 ( .A(n102), .B(n104), .Z(n100) );
  GTECH_XNOR3 U124 ( .A(b[1]), .B(a[1]), .C(n144), .Z(n104) );
  GTECH_XNOR3 U125 ( .A(b[2]), .B(a[2]), .C(n145), .Z(n102) );
  GTECH_ADD_ABC U126 ( .A(b[3]), .B(a[3]), .C(n142), .S(n98) );
  GTECH_OR2 U127 ( .A(a[3]), .B(n142), .Z(n143) );
  GTECH_AO22 U128 ( .A(n145), .B(a[2]), .C(n146), .D(b[2]), .Z(n142) );
  GTECH_OR2 U129 ( .A(n145), .B(a[2]), .Z(n146) );
  GTECH_AO22 U130 ( .A(n144), .B(a[1]), .C(n147), .D(b[1]), .Z(n145) );
  GTECH_OR2 U131 ( .A(a[1]), .B(n144), .Z(n147) );
  GTECH_ADD_ABC U132 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n144) );
endmodule

