
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
  GTECH_XOR2 U90 ( .A(n73), .B(n74), .Z(sum[6]) );
  GTECH_AO22 U91 ( .A(b[5]), .B(a[5]), .C(n76), .D(n77), .Z(n73) );
  GTECH_XOR2 U92 ( .A(n77), .B(n76), .Z(sum[5]) );
  GTECH_AO22 U93 ( .A(n78), .B(n79), .C(b[4]), .D(a[4]), .Z(n76) );
  GTECH_XOR2 U94 ( .A(n79), .B(n78), .Z(sum[4]) );
  GTECH_NOT U95 ( .A(n80), .Z(n78) );
  GTECH_XOR2 U96 ( .A(n81), .B(n82), .Z(sum[3]) );
  GTECH_OA21 U97 ( .A(n83), .B(n84), .C(n85), .Z(n82) );
  GTECH_XNOR2 U98 ( .A(n83), .B(n86), .Z(sum[2]) );
  GTECH_AOI22 U99 ( .A(n87), .B(n88), .C(b[1]), .D(a[1]), .Z(n83) );
  GTECH_XOR2 U100 ( .A(n88), .B(n87), .Z(sum[1]) );
  GTECH_AO22 U101 ( .A(n89), .B(cin), .C(a[0]), .D(b[0]), .Z(n87) );
  GTECH_XOR2 U102 ( .A(n90), .B(n91), .Z(sum[15]) );
  GTECH_OA21 U103 ( .A(n92), .B(n93), .C(n94), .Z(n91) );
  GTECH_XOR2 U104 ( .A(n92), .B(n93), .Z(sum[14]) );
  GTECH_AOI2N2 U105 ( .A(b[13]), .B(a[13]), .C(n95), .D(n96), .Z(n92) );
  GTECH_XOR2 U106 ( .A(n96), .B(n95), .Z(sum[13]) );
  GTECH_OA21 U107 ( .A(n97), .B(n98), .C(n99), .Z(n95) );
  GTECH_XOR2 U108 ( .A(n98), .B(n97), .Z(sum[12]) );
  GTECH_XOR2 U109 ( .A(n100), .B(n101), .Z(sum[11]) );
  GTECH_AOI21 U110 ( .A(n102), .B(n103), .C(n104), .Z(n101) );
  GTECH_XOR2 U111 ( .A(n102), .B(n103), .Z(sum[10]) );
  GTECH_AO22 U112 ( .A(b[9]), .B(a[9]), .C(n68), .D(n67), .Z(n102) );
  GTECH_AO22 U113 ( .A(a[8]), .B(b[8]), .C(n70), .D(n69), .Z(n68) );
  GTECH_XOR2 U114 ( .A(cin), .B(n89), .Z(sum[0]) );
  GTECH_NOT U115 ( .A(n97), .Z(cout) );
  GTECH_OA21 U116 ( .A(n105), .B(n106), .C(n107), .Z(n97) );
  GTECH_NOT U117 ( .A(n70), .Z(n105) );
  GTECH_OAI21 U118 ( .A(n80), .B(n108), .C(n109), .Z(n70) );
  GTECH_OA21 U119 ( .A(n110), .B(n111), .C(n112), .Z(n80) );
  GTECH_NOT U120 ( .A(cin), .Z(n111) );
  GTECH_NOR3 U121 ( .A(n108), .B(n110), .C(n106), .Z(Pm) );
  GTECH_NAND5 U122 ( .A(n113), .B(n88), .C(n89), .D(n114), .E(n86), .Z(n110)
         );
  GTECH_NOT U123 ( .A(n84), .Z(n86) );
  GTECH_XOR2 U124 ( .A(a[0]), .B(b[0]), .Z(n89) );
  GTECH_NOT U125 ( .A(n81), .Z(n113) );
  GTECH_OAI21 U126 ( .A(n115), .B(n106), .C(n107), .Z(Gm) );
  GTECH_AOI2N2 U127 ( .A(b[15]), .B(a[15]), .C(n116), .D(n90), .Z(n107) );
  GTECH_OA21 U128 ( .A(n117), .B(n93), .C(n94), .Z(n116) );
  GTECH_AOI2N2 U129 ( .A(b[13]), .B(a[13]), .C(n96), .D(n99), .Z(n117) );
  GTECH_NAND2 U130 ( .A(b[12]), .B(a[12]), .Z(n99) );
  GTECH_OR4 U131 ( .A(n93), .B(n98), .C(n90), .D(n96), .Z(n106) );
  GTECH_XNOR2 U132 ( .A(a[13]), .B(b[13]), .Z(n96) );
  GTECH_XNOR2 U133 ( .A(a[15]), .B(b[15]), .Z(n90) );
  GTECH_XNOR2 U134 ( .A(a[12]), .B(b[12]), .Z(n98) );
  GTECH_OAI21 U135 ( .A(b[14]), .B(a[14]), .C(n94), .Z(n93) );
  GTECH_NAND2 U136 ( .A(b[14]), .B(a[14]), .Z(n94) );
  GTECH_OA21 U137 ( .A(n112), .B(n108), .C(n109), .Z(n115) );
  GTECH_AOI2N2 U138 ( .A(b[11]), .B(a[11]), .C(n118), .D(n100), .Z(n109) );
  GTECH_AOI21 U139 ( .A(n119), .B(n103), .C(n104), .Z(n118) );
  GTECH_NOT U140 ( .A(n120), .Z(n104) );
  GTECH_AO21 U141 ( .A(b[9]), .B(a[9]), .C(n121), .Z(n119) );
  GTECH_AND3 U142 ( .A(a[8]), .B(n67), .C(b[8]), .Z(n121) );
  GTECH_NAND4 U143 ( .A(n103), .B(n69), .C(n122), .D(n67), .Z(n108) );
  GTECH_XOR2 U144 ( .A(a[9]), .B(b[9]), .Z(n67) );
  GTECH_NOT U145 ( .A(n100), .Z(n122) );
  GTECH_XNOR2 U146 ( .A(a[11]), .B(b[11]), .Z(n100) );
  GTECH_XOR2 U147 ( .A(a[8]), .B(b[8]), .Z(n69) );
  GTECH_OA21 U148 ( .A(a[10]), .B(b[10]), .C(n120), .Z(n103) );
  GTECH_NAND2 U149 ( .A(a[10]), .B(b[10]), .Z(n120) );
  GTECH_AOI222 U150 ( .A(a[7]), .B(b[7]), .C(n114), .D(n123), .E(n71), .F(n124), .Z(n112) );
  GTECH_AO21 U151 ( .A(n125), .B(n74), .C(n75), .Z(n124) );
  GTECH_NOT U152 ( .A(n126), .Z(n75) );
  GTECH_AO21 U153 ( .A(b[5]), .B(a[5]), .C(n127), .Z(n125) );
  GTECH_AND3 U154 ( .A(b[4]), .B(n77), .C(a[4]), .Z(n127) );
  GTECH_OAI2N2 U155 ( .A(n128), .B(n81), .C(b[3]), .D(a[3]), .Z(n123) );
  GTECH_XNOR2 U156 ( .A(a[3]), .B(b[3]), .Z(n81) );
  GTECH_OA21 U157 ( .A(n129), .B(n84), .C(n85), .Z(n128) );
  GTECH_OAI21 U158 ( .A(a[2]), .B(b[2]), .C(n85), .Z(n84) );
  GTECH_NAND2 U159 ( .A(b[2]), .B(a[2]), .Z(n85) );
  GTECH_OA21 U160 ( .A(n130), .B(n131), .C(n132), .Z(n129) );
  GTECH_NAND3 U161 ( .A(a[0]), .B(n88), .C(b[0]), .Z(n132) );
  GTECH_XNOR2 U162 ( .A(a[1]), .B(n130), .Z(n88) );
  GTECH_NOT U163 ( .A(a[1]), .Z(n131) );
  GTECH_NOT U164 ( .A(b[1]), .Z(n130) );
  GTECH_AND4 U165 ( .A(n74), .B(n79), .C(n77), .D(n71), .Z(n114) );
  GTECH_XOR2 U166 ( .A(a[7]), .B(b[7]), .Z(n71) );
  GTECH_XOR2 U167 ( .A(a[5]), .B(b[5]), .Z(n77) );
  GTECH_XOR2 U168 ( .A(a[4]), .B(b[4]), .Z(n79) );
  GTECH_OA21 U169 ( .A(a[6]), .B(b[6]), .C(n126), .Z(n74) );
  GTECH_NAND2 U170 ( .A(a[6]), .B(b[6]), .Z(n126) );
endmodule

