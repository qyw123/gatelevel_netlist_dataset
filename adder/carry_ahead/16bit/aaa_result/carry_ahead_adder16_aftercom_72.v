
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
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146;

  GTECH_XOR2 U89 ( .A(n70), .B(n71), .Z(sum[9]) );
  GTECH_XOR2 U90 ( .A(n72), .B(n73), .Z(sum[8]) );
  GTECH_XOR2 U91 ( .A(n74), .B(n75), .Z(sum[7]) );
  GTECH_OA21 U92 ( .A(n76), .B(n77), .C(n78), .Z(n75) );
  GTECH_NOT U93 ( .A(n79), .Z(n76) );
  GTECH_XOR2 U94 ( .A(n80), .B(n79), .Z(sum[6]) );
  GTECH_AO21 U95 ( .A(n81), .B(n82), .C(n83), .Z(n79) );
  GTECH_XOR2 U96 ( .A(n82), .B(n81), .Z(sum[5]) );
  GTECH_AO21 U97 ( .A(n84), .B(n85), .C(n86), .Z(n81) );
  GTECH_XOR2 U98 ( .A(n85), .B(n84), .Z(sum[4]) );
  GTECH_XOR2 U99 ( .A(n87), .B(n88), .Z(sum[3]) );
  GTECH_OA21 U100 ( .A(n89), .B(n90), .C(n91), .Z(n88) );
  GTECH_XOR2 U101 ( .A(n89), .B(n90), .Z(sum[2]) );
  GTECH_AOI22 U102 ( .A(b[1]), .B(a[1]), .C(n92), .D(n93), .Z(n89) );
  GTECH_XOR2 U103 ( .A(n93), .B(n92), .Z(sum[1]) );
  GTECH_AO22 U104 ( .A(n94), .B(cin), .C(a[0]), .D(b[0]), .Z(n92) );
  GTECH_XNOR2 U105 ( .A(n95), .B(n96), .Z(sum[15]) );
  GTECH_OAI21 U106 ( .A(n97), .B(n98), .C(n99), .Z(n95) );
  GTECH_XOR2 U107 ( .A(n97), .B(n98), .Z(sum[14]) );
  GTECH_AOI2N2 U108 ( .A(b[13]), .B(a[13]), .C(n100), .D(n101), .Z(n97) );
  GTECH_XOR2 U109 ( .A(n101), .B(n100), .Z(sum[13]) );
  GTECH_OA21 U110 ( .A(n102), .B(n103), .C(n104), .Z(n100) );
  GTECH_NOT U111 ( .A(cout), .Z(n102) );
  GTECH_XNOR2 U112 ( .A(n103), .B(cout), .Z(sum[12]) );
  GTECH_XNOR2 U113 ( .A(n105), .B(n106), .Z(sum[11]) );
  GTECH_OAI21 U114 ( .A(n107), .B(n108), .C(n109), .Z(n105) );
  GTECH_NOT U115 ( .A(n110), .Z(n107) );
  GTECH_XOR2 U116 ( .A(n111), .B(n110), .Z(sum[10]) );
  GTECH_AO21 U117 ( .A(n71), .B(n70), .C(n112), .Z(n110) );
  GTECH_AO21 U118 ( .A(n73), .B(n72), .C(n113), .Z(n71) );
  GTECH_XNOR2 U119 ( .A(cin), .B(n114), .Z(sum[0]) );
  GTECH_AO21 U120 ( .A(n73), .B(n115), .C(n116), .Z(cout) );
  GTECH_AO21 U121 ( .A(n84), .B(n117), .C(n118), .Z(n73) );
  GTECH_AO21 U122 ( .A(n119), .B(cin), .C(n120), .Z(n84) );
  GTECH_NOT U123 ( .A(n121), .Z(Pm) );
  GTECH_NAND3 U124 ( .A(n115), .B(n119), .C(n117), .Z(n121) );
  GTECH_NOR5 U125 ( .A(n87), .B(n122), .C(n114), .D(n123), .E(n90), .Z(n119)
         );
  GTECH_NOT U126 ( .A(n94), .Z(n114) );
  GTECH_XOR2 U127 ( .A(a[0]), .B(b[0]), .Z(n94) );
  GTECH_AO21 U128 ( .A(n124), .B(n115), .C(n116), .Z(Gm) );
  GTECH_OAI21 U129 ( .A(n125), .B(n96), .C(n126), .Z(n116) );
  GTECH_OA21 U130 ( .A(n127), .B(n98), .C(n99), .Z(n125) );
  GTECH_AOI2N2 U131 ( .A(b[13]), .B(a[13]), .C(n101), .D(n104), .Z(n127) );
  GTECH_NOR4 U132 ( .A(n103), .B(n96), .C(n98), .D(n101), .Z(n115) );
  GTECH_XNOR2 U133 ( .A(a[13]), .B(b[13]), .Z(n101) );
  GTECH_OAI21 U134 ( .A(b[14]), .B(a[14]), .C(n99), .Z(n98) );
  GTECH_NAND2 U135 ( .A(b[14]), .B(a[14]), .Z(n99) );
  GTECH_OAI21 U136 ( .A(b[15]), .B(a[15]), .C(n126), .Z(n96) );
  GTECH_NAND2 U137 ( .A(a[15]), .B(b[15]), .Z(n126) );
  GTECH_OAI21 U138 ( .A(b[12]), .B(a[12]), .C(n104), .Z(n103) );
  GTECH_NAND2 U139 ( .A(b[12]), .B(a[12]), .Z(n104) );
  GTECH_AO21 U140 ( .A(n120), .B(n117), .C(n118), .Z(n124) );
  GTECH_OAI21 U141 ( .A(n128), .B(n106), .C(n129), .Z(n118) );
  GTECH_OA21 U142 ( .A(n130), .B(n108), .C(n109), .Z(n128) );
  GTECH_NOT U143 ( .A(n111), .Z(n108) );
  GTECH_OA21 U144 ( .A(n131), .B(n132), .C(n133), .Z(n130) );
  GTECH_NOT U145 ( .A(n70), .Z(n132) );
  GTECH_AND4 U146 ( .A(n72), .B(n134), .C(n111), .D(n70), .Z(n117) );
  GTECH_OA21 U147 ( .A(b[9]), .B(a[9]), .C(n133), .Z(n70) );
  GTECH_NOT U148 ( .A(n112), .Z(n133) );
  GTECH_AND2 U149 ( .A(a[9]), .B(b[9]), .Z(n112) );
  GTECH_OA21 U150 ( .A(b[10]), .B(a[10]), .C(n109), .Z(n111) );
  GTECH_NAND2 U151 ( .A(b[10]), .B(a[10]), .Z(n109) );
  GTECH_NOT U152 ( .A(n106), .Z(n134) );
  GTECH_OAI21 U153 ( .A(b[11]), .B(a[11]), .C(n129), .Z(n106) );
  GTECH_NAND2 U154 ( .A(a[11]), .B(b[11]), .Z(n129) );
  GTECH_OA21 U155 ( .A(b[8]), .B(a[8]), .C(n131), .Z(n72) );
  GTECH_NOT U156 ( .A(n113), .Z(n131) );
  GTECH_AND2 U157 ( .A(a[8]), .B(b[8]), .Z(n113) );
  GTECH_AO21 U158 ( .A(b[7]), .B(a[7]), .C(n135), .Z(n120) );
  GTECH_OAI22 U159 ( .A(n136), .B(n123), .C(n137), .D(n74), .Z(n135) );
  GTECH_OA21 U160 ( .A(n138), .B(n77), .C(n78), .Z(n137) );
  GTECH_OA21 U161 ( .A(n139), .B(n140), .C(n141), .Z(n138) );
  GTECH_OR4 U162 ( .A(n139), .B(n77), .C(n142), .D(n74), .Z(n123) );
  GTECH_XNOR2 U163 ( .A(a[7]), .B(b[7]), .Z(n74) );
  GTECH_NOT U164 ( .A(n85), .Z(n142) );
  GTECH_OA21 U165 ( .A(b[4]), .B(a[4]), .C(n140), .Z(n85) );
  GTECH_NOT U166 ( .A(n86), .Z(n140) );
  GTECH_AND2 U167 ( .A(a[4]), .B(b[4]), .Z(n86) );
  GTECH_NOT U168 ( .A(n80), .Z(n77) );
  GTECH_OA21 U169 ( .A(b[6]), .B(a[6]), .C(n78), .Z(n80) );
  GTECH_NAND2 U170 ( .A(b[6]), .B(a[6]), .Z(n78) );
  GTECH_NOT U171 ( .A(n82), .Z(n139) );
  GTECH_OA21 U172 ( .A(b[5]), .B(a[5]), .C(n141), .Z(n82) );
  GTECH_NOT U173 ( .A(n83), .Z(n141) );
  GTECH_AND2 U174 ( .A(a[5]), .B(b[5]), .Z(n83) );
  GTECH_AOI2N2 U175 ( .A(b[3]), .B(a[3]), .C(n143), .D(n87), .Z(n136) );
  GTECH_XNOR2 U176 ( .A(a[3]), .B(b[3]), .Z(n87) );
  GTECH_OA21 U177 ( .A(n144), .B(n90), .C(n91), .Z(n143) );
  GTECH_OAI21 U178 ( .A(a[2]), .B(b[2]), .C(n91), .Z(n90) );
  GTECH_NAND2 U179 ( .A(b[2]), .B(a[2]), .Z(n91) );
  GTECH_AOI21 U180 ( .A(b[1]), .B(a[1]), .C(n145), .Z(n144) );
  GTECH_NOT U181 ( .A(n146), .Z(n145) );
  GTECH_NAND3 U182 ( .A(a[0]), .B(n93), .C(b[0]), .Z(n146) );
  GTECH_NOT U183 ( .A(n122), .Z(n93) );
  GTECH_XNOR2 U184 ( .A(a[1]), .B(b[1]), .Z(n122) );
endmodule

