
module carry_ahead_adder16 ( a, b, cin, cout, sum, Gm, Pm );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout, Gm, Pm;
  wire   n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161;

  GTECH_XOR2 U100 ( .A(n81), .B(n82), .Z(sum[9]) );
  GTECH_XOR2 U101 ( .A(n83), .B(n84), .Z(sum[8]) );
  GTECH_XNOR2 U102 ( .A(n85), .B(n86), .Z(sum[7]) );
  GTECH_AOI21 U103 ( .A(n87), .B(n88), .C(n89), .Z(n86) );
  GTECH_XOR2 U104 ( .A(n87), .B(n88), .Z(sum[6]) );
  GTECH_OAI21 U105 ( .A(n90), .B(n91), .C(n92), .Z(n88) );
  GTECH_NOT U106 ( .A(n93), .Z(n87) );
  GTECH_XOR2 U107 ( .A(n91), .B(n90), .Z(sum[5]) );
  GTECH_NOT U108 ( .A(n94), .Z(n90) );
  GTECH_OAI21 U109 ( .A(n95), .B(n96), .C(n97), .Z(n94) );
  GTECH_XOR2 U110 ( .A(n96), .B(n95), .Z(sum[4]) );
  GTECH_XOR2 U111 ( .A(n98), .B(n99), .Z(sum[3]) );
  GTECH_AOI21 U112 ( .A(n100), .B(n101), .C(n102), .Z(n99) );
  GTECH_XNOR2 U113 ( .A(n101), .B(n103), .Z(sum[2]) );
  GTECH_OAI21 U114 ( .A(n104), .B(n105), .C(n106), .Z(n101) );
  GTECH_XOR2 U115 ( .A(n105), .B(n104), .Z(sum[1]) );
  GTECH_NOT U116 ( .A(n107), .Z(n104) );
  GTECH_OAI21 U117 ( .A(n108), .B(n109), .C(n110), .Z(n107) );
  GTECH_NOT U118 ( .A(cin), .Z(n109) );
  GTECH_XOR2 U119 ( .A(n111), .B(n112), .Z(sum[15]) );
  GTECH_AOI21 U120 ( .A(n113), .B(n114), .C(n115), .Z(n112) );
  GTECH_XNOR2 U121 ( .A(n114), .B(n116), .Z(sum[14]) );
  GTECH_OAI21 U122 ( .A(n117), .B(n118), .C(n119), .Z(n114) );
  GTECH_NOT U123 ( .A(n120), .Z(n117) );
  GTECH_XNOR2 U124 ( .A(n120), .B(n118), .Z(sum[13]) );
  GTECH_OAI21 U125 ( .A(n121), .B(n122), .C(n123), .Z(n120) );
  GTECH_XOR2 U126 ( .A(n122), .B(n121), .Z(sum[12]) );
  GTECH_XOR2 U127 ( .A(n124), .B(n125), .Z(sum[11]) );
  GTECH_OAI21 U128 ( .A(n126), .B(n127), .C(n128), .Z(n125) );
  GTECH_XOR2 U129 ( .A(n127), .B(n126), .Z(sum[10]) );
  GTECH_NOT U130 ( .A(n129), .Z(n127) );
  GTECH_OAI21 U131 ( .A(n81), .B(n82), .C(n130), .Z(n129) );
  GTECH_NOT U132 ( .A(n131), .Z(n81) );
  GTECH_OAI21 U133 ( .A(n83), .B(n84), .C(n132), .Z(n131) );
  GTECH_NOT U134 ( .A(n133), .Z(n83) );
  GTECH_XNOR2 U135 ( .A(cin), .B(n108), .Z(sum[0]) );
  GTECH_NOT U136 ( .A(n121), .Z(cout) );
  GTECH_AOI21 U137 ( .A(n133), .B(n134), .C(n135), .Z(n121) );
  GTECH_OAI21 U138 ( .A(n95), .B(n136), .C(n137), .Z(n133) );
  GTECH_AOI21 U139 ( .A(n138), .B(cin), .C(n139), .Z(n95) );
  GTECH_NOT U140 ( .A(n140), .Z(n139) );
  GTECH_AND3 U141 ( .A(n141), .B(n138), .C(n134), .Z(Pm) );
  GTECH_NOR5 U142 ( .A(n105), .B(n98), .C(n103), .D(n108), .E(n142), .Z(n138)
         );
  GTECH_OAI21 U143 ( .A(b[0]), .B(a[0]), .C(n110), .Z(n108) );
  GTECH_NOT U144 ( .A(n136), .Z(n141) );
  GTECH_NOT U145 ( .A(n143), .Z(Gm) );
  GTECH_AOI21 U146 ( .A(n144), .B(n134), .C(n135), .Z(n143) );
  GTECH_OAI2N2 U147 ( .A(n145), .B(n111), .C(b[15]), .D(a[15]), .Z(n135) );
  GTECH_AOI21 U148 ( .A(n113), .B(n146), .C(n115), .Z(n145) );
  GTECH_OAI21 U149 ( .A(n118), .B(n123), .C(n119), .Z(n146) );
  GTECH_NOT U150 ( .A(n116), .Z(n113) );
  GTECH_NOR4 U151 ( .A(n122), .B(n116), .C(n118), .D(n111), .Z(n134) );
  GTECH_XNOR2 U152 ( .A(a[15]), .B(b[15]), .Z(n111) );
  GTECH_OAI21 U153 ( .A(b[13]), .B(a[13]), .C(n119), .Z(n118) );
  GTECH_NAND2 U154 ( .A(a[13]), .B(b[13]), .Z(n119) );
  GTECH_OAI21 U155 ( .A(b[14]), .B(a[14]), .C(n147), .Z(n116) );
  GTECH_NOT U156 ( .A(n115), .Z(n147) );
  GTECH_AND2 U157 ( .A(a[14]), .B(b[14]), .Z(n115) );
  GTECH_OAI21 U158 ( .A(b[12]), .B(a[12]), .C(n123), .Z(n122) );
  GTECH_NAND2 U159 ( .A(a[12]), .B(b[12]), .Z(n123) );
  GTECH_OAI21 U160 ( .A(n136), .B(n140), .C(n137), .Z(n144) );
  GTECH_AOI22 U161 ( .A(b[11]), .B(a[11]), .C(n148), .D(n124), .Z(n137) );
  GTECH_OAI21 U162 ( .A(n126), .B(n149), .C(n128), .Z(n148) );
  GTECH_NOT U163 ( .A(n150), .Z(n149) );
  GTECH_OAI21 U164 ( .A(n82), .B(n132), .C(n130), .Z(n150) );
  GTECH_AOI222 U165 ( .A(a[7]), .B(b[7]), .C(n151), .D(n152), .E(n85), .F(n153), .Z(n140) );
  GTECH_OAI21 U166 ( .A(n154), .B(n93), .C(n155), .Z(n153) );
  GTECH_NOT U167 ( .A(n156), .Z(n154) );
  GTECH_OAI21 U168 ( .A(n97), .B(n91), .C(n92), .Z(n156) );
  GTECH_NAND2 U169 ( .A(b[4]), .B(a[4]), .Z(n97) );
  GTECH_NOT U170 ( .A(n157), .Z(n85) );
  GTECH_OAI2N2 U171 ( .A(n158), .B(n98), .C(b[3]), .D(a[3]), .Z(n152) );
  GTECH_XNOR2 U172 ( .A(a[3]), .B(b[3]), .Z(n98) );
  GTECH_AOI21 U173 ( .A(n100), .B(n159), .C(n102), .Z(n158) );
  GTECH_OAI21 U174 ( .A(n105), .B(n110), .C(n106), .Z(n159) );
  GTECH_NAND2 U175 ( .A(a[0]), .B(b[0]), .Z(n110) );
  GTECH_OAI21 U176 ( .A(b[1]), .B(a[1]), .C(n106), .Z(n105) );
  GTECH_NAND2 U177 ( .A(a[1]), .B(b[1]), .Z(n106) );
  GTECH_NOT U178 ( .A(n103), .Z(n100) );
  GTECH_OAI21 U179 ( .A(b[2]), .B(a[2]), .C(n160), .Z(n103) );
  GTECH_NOT U180 ( .A(n102), .Z(n160) );
  GTECH_AND2 U181 ( .A(a[2]), .B(b[2]), .Z(n102) );
  GTECH_NOT U182 ( .A(n142), .Z(n151) );
  GTECH_OR4 U183 ( .A(n93), .B(n91), .C(n157), .D(n96), .Z(n142) );
  GTECH_XNOR2 U184 ( .A(a[4]), .B(b[4]), .Z(n96) );
  GTECH_XNOR2 U185 ( .A(a[7]), .B(b[7]), .Z(n157) );
  GTECH_OAI21 U186 ( .A(b[5]), .B(a[5]), .C(n92), .Z(n91) );
  GTECH_NAND2 U187 ( .A(a[5]), .B(b[5]), .Z(n92) );
  GTECH_OAI21 U188 ( .A(b[6]), .B(a[6]), .C(n155), .Z(n93) );
  GTECH_NOT U189 ( .A(n89), .Z(n155) );
  GTECH_AND2 U190 ( .A(a[6]), .B(b[6]), .Z(n89) );
  GTECH_OR4 U191 ( .A(n84), .B(n126), .C(n82), .D(n161), .Z(n136) );
  GTECH_NOT U192 ( .A(n124), .Z(n161) );
  GTECH_XOR2 U193 ( .A(a[11]), .B(b[11]), .Z(n124) );
  GTECH_OAI21 U194 ( .A(b[9]), .B(a[9]), .C(n130), .Z(n82) );
  GTECH_NAND2 U195 ( .A(a[9]), .B(b[9]), .Z(n130) );
  GTECH_OAI21 U196 ( .A(b[10]), .B(a[10]), .C(n128), .Z(n126) );
  GTECH_NAND2 U197 ( .A(a[10]), .B(b[10]), .Z(n128) );
  GTECH_OAI21 U198 ( .A(b[8]), .B(a[8]), .C(n132), .Z(n84) );
  GTECH_NAND2 U199 ( .A(a[8]), .B(b[8]), .Z(n132) );
endmodule

