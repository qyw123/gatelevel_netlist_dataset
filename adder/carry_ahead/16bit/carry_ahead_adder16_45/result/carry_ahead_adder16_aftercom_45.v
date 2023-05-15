
module carry_ahead_adder16 ( a, b, cin, cout, sum, Gm, Pm );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout, Gm, Pm;
  wire   n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138;

  GTECH_XOR2 U89 ( .A(n70), .B(n71), .Z(sum[9]) );
  GTECH_XOR2 U90 ( .A(n72), .B(n73), .Z(sum[8]) );
  GTECH_NOT U91 ( .A(n74), .Z(sum[7]) );
  GTECH_XOR2 U92 ( .A(n75), .B(n76), .Z(n74) );
  GTECH_AOI21 U93 ( .A(n77), .B(n78), .C(n79), .Z(n76) );
  GTECH_XOR2 U94 ( .A(n78), .B(n77), .Z(sum[6]) );
  GTECH_AO22 U95 ( .A(b[5]), .B(a[5]), .C(n80), .D(n81), .Z(n77) );
  GTECH_XOR2 U96 ( .A(n81), .B(n80), .Z(sum[5]) );
  GTECH_AO22 U97 ( .A(b[4]), .B(a[4]), .C(n82), .D(n83), .Z(n80) );
  GTECH_XOR2 U98 ( .A(n83), .B(n82), .Z(sum[4]) );
  GTECH_XOR2 U99 ( .A(n84), .B(n85), .Z(sum[3]) );
  GTECH_AOI21 U100 ( .A(n86), .B(n87), .C(n88), .Z(n85) );
  GTECH_XOR2 U101 ( .A(n87), .B(n86), .Z(sum[2]) );
  GTECH_AO22 U102 ( .A(b[1]), .B(a[1]), .C(n89), .D(n90), .Z(n86) );
  GTECH_XOR2 U103 ( .A(n90), .B(n89), .Z(sum[1]) );
  GTECH_AO22 U104 ( .A(n91), .B(cin), .C(a[0]), .D(b[0]), .Z(n89) );
  GTECH_XOR2 U105 ( .A(n92), .B(n93), .Z(sum[15]) );
  GTECH_AOI21 U106 ( .A(n94), .B(n95), .C(n96), .Z(n93) );
  GTECH_XOR2 U107 ( .A(n95), .B(n94), .Z(sum[14]) );
  GTECH_AO22 U108 ( .A(b[13]), .B(a[13]), .C(n97), .D(n98), .Z(n94) );
  GTECH_XOR2 U109 ( .A(n98), .B(n97), .Z(sum[13]) );
  GTECH_AO22 U110 ( .A(a[12]), .B(b[12]), .C(cout), .D(n99), .Z(n97) );
  GTECH_XOR2 U111 ( .A(n99), .B(cout), .Z(sum[12]) );
  GTECH_XOR2 U112 ( .A(n100), .B(n101), .Z(sum[11]) );
  GTECH_AOI21 U113 ( .A(n102), .B(n103), .C(n104), .Z(n101) );
  GTECH_XOR2 U114 ( .A(n103), .B(n102), .Z(sum[10]) );
  GTECH_AO22 U115 ( .A(b[9]), .B(a[9]), .C(n71), .D(n70), .Z(n102) );
  GTECH_AO22 U116 ( .A(a[8]), .B(b[8]), .C(n73), .D(n72), .Z(n71) );
  GTECH_XOR2 U117 ( .A(cin), .B(n91), .Z(sum[0]) );
  GTECH_OAI21 U118 ( .A(n105), .B(n106), .C(n107), .Z(cout) );
  GTECH_NOT U119 ( .A(n73), .Z(n105) );
  GTECH_OAI21 U120 ( .A(n108), .B(n109), .C(n110), .Z(n73) );
  GTECH_NOT U121 ( .A(n82), .Z(n108) );
  GTECH_OAI21 U122 ( .A(n111), .B(n112), .C(n113), .Z(n82) );
  GTECH_NOT U123 ( .A(cin), .Z(n112) );
  GTECH_NOR3 U124 ( .A(n106), .B(n111), .C(n109), .Z(Pm) );
  GTECH_NAND5 U125 ( .A(n87), .B(n90), .C(n114), .D(n115), .E(n91), .Z(n111)
         );
  GTECH_XOR2 U126 ( .A(a[0]), .B(b[0]), .Z(n91) );
  GTECH_OAI21 U127 ( .A(n116), .B(n106), .C(n107), .Z(Gm) );
  GTECH_AOI2N2 U128 ( .A(b[15]), .B(a[15]), .C(n117), .D(n92), .Z(n107) );
  GTECH_NOT U129 ( .A(n118), .Z(n92) );
  GTECH_AOI21 U130 ( .A(n119), .B(n95), .C(n96), .Z(n117) );
  GTECH_AND2 U131 ( .A(a[14]), .B(b[14]), .Z(n96) );
  GTECH_OAI21 U132 ( .A(n120), .B(n121), .C(n122), .Z(n119) );
  GTECH_NAND3 U133 ( .A(a[12]), .B(n98), .C(b[12]), .Z(n122) );
  GTECH_NOT U134 ( .A(a[13]), .Z(n121) );
  GTECH_NOT U135 ( .A(b[13]), .Z(n120) );
  GTECH_NAND4 U136 ( .A(n99), .B(n118), .C(n95), .D(n98), .Z(n106) );
  GTECH_XOR2 U137 ( .A(a[13]), .B(b[13]), .Z(n98) );
  GTECH_XOR2 U138 ( .A(a[14]), .B(b[14]), .Z(n95) );
  GTECH_XOR2 U139 ( .A(a[15]), .B(b[15]), .Z(n118) );
  GTECH_XOR2 U140 ( .A(a[12]), .B(b[12]), .Z(n99) );
  GTECH_OA21 U141 ( .A(n113), .B(n109), .C(n110), .Z(n116) );
  GTECH_AOI2N2 U142 ( .A(b[11]), .B(a[11]), .C(n123), .D(n100), .Z(n110) );
  GTECH_NOT U143 ( .A(n124), .Z(n100) );
  GTECH_AOI21 U144 ( .A(n125), .B(n103), .C(n104), .Z(n123) );
  GTECH_AND2 U145 ( .A(a[10]), .B(b[10]), .Z(n104) );
  GTECH_AO21 U146 ( .A(b[9]), .B(a[9]), .C(n126), .Z(n125) );
  GTECH_NOT U147 ( .A(n127), .Z(n126) );
  GTECH_NAND3 U148 ( .A(a[8]), .B(n70), .C(b[8]), .Z(n127) );
  GTECH_NAND4 U149 ( .A(n72), .B(n124), .C(n103), .D(n70), .Z(n109) );
  GTECH_XOR2 U150 ( .A(a[9]), .B(b[9]), .Z(n70) );
  GTECH_XOR2 U151 ( .A(a[10]), .B(b[10]), .Z(n103) );
  GTECH_XOR2 U152 ( .A(a[11]), .B(b[11]), .Z(n124) );
  GTECH_XOR2 U153 ( .A(a[8]), .B(b[8]), .Z(n72) );
  GTECH_AOI222 U154 ( .A(a[7]), .B(b[7]), .C(n115), .D(n128), .E(n75), .F(n129), .Z(n113) );
  GTECH_AO21 U155 ( .A(n130), .B(n78), .C(n79), .Z(n129) );
  GTECH_AND2 U156 ( .A(a[6]), .B(b[6]), .Z(n79) );
  GTECH_OAI21 U157 ( .A(n131), .B(n132), .C(n133), .Z(n130) );
  GTECH_NAND3 U158 ( .A(b[4]), .B(n81), .C(a[4]), .Z(n133) );
  GTECH_NOT U159 ( .A(a[5]), .Z(n132) );
  GTECH_NOT U160 ( .A(b[5]), .Z(n131) );
  GTECH_OAI2N2 U161 ( .A(n134), .B(n84), .C(b[3]), .D(a[3]), .Z(n128) );
  GTECH_NOT U162 ( .A(n114), .Z(n84) );
  GTECH_XOR2 U163 ( .A(a[3]), .B(b[3]), .Z(n114) );
  GTECH_AOI21 U164 ( .A(n135), .B(n87), .C(n88), .Z(n134) );
  GTECH_AND2 U165 ( .A(a[2]), .B(b[2]), .Z(n88) );
  GTECH_XOR2 U166 ( .A(a[2]), .B(b[2]), .Z(n87) );
  GTECH_OAI21 U167 ( .A(n136), .B(n137), .C(n138), .Z(n135) );
  GTECH_NAND3 U168 ( .A(a[0]), .B(n90), .C(b[0]), .Z(n138) );
  GTECH_XOR2 U169 ( .A(a[1]), .B(b[1]), .Z(n90) );
  GTECH_NOT U170 ( .A(a[1]), .Z(n137) );
  GTECH_NOT U171 ( .A(b[1]), .Z(n136) );
  GTECH_AND4 U172 ( .A(n83), .B(n81), .C(n78), .D(n75), .Z(n115) );
  GTECH_XOR2 U173 ( .A(a[7]), .B(b[7]), .Z(n75) );
  GTECH_XOR2 U174 ( .A(a[6]), .B(b[6]), .Z(n78) );
  GTECH_XOR2 U175 ( .A(a[5]), .B(b[5]), .Z(n81) );
  GTECH_XOR2 U176 ( .A(a[4]), .B(b[4]), .Z(n83) );
endmodule

