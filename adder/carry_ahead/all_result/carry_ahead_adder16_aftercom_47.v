
module carry_ahead_adder16 ( a, b, cin, cout, sum, Gm, Pm );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout, Gm, Pm;
  wire   n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140;

  GTECH_XOR2 U90 ( .A(n71), .B(n72), .Z(sum[9]) );
  GTECH_XOR2 U91 ( .A(n73), .B(n74), .Z(sum[8]) );
  GTECH_NOT U92 ( .A(n75), .Z(sum[7]) );
  GTECH_XOR2 U93 ( .A(n76), .B(n77), .Z(n75) );
  GTECH_AOI21 U94 ( .A(n78), .B(n79), .C(n80), .Z(n77) );
  GTECH_XOR2 U95 ( .A(n79), .B(n78), .Z(sum[6]) );
  GTECH_AO22 U96 ( .A(b[5]), .B(a[5]), .C(n81), .D(n82), .Z(n78) );
  GTECH_XOR2 U97 ( .A(n82), .B(n81), .Z(sum[5]) );
  GTECH_AO22 U98 ( .A(b[4]), .B(a[4]), .C(n83), .D(n84), .Z(n81) );
  GTECH_XOR2 U99 ( .A(n84), .B(n83), .Z(sum[4]) );
  GTECH_XOR2 U100 ( .A(n85), .B(n86), .Z(sum[3]) );
  GTECH_AOI21 U101 ( .A(n87), .B(n88), .C(n89), .Z(n86) );
  GTECH_XOR2 U102 ( .A(n88), .B(n87), .Z(sum[2]) );
  GTECH_AO22 U103 ( .A(b[1]), .B(a[1]), .C(n90), .D(n91), .Z(n87) );
  GTECH_XOR2 U104 ( .A(n91), .B(n90), .Z(sum[1]) );
  GTECH_AO22 U105 ( .A(n92), .B(cin), .C(a[0]), .D(b[0]), .Z(n90) );
  GTECH_XOR2 U106 ( .A(n93), .B(n94), .Z(sum[15]) );
  GTECH_AOI21 U107 ( .A(n95), .B(n96), .C(n97), .Z(n94) );
  GTECH_XOR2 U108 ( .A(n96), .B(n95), .Z(sum[14]) );
  GTECH_AO22 U109 ( .A(b[13]), .B(a[13]), .C(n98), .D(n99), .Z(n95) );
  GTECH_XOR2 U110 ( .A(n99), .B(n98), .Z(sum[13]) );
  GTECH_AO22 U111 ( .A(a[12]), .B(b[12]), .C(cout), .D(n100), .Z(n98) );
  GTECH_XOR2 U112 ( .A(n100), .B(cout), .Z(sum[12]) );
  GTECH_XOR2 U113 ( .A(n101), .B(n102), .Z(sum[11]) );
  GTECH_AOI21 U114 ( .A(n103), .B(n104), .C(n105), .Z(n102) );
  GTECH_XOR2 U115 ( .A(n104), .B(n103), .Z(sum[10]) );
  GTECH_AO22 U116 ( .A(b[9]), .B(a[9]), .C(n72), .D(n71), .Z(n103) );
  GTECH_AO22 U117 ( .A(a[8]), .B(b[8]), .C(n74), .D(n73), .Z(n72) );
  GTECH_NOT U118 ( .A(n106), .Z(n74) );
  GTECH_XOR2 U119 ( .A(cin), .B(n92), .Z(sum[0]) );
  GTECH_OAI21 U120 ( .A(n106), .B(n107), .C(n108), .Z(cout) );
  GTECH_OA21 U121 ( .A(n109), .B(n110), .C(n111), .Z(n106) );
  GTECH_NOT U122 ( .A(n83), .Z(n109) );
  GTECH_OAI21 U123 ( .A(n112), .B(n113), .C(n114), .Z(n83) );
  GTECH_NOT U124 ( .A(cin), .Z(n113) );
  GTECH_NOR3 U125 ( .A(n110), .B(n112), .C(n107), .Z(Pm) );
  GTECH_NAND5 U126 ( .A(n88), .B(n91), .C(n115), .D(n116), .E(n92), .Z(n112)
         );
  GTECH_XOR2 U127 ( .A(a[0]), .B(b[0]), .Z(n92) );
  GTECH_OAI21 U128 ( .A(n117), .B(n107), .C(n108), .Z(Gm) );
  GTECH_AOI2N2 U129 ( .A(b[15]), .B(a[15]), .C(n118), .D(n93), .Z(n108) );
  GTECH_NOT U130 ( .A(n119), .Z(n93) );
  GTECH_AOI21 U131 ( .A(n120), .B(n96), .C(n97), .Z(n118) );
  GTECH_AND2 U132 ( .A(a[14]), .B(b[14]), .Z(n97) );
  GTECH_OAI21 U133 ( .A(n121), .B(n122), .C(n123), .Z(n120) );
  GTECH_NAND3 U134 ( .A(a[12]), .B(n99), .C(b[12]), .Z(n123) );
  GTECH_NOT U135 ( .A(a[13]), .Z(n122) );
  GTECH_NOT U136 ( .A(b[13]), .Z(n121) );
  GTECH_NAND4 U137 ( .A(n100), .B(n119), .C(n96), .D(n99), .Z(n107) );
  GTECH_XOR2 U138 ( .A(a[13]), .B(b[13]), .Z(n99) );
  GTECH_XOR2 U139 ( .A(a[14]), .B(b[14]), .Z(n96) );
  GTECH_XOR2 U140 ( .A(a[15]), .B(b[15]), .Z(n119) );
  GTECH_XOR2 U141 ( .A(a[12]), .B(b[12]), .Z(n100) );
  GTECH_OA21 U142 ( .A(n114), .B(n110), .C(n111), .Z(n117) );
  GTECH_AOI2N2 U143 ( .A(b[11]), .B(a[11]), .C(n124), .D(n101), .Z(n111) );
  GTECH_NOT U144 ( .A(n125), .Z(n101) );
  GTECH_AOI21 U145 ( .A(n126), .B(n104), .C(n105), .Z(n124) );
  GTECH_AND2 U146 ( .A(a[10]), .B(b[10]), .Z(n105) );
  GTECH_OAI21 U147 ( .A(n127), .B(n128), .C(n129), .Z(n126) );
  GTECH_NAND3 U148 ( .A(a[8]), .B(n71), .C(b[8]), .Z(n129) );
  GTECH_NOT U149 ( .A(a[9]), .Z(n128) );
  GTECH_NOT U150 ( .A(b[9]), .Z(n127) );
  GTECH_NAND4 U151 ( .A(n73), .B(n125), .C(n104), .D(n71), .Z(n110) );
  GTECH_XOR2 U152 ( .A(a[9]), .B(b[9]), .Z(n71) );
  GTECH_XOR2 U153 ( .A(a[10]), .B(b[10]), .Z(n104) );
  GTECH_XOR2 U154 ( .A(a[11]), .B(b[11]), .Z(n125) );
  GTECH_XOR2 U155 ( .A(a[8]), .B(b[8]), .Z(n73) );
  GTECH_AOI222 U156 ( .A(a[7]), .B(b[7]), .C(n116), .D(n130), .E(n76), .F(n131), .Z(n114) );
  GTECH_AO21 U157 ( .A(n132), .B(n79), .C(n80), .Z(n131) );
  GTECH_AND2 U158 ( .A(a[6]), .B(b[6]), .Z(n80) );
  GTECH_OAI21 U159 ( .A(n133), .B(n134), .C(n135), .Z(n132) );
  GTECH_NAND3 U160 ( .A(b[4]), .B(n82), .C(a[4]), .Z(n135) );
  GTECH_NOT U161 ( .A(a[5]), .Z(n134) );
  GTECH_NOT U162 ( .A(b[5]), .Z(n133) );
  GTECH_OAI2N2 U163 ( .A(n136), .B(n85), .C(b[3]), .D(a[3]), .Z(n130) );
  GTECH_NOT U164 ( .A(n115), .Z(n85) );
  GTECH_XOR2 U165 ( .A(a[3]), .B(b[3]), .Z(n115) );
  GTECH_AOI21 U166 ( .A(n137), .B(n88), .C(n89), .Z(n136) );
  GTECH_AND2 U167 ( .A(a[2]), .B(b[2]), .Z(n89) );
  GTECH_XOR2 U168 ( .A(a[2]), .B(b[2]), .Z(n88) );
  GTECH_OAI21 U169 ( .A(n138), .B(n139), .C(n140), .Z(n137) );
  GTECH_NAND3 U170 ( .A(a[0]), .B(n91), .C(b[0]), .Z(n140) );
  GTECH_XOR2 U171 ( .A(a[1]), .B(b[1]), .Z(n91) );
  GTECH_NOT U172 ( .A(a[1]), .Z(n139) );
  GTECH_NOT U173 ( .A(b[1]), .Z(n138) );
  GTECH_AND4 U174 ( .A(n84), .B(n82), .C(n79), .D(n76), .Z(n116) );
  GTECH_XOR2 U175 ( .A(a[7]), .B(b[7]), .Z(n76) );
  GTECH_XOR2 U176 ( .A(a[6]), .B(b[6]), .Z(n79) );
  GTECH_XOR2 U177 ( .A(a[5]), .B(b[5]), .Z(n82) );
  GTECH_XOR2 U178 ( .A(a[4]), .B(b[4]), .Z(n84) );
endmodule

