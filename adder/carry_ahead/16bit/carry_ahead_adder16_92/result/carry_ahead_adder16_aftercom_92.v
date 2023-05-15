
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
         n133, n134;

  GTECH_XOR2 U90 ( .A(n71), .B(n72), .Z(sum[9]) );
  GTECH_XNOR2 U91 ( .A(n73), .B(n74), .Z(sum[8]) );
  GTECH_XNOR2 U92 ( .A(n75), .B(n76), .Z(sum[7]) );
  GTECH_AOI21 U93 ( .A(n77), .B(n78), .C(n79), .Z(n76) );
  GTECH_XOR2 U94 ( .A(n77), .B(n78), .Z(sum[6]) );
  GTECH_AO22 U95 ( .A(b[5]), .B(a[5]), .C(n80), .D(n81), .Z(n77) );
  GTECH_XOR2 U96 ( .A(n81), .B(n80), .Z(sum[5]) );
  GTECH_AO22 U97 ( .A(n82), .B(n83), .C(a[4]), .D(b[4]), .Z(n80) );
  GTECH_XNOR2 U98 ( .A(n83), .B(n84), .Z(sum[4]) );
  GTECH_XNOR2 U99 ( .A(n85), .B(n86), .Z(sum[3]) );
  GTECH_AOI21 U100 ( .A(n87), .B(n88), .C(n89), .Z(n86) );
  GTECH_XOR2 U101 ( .A(n87), .B(n88), .Z(sum[2]) );
  GTECH_AO22 U102 ( .A(b[1]), .B(a[1]), .C(n90), .D(n91), .Z(n87) );
  GTECH_XOR2 U103 ( .A(n91), .B(n90), .Z(sum[1]) );
  GTECH_AO22 U104 ( .A(n92), .B(cin), .C(a[0]), .D(b[0]), .Z(n90) );
  GTECH_XOR2 U105 ( .A(n93), .B(n94), .Z(sum[15]) );
  GTECH_OA21 U106 ( .A(n95), .B(n96), .C(n97), .Z(n94) );
  GTECH_XOR2 U107 ( .A(n95), .B(n96), .Z(sum[14]) );
  GTECH_AOI2N2 U108 ( .A(b[13]), .B(a[13]), .C(n98), .D(n99), .Z(n95) );
  GTECH_XOR2 U109 ( .A(n99), .B(n98), .Z(sum[13]) );
  GTECH_OA21 U110 ( .A(n100), .B(n101), .C(n102), .Z(n98) );
  GTECH_NOT U111 ( .A(cout), .Z(n100) );
  GTECH_XNOR2 U112 ( .A(n101), .B(cout), .Z(sum[12]) );
  GTECH_XNOR2 U113 ( .A(n103), .B(n104), .Z(sum[11]) );
  GTECH_AOI21 U114 ( .A(n105), .B(n106), .C(n107), .Z(n104) );
  GTECH_XOR2 U115 ( .A(n105), .B(n106), .Z(sum[10]) );
  GTECH_AO22 U116 ( .A(b[9]), .B(a[9]), .C(n72), .D(n71), .Z(n105) );
  GTECH_AO22 U117 ( .A(a[8]), .B(b[8]), .C(n108), .D(n73), .Z(n72) );
  GTECH_NOT U118 ( .A(n74), .Z(n108) );
  GTECH_XOR2 U119 ( .A(cin), .B(n92), .Z(sum[0]) );
  GTECH_OAI21 U120 ( .A(n74), .B(n109), .C(n110), .Z(cout) );
  GTECH_OA21 U121 ( .A(n84), .B(n111), .C(n112), .Z(n74) );
  GTECH_NOT U122 ( .A(n82), .Z(n84) );
  GTECH_OAI21 U123 ( .A(n113), .B(n114), .C(n115), .Z(n82) );
  GTECH_NOT U124 ( .A(cin), .Z(n114) );
  GTECH_NOR3 U125 ( .A(n111), .B(n113), .C(n109), .Z(Pm) );
  GTECH_NAND5 U126 ( .A(n85), .B(n91), .C(n92), .D(n116), .E(n88), .Z(n113) );
  GTECH_XOR2 U127 ( .A(a[0]), .B(b[0]), .Z(n92) );
  GTECH_OAI21 U128 ( .A(n117), .B(n109), .C(n110), .Z(Gm) );
  GTECH_AOI2N2 U129 ( .A(b[15]), .B(a[15]), .C(n118), .D(n93), .Z(n110) );
  GTECH_OA21 U130 ( .A(n119), .B(n96), .C(n97), .Z(n118) );
  GTECH_AOI2N2 U131 ( .A(b[13]), .B(a[13]), .C(n99), .D(n102), .Z(n119) );
  GTECH_OR4 U132 ( .A(n101), .B(n96), .C(n93), .D(n99), .Z(n109) );
  GTECH_XNOR2 U133 ( .A(a[13]), .B(b[13]), .Z(n99) );
  GTECH_XNOR2 U134 ( .A(a[15]), .B(b[15]), .Z(n93) );
  GTECH_OAI21 U135 ( .A(b[14]), .B(a[14]), .C(n97), .Z(n96) );
  GTECH_NAND2 U136 ( .A(b[14]), .B(a[14]), .Z(n97) );
  GTECH_OAI21 U137 ( .A(b[12]), .B(a[12]), .C(n102), .Z(n101) );
  GTECH_NAND2 U138 ( .A(a[12]), .B(b[12]), .Z(n102) );
  GTECH_OA21 U139 ( .A(n115), .B(n111), .C(n112), .Z(n117) );
  GTECH_AOI2N2 U140 ( .A(b[11]), .B(a[11]), .C(n120), .D(n121), .Z(n112) );
  GTECH_NOT U141 ( .A(n103), .Z(n121) );
  GTECH_AOI21 U142 ( .A(n122), .B(n106), .C(n107), .Z(n120) );
  GTECH_AO21 U143 ( .A(b[9]), .B(a[9]), .C(n123), .Z(n122) );
  GTECH_AND3 U144 ( .A(a[8]), .B(n71), .C(b[8]), .Z(n123) );
  GTECH_NAND4 U145 ( .A(n106), .B(n73), .C(n103), .D(n71), .Z(n111) );
  GTECH_XOR2 U146 ( .A(a[9]), .B(b[9]), .Z(n71) );
  GTECH_XOR2 U147 ( .A(a[11]), .B(b[11]), .Z(n103) );
  GTECH_XOR2 U148 ( .A(a[8]), .B(b[8]), .Z(n73) );
  GTECH_OA21 U149 ( .A(a[10]), .B(b[10]), .C(n124), .Z(n106) );
  GTECH_NOT U150 ( .A(n107), .Z(n124) );
  GTECH_AND2 U151 ( .A(a[10]), .B(b[10]), .Z(n107) );
  GTECH_AOI222 U152 ( .A(n116), .B(n125), .C(b[7]), .D(a[7]), .E(n75), .F(n126), .Z(n115) );
  GTECH_AO21 U153 ( .A(n127), .B(n78), .C(n79), .Z(n126) );
  GTECH_AO21 U154 ( .A(b[5]), .B(a[5]), .C(n128), .Z(n127) );
  GTECH_AND3 U155 ( .A(a[4]), .B(n81), .C(b[4]), .Z(n128) );
  GTECH_OAI2N2 U156 ( .A(n129), .B(n130), .C(b[3]), .D(a[3]), .Z(n125) );
  GTECH_NOT U157 ( .A(n85), .Z(n130) );
  GTECH_XOR2 U158 ( .A(a[3]), .B(b[3]), .Z(n85) );
  GTECH_AOI21 U159 ( .A(n131), .B(n88), .C(n89), .Z(n129) );
  GTECH_OA21 U160 ( .A(a[2]), .B(b[2]), .C(n132), .Z(n88) );
  GTECH_NOT U161 ( .A(n89), .Z(n132) );
  GTECH_AND2 U162 ( .A(a[2]), .B(b[2]), .Z(n89) );
  GTECH_AO21 U163 ( .A(b[1]), .B(a[1]), .C(n133), .Z(n131) );
  GTECH_AND3 U164 ( .A(a[0]), .B(n91), .C(b[0]), .Z(n133) );
  GTECH_XOR2 U165 ( .A(a[1]), .B(b[1]), .Z(n91) );
  GTECH_AND4 U166 ( .A(n78), .B(n83), .C(n81), .D(n75), .Z(n116) );
  GTECH_XOR2 U167 ( .A(a[7]), .B(b[7]), .Z(n75) );
  GTECH_XOR2 U168 ( .A(a[5]), .B(b[5]), .Z(n81) );
  GTECH_XOR2 U169 ( .A(a[4]), .B(b[4]), .Z(n83) );
  GTECH_OA21 U170 ( .A(a[6]), .B(b[6]), .C(n134), .Z(n78) );
  GTECH_NOT U171 ( .A(n79), .Z(n134) );
  GTECH_AND2 U172 ( .A(a[6]), .B(b[6]), .Z(n79) );
endmodule

