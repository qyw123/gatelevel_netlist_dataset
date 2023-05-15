
module carry_ahead_adder16 ( a, b, cin, cout, sum, Gm, Pm );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout, Gm, Pm;
  wire   n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148;

  GTECH_XOR2 U90 ( .A(n71), .B(n72), .Z(sum[9]) );
  GTECH_XOR2 U91 ( .A(n73), .B(n74), .Z(sum[8]) );
  GTECH_XOR2 U92 ( .A(n75), .B(n76), .Z(sum[7]) );
  GTECH_OA21 U93 ( .A(n77), .B(n78), .C(n79), .Z(n76) );
  GTECH_XOR2 U94 ( .A(n78), .B(n77), .Z(sum[6]) );
  GTECH_AOI21 U95 ( .A(n80), .B(n81), .C(n82), .Z(n77) );
  GTECH_XOR2 U96 ( .A(n81), .B(n80), .Z(sum[5]) );
  GTECH_NOT U97 ( .A(n83), .Z(n80) );
  GTECH_AOI2N2 U98 ( .A(a[4]), .B(b[4]), .C(n84), .D(n85), .Z(n83) );
  GTECH_XOR2 U99 ( .A(n85), .B(n84), .Z(sum[4]) );
  GTECH_NOT U100 ( .A(n86), .Z(sum[3]) );
  GTECH_XOR2 U101 ( .A(n87), .B(n88), .Z(n86) );
  GTECH_AOI21 U102 ( .A(n89), .B(n90), .C(n91), .Z(n88) );
  GTECH_XOR2 U103 ( .A(n90), .B(n89), .Z(sum[2]) );
  GTECH_OAI21 U104 ( .A(n92), .B(n93), .C(n94), .Z(n89) );
  GTECH_NOT U105 ( .A(n95), .Z(n94) );
  GTECH_XOR2 U106 ( .A(n93), .B(n92), .Z(sum[1]) );
  GTECH_AOI22 U107 ( .A(n96), .B(cin), .C(a[0]), .D(b[0]), .Z(n92) );
  GTECH_NOT U108 ( .A(n97), .Z(n93) );
  GTECH_XOR2 U109 ( .A(n98), .B(n99), .Z(sum[15]) );
  GTECH_AOI21 U110 ( .A(n100), .B(n101), .C(n102), .Z(n99) );
  GTECH_NOT U111 ( .A(n103), .Z(n98) );
  GTECH_XOR2 U112 ( .A(n101), .B(n100), .Z(sum[14]) );
  GTECH_NOT U113 ( .A(n104), .Z(n100) );
  GTECH_AOI21 U114 ( .A(n105), .B(n106), .C(n107), .Z(n104) );
  GTECH_XOR2 U115 ( .A(n106), .B(n105), .Z(sum[13]) );
  GTECH_AO22 U116 ( .A(a[12]), .B(b[12]), .C(cout), .D(n108), .Z(n105) );
  GTECH_XOR2 U117 ( .A(n108), .B(cout), .Z(sum[12]) );
  GTECH_XOR2 U118 ( .A(n109), .B(n110), .Z(sum[11]) );
  GTECH_AOI21 U119 ( .A(n111), .B(n112), .C(n113), .Z(n110) );
  GTECH_NOT U120 ( .A(n114), .Z(n109) );
  GTECH_XOR2 U121 ( .A(n112), .B(n111), .Z(sum[10]) );
  GTECH_NOT U122 ( .A(n115), .Z(n111) );
  GTECH_AOI21 U123 ( .A(n72), .B(n71), .C(n116), .Z(n115) );
  GTECH_AO22 U124 ( .A(a[8]), .B(b[8]), .C(n74), .D(n73), .Z(n72) );
  GTECH_NOT U125 ( .A(n117), .Z(n74) );
  GTECH_XOR2 U126 ( .A(cin), .B(n96), .Z(sum[0]) );
  GTECH_OAI21 U127 ( .A(n117), .B(n118), .C(n119), .Z(cout) );
  GTECH_OA21 U128 ( .A(n84), .B(n120), .C(n121), .Z(n117) );
  GTECH_AND2 U129 ( .A(n122), .B(n123), .Z(n84) );
  GTECH_NAND4 U130 ( .A(n124), .B(n96), .C(cin), .D(n125), .Z(n122) );
  GTECH_AND3 U131 ( .A(n90), .B(n97), .C(n87), .Z(n125) );
  GTECH_NOR4 U132 ( .A(n120), .B(n126), .C(n118), .D(n127), .Z(Pm) );
  GTECH_NOT U133 ( .A(n128), .Z(n127) );
  GTECH_AND4 U134 ( .A(n96), .B(n87), .C(n90), .D(n97), .Z(n128) );
  GTECH_XOR2 U135 ( .A(a[0]), .B(b[0]), .Z(n96) );
  GTECH_NOT U136 ( .A(n124), .Z(n126) );
  GTECH_OAI21 U137 ( .A(n129), .B(n118), .C(n119), .Z(Gm) );
  GTECH_AOI21 U138 ( .A(b[15]), .B(a[15]), .C(n130), .Z(n119) );
  GTECH_OA21 U139 ( .A(n102), .B(n131), .C(n103), .Z(n130) );
  GTECH_OA21 U140 ( .A(n132), .B(n107), .C(n101), .Z(n131) );
  GTECH_AND2 U141 ( .A(b[13]), .B(a[13]), .Z(n107) );
  GTECH_AND3 U142 ( .A(a[12]), .B(n106), .C(b[12]), .Z(n132) );
  GTECH_AND2 U143 ( .A(a[14]), .B(b[14]), .Z(n102) );
  GTECH_NAND4 U144 ( .A(n108), .B(n103), .C(n101), .D(n106), .Z(n118) );
  GTECH_XOR2 U145 ( .A(a[13]), .B(b[13]), .Z(n106) );
  GTECH_XOR2 U146 ( .A(a[14]), .B(b[14]), .Z(n101) );
  GTECH_XOR2 U147 ( .A(a[15]), .B(b[15]), .Z(n103) );
  GTECH_XOR2 U148 ( .A(a[12]), .B(b[12]), .Z(n108) );
  GTECH_OA21 U149 ( .A(n123), .B(n120), .C(n121), .Z(n129) );
  GTECH_AOI21 U150 ( .A(b[11]), .B(a[11]), .C(n133), .Z(n121) );
  GTECH_OA21 U151 ( .A(n113), .B(n134), .C(n114), .Z(n133) );
  GTECH_OA21 U152 ( .A(n135), .B(n116), .C(n112), .Z(n134) );
  GTECH_AND2 U153 ( .A(a[9]), .B(b[9]), .Z(n116) );
  GTECH_AND3 U154 ( .A(a[8]), .B(n71), .C(b[8]), .Z(n135) );
  GTECH_AND2 U155 ( .A(a[10]), .B(b[10]), .Z(n113) );
  GTECH_NAND4 U156 ( .A(n73), .B(n114), .C(n112), .D(n71), .Z(n120) );
  GTECH_XOR2 U157 ( .A(a[9]), .B(b[9]), .Z(n71) );
  GTECH_XOR2 U158 ( .A(a[10]), .B(b[10]), .Z(n112) );
  GTECH_XOR2 U159 ( .A(a[11]), .B(b[11]), .Z(n114) );
  GTECH_XOR2 U160 ( .A(a[8]), .B(b[8]), .Z(n73) );
  GTECH_AOI222 U161 ( .A(n124), .B(n136), .C(b[7]), .D(a[7]), .E(n137), .F(
        n138), .Z(n123) );
  GTECH_NAND2 U162 ( .A(n139), .B(n79), .Z(n138) );
  GTECH_NAND2 U163 ( .A(a[6]), .B(b[6]), .Z(n79) );
  GTECH_OAI21 U164 ( .A(n140), .B(n82), .C(n141), .Z(n139) );
  GTECH_AND2 U165 ( .A(a[5]), .B(b[5]), .Z(n82) );
  GTECH_AND3 U166 ( .A(a[4]), .B(n81), .C(b[4]), .Z(n140) );
  GTECH_OAI21 U167 ( .A(n142), .B(n143), .C(n144), .Z(n136) );
  GTECH_OAI21 U168 ( .A(n145), .B(n91), .C(n87), .Z(n144) );
  GTECH_XOR2 U169 ( .A(n143), .B(n142), .Z(n87) );
  GTECH_AND2 U170 ( .A(a[2]), .B(b[2]), .Z(n91) );
  GTECH_OA21 U171 ( .A(n146), .B(n95), .C(n90), .Z(n145) );
  GTECH_XOR2 U172 ( .A(a[2]), .B(b[2]), .Z(n90) );
  GTECH_AND2 U173 ( .A(a[1]), .B(b[1]), .Z(n95) );
  GTECH_AND3 U174 ( .A(a[0]), .B(n97), .C(b[0]), .Z(n146) );
  GTECH_XOR2 U175 ( .A(a[1]), .B(b[1]), .Z(n97) );
  GTECH_NOT U176 ( .A(a[3]), .Z(n143) );
  GTECH_NOT U177 ( .A(b[3]), .Z(n142) );
  GTECH_NOR4 U178 ( .A(n85), .B(n147), .C(n78), .D(n75), .Z(n124) );
  GTECH_NOT U179 ( .A(n137), .Z(n75) );
  GTECH_XOR2 U180 ( .A(a[7]), .B(b[7]), .Z(n137) );
  GTECH_NOT U181 ( .A(n141), .Z(n78) );
  GTECH_XOR2 U182 ( .A(a[6]), .B(b[6]), .Z(n141) );
  GTECH_NOT U183 ( .A(n81), .Z(n147) );
  GTECH_XOR2 U184 ( .A(a[5]), .B(b[5]), .Z(n81) );
  GTECH_XOR2 U185 ( .A(n148), .B(b[4]), .Z(n85) );
  GTECH_NOT U186 ( .A(a[4]), .Z(n148) );
endmodule

