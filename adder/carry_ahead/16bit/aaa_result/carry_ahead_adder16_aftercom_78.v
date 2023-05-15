
module carry_ahead_adder16 ( a, b, cin, cout, sum, Gm, Pm );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout, Gm, Pm;
  wire   n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142;

  GTECH_XNOR2 U89 ( .A(n70), .B(n71), .Z(sum[9]) );
  GTECH_XOR2 U90 ( .A(n72), .B(n73), .Z(sum[8]) );
  GTECH_XNOR2 U91 ( .A(n74), .B(n75), .Z(sum[7]) );
  GTECH_OA21 U92 ( .A(n76), .B(n77), .C(n78), .Z(n75) );
  GTECH_XOR2 U93 ( .A(n77), .B(n76), .Z(sum[6]) );
  GTECH_OA21 U94 ( .A(n79), .B(n80), .C(n81), .Z(n76) );
  GTECH_XOR2 U95 ( .A(n80), .B(n79), .Z(sum[5]) );
  GTECH_OA21 U96 ( .A(n82), .B(n83), .C(n84), .Z(n79) );
  GTECH_XOR2 U97 ( .A(n83), .B(n82), .Z(sum[4]) );
  GTECH_XNOR2 U98 ( .A(n85), .B(n86), .Z(sum[3]) );
  GTECH_OA21 U99 ( .A(n87), .B(n88), .C(n89), .Z(n86) );
  GTECH_XOR2 U100 ( .A(n88), .B(n87), .Z(sum[2]) );
  GTECH_OA21 U101 ( .A(n90), .B(n91), .C(n92), .Z(n87) );
  GTECH_XNOR2 U102 ( .A(n93), .B(n90), .Z(sum[1]) );
  GTECH_AND_NOT U103 ( .A(n94), .B(n95), .Z(n90) );
  GTECH_XNOR2 U104 ( .A(n96), .B(n97), .Z(sum[15]) );
  GTECH_OAI21 U105 ( .A(n98), .B(n99), .C(n100), .Z(n96) );
  GTECH_XOR2 U106 ( .A(n99), .B(n98), .Z(sum[14]) );
  GTECH_OA21 U107 ( .A(n101), .B(n102), .C(n103), .Z(n98) );
  GTECH_XNOR2 U108 ( .A(n104), .B(n101), .Z(sum[13]) );
  GTECH_AOI21 U109 ( .A(cout), .B(n105), .C(n106), .Z(n101) );
  GTECH_XOR2 U110 ( .A(n105), .B(cout), .Z(sum[12]) );
  GTECH_XOR2 U111 ( .A(n107), .B(n108), .Z(sum[11]) );
  GTECH_OA21 U112 ( .A(n109), .B(n110), .C(n111), .Z(n108) );
  GTECH_XOR2 U113 ( .A(n110), .B(n109), .Z(sum[10]) );
  GTECH_AOI21 U114 ( .A(n71), .B(n112), .C(n113), .Z(n109) );
  GTECH_OAI21 U115 ( .A(n73), .B(n72), .C(n114), .Z(n71) );
  GTECH_XNOR2 U116 ( .A(cin), .B(n115), .Z(sum[0]) );
  GTECH_OAI21 U117 ( .A(n73), .B(n116), .C(n117), .Z(cout) );
  GTECH_OA21 U118 ( .A(n82), .B(n118), .C(n119), .Z(n73) );
  GTECH_AND2 U119 ( .A(n120), .B(n121), .Z(n82) );
  GTECH_NAND5 U120 ( .A(n93), .B(n85), .C(n122), .D(n95), .E(n123), .Z(n120)
         );
  GTECH_AND2 U121 ( .A(cin), .B(n124), .Z(n95) );
  GTECH_NOT U122 ( .A(n115), .Z(n124) );
  GTECH_NOR4 U123 ( .A(n125), .B(n116), .C(n115), .D(n118), .Z(Pm) );
  GTECH_OAI21 U124 ( .A(b[0]), .B(a[0]), .C(n94), .Z(n115) );
  GTECH_NAND4 U125 ( .A(n123), .B(n122), .C(n93), .D(n85), .Z(n125) );
  GTECH_OAI21 U126 ( .A(n126), .B(n116), .C(n117), .Z(Gm) );
  GTECH_OA21 U127 ( .A(n127), .B(n97), .C(n128), .Z(n117) );
  GTECH_OA21 U128 ( .A(n129), .B(n99), .C(n100), .Z(n127) );
  GTECH_NOT U129 ( .A(n130), .Z(n99) );
  GTECH_OA21 U130 ( .A(n131), .B(n102), .C(n103), .Z(n129) );
  GTECH_NOT U131 ( .A(n104), .Z(n102) );
  GTECH_NAND4 U132 ( .A(n105), .B(n132), .C(n130), .D(n104), .Z(n116) );
  GTECH_OA21 U133 ( .A(b[13]), .B(a[13]), .C(n103), .Z(n104) );
  GTECH_NAND2 U134 ( .A(b[13]), .B(a[13]), .Z(n103) );
  GTECH_OA21 U135 ( .A(b[14]), .B(a[14]), .C(n100), .Z(n130) );
  GTECH_NAND2 U136 ( .A(b[14]), .B(a[14]), .Z(n100) );
  GTECH_NOT U137 ( .A(n97), .Z(n132) );
  GTECH_OAI21 U138 ( .A(b[15]), .B(a[15]), .C(n128), .Z(n97) );
  GTECH_NAND2 U139 ( .A(a[15]), .B(b[15]), .Z(n128) );
  GTECH_OA21 U140 ( .A(b[12]), .B(a[12]), .C(n131), .Z(n105) );
  GTECH_NOT U141 ( .A(n106), .Z(n131) );
  GTECH_AND2 U142 ( .A(a[12]), .B(b[12]), .Z(n106) );
  GTECH_OA21 U143 ( .A(n121), .B(n118), .C(n119), .Z(n126) );
  GTECH_AOI2N2 U144 ( .A(b[11]), .B(a[11]), .C(n133), .D(n107), .Z(n119) );
  GTECH_OA21 U145 ( .A(n134), .B(n110), .C(n111), .Z(n133) );
  GTECH_OA21 U146 ( .A(n114), .B(n70), .C(n135), .Z(n134) );
  GTECH_OR4 U147 ( .A(n72), .B(n110), .C(n70), .D(n107), .Z(n118) );
  GTECH_XNOR2 U148 ( .A(a[11]), .B(b[11]), .Z(n107) );
  GTECH_NOT U149 ( .A(n112), .Z(n70) );
  GTECH_OA21 U150 ( .A(b[9]), .B(a[9]), .C(n135), .Z(n112) );
  GTECH_NOT U151 ( .A(n113), .Z(n135) );
  GTECH_AND2 U152 ( .A(a[9]), .B(b[9]), .Z(n113) );
  GTECH_OAI21 U153 ( .A(b[10]), .B(a[10]), .C(n111), .Z(n110) );
  GTECH_NAND2 U154 ( .A(b[10]), .B(a[10]), .Z(n111) );
  GTECH_OAI21 U155 ( .A(b[8]), .B(a[8]), .C(n114), .Z(n72) );
  GTECH_NAND2 U156 ( .A(a[8]), .B(b[8]), .Z(n114) );
  GTECH_AOI222 U157 ( .A(a[7]), .B(b[7]), .C(n123), .D(n136), .E(n74), .F(n137), .Z(n121) );
  GTECH_OAI21 U158 ( .A(n138), .B(n77), .C(n78), .Z(n137) );
  GTECH_OA21 U159 ( .A(n80), .B(n84), .C(n81), .Z(n138) );
  GTECH_OAI2N2 U160 ( .A(n139), .B(n140), .C(b[3]), .D(a[3]), .Z(n136) );
  GTECH_NOT U161 ( .A(n85), .Z(n140) );
  GTECH_XOR2 U162 ( .A(a[3]), .B(b[3]), .Z(n85) );
  GTECH_OA21 U163 ( .A(n141), .B(n88), .C(n89), .Z(n139) );
  GTECH_NOT U164 ( .A(n122), .Z(n88) );
  GTECH_OA21 U165 ( .A(b[2]), .B(a[2]), .C(n89), .Z(n122) );
  GTECH_NAND2 U166 ( .A(b[2]), .B(a[2]), .Z(n89) );
  GTECH_OA21 U167 ( .A(n94), .B(n91), .C(n92), .Z(n141) );
  GTECH_NOT U168 ( .A(n93), .Z(n91) );
  GTECH_OA21 U169 ( .A(b[1]), .B(a[1]), .C(n92), .Z(n93) );
  GTECH_NAND2 U170 ( .A(b[1]), .B(a[1]), .Z(n92) );
  GTECH_NAND2 U171 ( .A(a[0]), .B(b[0]), .Z(n94) );
  GTECH_NOR4 U172 ( .A(n83), .B(n77), .C(n80), .D(n142), .Z(n123) );
  GTECH_NOT U173 ( .A(n74), .Z(n142) );
  GTECH_XOR2 U174 ( .A(a[7]), .B(b[7]), .Z(n74) );
  GTECH_OAI21 U175 ( .A(b[5]), .B(a[5]), .C(n81), .Z(n80) );
  GTECH_NAND2 U176 ( .A(a[5]), .B(b[5]), .Z(n81) );
  GTECH_OAI21 U177 ( .A(b[6]), .B(a[6]), .C(n78), .Z(n77) );
  GTECH_NAND2 U178 ( .A(b[6]), .B(a[6]), .Z(n78) );
  GTECH_OAI21 U179 ( .A(b[4]), .B(a[4]), .C(n84), .Z(n83) );
  GTECH_NAND2 U180 ( .A(a[4]), .B(b[4]), .Z(n84) );
endmodule

