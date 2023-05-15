
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
         n134, n135, n136, n137, n138, n139, n140;

  GTECH_XOR2 U93 ( .A(n74), .B(n75), .Z(sum[9]) );
  GTECH_XOR2 U94 ( .A(n76), .B(n77), .Z(sum[8]) );
  GTECH_XOR2 U95 ( .A(n78), .B(n79), .Z(sum[7]) );
  GTECH_OA21 U96 ( .A(n80), .B(n81), .C(n82), .Z(n79) );
  GTECH_XOR2 U97 ( .A(n80), .B(n81), .Z(sum[6]) );
  GTECH_OA21 U98 ( .A(n83), .B(n84), .C(n85), .Z(n80) );
  GTECH_XNOR2 U99 ( .A(n83), .B(n86), .Z(sum[5]) );
  GTECH_AOI22 U100 ( .A(b[4]), .B(a[4]), .C(n87), .D(n88), .Z(n83) );
  GTECH_NOT U101 ( .A(n89), .Z(n88) );
  GTECH_XNOR2 U102 ( .A(n89), .B(n87), .Z(sum[4]) );
  GTECH_XOR2 U103 ( .A(n90), .B(n91), .Z(sum[3]) );
  GTECH_OA21 U104 ( .A(n92), .B(n93), .C(n94), .Z(n91) );
  GTECH_XOR2 U105 ( .A(n93), .B(n92), .Z(sum[2]) );
  GTECH_OA21 U106 ( .A(n95), .B(n96), .C(n97), .Z(n92) );
  GTECH_XOR2 U107 ( .A(n96), .B(n95), .Z(sum[1]) );
  GTECH_OA21 U108 ( .A(n98), .B(n99), .C(n100), .Z(n95) );
  GTECH_NOT U109 ( .A(cin), .Z(n99) );
  GTECH_XOR2 U110 ( .A(n101), .B(n102), .Z(sum[15]) );
  GTECH_OA21 U111 ( .A(n103), .B(n104), .C(n105), .Z(n102) );
  GTECH_XOR2 U112 ( .A(n104), .B(n103), .Z(sum[14]) );
  GTECH_OA21 U113 ( .A(n106), .B(n107), .C(n108), .Z(n103) );
  GTECH_XOR2 U114 ( .A(n107), .B(n106), .Z(sum[13]) );
  GTECH_OA21 U115 ( .A(n109), .B(n110), .C(n111), .Z(n106) );
  GTECH_NOT U116 ( .A(cout), .Z(n109) );
  GTECH_XNOR2 U117 ( .A(cout), .B(n110), .Z(sum[12]) );
  GTECH_XOR2 U118 ( .A(n112), .B(n113), .Z(sum[11]) );
  GTECH_OA21 U119 ( .A(n114), .B(n115), .C(n116), .Z(n113) );
  GTECH_XOR2 U120 ( .A(n114), .B(n115), .Z(sum[10]) );
  GTECH_OA21 U121 ( .A(n75), .B(n74), .C(n117), .Z(n114) );
  GTECH_OA21 U122 ( .A(n76), .B(n77), .C(n118), .Z(n75) );
  GTECH_XNOR2 U123 ( .A(cin), .B(n98), .Z(sum[0]) );
  GTECH_OAI21 U124 ( .A(n76), .B(n119), .C(n120), .Z(cout) );
  GTECH_AOI21 U125 ( .A(n87), .B(n121), .C(n122), .Z(n76) );
  GTECH_AO21 U126 ( .A(n123), .B(cin), .C(n124), .Z(n87) );
  GTECH_AND3 U127 ( .A(n121), .B(n123), .C(n125), .Z(Pm) );
  GTECH_NOR5 U128 ( .A(n96), .B(n90), .C(n93), .D(n98), .E(n126), .Z(n123) );
  GTECH_OAI21 U129 ( .A(b[0]), .B(a[0]), .C(n100), .Z(n98) );
  GTECH_OAI21 U130 ( .A(n127), .B(n119), .C(n120), .Z(Gm) );
  GTECH_AOI2N2 U131 ( .A(b[15]), .B(a[15]), .C(n128), .D(n101), .Z(n120) );
  GTECH_OA21 U132 ( .A(n129), .B(n104), .C(n105), .Z(n128) );
  GTECH_OA21 U133 ( .A(n111), .B(n107), .C(n108), .Z(n129) );
  GTECH_NOT U134 ( .A(n125), .Z(n119) );
  GTECH_NOR4 U135 ( .A(n110), .B(n104), .C(n107), .D(n101), .Z(n125) );
  GTECH_XNOR2 U136 ( .A(a[15]), .B(b[15]), .Z(n101) );
  GTECH_OAI21 U137 ( .A(b[13]), .B(a[13]), .C(n108), .Z(n107) );
  GTECH_NAND2 U138 ( .A(b[13]), .B(a[13]), .Z(n108) );
  GTECH_OAI21 U139 ( .A(b[14]), .B(a[14]), .C(n105), .Z(n104) );
  GTECH_NAND2 U140 ( .A(b[14]), .B(a[14]), .Z(n105) );
  GTECH_OAI21 U141 ( .A(b[12]), .B(a[12]), .C(n111), .Z(n110) );
  GTECH_NAND2 U142 ( .A(a[12]), .B(b[12]), .Z(n111) );
  GTECH_AOI21 U143 ( .A(n124), .B(n121), .C(n122), .Z(n127) );
  GTECH_OAI2N2 U144 ( .A(n130), .B(n112), .C(b[11]), .D(a[11]), .Z(n122) );
  GTECH_OA21 U145 ( .A(n131), .B(n115), .C(n116), .Z(n130) );
  GTECH_OA21 U146 ( .A(n74), .B(n118), .C(n117), .Z(n131) );
  GTECH_NAND2 U147 ( .A(a[9]), .B(b[9]), .Z(n117) );
  GTECH_NOR4 U148 ( .A(n77), .B(n115), .C(n112), .D(n74), .Z(n121) );
  GTECH_XNOR2 U149 ( .A(a[9]), .B(b[9]), .Z(n74) );
  GTECH_XNOR2 U150 ( .A(a[11]), .B(b[11]), .Z(n112) );
  GTECH_OAI21 U151 ( .A(a[10]), .B(b[10]), .C(n116), .Z(n115) );
  GTECH_NAND2 U152 ( .A(b[10]), .B(a[10]), .Z(n116) );
  GTECH_OAI21 U153 ( .A(a[8]), .B(b[8]), .C(n118), .Z(n77) );
  GTECH_NAND2 U154 ( .A(a[8]), .B(b[8]), .Z(n118) );
  GTECH_NOT U155 ( .A(n132), .Z(n124) );
  GTECH_AOI222 U156 ( .A(a[7]), .B(b[7]), .C(n133), .D(n134), .E(n135), .F(
        n136), .Z(n132) );
  GTECH_NAND2 U157 ( .A(n82), .B(n137), .Z(n136) );
  GTECH_AO21 U158 ( .A(n138), .B(n85), .C(n81), .Z(n137) );
  GTECH_NAND3 U159 ( .A(a[4]), .B(b[4]), .C(n86), .Z(n138) );
  GTECH_NOT U160 ( .A(n78), .Z(n135) );
  GTECH_OAI2N2 U161 ( .A(n139), .B(n90), .C(b[3]), .D(a[3]), .Z(n134) );
  GTECH_XNOR2 U162 ( .A(a[3]), .B(b[3]), .Z(n90) );
  GTECH_OA21 U163 ( .A(n140), .B(n93), .C(n94), .Z(n139) );
  GTECH_OAI21 U164 ( .A(b[2]), .B(a[2]), .C(n94), .Z(n93) );
  GTECH_NAND2 U165 ( .A(b[2]), .B(a[2]), .Z(n94) );
  GTECH_OA21 U166 ( .A(n100), .B(n96), .C(n97), .Z(n140) );
  GTECH_OAI21 U167 ( .A(b[1]), .B(a[1]), .C(n97), .Z(n96) );
  GTECH_NAND2 U168 ( .A(b[1]), .B(a[1]), .Z(n97) );
  GTECH_NAND2 U169 ( .A(a[0]), .B(b[0]), .Z(n100) );
  GTECH_NOT U170 ( .A(n126), .Z(n133) );
  GTECH_OR4 U171 ( .A(n81), .B(n84), .C(n89), .D(n78), .Z(n126) );
  GTECH_XNOR2 U172 ( .A(a[7]), .B(b[7]), .Z(n78) );
  GTECH_XNOR2 U173 ( .A(a[4]), .B(b[4]), .Z(n89) );
  GTECH_NOT U174 ( .A(n86), .Z(n84) );
  GTECH_OA21 U175 ( .A(b[5]), .B(a[5]), .C(n85), .Z(n86) );
  GTECH_NAND2 U176 ( .A(a[5]), .B(b[5]), .Z(n85) );
  GTECH_OAI21 U177 ( .A(a[6]), .B(b[6]), .C(n82), .Z(n81) );
  GTECH_NAND2 U178 ( .A(b[6]), .B(a[6]), .Z(n82) );
endmodule

