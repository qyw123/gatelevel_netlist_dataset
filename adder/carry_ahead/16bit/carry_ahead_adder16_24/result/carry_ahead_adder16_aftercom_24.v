
module carry_ahead_adder16 ( a, b, cin, cout, sum, Gm, Pm );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout, Gm, Pm;
  wire   n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156;

  GTECH_ADD_AB U98 ( .A(n79), .B(n80), .S(sum[9]) );
  GTECH_XNOR2 U99 ( .A(n81), .B(n82), .Z(sum[8]) );
  GTECH_ADD_AB U100 ( .A(n83), .B(n84), .S(sum[7]) );
  GTECH_AOI21 U101 ( .A(n85), .B(n86), .C(n87), .Z(n84) );
  GTECH_XNOR2 U102 ( .A(n88), .B(n86), .Z(sum[6]) );
  GTECH_OAI21 U103 ( .A(n89), .B(n90), .C(n91), .Z(n86) );
  GTECH_ADD_AB U104 ( .A(n90), .B(n89), .S(sum[5]) );
  GTECH_AOI21 U105 ( .A(n92), .B(n93), .C(n94), .Z(n89) );
  GTECH_NOT U106 ( .A(n95), .Z(n93) );
  GTECH_XNOR2 U107 ( .A(n92), .B(n95), .Z(sum[4]) );
  GTECH_XNOR2 U108 ( .A(n96), .B(n97), .Z(sum[3]) );
  GTECH_AOI21 U109 ( .A(n98), .B(n99), .C(n100), .Z(n96) );
  GTECH_XNOR2 U110 ( .A(n101), .B(n99), .Z(sum[2]) );
  GTECH_OAI21 U111 ( .A(n102), .B(n103), .C(n104), .Z(n99) );
  GTECH_ADD_AB U112 ( .A(n102), .B(n103), .S(sum[1]) );
  GTECH_AOI21 U113 ( .A(n105), .B(cin), .C(n106), .Z(n102) );
  GTECH_NOT U114 ( .A(n107), .Z(n106) );
  GTECH_ADD_AB U115 ( .A(n108), .B(n109), .S(sum[15]) );
  GTECH_AOI21 U116 ( .A(n110), .B(n111), .C(n112), .Z(n108) );
  GTECH_XNOR2 U117 ( .A(n113), .B(n111), .Z(sum[14]) );
  GTECH_OAI21 U118 ( .A(n114), .B(n115), .C(n116), .Z(n111) );
  GTECH_ADD_AB U119 ( .A(n114), .B(n115), .S(sum[13]) );
  GTECH_AOI21 U120 ( .A(cout), .B(n117), .C(n118), .Z(n114) );
  GTECH_NOT U121 ( .A(n119), .Z(n118) );
  GTECH_ADD_AB U122 ( .A(n117), .B(cout), .S(sum[12]) );
  GTECH_NOT U123 ( .A(n120), .Z(n117) );
  GTECH_ADD_AB U124 ( .A(n121), .B(n122), .S(sum[11]) );
  GTECH_AOI21 U125 ( .A(n123), .B(n124), .C(n125), .Z(n121) );
  GTECH_XNOR2 U126 ( .A(n126), .B(n124), .Z(sum[10]) );
  GTECH_OAI21 U127 ( .A(n79), .B(n80), .C(n127), .Z(n124) );
  GTECH_AOI21 U128 ( .A(n82), .B(n128), .C(n129), .Z(n79) );
  GTECH_NOT U129 ( .A(n130), .Z(n129) );
  GTECH_NOT U130 ( .A(n81), .Z(n128) );
  GTECH_ADD_AB U131 ( .A(cin), .B(n105), .S(sum[0]) );
  GTECH_AO21 U132 ( .A(n82), .B(n131), .C(n132), .Z(cout) );
  GTECH_AO21 U133 ( .A(n92), .B(n133), .C(n134), .Z(n82) );
  GTECH_AO21 U134 ( .A(n135), .B(cin), .C(n136), .Z(n92) );
  GTECH_AND3 U135 ( .A(n133), .B(n135), .C(n131), .Z(Pm) );
  GTECH_AND5 U136 ( .A(n137), .B(n97), .C(n98), .D(n105), .E(n138), .Z(n135)
         );
  GTECH_NOT U137 ( .A(n139), .Z(n105) );
  GTECH_OAI21 U138 ( .A(b[0]), .B(a[0]), .C(n107), .Z(n139) );
  GTECH_NOT U139 ( .A(n103), .Z(n137) );
  GTECH_AO21 U140 ( .A(n140), .B(n131), .C(n132), .Z(Gm) );
  GTECH_OAI2N2 U141 ( .A(n141), .B(n109), .C(b[15]), .D(a[15]), .Z(n132) );
  GTECH_AOI21 U142 ( .A(n110), .B(n142), .C(n112), .Z(n141) );
  GTECH_OAI21 U143 ( .A(n119), .B(n115), .C(n116), .Z(n142) );
  GTECH_NOT U144 ( .A(n113), .Z(n110) );
  GTECH_NOR4 U145 ( .A(n120), .B(n113), .C(n115), .D(n109), .Z(n131) );
  GTECH_XNOR2 U146 ( .A(b[15]), .B(a[15]), .Z(n109) );
  GTECH_OAI21 U147 ( .A(b[13]), .B(a[13]), .C(n116), .Z(n115) );
  GTECH_NAND2 U148 ( .A(b[13]), .B(a[13]), .Z(n116) );
  GTECH_OAI21 U149 ( .A(b[14]), .B(a[14]), .C(n143), .Z(n113) );
  GTECH_NOT U150 ( .A(n112), .Z(n143) );
  GTECH_AND2 U151 ( .A(b[14]), .B(a[14]), .Z(n112) );
  GTECH_OAI21 U152 ( .A(b[12]), .B(a[12]), .C(n119), .Z(n120) );
  GTECH_NAND2 U153 ( .A(b[12]), .B(a[12]), .Z(n119) );
  GTECH_AO21 U154 ( .A(n133), .B(n136), .C(n134), .Z(n140) );
  GTECH_OAI2N2 U155 ( .A(n144), .B(n122), .C(b[11]), .D(a[11]), .Z(n134) );
  GTECH_AOI21 U156 ( .A(n123), .B(n145), .C(n125), .Z(n144) );
  GTECH_OAI21 U157 ( .A(n130), .B(n80), .C(n127), .Z(n145) );
  GTECH_NOT U158 ( .A(n126), .Z(n123) );
  GTECH_AO21 U159 ( .A(n146), .B(n138), .C(n147), .Z(n136) );
  GTECH_OAI21 U160 ( .A(n83), .B(n148), .C(n149), .Z(n147) );
  GTECH_AOI21 U161 ( .A(n150), .B(n85), .C(n87), .Z(n148) );
  GTECH_NOT U162 ( .A(n88), .Z(n85) );
  GTECH_OAI21 U163 ( .A(n151), .B(n90), .C(n91), .Z(n150) );
  GTECH_NOR4 U164 ( .A(n95), .B(n83), .C(n88), .D(n90), .Z(n138) );
  GTECH_OAI21 U165 ( .A(b[5]), .B(a[5]), .C(n91), .Z(n90) );
  GTECH_NAND2 U166 ( .A(a[5]), .B(b[5]), .Z(n91) );
  GTECH_OAI21 U167 ( .A(b[6]), .B(a[6]), .C(n152), .Z(n88) );
  GTECH_NOT U168 ( .A(n87), .Z(n152) );
  GTECH_AND2 U169 ( .A(a[6]), .B(b[6]), .Z(n87) );
  GTECH_OAI21 U170 ( .A(b[7]), .B(a[7]), .C(n149), .Z(n83) );
  GTECH_NAND2 U171 ( .A(a[7]), .B(b[7]), .Z(n149) );
  GTECH_OAI21 U172 ( .A(b[4]), .B(a[4]), .C(n151), .Z(n95) );
  GTECH_NOT U173 ( .A(n94), .Z(n151) );
  GTECH_AND2 U174 ( .A(a[4]), .B(b[4]), .Z(n94) );
  GTECH_AO22 U175 ( .A(n153), .B(n97), .C(b[3]), .D(a[3]), .Z(n146) );
  GTECH_ADD_AB U176 ( .A(b[3]), .B(a[3]), .S(n97) );
  GTECH_AO21 U177 ( .A(n98), .B(n154), .C(n100), .Z(n153) );
  GTECH_OAI21 U178 ( .A(n107), .B(n103), .C(n104), .Z(n154) );
  GTECH_OAI21 U179 ( .A(b[1]), .B(a[1]), .C(n104), .Z(n103) );
  GTECH_NAND2 U180 ( .A(b[1]), .B(a[1]), .Z(n104) );
  GTECH_NAND2 U181 ( .A(b[0]), .B(a[0]), .Z(n107) );
  GTECH_NOT U182 ( .A(n101), .Z(n98) );
  GTECH_OAI21 U183 ( .A(b[2]), .B(a[2]), .C(n155), .Z(n101) );
  GTECH_NOT U184 ( .A(n100), .Z(n155) );
  GTECH_AND2 U185 ( .A(b[2]), .B(a[2]), .Z(n100) );
  GTECH_NOR4 U186 ( .A(n81), .B(n126), .C(n80), .D(n122), .Z(n133) );
  GTECH_XNOR2 U187 ( .A(b[11]), .B(a[11]), .Z(n122) );
  GTECH_OAI21 U188 ( .A(b[9]), .B(a[9]), .C(n127), .Z(n80) );
  GTECH_NAND2 U189 ( .A(b[9]), .B(a[9]), .Z(n127) );
  GTECH_OAI21 U190 ( .A(b[10]), .B(a[10]), .C(n156), .Z(n126) );
  GTECH_NOT U191 ( .A(n125), .Z(n156) );
  GTECH_AND2 U192 ( .A(b[10]), .B(a[10]), .Z(n125) );
  GTECH_OAI21 U193 ( .A(b[8]), .B(a[8]), .C(n130), .Z(n81) );
  GTECH_NAND2 U194 ( .A(b[8]), .B(a[8]), .Z(n130) );
endmodule

