
module carry_ahead_adder16 ( a, b, cin, cout, sum, Gm, Pm );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout, Gm, Pm;
  wire   n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140;

  GTECH_XOR2 U92 ( .A(n73), .B(n74), .Z(sum[9]) );
  GTECH_XOR2 U93 ( .A(n75), .B(n76), .Z(sum[8]) );
  GTECH_XNOR2 U94 ( .A(n77), .B(n78), .Z(sum[7]) );
  GTECH_OAI21 U95 ( .A(n79), .B(n80), .C(n81), .Z(n77) );
  GTECH_XOR2 U96 ( .A(n80), .B(n79), .Z(sum[6]) );
  GTECH_OA21 U97 ( .A(n82), .B(n83), .C(n84), .Z(n79) );
  GTECH_XOR2 U98 ( .A(n83), .B(n82), .Z(sum[5]) );
  GTECH_OA21 U99 ( .A(n85), .B(n86), .C(n87), .Z(n82) );
  GTECH_XOR2 U100 ( .A(n86), .B(n85), .Z(sum[4]) );
  GTECH_XOR2 U101 ( .A(n88), .B(n89), .Z(sum[3]) );
  GTECH_OA21 U102 ( .A(n90), .B(n91), .C(n92), .Z(n89) );
  GTECH_XNOR2 U103 ( .A(n90), .B(n93), .Z(sum[2]) );
  GTECH_OA21 U104 ( .A(n94), .B(n95), .C(n96), .Z(n90) );
  GTECH_XOR2 U105 ( .A(n95), .B(n94), .Z(sum[1]) );
  GTECH_AND_NOT U106 ( .A(n97), .B(n98), .Z(n94) );
  GTECH_XNOR2 U107 ( .A(n99), .B(n100), .Z(sum[15]) );
  GTECH_OAI21 U108 ( .A(n101), .B(n102), .C(n103), .Z(n100) );
  GTECH_XOR2 U109 ( .A(n102), .B(n101), .Z(sum[14]) );
  GTECH_OA21 U110 ( .A(n104), .B(n105), .C(n106), .Z(n101) );
  GTECH_XOR2 U111 ( .A(n105), .B(n104), .Z(sum[13]) );
  GTECH_OA21 U112 ( .A(n107), .B(n108), .C(n109), .Z(n104) );
  GTECH_XOR2 U113 ( .A(n107), .B(n108), .Z(sum[12]) );
  GTECH_NOT U114 ( .A(cout), .Z(n107) );
  GTECH_XOR2 U115 ( .A(n110), .B(n111), .Z(sum[11]) );
  GTECH_OA21 U116 ( .A(n112), .B(n113), .C(n114), .Z(n111) );
  GTECH_XOR2 U117 ( .A(n113), .B(n112), .Z(sum[10]) );
  GTECH_OA21 U118 ( .A(n74), .B(n73), .C(n115), .Z(n112) );
  GTECH_OA21 U119 ( .A(n76), .B(n75), .C(n116), .Z(n74) );
  GTECH_XNOR2 U120 ( .A(cin), .B(n117), .Z(sum[0]) );
  GTECH_OAI21 U121 ( .A(n76), .B(n118), .C(n119), .Z(cout) );
  GTECH_OA21 U122 ( .A(n85), .B(n120), .C(n121), .Z(n76) );
  GTECH_AND2 U123 ( .A(n122), .B(n123), .Z(n85) );
  GTECH_NAND5 U124 ( .A(n124), .B(n125), .C(n93), .D(n98), .E(n126), .Z(n122)
         );
  GTECH_AND_NOT U125 ( .A(cin), .B(n117), .Z(n98) );
  GTECH_NOR4 U126 ( .A(n120), .B(n117), .C(n118), .D(n127), .Z(Pm) );
  GTECH_NAND4 U127 ( .A(n126), .B(n93), .C(n124), .D(n125), .Z(n127) );
  GTECH_NOT U128 ( .A(n88), .Z(n125) );
  GTECH_OAI21 U129 ( .A(b[0]), .B(a[0]), .C(n97), .Z(n117) );
  GTECH_OAI21 U130 ( .A(n128), .B(n118), .C(n119), .Z(Gm) );
  GTECH_AOI2N2 U131 ( .A(b[15]), .B(a[15]), .C(n129), .D(n99), .Z(n119) );
  GTECH_OA21 U132 ( .A(n130), .B(n102), .C(n103), .Z(n129) );
  GTECH_OA21 U133 ( .A(n109), .B(n105), .C(n106), .Z(n130) );
  GTECH_OR4 U134 ( .A(n108), .B(n102), .C(n105), .D(n99), .Z(n118) );
  GTECH_XNOR2 U135 ( .A(a[15]), .B(b[15]), .Z(n99) );
  GTECH_OAI21 U136 ( .A(b[13]), .B(a[13]), .C(n106), .Z(n105) );
  GTECH_NAND2 U137 ( .A(b[13]), .B(a[13]), .Z(n106) );
  GTECH_OAI21 U138 ( .A(b[14]), .B(a[14]), .C(n103), .Z(n102) );
  GTECH_NAND2 U139 ( .A(b[14]), .B(a[14]), .Z(n103) );
  GTECH_OAI21 U140 ( .A(b[12]), .B(a[12]), .C(n109), .Z(n108) );
  GTECH_NAND2 U141 ( .A(b[12]), .B(a[12]), .Z(n109) );
  GTECH_OA21 U142 ( .A(n123), .B(n120), .C(n121), .Z(n128) );
  GTECH_AOI2N2 U143 ( .A(b[11]), .B(a[11]), .C(n131), .D(n110), .Z(n121) );
  GTECH_OA21 U144 ( .A(n132), .B(n113), .C(n114), .Z(n131) );
  GTECH_OA21 U145 ( .A(n73), .B(n116), .C(n115), .Z(n132) );
  GTECH_NAND2 U146 ( .A(b[9]), .B(a[9]), .Z(n115) );
  GTECH_OR4 U147 ( .A(n75), .B(n113), .C(n110), .D(n73), .Z(n120) );
  GTECH_XNOR2 U148 ( .A(a[9]), .B(b[9]), .Z(n73) );
  GTECH_XNOR2 U149 ( .A(a[11]), .B(b[11]), .Z(n110) );
  GTECH_OAI21 U150 ( .A(b[10]), .B(a[10]), .C(n114), .Z(n113) );
  GTECH_NAND2 U151 ( .A(b[10]), .B(a[10]), .Z(n114) );
  GTECH_OAI21 U152 ( .A(b[8]), .B(a[8]), .C(n116), .Z(n75) );
  GTECH_NAND2 U153 ( .A(b[8]), .B(a[8]), .Z(n116) );
  GTECH_OA21 U154 ( .A(n133), .B(n134), .C(n135), .Z(n123) );
  GTECH_OA21 U155 ( .A(n136), .B(n78), .C(n137), .Z(n135) );
  GTECH_OA21 U156 ( .A(n138), .B(n80), .C(n81), .Z(n136) );
  GTECH_OA21 U157 ( .A(n87), .B(n83), .C(n84), .Z(n138) );
  GTECH_NOT U158 ( .A(n126), .Z(n134) );
  GTECH_NOR4 U159 ( .A(n86), .B(n78), .C(n80), .D(n83), .Z(n126) );
  GTECH_OAI21 U160 ( .A(b[5]), .B(a[5]), .C(n84), .Z(n83) );
  GTECH_NAND2 U161 ( .A(b[5]), .B(a[5]), .Z(n84) );
  GTECH_OAI21 U162 ( .A(b[6]), .B(a[6]), .C(n81), .Z(n80) );
  GTECH_NAND2 U163 ( .A(a[6]), .B(b[6]), .Z(n81) );
  GTECH_OAI21 U164 ( .A(b[7]), .B(a[7]), .C(n137), .Z(n78) );
  GTECH_NAND2 U165 ( .A(b[7]), .B(a[7]), .Z(n137) );
  GTECH_OAI21 U166 ( .A(b[4]), .B(a[4]), .C(n87), .Z(n86) );
  GTECH_NAND2 U167 ( .A(b[4]), .B(a[4]), .Z(n87) );
  GTECH_AOI2N2 U168 ( .A(b[3]), .B(a[3]), .C(n139), .D(n88), .Z(n133) );
  GTECH_XNOR2 U169 ( .A(a[3]), .B(b[3]), .Z(n88) );
  GTECH_OA21 U170 ( .A(n140), .B(n91), .C(n92), .Z(n139) );
  GTECH_NOT U171 ( .A(n93), .Z(n91) );
  GTECH_OA21 U172 ( .A(a[2]), .B(b[2]), .C(n92), .Z(n93) );
  GTECH_NAND2 U173 ( .A(b[2]), .B(a[2]), .Z(n92) );
  GTECH_OA21 U174 ( .A(n97), .B(n95), .C(n96), .Z(n140) );
  GTECH_NOT U175 ( .A(n124), .Z(n95) );
  GTECH_OA21 U176 ( .A(b[1]), .B(a[1]), .C(n96), .Z(n124) );
  GTECH_NAND2 U177 ( .A(b[1]), .B(a[1]), .Z(n96) );
  GTECH_NAND2 U178 ( .A(a[0]), .B(b[0]), .Z(n97) );
endmodule

