
module carry_ahead_adder16 ( a, b, cin, cout, sum, Gm, Pm );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout, Gm, Pm;
  wire   n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142;

  GTECH_XOR2 U94 ( .A(n75), .B(n76), .Z(sum[9]) );
  GTECH_XOR2 U95 ( .A(n77), .B(n78), .Z(sum[8]) );
  GTECH_XOR2 U96 ( .A(n79), .B(n80), .Z(sum[7]) );
  GTECH_OA21 U97 ( .A(n81), .B(n82), .C(n83), .Z(n80) );
  GTECH_XOR2 U98 ( .A(n81), .B(n82), .Z(sum[6]) );
  GTECH_OA21 U99 ( .A(n84), .B(n85), .C(n86), .Z(n81) );
  GTECH_XNOR2 U100 ( .A(n84), .B(n87), .Z(sum[5]) );
  GTECH_AOI22 U101 ( .A(b[4]), .B(a[4]), .C(n88), .D(n89), .Z(n84) );
  GTECH_NOT U102 ( .A(n90), .Z(n89) );
  GTECH_XNOR2 U103 ( .A(n90), .B(n88), .Z(sum[4]) );
  GTECH_XNOR2 U104 ( .A(n91), .B(n92), .Z(sum[3]) );
  GTECH_OA21 U105 ( .A(n93), .B(n94), .C(n95), .Z(n92) );
  GTECH_XNOR2 U106 ( .A(n93), .B(n96), .Z(sum[2]) );
  GTECH_AOI21 U107 ( .A(n97), .B(n98), .C(n99), .Z(n93) );
  GTECH_XOR2 U108 ( .A(n97), .B(n98), .Z(sum[1]) );
  GTECH_AO21 U109 ( .A(n100), .B(cin), .C(n101), .Z(n97) );
  GTECH_XOR2 U110 ( .A(n102), .B(n103), .Z(sum[15]) );
  GTECH_OA21 U111 ( .A(n104), .B(n105), .C(n106), .Z(n103) );
  GTECH_XOR2 U112 ( .A(n105), .B(n104), .Z(sum[14]) );
  GTECH_OA21 U113 ( .A(n107), .B(n108), .C(n109), .Z(n104) );
  GTECH_XOR2 U114 ( .A(n108), .B(n107), .Z(sum[13]) );
  GTECH_OA21 U115 ( .A(n110), .B(n111), .C(n112), .Z(n107) );
  GTECH_NOT U116 ( .A(cout), .Z(n110) );
  GTECH_XNOR2 U117 ( .A(cout), .B(n111), .Z(sum[12]) );
  GTECH_XOR2 U118 ( .A(n113), .B(n114), .Z(sum[11]) );
  GTECH_OA21 U119 ( .A(n115), .B(n116), .C(n117), .Z(n114) );
  GTECH_XOR2 U120 ( .A(n115), .B(n116), .Z(sum[10]) );
  GTECH_OA21 U121 ( .A(n76), .B(n75), .C(n118), .Z(n115) );
  GTECH_OA21 U122 ( .A(n77), .B(n78), .C(n119), .Z(n76) );
  GTECH_XOR2 U123 ( .A(cin), .B(n100), .Z(sum[0]) );
  GTECH_OAI21 U124 ( .A(n77), .B(n120), .C(n121), .Z(cout) );
  GTECH_AOI21 U125 ( .A(n88), .B(n122), .C(n123), .Z(n77) );
  GTECH_AO21 U126 ( .A(n124), .B(cin), .C(n125), .Z(n88) );
  GTECH_AND3 U127 ( .A(n122), .B(n124), .C(n126), .Z(Pm) );
  GTECH_AND5 U128 ( .A(n98), .B(n91), .C(n96), .D(n100), .E(n127), .Z(n124) );
  GTECH_OA21 U129 ( .A(a[0]), .B(b[0]), .C(n128), .Z(n100) );
  GTECH_NOT U130 ( .A(n94), .Z(n96) );
  GTECH_OAI21 U131 ( .A(n129), .B(n120), .C(n121), .Z(Gm) );
  GTECH_AOI2N2 U132 ( .A(b[15]), .B(a[15]), .C(n130), .D(n102), .Z(n121) );
  GTECH_OA21 U133 ( .A(n131), .B(n105), .C(n106), .Z(n130) );
  GTECH_OA21 U134 ( .A(n112), .B(n108), .C(n109), .Z(n131) );
  GTECH_NOT U135 ( .A(n126), .Z(n120) );
  GTECH_NOR4 U136 ( .A(n111), .B(n105), .C(n108), .D(n102), .Z(n126) );
  GTECH_XNOR2 U137 ( .A(a[15]), .B(b[15]), .Z(n102) );
  GTECH_OAI21 U138 ( .A(b[13]), .B(a[13]), .C(n109), .Z(n108) );
  GTECH_NAND2 U139 ( .A(b[13]), .B(a[13]), .Z(n109) );
  GTECH_OAI21 U140 ( .A(b[14]), .B(a[14]), .C(n106), .Z(n105) );
  GTECH_NAND2 U141 ( .A(b[14]), .B(a[14]), .Z(n106) );
  GTECH_OAI21 U142 ( .A(b[12]), .B(a[12]), .C(n112), .Z(n111) );
  GTECH_NAND2 U143 ( .A(a[12]), .B(b[12]), .Z(n112) );
  GTECH_AOI21 U144 ( .A(n125), .B(n122), .C(n123), .Z(n129) );
  GTECH_OAI2N2 U145 ( .A(n132), .B(n113), .C(b[11]), .D(a[11]), .Z(n123) );
  GTECH_OA21 U146 ( .A(n133), .B(n116), .C(n117), .Z(n132) );
  GTECH_OA21 U147 ( .A(n75), .B(n119), .C(n118), .Z(n133) );
  GTECH_NAND2 U148 ( .A(a[9]), .B(b[9]), .Z(n118) );
  GTECH_NOR4 U149 ( .A(n78), .B(n116), .C(n113), .D(n75), .Z(n122) );
  GTECH_XNOR2 U150 ( .A(a[9]), .B(b[9]), .Z(n75) );
  GTECH_XNOR2 U151 ( .A(a[11]), .B(b[11]), .Z(n113) );
  GTECH_OAI21 U152 ( .A(a[10]), .B(b[10]), .C(n117), .Z(n116) );
  GTECH_NAND2 U153 ( .A(b[10]), .B(a[10]), .Z(n117) );
  GTECH_OAI21 U154 ( .A(a[8]), .B(b[8]), .C(n119), .Z(n78) );
  GTECH_NAND2 U155 ( .A(a[8]), .B(b[8]), .Z(n119) );
  GTECH_NOT U156 ( .A(n134), .Z(n125) );
  GTECH_AOI222 U157 ( .A(a[7]), .B(b[7]), .C(n127), .D(n135), .E(n136), .F(
        n137), .Z(n134) );
  GTECH_NAND2 U158 ( .A(n83), .B(n138), .Z(n137) );
  GTECH_AO21 U159 ( .A(n139), .B(n86), .C(n82), .Z(n138) );
  GTECH_NAND3 U160 ( .A(a[4]), .B(b[4]), .C(n87), .Z(n139) );
  GTECH_NOT U161 ( .A(n79), .Z(n136) );
  GTECH_AO22 U162 ( .A(n140), .B(n91), .C(b[3]), .D(a[3]), .Z(n135) );
  GTECH_XOR2 U163 ( .A(a[3]), .B(b[3]), .Z(n91) );
  GTECH_OAI21 U164 ( .A(n141), .B(n94), .C(n95), .Z(n140) );
  GTECH_OAI21 U165 ( .A(a[2]), .B(b[2]), .C(n95), .Z(n94) );
  GTECH_NAND2 U166 ( .A(b[2]), .B(a[2]), .Z(n95) );
  GTECH_AOI21 U167 ( .A(n101), .B(n98), .C(n99), .Z(n141) );
  GTECH_OA21 U168 ( .A(a[1]), .B(b[1]), .C(n142), .Z(n98) );
  GTECH_NOT U169 ( .A(n99), .Z(n142) );
  GTECH_AND2 U170 ( .A(b[1]), .B(a[1]), .Z(n99) );
  GTECH_NOT U171 ( .A(n128), .Z(n101) );
  GTECH_NAND2 U172 ( .A(a[0]), .B(b[0]), .Z(n128) );
  GTECH_NOR4 U173 ( .A(n82), .B(n85), .C(n90), .D(n79), .Z(n127) );
  GTECH_XNOR2 U174 ( .A(a[7]), .B(b[7]), .Z(n79) );
  GTECH_XNOR2 U175 ( .A(a[4]), .B(b[4]), .Z(n90) );
  GTECH_NOT U176 ( .A(n87), .Z(n85) );
  GTECH_OA21 U177 ( .A(b[5]), .B(a[5]), .C(n86), .Z(n87) );
  GTECH_NAND2 U178 ( .A(a[5]), .B(b[5]), .Z(n86) );
  GTECH_OAI21 U179 ( .A(a[6]), .B(b[6]), .C(n83), .Z(n82) );
  GTECH_NAND2 U180 ( .A(b[6]), .B(a[6]), .Z(n83) );
endmodule

