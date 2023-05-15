
module carry_ahead_adder16 ( a, b, cin, cout, sum, Gm, Pm );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout, Gm, Pm;
  wire   n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150;

  GTECH_XOR2 U104 ( .A(n85), .B(n86), .Z(sum[9]) );
  GTECH_XOR2 U105 ( .A(n87), .B(n88), .Z(sum[8]) );
  GTECH_XNOR2 U106 ( .A(n89), .B(n90), .Z(sum[7]) );
  GTECH_OA21 U107 ( .A(n91), .B(n92), .C(n93), .Z(n90) );
  GTECH_XOR2 U108 ( .A(n91), .B(n92), .Z(sum[6]) );
  GTECH_AOI2N2 U109 ( .A(b[5]), .B(a[5]), .C(n94), .D(n95), .Z(n91) );
  GTECH_XOR2 U110 ( .A(n95), .B(n94), .Z(sum[5]) );
  GTECH_OA21 U111 ( .A(n96), .B(n97), .C(n98), .Z(n94) );
  GTECH_XOR2 U112 ( .A(n97), .B(n96), .Z(sum[4]) );
  GTECH_XNOR2 U113 ( .A(n99), .B(n100), .Z(sum[3]) );
  GTECH_AOI21 U114 ( .A(n101), .B(n102), .C(n103), .Z(n100) );
  GTECH_XOR2 U115 ( .A(n101), .B(n102), .Z(sum[2]) );
  GTECH_OAI21 U116 ( .A(n104), .B(n105), .C(n106), .Z(n101) );
  GTECH_XNOR2 U117 ( .A(n107), .B(n104), .Z(sum[1]) );
  GTECH_AND_NOT U118 ( .A(n108), .B(n109), .Z(n104) );
  GTECH_XOR2 U119 ( .A(n110), .B(n111), .Z(sum[15]) );
  GTECH_OA21 U120 ( .A(n112), .B(n113), .C(n114), .Z(n111) );
  GTECH_XOR2 U121 ( .A(n112), .B(n113), .Z(sum[14]) );
  GTECH_OA21 U122 ( .A(n115), .B(n116), .C(n117), .Z(n112) );
  GTECH_XOR2 U123 ( .A(n116), .B(n115), .Z(sum[13]) );
  GTECH_OA21 U124 ( .A(n118), .B(n119), .C(n120), .Z(n115) );
  GTECH_NOT U125 ( .A(cout), .Z(n118) );
  GTECH_XNOR2 U126 ( .A(cout), .B(n119), .Z(sum[12]) );
  GTECH_XOR2 U127 ( .A(n121), .B(n122), .Z(sum[11]) );
  GTECH_OA21 U128 ( .A(n123), .B(n124), .C(n125), .Z(n122) );
  GTECH_XOR2 U129 ( .A(n123), .B(n124), .Z(sum[10]) );
  GTECH_OA21 U130 ( .A(n85), .B(n86), .C(n126), .Z(n123) );
  GTECH_OA21 U131 ( .A(n87), .B(n88), .C(n127), .Z(n85) );
  GTECH_XNOR2 U132 ( .A(cin), .B(n128), .Z(sum[0]) );
  GTECH_OAI21 U133 ( .A(n87), .B(n129), .C(n130), .Z(cout) );
  GTECH_OA21 U134 ( .A(n96), .B(n131), .C(n132), .Z(n87) );
  GTECH_AND2 U135 ( .A(n133), .B(n134), .Z(n96) );
  GTECH_NAND5 U136 ( .A(n107), .B(n99), .C(n102), .D(n109), .E(n135), .Z(n133)
         );
  GTECH_AND_NOT U137 ( .A(cin), .B(n128), .Z(n109) );
  GTECH_AND5 U138 ( .A(n135), .B(n102), .C(n107), .D(n99), .E(n136), .Z(Pm) );
  GTECH_NOR3 U139 ( .A(n131), .B(n128), .C(n129), .Z(n136) );
  GTECH_OAI21 U140 ( .A(a[0]), .B(b[0]), .C(n108), .Z(n128) );
  GTECH_OAI21 U141 ( .A(n137), .B(n129), .C(n130), .Z(Gm) );
  GTECH_AOI2N2 U142 ( .A(b[15]), .B(a[15]), .C(n138), .D(n110), .Z(n130) );
  GTECH_OA21 U143 ( .A(n139), .B(n113), .C(n114), .Z(n138) );
  GTECH_OA21 U144 ( .A(n120), .B(n116), .C(n117), .Z(n139) );
  GTECH_OR4 U145 ( .A(n119), .B(n113), .C(n116), .D(n110), .Z(n129) );
  GTECH_XNOR2 U146 ( .A(a[15]), .B(b[15]), .Z(n110) );
  GTECH_OAI21 U147 ( .A(b[13]), .B(a[13]), .C(n117), .Z(n116) );
  GTECH_NAND2 U148 ( .A(b[13]), .B(a[13]), .Z(n117) );
  GTECH_OAI21 U149 ( .A(a[14]), .B(b[14]), .C(n114), .Z(n113) );
  GTECH_NAND2 U150 ( .A(b[14]), .B(a[14]), .Z(n114) );
  GTECH_OAI21 U151 ( .A(a[12]), .B(b[12]), .C(n120), .Z(n119) );
  GTECH_NAND2 U152 ( .A(a[12]), .B(b[12]), .Z(n120) );
  GTECH_OA21 U153 ( .A(n134), .B(n131), .C(n132), .Z(n137) );
  GTECH_AOI2N2 U154 ( .A(b[11]), .B(a[11]), .C(n140), .D(n121), .Z(n132) );
  GTECH_OA21 U155 ( .A(n141), .B(n124), .C(n125), .Z(n140) );
  GTECH_OA21 U156 ( .A(n86), .B(n127), .C(n126), .Z(n141) );
  GTECH_OR4 U157 ( .A(n88), .B(n124), .C(n86), .D(n121), .Z(n131) );
  GTECH_XNOR2 U158 ( .A(a[11]), .B(b[11]), .Z(n121) );
  GTECH_OAI21 U159 ( .A(a[9]), .B(b[9]), .C(n126), .Z(n86) );
  GTECH_NAND2 U160 ( .A(b[9]), .B(a[9]), .Z(n126) );
  GTECH_OAI21 U161 ( .A(a[10]), .B(b[10]), .C(n125), .Z(n124) );
  GTECH_NAND2 U162 ( .A(b[10]), .B(a[10]), .Z(n125) );
  GTECH_OAI21 U163 ( .A(a[8]), .B(b[8]), .C(n127), .Z(n88) );
  GTECH_NAND2 U164 ( .A(a[8]), .B(b[8]), .Z(n127) );
  GTECH_AOI222 U165 ( .A(n135), .B(n142), .C(b[7]), .D(a[7]), .E(n89), .F(n143), .Z(n134) );
  GTECH_OAI21 U166 ( .A(n144), .B(n92), .C(n93), .Z(n143) );
  GTECH_AOI2N2 U167 ( .A(b[5]), .B(a[5]), .C(n95), .D(n98), .Z(n144) );
  GTECH_NOT U168 ( .A(n145), .Z(n89) );
  GTECH_OAI2N2 U169 ( .A(n146), .B(n147), .C(b[3]), .D(a[3]), .Z(n142) );
  GTECH_NOT U170 ( .A(n99), .Z(n147) );
  GTECH_XOR2 U171 ( .A(a[3]), .B(b[3]), .Z(n99) );
  GTECH_AOI21 U172 ( .A(n148), .B(n102), .C(n103), .Z(n146) );
  GTECH_OA21 U173 ( .A(a[2]), .B(b[2]), .C(n149), .Z(n102) );
  GTECH_NOT U174 ( .A(n103), .Z(n149) );
  GTECH_AND2 U175 ( .A(a[2]), .B(b[2]), .Z(n103) );
  GTECH_OAI21 U176 ( .A(n108), .B(n105), .C(n106), .Z(n148) );
  GTECH_NOT U177 ( .A(n107), .Z(n105) );
  GTECH_OA21 U178 ( .A(b[1]), .B(a[1]), .C(n106), .Z(n107) );
  GTECH_NAND2 U179 ( .A(b[1]), .B(a[1]), .Z(n106) );
  GTECH_NAND2 U180 ( .A(a[0]), .B(b[0]), .Z(n108) );
  GTECH_NOT U181 ( .A(n150), .Z(n135) );
  GTECH_OR4 U182 ( .A(n97), .B(n92), .C(n95), .D(n145), .Z(n150) );
  GTECH_XNOR2 U183 ( .A(a[7]), .B(b[7]), .Z(n145) );
  GTECH_XNOR2 U184 ( .A(a[5]), .B(b[5]), .Z(n95) );
  GTECH_OAI21 U185 ( .A(a[6]), .B(b[6]), .C(n93), .Z(n92) );
  GTECH_NAND2 U186 ( .A(b[6]), .B(a[6]), .Z(n93) );
  GTECH_OAI21 U187 ( .A(b[4]), .B(a[4]), .C(n98), .Z(n97) );
  GTECH_NAND2 U188 ( .A(a[4]), .B(b[4]), .Z(n98) );
endmodule

