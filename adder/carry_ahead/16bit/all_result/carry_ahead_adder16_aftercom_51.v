
module carry_ahead_adder16 ( a, b, cin, cout, sum, Gm, Pm );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout, Gm, Pm;
  wire   n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140;

  GTECH_XOR2 U91 ( .A(n72), .B(n73), .Z(sum[9]) );
  GTECH_XOR2 U92 ( .A(n74), .B(n75), .Z(sum[8]) );
  GTECH_XOR2 U93 ( .A(n76), .B(n77), .Z(sum[7]) );
  GTECH_AOI21 U94 ( .A(n78), .B(n79), .C(n80), .Z(n77) );
  GTECH_XOR2 U95 ( .A(n79), .B(n78), .Z(sum[6]) );
  GTECH_AO21 U96 ( .A(n81), .B(n82), .C(n83), .Z(n78) );
  GTECH_XOR2 U97 ( .A(n82), .B(n81), .Z(sum[5]) );
  GTECH_OAI21 U98 ( .A(n84), .B(n85), .C(n86), .Z(n81) );
  GTECH_XOR2 U99 ( .A(n85), .B(n84), .Z(sum[4]) );
  GTECH_NOT U100 ( .A(n87), .Z(n85) );
  GTECH_XOR2 U101 ( .A(n88), .B(n89), .Z(sum[3]) );
  GTECH_AOI21 U102 ( .A(n90), .B(n91), .C(n92), .Z(n89) );
  GTECH_XOR2 U103 ( .A(n91), .B(n90), .Z(sum[2]) );
  GTECH_OAI2N2 U104 ( .A(n93), .B(n94), .C(n95), .D(n96), .Z(n90) );
  GTECH_XOR2 U105 ( .A(n96), .B(n95), .Z(sum[1]) );
  GTECH_AO22 U106 ( .A(a[0]), .B(b[0]), .C(n97), .D(cin), .Z(n95) );
  GTECH_XOR2 U107 ( .A(n98), .B(n99), .Z(sum[15]) );
  GTECH_AOI21 U108 ( .A(n100), .B(n101), .C(n102), .Z(n99) );
  GTECH_XOR2 U109 ( .A(n101), .B(n100), .Z(sum[14]) );
  GTECH_OAI2N2 U110 ( .A(n103), .B(n104), .C(n105), .D(n106), .Z(n100) );
  GTECH_XOR2 U111 ( .A(n106), .B(n105), .Z(sum[13]) );
  GTECH_AO22 U112 ( .A(a[12]), .B(b[12]), .C(cout), .D(n107), .Z(n105) );
  GTECH_XOR2 U113 ( .A(n107), .B(cout), .Z(sum[12]) );
  GTECH_XOR2 U114 ( .A(n108), .B(n109), .Z(sum[11]) );
  GTECH_AOI21 U115 ( .A(n110), .B(n111), .C(n112), .Z(n109) );
  GTECH_XOR2 U116 ( .A(n111), .B(n110), .Z(sum[10]) );
  GTECH_AO22 U117 ( .A(b[9]), .B(a[9]), .C(n73), .D(n72), .Z(n110) );
  GTECH_AO22 U118 ( .A(a[8]), .B(b[8]), .C(n75), .D(n74), .Z(n73) );
  GTECH_NOT U119 ( .A(n113), .Z(n75) );
  GTECH_XOR2 U120 ( .A(cin), .B(n97), .Z(sum[0]) );
  GTECH_OAI21 U121 ( .A(n113), .B(n114), .C(n115), .Z(cout) );
  GTECH_OA21 U122 ( .A(n84), .B(n116), .C(n117), .Z(n113) );
  GTECH_OA21 U123 ( .A(n118), .B(n119), .C(n120), .Z(n84) );
  GTECH_NOT U124 ( .A(cin), .Z(n119) );
  GTECH_NOR3 U125 ( .A(n116), .B(n118), .C(n114), .Z(Pm) );
  GTECH_NAND5 U126 ( .A(n91), .B(n96), .C(n121), .D(n122), .E(n97), .Z(n118)
         );
  GTECH_XOR2 U127 ( .A(a[0]), .B(b[0]), .Z(n97) );
  GTECH_OAI21 U128 ( .A(n123), .B(n114), .C(n115), .Z(Gm) );
  GTECH_AOI2N2 U129 ( .A(b[15]), .B(a[15]), .C(n124), .D(n98), .Z(n115) );
  GTECH_NOT U130 ( .A(n125), .Z(n98) );
  GTECH_AOI21 U131 ( .A(n126), .B(n101), .C(n102), .Z(n124) );
  GTECH_AND2 U132 ( .A(a[14]), .B(b[14]), .Z(n102) );
  GTECH_OAI21 U133 ( .A(n103), .B(n104), .C(n127), .Z(n126) );
  GTECH_NAND3 U134 ( .A(a[12]), .B(n106), .C(b[12]), .Z(n127) );
  GTECH_NAND4 U135 ( .A(n107), .B(n125), .C(n101), .D(n106), .Z(n114) );
  GTECH_XOR2 U136 ( .A(n104), .B(n103), .Z(n106) );
  GTECH_NOT U137 ( .A(b[13]), .Z(n103) );
  GTECH_NOT U138 ( .A(a[13]), .Z(n104) );
  GTECH_XOR2 U139 ( .A(a[14]), .B(b[14]), .Z(n101) );
  GTECH_XOR2 U140 ( .A(a[15]), .B(b[15]), .Z(n125) );
  GTECH_XOR2 U141 ( .A(a[12]), .B(b[12]), .Z(n107) );
  GTECH_OA21 U142 ( .A(n120), .B(n116), .C(n117), .Z(n123) );
  GTECH_AOI2N2 U143 ( .A(b[11]), .B(a[11]), .C(n128), .D(n108), .Z(n117) );
  GTECH_NOT U144 ( .A(n129), .Z(n108) );
  GTECH_AOI21 U145 ( .A(n130), .B(n111), .C(n112), .Z(n128) );
  GTECH_AND2 U146 ( .A(a[10]), .B(b[10]), .Z(n112) );
  GTECH_AO21 U147 ( .A(b[9]), .B(a[9]), .C(n131), .Z(n130) );
  GTECH_AND3 U148 ( .A(a[8]), .B(n72), .C(b[8]), .Z(n131) );
  GTECH_NAND4 U149 ( .A(n74), .B(n129), .C(n111), .D(n72), .Z(n116) );
  GTECH_XOR2 U150 ( .A(a[9]), .B(b[9]), .Z(n72) );
  GTECH_XOR2 U151 ( .A(a[10]), .B(b[10]), .Z(n111) );
  GTECH_XOR2 U152 ( .A(a[11]), .B(b[11]), .Z(n129) );
  GTECH_XOR2 U153 ( .A(a[8]), .B(b[8]), .Z(n74) );
  GTECH_AOI21 U154 ( .A(b[7]), .B(a[7]), .C(n132), .Z(n120) );
  GTECH_OAI2N2 U155 ( .A(n133), .B(n76), .C(n134), .D(n122), .Z(n132) );
  GTECH_AND4 U156 ( .A(n87), .B(n79), .C(n82), .D(n135), .Z(n122) );
  GTECH_OA21 U157 ( .A(b[4]), .B(a[4]), .C(n86), .Z(n87) );
  GTECH_OAI2N2 U158 ( .A(n136), .B(n88), .C(b[3]), .D(a[3]), .Z(n134) );
  GTECH_NOT U159 ( .A(n121), .Z(n88) );
  GTECH_XOR2 U160 ( .A(a[3]), .B(b[3]), .Z(n121) );
  GTECH_AOI21 U161 ( .A(n137), .B(n91), .C(n92), .Z(n136) );
  GTECH_AND2 U162 ( .A(a[2]), .B(b[2]), .Z(n92) );
  GTECH_XOR2 U163 ( .A(a[2]), .B(b[2]), .Z(n91) );
  GTECH_OAI21 U164 ( .A(n93), .B(n94), .C(n138), .Z(n137) );
  GTECH_NAND3 U165 ( .A(a[0]), .B(n96), .C(b[0]), .Z(n138) );
  GTECH_XOR2 U166 ( .A(n94), .B(n93), .Z(n96) );
  GTECH_NOT U167 ( .A(a[1]), .Z(n94) );
  GTECH_NOT U168 ( .A(b[1]), .Z(n93) );
  GTECH_NOT U169 ( .A(n135), .Z(n76) );
  GTECH_XOR2 U170 ( .A(a[7]), .B(b[7]), .Z(n135) );
  GTECH_AOI21 U171 ( .A(n139), .B(n79), .C(n80), .Z(n133) );
  GTECH_AND2 U172 ( .A(a[6]), .B(b[6]), .Z(n80) );
  GTECH_XOR2 U173 ( .A(a[6]), .B(b[6]), .Z(n79) );
  GTECH_AO21 U174 ( .A(n82), .B(n140), .C(n83), .Z(n139) );
  GTECH_AND2 U175 ( .A(a[5]), .B(b[5]), .Z(n83) );
  GTECH_NOT U176 ( .A(n86), .Z(n140) );
  GTECH_NAND2 U177 ( .A(a[4]), .B(b[4]), .Z(n86) );
  GTECH_XOR2 U178 ( .A(a[5]), .B(b[5]), .Z(n82) );
endmodule

