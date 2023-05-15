
module carry_ahead_adder16 ( a, b, cin, cout, sum, Gm, Pm );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout, Gm, Pm;
  wire   n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155;

  GTECH_ADD_AB U97 ( .A(n78), .B(n79), .S(sum[9]) );
  GTECH_XNOR2 U98 ( .A(n80), .B(n81), .Z(sum[8]) );
  GTECH_XNOR2 U99 ( .A(n82), .B(n83), .Z(sum[7]) );
  GTECH_AOI21 U100 ( .A(n84), .B(n85), .C(n86), .Z(n82) );
  GTECH_ADD_AB U101 ( .A(n85), .B(n84), .S(sum[6]) );
  GTECH_OAI21 U102 ( .A(n87), .B(n88), .C(n89), .Z(n84) );
  GTECH_XNOR2 U103 ( .A(n87), .B(n90), .Z(sum[5]) );
  GTECH_AOI21 U104 ( .A(n91), .B(n92), .C(n93), .Z(n87) );
  GTECH_NOT U105 ( .A(n94), .Z(n91) );
  GTECH_XNOR2 U106 ( .A(n94), .B(n92), .Z(sum[4]) );
  GTECH_XNOR2 U107 ( .A(n95), .B(n96), .Z(sum[3]) );
  GTECH_AOI21 U108 ( .A(n97), .B(n98), .C(n99), .Z(n95) );
  GTECH_ADD_AB U109 ( .A(n98), .B(n97), .S(sum[2]) );
  GTECH_OAI21 U110 ( .A(n100), .B(n101), .C(n102), .Z(n97) );
  GTECH_XNOR2 U111 ( .A(n100), .B(n103), .Z(sum[1]) );
  GTECH_AOI21 U112 ( .A(n104), .B(cin), .C(n105), .Z(n100) );
  GTECH_ADD_AB U113 ( .A(n106), .B(n107), .S(sum[15]) );
  GTECH_OA21 U114 ( .A(n108), .B(n109), .C(n110), .Z(n106) );
  GTECH_ADD_AB U115 ( .A(n108), .B(n109), .S(sum[14]) );
  GTECH_OA21 U116 ( .A(n111), .B(n112), .C(n113), .Z(n108) );
  GTECH_ADD_AB U117 ( .A(n111), .B(n112), .S(sum[13]) );
  GTECH_OA21 U118 ( .A(n114), .B(n115), .C(n116), .Z(n111) );
  GTECH_ADD_AB U119 ( .A(n115), .B(n114), .S(sum[12]) );
  GTECH_XNOR2 U120 ( .A(n117), .B(n118), .Z(sum[11]) );
  GTECH_AOI21 U121 ( .A(n119), .B(n120), .C(n121), .Z(n118) );
  GTECH_ADD_AB U122 ( .A(n119), .B(n120), .S(sum[10]) );
  GTECH_AO21 U123 ( .A(n79), .B(n78), .C(n122), .Z(n119) );
  GTECH_AO22 U124 ( .A(a[8]), .B(b[8]), .C(n123), .D(n81), .Z(n79) );
  GTECH_NOT U125 ( .A(n80), .Z(n123) );
  GTECH_ADD_AB U126 ( .A(cin), .B(n104), .S(sum[0]) );
  GTECH_NOT U127 ( .A(n114), .Z(cout) );
  GTECH_OA21 U128 ( .A(n80), .B(n124), .C(n125), .Z(n114) );
  GTECH_OA21 U129 ( .A(n94), .B(n126), .C(n127), .Z(n80) );
  GTECH_OA21 U130 ( .A(n128), .B(n129), .C(n130), .Z(n94) );
  GTECH_NOT U131 ( .A(cin), .Z(n129) );
  GTECH_NOR3 U132 ( .A(n126), .B(n128), .C(n124), .Z(Pm) );
  GTECH_NAND5 U133 ( .A(n103), .B(n96), .C(n98), .D(n104), .E(n131), .Z(n128)
         );
  GTECH_OA21 U134 ( .A(a[0]), .B(b[0]), .C(n132), .Z(n104) );
  GTECH_NOT U135 ( .A(n101), .Z(n103) );
  GTECH_OAI21 U136 ( .A(n133), .B(n124), .C(n125), .Z(Gm) );
  GTECH_AOI2N2 U137 ( .A(b[15]), .B(a[15]), .C(n134), .D(n107), .Z(n125) );
  GTECH_OA21 U138 ( .A(n135), .B(n109), .C(n110), .Z(n134) );
  GTECH_OA21 U139 ( .A(n112), .B(n116), .C(n113), .Z(n135) );
  GTECH_OR4 U140 ( .A(n115), .B(n109), .C(n112), .D(n107), .Z(n124) );
  GTECH_XNOR2 U141 ( .A(b[15]), .B(a[15]), .Z(n107) );
  GTECH_OAI21 U142 ( .A(b[13]), .B(a[13]), .C(n113), .Z(n112) );
  GTECH_NOT U143 ( .A(n136), .Z(n113) );
  GTECH_AND2 U144 ( .A(a[13]), .B(b[13]), .Z(n136) );
  GTECH_OAI21 U145 ( .A(b[14]), .B(a[14]), .C(n110), .Z(n109) );
  GTECH_NOT U146 ( .A(n137), .Z(n110) );
  GTECH_AND2 U147 ( .A(a[14]), .B(b[14]), .Z(n137) );
  GTECH_OAI21 U148 ( .A(a[12]), .B(b[12]), .C(n116), .Z(n115) );
  GTECH_OR_NOT U149 ( .A(n138), .B(a[12]), .Z(n116) );
  GTECH_NOT U150 ( .A(b[12]), .Z(n138) );
  GTECH_OA21 U151 ( .A(n130), .B(n126), .C(n127), .Z(n133) );
  GTECH_AOI21 U152 ( .A(n139), .B(n117), .C(n140), .Z(n127) );
  GTECH_OR_NOT U153 ( .A(n121), .B(n141), .Z(n139) );
  GTECH_OAI21 U154 ( .A(n122), .B(n142), .C(n120), .Z(n141) );
  GTECH_AND3 U155 ( .A(a[8]), .B(n78), .C(b[8]), .Z(n142) );
  GTECH_NAND4 U156 ( .A(n117), .B(n120), .C(n78), .D(n81), .Z(n126) );
  GTECH_ADD_AB U157 ( .A(b[8]), .B(a[8]), .S(n81) );
  GTECH_OA21 U158 ( .A(b[9]), .B(a[9]), .C(n143), .Z(n78) );
  GTECH_NOT U159 ( .A(n122), .Z(n143) );
  GTECH_AND2 U160 ( .A(b[9]), .B(a[9]), .Z(n122) );
  GTECH_OA21 U161 ( .A(b[10]), .B(a[10]), .C(n144), .Z(n120) );
  GTECH_NOT U162 ( .A(n121), .Z(n144) );
  GTECH_AND2 U163 ( .A(a[10]), .B(b[10]), .Z(n121) );
  GTECH_OA21 U164 ( .A(b[11]), .B(a[11]), .C(n145), .Z(n117) );
  GTECH_NOT U165 ( .A(n140), .Z(n145) );
  GTECH_AND2 U166 ( .A(b[11]), .B(a[11]), .Z(n140) );
  GTECH_AOI222 U167 ( .A(n131), .B(n146), .C(b[7]), .D(a[7]), .E(n83), .F(n147), .Z(n130) );
  GTECH_AO21 U168 ( .A(n148), .B(n85), .C(n86), .Z(n147) );
  GTECH_OAI21 U169 ( .A(n149), .B(n88), .C(n89), .Z(n148) );
  GTECH_AO22 U170 ( .A(n150), .B(n96), .C(b[3]), .D(a[3]), .Z(n146) );
  GTECH_ADD_AB U171 ( .A(b[3]), .B(a[3]), .S(n96) );
  GTECH_AO21 U172 ( .A(n151), .B(n98), .C(n99), .Z(n150) );
  GTECH_OA21 U173 ( .A(a[2]), .B(b[2]), .C(n152), .Z(n98) );
  GTECH_NOT U174 ( .A(n99), .Z(n152) );
  GTECH_AND2 U175 ( .A(b[2]), .B(a[2]), .Z(n99) );
  GTECH_OAI21 U176 ( .A(n101), .B(n132), .C(n102), .Z(n151) );
  GTECH_NOT U177 ( .A(n105), .Z(n132) );
  GTECH_AND2 U178 ( .A(a[0]), .B(b[0]), .Z(n105) );
  GTECH_OAI21 U179 ( .A(b[1]), .B(a[1]), .C(n102), .Z(n101) );
  GTECH_OR_NOT U180 ( .A(n153), .B(b[1]), .Z(n102) );
  GTECH_NOT U181 ( .A(a[1]), .Z(n153) );
  GTECH_AND4 U182 ( .A(n92), .B(n85), .C(n90), .D(n83), .Z(n131) );
  GTECH_ADD_AB U183 ( .A(b[7]), .B(a[7]), .S(n83) );
  GTECH_NOT U184 ( .A(n88), .Z(n90) );
  GTECH_OAI21 U185 ( .A(b[5]), .B(a[5]), .C(n89), .Z(n88) );
  GTECH_OR_NOT U186 ( .A(n154), .B(b[5]), .Z(n89) );
  GTECH_NOT U187 ( .A(a[5]), .Z(n154) );
  GTECH_OA21 U188 ( .A(a[6]), .B(b[6]), .C(n155), .Z(n85) );
  GTECH_NOT U189 ( .A(n86), .Z(n155) );
  GTECH_AND2 U190 ( .A(b[6]), .B(a[6]), .Z(n86) );
  GTECH_OA21 U191 ( .A(b[4]), .B(a[4]), .C(n149), .Z(n92) );
  GTECH_NOT U192 ( .A(n93), .Z(n149) );
  GTECH_AND2 U193 ( .A(b[4]), .B(a[4]), .Z(n93) );
endmodule

