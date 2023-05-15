
module carry_ahead_adder16 ( a, b, cin, cout, sum, Gm, Pm );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout, Gm, Pm;
  wire   n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132;

  GTECH_XOR2 U86 ( .A(n67), .B(n68), .Z(sum[9]) );
  GTECH_XOR2 U87 ( .A(n69), .B(n70), .Z(sum[8]) );
  GTECH_XNOR2 U88 ( .A(n71), .B(n72), .Z(sum[7]) );
  GTECH_AOI21 U89 ( .A(n73), .B(n74), .C(n75), .Z(n72) );
  GTECH_XOR2 U90 ( .A(n74), .B(n73), .Z(sum[6]) );
  GTECH_AO22 U91 ( .A(b[5]), .B(a[5]), .C(n76), .D(n77), .Z(n73) );
  GTECH_XOR2 U92 ( .A(n77), .B(n76), .Z(sum[5]) );
  GTECH_AO22 U93 ( .A(b[4]), .B(a[4]), .C(n78), .D(n79), .Z(n76) );
  GTECH_XOR2 U94 ( .A(n79), .B(n78), .Z(sum[4]) );
  GTECH_XNOR2 U95 ( .A(n80), .B(n81), .Z(sum[3]) );
  GTECH_AOI21 U96 ( .A(n82), .B(n83), .C(n84), .Z(n81) );
  GTECH_XOR2 U97 ( .A(n83), .B(n82), .Z(sum[2]) );
  GTECH_AO22 U98 ( .A(b[1]), .B(a[1]), .C(n85), .D(n86), .Z(n82) );
  GTECH_XOR2 U99 ( .A(n86), .B(n85), .Z(sum[1]) );
  GTECH_AO22 U100 ( .A(a[0]), .B(b[0]), .C(n87), .D(cin), .Z(n85) );
  GTECH_XOR2 U101 ( .A(n88), .B(n89), .Z(sum[15]) );
  GTECH_AOI21 U102 ( .A(n90), .B(n91), .C(n92), .Z(n89) );
  GTECH_NOT U103 ( .A(n93), .Z(n91) );
  GTECH_XNOR2 U104 ( .A(n93), .B(n90), .Z(sum[14]) );
  GTECH_OAI21 U105 ( .A(n94), .B(n95), .C(n96), .Z(n90) );
  GTECH_XOR2 U106 ( .A(n95), .B(n94), .Z(sum[13]) );
  GTECH_AOI2N2 U107 ( .A(a[12]), .B(b[12]), .C(n97), .D(n98), .Z(n94) );
  GTECH_XOR2 U108 ( .A(n98), .B(n97), .Z(sum[12]) );
  GTECH_XOR2 U109 ( .A(n99), .B(n100), .Z(sum[11]) );
  GTECH_OA21 U110 ( .A(n101), .B(n102), .C(n103), .Z(n100) );
  GTECH_XOR2 U111 ( .A(n102), .B(n101), .Z(sum[10]) );
  GTECH_OA21 U112 ( .A(n67), .B(n68), .C(n104), .Z(n101) );
  GTECH_OA21 U113 ( .A(n70), .B(n69), .C(n105), .Z(n67) );
  GTECH_XNOR2 U114 ( .A(n106), .B(n87), .Z(sum[0]) );
  GTECH_NOT U115 ( .A(n97), .Z(cout) );
  GTECH_OA21 U116 ( .A(n70), .B(n107), .C(n108), .Z(n97) );
  GTECH_OA21 U117 ( .A(n109), .B(n110), .C(n111), .Z(n70) );
  GTECH_NOT U118 ( .A(n78), .Z(n109) );
  GTECH_OAI21 U119 ( .A(n112), .B(n106), .C(n113), .Z(n78) );
  GTECH_NOT U120 ( .A(cin), .Z(n106) );
  GTECH_NOR3 U121 ( .A(n107), .B(n112), .C(n110), .Z(Pm) );
  GTECH_NAND5 U122 ( .A(n83), .B(n86), .C(n80), .D(n114), .E(n87), .Z(n112) );
  GTECH_XOR2 U123 ( .A(a[0]), .B(b[0]), .Z(n87) );
  GTECH_OAI21 U124 ( .A(n115), .B(n107), .C(n108), .Z(Gm) );
  GTECH_AOI21 U125 ( .A(b[15]), .B(a[15]), .C(n116), .Z(n108) );
  GTECH_OA21 U126 ( .A(n92), .B(n117), .C(n118), .Z(n116) );
  GTECH_NOT U127 ( .A(n88), .Z(n118) );
  GTECH_AOI21 U128 ( .A(n96), .B(n119), .C(n93), .Z(n117) );
  GTECH_NAND3 U129 ( .A(b[12]), .B(n120), .C(a[12]), .Z(n119) );
  GTECH_NAND2 U130 ( .A(b[13]), .B(a[13]), .Z(n96) );
  GTECH_NOT U131 ( .A(n121), .Z(n92) );
  GTECH_OR4 U132 ( .A(n93), .B(n98), .C(n88), .D(n95), .Z(n107) );
  GTECH_NOT U133 ( .A(n120), .Z(n95) );
  GTECH_XOR2 U134 ( .A(a[13]), .B(b[13]), .Z(n120) );
  GTECH_XNOR2 U135 ( .A(a[15]), .B(b[15]), .Z(n88) );
  GTECH_XNOR2 U136 ( .A(a[12]), .B(b[12]), .Z(n98) );
  GTECH_OAI21 U137 ( .A(b[14]), .B(a[14]), .C(n121), .Z(n93) );
  GTECH_NAND2 U138 ( .A(a[14]), .B(b[14]), .Z(n121) );
  GTECH_OA21 U139 ( .A(n113), .B(n110), .C(n111), .Z(n115) );
  GTECH_AOI2N2 U140 ( .A(b[11]), .B(a[11]), .C(n122), .D(n99), .Z(n111) );
  GTECH_OA21 U141 ( .A(n123), .B(n102), .C(n103), .Z(n122) );
  GTECH_OA21 U142 ( .A(n105), .B(n68), .C(n104), .Z(n123) );
  GTECH_OR4 U143 ( .A(n69), .B(n102), .C(n68), .D(n99), .Z(n110) );
  GTECH_XNOR2 U144 ( .A(a[11]), .B(b[11]), .Z(n99) );
  GTECH_OAI21 U145 ( .A(a[9]), .B(b[9]), .C(n104), .Z(n68) );
  GTECH_NAND2 U146 ( .A(a[9]), .B(b[9]), .Z(n104) );
  GTECH_OAI21 U147 ( .A(b[10]), .B(a[10]), .C(n103), .Z(n102) );
  GTECH_NAND2 U148 ( .A(b[10]), .B(a[10]), .Z(n103) );
  GTECH_OAI21 U149 ( .A(b[8]), .B(a[8]), .C(n105), .Z(n69) );
  GTECH_NAND2 U150 ( .A(a[8]), .B(b[8]), .Z(n105) );
  GTECH_AOI222 U151 ( .A(a[7]), .B(b[7]), .C(n114), .D(n124), .E(n71), .F(n125), .Z(n113) );
  GTECH_AO21 U152 ( .A(n126), .B(n74), .C(n75), .Z(n125) );
  GTECH_AND2 U153 ( .A(a[6]), .B(b[6]), .Z(n75) );
  GTECH_AO21 U154 ( .A(b[5]), .B(a[5]), .C(n127), .Z(n126) );
  GTECH_NOT U155 ( .A(n128), .Z(n127) );
  GTECH_NAND3 U156 ( .A(b[4]), .B(n77), .C(a[4]), .Z(n128) );
  GTECH_AO22 U157 ( .A(b[3]), .B(a[3]), .C(n129), .D(n80), .Z(n124) );
  GTECH_XOR2 U158 ( .A(a[3]), .B(b[3]), .Z(n80) );
  GTECH_AO21 U159 ( .A(n130), .B(n83), .C(n84), .Z(n129) );
  GTECH_AND2 U160 ( .A(a[2]), .B(b[2]), .Z(n84) );
  GTECH_XOR2 U161 ( .A(a[2]), .B(b[2]), .Z(n83) );
  GTECH_AO21 U162 ( .A(b[1]), .B(a[1]), .C(n131), .Z(n130) );
  GTECH_NOT U163 ( .A(n132), .Z(n131) );
  GTECH_NAND3 U164 ( .A(a[0]), .B(n86), .C(b[0]), .Z(n132) );
  GTECH_XOR2 U165 ( .A(a[1]), .B(b[1]), .Z(n86) );
  GTECH_AND4 U166 ( .A(n79), .B(n77), .C(n74), .D(n71), .Z(n114) );
  GTECH_XOR2 U167 ( .A(a[7]), .B(b[7]), .Z(n71) );
  GTECH_XOR2 U168 ( .A(a[6]), .B(b[6]), .Z(n74) );
  GTECH_XOR2 U169 ( .A(a[5]), .B(b[5]), .Z(n77) );
  GTECH_XOR2 U170 ( .A(a[4]), .B(b[4]), .Z(n79) );
endmodule

