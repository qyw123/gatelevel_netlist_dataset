
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
         n132, n133, n134, n135, n136, n137, n138, n139, n140;

  GTECH_XOR2 U89 ( .A(n70), .B(n71), .Z(sum[9]) );
  GTECH_XOR2 U90 ( .A(n72), .B(n73), .Z(sum[8]) );
  GTECH_XNOR2 U91 ( .A(n74), .B(n75), .Z(sum[7]) );
  GTECH_AOI21 U92 ( .A(n76), .B(n77), .C(n78), .Z(n75) );
  GTECH_XOR2 U93 ( .A(n77), .B(n76), .Z(sum[6]) );
  GTECH_AO22 U94 ( .A(b[5]), .B(a[5]), .C(n79), .D(n80), .Z(n76) );
  GTECH_XOR2 U95 ( .A(n80), .B(n79), .Z(sum[5]) );
  GTECH_AO22 U96 ( .A(n81), .B(n82), .C(b[4]), .D(a[4]), .Z(n79) );
  GTECH_XNOR2 U97 ( .A(n82), .B(n83), .Z(sum[4]) );
  GTECH_XOR2 U98 ( .A(n84), .B(n85), .Z(sum[3]) );
  GTECH_AOI21 U99 ( .A(n86), .B(n87), .C(n88), .Z(n85) );
  GTECH_XOR2 U100 ( .A(n87), .B(n86), .Z(sum[2]) );
  GTECH_AO22 U101 ( .A(b[1]), .B(a[1]), .C(n89), .D(n90), .Z(n86) );
  GTECH_XOR2 U102 ( .A(n90), .B(n89), .Z(sum[1]) );
  GTECH_AO22 U103 ( .A(n91), .B(cin), .C(a[0]), .D(b[0]), .Z(n89) );
  GTECH_XNOR2 U104 ( .A(n92), .B(n93), .Z(sum[15]) );
  GTECH_OAI21 U105 ( .A(n94), .B(n95), .C(n96), .Z(n92) );
  GTECH_XOR2 U106 ( .A(n94), .B(n95), .Z(sum[14]) );
  GTECH_AOI2N2 U107 ( .A(b[13]), .B(a[13]), .C(n97), .D(n98), .Z(n94) );
  GTECH_XOR2 U108 ( .A(n98), .B(n97), .Z(sum[13]) );
  GTECH_OA21 U109 ( .A(n99), .B(n100), .C(n101), .Z(n97) );
  GTECH_XOR2 U110 ( .A(n100), .B(n99), .Z(sum[12]) );
  GTECH_XNOR2 U111 ( .A(n102), .B(n103), .Z(sum[11]) );
  GTECH_AOI21 U112 ( .A(n104), .B(n105), .C(n106), .Z(n103) );
  GTECH_XNOR2 U113 ( .A(n107), .B(n104), .Z(sum[10]) );
  GTECH_AO21 U114 ( .A(n70), .B(n71), .C(n108), .Z(n104) );
  GTECH_AO21 U115 ( .A(n109), .B(n110), .C(n111), .Z(n70) );
  GTECH_XNOR2 U116 ( .A(n112), .B(n91), .Z(sum[0]) );
  GTECH_NOT U117 ( .A(n99), .Z(cout) );
  GTECH_AOI21 U118 ( .A(n109), .B(n113), .C(n114), .Z(n99) );
  GTECH_NOT U119 ( .A(n73), .Z(n109) );
  GTECH_OA21 U120 ( .A(n83), .B(n115), .C(n116), .Z(n73) );
  GTECH_NOT U121 ( .A(n81), .Z(n83) );
  GTECH_OAI21 U122 ( .A(n117), .B(n112), .C(n118), .Z(n81) );
  GTECH_NOT U123 ( .A(cin), .Z(n112) );
  GTECH_NOR3 U124 ( .A(n115), .B(n117), .C(n119), .Z(Pm) );
  GTECH_NAND5 U125 ( .A(n87), .B(n90), .C(n120), .D(n121), .E(n91), .Z(n117)
         );
  GTECH_XOR2 U126 ( .A(a[0]), .B(b[0]), .Z(n91) );
  GTECH_NOT U127 ( .A(n84), .Z(n120) );
  GTECH_AO21 U128 ( .A(n122), .B(n113), .C(n114), .Z(Gm) );
  GTECH_OAI21 U129 ( .A(n123), .B(n93), .C(n124), .Z(n114) );
  GTECH_OA21 U130 ( .A(n125), .B(n95), .C(n96), .Z(n123) );
  GTECH_AOI2N2 U131 ( .A(b[13]), .B(a[13]), .C(n98), .D(n101), .Z(n125) );
  GTECH_NOT U132 ( .A(n119), .Z(n113) );
  GTECH_OR4 U133 ( .A(n100), .B(n93), .C(n95), .D(n98), .Z(n119) );
  GTECH_XNOR2 U134 ( .A(a[13]), .B(b[13]), .Z(n98) );
  GTECH_OAI21 U135 ( .A(b[14]), .B(a[14]), .C(n96), .Z(n95) );
  GTECH_NOT U136 ( .A(n126), .Z(n96) );
  GTECH_ADD_AB U137 ( .A(a[14]), .B(b[14]), .COUT(n126) );
  GTECH_OAI21 U138 ( .A(b[15]), .B(a[15]), .C(n124), .Z(n93) );
  GTECH_OR_NOT U139 ( .A(n127), .B(a[15]), .Z(n124) );
  GTECH_NOT U140 ( .A(b[15]), .Z(n127) );
  GTECH_OAI21 U141 ( .A(b[12]), .B(a[12]), .C(n101), .Z(n100) );
  GTECH_OR_NOT U142 ( .A(n128), .B(b[12]), .Z(n101) );
  GTECH_NOT U143 ( .A(a[12]), .Z(n128) );
  GTECH_OAI21 U144 ( .A(n118), .B(n115), .C(n116), .Z(n122) );
  GTECH_AOI22 U145 ( .A(b[11]), .B(a[11]), .C(n129), .D(n102), .Z(n116) );
  GTECH_OAI21 U146 ( .A(n130), .B(n107), .C(n131), .Z(n129) );
  GTECH_AOI21 U147 ( .A(n71), .B(n111), .C(n108), .Z(n130) );
  GTECH_NAND4 U148 ( .A(n110), .B(n105), .C(n71), .D(n102), .Z(n115) );
  GTECH_XOR2 U149 ( .A(a[11]), .B(b[11]), .Z(n102) );
  GTECH_OA21 U150 ( .A(b[9]), .B(a[9]), .C(n132), .Z(n71) );
  GTECH_NOT U151 ( .A(n108), .Z(n132) );
  GTECH_ADD_AB U152 ( .A(b[9]), .B(a[9]), .COUT(n108) );
  GTECH_NOT U153 ( .A(n107), .Z(n105) );
  GTECH_OAI21 U154 ( .A(b[10]), .B(a[10]), .C(n131), .Z(n107) );
  GTECH_NOT U155 ( .A(n106), .Z(n131) );
  GTECH_ADD_AB U156 ( .A(a[10]), .B(b[10]), .COUT(n106) );
  GTECH_NOT U157 ( .A(n72), .Z(n110) );
  GTECH_OAI21 U158 ( .A(b[8]), .B(a[8]), .C(n133), .Z(n72) );
  GTECH_NOT U159 ( .A(n111), .Z(n133) );
  GTECH_ADD_AB U160 ( .A(b[8]), .B(a[8]), .COUT(n111) );
  GTECH_AOI222 U161 ( .A(a[7]), .B(b[7]), .C(n121), .D(n134), .E(n74), .F(n135), .Z(n118) );
  GTECH_AO21 U162 ( .A(n136), .B(n77), .C(n78), .Z(n135) );
  GTECH_ADD_AB U163 ( .A(b[6]), .B(a[6]), .COUT(n78) );
  GTECH_AO21 U164 ( .A(b[5]), .B(a[5]), .C(n137), .Z(n136) );
  GTECH_AND3 U165 ( .A(b[4]), .B(n80), .C(a[4]), .Z(n137) );
  GTECH_OAI2N2 U166 ( .A(n138), .B(n84), .C(b[3]), .D(a[3]), .Z(n134) );
  GTECH_XNOR2 U167 ( .A(a[3]), .B(b[3]), .Z(n84) );
  GTECH_AOI21 U168 ( .A(n139), .B(n87), .C(n88), .Z(n138) );
  GTECH_ADD_AB U169 ( .A(b[2]), .B(a[2]), .COUT(n88) );
  GTECH_XOR2 U170 ( .A(a[2]), .B(b[2]), .Z(n87) );
  GTECH_AO21 U171 ( .A(b[1]), .B(a[1]), .C(n140), .Z(n139) );
  GTECH_AND3 U172 ( .A(a[0]), .B(n90), .C(b[0]), .Z(n140) );
  GTECH_XOR2 U173 ( .A(a[1]), .B(b[1]), .Z(n90) );
  GTECH_AND4 U174 ( .A(n82), .B(n80), .C(n77), .D(n74), .Z(n121) );
  GTECH_XOR2 U175 ( .A(a[7]), .B(b[7]), .Z(n74) );
  GTECH_XOR2 U176 ( .A(a[6]), .B(b[6]), .Z(n77) );
  GTECH_XOR2 U177 ( .A(a[5]), .B(b[5]), .Z(n80) );
  GTECH_XOR2 U178 ( .A(a[4]), .B(b[4]), .Z(n82) );
endmodule

