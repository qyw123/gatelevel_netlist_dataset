
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
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132;

  GTECH_XOR2 U90 ( .A(n71), .B(n72), .Z(sum[9]) );
  GTECH_XOR2 U91 ( .A(n73), .B(n74), .Z(sum[8]) );
  GTECH_XOR2 U92 ( .A(n75), .B(n76), .Z(sum[7]) );
  GTECH_OA21 U93 ( .A(n77), .B(n78), .C(n79), .Z(n76) );
  GTECH_XOR2 U94 ( .A(n77), .B(n78), .Z(sum[6]) );
  GTECH_AOI2N2 U95 ( .A(b[5]), .B(a[5]), .C(n80), .D(n81), .Z(n77) );
  GTECH_XOR2 U96 ( .A(n81), .B(n80), .Z(sum[5]) );
  GTECH_OA21 U97 ( .A(n82), .B(n83), .C(n84), .Z(n80) );
  GTECH_XOR2 U98 ( .A(n82), .B(n83), .Z(sum[4]) );
  GTECH_XOR2 U99 ( .A(n85), .B(n86), .Z(sum[3]) );
  GTECH_OA21 U100 ( .A(n87), .B(n88), .C(n89), .Z(n86) );
  GTECH_XOR2 U101 ( .A(n87), .B(n88), .Z(sum[2]) );
  GTECH_AOI22 U102 ( .A(n90), .B(n91), .C(b[1]), .D(a[1]), .Z(n87) );
  GTECH_XNOR2 U103 ( .A(n92), .B(n90), .Z(sum[1]) );
  GTECH_OAI2N2 U104 ( .A(n93), .B(n94), .C(a[0]), .D(b[0]), .Z(n90) );
  GTECH_XNOR2 U105 ( .A(n95), .B(n96), .Z(sum[15]) );
  GTECH_OAI21 U106 ( .A(n97), .B(n98), .C(n99), .Z(n96) );
  GTECH_XOR2 U107 ( .A(n98), .B(n97), .Z(sum[14]) );
  GTECH_OA21 U108 ( .A(n100), .B(n101), .C(n102), .Z(n97) );
  GTECH_XOR2 U109 ( .A(n101), .B(n100), .Z(sum[13]) );
  GTECH_OA21 U110 ( .A(n103), .B(n104), .C(n105), .Z(n100) );
  GTECH_XOR2 U111 ( .A(n103), .B(n104), .Z(sum[12]) );
  GTECH_NOT U112 ( .A(cout), .Z(n103) );
  GTECH_XOR2 U113 ( .A(n106), .B(n107), .Z(sum[11]) );
  GTECH_OA21 U114 ( .A(n108), .B(n109), .C(n110), .Z(n107) );
  GTECH_XOR2 U115 ( .A(n109), .B(n108), .Z(sum[10]) );
  GTECH_OA21 U116 ( .A(n72), .B(n71), .C(n111), .Z(n108) );
  GTECH_OA21 U117 ( .A(n73), .B(n74), .C(n112), .Z(n72) );
  GTECH_XOR2 U118 ( .A(n94), .B(n93), .Z(sum[0]) );
  GTECH_OAI21 U119 ( .A(n73), .B(n113), .C(n114), .Z(cout) );
  GTECH_OA21 U120 ( .A(n82), .B(n115), .C(n116), .Z(n73) );
  GTECH_OA21 U121 ( .A(n117), .B(n94), .C(n118), .Z(n82) );
  GTECH_NOT U122 ( .A(cin), .Z(n94) );
  GTECH_NOR3 U123 ( .A(n115), .B(n117), .C(n113), .Z(Pm) );
  GTECH_OR8 U124 ( .A(n78), .B(n83), .C(n88), .D(n93), .E(n75), .F(n81), .G(
        n85), .H(n92), .Z(n117) );
  GTECH_NOT U125 ( .A(n91), .Z(n92) );
  GTECH_XNOR2 U126 ( .A(a[0]), .B(b[0]), .Z(n93) );
  GTECH_OAI21 U127 ( .A(n119), .B(n113), .C(n114), .Z(Gm) );
  GTECH_AOI2N2 U128 ( .A(b[15]), .B(a[15]), .C(n120), .D(n95), .Z(n114) );
  GTECH_OA21 U129 ( .A(n121), .B(n98), .C(n99), .Z(n120) );
  GTECH_OA21 U130 ( .A(n105), .B(n101), .C(n102), .Z(n121) );
  GTECH_OR4 U131 ( .A(n104), .B(n98), .C(n101), .D(n95), .Z(n113) );
  GTECH_XNOR2 U132 ( .A(a[15]), .B(b[15]), .Z(n95) );
  GTECH_OAI21 U133 ( .A(b[13]), .B(a[13]), .C(n102), .Z(n101) );
  GTECH_NAND2 U134 ( .A(b[13]), .B(a[13]), .Z(n102) );
  GTECH_OAI21 U135 ( .A(b[14]), .B(a[14]), .C(n99), .Z(n98) );
  GTECH_NAND2 U136 ( .A(b[14]), .B(a[14]), .Z(n99) );
  GTECH_OAI21 U137 ( .A(b[12]), .B(a[12]), .C(n105), .Z(n104) );
  GTECH_NAND2 U138 ( .A(b[12]), .B(a[12]), .Z(n105) );
  GTECH_OA21 U139 ( .A(n118), .B(n115), .C(n116), .Z(n119) );
  GTECH_AOI2N2 U140 ( .A(b[11]), .B(a[11]), .C(n122), .D(n106), .Z(n116) );
  GTECH_OA21 U141 ( .A(n123), .B(n109), .C(n110), .Z(n122) );
  GTECH_OA21 U142 ( .A(n112), .B(n71), .C(n111), .Z(n123) );
  GTECH_OR4 U143 ( .A(n74), .B(n109), .C(n71), .D(n106), .Z(n115) );
  GTECH_XNOR2 U144 ( .A(a[11]), .B(b[11]), .Z(n106) );
  GTECH_OAI21 U145 ( .A(b[9]), .B(a[9]), .C(n111), .Z(n71) );
  GTECH_NAND2 U146 ( .A(b[9]), .B(a[9]), .Z(n111) );
  GTECH_OAI21 U147 ( .A(b[10]), .B(a[10]), .C(n110), .Z(n109) );
  GTECH_NAND2 U148 ( .A(b[10]), .B(a[10]), .Z(n110) );
  GTECH_OAI21 U149 ( .A(b[8]), .B(a[8]), .C(n112), .Z(n74) );
  GTECH_NAND2 U150 ( .A(b[8]), .B(a[8]), .Z(n112) );
  GTECH_AOI2N2 U151 ( .A(b[7]), .B(a[7]), .C(n124), .D(n75), .Z(n118) );
  GTECH_XNOR2 U152 ( .A(a[7]), .B(b[7]), .Z(n75) );
  GTECH_OA21 U153 ( .A(n125), .B(n78), .C(n79), .Z(n124) );
  GTECH_OAI21 U154 ( .A(b[6]), .B(a[6]), .C(n79), .Z(n78) );
  GTECH_NAND2 U155 ( .A(b[6]), .B(a[6]), .Z(n79) );
  GTECH_AOI2N2 U156 ( .A(b[5]), .B(a[5]), .C(n126), .D(n81), .Z(n125) );
  GTECH_XNOR2 U157 ( .A(a[5]), .B(b[5]), .Z(n81) );
  GTECH_OA21 U158 ( .A(n127), .B(n83), .C(n84), .Z(n126) );
  GTECH_OAI21 U159 ( .A(a[4]), .B(b[4]), .C(n84), .Z(n83) );
  GTECH_NAND2 U160 ( .A(b[4]), .B(a[4]), .Z(n84) );
  GTECH_AOI2N2 U161 ( .A(b[3]), .B(a[3]), .C(n128), .D(n85), .Z(n127) );
  GTECH_XNOR2 U162 ( .A(a[3]), .B(b[3]), .Z(n85) );
  GTECH_OA21 U163 ( .A(n129), .B(n88), .C(n89), .Z(n128) );
  GTECH_OAI21 U164 ( .A(a[2]), .B(b[2]), .C(n89), .Z(n88) );
  GTECH_NAND2 U165 ( .A(b[2]), .B(a[2]), .Z(n89) );
  GTECH_OA21 U166 ( .A(n130), .B(n131), .C(n132), .Z(n129) );
  GTECH_NAND3 U167 ( .A(a[0]), .B(n91), .C(b[0]), .Z(n132) );
  GTECH_XNOR2 U168 ( .A(a[1]), .B(n130), .Z(n91) );
  GTECH_NOT U169 ( .A(a[1]), .Z(n131) );
  GTECH_NOT U170 ( .A(b[1]), .Z(n130) );
endmodule

