
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
         n150, n151;

  GTECH_XOR2 U98 ( .A(n79), .B(n80), .Z(sum[9]) );
  GTECH_XNOR2 U99 ( .A(n81), .B(n82), .Z(sum[8]) );
  GTECH_XOR2 U100 ( .A(n83), .B(n84), .Z(sum[7]) );
  GTECH_OA21 U101 ( .A(n85), .B(n86), .C(n87), .Z(n84) );
  GTECH_XOR2 U102 ( .A(n85), .B(n86), .Z(sum[6]) );
  GTECH_OA21 U103 ( .A(n88), .B(n89), .C(n90), .Z(n85) );
  GTECH_XOR2 U104 ( .A(n89), .B(n88), .Z(sum[5]) );
  GTECH_OA21 U105 ( .A(n91), .B(n92), .C(n93), .Z(n88) );
  GTECH_XOR2 U106 ( .A(n92), .B(n91), .Z(sum[4]) );
  GTECH_XOR2 U107 ( .A(n94), .B(n95), .Z(sum[3]) );
  GTECH_OA21 U108 ( .A(n96), .B(n97), .C(n98), .Z(n95) );
  GTECH_XOR2 U109 ( .A(n96), .B(n97), .Z(sum[2]) );
  GTECH_AOI22 U110 ( .A(b[1]), .B(a[1]), .C(n99), .D(n100), .Z(n96) );
  GTECH_XOR2 U111 ( .A(n100), .B(n99), .Z(sum[1]) );
  GTECH_OAI2N2 U112 ( .A(n101), .B(n102), .C(a[0]), .D(b[0]), .Z(n99) );
  GTECH_XOR2 U113 ( .A(n103), .B(n104), .Z(sum[15]) );
  GTECH_OA21 U114 ( .A(n105), .B(n106), .C(n107), .Z(n104) );
  GTECH_XOR2 U115 ( .A(n105), .B(n106), .Z(sum[14]) );
  GTECH_OA21 U116 ( .A(n108), .B(n109), .C(n110), .Z(n105) );
  GTECH_XOR2 U117 ( .A(n109), .B(n108), .Z(sum[13]) );
  GTECH_OA21 U118 ( .A(n111), .B(n112), .C(n113), .Z(n108) );
  GTECH_NOT U119 ( .A(cout), .Z(n111) );
  GTECH_XNOR2 U120 ( .A(cout), .B(n112), .Z(sum[12]) );
  GTECH_XNOR2 U121 ( .A(n114), .B(n115), .Z(sum[11]) );
  GTECH_AOI21 U122 ( .A(n116), .B(n117), .C(n118), .Z(n115) );
  GTECH_XOR2 U123 ( .A(n116), .B(n117), .Z(sum[10]) );
  GTECH_AO21 U124 ( .A(n79), .B(n80), .C(n119), .Z(n116) );
  GTECH_OAI21 U125 ( .A(n82), .B(n120), .C(n121), .Z(n79) );
  GTECH_NOT U126 ( .A(n81), .Z(n120) );
  GTECH_XNOR2 U127 ( .A(cin), .B(n101), .Z(sum[0]) );
  GTECH_OAI21 U128 ( .A(n82), .B(n122), .C(n123), .Z(cout) );
  GTECH_OA21 U129 ( .A(n91), .B(n124), .C(n125), .Z(n82) );
  GTECH_OA21 U130 ( .A(n126), .B(n102), .C(n127), .Z(n91) );
  GTECH_NOT U131 ( .A(cin), .Z(n102) );
  GTECH_NOR3 U132 ( .A(n124), .B(n126), .C(n122), .Z(Pm) );
  GTECH_OR5 U133 ( .A(n94), .B(n128), .C(n101), .D(n129), .E(n97), .Z(n126) );
  GTECH_XNOR2 U134 ( .A(a[0]), .B(b[0]), .Z(n101) );
  GTECH_OAI21 U135 ( .A(n130), .B(n122), .C(n123), .Z(Gm) );
  GTECH_AOI2N2 U136 ( .A(b[15]), .B(a[15]), .C(n131), .D(n103), .Z(n123) );
  GTECH_OA21 U137 ( .A(n132), .B(n106), .C(n107), .Z(n131) );
  GTECH_OA21 U138 ( .A(n109), .B(n113), .C(n110), .Z(n132) );
  GTECH_OR4 U139 ( .A(n112), .B(n106), .C(n109), .D(n103), .Z(n122) );
  GTECH_XNOR2 U140 ( .A(a[15]), .B(b[15]), .Z(n103) );
  GTECH_OAI21 U141 ( .A(b[13]), .B(a[13]), .C(n110), .Z(n109) );
  GTECH_OR_NOT U142 ( .A(n133), .B(b[13]), .Z(n110) );
  GTECH_NOT U143 ( .A(a[13]), .Z(n133) );
  GTECH_OAI21 U144 ( .A(b[14]), .B(a[14]), .C(n107), .Z(n106) );
  GTECH_OR_NOT U145 ( .A(n134), .B(b[14]), .Z(n107) );
  GTECH_NOT U146 ( .A(a[14]), .Z(n134) );
  GTECH_OAI21 U147 ( .A(b[12]), .B(a[12]), .C(n113), .Z(n112) );
  GTECH_NOT U148 ( .A(n135), .Z(n113) );
  GTECH_AND2 U149 ( .A(b[12]), .B(a[12]), .Z(n135) );
  GTECH_OA21 U150 ( .A(n127), .B(n124), .C(n125), .Z(n130) );
  GTECH_AOI22 U151 ( .A(b[11]), .B(a[11]), .C(n136), .D(n114), .Z(n125) );
  GTECH_AO21 U152 ( .A(n137), .B(n117), .C(n118), .Z(n136) );
  GTECH_AO21 U153 ( .A(n138), .B(n80), .C(n119), .Z(n137) );
  GTECH_NAND4 U154 ( .A(n81), .B(n117), .C(n80), .D(n114), .Z(n124) );
  GTECH_XOR2 U155 ( .A(a[11]), .B(b[11]), .Z(n114) );
  GTECH_OA21 U156 ( .A(a[9]), .B(b[9]), .C(n139), .Z(n80) );
  GTECH_NOT U157 ( .A(n119), .Z(n139) );
  GTECH_AND2 U158 ( .A(b[9]), .B(a[9]), .Z(n119) );
  GTECH_OA21 U159 ( .A(b[10]), .B(a[10]), .C(n140), .Z(n117) );
  GTECH_NOT U160 ( .A(n118), .Z(n140) );
  GTECH_AND2 U161 ( .A(a[10]), .B(b[10]), .Z(n118) );
  GTECH_OA21 U162 ( .A(b[8]), .B(a[8]), .C(n121), .Z(n81) );
  GTECH_NOT U163 ( .A(n138), .Z(n121) );
  GTECH_AND2 U164 ( .A(b[8]), .B(a[8]), .Z(n138) );
  GTECH_AOI21 U165 ( .A(b[7]), .B(a[7]), .C(n141), .Z(n127) );
  GTECH_OAI22 U166 ( .A(n142), .B(n129), .C(n143), .D(n83), .Z(n141) );
  GTECH_OA21 U167 ( .A(n144), .B(n86), .C(n87), .Z(n143) );
  GTECH_OA21 U168 ( .A(n89), .B(n93), .C(n90), .Z(n144) );
  GTECH_OR4 U169 ( .A(n89), .B(n86), .C(n92), .D(n83), .Z(n129) );
  GTECH_XNOR2 U170 ( .A(a[7]), .B(b[7]), .Z(n83) );
  GTECH_OAI21 U171 ( .A(b[4]), .B(a[4]), .C(n93), .Z(n92) );
  GTECH_NOT U172 ( .A(n145), .Z(n93) );
  GTECH_AND2 U173 ( .A(a[4]), .B(b[4]), .Z(n145) );
  GTECH_OAI21 U174 ( .A(b[6]), .B(a[6]), .C(n87), .Z(n86) );
  GTECH_OR_NOT U175 ( .A(n146), .B(b[6]), .Z(n87) );
  GTECH_NOT U176 ( .A(a[6]), .Z(n146) );
  GTECH_OAI21 U177 ( .A(b[5]), .B(a[5]), .C(n90), .Z(n89) );
  GTECH_NOT U178 ( .A(n147), .Z(n90) );
  GTECH_AND2 U179 ( .A(a[5]), .B(b[5]), .Z(n147) );
  GTECH_AOI2N2 U180 ( .A(b[3]), .B(a[3]), .C(n148), .D(n94), .Z(n142) );
  GTECH_XNOR2 U181 ( .A(a[3]), .B(b[3]), .Z(n94) );
  GTECH_OA21 U182 ( .A(n149), .B(n97), .C(n98), .Z(n148) );
  GTECH_OAI21 U183 ( .A(a[2]), .B(b[2]), .C(n98), .Z(n97) );
  GTECH_OR_NOT U184 ( .A(n150), .B(b[2]), .Z(n98) );
  GTECH_NOT U185 ( .A(a[2]), .Z(n150) );
  GTECH_AOI21 U186 ( .A(b[1]), .B(a[1]), .C(n151), .Z(n149) );
  GTECH_AND3 U187 ( .A(a[0]), .B(n100), .C(b[0]), .Z(n151) );
  GTECH_NOT U188 ( .A(n128), .Z(n100) );
  GTECH_XNOR2 U189 ( .A(a[1]), .B(b[1]), .Z(n128) );
endmodule

