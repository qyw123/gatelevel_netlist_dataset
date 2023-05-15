
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
         n134, n135, n136, n137, n138, n139, n140, n141, n142;

  GTECH_XOR2 U93 ( .A(n74), .B(n75), .Z(sum[9]) );
  GTECH_XOR2 U94 ( .A(n76), .B(n77), .Z(sum[8]) );
  GTECH_XNOR2 U95 ( .A(n78), .B(n79), .Z(sum[7]) );
  GTECH_OAI21 U96 ( .A(n80), .B(n81), .C(n82), .Z(n78) );
  GTECH_XOR2 U97 ( .A(n81), .B(n80), .Z(sum[6]) );
  GTECH_OA21 U98 ( .A(n83), .B(n84), .C(n85), .Z(n80) );
  GTECH_XOR2 U99 ( .A(n84), .B(n83), .Z(sum[5]) );
  GTECH_OA21 U100 ( .A(n86), .B(n87), .C(n88), .Z(n83) );
  GTECH_XOR2 U101 ( .A(n87), .B(n86), .Z(sum[4]) );
  GTECH_XNOR2 U102 ( .A(n89), .B(n90), .Z(sum[3]) );
  GTECH_OA21 U103 ( .A(n91), .B(n92), .C(n93), .Z(n90) );
  GTECH_XOR2 U104 ( .A(n92), .B(n91), .Z(sum[2]) );
  GTECH_OA21 U105 ( .A(n94), .B(n95), .C(n96), .Z(n91) );
  GTECH_XNOR2 U106 ( .A(n97), .B(n94), .Z(sum[1]) );
  GTECH_AND_NOT U107 ( .A(n98), .B(n99), .Z(n94) );
  GTECH_XOR2 U108 ( .A(n100), .B(n101), .Z(sum[15]) );
  GTECH_OA21 U109 ( .A(n102), .B(n103), .C(n104), .Z(n101) );
  GTECH_XOR2 U110 ( .A(n102), .B(n103), .Z(sum[14]) );
  GTECH_OA21 U111 ( .A(n105), .B(n106), .C(n107), .Z(n102) );
  GTECH_XOR2 U112 ( .A(n105), .B(n106), .Z(sum[13]) );
  GTECH_OA21 U113 ( .A(n108), .B(n109), .C(n110), .Z(n105) );
  GTECH_NOT U114 ( .A(cout), .Z(n108) );
  GTECH_XNOR2 U115 ( .A(n109), .B(cout), .Z(sum[12]) );
  GTECH_XNOR2 U116 ( .A(n111), .B(n112), .Z(sum[11]) );
  GTECH_OAI21 U117 ( .A(n113), .B(n114), .C(n115), .Z(n111) );
  GTECH_XOR2 U118 ( .A(n114), .B(n113), .Z(sum[10]) );
  GTECH_OA21 U119 ( .A(n75), .B(n74), .C(n116), .Z(n113) );
  GTECH_OA21 U120 ( .A(n77), .B(n76), .C(n117), .Z(n75) );
  GTECH_XNOR2 U121 ( .A(cin), .B(n118), .Z(sum[0]) );
  GTECH_OAI21 U122 ( .A(n77), .B(n119), .C(n120), .Z(cout) );
  GTECH_OA21 U123 ( .A(n86), .B(n121), .C(n122), .Z(n77) );
  GTECH_AND2 U124 ( .A(n123), .B(n124), .Z(n86) );
  GTECH_NAND5 U125 ( .A(n97), .B(n89), .C(n125), .D(n99), .E(n126), .Z(n123)
         );
  GTECH_NOT U126 ( .A(n127), .Z(n126) );
  GTECH_AND_NOT U127 ( .A(cin), .B(n118), .Z(n99) );
  GTECH_NOR4 U128 ( .A(n121), .B(n118), .C(n119), .D(n128), .Z(Pm) );
  GTECH_OR4 U129 ( .A(n127), .B(n92), .C(n95), .D(n129), .Z(n128) );
  GTECH_OAI21 U130 ( .A(a[0]), .B(b[0]), .C(n98), .Z(n118) );
  GTECH_OAI21 U131 ( .A(n130), .B(n119), .C(n120), .Z(Gm) );
  GTECH_AOI2N2 U132 ( .A(b[15]), .B(a[15]), .C(n131), .D(n100), .Z(n120) );
  GTECH_OA21 U133 ( .A(n132), .B(n103), .C(n104), .Z(n131) );
  GTECH_OA21 U134 ( .A(n110), .B(n106), .C(n107), .Z(n132) );
  GTECH_OR4 U135 ( .A(n109), .B(n103), .C(n106), .D(n100), .Z(n119) );
  GTECH_XNOR2 U136 ( .A(a[15]), .B(b[15]), .Z(n100) );
  GTECH_OAI21 U137 ( .A(a[13]), .B(b[13]), .C(n107), .Z(n106) );
  GTECH_NAND2 U138 ( .A(b[13]), .B(a[13]), .Z(n107) );
  GTECH_OAI21 U139 ( .A(b[14]), .B(a[14]), .C(n104), .Z(n103) );
  GTECH_NAND2 U140 ( .A(b[14]), .B(a[14]), .Z(n104) );
  GTECH_OAI21 U141 ( .A(b[12]), .B(a[12]), .C(n110), .Z(n109) );
  GTECH_NAND2 U142 ( .A(b[12]), .B(a[12]), .Z(n110) );
  GTECH_OA21 U143 ( .A(n124), .B(n121), .C(n122), .Z(n130) );
  GTECH_OA21 U144 ( .A(n133), .B(n112), .C(n134), .Z(n122) );
  GTECH_OA21 U145 ( .A(n135), .B(n114), .C(n115), .Z(n133) );
  GTECH_OA21 U146 ( .A(n117), .B(n74), .C(n116), .Z(n135) );
  GTECH_OR4 U147 ( .A(n76), .B(n112), .C(n114), .D(n74), .Z(n121) );
  GTECH_OAI21 U148 ( .A(b[9]), .B(a[9]), .C(n116), .Z(n74) );
  GTECH_NAND2 U149 ( .A(a[9]), .B(b[9]), .Z(n116) );
  GTECH_OAI21 U150 ( .A(b[10]), .B(a[10]), .C(n115), .Z(n114) );
  GTECH_NAND2 U151 ( .A(b[10]), .B(a[10]), .Z(n115) );
  GTECH_OAI21 U152 ( .A(b[11]), .B(a[11]), .C(n134), .Z(n112) );
  GTECH_NAND2 U153 ( .A(a[11]), .B(b[11]), .Z(n134) );
  GTECH_OAI21 U154 ( .A(b[8]), .B(a[8]), .C(n117), .Z(n76) );
  GTECH_NAND2 U155 ( .A(a[8]), .B(b[8]), .Z(n117) );
  GTECH_OA21 U156 ( .A(n136), .B(n79), .C(n137), .Z(n124) );
  GTECH_OA21 U157 ( .A(n138), .B(n127), .C(n139), .Z(n137) );
  GTECH_OR4 U158 ( .A(n87), .B(n79), .C(n81), .D(n84), .Z(n127) );
  GTECH_OAI21 U159 ( .A(b[4]), .B(a[4]), .C(n88), .Z(n87) );
  GTECH_AOI2N2 U160 ( .A(b[3]), .B(a[3]), .C(n140), .D(n129), .Z(n138) );
  GTECH_NOT U161 ( .A(n89), .Z(n129) );
  GTECH_XOR2 U162 ( .A(a[3]), .B(b[3]), .Z(n89) );
  GTECH_OA21 U163 ( .A(n141), .B(n92), .C(n93), .Z(n140) );
  GTECH_NOT U164 ( .A(n125), .Z(n92) );
  GTECH_OA21 U165 ( .A(b[2]), .B(a[2]), .C(n93), .Z(n125) );
  GTECH_NAND2 U166 ( .A(b[2]), .B(a[2]), .Z(n93) );
  GTECH_OA21 U167 ( .A(n95), .B(n98), .C(n96), .Z(n141) );
  GTECH_NAND2 U168 ( .A(a[0]), .B(b[0]), .Z(n98) );
  GTECH_NOT U169 ( .A(n97), .Z(n95) );
  GTECH_OA21 U170 ( .A(b[1]), .B(a[1]), .C(n96), .Z(n97) );
  GTECH_NAND2 U171 ( .A(b[1]), .B(a[1]), .Z(n96) );
  GTECH_OAI21 U172 ( .A(b[7]), .B(a[7]), .C(n139), .Z(n79) );
  GTECH_NAND2 U173 ( .A(a[7]), .B(b[7]), .Z(n139) );
  GTECH_OA21 U174 ( .A(n142), .B(n81), .C(n82), .Z(n136) );
  GTECH_OAI21 U175 ( .A(b[6]), .B(a[6]), .C(n82), .Z(n81) );
  GTECH_NAND2 U176 ( .A(b[6]), .B(a[6]), .Z(n82) );
  GTECH_OA21 U177 ( .A(n84), .B(n88), .C(n85), .Z(n142) );
  GTECH_NAND2 U178 ( .A(b[4]), .B(a[4]), .Z(n88) );
  GTECH_OAI21 U179 ( .A(b[5]), .B(a[5]), .C(n85), .Z(n84) );
  GTECH_NAND2 U180 ( .A(b[5]), .B(a[5]), .Z(n85) );
endmodule

