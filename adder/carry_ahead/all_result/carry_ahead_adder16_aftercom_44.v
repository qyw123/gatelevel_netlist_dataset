
module carry_ahead_adder16 ( a, b, cin, cout, sum, Gm, Pm );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout, Gm, Pm;
  wire   n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135;

  GTECH_XOR2 U87 ( .A(n68), .B(n69), .Z(sum[9]) );
  GTECH_XOR2 U88 ( .A(n70), .B(n71), .Z(sum[8]) );
  GTECH_XOR2 U89 ( .A(n72), .B(n73), .Z(sum[7]) );
  GTECH_AOI21 U90 ( .A(n74), .B(n75), .C(n76), .Z(n73) );
  GTECH_NOT U91 ( .A(n77), .Z(n72) );
  GTECH_XOR2 U92 ( .A(n75), .B(n74), .Z(sum[6]) );
  GTECH_OAI2N2 U93 ( .A(n78), .B(n79), .C(n80), .D(n81), .Z(n74) );
  GTECH_XOR2 U94 ( .A(n81), .B(n80), .Z(sum[5]) );
  GTECH_AO22 U95 ( .A(b[4]), .B(a[4]), .C(n82), .D(n83), .Z(n80) );
  GTECH_XOR2 U96 ( .A(n83), .B(n82), .Z(sum[4]) );
  GTECH_NOT U97 ( .A(n84), .Z(n82) );
  GTECH_XOR2 U98 ( .A(n85), .B(n86), .Z(sum[3]) );
  GTECH_AOI21 U99 ( .A(n87), .B(n88), .C(n89), .Z(n86) );
  GTECH_XOR2 U100 ( .A(n88), .B(n87), .Z(sum[2]) );
  GTECH_OAI2N2 U101 ( .A(n90), .B(n91), .C(n92), .D(n93), .Z(n87) );
  GTECH_XOR2 U102 ( .A(n93), .B(n92), .Z(sum[1]) );
  GTECH_AO22 U103 ( .A(n94), .B(cin), .C(a[0]), .D(b[0]), .Z(n92) );
  GTECH_XOR2 U104 ( .A(n95), .B(n96), .Z(sum[15]) );
  GTECH_AOI21 U105 ( .A(n97), .B(n98), .C(n99), .Z(n96) );
  GTECH_XOR2 U106 ( .A(n98), .B(n97), .Z(sum[14]) );
  GTECH_OAI2N2 U107 ( .A(n100), .B(n101), .C(n102), .D(n103), .Z(n97) );
  GTECH_XOR2 U108 ( .A(n103), .B(n102), .Z(sum[13]) );
  GTECH_AO22 U109 ( .A(a[12]), .B(b[12]), .C(cout), .D(n104), .Z(n102) );
  GTECH_XOR2 U110 ( .A(n104), .B(cout), .Z(sum[12]) );
  GTECH_XOR2 U111 ( .A(n105), .B(n106), .Z(sum[11]) );
  GTECH_AOI21 U112 ( .A(n107), .B(n108), .C(n109), .Z(n106) );
  GTECH_XOR2 U113 ( .A(n108), .B(n107), .Z(sum[10]) );
  GTECH_AO22 U114 ( .A(b[9]), .B(a[9]), .C(n69), .D(n68), .Z(n107) );
  GTECH_AO22 U115 ( .A(a[8]), .B(b[8]), .C(n71), .D(n70), .Z(n69) );
  GTECH_NOT U116 ( .A(n110), .Z(n71) );
  GTECH_XOR2 U117 ( .A(cin), .B(n94), .Z(sum[0]) );
  GTECH_OAI21 U118 ( .A(n110), .B(n111), .C(n112), .Z(cout) );
  GTECH_OA21 U119 ( .A(n84), .B(n113), .C(n114), .Z(n110) );
  GTECH_OA21 U120 ( .A(n115), .B(n116), .C(n117), .Z(n84) );
  GTECH_NOT U121 ( .A(cin), .Z(n116) );
  GTECH_NOR3 U122 ( .A(n113), .B(n115), .C(n111), .Z(Pm) );
  GTECH_NAND5 U123 ( .A(n88), .B(n93), .C(n118), .D(n119), .E(n94), .Z(n115)
         );
  GTECH_XOR2 U124 ( .A(a[0]), .B(b[0]), .Z(n94) );
  GTECH_OAI21 U125 ( .A(n120), .B(n111), .C(n112), .Z(Gm) );
  GTECH_AOI2N2 U126 ( .A(b[15]), .B(a[15]), .C(n121), .D(n95), .Z(n112) );
  GTECH_NOT U127 ( .A(n122), .Z(n95) );
  GTECH_AOI21 U128 ( .A(n123), .B(n98), .C(n99), .Z(n121) );
  GTECH_AND2 U129 ( .A(a[14]), .B(b[14]), .Z(n99) );
  GTECH_OAI21 U130 ( .A(n100), .B(n101), .C(n124), .Z(n123) );
  GTECH_NAND3 U131 ( .A(a[12]), .B(n103), .C(b[12]), .Z(n124) );
  GTECH_NAND4 U132 ( .A(n104), .B(n122), .C(n98), .D(n103), .Z(n111) );
  GTECH_XOR2 U133 ( .A(n101), .B(n100), .Z(n103) );
  GTECH_NOT U134 ( .A(b[13]), .Z(n100) );
  GTECH_NOT U135 ( .A(a[13]), .Z(n101) );
  GTECH_XOR2 U136 ( .A(a[14]), .B(b[14]), .Z(n98) );
  GTECH_XOR2 U137 ( .A(a[15]), .B(b[15]), .Z(n122) );
  GTECH_XOR2 U138 ( .A(a[12]), .B(b[12]), .Z(n104) );
  GTECH_OA21 U139 ( .A(n117), .B(n113), .C(n114), .Z(n120) );
  GTECH_AOI2N2 U140 ( .A(b[11]), .B(a[11]), .C(n125), .D(n105), .Z(n114) );
  GTECH_NOT U141 ( .A(n126), .Z(n105) );
  GTECH_AOI21 U142 ( .A(n127), .B(n108), .C(n109), .Z(n125) );
  GTECH_AND2 U143 ( .A(a[10]), .B(b[10]), .Z(n109) );
  GTECH_AO21 U144 ( .A(b[9]), .B(a[9]), .C(n128), .Z(n127) );
  GTECH_AND3 U145 ( .A(a[8]), .B(n68), .C(b[8]), .Z(n128) );
  GTECH_NAND4 U146 ( .A(n70), .B(n126), .C(n108), .D(n68), .Z(n113) );
  GTECH_XOR2 U147 ( .A(a[9]), .B(b[9]), .Z(n68) );
  GTECH_XOR2 U148 ( .A(a[10]), .B(b[10]), .Z(n108) );
  GTECH_XOR2 U149 ( .A(a[11]), .B(b[11]), .Z(n126) );
  GTECH_XOR2 U150 ( .A(a[8]), .B(b[8]), .Z(n70) );
  GTECH_AOI222 U151 ( .A(a[7]), .B(b[7]), .C(n119), .D(n129), .E(n77), .F(n130), .Z(n117) );
  GTECH_AO21 U152 ( .A(n131), .B(n75), .C(n76), .Z(n130) );
  GTECH_AND2 U153 ( .A(a[6]), .B(b[6]), .Z(n76) );
  GTECH_OAI21 U154 ( .A(n78), .B(n79), .C(n132), .Z(n131) );
  GTECH_NAND3 U155 ( .A(b[4]), .B(n81), .C(a[4]), .Z(n132) );
  GTECH_OAI2N2 U156 ( .A(n133), .B(n85), .C(b[3]), .D(a[3]), .Z(n129) );
  GTECH_NOT U157 ( .A(n118), .Z(n85) );
  GTECH_XOR2 U158 ( .A(a[3]), .B(b[3]), .Z(n118) );
  GTECH_AOI21 U159 ( .A(n134), .B(n88), .C(n89), .Z(n133) );
  GTECH_AND2 U160 ( .A(a[2]), .B(b[2]), .Z(n89) );
  GTECH_XOR2 U161 ( .A(a[2]), .B(b[2]), .Z(n88) );
  GTECH_OAI21 U162 ( .A(n90), .B(n91), .C(n135), .Z(n134) );
  GTECH_NAND3 U163 ( .A(a[0]), .B(n93), .C(b[0]), .Z(n135) );
  GTECH_XOR2 U164 ( .A(n91), .B(n90), .Z(n93) );
  GTECH_NOT U165 ( .A(a[1]), .Z(n91) );
  GTECH_NOT U166 ( .A(b[1]), .Z(n90) );
  GTECH_AND4 U167 ( .A(n83), .B(n81), .C(n75), .D(n77), .Z(n119) );
  GTECH_XOR2 U168 ( .A(a[7]), .B(b[7]), .Z(n77) );
  GTECH_XOR2 U169 ( .A(a[6]), .B(b[6]), .Z(n75) );
  GTECH_XOR2 U170 ( .A(n79), .B(n78), .Z(n81) );
  GTECH_NOT U171 ( .A(b[5]), .Z(n78) );
  GTECH_NOT U172 ( .A(a[5]), .Z(n79) );
  GTECH_XOR2 U173 ( .A(a[4]), .B(b[4]), .Z(n83) );
endmodule

