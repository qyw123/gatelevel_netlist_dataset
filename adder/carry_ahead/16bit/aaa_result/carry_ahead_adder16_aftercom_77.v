
module carry_ahead_adder16 ( a, b, cin, cout, sum, Gm, Pm );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout, Gm, Pm;
  wire   n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154;

  GTECH_XOR2 U102 ( .A(n83), .B(n84), .Z(sum[9]) );
  GTECH_XOR2 U103 ( .A(n85), .B(n86), .Z(sum[8]) );
  GTECH_XOR2 U104 ( .A(n87), .B(n88), .Z(sum[7]) );
  GTECH_OA21 U105 ( .A(n89), .B(n90), .C(n91), .Z(n88) );
  GTECH_XOR2 U106 ( .A(n89), .B(n90), .Z(sum[6]) );
  GTECH_OA21 U107 ( .A(n92), .B(n93), .C(n94), .Z(n89) );
  GTECH_XOR2 U108 ( .A(n92), .B(n93), .Z(sum[5]) );
  GTECH_OA21 U109 ( .A(n95), .B(n96), .C(n97), .Z(n92) );
  GTECH_XOR2 U110 ( .A(n95), .B(n96), .Z(sum[4]) );
  GTECH_XOR2 U111 ( .A(n98), .B(n99), .Z(sum[3]) );
  GTECH_OA21 U112 ( .A(n100), .B(n101), .C(n102), .Z(n99) );
  GTECH_XOR2 U113 ( .A(n100), .B(n101), .Z(sum[2]) );
  GTECH_OA21 U114 ( .A(n103), .B(n104), .C(n105), .Z(n100) );
  GTECH_XOR2 U115 ( .A(n103), .B(n104), .Z(sum[1]) );
  GTECH_OA21 U116 ( .A(n106), .B(n107), .C(n108), .Z(n103) );
  GTECH_XOR2 U117 ( .A(n109), .B(n110), .Z(sum[15]) );
  GTECH_AOI21 U118 ( .A(n111), .B(n112), .C(n113), .Z(n110) );
  GTECH_XOR2 U119 ( .A(n111), .B(n112), .Z(sum[14]) );
  GTECH_AO21 U120 ( .A(n114), .B(n115), .C(n116), .Z(n111) );
  GTECH_XOR2 U121 ( .A(n114), .B(n115), .Z(sum[13]) );
  GTECH_AO21 U122 ( .A(cout), .B(n117), .C(n118), .Z(n114) );
  GTECH_XOR2 U123 ( .A(cout), .B(n117), .Z(sum[12]) );
  GTECH_XOR2 U124 ( .A(n119), .B(n120), .Z(sum[11]) );
  GTECH_AOI21 U125 ( .A(n121), .B(n122), .C(n123), .Z(n120) );
  GTECH_XOR2 U126 ( .A(n121), .B(n122), .Z(sum[10]) );
  GTECH_AO21 U127 ( .A(n83), .B(n84), .C(n124), .Z(n121) );
  GTECH_AO21 U128 ( .A(n85), .B(n86), .C(n125), .Z(n83) );
  GTECH_XOR2 U129 ( .A(n107), .B(n106), .Z(sum[0]) );
  GTECH_NOT U130 ( .A(cin), .Z(n107) );
  GTECH_AO21 U131 ( .A(n85), .B(n126), .C(n127), .Z(cout) );
  GTECH_AO21 U132 ( .A(n128), .B(n129), .C(n130), .Z(n85) );
  GTECH_NOT U133 ( .A(n95), .Z(n128) );
  GTECH_AOI21 U134 ( .A(n131), .B(cin), .C(n132), .Z(n95) );
  GTECH_AND3 U135 ( .A(n129), .B(n131), .C(n126), .Z(Pm) );
  GTECH_NOR5 U136 ( .A(n104), .B(n98), .C(n101), .D(n106), .E(n133), .Z(n131)
         );
  GTECH_OAI21 U137 ( .A(a[0]), .B(b[0]), .C(n108), .Z(n106) );
  GTECH_AO21 U138 ( .A(n134), .B(n126), .C(n127), .Z(Gm) );
  GTECH_OAI2N2 U139 ( .A(n135), .B(n109), .C(b[15]), .D(a[15]), .Z(n127) );
  GTECH_AOI21 U140 ( .A(n136), .B(n112), .C(n113), .Z(n135) );
  GTECH_NOT U141 ( .A(n137), .Z(n113) );
  GTECH_AO21 U142 ( .A(n118), .B(n115), .C(n116), .Z(n136) );
  GTECH_NOT U143 ( .A(n138), .Z(n116) );
  GTECH_NOT U144 ( .A(n139), .Z(n118) );
  GTECH_AND4 U145 ( .A(n117), .B(n112), .C(n115), .D(n140), .Z(n126) );
  GTECH_NOT U146 ( .A(n109), .Z(n140) );
  GTECH_XNOR2 U147 ( .A(a[15]), .B(b[15]), .Z(n109) );
  GTECH_OA21 U148 ( .A(a[13]), .B(b[13]), .C(n138), .Z(n115) );
  GTECH_NAND2 U149 ( .A(a[13]), .B(b[13]), .Z(n138) );
  GTECH_OA21 U150 ( .A(a[14]), .B(b[14]), .C(n137), .Z(n112) );
  GTECH_NAND2 U151 ( .A(a[14]), .B(b[14]), .Z(n137) );
  GTECH_OA21 U152 ( .A(a[12]), .B(b[12]), .C(n139), .Z(n117) );
  GTECH_NAND2 U153 ( .A(a[12]), .B(b[12]), .Z(n139) );
  GTECH_AO21 U154 ( .A(n132), .B(n129), .C(n130), .Z(n134) );
  GTECH_OAI2N2 U155 ( .A(n141), .B(n119), .C(b[11]), .D(a[11]), .Z(n130) );
  GTECH_AOI21 U156 ( .A(n142), .B(n122), .C(n123), .Z(n141) );
  GTECH_NOT U157 ( .A(n143), .Z(n123) );
  GTECH_AO21 U158 ( .A(n125), .B(n84), .C(n124), .Z(n142) );
  GTECH_NOT U159 ( .A(n144), .Z(n124) );
  GTECH_NOT U160 ( .A(n145), .Z(n125) );
  GTECH_AND4 U161 ( .A(n86), .B(n122), .C(n84), .D(n146), .Z(n129) );
  GTECH_NOT U162 ( .A(n119), .Z(n146) );
  GTECH_XNOR2 U163 ( .A(a[11]), .B(b[11]), .Z(n119) );
  GTECH_OA21 U164 ( .A(a[9]), .B(b[9]), .C(n144), .Z(n84) );
  GTECH_NAND2 U165 ( .A(a[9]), .B(b[9]), .Z(n144) );
  GTECH_OA21 U166 ( .A(a[10]), .B(b[10]), .C(n143), .Z(n122) );
  GTECH_NAND2 U167 ( .A(a[10]), .B(b[10]), .Z(n143) );
  GTECH_OA21 U168 ( .A(a[8]), .B(b[8]), .C(n145), .Z(n86) );
  GTECH_NAND2 U169 ( .A(a[8]), .B(b[8]), .Z(n145) );
  GTECH_NOT U170 ( .A(n147), .Z(n132) );
  GTECH_AOI222 U171 ( .A(a[7]), .B(b[7]), .C(n148), .D(n149), .E(n150), .F(
        n151), .Z(n147) );
  GTECH_OAI21 U172 ( .A(n152), .B(n90), .C(n91), .Z(n151) );
  GTECH_OA21 U173 ( .A(n93), .B(n97), .C(n94), .Z(n152) );
  GTECH_NOT U174 ( .A(n87), .Z(n150) );
  GTECH_OAI2N2 U175 ( .A(n153), .B(n98), .C(b[3]), .D(a[3]), .Z(n149) );
  GTECH_XNOR2 U176 ( .A(a[3]), .B(b[3]), .Z(n98) );
  GTECH_OA21 U177 ( .A(n154), .B(n101), .C(n102), .Z(n153) );
  GTECH_OAI21 U178 ( .A(a[2]), .B(b[2]), .C(n102), .Z(n101) );
  GTECH_NAND2 U179 ( .A(b[2]), .B(a[2]), .Z(n102) );
  GTECH_OA21 U180 ( .A(n108), .B(n104), .C(n105), .Z(n154) );
  GTECH_OAI21 U181 ( .A(a[1]), .B(b[1]), .C(n105), .Z(n104) );
  GTECH_NAND2 U182 ( .A(b[1]), .B(a[1]), .Z(n105) );
  GTECH_NAND2 U183 ( .A(a[0]), .B(b[0]), .Z(n108) );
  GTECH_NOT U184 ( .A(n133), .Z(n148) );
  GTECH_OR4 U185 ( .A(n96), .B(n90), .C(n93), .D(n87), .Z(n133) );
  GTECH_XNOR2 U186 ( .A(a[7]), .B(b[7]), .Z(n87) );
  GTECH_OAI21 U187 ( .A(a[5]), .B(b[5]), .C(n94), .Z(n93) );
  GTECH_NAND2 U188 ( .A(b[5]), .B(a[5]), .Z(n94) );
  GTECH_OAI21 U189 ( .A(a[6]), .B(b[6]), .C(n91), .Z(n90) );
  GTECH_NAND2 U190 ( .A(b[6]), .B(a[6]), .Z(n91) );
  GTECH_OAI21 U191 ( .A(a[4]), .B(b[4]), .C(n97), .Z(n96) );
  GTECH_NAND2 U192 ( .A(a[4]), .B(b[4]), .Z(n97) );
endmodule

