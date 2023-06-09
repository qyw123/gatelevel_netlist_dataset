
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
  GTECH_AOI21 U92 ( .A(n76), .B(n77), .C(n78), .Z(n75) );
  GTECH_XOR2 U93 ( .A(n77), .B(n76), .Z(sum[6]) );
  GTECH_AO22 U94 ( .A(b[5]), .B(a[5]), .C(n79), .D(n80), .Z(n76) );
  GTECH_XOR2 U95 ( .A(n80), .B(n79), .Z(sum[5]) );
  GTECH_OAI2N2 U96 ( .A(n81), .B(n82), .C(b[4]), .D(a[4]), .Z(n79) );
  GTECH_XNOR2 U97 ( .A(n83), .B(n81), .Z(sum[4]) );
  GTECH_XNOR2 U98 ( .A(n84), .B(n85), .Z(sum[3]) );
  GTECH_OA21 U99 ( .A(n86), .B(n87), .C(n88), .Z(n85) );
  GTECH_XNOR2 U100 ( .A(n86), .B(n89), .Z(sum[2]) );
  GTECH_AOI22 U101 ( .A(n90), .B(n91), .C(b[1]), .D(a[1]), .Z(n86) );
  GTECH_XOR2 U102 ( .A(n91), .B(n90), .Z(sum[1]) );
  GTECH_AO21 U103 ( .A(cin), .B(n92), .C(n93), .Z(n90) );
  GTECH_XNOR2 U104 ( .A(n94), .B(n95), .Z(sum[15]) );
  GTECH_OA21 U105 ( .A(n96), .B(n97), .C(n98), .Z(n95) );
  GTECH_XOR2 U106 ( .A(n97), .B(n96), .Z(sum[14]) );
  GTECH_AOI21 U107 ( .A(n99), .B(n100), .C(n101), .Z(n96) );
  GTECH_XOR2 U108 ( .A(n100), .B(n99), .Z(sum[13]) );
  GTECH_AO21 U109 ( .A(n102), .B(cout), .C(n103), .Z(n100) );
  GTECH_XOR2 U110 ( .A(cout), .B(n102), .Z(sum[12]) );
  GTECH_XNOR2 U111 ( .A(n104), .B(n105), .Z(sum[11]) );
  GTECH_OA21 U112 ( .A(n106), .B(n107), .C(n108), .Z(n105) );
  GTECH_XOR2 U113 ( .A(n107), .B(n106), .Z(sum[10]) );
  GTECH_AOI21 U114 ( .A(n70), .B(n71), .C(n109), .Z(n106) );
  GTECH_AO22 U115 ( .A(a[8]), .B(b[8]), .C(n110), .D(n72), .Z(n71) );
  GTECH_XOR2 U116 ( .A(cin), .B(n92), .Z(sum[0]) );
  GTECH_AO21 U117 ( .A(n111), .B(n110), .C(n112), .Z(cout) );
  GTECH_NOT U118 ( .A(n73), .Z(n110) );
  GTECH_OA21 U119 ( .A(n113), .B(n81), .C(n114), .Z(n73) );
  GTECH_OA21 U120 ( .A(n115), .B(n116), .C(n117), .Z(n81) );
  GTECH_NOT U121 ( .A(cin), .Z(n115) );
  GTECH_NOR3 U122 ( .A(n113), .B(n116), .C(n118), .Z(Pm) );
  GTECH_NAND5 U123 ( .A(n84), .B(n91), .C(n89), .D(n92), .E(n119), .Z(n116) );
  GTECH_OA21 U124 ( .A(b[0]), .B(a[0]), .C(n120), .Z(n92) );
  GTECH_NOT U125 ( .A(n121), .Z(n84) );
  GTECH_AO21 U126 ( .A(n111), .B(n122), .C(n112), .Z(Gm) );
  GTECH_OAI2N2 U127 ( .A(n123), .B(n124), .C(b[15]), .D(a[15]), .Z(n112) );
  GTECH_OA21 U128 ( .A(n125), .B(n97), .C(n98), .Z(n123) );
  GTECH_NOT U129 ( .A(n126), .Z(n97) );
  GTECH_AOI21 U130 ( .A(n99), .B(n103), .C(n101), .Z(n125) );
  GTECH_NOT U131 ( .A(n127), .Z(n103) );
  GTECH_NOT U132 ( .A(n128), .Z(n122) );
  GTECH_OA21 U133 ( .A(n113), .B(n117), .C(n114), .Z(n128) );
  GTECH_AOI22 U134 ( .A(b[11]), .B(a[11]), .C(n129), .D(n104), .Z(n114) );
  GTECH_NAND2 U135 ( .A(n130), .B(n108), .Z(n129) );
  GTECH_NAND2 U136 ( .A(a[10]), .B(b[10]), .Z(n108) );
  GTECH_AO21 U137 ( .A(n131), .B(n132), .C(n107), .Z(n130) );
  GTECH_NOT U138 ( .A(n133), .Z(n107) );
  GTECH_NAND3 U139 ( .A(a[8]), .B(n70), .C(b[8]), .Z(n132) );
  GTECH_NOT U140 ( .A(n109), .Z(n131) );
  GTECH_AND2 U141 ( .A(a[9]), .B(b[9]), .Z(n109) );
  GTECH_AOI222 U142 ( .A(a[7]), .B(b[7]), .C(n119), .D(n134), .E(n74), .F(n135), .Z(n117) );
  GTECH_AO21 U143 ( .A(n77), .B(n136), .C(n78), .Z(n135) );
  GTECH_AND2 U144 ( .A(b[6]), .B(a[6]), .Z(n78) );
  GTECH_AO22 U145 ( .A(a[4]), .B(n137), .C(b[5]), .D(a[5]), .Z(n136) );
  GTECH_AND2 U146 ( .A(n80), .B(b[4]), .Z(n137) );
  GTECH_OAI2N2 U147 ( .A(n138), .B(n121), .C(b[3]), .D(a[3]), .Z(n134) );
  GTECH_XNOR2 U148 ( .A(a[3]), .B(b[3]), .Z(n121) );
  GTECH_OA21 U149 ( .A(n139), .B(n87), .C(n88), .Z(n138) );
  GTECH_NOT U150 ( .A(n89), .Z(n87) );
  GTECH_OA21 U151 ( .A(b[2]), .B(a[2]), .C(n88), .Z(n89) );
  GTECH_NAND2 U152 ( .A(b[2]), .B(a[2]), .Z(n88) );
  GTECH_AOI22 U153 ( .A(b[1]), .B(a[1]), .C(n91), .D(n93), .Z(n139) );
  GTECH_NOT U154 ( .A(n120), .Z(n93) );
  GTECH_NAND2 U155 ( .A(a[0]), .B(b[0]), .Z(n120) );
  GTECH_XOR2 U156 ( .A(a[1]), .B(b[1]), .Z(n91) );
  GTECH_NOT U157 ( .A(n140), .Z(n119) );
  GTECH_NAND4 U158 ( .A(n74), .B(n77), .C(n80), .D(n83), .Z(n140) );
  GTECH_NOT U159 ( .A(n82), .Z(n83) );
  GTECH_XNOR2 U160 ( .A(a[4]), .B(b[4]), .Z(n82) );
  GTECH_XOR2 U161 ( .A(a[5]), .B(b[5]), .Z(n80) );
  GTECH_XOR2 U162 ( .A(a[6]), .B(b[6]), .Z(n77) );
  GTECH_XOR2 U163 ( .A(a[7]), .B(b[7]), .Z(n74) );
  GTECH_NAND4 U164 ( .A(n72), .B(n104), .C(n133), .D(n70), .Z(n113) );
  GTECH_XOR2 U165 ( .A(a[9]), .B(b[9]), .Z(n70) );
  GTECH_XOR2 U166 ( .A(a[10]), .B(b[10]), .Z(n133) );
  GTECH_XOR2 U167 ( .A(a[11]), .B(b[11]), .Z(n104) );
  GTECH_XOR2 U168 ( .A(a[8]), .B(b[8]), .Z(n72) );
  GTECH_NOT U169 ( .A(n118), .Z(n111) );
  GTECH_NAND4 U170 ( .A(n102), .B(n126), .C(n99), .D(n94), .Z(n118) );
  GTECH_NOT U171 ( .A(n124), .Z(n94) );
  GTECH_XNOR2 U172 ( .A(a[15]), .B(b[15]), .Z(n124) );
  GTECH_OA21 U173 ( .A(a[13]), .B(b[13]), .C(n141), .Z(n99) );
  GTECH_NOT U174 ( .A(n101), .Z(n141) );
  GTECH_AND2 U175 ( .A(b[13]), .B(a[13]), .Z(n101) );
  GTECH_OA21 U176 ( .A(a[14]), .B(b[14]), .C(n98), .Z(n126) );
  GTECH_NAND2 U177 ( .A(b[14]), .B(a[14]), .Z(n98) );
  GTECH_OA21 U178 ( .A(a[12]), .B(b[12]), .C(n127), .Z(n102) );
  GTECH_NAND2 U179 ( .A(a[12]), .B(b[12]), .Z(n127) );
endmodule

