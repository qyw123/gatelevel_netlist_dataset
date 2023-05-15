
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
         n129, n130, n131, n132, n133, n134, n135;

  GTECH_XOR2 U86 ( .A(n67), .B(n68), .Z(sum[9]) );
  GTECH_XOR2 U87 ( .A(n69), .B(n70), .Z(sum[8]) );
  GTECH_XNOR2 U88 ( .A(n71), .B(n72), .Z(sum[7]) );
  GTECH_OA21 U89 ( .A(n73), .B(n74), .C(n75), .Z(n72) );
  GTECH_XOR2 U90 ( .A(n74), .B(n73), .Z(sum[6]) );
  GTECH_OA21 U91 ( .A(n76), .B(n77), .C(n78), .Z(n73) );
  GTECH_XNOR2 U92 ( .A(n79), .B(n76), .Z(sum[5]) );
  GTECH_OA21 U93 ( .A(n80), .B(n81), .C(n82), .Z(n76) );
  GTECH_XNOR2 U94 ( .A(n83), .B(n80), .Z(sum[4]) );
  GTECH_XOR2 U95 ( .A(n84), .B(n85), .Z(sum[3]) );
  GTECH_OA21 U96 ( .A(n86), .B(n87), .C(n88), .Z(n85) );
  GTECH_XOR2 U97 ( .A(n86), .B(n87), .Z(sum[2]) );
  GTECH_AOI2N2 U98 ( .A(b[1]), .B(a[1]), .C(n89), .D(n90), .Z(n86) );
  GTECH_XNOR2 U99 ( .A(n91), .B(n89), .Z(sum[1]) );
  GTECH_AOI21 U100 ( .A(n92), .B(cin), .C(n93), .Z(n89) );
  GTECH_XNOR2 U101 ( .A(n94), .B(n95), .Z(sum[15]) );
  GTECH_OAI21 U102 ( .A(n96), .B(n97), .C(n98), .Z(n94) );
  GTECH_XOR2 U103 ( .A(n97), .B(n96), .Z(sum[14]) );
  GTECH_OA21 U104 ( .A(n99), .B(n100), .C(n101), .Z(n96) );
  GTECH_XOR2 U105 ( .A(n100), .B(n99), .Z(sum[13]) );
  GTECH_OA21 U106 ( .A(n102), .B(n103), .C(n104), .Z(n99) );
  GTECH_XNOR2 U107 ( .A(n103), .B(cout), .Z(sum[12]) );
  GTECH_XNOR2 U108 ( .A(n105), .B(n106), .Z(sum[11]) );
  GTECH_OAI21 U109 ( .A(n107), .B(n108), .C(n109), .Z(n105) );
  GTECH_XOR2 U110 ( .A(n108), .B(n107), .Z(sum[10]) );
  GTECH_OA21 U111 ( .A(n68), .B(n67), .C(n110), .Z(n107) );
  GTECH_OA21 U112 ( .A(n70), .B(n69), .C(n111), .Z(n68) );
  GTECH_XOR2 U113 ( .A(cin), .B(n92), .Z(sum[0]) );
  GTECH_NOT U114 ( .A(n112), .Z(n92) );
  GTECH_NOT U115 ( .A(n102), .Z(cout) );
  GTECH_OA21 U116 ( .A(n70), .B(n113), .C(n114), .Z(n102) );
  GTECH_OA21 U117 ( .A(n80), .B(n115), .C(n116), .Z(n70) );
  GTECH_OA21 U118 ( .A(n117), .B(n118), .C(n119), .Z(n80) );
  GTECH_NOT U119 ( .A(cin), .Z(n118) );
  GTECH_NOR3 U120 ( .A(n115), .B(n117), .C(n113), .Z(Pm) );
  GTECH_OR5 U121 ( .A(n84), .B(n90), .C(n112), .D(n120), .E(n87), .Z(n117) );
  GTECH_XNOR2 U122 ( .A(a[0]), .B(b[0]), .Z(n112) );
  GTECH_NOT U123 ( .A(n91), .Z(n90) );
  GTECH_OAI21 U124 ( .A(n121), .B(n113), .C(n114), .Z(Gm) );
  GTECH_OA21 U125 ( .A(n122), .B(n95), .C(n123), .Z(n114) );
  GTECH_OA21 U126 ( .A(n124), .B(n97), .C(n98), .Z(n122) );
  GTECH_OA21 U127 ( .A(n104), .B(n100), .C(n101), .Z(n124) );
  GTECH_OR4 U128 ( .A(n103), .B(n95), .C(n97), .D(n100), .Z(n113) );
  GTECH_OAI21 U129 ( .A(b[13]), .B(a[13]), .C(n101), .Z(n100) );
  GTECH_NAND2 U130 ( .A(b[13]), .B(a[13]), .Z(n101) );
  GTECH_OAI21 U131 ( .A(b[14]), .B(a[14]), .C(n98), .Z(n97) );
  GTECH_NAND2 U132 ( .A(b[14]), .B(a[14]), .Z(n98) );
  GTECH_OAI21 U133 ( .A(b[15]), .B(a[15]), .C(n123), .Z(n95) );
  GTECH_NAND2 U134 ( .A(a[15]), .B(b[15]), .Z(n123) );
  GTECH_OAI21 U135 ( .A(b[12]), .B(a[12]), .C(n104), .Z(n103) );
  GTECH_NAND2 U136 ( .A(a[12]), .B(b[12]), .Z(n104) );
  GTECH_OA21 U137 ( .A(n119), .B(n115), .C(n116), .Z(n121) );
  GTECH_OA21 U138 ( .A(n125), .B(n106), .C(n126), .Z(n116) );
  GTECH_OA21 U139 ( .A(n127), .B(n108), .C(n109), .Z(n125) );
  GTECH_OA21 U140 ( .A(n111), .B(n67), .C(n110), .Z(n127) );
  GTECH_OR4 U141 ( .A(n69), .B(n106), .C(n108), .D(n67), .Z(n115) );
  GTECH_OAI21 U142 ( .A(b[9]), .B(a[9]), .C(n110), .Z(n67) );
  GTECH_NAND2 U143 ( .A(a[9]), .B(b[9]), .Z(n110) );
  GTECH_OAI21 U144 ( .A(b[10]), .B(a[10]), .C(n109), .Z(n108) );
  GTECH_NAND2 U145 ( .A(b[10]), .B(a[10]), .Z(n109) );
  GTECH_OAI21 U146 ( .A(b[11]), .B(a[11]), .C(n126), .Z(n106) );
  GTECH_NAND2 U147 ( .A(a[11]), .B(b[11]), .Z(n126) );
  GTECH_OAI21 U148 ( .A(b[8]), .B(a[8]), .C(n111), .Z(n69) );
  GTECH_NAND2 U149 ( .A(a[8]), .B(b[8]), .Z(n111) );
  GTECH_AOI21 U150 ( .A(b[7]), .B(a[7]), .C(n128), .Z(n119) );
  GTECH_OAI22 U151 ( .A(n129), .B(n120), .C(n130), .D(n131), .Z(n128) );
  GTECH_OA21 U152 ( .A(n132), .B(n74), .C(n75), .Z(n130) );
  GTECH_OA21 U153 ( .A(n77), .B(n82), .C(n78), .Z(n132) );
  GTECH_OR4 U154 ( .A(n77), .B(n74), .C(n81), .D(n131), .Z(n120) );
  GTECH_NOT U155 ( .A(n71), .Z(n131) );
  GTECH_XOR2 U156 ( .A(a[7]), .B(b[7]), .Z(n71) );
  GTECH_NOT U157 ( .A(n83), .Z(n81) );
  GTECH_OA21 U158 ( .A(b[4]), .B(a[4]), .C(n82), .Z(n83) );
  GTECH_NAND2 U159 ( .A(b[4]), .B(a[4]), .Z(n82) );
  GTECH_NOT U160 ( .A(n133), .Z(n74) );
  GTECH_OA21 U161 ( .A(b[6]), .B(a[6]), .C(n75), .Z(n133) );
  GTECH_NAND2 U162 ( .A(b[6]), .B(a[6]), .Z(n75) );
  GTECH_NOT U163 ( .A(n79), .Z(n77) );
  GTECH_OA21 U164 ( .A(b[5]), .B(a[5]), .C(n78), .Z(n79) );
  GTECH_NAND2 U165 ( .A(b[5]), .B(a[5]), .Z(n78) );
  GTECH_AOI2N2 U166 ( .A(b[3]), .B(a[3]), .C(n134), .D(n84), .Z(n129) );
  GTECH_XNOR2 U167 ( .A(a[3]), .B(b[3]), .Z(n84) );
  GTECH_OA21 U168 ( .A(n135), .B(n87), .C(n88), .Z(n134) );
  GTECH_OAI21 U169 ( .A(b[2]), .B(a[2]), .C(n88), .Z(n87) );
  GTECH_NAND2 U170 ( .A(b[2]), .B(a[2]), .Z(n88) );
  GTECH_AOI22 U171 ( .A(b[1]), .B(a[1]), .C(n91), .D(n93), .Z(n135) );
  GTECH_AND2 U172 ( .A(b[0]), .B(a[0]), .Z(n93) );
  GTECH_XOR2 U173 ( .A(a[1]), .B(b[1]), .Z(n91) );
endmodule
