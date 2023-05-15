
module carry_ahead_adder16 ( a, b, cin, cout, sum, Gm, Pm );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout, Gm, Pm;
  wire   n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137;

  GTECH_XOR2 U93 ( .A(n74), .B(n75), .Z(sum[9]) );
  GTECH_XOR2 U94 ( .A(n76), .B(n77), .Z(sum[8]) );
  GTECH_XOR2 U95 ( .A(n78), .B(n79), .Z(sum[7]) );
  GTECH_AO21 U96 ( .A(n80), .B(n81), .C(n82), .Z(n79) );
  GTECH_XOR2 U97 ( .A(n81), .B(n80), .Z(sum[6]) );
  GTECH_AO21 U98 ( .A(n83), .B(n84), .C(n85), .Z(n80) );
  GTECH_XOR2 U99 ( .A(n84), .B(n83), .Z(sum[5]) );
  GTECH_OAI2N2 U100 ( .A(n86), .B(n87), .C(a[4]), .D(b[4]), .Z(n83) );
  GTECH_XOR2 U101 ( .A(n87), .B(n86), .Z(sum[4]) );
  GTECH_NOT U102 ( .A(n88), .Z(n87) );
  GTECH_XOR2 U103 ( .A(n89), .B(n90), .Z(sum[3]) );
  GTECH_AO21 U104 ( .A(n91), .B(n92), .C(n93), .Z(n90) );
  GTECH_XOR2 U105 ( .A(n92), .B(n91), .Z(sum[2]) );
  GTECH_AO21 U106 ( .A(n94), .B(n95), .C(n96), .Z(n91) );
  GTECH_XOR2 U107 ( .A(n95), .B(n94), .Z(sum[1]) );
  GTECH_AO22 U108 ( .A(n97), .B(cin), .C(a[0]), .D(b[0]), .Z(n94) );
  GTECH_XOR2 U109 ( .A(n98), .B(n99), .Z(sum[15]) );
  GTECH_AO21 U110 ( .A(n100), .B(n101), .C(n102), .Z(n99) );
  GTECH_XOR2 U111 ( .A(n101), .B(n100), .Z(sum[14]) );
  GTECH_AO21 U112 ( .A(n103), .B(n104), .C(n105), .Z(n100) );
  GTECH_XOR2 U113 ( .A(n104), .B(n103), .Z(sum[13]) );
  GTECH_AO22 U114 ( .A(a[12]), .B(b[12]), .C(cout), .D(n106), .Z(n103) );
  GTECH_XOR2 U115 ( .A(n106), .B(cout), .Z(sum[12]) );
  GTECH_XOR2 U116 ( .A(n107), .B(n108), .Z(sum[11]) );
  GTECH_AO21 U117 ( .A(n109), .B(n110), .C(n111), .Z(n108) );
  GTECH_XOR2 U118 ( .A(n110), .B(n109), .Z(sum[10]) );
  GTECH_AO21 U119 ( .A(n75), .B(n74), .C(n112), .Z(n109) );
  GTECH_OAI2N2 U120 ( .A(n77), .B(n76), .C(a[8]), .D(b[8]), .Z(n75) );
  GTECH_NOT U121 ( .A(n113), .Z(n76) );
  GTECH_XOR2 U122 ( .A(cin), .B(n97), .Z(sum[0]) );
  GTECH_OAI21 U123 ( .A(n77), .B(n114), .C(n115), .Z(cout) );
  GTECH_OA21 U124 ( .A(n86), .B(n116), .C(n117), .Z(n77) );
  GTECH_OA21 U125 ( .A(n118), .B(n119), .C(n120), .Z(n86) );
  GTECH_NOT U126 ( .A(cin), .Z(n119) );
  GTECH_NOR3 U127 ( .A(n116), .B(n118), .C(n114), .Z(Pm) );
  GTECH_NAND5 U128 ( .A(n92), .B(n95), .C(n89), .D(n121), .E(n97), .Z(n118) );
  GTECH_XOR2 U129 ( .A(a[0]), .B(b[0]), .Z(n97) );
  GTECH_OAI21 U130 ( .A(n122), .B(n114), .C(n115), .Z(Gm) );
  GTECH_NOT U131 ( .A(n123), .Z(n115) );
  GTECH_AO21 U132 ( .A(b[15]), .B(a[15]), .C(n124), .Z(n123) );
  GTECH_OA21 U133 ( .A(n125), .B(n102), .C(n98), .Z(n124) );
  GTECH_AND2 U134 ( .A(a[14]), .B(b[14]), .Z(n102) );
  GTECH_OA21 U135 ( .A(n126), .B(n105), .C(n101), .Z(n125) );
  GTECH_AND2 U136 ( .A(a[13]), .B(b[13]), .Z(n105) );
  GTECH_AND3 U137 ( .A(a[12]), .B(n104), .C(b[12]), .Z(n126) );
  GTECH_NAND4 U138 ( .A(n106), .B(n98), .C(n101), .D(n104), .Z(n114) );
  GTECH_XOR2 U139 ( .A(a[13]), .B(b[13]), .Z(n104) );
  GTECH_XOR2 U140 ( .A(a[14]), .B(b[14]), .Z(n101) );
  GTECH_XOR2 U141 ( .A(a[15]), .B(b[15]), .Z(n98) );
  GTECH_XOR2 U142 ( .A(a[12]), .B(b[12]), .Z(n106) );
  GTECH_OA21 U143 ( .A(n120), .B(n116), .C(n117), .Z(n122) );
  GTECH_NOT U144 ( .A(n127), .Z(n117) );
  GTECH_AO21 U145 ( .A(b[11]), .B(a[11]), .C(n128), .Z(n127) );
  GTECH_OA21 U146 ( .A(n129), .B(n111), .C(n107), .Z(n128) );
  GTECH_AND2 U147 ( .A(a[10]), .B(b[10]), .Z(n111) );
  GTECH_OA21 U148 ( .A(n130), .B(n112), .C(n110), .Z(n129) );
  GTECH_AND2 U149 ( .A(a[9]), .B(b[9]), .Z(n112) );
  GTECH_AND3 U150 ( .A(a[8]), .B(n74), .C(b[8]), .Z(n130) );
  GTECH_NAND4 U151 ( .A(n113), .B(n107), .C(n110), .D(n74), .Z(n116) );
  GTECH_XOR2 U152 ( .A(a[9]), .B(b[9]), .Z(n74) );
  GTECH_XOR2 U153 ( .A(a[10]), .B(b[10]), .Z(n110) );
  GTECH_XOR2 U154 ( .A(a[11]), .B(b[11]), .Z(n107) );
  GTECH_XOR2 U155 ( .A(a[8]), .B(b[8]), .Z(n113) );
  GTECH_AOI222 U156 ( .A(a[7]), .B(b[7]), .C(n78), .D(n131), .E(n121), .F(n132), .Z(n120) );
  GTECH_AO21 U157 ( .A(b[3]), .B(a[3]), .C(n133), .Z(n132) );
  GTECH_OA21 U158 ( .A(n134), .B(n93), .C(n89), .Z(n133) );
  GTECH_XOR2 U159 ( .A(a[3]), .B(b[3]), .Z(n89) );
  GTECH_AND2 U160 ( .A(a[2]), .B(b[2]), .Z(n93) );
  GTECH_OA21 U161 ( .A(n135), .B(n96), .C(n92), .Z(n134) );
  GTECH_XOR2 U162 ( .A(a[2]), .B(b[2]), .Z(n92) );
  GTECH_AND2 U163 ( .A(b[1]), .B(a[1]), .Z(n96) );
  GTECH_AND3 U164 ( .A(a[0]), .B(n95), .C(b[0]), .Z(n135) );
  GTECH_XOR2 U165 ( .A(a[1]), .B(b[1]), .Z(n95) );
  GTECH_AND4 U166 ( .A(n88), .B(n78), .C(n81), .D(n84), .Z(n121) );
  GTECH_XOR2 U167 ( .A(a[4]), .B(b[4]), .Z(n88) );
  GTECH_OR_NOT U168 ( .A(n82), .B(n136), .Z(n131) );
  GTECH_OAI21 U169 ( .A(n137), .B(n85), .C(n81), .Z(n136) );
  GTECH_XOR2 U170 ( .A(a[6]), .B(b[6]), .Z(n81) );
  GTECH_AND2 U171 ( .A(b[5]), .B(a[5]), .Z(n85) );
  GTECH_AND3 U172 ( .A(a[4]), .B(n84), .C(b[4]), .Z(n137) );
  GTECH_XOR2 U173 ( .A(a[5]), .B(b[5]), .Z(n84) );
  GTECH_AND2 U174 ( .A(a[6]), .B(b[6]), .Z(n82) );
  GTECH_XOR2 U175 ( .A(a[7]), .B(b[7]), .Z(n78) );
endmodule

