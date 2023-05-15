
module carry_ahead_adder16 ( a, b, cin, cout, sum, Gm, Pm );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout, Gm, Pm;
  wire   n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148;

  GTECH_ADD_AB U96 ( .A(n77), .B(n78), .S(sum[9]) );
  GTECH_ADD_AB U97 ( .A(n79), .B(n80), .S(sum[8]) );
  GTECH_ADD_AB U98 ( .A(n81), .B(n82), .S(sum[7]) );
  GTECH_OA21 U99 ( .A(n83), .B(n84), .C(n85), .Z(n81) );
  GTECH_ADD_AB U100 ( .A(n84), .B(n83), .S(sum[6]) );
  GTECH_OA21 U101 ( .A(n86), .B(n87), .C(n88), .Z(n83) );
  GTECH_ADD_AB U102 ( .A(n87), .B(n86), .S(sum[5]) );
  GTECH_OA21 U103 ( .A(n89), .B(n90), .C(n91), .Z(n86) );
  GTECH_ADD_AB U104 ( .A(n90), .B(n89), .S(sum[4]) );
  GTECH_NOT U105 ( .A(n92), .Z(n89) );
  GTECH_XNOR2 U106 ( .A(n93), .B(n94), .Z(sum[3]) );
  GTECH_AOI21 U107 ( .A(n95), .B(n96), .C(n97), .Z(n93) );
  GTECH_ADD_AB U108 ( .A(n96), .B(n95), .S(sum[2]) );
  GTECH_AO21 U109 ( .A(n98), .B(n99), .C(n100), .Z(n95) );
  GTECH_ADD_AB U110 ( .A(n99), .B(n98), .S(sum[1]) );
  GTECH_AO21 U111 ( .A(n101), .B(cin), .C(n102), .Z(n98) );
  GTECH_XNOR2 U112 ( .A(n103), .B(n104), .Z(sum[15]) );
  GTECH_AOI21 U113 ( .A(n105), .B(n106), .C(n107), .Z(n103) );
  GTECH_ADD_AB U114 ( .A(n106), .B(n105), .S(sum[14]) );
  GTECH_AO21 U115 ( .A(n108), .B(n109), .C(n110), .Z(n105) );
  GTECH_ADD_AB U116 ( .A(n109), .B(n108), .S(sum[13]) );
  GTECH_AO21 U117 ( .A(cout), .B(n111), .C(n112), .Z(n108) );
  GTECH_ADD_AB U118 ( .A(n111), .B(cout), .S(sum[12]) );
  GTECH_XNOR2 U119 ( .A(n113), .B(n114), .Z(sum[11]) );
  GTECH_AOI21 U120 ( .A(n115), .B(n116), .C(n117), .Z(n113) );
  GTECH_ADD_AB U121 ( .A(n116), .B(n115), .S(sum[10]) );
  GTECH_AO21 U122 ( .A(n78), .B(n77), .C(n118), .Z(n115) );
  GTECH_AO21 U123 ( .A(n80), .B(n79), .C(n119), .Z(n78) );
  GTECH_ADD_AB U124 ( .A(cin), .B(n101), .S(sum[0]) );
  GTECH_AO21 U125 ( .A(n80), .B(n120), .C(n121), .Z(cout) );
  GTECH_AO21 U126 ( .A(n92), .B(n122), .C(n123), .Z(n80) );
  GTECH_AO21 U127 ( .A(n124), .B(cin), .C(n125), .Z(n92) );
  GTECH_AND3 U128 ( .A(n122), .B(n124), .C(n120), .Z(Pm) );
  GTECH_AND5 U129 ( .A(n99), .B(n94), .C(n96), .D(n101), .E(n126), .Z(n124) );
  GTECH_OA21 U130 ( .A(a[0]), .B(b[0]), .C(n127), .Z(n101) );
  GTECH_NOT U131 ( .A(n102), .Z(n127) );
  GTECH_AO21 U132 ( .A(n128), .B(n120), .C(n121), .Z(Gm) );
  GTECH_AO22 U133 ( .A(n129), .B(n104), .C(b[15]), .D(a[15]), .Z(n121) );
  GTECH_AO21 U134 ( .A(n130), .B(n106), .C(n107), .Z(n129) );
  GTECH_NOT U135 ( .A(n131), .Z(n107) );
  GTECH_AO21 U136 ( .A(n112), .B(n109), .C(n110), .Z(n130) );
  GTECH_NOT U137 ( .A(n132), .Z(n110) );
  GTECH_NOT U138 ( .A(n133), .Z(n112) );
  GTECH_AND4 U139 ( .A(n111), .B(n106), .C(n109), .D(n104), .Z(n120) );
  GTECH_ADD_AB U140 ( .A(b[15]), .B(a[15]), .S(n104) );
  GTECH_OA21 U141 ( .A(a[13]), .B(b[13]), .C(n132), .Z(n109) );
  GTECH_NAND2 U142 ( .A(a[13]), .B(b[13]), .Z(n132) );
  GTECH_OA21 U143 ( .A(a[14]), .B(b[14]), .C(n131), .Z(n106) );
  GTECH_NAND2 U144 ( .A(a[14]), .B(b[14]), .Z(n131) );
  GTECH_OA21 U145 ( .A(a[12]), .B(b[12]), .C(n133), .Z(n111) );
  GTECH_NAND2 U146 ( .A(a[12]), .B(b[12]), .Z(n133) );
  GTECH_AO21 U147 ( .A(n125), .B(n122), .C(n123), .Z(n128) );
  GTECH_AO22 U148 ( .A(n134), .B(n114), .C(b[11]), .D(a[11]), .Z(n123) );
  GTECH_AO21 U149 ( .A(n135), .B(n116), .C(n117), .Z(n134) );
  GTECH_NOT U150 ( .A(n136), .Z(n117) );
  GTECH_AO21 U151 ( .A(n119), .B(n77), .C(n118), .Z(n135) );
  GTECH_NOT U152 ( .A(n137), .Z(n118) );
  GTECH_NOT U153 ( .A(n138), .Z(n119) );
  GTECH_AND4 U154 ( .A(n79), .B(n116), .C(n77), .D(n114), .Z(n122) );
  GTECH_ADD_AB U155 ( .A(b[11]), .B(a[11]), .S(n114) );
  GTECH_OA21 U156 ( .A(a[9]), .B(b[9]), .C(n137), .Z(n77) );
  GTECH_NAND2 U157 ( .A(a[9]), .B(b[9]), .Z(n137) );
  GTECH_OA21 U158 ( .A(a[10]), .B(b[10]), .C(n136), .Z(n116) );
  GTECH_NAND2 U159 ( .A(a[10]), .B(b[10]), .Z(n136) );
  GTECH_OA21 U160 ( .A(a[8]), .B(b[8]), .C(n138), .Z(n79) );
  GTECH_NAND2 U161 ( .A(a[8]), .B(b[8]), .Z(n138) );
  GTECH_NOT U162 ( .A(n139), .Z(n125) );
  GTECH_AOI222 U163 ( .A(a[7]), .B(b[7]), .C(n126), .D(n140), .E(n141), .F(
        n142), .Z(n139) );
  GTECH_OAI21 U164 ( .A(n143), .B(n84), .C(n85), .Z(n142) );
  GTECH_OA21 U165 ( .A(n87), .B(n91), .C(n88), .Z(n143) );
  GTECH_NOT U166 ( .A(n82), .Z(n141) );
  GTECH_AO22 U167 ( .A(n144), .B(n94), .C(b[3]), .D(a[3]), .Z(n140) );
  GTECH_ADD_AB U168 ( .A(b[3]), .B(a[3]), .S(n94) );
  GTECH_AO21 U169 ( .A(n145), .B(n96), .C(n97), .Z(n144) );
  GTECH_OA21 U170 ( .A(a[2]), .B(b[2]), .C(n146), .Z(n96) );
  GTECH_NOT U171 ( .A(n97), .Z(n146) );
  GTECH_AND2 U172 ( .A(b[2]), .B(a[2]), .Z(n97) );
  GTECH_AO21 U173 ( .A(n102), .B(n99), .C(n100), .Z(n145) );
  GTECH_OA21 U174 ( .A(a[1]), .B(b[1]), .C(n147), .Z(n99) );
  GTECH_NOT U175 ( .A(n100), .Z(n147) );
  GTECH_AND2 U176 ( .A(b[1]), .B(a[1]), .Z(n100) );
  GTECH_AND2 U177 ( .A(b[0]), .B(a[0]), .Z(n102) );
  GTECH_NOT U178 ( .A(n148), .Z(n126) );
  GTECH_OR4 U179 ( .A(n90), .B(n84), .C(n87), .D(n82), .Z(n148) );
  GTECH_XNOR2 U180 ( .A(b[7]), .B(a[7]), .Z(n82) );
  GTECH_OAI21 U181 ( .A(a[5]), .B(b[5]), .C(n88), .Z(n87) );
  GTECH_NAND2 U182 ( .A(b[5]), .B(a[5]), .Z(n88) );
  GTECH_OAI21 U183 ( .A(a[6]), .B(b[6]), .C(n85), .Z(n84) );
  GTECH_NAND2 U184 ( .A(b[6]), .B(a[6]), .Z(n85) );
  GTECH_OAI21 U185 ( .A(a[4]), .B(b[4]), .C(n91), .Z(n90) );
  GTECH_NAND2 U186 ( .A(a[4]), .B(b[4]), .Z(n91) );
endmodule

