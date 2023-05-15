
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
  GTECH_XOR2 U92 ( .A(n75), .B(n76), .Z(sum[7]) );
  GTECH_OA21 U93 ( .A(n77), .B(n78), .C(n79), .Z(n76) );
  GTECH_XOR2 U94 ( .A(n78), .B(n77), .Z(sum[6]) );
  GTECH_OA21 U95 ( .A(n80), .B(n81), .C(n82), .Z(n77) );
  GTECH_XOR2 U96 ( .A(n81), .B(n80), .Z(sum[5]) );
  GTECH_OA21 U97 ( .A(n83), .B(n84), .C(n85), .Z(n80) );
  GTECH_XOR2 U98 ( .A(n83), .B(n84), .Z(sum[4]) );
  GTECH_XNOR2 U99 ( .A(n86), .B(n87), .Z(sum[3]) );
  GTECH_AOI21 U100 ( .A(n88), .B(n89), .C(n90), .Z(n87) );
  GTECH_XOR2 U101 ( .A(n89), .B(n88), .Z(sum[2]) );
  GTECH_OAI21 U102 ( .A(n91), .B(n92), .C(n93), .Z(n88) );
  GTECH_XOR2 U103 ( .A(n92), .B(n91), .Z(sum[1]) );
  GTECH_AOI22 U104 ( .A(a[0]), .B(b[0]), .C(n94), .D(cin), .Z(n91) );
  GTECH_NOT U105 ( .A(n95), .Z(n92) );
  GTECH_XOR2 U106 ( .A(n96), .B(n97), .Z(sum[15]) );
  GTECH_AOI21 U107 ( .A(n98), .B(n99), .C(n100), .Z(n97) );
  GTECH_NOT U108 ( .A(n101), .Z(n99) );
  GTECH_XNOR2 U109 ( .A(n101), .B(n98), .Z(sum[14]) );
  GTECH_OAI21 U110 ( .A(n102), .B(n103), .C(n104), .Z(n98) );
  GTECH_XOR2 U111 ( .A(n103), .B(n102), .Z(sum[13]) );
  GTECH_AOI2N2 U112 ( .A(a[12]), .B(b[12]), .C(n105), .D(n106), .Z(n102) );
  GTECH_XOR2 U113 ( .A(n106), .B(n105), .Z(sum[12]) );
  GTECH_XOR2 U114 ( .A(n107), .B(n108), .Z(sum[11]) );
  GTECH_OA21 U115 ( .A(n109), .B(n110), .C(n111), .Z(n108) );
  GTECH_XOR2 U116 ( .A(n110), .B(n109), .Z(sum[10]) );
  GTECH_OA21 U117 ( .A(n72), .B(n71), .C(n112), .Z(n109) );
  GTECH_OA21 U118 ( .A(n74), .B(n73), .C(n113), .Z(n72) );
  GTECH_XNOR2 U119 ( .A(n114), .B(n94), .Z(sum[0]) );
  GTECH_NOT U120 ( .A(n105), .Z(cout) );
  GTECH_OA21 U121 ( .A(n74), .B(n115), .C(n116), .Z(n105) );
  GTECH_OA21 U122 ( .A(n83), .B(n117), .C(n118), .Z(n74) );
  GTECH_OA21 U123 ( .A(n119), .B(n114), .C(n120), .Z(n83) );
  GTECH_NOT U124 ( .A(cin), .Z(n114) );
  GTECH_NOR3 U125 ( .A(n117), .B(n119), .C(n115), .Z(Pm) );
  GTECH_NAND5 U126 ( .A(n89), .B(n95), .C(n86), .D(n121), .E(n94), .Z(n119) );
  GTECH_XOR2 U127 ( .A(a[0]), .B(b[0]), .Z(n94) );
  GTECH_OAI21 U128 ( .A(n122), .B(n115), .C(n116), .Z(Gm) );
  GTECH_AOI21 U129 ( .A(b[15]), .B(a[15]), .C(n123), .Z(n116) );
  GTECH_OA21 U130 ( .A(n124), .B(n100), .C(n125), .Z(n123) );
  GTECH_NOT U131 ( .A(n96), .Z(n125) );
  GTECH_NOT U132 ( .A(n126), .Z(n100) );
  GTECH_AOI21 U133 ( .A(n127), .B(n104), .C(n101), .Z(n124) );
  GTECH_NAND2 U134 ( .A(b[13]), .B(a[13]), .Z(n104) );
  GTECH_NAND3 U135 ( .A(a[12]), .B(n128), .C(b[12]), .Z(n127) );
  GTECH_OR4 U136 ( .A(n101), .B(n106), .C(n96), .D(n103), .Z(n115) );
  GTECH_NOT U137 ( .A(n128), .Z(n103) );
  GTECH_XOR2 U138 ( .A(a[13]), .B(b[13]), .Z(n128) );
  GTECH_XNOR2 U139 ( .A(a[15]), .B(b[15]), .Z(n96) );
  GTECH_XNOR2 U140 ( .A(a[12]), .B(b[12]), .Z(n106) );
  GTECH_OAI21 U141 ( .A(b[14]), .B(a[14]), .C(n126), .Z(n101) );
  GTECH_NAND2 U142 ( .A(a[14]), .B(b[14]), .Z(n126) );
  GTECH_OA21 U143 ( .A(n120), .B(n117), .C(n118), .Z(n122) );
  GTECH_AOI2N2 U144 ( .A(b[11]), .B(a[11]), .C(n129), .D(n107), .Z(n118) );
  GTECH_OA21 U145 ( .A(n130), .B(n110), .C(n111), .Z(n129) );
  GTECH_OA21 U146 ( .A(n71), .B(n113), .C(n112), .Z(n130) );
  GTECH_NAND2 U147 ( .A(a[9]), .B(b[9]), .Z(n112) );
  GTECH_OR4 U148 ( .A(n73), .B(n110), .C(n107), .D(n71), .Z(n117) );
  GTECH_XNOR2 U149 ( .A(a[9]), .B(b[9]), .Z(n71) );
  GTECH_XNOR2 U150 ( .A(a[11]), .B(b[11]), .Z(n107) );
  GTECH_OAI21 U151 ( .A(b[10]), .B(a[10]), .C(n111), .Z(n110) );
  GTECH_NAND2 U152 ( .A(b[10]), .B(a[10]), .Z(n111) );
  GTECH_OAI21 U153 ( .A(b[8]), .B(a[8]), .C(n113), .Z(n73) );
  GTECH_NAND2 U154 ( .A(a[8]), .B(b[8]), .Z(n113) );
  GTECH_AOI222 U155 ( .A(a[7]), .B(b[7]), .C(n121), .D(n131), .E(n132), .F(
        n133), .Z(n120) );
  GTECH_OAI21 U156 ( .A(n134), .B(n78), .C(n79), .Z(n133) );
  GTECH_OA21 U157 ( .A(n81), .B(n85), .C(n82), .Z(n134) );
  GTECH_NAND2 U158 ( .A(a[5]), .B(b[5]), .Z(n82) );
  GTECH_NOT U159 ( .A(n75), .Z(n132) );
  GTECH_AO21 U160 ( .A(b[3]), .B(a[3]), .C(n135), .Z(n131) );
  GTECH_OA21 U161 ( .A(n136), .B(n90), .C(n86), .Z(n135) );
  GTECH_XOR2 U162 ( .A(a[3]), .B(b[3]), .Z(n86) );
  GTECH_AND2 U163 ( .A(a[2]), .B(b[2]), .Z(n90) );
  GTECH_AOI21 U164 ( .A(n137), .B(n93), .C(n138), .Z(n136) );
  GTECH_NOT U165 ( .A(n89), .Z(n138) );
  GTECH_XOR2 U166 ( .A(a[2]), .B(b[2]), .Z(n89) );
  GTECH_NAND2 U167 ( .A(a[1]), .B(b[1]), .Z(n93) );
  GTECH_NAND3 U168 ( .A(a[0]), .B(n95), .C(b[0]), .Z(n137) );
  GTECH_XOR2 U169 ( .A(a[1]), .B(b[1]), .Z(n95) );
  GTECH_NOR4 U170 ( .A(n84), .B(n78), .C(n75), .D(n81), .Z(n121) );
  GTECH_XNOR2 U171 ( .A(a[5]), .B(b[5]), .Z(n81) );
  GTECH_XNOR2 U172 ( .A(a[7]), .B(b[7]), .Z(n75) );
  GTECH_OAI21 U173 ( .A(b[6]), .B(a[6]), .C(n79), .Z(n78) );
  GTECH_NAND2 U174 ( .A(b[6]), .B(a[6]), .Z(n79) );
  GTECH_OAI21 U175 ( .A(a[4]), .B(b[4]), .C(n85), .Z(n84) );
  GTECH_NAND2 U176 ( .A(a[4]), .B(b[4]), .Z(n85) );
endmodule

