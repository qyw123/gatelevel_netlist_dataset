
module carry_ahead_adder16 ( a, b, cin, cout, sum, Gm, Pm );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout, Gm, Pm;
  wire   n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128;

  GTECH_XOR2 U84 ( .A(n65), .B(n66), .Z(sum[9]) );
  GTECH_XOR2 U85 ( .A(n67), .B(n68), .Z(sum[8]) );
  GTECH_XNOR2 U86 ( .A(n69), .B(n70), .Z(sum[7]) );
  GTECH_AOI21 U87 ( .A(n71), .B(n72), .C(n73), .Z(n70) );
  GTECH_XOR2 U88 ( .A(n72), .B(n71), .Z(sum[6]) );
  GTECH_AO22 U89 ( .A(b[5]), .B(a[5]), .C(n74), .D(n75), .Z(n71) );
  GTECH_XOR2 U90 ( .A(n75), .B(n74), .Z(sum[5]) );
  GTECH_AO22 U91 ( .A(n76), .B(n77), .C(b[4]), .D(a[4]), .Z(n74) );
  GTECH_XOR2 U92 ( .A(n77), .B(n76), .Z(sum[4]) );
  GTECH_XNOR2 U93 ( .A(n78), .B(n79), .Z(sum[3]) );
  GTECH_AOI21 U94 ( .A(n80), .B(n81), .C(n82), .Z(n79) );
  GTECH_XNOR2 U95 ( .A(n83), .B(n80), .Z(sum[2]) );
  GTECH_AO21 U96 ( .A(n84), .B(n85), .C(n86), .Z(n80) );
  GTECH_NOT U97 ( .A(n87), .Z(n86) );
  GTECH_XOR2 U98 ( .A(n84), .B(n85), .Z(sum[1]) );
  GTECH_AO22 U99 ( .A(n88), .B(cin), .C(a[0]), .D(b[0]), .Z(n85) );
  GTECH_XNOR2 U100 ( .A(n89), .B(n90), .Z(sum[15]) );
  GTECH_AOI21 U101 ( .A(n91), .B(n92), .C(n93), .Z(n90) );
  GTECH_XOR2 U102 ( .A(n92), .B(n91), .Z(sum[14]) );
  GTECH_AO22 U103 ( .A(n94), .B(n95), .C(b[13]), .D(a[13]), .Z(n91) );
  GTECH_XOR2 U104 ( .A(n95), .B(n94), .Z(sum[13]) );
  GTECH_AO22 U105 ( .A(a[12]), .B(b[12]), .C(cout), .D(n96), .Z(n94) );
  GTECH_XOR2 U106 ( .A(n96), .B(cout), .Z(sum[12]) );
  GTECH_XNOR2 U107 ( .A(n97), .B(n98), .Z(sum[11]) );
  GTECH_OA21 U108 ( .A(n99), .B(n100), .C(n101), .Z(n98) );
  GTECH_XOR2 U109 ( .A(n100), .B(n99), .Z(sum[10]) );
  GTECH_AOI21 U110 ( .A(n65), .B(n66), .C(n102), .Z(n99) );
  GTECH_AO22 U111 ( .A(a[8]), .B(b[8]), .C(n68), .D(n67), .Z(n66) );
  GTECH_XOR2 U112 ( .A(cin), .B(n88), .Z(sum[0]) );
  GTECH_AO21 U113 ( .A(n103), .B(n68), .C(n104), .Z(cout) );
  GTECH_AO21 U114 ( .A(n105), .B(n76), .C(n106), .Z(n68) );
  GTECH_AO21 U115 ( .A(cin), .B(n107), .C(n108), .Z(n76) );
  GTECH_NOT U116 ( .A(n109), .Z(Pm) );
  GTECH_NAND3 U117 ( .A(n103), .B(n107), .C(n105), .Z(n109) );
  GTECH_AND5 U118 ( .A(n81), .B(n84), .C(n78), .D(n110), .E(n88), .Z(n107) );
  GTECH_XOR2 U119 ( .A(a[0]), .B(b[0]), .Z(n88) );
  GTECH_AO21 U120 ( .A(n103), .B(n111), .C(n104), .Z(Gm) );
  GTECH_AO22 U121 ( .A(b[15]), .B(a[15]), .C(n112), .D(n89), .Z(n104) );
  GTECH_AO21 U122 ( .A(n113), .B(n92), .C(n93), .Z(n112) );
  GTECH_AND2 U123 ( .A(a[14]), .B(b[14]), .Z(n93) );
  GTECH_AO21 U124 ( .A(b[13]), .B(a[13]), .C(n114), .Z(n113) );
  GTECH_NOT U125 ( .A(n115), .Z(n114) );
  GTECH_NAND3 U126 ( .A(a[12]), .B(n95), .C(b[12]), .Z(n115) );
  GTECH_AO21 U127 ( .A(n105), .B(n108), .C(n106), .Z(n111) );
  GTECH_AO22 U128 ( .A(b[11]), .B(a[11]), .C(n116), .D(n97), .Z(n106) );
  GTECH_NAND2 U129 ( .A(n117), .B(n101), .Z(n116) );
  GTECH_NAND2 U130 ( .A(a[10]), .B(b[10]), .Z(n101) );
  GTECH_AO21 U131 ( .A(n118), .B(n119), .C(n100), .Z(n117) );
  GTECH_NOT U132 ( .A(n120), .Z(n100) );
  GTECH_NAND3 U133 ( .A(a[8]), .B(n65), .C(b[8]), .Z(n119) );
  GTECH_NOT U134 ( .A(n102), .Z(n118) );
  GTECH_AND2 U135 ( .A(a[9]), .B(b[9]), .Z(n102) );
  GTECH_NOT U136 ( .A(n121), .Z(n108) );
  GTECH_AOI222 U137 ( .A(a[7]), .B(b[7]), .C(n110), .D(n122), .E(n69), .F(n123), .Z(n121) );
  GTECH_AO21 U138 ( .A(n72), .B(n124), .C(n73), .Z(n123) );
  GTECH_AND2 U139 ( .A(b[6]), .B(a[6]), .Z(n73) );
  GTECH_AO22 U140 ( .A(a[4]), .B(n125), .C(b[5]), .D(a[5]), .Z(n124) );
  GTECH_AND2 U141 ( .A(n75), .B(b[4]), .Z(n125) );
  GTECH_AO22 U142 ( .A(n126), .B(n78), .C(b[3]), .D(a[3]), .Z(n122) );
  GTECH_XOR2 U143 ( .A(a[3]), .B(b[3]), .Z(n78) );
  GTECH_OR_NOT U144 ( .A(n82), .B(n127), .Z(n126) );
  GTECH_AO21 U145 ( .A(n87), .B(n128), .C(n83), .Z(n127) );
  GTECH_NOT U146 ( .A(n81), .Z(n83) );
  GTECH_XOR2 U147 ( .A(a[2]), .B(b[2]), .Z(n81) );
  GTECH_NAND3 U148 ( .A(a[0]), .B(n84), .C(b[0]), .Z(n128) );
  GTECH_XOR2 U149 ( .A(a[1]), .B(b[1]), .Z(n84) );
  GTECH_NAND2 U150 ( .A(a[1]), .B(b[1]), .Z(n87) );
  GTECH_AND2 U151 ( .A(a[2]), .B(b[2]), .Z(n82) );
  GTECH_AND4 U152 ( .A(n77), .B(n75), .C(n72), .D(n69), .Z(n110) );
  GTECH_XOR2 U153 ( .A(a[7]), .B(b[7]), .Z(n69) );
  GTECH_XOR2 U154 ( .A(a[6]), .B(b[6]), .Z(n72) );
  GTECH_XOR2 U155 ( .A(a[5]), .B(b[5]), .Z(n75) );
  GTECH_XOR2 U156 ( .A(a[4]), .B(b[4]), .Z(n77) );
  GTECH_AND4 U157 ( .A(n67), .B(n97), .C(n120), .D(n65), .Z(n105) );
  GTECH_XOR2 U158 ( .A(a[9]), .B(b[9]), .Z(n65) );
  GTECH_XOR2 U159 ( .A(a[10]), .B(b[10]), .Z(n120) );
  GTECH_XOR2 U160 ( .A(a[11]), .B(b[11]), .Z(n97) );
  GTECH_XOR2 U161 ( .A(a[8]), .B(b[8]), .Z(n67) );
  GTECH_AND4 U162 ( .A(n96), .B(n89), .C(n92), .D(n95), .Z(n103) );
  GTECH_XOR2 U163 ( .A(a[13]), .B(b[13]), .Z(n95) );
  GTECH_XOR2 U164 ( .A(a[14]), .B(b[14]), .Z(n92) );
  GTECH_XOR2 U165 ( .A(a[15]), .B(b[15]), .Z(n89) );
  GTECH_XOR2 U166 ( .A(a[12]), .B(b[12]), .Z(n96) );
endmodule

