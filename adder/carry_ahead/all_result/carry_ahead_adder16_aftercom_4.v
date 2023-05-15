
module carry_ahead_adder16 ( a, b, cin, cout, sum, Gm, Pm );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout, Gm, Pm;
  wire   n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136;

  GTECH_XOR2 U88 ( .A(n69), .B(n70), .Z(sum[9]) );
  GTECH_XOR2 U89 ( .A(n71), .B(n72), .Z(sum[8]) );
  GTECH_XOR2 U90 ( .A(n73), .B(n74), .Z(sum[7]) );
  GTECH_AOI21 U91 ( .A(n75), .B(n76), .C(n77), .Z(n74) );
  GTECH_NOT U92 ( .A(n78), .Z(n73) );
  GTECH_XOR2 U93 ( .A(n76), .B(n75), .Z(sum[6]) );
  GTECH_OAI2N2 U94 ( .A(n79), .B(n80), .C(n81), .D(n82), .Z(n75) );
  GTECH_XOR2 U95 ( .A(n82), .B(n81), .Z(sum[5]) );
  GTECH_AO22 U96 ( .A(a[4]), .B(b[4]), .C(n83), .D(n84), .Z(n81) );
  GTECH_XOR2 U97 ( .A(n84), .B(n83), .Z(sum[4]) );
  GTECH_NOT U98 ( .A(n85), .Z(n83) );
  GTECH_XOR2 U99 ( .A(n86), .B(n87), .Z(sum[3]) );
  GTECH_AOI21 U100 ( .A(n88), .B(n89), .C(n90), .Z(n87) );
  GTECH_XOR2 U101 ( .A(n89), .B(n88), .Z(sum[2]) );
  GTECH_OAI2N2 U102 ( .A(n91), .B(n92), .C(n93), .D(n94), .Z(n88) );
  GTECH_XOR2 U103 ( .A(n94), .B(n93), .Z(sum[1]) );
  GTECH_AO22 U104 ( .A(n95), .B(cin), .C(a[0]), .D(b[0]), .Z(n93) );
  GTECH_XOR2 U105 ( .A(n96), .B(n97), .Z(sum[15]) );
  GTECH_AOI21 U106 ( .A(n98), .B(n99), .C(n100), .Z(n97) );
  GTECH_XOR2 U107 ( .A(n99), .B(n98), .Z(sum[14]) );
  GTECH_OAI2N2 U108 ( .A(n101), .B(n102), .C(n103), .D(n104), .Z(n98) );
  GTECH_XOR2 U109 ( .A(n104), .B(n103), .Z(sum[13]) );
  GTECH_AO22 U110 ( .A(a[12]), .B(b[12]), .C(cout), .D(n105), .Z(n103) );
  GTECH_XOR2 U111 ( .A(n105), .B(cout), .Z(sum[12]) );
  GTECH_XOR2 U112 ( .A(n106), .B(n107), .Z(sum[11]) );
  GTECH_AOI21 U113 ( .A(n108), .B(n109), .C(n110), .Z(n107) );
  GTECH_XOR2 U114 ( .A(n109), .B(n108), .Z(sum[10]) );
  GTECH_AO22 U115 ( .A(b[9]), .B(a[9]), .C(n70), .D(n69), .Z(n108) );
  GTECH_AO22 U116 ( .A(a[8]), .B(b[8]), .C(n72), .D(n71), .Z(n70) );
  GTECH_NOT U117 ( .A(n111), .Z(n72) );
  GTECH_XOR2 U118 ( .A(cin), .B(n95), .Z(sum[0]) );
  GTECH_OAI21 U119 ( .A(n111), .B(n112), .C(n113), .Z(cout) );
  GTECH_OA21 U120 ( .A(n85), .B(n114), .C(n115), .Z(n111) );
  GTECH_OA21 U121 ( .A(n116), .B(n117), .C(n118), .Z(n85) );
  GTECH_NOT U122 ( .A(cin), .Z(n117) );
  GTECH_NOR3 U123 ( .A(n114), .B(n116), .C(n112), .Z(Pm) );
  GTECH_NAND5 U124 ( .A(n89), .B(n94), .C(n119), .D(n120), .E(n95), .Z(n116)
         );
  GTECH_XOR2 U125 ( .A(a[0]), .B(b[0]), .Z(n95) );
  GTECH_OAI21 U126 ( .A(n121), .B(n112), .C(n113), .Z(Gm) );
  GTECH_AOI2N2 U127 ( .A(b[15]), .B(a[15]), .C(n122), .D(n96), .Z(n113) );
  GTECH_NOT U128 ( .A(n123), .Z(n96) );
  GTECH_AOI21 U129 ( .A(n124), .B(n99), .C(n100), .Z(n122) );
  GTECH_AND2 U130 ( .A(a[14]), .B(b[14]), .Z(n100) );
  GTECH_OAI21 U131 ( .A(n101), .B(n102), .C(n125), .Z(n124) );
  GTECH_NAND3 U132 ( .A(a[12]), .B(n104), .C(b[12]), .Z(n125) );
  GTECH_NAND4 U133 ( .A(n105), .B(n123), .C(n99), .D(n104), .Z(n112) );
  GTECH_XOR2 U134 ( .A(n102), .B(n101), .Z(n104) );
  GTECH_NOT U135 ( .A(b[13]), .Z(n101) );
  GTECH_NOT U136 ( .A(a[13]), .Z(n102) );
  GTECH_XOR2 U137 ( .A(a[14]), .B(b[14]), .Z(n99) );
  GTECH_XOR2 U138 ( .A(a[15]), .B(b[15]), .Z(n123) );
  GTECH_XOR2 U139 ( .A(a[12]), .B(b[12]), .Z(n105) );
  GTECH_OA21 U140 ( .A(n118), .B(n114), .C(n115), .Z(n121) );
  GTECH_AOI2N2 U141 ( .A(b[11]), .B(a[11]), .C(n126), .D(n106), .Z(n115) );
  GTECH_NOT U142 ( .A(n127), .Z(n106) );
  GTECH_AOI21 U143 ( .A(n128), .B(n109), .C(n110), .Z(n126) );
  GTECH_AND2 U144 ( .A(a[10]), .B(b[10]), .Z(n110) );
  GTECH_AO21 U145 ( .A(b[9]), .B(a[9]), .C(n129), .Z(n128) );
  GTECH_AND3 U146 ( .A(a[8]), .B(n69), .C(b[8]), .Z(n129) );
  GTECH_NAND4 U147 ( .A(n71), .B(n127), .C(n109), .D(n69), .Z(n114) );
  GTECH_XOR2 U148 ( .A(a[9]), .B(b[9]), .Z(n69) );
  GTECH_XOR2 U149 ( .A(a[10]), .B(b[10]), .Z(n109) );
  GTECH_XOR2 U150 ( .A(a[11]), .B(b[11]), .Z(n127) );
  GTECH_XOR2 U151 ( .A(a[8]), .B(b[8]), .Z(n71) );
  GTECH_AOI222 U152 ( .A(n120), .B(n130), .C(b[7]), .D(a[7]), .E(n78), .F(n131), .Z(n118) );
  GTECH_AO21 U153 ( .A(n132), .B(n76), .C(n77), .Z(n131) );
  GTECH_AND2 U154 ( .A(a[6]), .B(b[6]), .Z(n77) );
  GTECH_OAI21 U155 ( .A(n79), .B(n80), .C(n133), .Z(n132) );
  GTECH_NAND3 U156 ( .A(a[4]), .B(n82), .C(b[4]), .Z(n133) );
  GTECH_OAI2N2 U157 ( .A(n134), .B(n86), .C(b[3]), .D(a[3]), .Z(n130) );
  GTECH_NOT U158 ( .A(n119), .Z(n86) );
  GTECH_XOR2 U159 ( .A(a[3]), .B(b[3]), .Z(n119) );
  GTECH_AOI21 U160 ( .A(n135), .B(n89), .C(n90), .Z(n134) );
  GTECH_AND2 U161 ( .A(a[2]), .B(b[2]), .Z(n90) );
  GTECH_XOR2 U162 ( .A(a[2]), .B(b[2]), .Z(n89) );
  GTECH_OAI21 U163 ( .A(n91), .B(n92), .C(n136), .Z(n135) );
  GTECH_NAND3 U164 ( .A(a[0]), .B(n94), .C(b[0]), .Z(n136) );
  GTECH_XOR2 U165 ( .A(n92), .B(n91), .Z(n94) );
  GTECH_NOT U166 ( .A(a[1]), .Z(n92) );
  GTECH_NOT U167 ( .A(b[1]), .Z(n91) );
  GTECH_AND4 U168 ( .A(n84), .B(n82), .C(n76), .D(n78), .Z(n120) );
  GTECH_XOR2 U169 ( .A(a[7]), .B(b[7]), .Z(n78) );
  GTECH_XOR2 U170 ( .A(a[6]), .B(b[6]), .Z(n76) );
  GTECH_XOR2 U171 ( .A(n80), .B(n79), .Z(n82) );
  GTECH_NOT U172 ( .A(b[5]), .Z(n79) );
  GTECH_NOT U173 ( .A(a[5]), .Z(n80) );
  GTECH_XOR2 U174 ( .A(a[4]), .B(b[4]), .Z(n84) );
endmodule

