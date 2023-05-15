
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
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145;

  GTECH_XNOR2 U90 ( .A(n71), .B(n72), .Z(sum[9]) );
  GTECH_XOR2 U91 ( .A(n73), .B(n74), .Z(sum[8]) );
  GTECH_XNOR2 U92 ( .A(n75), .B(n76), .Z(sum[7]) );
  GTECH_AOI21 U93 ( .A(n77), .B(n78), .C(n79), .Z(n76) );
  GTECH_XOR2 U94 ( .A(n78), .B(n77), .Z(sum[6]) );
  GTECH_AO22 U95 ( .A(b[5]), .B(a[5]), .C(n80), .D(n81), .Z(n77) );
  GTECH_XOR2 U96 ( .A(n81), .B(n80), .Z(sum[5]) );
  GTECH_AO21 U97 ( .A(n82), .B(n83), .C(n84), .Z(n80) );
  GTECH_XOR2 U98 ( .A(n83), .B(n82), .Z(sum[4]) );
  GTECH_XOR2 U99 ( .A(n85), .B(n86), .Z(sum[3]) );
  GTECH_AOI21 U100 ( .A(n87), .B(n88), .C(n89), .Z(n86) );
  GTECH_XOR2 U101 ( .A(n88), .B(n87), .Z(sum[2]) );
  GTECH_AO22 U102 ( .A(b[1]), .B(a[1]), .C(n90), .D(n91), .Z(n87) );
  GTECH_XOR2 U103 ( .A(n91), .B(n90), .Z(sum[1]) );
  GTECH_AO22 U104 ( .A(n92), .B(cin), .C(a[0]), .D(b[0]), .Z(n90) );
  GTECH_XNOR2 U105 ( .A(n93), .B(n94), .Z(sum[15]) );
  GTECH_OAI21 U106 ( .A(n95), .B(n96), .C(n97), .Z(n93) );
  GTECH_XOR2 U107 ( .A(n95), .B(n96), .Z(sum[14]) );
  GTECH_AOI22 U108 ( .A(b[13]), .B(a[13]), .C(n98), .D(n99), .Z(n95) );
  GTECH_XNOR2 U109 ( .A(n100), .B(n98), .Z(sum[13]) );
  GTECH_OAI21 U110 ( .A(n101), .B(n102), .C(n103), .Z(n98) );
  GTECH_XOR2 U111 ( .A(n102), .B(n101), .Z(sum[12]) );
  GTECH_XNOR2 U112 ( .A(n104), .B(n105), .Z(sum[11]) );
  GTECH_AO21 U113 ( .A(n106), .B(n107), .C(n108), .Z(n104) );
  GTECH_NOT U114 ( .A(n109), .Z(n107) );
  GTECH_XNOR2 U115 ( .A(n109), .B(n106), .Z(sum[10]) );
  GTECH_OAI21 U116 ( .A(n71), .B(n110), .C(n111), .Z(n106) );
  GTECH_AOI2N2 U117 ( .A(a[8]), .B(b[8]), .C(n74), .D(n73), .Z(n71) );
  GTECH_XNOR2 U118 ( .A(n112), .B(n92), .Z(sum[0]) );
  GTECH_NOT U119 ( .A(n101), .Z(cout) );
  GTECH_OA21 U120 ( .A(n74), .B(n113), .C(n114), .Z(n101) );
  GTECH_AOI21 U121 ( .A(n82), .B(n115), .C(n116), .Z(n74) );
  GTECH_NOT U122 ( .A(n117), .Z(n115) );
  GTECH_OAI21 U123 ( .A(n118), .B(n112), .C(n119), .Z(n82) );
  GTECH_NOT U124 ( .A(cin), .Z(n112) );
  GTECH_NOR3 U125 ( .A(n113), .B(n118), .C(n117), .Z(Pm) );
  GTECH_NAND5 U126 ( .A(n88), .B(n91), .C(n120), .D(n121), .E(n92), .Z(n118)
         );
  GTECH_XOR2 U127 ( .A(a[0]), .B(b[0]), .Z(n92) );
  GTECH_NOT U128 ( .A(n85), .Z(n120) );
  GTECH_OAI21 U129 ( .A(n122), .B(n113), .C(n114), .Z(Gm) );
  GTECH_OA21 U130 ( .A(n123), .B(n94), .C(n124), .Z(n114) );
  GTECH_OA21 U131 ( .A(n125), .B(n96), .C(n97), .Z(n123) );
  GTECH_AOI2N2 U132 ( .A(b[13]), .B(a[13]), .C(n100), .D(n103), .Z(n125) );
  GTECH_OR4 U133 ( .A(n102), .B(n94), .C(n96), .D(n100), .Z(n113) );
  GTECH_NOT U134 ( .A(n99), .Z(n100) );
  GTECH_XOR2 U135 ( .A(a[13]), .B(b[13]), .Z(n99) );
  GTECH_OAI21 U136 ( .A(b[14]), .B(a[14]), .C(n97), .Z(n96) );
  GTECH_NOT U137 ( .A(n126), .Z(n97) );
  GTECH_AND2 U138 ( .A(a[14]), .B(b[14]), .Z(n126) );
  GTECH_OAI21 U139 ( .A(b[15]), .B(a[15]), .C(n124), .Z(n94) );
  GTECH_OR_NOT U140 ( .A(n127), .B(a[15]), .Z(n124) );
  GTECH_NOT U141 ( .A(b[15]), .Z(n127) );
  GTECH_OAI21 U142 ( .A(b[12]), .B(a[12]), .C(n103), .Z(n102) );
  GTECH_NOT U143 ( .A(n128), .Z(n103) );
  GTECH_AND2 U144 ( .A(b[12]), .B(a[12]), .Z(n128) );
  GTECH_OA21 U145 ( .A(n119), .B(n117), .C(n129), .Z(n122) );
  GTECH_NOT U146 ( .A(n116), .Z(n129) );
  GTECH_OAI21 U147 ( .A(n130), .B(n105), .C(n131), .Z(n116) );
  GTECH_AND2 U148 ( .A(n132), .B(n133), .Z(n130) );
  GTECH_AO21 U149 ( .A(n111), .B(n134), .C(n109), .Z(n132) );
  GTECH_NAND3 U150 ( .A(b[8]), .B(n72), .C(a[8]), .Z(n134) );
  GTECH_OR4 U151 ( .A(n105), .B(n109), .C(n110), .D(n73), .Z(n117) );
  GTECH_XNOR2 U152 ( .A(a[8]), .B(b[8]), .Z(n73) );
  GTECH_NOT U153 ( .A(n72), .Z(n110) );
  GTECH_OA21 U154 ( .A(b[9]), .B(a[9]), .C(n111), .Z(n72) );
  GTECH_OR_NOT U155 ( .A(n135), .B(a[9]), .Z(n111) );
  GTECH_NOT U156 ( .A(b[9]), .Z(n135) );
  GTECH_OAI21 U157 ( .A(b[10]), .B(a[10]), .C(n133), .Z(n109) );
  GTECH_NOT U158 ( .A(n108), .Z(n133) );
  GTECH_AND2 U159 ( .A(a[10]), .B(b[10]), .Z(n108) );
  GTECH_OAI21 U160 ( .A(b[11]), .B(a[11]), .C(n131), .Z(n105) );
  GTECH_OR_NOT U161 ( .A(n136), .B(a[11]), .Z(n131) );
  GTECH_NOT U162 ( .A(b[11]), .Z(n136) );
  GTECH_AOI222 U163 ( .A(n121), .B(n137), .C(b[7]), .D(a[7]), .E(n75), .F(n138), .Z(n119) );
  GTECH_AO21 U164 ( .A(n139), .B(n78), .C(n79), .Z(n138) );
  GTECH_AND2 U165 ( .A(b[6]), .B(a[6]), .Z(n79) );
  GTECH_AO22 U166 ( .A(n81), .B(n84), .C(b[5]), .D(a[5]), .Z(n139) );
  GTECH_OAI2N2 U167 ( .A(n140), .B(n85), .C(b[3]), .D(a[3]), .Z(n137) );
  GTECH_XNOR2 U168 ( .A(a[3]), .B(b[3]), .Z(n85) );
  GTECH_AOI21 U169 ( .A(n141), .B(n88), .C(n89), .Z(n140) );
  GTECH_AND2 U170 ( .A(b[2]), .B(a[2]), .Z(n89) );
  GTECH_XOR2 U171 ( .A(a[2]), .B(b[2]), .Z(n88) );
  GTECH_AO21 U172 ( .A(b[1]), .B(a[1]), .C(n142), .Z(n141) );
  GTECH_NOT U173 ( .A(n143), .Z(n142) );
  GTECH_NAND3 U174 ( .A(a[0]), .B(n91), .C(b[0]), .Z(n143) );
  GTECH_XNOR2 U175 ( .A(a[1]), .B(n144), .Z(n91) );
  GTECH_NOT U176 ( .A(b[1]), .Z(n144) );
  GTECH_AND4 U177 ( .A(n83), .B(n81), .C(n78), .D(n75), .Z(n121) );
  GTECH_XOR2 U178 ( .A(a[7]), .B(b[7]), .Z(n75) );
  GTECH_XOR2 U179 ( .A(a[6]), .B(b[6]), .Z(n78) );
  GTECH_XOR2 U180 ( .A(a[5]), .B(b[5]), .Z(n81) );
  GTECH_OA21 U181 ( .A(b[4]), .B(a[4]), .C(n145), .Z(n83) );
  GTECH_NOT U182 ( .A(n84), .Z(n145) );
  GTECH_AND2 U183 ( .A(b[4]), .B(a[4]), .Z(n84) );
endmodule

