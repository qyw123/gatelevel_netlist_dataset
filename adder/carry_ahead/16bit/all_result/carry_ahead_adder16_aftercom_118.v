
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
         n132, n133, n134, n135, n136, n137;

  GTECH_XOR2 U89 ( .A(n70), .B(n71), .Z(sum[9]) );
  GTECH_XOR2 U90 ( .A(n72), .B(n73), .Z(sum[8]) );
  GTECH_XOR2 U91 ( .A(n74), .B(n75), .Z(sum[7]) );
  GTECH_OA21 U92 ( .A(n76), .B(n77), .C(n78), .Z(n75) );
  GTECH_XOR2 U93 ( .A(n77), .B(n76), .Z(sum[6]) );
  GTECH_OA21 U94 ( .A(n79), .B(n80), .C(n81), .Z(n76) );
  GTECH_XOR2 U95 ( .A(n80), .B(n79), .Z(sum[5]) );
  GTECH_OA21 U96 ( .A(n82), .B(n83), .C(n84), .Z(n79) );
  GTECH_XOR2 U97 ( .A(n83), .B(n82), .Z(sum[4]) );
  GTECH_XNOR2 U98 ( .A(n85), .B(n86), .Z(sum[3]) );
  GTECH_OA21 U99 ( .A(n87), .B(n88), .C(n89), .Z(n86) );
  GTECH_XOR2 U100 ( .A(n88), .B(n87), .Z(sum[2]) );
  GTECH_AOI21 U101 ( .A(n90), .B(n91), .C(n92), .Z(n87) );
  GTECH_NOT U102 ( .A(n93), .Z(n88) );
  GTECH_XOR2 U103 ( .A(n91), .B(n90), .Z(sum[1]) );
  GTECH_AO22 U104 ( .A(n94), .B(cin), .C(a[0]), .D(b[0]), .Z(n90) );
  GTECH_XOR2 U105 ( .A(n95), .B(n96), .Z(sum[15]) );
  GTECH_OA21 U106 ( .A(n97), .B(n98), .C(n99), .Z(n96) );
  GTECH_XOR2 U107 ( .A(n98), .B(n97), .Z(sum[14]) );
  GTECH_OA21 U108 ( .A(n100), .B(n101), .C(n102), .Z(n97) );
  GTECH_XOR2 U109 ( .A(n101), .B(n100), .Z(sum[13]) );
  GTECH_OA21 U110 ( .A(n103), .B(n104), .C(n105), .Z(n100) );
  GTECH_XNOR2 U111 ( .A(cout), .B(n104), .Z(sum[12]) );
  GTECH_XNOR2 U112 ( .A(n106), .B(n107), .Z(sum[11]) );
  GTECH_OAI21 U113 ( .A(n108), .B(n109), .C(n110), .Z(n106) );
  GTECH_XOR2 U114 ( .A(n109), .B(n108), .Z(sum[10]) );
  GTECH_OA21 U115 ( .A(n71), .B(n70), .C(n111), .Z(n108) );
  GTECH_OA21 U116 ( .A(n73), .B(n72), .C(n112), .Z(n71) );
  GTECH_XOR2 U117 ( .A(cin), .B(n94), .Z(sum[0]) );
  GTECH_NOT U118 ( .A(n103), .Z(cout) );
  GTECH_OA21 U119 ( .A(n73), .B(n113), .C(n114), .Z(n103) );
  GTECH_OA21 U120 ( .A(n82), .B(n115), .C(n116), .Z(n73) );
  GTECH_ADD_AB U121 ( .A(n117), .B(n118), .COUT(n82) );
  GTECH_NAND4 U122 ( .A(n119), .B(n93), .C(cin), .D(n120), .Z(n117) );
  GTECH_AND3 U123 ( .A(n85), .B(n91), .C(n94), .Z(n120) );
  GTECH_NOR4 U124 ( .A(n115), .B(n121), .C(n113), .D(n122), .Z(Pm) );
  GTECH_NAND4 U125 ( .A(n93), .B(n94), .C(n85), .D(n91), .Z(n122) );
  GTECH_XOR2 U126 ( .A(a[0]), .B(b[0]), .Z(n94) );
  GTECH_OAI21 U127 ( .A(n123), .B(n113), .C(n114), .Z(Gm) );
  GTECH_AOI2N2 U128 ( .A(b[15]), .B(a[15]), .C(n124), .D(n95), .Z(n114) );
  GTECH_OA21 U129 ( .A(n125), .B(n98), .C(n99), .Z(n124) );
  GTECH_OA21 U130 ( .A(n105), .B(n101), .C(n102), .Z(n125) );
  GTECH_OR4 U131 ( .A(n104), .B(n98), .C(n101), .D(n95), .Z(n113) );
  GTECH_XNOR2 U132 ( .A(a[15]), .B(b[15]), .Z(n95) );
  GTECH_OAI21 U133 ( .A(b[13]), .B(a[13]), .C(n102), .Z(n101) );
  GTECH_NAND2 U134 ( .A(a[13]), .B(b[13]), .Z(n102) );
  GTECH_OAI21 U135 ( .A(b[14]), .B(a[14]), .C(n99), .Z(n98) );
  GTECH_NAND2 U136 ( .A(a[14]), .B(b[14]), .Z(n99) );
  GTECH_OAI21 U137 ( .A(b[12]), .B(a[12]), .C(n105), .Z(n104) );
  GTECH_NAND2 U138 ( .A(a[12]), .B(b[12]), .Z(n105) );
  GTECH_OA21 U139 ( .A(n118), .B(n115), .C(n116), .Z(n123) );
  GTECH_OA21 U140 ( .A(n126), .B(n107), .C(n127), .Z(n116) );
  GTECH_OA21 U141 ( .A(n128), .B(n109), .C(n110), .Z(n126) );
  GTECH_OA21 U142 ( .A(n112), .B(n70), .C(n111), .Z(n128) );
  GTECH_OR4 U143 ( .A(n72), .B(n107), .C(n109), .D(n70), .Z(n115) );
  GTECH_OAI21 U144 ( .A(b[9]), .B(a[9]), .C(n111), .Z(n70) );
  GTECH_NAND2 U145 ( .A(a[9]), .B(b[9]), .Z(n111) );
  GTECH_OAI21 U146 ( .A(b[10]), .B(a[10]), .C(n110), .Z(n109) );
  GTECH_NAND2 U147 ( .A(a[10]), .B(b[10]), .Z(n110) );
  GTECH_OAI21 U148 ( .A(b[11]), .B(a[11]), .C(n127), .Z(n107) );
  GTECH_NAND2 U149 ( .A(a[11]), .B(b[11]), .Z(n127) );
  GTECH_OAI21 U150 ( .A(b[8]), .B(a[8]), .C(n112), .Z(n72) );
  GTECH_NAND2 U151 ( .A(a[8]), .B(b[8]), .Z(n112) );
  GTECH_AOI222 U152 ( .A(n119), .B(n129), .C(b[7]), .D(a[7]), .E(n130), .F(
        n131), .Z(n118) );
  GTECH_OAI21 U153 ( .A(n132), .B(n77), .C(n78), .Z(n131) );
  GTECH_OA21 U154 ( .A(n80), .B(n84), .C(n81), .Z(n132) );
  GTECH_NOT U155 ( .A(n74), .Z(n130) );
  GTECH_NOT U156 ( .A(n133), .Z(n129) );
  GTECH_AOI21 U157 ( .A(b[3]), .B(a[3]), .C(n134), .Z(n133) );
  GTECH_OA21 U158 ( .A(n135), .B(n136), .C(n85), .Z(n134) );
  GTECH_XOR2 U159 ( .A(a[3]), .B(b[3]), .Z(n85) );
  GTECH_NOT U160 ( .A(n89), .Z(n136) );
  GTECH_OA21 U161 ( .A(n137), .B(n92), .C(n93), .Z(n135) );
  GTECH_OA21 U162 ( .A(b[2]), .B(a[2]), .C(n89), .Z(n93) );
  GTECH_NAND2 U163 ( .A(a[2]), .B(b[2]), .Z(n89) );
  GTECH_ADD_AB U164 ( .A(a[1]), .B(b[1]), .COUT(n92) );
  GTECH_AND3 U165 ( .A(a[0]), .B(n91), .C(b[0]), .Z(n137) );
  GTECH_XOR2 U166 ( .A(a[1]), .B(b[1]), .Z(n91) );
  GTECH_NOT U167 ( .A(n121), .Z(n119) );
  GTECH_OR4 U168 ( .A(n83), .B(n77), .C(n80), .D(n74), .Z(n121) );
  GTECH_XNOR2 U169 ( .A(a[7]), .B(b[7]), .Z(n74) );
  GTECH_OAI21 U170 ( .A(b[5]), .B(a[5]), .C(n81), .Z(n80) );
  GTECH_NAND2 U171 ( .A(a[5]), .B(b[5]), .Z(n81) );
  GTECH_OAI21 U172 ( .A(b[6]), .B(a[6]), .C(n78), .Z(n77) );
  GTECH_NAND2 U173 ( .A(a[6]), .B(b[6]), .Z(n78) );
  GTECH_OAI21 U174 ( .A(b[4]), .B(a[4]), .C(n84), .Z(n83) );
  GTECH_NAND2 U175 ( .A(a[4]), .B(b[4]), .Z(n84) );
endmodule

