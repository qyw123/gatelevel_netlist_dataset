
module carry_ahead_adder16 ( a, b, cin, cout, sum, Gm, Pm );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout, Gm, Pm;
  wire   n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145;

  GTECH_XOR2 U93 ( .A(n74), .B(n75), .Z(sum[9]) );
  GTECH_XOR2 U94 ( .A(n76), .B(n77), .Z(sum[8]) );
  GTECH_XNOR2 U95 ( .A(n78), .B(n79), .Z(sum[7]) );
  GTECH_AOI21 U96 ( .A(n80), .B(n81), .C(n82), .Z(n79) );
  GTECH_XNOR2 U97 ( .A(n81), .B(n83), .Z(sum[6]) );
  GTECH_OAI21 U98 ( .A(n84), .B(n85), .C(n86), .Z(n81) );
  GTECH_NOT U99 ( .A(n87), .Z(n84) );
  GTECH_XNOR2 U100 ( .A(n87), .B(n85), .Z(sum[5]) );
  GTECH_OAI21 U101 ( .A(n88), .B(n89), .C(n90), .Z(n87) );
  GTECH_XOR2 U102 ( .A(n89), .B(n88), .Z(sum[4]) );
  GTECH_XNOR2 U103 ( .A(n91), .B(n92), .Z(sum[3]) );
  GTECH_AOI21 U104 ( .A(n93), .B(n94), .C(n95), .Z(n92) );
  GTECH_XNOR2 U105 ( .A(n94), .B(n96), .Z(sum[2]) );
  GTECH_OAI21 U106 ( .A(n97), .B(n98), .C(n99), .Z(n94) );
  GTECH_XOR2 U107 ( .A(n98), .B(n97), .Z(sum[1]) );
  GTECH_AND_NOT U108 ( .A(n100), .B(n101), .Z(n97) );
  GTECH_XNOR2 U109 ( .A(n102), .B(n103), .Z(sum[15]) );
  GTECH_AOI21 U110 ( .A(n104), .B(n105), .C(n106), .Z(n103) );
  GTECH_XOR2 U111 ( .A(n104), .B(n105), .Z(sum[14]) );
  GTECH_AO22 U112 ( .A(n107), .B(n108), .C(b[13]), .D(a[13]), .Z(n105) );
  GTECH_XOR2 U113 ( .A(n108), .B(n107), .Z(sum[13]) );
  GTECH_AO22 U114 ( .A(a[12]), .B(b[12]), .C(cout), .D(n109), .Z(n107) );
  GTECH_XOR2 U115 ( .A(n109), .B(cout), .Z(sum[12]) );
  GTECH_XOR2 U116 ( .A(n110), .B(n111), .Z(sum[11]) );
  GTECH_AOI21 U117 ( .A(n112), .B(n113), .C(n114), .Z(n111) );
  GTECH_XNOR2 U118 ( .A(n113), .B(n115), .Z(sum[10]) );
  GTECH_OAI21 U119 ( .A(n74), .B(n75), .C(n116), .Z(n113) );
  GTECH_AOI21 U120 ( .A(n77), .B(n76), .C(n117), .Z(n74) );
  GTECH_NOT U121 ( .A(n118), .Z(n117) );
  GTECH_NOT U122 ( .A(n119), .Z(n76) );
  GTECH_XNOR2 U123 ( .A(cin), .B(n120), .Z(sum[0]) );
  GTECH_AO21 U124 ( .A(n77), .B(n121), .C(n122), .Z(cout) );
  GTECH_OAI21 U125 ( .A(n88), .B(n123), .C(n124), .Z(n77) );
  GTECH_AND2 U126 ( .A(n125), .B(n126), .Z(n88) );
  GTECH_NAND5 U127 ( .A(n127), .B(n91), .C(n93), .D(n101), .E(n128), .Z(n125)
         );
  GTECH_AND_NOT U128 ( .A(cin), .B(n120), .Z(n101) );
  GTECH_NOR4 U129 ( .A(n129), .B(n130), .C(n120), .D(n123), .Z(Pm) );
  GTECH_OAI21 U130 ( .A(b[0]), .B(a[0]), .C(n100), .Z(n120) );
  GTECH_NAND4 U131 ( .A(n128), .B(n93), .C(n127), .D(n91), .Z(n129) );
  GTECH_NOT U132 ( .A(n98), .Z(n127) );
  GTECH_AO21 U133 ( .A(n131), .B(n121), .C(n122), .Z(Gm) );
  GTECH_AO22 U134 ( .A(n132), .B(n102), .C(b[15]), .D(a[15]), .Z(n122) );
  GTECH_AO21 U135 ( .A(n104), .B(n133), .C(n106), .Z(n132) );
  GTECH_AND2 U136 ( .A(a[14]), .B(b[14]), .Z(n106) );
  GTECH_AO21 U137 ( .A(b[13]), .B(a[13]), .C(n134), .Z(n133) );
  GTECH_AND3 U138 ( .A(a[12]), .B(n108), .C(b[12]), .Z(n134) );
  GTECH_NOT U139 ( .A(n130), .Z(n121) );
  GTECH_NAND4 U140 ( .A(n109), .B(n102), .C(n104), .D(n108), .Z(n130) );
  GTECH_XOR2 U141 ( .A(a[13]), .B(b[13]), .Z(n108) );
  GTECH_XOR2 U142 ( .A(a[14]), .B(b[14]), .Z(n104) );
  GTECH_XOR2 U143 ( .A(a[15]), .B(b[15]), .Z(n102) );
  GTECH_XOR2 U144 ( .A(a[12]), .B(b[12]), .Z(n109) );
  GTECH_OAI21 U145 ( .A(n123), .B(n126), .C(n124), .Z(n131) );
  GTECH_AOI2N2 U146 ( .A(b[11]), .B(a[11]), .C(n135), .D(n110), .Z(n124) );
  GTECH_AOI21 U147 ( .A(n112), .B(n136), .C(n114), .Z(n135) );
  GTECH_NOT U148 ( .A(n137), .Z(n114) );
  GTECH_OAI21 U149 ( .A(n75), .B(n118), .C(n116), .Z(n136) );
  GTECH_NOT U150 ( .A(n115), .Z(n112) );
  GTECH_AOI222 U151 ( .A(a[7]), .B(b[7]), .C(n128), .D(n138), .E(n78), .F(n139), .Z(n126) );
  GTECH_AO21 U152 ( .A(n140), .B(n80), .C(n82), .Z(n139) );
  GTECH_NOT U153 ( .A(n141), .Z(n82) );
  GTECH_NOT U154 ( .A(n83), .Z(n80) );
  GTECH_OAI21 U155 ( .A(n90), .B(n85), .C(n86), .Z(n140) );
  GTECH_NOT U156 ( .A(n142), .Z(n78) );
  GTECH_AO22 U157 ( .A(n143), .B(n91), .C(b[3]), .D(a[3]), .Z(n138) );
  GTECH_XOR2 U158 ( .A(a[3]), .B(b[3]), .Z(n91) );
  GTECH_AO21 U159 ( .A(n93), .B(n144), .C(n95), .Z(n143) );
  GTECH_NOT U160 ( .A(n145), .Z(n95) );
  GTECH_OAI21 U161 ( .A(n100), .B(n98), .C(n99), .Z(n144) );
  GTECH_OAI21 U162 ( .A(b[1]), .B(a[1]), .C(n99), .Z(n98) );
  GTECH_NAND2 U163 ( .A(b[1]), .B(a[1]), .Z(n99) );
  GTECH_NAND2 U164 ( .A(a[0]), .B(b[0]), .Z(n100) );
  GTECH_NOT U165 ( .A(n96), .Z(n93) );
  GTECH_OAI21 U166 ( .A(b[2]), .B(a[2]), .C(n145), .Z(n96) );
  GTECH_NAND2 U167 ( .A(b[2]), .B(a[2]), .Z(n145) );
  GTECH_NOR4 U168 ( .A(n89), .B(n83), .C(n85), .D(n142), .Z(n128) );
  GTECH_XNOR2 U169 ( .A(a[7]), .B(b[7]), .Z(n142) );
  GTECH_OAI21 U170 ( .A(b[5]), .B(a[5]), .C(n86), .Z(n85) );
  GTECH_NAND2 U171 ( .A(a[5]), .B(b[5]), .Z(n86) );
  GTECH_OAI21 U172 ( .A(b[6]), .B(a[6]), .C(n141), .Z(n83) );
  GTECH_NAND2 U173 ( .A(a[6]), .B(b[6]), .Z(n141) );
  GTECH_OAI21 U174 ( .A(b[4]), .B(a[4]), .C(n90), .Z(n89) );
  GTECH_NAND2 U175 ( .A(a[4]), .B(b[4]), .Z(n90) );
  GTECH_OR4 U176 ( .A(n119), .B(n115), .C(n75), .D(n110), .Z(n123) );
  GTECH_XNOR2 U177 ( .A(a[11]), .B(b[11]), .Z(n110) );
  GTECH_OAI21 U178 ( .A(b[9]), .B(a[9]), .C(n116), .Z(n75) );
  GTECH_NAND2 U179 ( .A(a[9]), .B(b[9]), .Z(n116) );
  GTECH_OAI21 U180 ( .A(b[10]), .B(a[10]), .C(n137), .Z(n115) );
  GTECH_NAND2 U181 ( .A(b[10]), .B(a[10]), .Z(n137) );
  GTECH_OAI21 U182 ( .A(b[8]), .B(a[8]), .C(n118), .Z(n119) );
  GTECH_NAND2 U183 ( .A(a[8]), .B(b[8]), .Z(n118) );
endmodule

