
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
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142;

  GTECH_XOR2 U90 ( .A(n71), .B(n72), .Z(sum[9]) );
  GTECH_XOR2 U91 ( .A(n73), .B(n74), .Z(sum[8]) );
  GTECH_XNOR2 U92 ( .A(n75), .B(n76), .Z(sum[7]) );
  GTECH_OAI21 U93 ( .A(n77), .B(n78), .C(n79), .Z(n75) );
  GTECH_XOR2 U94 ( .A(n78), .B(n77), .Z(sum[6]) );
  GTECH_OA21 U95 ( .A(n80), .B(n81), .C(n82), .Z(n77) );
  GTECH_XOR2 U96 ( .A(n81), .B(n80), .Z(sum[5]) );
  GTECH_OA21 U97 ( .A(n83), .B(n84), .C(n85), .Z(n80) );
  GTECH_XNOR2 U98 ( .A(n84), .B(n86), .Z(sum[4]) );
  GTECH_XOR2 U99 ( .A(n87), .B(n88), .Z(sum[3]) );
  GTECH_OA21 U100 ( .A(n89), .B(n90), .C(n91), .Z(n88) );
  GTECH_XOR2 U101 ( .A(n89), .B(n90), .Z(sum[2]) );
  GTECH_AOI22 U102 ( .A(b[1]), .B(a[1]), .C(n92), .D(n93), .Z(n89) );
  GTECH_XOR2 U103 ( .A(n93), .B(n92), .Z(sum[1]) );
  GTECH_OAI2N2 U104 ( .A(n94), .B(n95), .C(a[0]), .D(b[0]), .Z(n92) );
  GTECH_NOT U105 ( .A(cin), .Z(n95) );
  GTECH_XNOR2 U106 ( .A(n96), .B(n97), .Z(sum[15]) );
  GTECH_OAI21 U107 ( .A(n98), .B(n99), .C(n100), .Z(n96) );
  GTECH_XOR2 U108 ( .A(n98), .B(n99), .Z(sum[14]) );
  GTECH_AOI2N2 U109 ( .A(b[13]), .B(a[13]), .C(n101), .D(n102), .Z(n98) );
  GTECH_XOR2 U110 ( .A(n102), .B(n101), .Z(sum[13]) );
  GTECH_OA21 U111 ( .A(n103), .B(n104), .C(n105), .Z(n101) );
  GTECH_NOT U112 ( .A(cout), .Z(n103) );
  GTECH_XNOR2 U113 ( .A(n104), .B(cout), .Z(sum[12]) );
  GTECH_XNOR2 U114 ( .A(n106), .B(n107), .Z(sum[11]) );
  GTECH_OAI21 U115 ( .A(n108), .B(n109), .C(n110), .Z(n106) );
  GTECH_XOR2 U116 ( .A(n109), .B(n108), .Z(sum[10]) );
  GTECH_AOI21 U117 ( .A(n72), .B(n71), .C(n111), .Z(n108) );
  GTECH_AO21 U118 ( .A(n74), .B(n73), .C(n112), .Z(n72) );
  GTECH_XNOR2 U119 ( .A(cin), .B(n94), .Z(sum[0]) );
  GTECH_AO21 U120 ( .A(n74), .B(n113), .C(n114), .Z(cout) );
  GTECH_AO21 U121 ( .A(n86), .B(n115), .C(n116), .Z(n74) );
  GTECH_NOT U122 ( .A(n83), .Z(n86) );
  GTECH_AOI21 U123 ( .A(n117), .B(cin), .C(n118), .Z(n83) );
  GTECH_NOT U124 ( .A(n119), .Z(Pm) );
  GTECH_NAND3 U125 ( .A(n113), .B(n117), .C(n115), .Z(n119) );
  GTECH_NOR5 U126 ( .A(n87), .B(n120), .C(n94), .D(n121), .E(n90), .Z(n117) );
  GTECH_XNOR2 U127 ( .A(a[0]), .B(b[0]), .Z(n94) );
  GTECH_AO21 U128 ( .A(n122), .B(n113), .C(n114), .Z(Gm) );
  GTECH_OAI21 U129 ( .A(n123), .B(n97), .C(n124), .Z(n114) );
  GTECH_OA21 U130 ( .A(n125), .B(n99), .C(n100), .Z(n123) );
  GTECH_AOI2N2 U131 ( .A(b[13]), .B(a[13]), .C(n102), .D(n105), .Z(n125) );
  GTECH_NOR4 U132 ( .A(n104), .B(n97), .C(n99), .D(n102), .Z(n113) );
  GTECH_XNOR2 U133 ( .A(a[13]), .B(b[13]), .Z(n102) );
  GTECH_OAI21 U134 ( .A(b[14]), .B(a[14]), .C(n100), .Z(n99) );
  GTECH_NAND2 U135 ( .A(b[14]), .B(a[14]), .Z(n100) );
  GTECH_OAI21 U136 ( .A(b[15]), .B(a[15]), .C(n124), .Z(n97) );
  GTECH_NAND2 U137 ( .A(a[15]), .B(b[15]), .Z(n124) );
  GTECH_OAI21 U138 ( .A(b[12]), .B(a[12]), .C(n105), .Z(n104) );
  GTECH_NAND2 U139 ( .A(b[12]), .B(a[12]), .Z(n105) );
  GTECH_AO21 U140 ( .A(n118), .B(n115), .C(n116), .Z(n122) );
  GTECH_OAI21 U141 ( .A(n126), .B(n107), .C(n127), .Z(n116) );
  GTECH_OA21 U142 ( .A(n128), .B(n109), .C(n110), .Z(n126) );
  GTECH_NOT U143 ( .A(n129), .Z(n109) );
  GTECH_OA21 U144 ( .A(n130), .B(n131), .C(n132), .Z(n128) );
  GTECH_NOT U145 ( .A(n71), .Z(n131) );
  GTECH_AND4 U146 ( .A(n73), .B(n133), .C(n129), .D(n71), .Z(n115) );
  GTECH_OA21 U147 ( .A(b[9]), .B(a[9]), .C(n132), .Z(n71) );
  GTECH_NOT U148 ( .A(n111), .Z(n132) );
  GTECH_AND2 U149 ( .A(a[9]), .B(b[9]), .Z(n111) );
  GTECH_OA21 U150 ( .A(b[10]), .B(a[10]), .C(n110), .Z(n129) );
  GTECH_NAND2 U151 ( .A(b[10]), .B(a[10]), .Z(n110) );
  GTECH_NOT U152 ( .A(n107), .Z(n133) );
  GTECH_OAI21 U153 ( .A(b[11]), .B(a[11]), .C(n127), .Z(n107) );
  GTECH_NAND2 U154 ( .A(a[11]), .B(b[11]), .Z(n127) );
  GTECH_OA21 U155 ( .A(b[8]), .B(a[8]), .C(n130), .Z(n73) );
  GTECH_NOT U156 ( .A(n112), .Z(n130) );
  GTECH_AND2 U157 ( .A(a[8]), .B(b[8]), .Z(n112) );
  GTECH_OAI21 U158 ( .A(n134), .B(n121), .C(n135), .Z(n118) );
  GTECH_OA21 U159 ( .A(n136), .B(n76), .C(n137), .Z(n135) );
  GTECH_OA21 U160 ( .A(n138), .B(n78), .C(n79), .Z(n136) );
  GTECH_OA21 U161 ( .A(n81), .B(n85), .C(n82), .Z(n138) );
  GTECH_NAND2 U162 ( .A(a[5]), .B(b[5]), .Z(n82) );
  GTECH_OR4 U163 ( .A(n84), .B(n76), .C(n78), .D(n81), .Z(n121) );
  GTECH_XNOR2 U164 ( .A(a[5]), .B(b[5]), .Z(n81) );
  GTECH_OAI21 U165 ( .A(b[6]), .B(a[6]), .C(n79), .Z(n78) );
  GTECH_NAND2 U166 ( .A(b[6]), .B(a[6]), .Z(n79) );
  GTECH_OAI21 U167 ( .A(b[7]), .B(a[7]), .C(n137), .Z(n76) );
  GTECH_NAND2 U168 ( .A(a[7]), .B(b[7]), .Z(n137) );
  GTECH_OAI21 U169 ( .A(b[4]), .B(a[4]), .C(n85), .Z(n84) );
  GTECH_NAND2 U170 ( .A(a[4]), .B(b[4]), .Z(n85) );
  GTECH_AOI2N2 U171 ( .A(b[3]), .B(a[3]), .C(n139), .D(n87), .Z(n134) );
  GTECH_XNOR2 U172 ( .A(a[3]), .B(b[3]), .Z(n87) );
  GTECH_OA21 U173 ( .A(n140), .B(n90), .C(n91), .Z(n139) );
  GTECH_OAI21 U174 ( .A(a[2]), .B(b[2]), .C(n91), .Z(n90) );
  GTECH_NAND2 U175 ( .A(b[2]), .B(a[2]), .Z(n91) );
  GTECH_AOI21 U176 ( .A(b[1]), .B(a[1]), .C(n141), .Z(n140) );
  GTECH_NOT U177 ( .A(n142), .Z(n141) );
  GTECH_NAND3 U178 ( .A(a[0]), .B(n93), .C(b[0]), .Z(n142) );
  GTECH_NOT U179 ( .A(n120), .Z(n93) );
  GTECH_XNOR2 U180 ( .A(a[1]), .B(b[1]), .Z(n120) );
endmodule

