
module carry_ahead_adder16 ( a, b, cin, cout, sum, Gm, Pm );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout, Gm, Pm;
  wire   n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136;

  GTECH_XOR2 U87 ( .A(n68), .B(n69), .Z(sum[9]) );
  GTECH_XOR2 U88 ( .A(n70), .B(n71), .Z(sum[8]) );
  GTECH_XNOR2 U89 ( .A(n72), .B(n73), .Z(sum[7]) );
  GTECH_OAI21 U90 ( .A(n74), .B(n75), .C(n76), .Z(n72) );
  GTECH_XOR2 U91 ( .A(n75), .B(n74), .Z(sum[6]) );
  GTECH_OA21 U92 ( .A(n77), .B(n78), .C(n79), .Z(n74) );
  GTECH_XOR2 U93 ( .A(n78), .B(n77), .Z(sum[5]) );
  GTECH_OA21 U94 ( .A(n80), .B(n81), .C(n82), .Z(n77) );
  GTECH_XOR2 U95 ( .A(n81), .B(n80), .Z(sum[4]) );
  GTECH_XOR2 U96 ( .A(n83), .B(n84), .Z(sum[3]) );
  GTECH_OA21 U97 ( .A(n85), .B(n86), .C(n87), .Z(n84) );
  GTECH_XOR2 U98 ( .A(n86), .B(n85), .Z(sum[2]) );
  GTECH_OA21 U99 ( .A(n88), .B(n89), .C(n90), .Z(n85) );
  GTECH_XOR2 U100 ( .A(n89), .B(n88), .Z(sum[1]) );
  GTECH_AND_NOT U101 ( .A(n91), .B(n92), .Z(n88) );
  GTECH_XOR2 U102 ( .A(n93), .B(n94), .Z(sum[15]) );
  GTECH_OA21 U103 ( .A(n95), .B(n96), .C(n97), .Z(n94) );
  GTECH_XOR2 U104 ( .A(n96), .B(n95), .Z(sum[14]) );
  GTECH_OA21 U105 ( .A(n98), .B(n99), .C(n100), .Z(n95) );
  GTECH_XOR2 U106 ( .A(n99), .B(n98), .Z(sum[13]) );
  GTECH_OA21 U107 ( .A(n101), .B(n102), .C(n103), .Z(n98) );
  GTECH_XNOR2 U108 ( .A(cout), .B(n102), .Z(sum[12]) );
  GTECH_XNOR2 U109 ( .A(n104), .B(n105), .Z(sum[11]) );
  GTECH_OAI21 U110 ( .A(n106), .B(n107), .C(n108), .Z(n104) );
  GTECH_XOR2 U111 ( .A(n107), .B(n106), .Z(sum[10]) );
  GTECH_OA21 U112 ( .A(n69), .B(n68), .C(n109), .Z(n106) );
  GTECH_OA21 U113 ( .A(n71), .B(n70), .C(n110), .Z(n69) );
  GTECH_XNOR2 U114 ( .A(cin), .B(n111), .Z(sum[0]) );
  GTECH_NOT U115 ( .A(n101), .Z(cout) );
  GTECH_OA21 U116 ( .A(n71), .B(n112), .C(n113), .Z(n101) );
  GTECH_OA21 U117 ( .A(n80), .B(n114), .C(n115), .Z(n71) );
  GTECH_AND2 U118 ( .A(n116), .B(n117), .Z(n80) );
  GTECH_NAND5 U119 ( .A(n118), .B(n119), .C(n120), .D(n92), .E(n121), .Z(n116)
         );
  GTECH_AND_NOT U120 ( .A(cin), .B(n111), .Z(n92) );
  GTECH_NOR4 U121 ( .A(n114), .B(n111), .C(n112), .D(n122), .Z(Pm) );
  GTECH_NAND4 U122 ( .A(n121), .B(n120), .C(n118), .D(n119), .Z(n122) );
  GTECH_NOT U123 ( .A(n83), .Z(n119) );
  GTECH_OAI21 U124 ( .A(b[0]), .B(a[0]), .C(n91), .Z(n111) );
  GTECH_OAI21 U125 ( .A(n123), .B(n112), .C(n113), .Z(Gm) );
  GTECH_AOI2N2 U126 ( .A(b[15]), .B(a[15]), .C(n124), .D(n93), .Z(n113) );
  GTECH_OA21 U127 ( .A(n125), .B(n96), .C(n97), .Z(n124) );
  GTECH_OA21 U128 ( .A(n103), .B(n99), .C(n100), .Z(n125) );
  GTECH_OR4 U129 ( .A(n102), .B(n96), .C(n99), .D(n93), .Z(n112) );
  GTECH_XNOR2 U130 ( .A(a[15]), .B(b[15]), .Z(n93) );
  GTECH_OAI21 U131 ( .A(b[13]), .B(a[13]), .C(n100), .Z(n99) );
  GTECH_NAND2 U132 ( .A(a[13]), .B(b[13]), .Z(n100) );
  GTECH_OAI21 U133 ( .A(b[14]), .B(a[14]), .C(n97), .Z(n96) );
  GTECH_NAND2 U134 ( .A(a[14]), .B(b[14]), .Z(n97) );
  GTECH_OAI21 U135 ( .A(b[12]), .B(a[12]), .C(n103), .Z(n102) );
  GTECH_NAND2 U136 ( .A(a[12]), .B(b[12]), .Z(n103) );
  GTECH_OA21 U137 ( .A(n117), .B(n114), .C(n115), .Z(n123) );
  GTECH_OA21 U138 ( .A(n126), .B(n105), .C(n127), .Z(n115) );
  GTECH_OA21 U139 ( .A(n128), .B(n107), .C(n108), .Z(n126) );
  GTECH_OA21 U140 ( .A(n110), .B(n68), .C(n109), .Z(n128) );
  GTECH_OR4 U141 ( .A(n70), .B(n105), .C(n107), .D(n68), .Z(n114) );
  GTECH_OAI21 U142 ( .A(b[9]), .B(a[9]), .C(n109), .Z(n68) );
  GTECH_NAND2 U143 ( .A(a[9]), .B(b[9]), .Z(n109) );
  GTECH_OAI21 U144 ( .A(b[10]), .B(a[10]), .C(n108), .Z(n107) );
  GTECH_NAND2 U145 ( .A(a[10]), .B(b[10]), .Z(n108) );
  GTECH_OAI21 U146 ( .A(b[11]), .B(a[11]), .C(n127), .Z(n105) );
  GTECH_NAND2 U147 ( .A(a[11]), .B(b[11]), .Z(n127) );
  GTECH_OAI21 U148 ( .A(b[8]), .B(a[8]), .C(n110), .Z(n70) );
  GTECH_NAND2 U149 ( .A(a[8]), .B(b[8]), .Z(n110) );
  GTECH_OA21 U150 ( .A(n129), .B(n73), .C(n130), .Z(n117) );
  GTECH_OA21 U151 ( .A(n131), .B(n132), .C(n133), .Z(n130) );
  GTECH_NOT U152 ( .A(n121), .Z(n132) );
  GTECH_NOR4 U153 ( .A(n81), .B(n73), .C(n75), .D(n78), .Z(n121) );
  GTECH_OAI21 U154 ( .A(b[4]), .B(a[4]), .C(n82), .Z(n81) );
  GTECH_AOI2N2 U155 ( .A(b[3]), .B(a[3]), .C(n134), .D(n83), .Z(n131) );
  GTECH_XNOR2 U156 ( .A(a[3]), .B(b[3]), .Z(n83) );
  GTECH_OA21 U157 ( .A(n135), .B(n86), .C(n87), .Z(n134) );
  GTECH_NOT U158 ( .A(n120), .Z(n86) );
  GTECH_OA21 U159 ( .A(b[2]), .B(a[2]), .C(n87), .Z(n120) );
  GTECH_NAND2 U160 ( .A(a[2]), .B(b[2]), .Z(n87) );
  GTECH_OA21 U161 ( .A(n91), .B(n89), .C(n90), .Z(n135) );
  GTECH_NOT U162 ( .A(n118), .Z(n89) );
  GTECH_OA21 U163 ( .A(b[1]), .B(a[1]), .C(n90), .Z(n118) );
  GTECH_NAND2 U164 ( .A(a[1]), .B(b[1]), .Z(n90) );
  GTECH_NAND2 U165 ( .A(b[0]), .B(a[0]), .Z(n91) );
  GTECH_OAI21 U166 ( .A(b[7]), .B(a[7]), .C(n133), .Z(n73) );
  GTECH_NAND2 U167 ( .A(a[7]), .B(b[7]), .Z(n133) );
  GTECH_OA21 U168 ( .A(n136), .B(n75), .C(n76), .Z(n129) );
  GTECH_OAI21 U169 ( .A(b[6]), .B(a[6]), .C(n76), .Z(n75) );
  GTECH_NAND2 U170 ( .A(a[6]), .B(b[6]), .Z(n76) );
  GTECH_OA21 U171 ( .A(n78), .B(n82), .C(n79), .Z(n136) );
  GTECH_NAND2 U172 ( .A(a[4]), .B(b[4]), .Z(n82) );
  GTECH_OAI21 U173 ( .A(b[5]), .B(a[5]), .C(n79), .Z(n78) );
  GTECH_NAND2 U174 ( .A(a[5]), .B(b[5]), .Z(n79) );
endmodule

