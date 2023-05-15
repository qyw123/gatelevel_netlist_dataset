
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
         n148, n149, n150, n151, n152, n153, n154;

  GTECH_XOR2 U96 ( .A(n77), .B(n78), .Z(sum[9]) );
  GTECH_XOR2 U97 ( .A(n79), .B(n80), .Z(sum[8]) );
  GTECH_XNOR2 U98 ( .A(n81), .B(n82), .Z(sum[7]) );
  GTECH_AOI21 U99 ( .A(n83), .B(n84), .C(n85), .Z(n82) );
  GTECH_XOR2 U100 ( .A(n84), .B(n83), .Z(sum[6]) );
  GTECH_OAI21 U101 ( .A(n86), .B(n87), .C(n88), .Z(n83) );
  GTECH_XOR2 U102 ( .A(n86), .B(n87), .Z(sum[5]) );
  GTECH_AOI21 U103 ( .A(n89), .B(n90), .C(n91), .Z(n86) );
  GTECH_NOT U104 ( .A(n92), .Z(n90) );
  GTECH_XNOR2 U105 ( .A(n89), .B(n92), .Z(sum[4]) );
  GTECH_XNOR2 U106 ( .A(n93), .B(n94), .Z(sum[3]) );
  GTECH_AOI21 U107 ( .A(n95), .B(n96), .C(n97), .Z(n94) );
  GTECH_XOR2 U108 ( .A(n95), .B(n96), .Z(sum[2]) );
  GTECH_AO22 U109 ( .A(b[1]), .B(a[1]), .C(n98), .D(n99), .Z(n95) );
  GTECH_XOR2 U110 ( .A(n99), .B(n98), .Z(sum[1]) );
  GTECH_AO21 U111 ( .A(n100), .B(cin), .C(n101), .Z(n98) );
  GTECH_XNOR2 U112 ( .A(n102), .B(n103), .Z(sum[15]) );
  GTECH_OAI21 U113 ( .A(n104), .B(n105), .C(n106), .Z(n102) );
  GTECH_XOR2 U114 ( .A(n104), .B(n105), .Z(sum[14]) );
  GTECH_AOI2N2 U115 ( .A(b[13]), .B(a[13]), .C(n107), .D(n108), .Z(n104) );
  GTECH_XOR2 U116 ( .A(n108), .B(n107), .Z(sum[13]) );
  GTECH_OA21 U117 ( .A(n109), .B(n110), .C(n111), .Z(n107) );
  GTECH_XOR2 U118 ( .A(n110), .B(n109), .Z(sum[12]) );
  GTECH_NOT U119 ( .A(cout), .Z(n109) );
  GTECH_XOR2 U120 ( .A(n112), .B(n113), .Z(sum[11]) );
  GTECH_AOI21 U121 ( .A(n114), .B(n115), .C(n116), .Z(n113) );
  GTECH_XOR2 U122 ( .A(n115), .B(n114), .Z(sum[10]) );
  GTECH_OAI21 U123 ( .A(n77), .B(n78), .C(n117), .Z(n114) );
  GTECH_OA21 U124 ( .A(n80), .B(n79), .C(n118), .Z(n77) );
  GTECH_XOR2 U125 ( .A(cin), .B(n100), .Z(sum[0]) );
  GTECH_AO21 U126 ( .A(n119), .B(n120), .C(n121), .Z(cout) );
  GTECH_NOT U127 ( .A(n80), .Z(n119) );
  GTECH_AOI21 U128 ( .A(n89), .B(n122), .C(n123), .Z(n80) );
  GTECH_AO21 U129 ( .A(n124), .B(cin), .C(n125), .Z(n89) );
  GTECH_AND3 U130 ( .A(n122), .B(n124), .C(n120), .Z(Pm) );
  GTECH_AND5 U131 ( .A(n93), .B(n99), .C(n96), .D(n100), .E(n126), .Z(n124) );
  GTECH_OA21 U132 ( .A(a[0]), .B(b[0]), .C(n127), .Z(n100) );
  GTECH_AO21 U133 ( .A(n128), .B(n120), .C(n121), .Z(Gm) );
  GTECH_OAI21 U134 ( .A(n129), .B(n103), .C(n130), .Z(n121) );
  GTECH_OA21 U135 ( .A(n131), .B(n105), .C(n106), .Z(n129) );
  GTECH_AOI2N2 U136 ( .A(b[13]), .B(a[13]), .C(n108), .D(n111), .Z(n131) );
  GTECH_NOR4 U137 ( .A(n110), .B(n103), .C(n105), .D(n108), .Z(n120) );
  GTECH_XNOR2 U138 ( .A(a[13]), .B(b[13]), .Z(n108) );
  GTECH_OAI21 U139 ( .A(b[14]), .B(a[14]), .C(n106), .Z(n105) );
  GTECH_OR_NOT U140 ( .A(n132), .B(b[14]), .Z(n106) );
  GTECH_NOT U141 ( .A(a[14]), .Z(n132) );
  GTECH_OAI21 U142 ( .A(b[15]), .B(a[15]), .C(n130), .Z(n103) );
  GTECH_NOT U143 ( .A(n133), .Z(n130) );
  GTECH_AND2 U144 ( .A(b[15]), .B(a[15]), .Z(n133) );
  GTECH_OAI21 U145 ( .A(b[12]), .B(a[12]), .C(n111), .Z(n110) );
  GTECH_OR_NOT U146 ( .A(n134), .B(b[12]), .Z(n111) );
  GTECH_NOT U147 ( .A(a[12]), .Z(n134) );
  GTECH_AO21 U148 ( .A(n125), .B(n122), .C(n123), .Z(n128) );
  GTECH_OAI2N2 U149 ( .A(n135), .B(n112), .C(b[11]), .D(a[11]), .Z(n123) );
  GTECH_OA21 U150 ( .A(n136), .B(n137), .C(n138), .Z(n135) );
  GTECH_OA21 U151 ( .A(n78), .B(n118), .C(n117), .Z(n136) );
  GTECH_NOR4 U152 ( .A(n79), .B(n137), .C(n78), .D(n112), .Z(n122) );
  GTECH_XNOR2 U153 ( .A(a[11]), .B(b[11]), .Z(n112) );
  GTECH_OAI21 U154 ( .A(b[9]), .B(a[9]), .C(n117), .Z(n78) );
  GTECH_OR_NOT U155 ( .A(n139), .B(b[9]), .Z(n117) );
  GTECH_NOT U156 ( .A(a[9]), .Z(n139) );
  GTECH_NOT U157 ( .A(n115), .Z(n137) );
  GTECH_OA21 U158 ( .A(b[10]), .B(a[10]), .C(n138), .Z(n115) );
  GTECH_NOT U159 ( .A(n116), .Z(n138) );
  GTECH_AND2 U160 ( .A(a[10]), .B(b[10]), .Z(n116) );
  GTECH_OAI21 U161 ( .A(b[8]), .B(a[8]), .C(n118), .Z(n79) );
  GTECH_OR_NOT U162 ( .A(n140), .B(b[8]), .Z(n118) );
  GTECH_NOT U163 ( .A(a[8]), .Z(n140) );
  GTECH_NOT U164 ( .A(n141), .Z(n125) );
  GTECH_AOI222 U165 ( .A(a[7]), .B(b[7]), .C(n126), .D(n142), .E(n81), .F(n143), .Z(n141) );
  GTECH_OAI21 U166 ( .A(n144), .B(n145), .C(n146), .Z(n143) );
  GTECH_OA21 U167 ( .A(n87), .B(n147), .C(n88), .Z(n144) );
  GTECH_OAI2N2 U168 ( .A(n148), .B(n149), .C(b[3]), .D(a[3]), .Z(n142) );
  GTECH_NOT U169 ( .A(n93), .Z(n149) );
  GTECH_XOR2 U170 ( .A(a[3]), .B(b[3]), .Z(n93) );
  GTECH_AOI21 U171 ( .A(n150), .B(n96), .C(n97), .Z(n148) );
  GTECH_OA21 U172 ( .A(b[2]), .B(a[2]), .C(n151), .Z(n96) );
  GTECH_NOT U173 ( .A(n97), .Z(n151) );
  GTECH_AND2 U174 ( .A(b[2]), .B(a[2]), .Z(n97) );
  GTECH_OAI2N2 U175 ( .A(n152), .B(n127), .C(b[1]), .D(a[1]), .Z(n150) );
  GTECH_NOT U176 ( .A(n101), .Z(n127) );
  GTECH_AND2 U177 ( .A(b[0]), .B(a[0]), .Z(n101) );
  GTECH_NOT U178 ( .A(n99), .Z(n152) );
  GTECH_XOR2 U179 ( .A(a[1]), .B(b[1]), .Z(n99) );
  GTECH_NOR4 U180 ( .A(n145), .B(n87), .C(n92), .D(n153), .Z(n126) );
  GTECH_NOT U181 ( .A(n81), .Z(n153) );
  GTECH_XOR2 U182 ( .A(a[7]), .B(b[7]), .Z(n81) );
  GTECH_OAI21 U183 ( .A(b[4]), .B(a[4]), .C(n147), .Z(n92) );
  GTECH_NOT U184 ( .A(n91), .Z(n147) );
  GTECH_AND2 U185 ( .A(b[4]), .B(a[4]), .Z(n91) );
  GTECH_OAI21 U186 ( .A(b[5]), .B(a[5]), .C(n88), .Z(n87) );
  GTECH_OR_NOT U187 ( .A(n154), .B(b[5]), .Z(n88) );
  GTECH_NOT U188 ( .A(a[5]), .Z(n154) );
  GTECH_NOT U189 ( .A(n84), .Z(n145) );
  GTECH_OA21 U190 ( .A(b[6]), .B(a[6]), .C(n146), .Z(n84) );
  GTECH_NOT U191 ( .A(n85), .Z(n146) );
  GTECH_AND2 U192 ( .A(a[6]), .B(b[6]), .Z(n85) );
endmodule
