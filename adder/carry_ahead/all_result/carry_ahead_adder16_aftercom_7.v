
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
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141;

  GTECH_XOR2 U89 ( .A(n70), .B(n71), .Z(sum[9]) );
  GTECH_XNOR2 U90 ( .A(n72), .B(n73), .Z(sum[8]) );
  GTECH_XNOR2 U91 ( .A(n74), .B(n75), .Z(sum[7]) );
  GTECH_OAI21 U92 ( .A(n76), .B(n77), .C(n78), .Z(n74) );
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
  GTECH_XOR2 U108 ( .A(n102), .B(n101), .Z(sum[13]) );
  GTECH_OA21 U109 ( .A(n104), .B(n105), .C(n106), .Z(n101) );
  GTECH_NOT U110 ( .A(cout), .Z(n104) );
  GTECH_XNOR2 U111 ( .A(n105), .B(cout), .Z(sum[12]) );
  GTECH_XNOR2 U112 ( .A(n107), .B(n108), .Z(sum[11]) );
  GTECH_OAI21 U113 ( .A(n109), .B(n110), .C(n111), .Z(n107) );
  GTECH_XOR2 U114 ( .A(n110), .B(n109), .Z(sum[10]) );
  GTECH_OA21 U115 ( .A(n71), .B(n70), .C(n112), .Z(n109) );
  GTECH_OA21 U116 ( .A(n113), .B(n72), .C(n114), .Z(n71) );
  GTECH_NOT U117 ( .A(n73), .Z(n113) );
  GTECH_XOR2 U118 ( .A(cin), .B(n115), .Z(sum[0]) );
  GTECH_AO21 U119 ( .A(n73), .B(n116), .C(n117), .Z(cout) );
  GTECH_OAI21 U120 ( .A(n82), .B(n118), .C(n119), .Z(n73) );
  GTECH_AND2 U121 ( .A(n120), .B(n121), .Z(n82) );
  GTECH_NAND5 U122 ( .A(n93), .B(n85), .C(n122), .D(n95), .E(n123), .Z(n120)
         );
  GTECH_NOT U123 ( .A(n124), .Z(n123) );
  GTECH_AND2 U124 ( .A(cin), .B(n115), .Z(n95) );
  GTECH_AND4 U125 ( .A(n125), .B(n115), .C(n116), .D(n126), .Z(Pm) );
  GTECH_NOR4 U126 ( .A(n124), .B(n88), .C(n91), .D(n127), .Z(n126) );
  GTECH_OA21 U127 ( .A(a[0]), .B(b[0]), .C(n94), .Z(n115) );
  GTECH_NOT U128 ( .A(n118), .Z(n125) );
  GTECH_AO21 U129 ( .A(n128), .B(n116), .C(n117), .Z(Gm) );
  GTECH_OAI21 U130 ( .A(n129), .B(n97), .C(n130), .Z(n117) );
  GTECH_OA21 U131 ( .A(n131), .B(n99), .C(n100), .Z(n129) );
  GTECH_OA21 U132 ( .A(n106), .B(n102), .C(n103), .Z(n131) );
  GTECH_NOR4 U133 ( .A(n105), .B(n97), .C(n99), .D(n102), .Z(n116) );
  GTECH_OAI21 U134 ( .A(b[13]), .B(a[13]), .C(n103), .Z(n102) );
  GTECH_NAND2 U135 ( .A(b[13]), .B(a[13]), .Z(n103) );
  GTECH_OAI21 U136 ( .A(b[14]), .B(a[14]), .C(n100), .Z(n99) );
  GTECH_NAND2 U137 ( .A(b[14]), .B(a[14]), .Z(n100) );
  GTECH_OAI21 U138 ( .A(b[15]), .B(a[15]), .C(n130), .Z(n97) );
  GTECH_NAND2 U139 ( .A(a[15]), .B(b[15]), .Z(n130) );
  GTECH_OAI21 U140 ( .A(b[12]), .B(a[12]), .C(n106), .Z(n105) );
  GTECH_NAND2 U141 ( .A(a[12]), .B(b[12]), .Z(n106) );
  GTECH_OAI21 U142 ( .A(n121), .B(n118), .C(n119), .Z(n128) );
  GTECH_OA21 U143 ( .A(n132), .B(n108), .C(n133), .Z(n119) );
  GTECH_OA21 U144 ( .A(n134), .B(n110), .C(n111), .Z(n132) );
  GTECH_OA21 U145 ( .A(n114), .B(n70), .C(n112), .Z(n134) );
  GTECH_OR4 U146 ( .A(n72), .B(n108), .C(n110), .D(n70), .Z(n118) );
  GTECH_OAI21 U147 ( .A(b[9]), .B(a[9]), .C(n112), .Z(n70) );
  GTECH_NAND2 U148 ( .A(a[9]), .B(b[9]), .Z(n112) );
  GTECH_OAI21 U149 ( .A(b[10]), .B(a[10]), .C(n111), .Z(n110) );
  GTECH_NAND2 U150 ( .A(b[10]), .B(a[10]), .Z(n111) );
  GTECH_OAI21 U151 ( .A(b[11]), .B(a[11]), .C(n133), .Z(n108) );
  GTECH_NAND2 U152 ( .A(a[11]), .B(b[11]), .Z(n133) );
  GTECH_OAI21 U153 ( .A(b[8]), .B(a[8]), .C(n114), .Z(n72) );
  GTECH_NAND2 U154 ( .A(a[8]), .B(b[8]), .Z(n114) );
  GTECH_OA21 U155 ( .A(n135), .B(n75), .C(n136), .Z(n121) );
  GTECH_OA21 U156 ( .A(n137), .B(n124), .C(n138), .Z(n136) );
  GTECH_OR4 U157 ( .A(n83), .B(n75), .C(n77), .D(n80), .Z(n124) );
  GTECH_OAI21 U158 ( .A(b[4]), .B(a[4]), .C(n84), .Z(n83) );
  GTECH_AOI2N2 U159 ( .A(b[3]), .B(a[3]), .C(n139), .D(n127), .Z(n137) );
  GTECH_NOT U160 ( .A(n85), .Z(n127) );
  GTECH_XOR2 U161 ( .A(a[3]), .B(b[3]), .Z(n85) );
  GTECH_OA21 U162 ( .A(n140), .B(n88), .C(n89), .Z(n139) );
  GTECH_NOT U163 ( .A(n122), .Z(n88) );
  GTECH_OA21 U164 ( .A(b[2]), .B(a[2]), .C(n89), .Z(n122) );
  GTECH_NAND2 U165 ( .A(b[2]), .B(a[2]), .Z(n89) );
  GTECH_OA21 U166 ( .A(n91), .B(n94), .C(n92), .Z(n140) );
  GTECH_NAND2 U167 ( .A(a[0]), .B(b[0]), .Z(n94) );
  GTECH_NOT U168 ( .A(n93), .Z(n91) );
  GTECH_OA21 U169 ( .A(b[1]), .B(a[1]), .C(n92), .Z(n93) );
  GTECH_NAND2 U170 ( .A(b[1]), .B(a[1]), .Z(n92) );
  GTECH_OAI21 U171 ( .A(b[7]), .B(a[7]), .C(n138), .Z(n75) );
  GTECH_NAND2 U172 ( .A(a[7]), .B(b[7]), .Z(n138) );
  GTECH_OA21 U173 ( .A(n141), .B(n77), .C(n78), .Z(n135) );
  GTECH_OAI21 U174 ( .A(b[6]), .B(a[6]), .C(n78), .Z(n77) );
  GTECH_NAND2 U175 ( .A(b[6]), .B(a[6]), .Z(n78) );
  GTECH_OA21 U176 ( .A(n80), .B(n84), .C(n81), .Z(n141) );
  GTECH_NAND2 U177 ( .A(b[4]), .B(a[4]), .Z(n84) );
  GTECH_OAI21 U178 ( .A(b[5]), .B(a[5]), .C(n81), .Z(n80) );
  GTECH_NAND2 U179 ( .A(b[5]), .B(a[5]), .Z(n81) );
endmodule

