
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
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147;

  GTECH_ADD_AB U91 ( .A(n72), .B(n73), .S(sum[9]) );
  GTECH_ADD_AB U92 ( .A(n74), .B(n75), .S(sum[8]) );
  GTECH_ADD_AB U93 ( .A(n76), .B(n77), .S(sum[7]) );
  GTECH_OA21 U94 ( .A(n78), .B(n79), .C(n80), .Z(n77) );
  GTECH_ADD_AB U95 ( .A(n78), .B(n79), .S(sum[6]) );
  GTECH_OA21 U96 ( .A(n81), .B(n82), .C(n83), .Z(n78) );
  GTECH_ADD_AB U97 ( .A(n81), .B(n82), .S(sum[5]) );
  GTECH_OA21 U98 ( .A(n84), .B(n85), .C(n86), .Z(n81) );
  GTECH_ADD_AB U99 ( .A(n84), .B(n85), .S(sum[4]) );
  GTECH_XNOR2 U100 ( .A(n87), .B(n88), .Z(sum[3]) );
  GTECH_AOI21 U101 ( .A(n89), .B(n90), .C(n91), .Z(n87) );
  GTECH_ADD_AB U102 ( .A(n90), .B(n89), .S(sum[2]) );
  GTECH_AO21 U103 ( .A(n92), .B(n93), .C(n94), .Z(n89) );
  GTECH_ADD_AB U104 ( .A(n93), .B(n92), .S(sum[1]) );
  GTECH_AO21 U105 ( .A(n95), .B(cin), .C(n96), .Z(n92) );
  GTECH_ADD_AB U106 ( .A(n97), .B(n98), .S(sum[15]) );
  GTECH_AOI21 U107 ( .A(n99), .B(n100), .C(n101), .Z(n98) );
  GTECH_XNOR2 U108 ( .A(n99), .B(n102), .Z(sum[14]) );
  GTECH_OAI21 U109 ( .A(n103), .B(n104), .C(n105), .Z(n99) );
  GTECH_ADD_AB U110 ( .A(n103), .B(n104), .S(sum[13]) );
  GTECH_OA21 U111 ( .A(n106), .B(n107), .C(n108), .Z(n103) );
  GTECH_XNOR2 U112 ( .A(cout), .B(n107), .Z(sum[12]) );
  GTECH_ADD_AB U113 ( .A(n109), .B(n110), .S(sum[11]) );
  GTECH_AOI21 U114 ( .A(n111), .B(n112), .C(n113), .Z(n110) );
  GTECH_ADD_AB U115 ( .A(n112), .B(n111), .S(sum[10]) );
  GTECH_OAI21 U116 ( .A(n72), .B(n73), .C(n114), .Z(n111) );
  GTECH_OA21 U117 ( .A(n74), .B(n75), .C(n115), .Z(n72) );
  GTECH_ADD_AB U118 ( .A(cin), .B(n95), .S(sum[0]) );
  GTECH_NOT U119 ( .A(n106), .Z(cout) );
  GTECH_OA21 U120 ( .A(n74), .B(n116), .C(n117), .Z(n106) );
  GTECH_OA21 U121 ( .A(n84), .B(n118), .C(n119), .Z(n74) );
  GTECH_ADD_AB U122 ( .A(n120), .B(n121), .COUT(n84) );
  GTECH_NAND4 U123 ( .A(n95), .B(n122), .C(cin), .D(n123), .Z(n120) );
  GTECH_AND3 U124 ( .A(n93), .B(n88), .C(n90), .Z(n123) );
  GTECH_AND4 U125 ( .A(n124), .B(n95), .C(n125), .D(n126), .Z(Pm) );
  GTECH_AND4 U126 ( .A(n122), .B(n90), .C(n93), .D(n88), .Z(n126) );
  GTECH_OA21 U127 ( .A(a[0]), .B(b[0]), .C(n127), .Z(n95) );
  GTECH_NOT U128 ( .A(n118), .Z(n124) );
  GTECH_OAI21 U129 ( .A(n128), .B(n116), .C(n117), .Z(Gm) );
  GTECH_OA21 U130 ( .A(n129), .B(n97), .C(n130), .Z(n117) );
  GTECH_AOI21 U131 ( .A(n131), .B(n100), .C(n101), .Z(n129) );
  GTECH_OAI21 U132 ( .A(n108), .B(n104), .C(n105), .Z(n131) );
  GTECH_NOT U133 ( .A(n125), .Z(n116) );
  GTECH_NOR4 U134 ( .A(n107), .B(n97), .C(n102), .D(n104), .Z(n125) );
  GTECH_OAI21 U135 ( .A(b[13]), .B(a[13]), .C(n105), .Z(n104) );
  GTECH_NAND2 U136 ( .A(b[13]), .B(a[13]), .Z(n105) );
  GTECH_NOT U137 ( .A(n100), .Z(n102) );
  GTECH_OA21 U138 ( .A(b[14]), .B(a[14]), .C(n132), .Z(n100) );
  GTECH_NOT U139 ( .A(n101), .Z(n132) );
  GTECH_ADD_AB U140 ( .A(b[14]), .B(a[14]), .COUT(n101) );
  GTECH_OAI21 U141 ( .A(b[15]), .B(a[15]), .C(n130), .Z(n97) );
  GTECH_NAND2 U142 ( .A(a[15]), .B(b[15]), .Z(n130) );
  GTECH_OAI21 U143 ( .A(b[12]), .B(a[12]), .C(n108), .Z(n107) );
  GTECH_NAND2 U144 ( .A(a[12]), .B(b[12]), .Z(n108) );
  GTECH_OA21 U145 ( .A(n121), .B(n118), .C(n119), .Z(n128) );
  GTECH_OA21 U146 ( .A(n133), .B(n109), .C(n134), .Z(n119) );
  GTECH_AOI21 U147 ( .A(n135), .B(n112), .C(n113), .Z(n133) );
  GTECH_NOT U148 ( .A(n136), .Z(n112) );
  GTECH_OAI21 U149 ( .A(n115), .B(n73), .C(n114), .Z(n135) );
  GTECH_OR4 U150 ( .A(n75), .B(n109), .C(n136), .D(n73), .Z(n118) );
  GTECH_OAI21 U151 ( .A(b[9]), .B(a[9]), .C(n114), .Z(n73) );
  GTECH_NAND2 U152 ( .A(a[9]), .B(b[9]), .Z(n114) );
  GTECH_OAI21 U153 ( .A(b[10]), .B(a[10]), .C(n137), .Z(n136) );
  GTECH_NOT U154 ( .A(n113), .Z(n137) );
  GTECH_ADD_AB U155 ( .A(b[10]), .B(a[10]), .COUT(n113) );
  GTECH_OAI21 U156 ( .A(b[11]), .B(a[11]), .C(n134), .Z(n109) );
  GTECH_NAND2 U157 ( .A(a[11]), .B(b[11]), .Z(n134) );
  GTECH_OAI21 U158 ( .A(b[8]), .B(a[8]), .C(n115), .Z(n75) );
  GTECH_NAND2 U159 ( .A(a[8]), .B(b[8]), .Z(n115) );
  GTECH_OA21 U160 ( .A(n138), .B(n139), .C(n140), .Z(n121) );
  GTECH_OA21 U161 ( .A(n141), .B(n76), .C(n142), .Z(n140) );
  GTECH_OA21 U162 ( .A(n143), .B(n79), .C(n80), .Z(n141) );
  GTECH_OA21 U163 ( .A(n82), .B(n86), .C(n83), .Z(n143) );
  GTECH_NOT U164 ( .A(n122), .Z(n139) );
  GTECH_NOR4 U165 ( .A(n85), .B(n76), .C(n79), .D(n82), .Z(n122) );
  GTECH_OAI21 U166 ( .A(b[5]), .B(a[5]), .C(n83), .Z(n82) );
  GTECH_NAND2 U167 ( .A(b[5]), .B(a[5]), .Z(n83) );
  GTECH_OAI21 U168 ( .A(b[6]), .B(a[6]), .C(n80), .Z(n79) );
  GTECH_NAND2 U169 ( .A(b[6]), .B(a[6]), .Z(n80) );
  GTECH_OAI21 U170 ( .A(b[7]), .B(a[7]), .C(n142), .Z(n76) );
  GTECH_NAND2 U171 ( .A(a[7]), .B(b[7]), .Z(n142) );
  GTECH_OAI21 U172 ( .A(b[4]), .B(a[4]), .C(n86), .Z(n85) );
  GTECH_NAND2 U173 ( .A(a[4]), .B(b[4]), .Z(n86) );
  GTECH_AOI22 U174 ( .A(b[3]), .B(a[3]), .C(n144), .D(n88), .Z(n138) );
  GTECH_ADD_AB U175 ( .A(b[3]), .B(a[3]), .S(n88) );
  GTECH_AO21 U176 ( .A(n145), .B(n90), .C(n91), .Z(n144) );
  GTECH_OA21 U177 ( .A(a[2]), .B(b[2]), .C(n146), .Z(n90) );
  GTECH_NOT U178 ( .A(n91), .Z(n146) );
  GTECH_ADD_AB U179 ( .A(b[2]), .B(a[2]), .COUT(n91) );
  GTECH_AO21 U180 ( .A(n96), .B(n93), .C(n94), .Z(n145) );
  GTECH_NOT U181 ( .A(n147), .Z(n94) );
  GTECH_OA21 U182 ( .A(a[1]), .B(b[1]), .C(n147), .Z(n93) );
  GTECH_NAND2 U183 ( .A(a[1]), .B(b[1]), .Z(n147) );
  GTECH_NOT U184 ( .A(n127), .Z(n96) );
  GTECH_NAND2 U185 ( .A(a[0]), .B(b[0]), .Z(n127) );
endmodule
