
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
         n131, n132, n133, n134;

  GTECH_ADD_AB U88 ( .A(n69), .B(n70), .S(sum[9]) );
  GTECH_ADD_AB U89 ( .A(n71), .B(n72), .S(sum[8]) );
  GTECH_ADD_AB U90 ( .A(n73), .B(n74), .S(sum[7]) );
  GTECH_OA21 U91 ( .A(n75), .B(n76), .C(n77), .Z(n73) );
  GTECH_ADD_AB U92 ( .A(n76), .B(n75), .S(sum[6]) );
  GTECH_OA21 U93 ( .A(n78), .B(n79), .C(n80), .Z(n75) );
  GTECH_ADD_AB U94 ( .A(n78), .B(n79), .S(sum[5]) );
  GTECH_OA21 U95 ( .A(n81), .B(n82), .C(n83), .Z(n78) );
  GTECH_ADD_AB U96 ( .A(n82), .B(n81), .S(sum[4]) );
  GTECH_ADD_AB U97 ( .A(n84), .B(n85), .S(sum[3]) );
  GTECH_OAI21 U98 ( .A(n86), .B(n87), .C(n88), .Z(n84) );
  GTECH_XNOR2 U99 ( .A(n89), .B(n86), .Z(sum[2]) );
  GTECH_OA21 U100 ( .A(n90), .B(n91), .C(n92), .Z(n86) );
  GTECH_XNOR2 U101 ( .A(n93), .B(n90), .Z(sum[1]) );
  GTECH_AND_NOT U102 ( .A(n94), .B(n95), .Z(n90) );
  GTECH_XNOR2 U103 ( .A(n96), .B(n97), .Z(sum[15]) );
  GTECH_OAI21 U104 ( .A(n98), .B(n99), .C(n100), .Z(n96) );
  GTECH_ADD_AB U105 ( .A(n98), .B(n99), .S(sum[14]) );
  GTECH_OA21 U106 ( .A(n101), .B(n102), .C(n103), .Z(n98) );
  GTECH_ADD_AB U107 ( .A(n101), .B(n102), .S(sum[13]) );
  GTECH_OA21 U108 ( .A(n104), .B(n105), .C(n106), .Z(n101) );
  GTECH_ADD_AB U109 ( .A(n105), .B(n104), .S(sum[12]) );
  GTECH_ADD_AB U110 ( .A(n107), .B(n108), .S(sum[11]) );
  GTECH_OA21 U111 ( .A(n109), .B(n110), .C(n111), .Z(n108) );
  GTECH_ADD_AB U112 ( .A(n109), .B(n110), .S(sum[10]) );
  GTECH_OA21 U113 ( .A(n69), .B(n70), .C(n112), .Z(n109) );
  GTECH_OA21 U114 ( .A(n71), .B(n72), .C(n113), .Z(n69) );
  GTECH_XNOR2 U115 ( .A(cin), .B(n114), .Z(sum[0]) );
  GTECH_NOT U116 ( .A(n104), .Z(cout) );
  GTECH_OA21 U117 ( .A(n71), .B(n115), .C(n116), .Z(n104) );
  GTECH_OA21 U118 ( .A(n81), .B(n117), .C(n118), .Z(n71) );
  GTECH_AND2 U119 ( .A(n119), .B(n120), .Z(n81) );
  GTECH_NAND5 U120 ( .A(n93), .B(n85), .C(n89), .D(n95), .E(n121), .Z(n119) );
  GTECH_AND_NOT U121 ( .A(cin), .B(n114), .Z(n95) );
  GTECH_NOR4 U122 ( .A(n117), .B(n114), .C(n115), .D(n122), .Z(Pm) );
  GTECH_NAND4 U123 ( .A(n121), .B(n89), .C(n93), .D(n85), .Z(n122) );
  GTECH_NOT U124 ( .A(n91), .Z(n93) );
  GTECH_NOT U125 ( .A(n87), .Z(n89) );
  GTECH_OAI21 U126 ( .A(b[0]), .B(a[0]), .C(n94), .Z(n114) );
  GTECH_OAI21 U127 ( .A(n123), .B(n115), .C(n116), .Z(Gm) );
  GTECH_AOI2N2 U128 ( .A(b[15]), .B(a[15]), .C(n124), .D(n97), .Z(n116) );
  GTECH_OA21 U129 ( .A(n125), .B(n99), .C(n100), .Z(n124) );
  GTECH_OA21 U130 ( .A(n106), .B(n102), .C(n103), .Z(n125) );
  GTECH_OR4 U131 ( .A(n105), .B(n99), .C(n102), .D(n97), .Z(n115) );
  GTECH_XNOR2 U132 ( .A(b[15]), .B(a[15]), .Z(n97) );
  GTECH_OAI21 U133 ( .A(b[13]), .B(a[13]), .C(n103), .Z(n102) );
  GTECH_NAND2 U134 ( .A(b[13]), .B(a[13]), .Z(n103) );
  GTECH_OAI21 U135 ( .A(b[14]), .B(a[14]), .C(n100), .Z(n99) );
  GTECH_NAND2 U136 ( .A(b[14]), .B(a[14]), .Z(n100) );
  GTECH_OAI21 U137 ( .A(b[12]), .B(a[12]), .C(n106), .Z(n105) );
  GTECH_NAND2 U138 ( .A(b[12]), .B(a[12]), .Z(n106) );
  GTECH_OA21 U139 ( .A(n120), .B(n117), .C(n118), .Z(n123) );
  GTECH_OA21 U140 ( .A(n126), .B(n107), .C(n127), .Z(n118) );
  GTECH_OA21 U141 ( .A(n128), .B(n110), .C(n111), .Z(n126) );
  GTECH_OA21 U142 ( .A(n113), .B(n70), .C(n112), .Z(n128) );
  GTECH_OR4 U143 ( .A(n72), .B(n107), .C(n110), .D(n70), .Z(n117) );
  GTECH_OAI21 U144 ( .A(b[9]), .B(a[9]), .C(n112), .Z(n70) );
  GTECH_NAND2 U145 ( .A(b[9]), .B(a[9]), .Z(n112) );
  GTECH_OAI21 U146 ( .A(b[10]), .B(a[10]), .C(n111), .Z(n110) );
  GTECH_NAND2 U147 ( .A(b[10]), .B(a[10]), .Z(n111) );
  GTECH_OAI21 U148 ( .A(b[11]), .B(a[11]), .C(n127), .Z(n107) );
  GTECH_NAND2 U149 ( .A(b[11]), .B(a[11]), .Z(n127) );
  GTECH_OAI21 U150 ( .A(b[8]), .B(a[8]), .C(n113), .Z(n72) );
  GTECH_NAND2 U151 ( .A(b[8]), .B(a[8]), .Z(n113) );
  GTECH_AOI222 U152 ( .A(n121), .B(n129), .C(b[7]), .D(a[7]), .E(n130), .F(
        n131), .Z(n120) );
  GTECH_OAI21 U153 ( .A(n132), .B(n76), .C(n77), .Z(n131) );
  GTECH_OA21 U154 ( .A(n79), .B(n83), .C(n80), .Z(n132) );
  GTECH_AO22 U155 ( .A(n133), .B(n85), .C(b[3]), .D(a[3]), .Z(n129) );
  GTECH_ADD_AB U156 ( .A(b[3]), .B(a[3]), .S(n85) );
  GTECH_OAI21 U157 ( .A(n134), .B(n87), .C(n88), .Z(n133) );
  GTECH_OAI21 U158 ( .A(a[2]), .B(b[2]), .C(n88), .Z(n87) );
  GTECH_NAND2 U159 ( .A(b[2]), .B(a[2]), .Z(n88) );
  GTECH_OA21 U160 ( .A(n94), .B(n91), .C(n92), .Z(n134) );
  GTECH_OAI21 U161 ( .A(a[1]), .B(b[1]), .C(n92), .Z(n91) );
  GTECH_NAND2 U162 ( .A(b[1]), .B(a[1]), .Z(n92) );
  GTECH_NAND2 U163 ( .A(b[0]), .B(a[0]), .Z(n94) );
  GTECH_NOR4 U164 ( .A(n82), .B(n76), .C(n79), .D(n74), .Z(n121) );
  GTECH_NOT U165 ( .A(n130), .Z(n74) );
  GTECH_ADD_AB U166 ( .A(b[7]), .B(a[7]), .S(n130) );
  GTECH_OAI21 U167 ( .A(b[5]), .B(a[5]), .C(n80), .Z(n79) );
  GTECH_NAND2 U168 ( .A(b[5]), .B(a[5]), .Z(n80) );
  GTECH_OAI21 U169 ( .A(a[6]), .B(b[6]), .C(n77), .Z(n76) );
  GTECH_NAND2 U170 ( .A(b[6]), .B(a[6]), .Z(n77) );
  GTECH_OAI21 U171 ( .A(a[4]), .B(b[4]), .C(n83), .Z(n82) );
  GTECH_NAND2 U172 ( .A(b[4]), .B(a[4]), .Z(n83) );
endmodule

