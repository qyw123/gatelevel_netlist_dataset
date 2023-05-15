
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
         n144, n145, n146;

  GTECH_XOR2 U91 ( .A(n72), .B(n73), .Z(sum[9]) );
  GTECH_XNOR2 U92 ( .A(n74), .B(n75), .Z(sum[8]) );
  GTECH_XOR2 U93 ( .A(n76), .B(n77), .Z(sum[7]) );
  GTECH_OAI21 U94 ( .A(n78), .B(n79), .C(n80), .Z(n77) );
  GTECH_XNOR2 U95 ( .A(n81), .B(n79), .Z(sum[6]) );
  GTECH_NOT U96 ( .A(n82), .Z(n79) );
  GTECH_OAI21 U97 ( .A(n83), .B(n84), .C(n85), .Z(n82) );
  GTECH_XNOR2 U98 ( .A(n83), .B(n86), .Z(sum[5]) );
  GTECH_AOI22 U99 ( .A(b[4]), .B(a[4]), .C(n87), .D(n88), .Z(n83) );
  GTECH_XOR2 U100 ( .A(n88), .B(n87), .Z(sum[4]) );
  GTECH_XOR2 U101 ( .A(n89), .B(n90), .Z(sum[3]) );
  GTECH_AOI21 U102 ( .A(n91), .B(n92), .C(n93), .Z(n90) );
  GTECH_XOR2 U103 ( .A(n91), .B(n92), .Z(sum[2]) );
  GTECH_AO21 U104 ( .A(n94), .B(n95), .C(n96), .Z(n92) );
  GTECH_XOR2 U105 ( .A(n95), .B(n94), .Z(sum[1]) );
  GTECH_AO22 U106 ( .A(a[0]), .B(b[0]), .C(n97), .D(cin), .Z(n94) );
  GTECH_XOR2 U107 ( .A(n98), .B(n99), .Z(sum[15]) );
  GTECH_AOI21 U108 ( .A(n100), .B(n101), .C(n102), .Z(n99) );
  GTECH_XNOR2 U109 ( .A(n103), .B(n101), .Z(sum[14]) );
  GTECH_OAI21 U110 ( .A(n104), .B(n105), .C(n106), .Z(n101) );
  GTECH_NOT U111 ( .A(n107), .Z(n104) );
  GTECH_XNOR2 U112 ( .A(n107), .B(n105), .Z(sum[13]) );
  GTECH_OAI21 U113 ( .A(n108), .B(n109), .C(n110), .Z(n107) );
  GTECH_XNOR2 U114 ( .A(cout), .B(n109), .Z(sum[12]) );
  GTECH_XOR2 U115 ( .A(n111), .B(n112), .Z(sum[11]) );
  GTECH_AOI21 U116 ( .A(n113), .B(n114), .C(n115), .Z(n112) );
  GTECH_XOR2 U117 ( .A(n114), .B(n113), .Z(sum[10]) );
  GTECH_OAI21 U118 ( .A(n72), .B(n73), .C(n116), .Z(n114) );
  GTECH_NOT U119 ( .A(n117), .Z(n72) );
  GTECH_OAI21 U120 ( .A(n118), .B(n74), .C(n119), .Z(n117) );
  GTECH_XOR2 U121 ( .A(cin), .B(n97), .Z(sum[0]) );
  GTECH_NOT U122 ( .A(n108), .Z(cout) );
  GTECH_AOI21 U123 ( .A(n75), .B(n120), .C(n121), .Z(n108) );
  GTECH_NOT U124 ( .A(n118), .Z(n75) );
  GTECH_AOI21 U125 ( .A(n87), .B(n122), .C(n123), .Z(n118) );
  GTECH_AO21 U126 ( .A(n124), .B(cin), .C(n125), .Z(n87) );
  GTECH_AND3 U127 ( .A(n122), .B(n124), .C(n120), .Z(Pm) );
  GTECH_NOT U128 ( .A(n126), .Z(n124) );
  GTECH_NAND5 U129 ( .A(n127), .B(n95), .C(n97), .D(n128), .E(n91), .Z(n126)
         );
  GTECH_XOR2 U130 ( .A(a[0]), .B(b[0]), .Z(n97) );
  GTECH_AO21 U131 ( .A(n129), .B(n120), .C(n121), .Z(Gm) );
  GTECH_AO22 U132 ( .A(n130), .B(n131), .C(b[15]), .D(a[15]), .Z(n121) );
  GTECH_AO21 U133 ( .A(n100), .B(n132), .C(n102), .Z(n130) );
  GTECH_AND2 U134 ( .A(a[14]), .B(b[14]), .Z(n102) );
  GTECH_OAI21 U135 ( .A(n105), .B(n110), .C(n106), .Z(n132) );
  GTECH_NOR4 U136 ( .A(n109), .B(n105), .C(n98), .D(n103), .Z(n120) );
  GTECH_NOT U137 ( .A(n100), .Z(n103) );
  GTECH_XOR2 U138 ( .A(a[14]), .B(b[14]), .Z(n100) );
  GTECH_NOT U139 ( .A(n131), .Z(n98) );
  GTECH_XOR2 U140 ( .A(a[15]), .B(b[15]), .Z(n131) );
  GTECH_OAI21 U141 ( .A(b[13]), .B(a[13]), .C(n106), .Z(n105) );
  GTECH_NAND2 U142 ( .A(b[13]), .B(a[13]), .Z(n106) );
  GTECH_OAI21 U143 ( .A(b[12]), .B(a[12]), .C(n110), .Z(n109) );
  GTECH_NAND2 U144 ( .A(b[12]), .B(a[12]), .Z(n110) );
  GTECH_AO21 U145 ( .A(n122), .B(n125), .C(n123), .Z(n129) );
  GTECH_OAI2N2 U146 ( .A(n133), .B(n111), .C(b[11]), .D(a[11]), .Z(n123) );
  GTECH_AOI21 U147 ( .A(n113), .B(n134), .C(n115), .Z(n133) );
  GTECH_OAI21 U148 ( .A(n73), .B(n119), .C(n116), .Z(n134) );
  GTECH_NOT U149 ( .A(n135), .Z(n113) );
  GTECH_NOT U150 ( .A(n136), .Z(n125) );
  GTECH_AOI222 U151 ( .A(a[7]), .B(b[7]), .C(n128), .D(n137), .E(n76), .F(n138), .Z(n136) );
  GTECH_NAND2 U152 ( .A(n139), .B(n80), .Z(n138) );
  GTECH_NAND2 U153 ( .A(a[6]), .B(b[6]), .Z(n80) );
  GTECH_AO21 U154 ( .A(n140), .B(n85), .C(n78), .Z(n139) );
  GTECH_NAND3 U155 ( .A(a[4]), .B(b[4]), .C(n86), .Z(n140) );
  GTECH_AO21 U156 ( .A(b[3]), .B(a[3]), .C(n141), .Z(n137) );
  GTECH_AOI21 U157 ( .A(n142), .B(n143), .C(n89), .Z(n141) );
  GTECH_NOT U158 ( .A(n127), .Z(n89) );
  GTECH_XOR2 U159 ( .A(a[3]), .B(b[3]), .Z(n127) );
  GTECH_OAI21 U160 ( .A(n96), .B(n144), .C(n91), .Z(n142) );
  GTECH_NOT U161 ( .A(n145), .Z(n91) );
  GTECH_OAI21 U162 ( .A(b[2]), .B(a[2]), .C(n143), .Z(n145) );
  GTECH_NOT U163 ( .A(n93), .Z(n143) );
  GTECH_AND2 U164 ( .A(a[2]), .B(b[2]), .Z(n93) );
  GTECH_AND3 U165 ( .A(a[0]), .B(n95), .C(b[0]), .Z(n144) );
  GTECH_XOR2 U166 ( .A(a[1]), .B(b[1]), .Z(n95) );
  GTECH_AND2 U167 ( .A(a[1]), .B(b[1]), .Z(n96) );
  GTECH_AND4 U168 ( .A(n86), .B(n88), .C(n81), .D(n76), .Z(n128) );
  GTECH_XOR2 U169 ( .A(a[7]), .B(b[7]), .Z(n76) );
  GTECH_NOT U170 ( .A(n78), .Z(n81) );
  GTECH_XNOR2 U171 ( .A(a[6]), .B(b[6]), .Z(n78) );
  GTECH_XOR2 U172 ( .A(a[4]), .B(b[4]), .Z(n88) );
  GTECH_NOT U173 ( .A(n84), .Z(n86) );
  GTECH_OAI21 U174 ( .A(b[5]), .B(a[5]), .C(n85), .Z(n84) );
  GTECH_NAND2 U175 ( .A(b[5]), .B(a[5]), .Z(n85) );
  GTECH_NOR4 U176 ( .A(n74), .B(n135), .C(n73), .D(n111), .Z(n122) );
  GTECH_XNOR2 U177 ( .A(a[11]), .B(b[11]), .Z(n111) );
  GTECH_OAI21 U178 ( .A(b[9]), .B(a[9]), .C(n116), .Z(n73) );
  GTECH_NAND2 U179 ( .A(a[9]), .B(b[9]), .Z(n116) );
  GTECH_OAI21 U180 ( .A(b[10]), .B(a[10]), .C(n146), .Z(n135) );
  GTECH_NOT U181 ( .A(n115), .Z(n146) );
  GTECH_AND2 U182 ( .A(a[10]), .B(b[10]), .Z(n115) );
  GTECH_OAI21 U183 ( .A(b[8]), .B(a[8]), .C(n119), .Z(n74) );
  GTECH_NAND2 U184 ( .A(b[8]), .B(a[8]), .Z(n119) );
endmodule

