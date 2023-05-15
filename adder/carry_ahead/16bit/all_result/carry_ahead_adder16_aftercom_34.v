
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
         n133, n134, n135, n136, n137, n138;

  GTECH_XOR2 U90 ( .A(n71), .B(n72), .Z(sum[9]) );
  GTECH_XOR2 U91 ( .A(n73), .B(n74), .Z(sum[8]) );
  GTECH_XNOR2 U92 ( .A(n75), .B(n76), .Z(sum[7]) );
  GTECH_OAI21 U93 ( .A(n77), .B(n78), .C(n79), .Z(n75) );
  GTECH_XOR2 U94 ( .A(n78), .B(n77), .Z(sum[6]) );
  GTECH_OA21 U95 ( .A(n80), .B(n81), .C(n82), .Z(n77) );
  GTECH_XOR2 U96 ( .A(n81), .B(n80), .Z(sum[5]) );
  GTECH_OA21 U97 ( .A(n83), .B(n84), .C(n85), .Z(n80) );
  GTECH_XOR2 U98 ( .A(n84), .B(n83), .Z(sum[4]) );
  GTECH_XOR2 U99 ( .A(n86), .B(n87), .Z(sum[3]) );
  GTECH_OA21 U100 ( .A(n88), .B(n89), .C(n90), .Z(n87) );
  GTECH_XNOR2 U101 ( .A(n88), .B(n91), .Z(sum[2]) );
  GTECH_OA21 U102 ( .A(n92), .B(n93), .C(n94), .Z(n88) );
  GTECH_XOR2 U103 ( .A(n93), .B(n92), .Z(sum[1]) );
  GTECH_AND_NOT U104 ( .A(n95), .B(n96), .Z(n92) );
  GTECH_XOR2 U105 ( .A(n97), .B(n98), .Z(sum[15]) );
  GTECH_OA21 U106 ( .A(n99), .B(n100), .C(n101), .Z(n98) );
  GTECH_XOR2 U107 ( .A(n100), .B(n99), .Z(sum[14]) );
  GTECH_OA21 U108 ( .A(n102), .B(n103), .C(n104), .Z(n99) );
  GTECH_XOR2 U109 ( .A(n103), .B(n102), .Z(sum[13]) );
  GTECH_OA21 U110 ( .A(n105), .B(n106), .C(n107), .Z(n102) );
  GTECH_XOR2 U111 ( .A(n105), .B(n106), .Z(sum[12]) );
  GTECH_NOT U112 ( .A(cout), .Z(n105) );
  GTECH_XOR2 U113 ( .A(n108), .B(n109), .Z(sum[11]) );
  GTECH_OA21 U114 ( .A(n110), .B(n111), .C(n112), .Z(n109) );
  GTECH_XOR2 U115 ( .A(n111), .B(n110), .Z(sum[10]) );
  GTECH_OA21 U116 ( .A(n72), .B(n71), .C(n113), .Z(n110) );
  GTECH_OA21 U117 ( .A(n74), .B(n73), .C(n114), .Z(n72) );
  GTECH_XNOR2 U118 ( .A(cin), .B(n115), .Z(sum[0]) );
  GTECH_OAI21 U119 ( .A(n74), .B(n116), .C(n117), .Z(cout) );
  GTECH_OA21 U120 ( .A(n83), .B(n118), .C(n119), .Z(n74) );
  GTECH_AND2 U121 ( .A(n120), .B(n121), .Z(n83) );
  GTECH_NAND5 U122 ( .A(n122), .B(n123), .C(n91), .D(n96), .E(n124), .Z(n120)
         );
  GTECH_AND_NOT U123 ( .A(cin), .B(n115), .Z(n96) );
  GTECH_NOR4 U124 ( .A(n118), .B(n115), .C(n116), .D(n125), .Z(Pm) );
  GTECH_NAND4 U125 ( .A(n124), .B(n91), .C(n122), .D(n123), .Z(n125) );
  GTECH_NOT U126 ( .A(n86), .Z(n122) );
  GTECH_OAI21 U127 ( .A(b[0]), .B(a[0]), .C(n95), .Z(n115) );
  GTECH_OAI21 U128 ( .A(n126), .B(n116), .C(n117), .Z(Gm) );
  GTECH_AOI2N2 U129 ( .A(b[15]), .B(a[15]), .C(n127), .D(n97), .Z(n117) );
  GTECH_OA21 U130 ( .A(n128), .B(n100), .C(n101), .Z(n127) );
  GTECH_OA21 U131 ( .A(n103), .B(n107), .C(n104), .Z(n128) );
  GTECH_NAND2 U132 ( .A(b[13]), .B(a[13]), .Z(n104) );
  GTECH_OR4 U133 ( .A(n106), .B(n100), .C(n97), .D(n103), .Z(n116) );
  GTECH_XNOR2 U134 ( .A(a[13]), .B(b[13]), .Z(n103) );
  GTECH_XNOR2 U135 ( .A(a[15]), .B(b[15]), .Z(n97) );
  GTECH_OAI21 U136 ( .A(b[14]), .B(a[14]), .C(n101), .Z(n100) );
  GTECH_NAND2 U137 ( .A(b[14]), .B(a[14]), .Z(n101) );
  GTECH_OAI21 U138 ( .A(b[12]), .B(a[12]), .C(n107), .Z(n106) );
  GTECH_NAND2 U139 ( .A(b[12]), .B(a[12]), .Z(n107) );
  GTECH_OA21 U140 ( .A(n121), .B(n118), .C(n119), .Z(n126) );
  GTECH_AOI2N2 U141 ( .A(b[11]), .B(a[11]), .C(n129), .D(n108), .Z(n119) );
  GTECH_OA21 U142 ( .A(n130), .B(n111), .C(n112), .Z(n129) );
  GTECH_OA21 U143 ( .A(n71), .B(n114), .C(n113), .Z(n130) );
  GTECH_NAND2 U144 ( .A(b[9]), .B(a[9]), .Z(n113) );
  GTECH_OR4 U145 ( .A(n73), .B(n111), .C(n108), .D(n71), .Z(n118) );
  GTECH_XNOR2 U146 ( .A(a[9]), .B(b[9]), .Z(n71) );
  GTECH_XNOR2 U147 ( .A(a[11]), .B(b[11]), .Z(n108) );
  GTECH_OAI21 U148 ( .A(b[10]), .B(a[10]), .C(n112), .Z(n111) );
  GTECH_NAND2 U149 ( .A(b[10]), .B(a[10]), .Z(n112) );
  GTECH_OAI21 U150 ( .A(b[8]), .B(a[8]), .C(n114), .Z(n73) );
  GTECH_NAND2 U151 ( .A(b[8]), .B(a[8]), .Z(n114) );
  GTECH_OA21 U152 ( .A(n131), .B(n132), .C(n133), .Z(n121) );
  GTECH_OA21 U153 ( .A(n134), .B(n76), .C(n135), .Z(n133) );
  GTECH_OA21 U154 ( .A(n136), .B(n78), .C(n79), .Z(n134) );
  GTECH_OA21 U155 ( .A(n81), .B(n85), .C(n82), .Z(n136) );
  GTECH_NOT U156 ( .A(n124), .Z(n132) );
  GTECH_NOR4 U157 ( .A(n84), .B(n76), .C(n78), .D(n81), .Z(n124) );
  GTECH_OAI21 U158 ( .A(b[5]), .B(a[5]), .C(n82), .Z(n81) );
  GTECH_NAND2 U159 ( .A(b[5]), .B(a[5]), .Z(n82) );
  GTECH_OAI21 U160 ( .A(b[6]), .B(a[6]), .C(n79), .Z(n78) );
  GTECH_NAND2 U161 ( .A(a[6]), .B(b[6]), .Z(n79) );
  GTECH_OAI21 U162 ( .A(b[7]), .B(a[7]), .C(n135), .Z(n76) );
  GTECH_NAND2 U163 ( .A(b[7]), .B(a[7]), .Z(n135) );
  GTECH_OAI21 U164 ( .A(b[4]), .B(a[4]), .C(n85), .Z(n84) );
  GTECH_NAND2 U165 ( .A(b[4]), .B(a[4]), .Z(n85) );
  GTECH_AOI2N2 U166 ( .A(b[3]), .B(a[3]), .C(n137), .D(n86), .Z(n131) );
  GTECH_XNOR2 U167 ( .A(a[3]), .B(b[3]), .Z(n86) );
  GTECH_OA21 U168 ( .A(n138), .B(n89), .C(n90), .Z(n137) );
  GTECH_NOT U169 ( .A(n91), .Z(n89) );
  GTECH_OA21 U170 ( .A(a[2]), .B(b[2]), .C(n90), .Z(n91) );
  GTECH_NAND2 U171 ( .A(b[2]), .B(a[2]), .Z(n90) );
  GTECH_OA21 U172 ( .A(n93), .B(n95), .C(n94), .Z(n138) );
  GTECH_NAND2 U173 ( .A(a[1]), .B(b[1]), .Z(n94) );
  GTECH_NAND2 U174 ( .A(a[0]), .B(b[0]), .Z(n95) );
  GTECH_NOT U175 ( .A(n123), .Z(n93) );
  GTECH_XOR2 U176 ( .A(a[1]), .B(b[1]), .Z(n123) );
endmodule

