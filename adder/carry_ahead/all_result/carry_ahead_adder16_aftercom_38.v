
module carry_ahead_adder16 ( a, b, cin, cout, sum, Gm, Pm );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout, Gm, Pm;
  wire   n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140;

  GTECH_XOR2 U91 ( .A(n72), .B(n73), .Z(sum[9]) );
  GTECH_XOR2 U92 ( .A(n74), .B(n75), .Z(sum[8]) );
  GTECH_XOR2 U93 ( .A(n76), .B(n77), .Z(sum[7]) );
  GTECH_AOI2N2 U94 ( .A(b[6]), .B(a[6]), .C(n78), .D(n79), .Z(n77) );
  GTECH_XOR2 U95 ( .A(n79), .B(n78), .Z(sum[6]) );
  GTECH_AOI2N2 U96 ( .A(b[5]), .B(a[5]), .C(n80), .D(n81), .Z(n78) );
  GTECH_XOR2 U97 ( .A(n81), .B(n80), .Z(sum[5]) );
  GTECH_OA21 U98 ( .A(n82), .B(n83), .C(n84), .Z(n80) );
  GTECH_XOR2 U99 ( .A(n82), .B(n83), .Z(sum[4]) );
  GTECH_XOR2 U100 ( .A(n85), .B(n86), .Z(sum[3]) );
  GTECH_OA21 U101 ( .A(n87), .B(n88), .C(n89), .Z(n86) );
  GTECH_XOR2 U102 ( .A(n87), .B(n88), .Z(sum[2]) );
  GTECH_OA21 U103 ( .A(n90), .B(n91), .C(n92), .Z(n87) );
  GTECH_XOR2 U104 ( .A(n91), .B(n90), .Z(sum[1]) );
  GTECH_OA21 U105 ( .A(n93), .B(n94), .C(n95), .Z(n91) );
  GTECH_XNOR2 U106 ( .A(n96), .B(n97), .Z(sum[15]) );
  GTECH_AOI22 U107 ( .A(b[14]), .B(a[14]), .C(n98), .D(n99), .Z(n97) );
  GTECH_XOR2 U108 ( .A(n99), .B(n98), .Z(sum[14]) );
  GTECH_AO22 U109 ( .A(n100), .B(n101), .C(b[13]), .D(a[13]), .Z(n98) );
  GTECH_XOR2 U110 ( .A(n101), .B(n100), .Z(sum[13]) );
  GTECH_AO21 U111 ( .A(n102), .B(cout), .C(n103), .Z(n100) );
  GTECH_XNOR2 U112 ( .A(n102), .B(n104), .Z(sum[12]) );
  GTECH_XOR2 U113 ( .A(n105), .B(n106), .Z(sum[11]) );
  GTECH_OA21 U114 ( .A(n107), .B(n108), .C(n109), .Z(n105) );
  GTECH_XOR2 U115 ( .A(n107), .B(n108), .Z(sum[10]) );
  GTECH_OA21 U116 ( .A(n72), .B(n73), .C(n110), .Z(n108) );
  GTECH_OA21 U117 ( .A(n74), .B(n75), .C(n111), .Z(n73) );
  GTECH_XNOR2 U118 ( .A(n93), .B(n112), .Z(sum[0]) );
  GTECH_NOT U119 ( .A(n104), .Z(cout) );
  GTECH_OA21 U120 ( .A(n113), .B(n75), .C(n114), .Z(n104) );
  GTECH_OA21 U121 ( .A(n115), .B(n83), .C(n116), .Z(n75) );
  GTECH_OA21 U122 ( .A(n93), .B(n117), .C(n118), .Z(n83) );
  GTECH_NOT U123 ( .A(cin), .Z(n93) );
  GTECH_NOR3 U124 ( .A(n115), .B(n117), .C(n113), .Z(Pm) );
  GTECH_OR5 U125 ( .A(n90), .B(n85), .C(n88), .D(n94), .E(n119), .Z(n117) );
  GTECH_NOT U126 ( .A(n112), .Z(n94) );
  GTECH_OA21 U127 ( .A(b[0]), .B(a[0]), .C(n95), .Z(n112) );
  GTECH_NOT U128 ( .A(n120), .Z(Gm) );
  GTECH_OA21 U129 ( .A(n113), .B(n121), .C(n114), .Z(n120) );
  GTECH_AOI22 U130 ( .A(b[15]), .B(a[15]), .C(n122), .D(n96), .Z(n114) );
  GTECH_AO22 U131 ( .A(b[14]), .B(a[14]), .C(n123), .D(n99), .Z(n122) );
  GTECH_AO22 U132 ( .A(b[13]), .B(a[13]), .C(n101), .D(n103), .Z(n123) );
  GTECH_OA21 U133 ( .A(n115), .B(n118), .C(n116), .Z(n121) );
  GTECH_OA21 U134 ( .A(n106), .B(n124), .C(n125), .Z(n116) );
  GTECH_OA21 U135 ( .A(n107), .B(n126), .C(n109), .Z(n124) );
  GTECH_OA21 U136 ( .A(n72), .B(n111), .C(n110), .Z(n126) );
  GTECH_AOI222 U137 ( .A(n127), .B(n128), .C(b[7]), .D(a[7]), .E(n129), .F(
        n130), .Z(n118) );
  GTECH_OAI2N2 U138 ( .A(n131), .B(n79), .C(b[6]), .D(a[6]), .Z(n130) );
  GTECH_AOI2N2 U139 ( .A(b[5]), .B(a[5]), .C(n81), .D(n84), .Z(n131) );
  GTECH_NAND2 U140 ( .A(b[4]), .B(a[4]), .Z(n84) );
  GTECH_NOT U141 ( .A(n76), .Z(n129) );
  GTECH_OAI2N2 U142 ( .A(n132), .B(n85), .C(b[3]), .D(a[3]), .Z(n128) );
  GTECH_XNOR2 U143 ( .A(a[3]), .B(b[3]), .Z(n85) );
  GTECH_OA21 U144 ( .A(n133), .B(n88), .C(n89), .Z(n132) );
  GTECH_NOT U145 ( .A(n134), .Z(n88) );
  GTECH_OA21 U146 ( .A(b[2]), .B(a[2]), .C(n89), .Z(n134) );
  GTECH_NAND2 U147 ( .A(a[2]), .B(b[2]), .Z(n89) );
  GTECH_OA21 U148 ( .A(n95), .B(n90), .C(n92), .Z(n133) );
  GTECH_NOT U149 ( .A(n135), .Z(n90) );
  GTECH_OA21 U150 ( .A(b[1]), .B(a[1]), .C(n92), .Z(n135) );
  GTECH_NAND2 U151 ( .A(b[1]), .B(a[1]), .Z(n92) );
  GTECH_NAND2 U152 ( .A(a[0]), .B(b[0]), .Z(n95) );
  GTECH_NOT U153 ( .A(n119), .Z(n127) );
  GTECH_OR4 U154 ( .A(n82), .B(n81), .C(n79), .D(n76), .Z(n119) );
  GTECH_XNOR2 U155 ( .A(a[7]), .B(b[7]), .Z(n76) );
  GTECH_XNOR2 U156 ( .A(a[6]), .B(b[6]), .Z(n79) );
  GTECH_XNOR2 U157 ( .A(a[5]), .B(b[5]), .Z(n81) );
  GTECH_XNOR2 U158 ( .A(a[4]), .B(b[4]), .Z(n82) );
  GTECH_OR4 U159 ( .A(n74), .B(n106), .C(n107), .D(n72), .Z(n115) );
  GTECH_NOT U160 ( .A(n136), .Z(n72) );
  GTECH_OA21 U161 ( .A(a[9]), .B(b[9]), .C(n110), .Z(n136) );
  GTECH_NAND2 U162 ( .A(a[9]), .B(b[9]), .Z(n110) );
  GTECH_NOT U163 ( .A(n137), .Z(n107) );
  GTECH_OA21 U164 ( .A(a[10]), .B(b[10]), .C(n109), .Z(n137) );
  GTECH_NAND2 U165 ( .A(a[10]), .B(b[10]), .Z(n109) );
  GTECH_NOT U166 ( .A(n138), .Z(n106) );
  GTECH_OA21 U167 ( .A(a[11]), .B(b[11]), .C(n125), .Z(n138) );
  GTECH_NAND2 U168 ( .A(b[11]), .B(a[11]), .Z(n125) );
  GTECH_NOT U169 ( .A(n139), .Z(n74) );
  GTECH_OA21 U170 ( .A(a[8]), .B(b[8]), .C(n111), .Z(n139) );
  GTECH_NAND2 U171 ( .A(a[8]), .B(b[8]), .Z(n111) );
  GTECH_NAND4 U172 ( .A(n102), .B(n96), .C(n99), .D(n101), .Z(n113) );
  GTECH_XOR2 U173 ( .A(a[13]), .B(b[13]), .Z(n101) );
  GTECH_XOR2 U174 ( .A(a[14]), .B(b[14]), .Z(n99) );
  GTECH_XOR2 U175 ( .A(a[15]), .B(b[15]), .Z(n96) );
  GTECH_OA21 U176 ( .A(a[12]), .B(b[12]), .C(n140), .Z(n102) );
  GTECH_NOT U177 ( .A(n103), .Z(n140) );
  GTECH_AND2 U178 ( .A(b[12]), .B(a[12]), .Z(n103) );
endmodule

