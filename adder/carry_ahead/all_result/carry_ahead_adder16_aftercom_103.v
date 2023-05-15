
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

  GTECH_ADD_AB U89 ( .A(n70), .B(n71), .S(sum[9]) );
  GTECH_ADD_AB U90 ( .A(n72), .B(n73), .S(sum[8]) );
  GTECH_XNOR2 U91 ( .A(n74), .B(n75), .Z(sum[7]) );
  GTECH_OA21 U92 ( .A(n76), .B(n77), .C(n78), .Z(n74) );
  GTECH_ADD_AB U93 ( .A(n76), .B(n77), .S(sum[6]) );
  GTECH_OA21 U94 ( .A(n79), .B(n80), .C(n81), .Z(n76) );
  GTECH_ADD_AB U95 ( .A(n79), .B(n80), .S(sum[5]) );
  GTECH_OA21 U96 ( .A(n82), .B(n83), .C(n84), .Z(n79) );
  GTECH_ADD_AB U97 ( .A(n82), .B(n83), .S(sum[4]) );
  GTECH_XNOR2 U98 ( .A(n85), .B(n86), .Z(sum[3]) );
  GTECH_OA21 U99 ( .A(n87), .B(n88), .C(n89), .Z(n85) );
  GTECH_ADD_AB U100 ( .A(n87), .B(n88), .S(sum[2]) );
  GTECH_OA21 U101 ( .A(n90), .B(n91), .C(n92), .Z(n87) );
  GTECH_ADD_AB U102 ( .A(n90), .B(n91), .S(sum[1]) );
  GTECH_AND_NOT U103 ( .A(n93), .B(n94), .Z(n90) );
  GTECH_ADD_AB U104 ( .A(n95), .B(n96), .S(sum[15]) );
  GTECH_OA21 U105 ( .A(n97), .B(n98), .C(n99), .Z(n95) );
  GTECH_ADD_AB U106 ( .A(n97), .B(n98), .S(sum[14]) );
  GTECH_OA21 U107 ( .A(n100), .B(n101), .C(n102), .Z(n97) );
  GTECH_ADD_AB U108 ( .A(n100), .B(n101), .S(sum[13]) );
  GTECH_OA21 U109 ( .A(n103), .B(n104), .C(n105), .Z(n100) );
  GTECH_NOT U110 ( .A(cout), .Z(n103) );
  GTECH_XNOR2 U111 ( .A(n104), .B(cout), .Z(sum[12]) );
  GTECH_ADD_AB U112 ( .A(n106), .B(n107), .S(sum[11]) );
  GTECH_OA21 U113 ( .A(n108), .B(n109), .C(n110), .Z(n107) );
  GTECH_ADD_AB U114 ( .A(n108), .B(n109), .S(sum[10]) );
  GTECH_OA21 U115 ( .A(n70), .B(n71), .C(n111), .Z(n108) );
  GTECH_OA21 U116 ( .A(n72), .B(n73), .C(n112), .Z(n70) );
  GTECH_XNOR2 U117 ( .A(cin), .B(n113), .Z(sum[0]) );
  GTECH_OAI21 U118 ( .A(n72), .B(n114), .C(n115), .Z(cout) );
  GTECH_OA21 U119 ( .A(n82), .B(n116), .C(n117), .Z(n72) );
  GTECH_AND2 U120 ( .A(n118), .B(n119), .Z(n82) );
  GTECH_NAND5 U121 ( .A(n120), .B(n86), .C(n121), .D(n94), .E(n122), .Z(n118)
         );
  GTECH_AND2 U122 ( .A(cin), .B(n123), .Z(n94) );
  GTECH_NOT U123 ( .A(n113), .Z(n123) );
  GTECH_NOR4 U124 ( .A(n116), .B(n113), .C(n114), .D(n124), .Z(Pm) );
  GTECH_NAND4 U125 ( .A(n122), .B(n121), .C(n120), .D(n86), .Z(n124) );
  GTECH_NOT U126 ( .A(n91), .Z(n120) );
  GTECH_NOT U127 ( .A(n88), .Z(n121) );
  GTECH_OAI21 U128 ( .A(b[0]), .B(a[0]), .C(n93), .Z(n113) );
  GTECH_OAI21 U129 ( .A(n125), .B(n114), .C(n115), .Z(Gm) );
  GTECH_AOI2N2 U130 ( .A(b[15]), .B(a[15]), .C(n126), .D(n96), .Z(n115) );
  GTECH_OA21 U131 ( .A(n127), .B(n98), .C(n99), .Z(n126) );
  GTECH_OA21 U132 ( .A(n105), .B(n101), .C(n102), .Z(n127) );
  GTECH_OR4 U133 ( .A(n104), .B(n98), .C(n101), .D(n96), .Z(n114) );
  GTECH_XNOR2 U134 ( .A(b[15]), .B(a[15]), .Z(n96) );
  GTECH_OAI21 U135 ( .A(b[13]), .B(a[13]), .C(n102), .Z(n101) );
  GTECH_NAND2 U136 ( .A(a[13]), .B(b[13]), .Z(n102) );
  GTECH_OAI21 U137 ( .A(b[14]), .B(a[14]), .C(n99), .Z(n98) );
  GTECH_NAND2 U138 ( .A(a[14]), .B(b[14]), .Z(n99) );
  GTECH_OAI21 U139 ( .A(b[12]), .B(a[12]), .C(n105), .Z(n104) );
  GTECH_NAND2 U140 ( .A(a[12]), .B(b[12]), .Z(n105) );
  GTECH_OA21 U141 ( .A(n119), .B(n116), .C(n117), .Z(n125) );
  GTECH_OA21 U142 ( .A(n128), .B(n106), .C(n129), .Z(n117) );
  GTECH_OA21 U143 ( .A(n130), .B(n109), .C(n110), .Z(n128) );
  GTECH_OA21 U144 ( .A(n112), .B(n71), .C(n111), .Z(n130) );
  GTECH_OR4 U145 ( .A(n73), .B(n106), .C(n109), .D(n71), .Z(n116) );
  GTECH_OAI21 U146 ( .A(b[9]), .B(a[9]), .C(n111), .Z(n71) );
  GTECH_NAND2 U147 ( .A(a[9]), .B(b[9]), .Z(n111) );
  GTECH_OAI21 U148 ( .A(b[10]), .B(a[10]), .C(n110), .Z(n109) );
  GTECH_NAND2 U149 ( .A(a[10]), .B(b[10]), .Z(n110) );
  GTECH_OAI21 U150 ( .A(b[11]), .B(a[11]), .C(n129), .Z(n106) );
  GTECH_NAND2 U151 ( .A(a[11]), .B(b[11]), .Z(n129) );
  GTECH_OAI21 U152 ( .A(b[8]), .B(a[8]), .C(n112), .Z(n73) );
  GTECH_NAND2 U153 ( .A(a[8]), .B(b[8]), .Z(n112) );
  GTECH_AOI222 U154 ( .A(n122), .B(n131), .C(b[7]), .D(a[7]), .E(n75), .F(n132), .Z(n119) );
  GTECH_OAI21 U155 ( .A(n133), .B(n77), .C(n78), .Z(n132) );
  GTECH_OA21 U156 ( .A(n80), .B(n84), .C(n81), .Z(n133) );
  GTECH_AO22 U157 ( .A(n134), .B(n86), .C(b[3]), .D(a[3]), .Z(n131) );
  GTECH_ADD_AB U158 ( .A(b[3]), .B(a[3]), .S(n86) );
  GTECH_OAI21 U159 ( .A(n135), .B(n88), .C(n89), .Z(n134) );
  GTECH_OAI21 U160 ( .A(b[2]), .B(a[2]), .C(n89), .Z(n88) );
  GTECH_NAND2 U161 ( .A(a[2]), .B(b[2]), .Z(n89) );
  GTECH_OA21 U162 ( .A(n93), .B(n91), .C(n92), .Z(n135) );
  GTECH_OAI21 U163 ( .A(b[1]), .B(a[1]), .C(n92), .Z(n91) );
  GTECH_NAND2 U164 ( .A(a[1]), .B(b[1]), .Z(n92) );
  GTECH_NAND2 U165 ( .A(a[0]), .B(b[0]), .Z(n93) );
  GTECH_AND4 U166 ( .A(n136), .B(n137), .C(n138), .D(n75), .Z(n122) );
  GTECH_ADD_AB U167 ( .A(b[7]), .B(a[7]), .S(n75) );
  GTECH_NOT U168 ( .A(n80), .Z(n138) );
  GTECH_OAI21 U169 ( .A(b[5]), .B(a[5]), .C(n81), .Z(n80) );
  GTECH_NAND2 U170 ( .A(a[5]), .B(b[5]), .Z(n81) );
  GTECH_NOT U171 ( .A(n77), .Z(n137) );
  GTECH_OAI21 U172 ( .A(b[6]), .B(a[6]), .C(n78), .Z(n77) );
  GTECH_NAND2 U173 ( .A(a[6]), .B(b[6]), .Z(n78) );
  GTECH_NOT U174 ( .A(n83), .Z(n136) );
  GTECH_OAI21 U175 ( .A(b[4]), .B(a[4]), .C(n84), .Z(n83) );
  GTECH_NAND2 U176 ( .A(a[4]), .B(b[4]), .Z(n84) );
endmodule

