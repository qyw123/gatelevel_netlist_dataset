
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
         n137, n138, n139, n140;

  GTECH_XOR2 U96 ( .A(n77), .B(n78), .Z(sum[9]) );
  GTECH_XOR2 U97 ( .A(n79), .B(n80), .Z(sum[8]) );
  GTECH_NOT U98 ( .A(n81), .Z(sum[7]) );
  GTECH_XOR2 U99 ( .A(n82), .B(n83), .Z(n81) );
  GTECH_AOI21 U100 ( .A(n84), .B(n85), .C(n86), .Z(n83) );
  GTECH_XOR2 U101 ( .A(n84), .B(n85), .Z(sum[6]) );
  GTECH_AO22 U102 ( .A(n87), .B(n88), .C(b[5]), .D(a[5]), .Z(n85) );
  GTECH_XOR2 U103 ( .A(n88), .B(n87), .Z(sum[5]) );
  GTECH_AO21 U104 ( .A(n89), .B(n90), .C(n91), .Z(n87) );
  GTECH_XOR2 U105 ( .A(n90), .B(n89), .Z(sum[4]) );
  GTECH_XOR2 U106 ( .A(n92), .B(n93), .Z(sum[3]) );
  GTECH_AOI21 U107 ( .A(n94), .B(n95), .C(n96), .Z(n93) );
  GTECH_XOR2 U108 ( .A(n94), .B(n95), .Z(sum[2]) );
  GTECH_AO22 U109 ( .A(n97), .B(n98), .C(b[1]), .D(a[1]), .Z(n95) );
  GTECH_XOR2 U110 ( .A(n98), .B(n97), .Z(sum[1]) );
  GTECH_OR2 U111 ( .A(n99), .B(n100), .Z(n97) );
  GTECH_XOR2 U112 ( .A(n101), .B(n102), .Z(sum[15]) );
  GTECH_AOI22 U113 ( .A(b[14]), .B(a[14]), .C(n103), .D(n104), .Z(n102) );
  GTECH_XOR2 U114 ( .A(n104), .B(n103), .Z(sum[14]) );
  GTECH_AO21 U115 ( .A(n105), .B(n106), .C(n107), .Z(n103) );
  GTECH_XOR2 U116 ( .A(n106), .B(n105), .Z(sum[13]) );
  GTECH_AO22 U117 ( .A(a[12]), .B(b[12]), .C(cout), .D(n108), .Z(n105) );
  GTECH_XOR2 U118 ( .A(n108), .B(cout), .Z(sum[12]) );
  GTECH_XOR2 U119 ( .A(n109), .B(n110), .Z(sum[11]) );
  GTECH_AOI21 U120 ( .A(n111), .B(n112), .C(n113), .Z(n110) );
  GTECH_XOR2 U121 ( .A(n111), .B(n112), .Z(sum[10]) );
  GTECH_OAI2N2 U122 ( .A(n78), .B(n77), .C(b[9]), .D(a[9]), .Z(n112) );
  GTECH_NOT U123 ( .A(n114), .Z(n77) );
  GTECH_AOI21 U124 ( .A(n80), .B(n79), .C(n115), .Z(n78) );
  GTECH_XOR2 U125 ( .A(cin), .B(n116), .Z(sum[0]) );
  GTECH_AO21 U126 ( .A(n80), .B(n117), .C(n118), .Z(cout) );
  GTECH_AO21 U127 ( .A(n89), .B(n119), .C(n120), .Z(n80) );
  GTECH_AO21 U128 ( .A(n99), .B(n121), .C(n122), .Z(n89) );
  GTECH_AND2 U129 ( .A(cin), .B(n116), .Z(n99) );
  GTECH_AND4 U130 ( .A(n117), .B(n119), .C(n121), .D(n116), .Z(Pm) );
  GTECH_XOR2 U131 ( .A(a[0]), .B(b[0]), .Z(n116) );
  GTECH_AND4 U132 ( .A(n123), .B(n124), .C(n94), .D(n98), .Z(n121) );
  GTECH_AO21 U133 ( .A(n125), .B(n117), .C(n118), .Z(Gm) );
  GTECH_OAI2N2 U134 ( .A(n126), .B(n101), .C(b[15]), .D(a[15]), .Z(n118) );
  GTECH_NOT U135 ( .A(n127), .Z(n101) );
  GTECH_AOI22 U136 ( .A(b[14]), .B(a[14]), .C(n128), .D(n104), .Z(n126) );
  GTECH_OR_NOT U137 ( .A(n107), .B(n129), .Z(n128) );
  GTECH_NAND3 U138 ( .A(a[12]), .B(n106), .C(b[12]), .Z(n129) );
  GTECH_AND2 U139 ( .A(b[13]), .B(a[13]), .Z(n107) );
  GTECH_AND4 U140 ( .A(n108), .B(n127), .C(n104), .D(n106), .Z(n117) );
  GTECH_XOR2 U141 ( .A(a[13]), .B(b[13]), .Z(n106) );
  GTECH_XOR2 U142 ( .A(a[14]), .B(b[14]), .Z(n104) );
  GTECH_XOR2 U143 ( .A(a[15]), .B(b[15]), .Z(n127) );
  GTECH_XOR2 U144 ( .A(a[12]), .B(b[12]), .Z(n108) );
  GTECH_AO21 U145 ( .A(n119), .B(n122), .C(n120), .Z(n125) );
  GTECH_OAI2N2 U146 ( .A(n130), .B(n109), .C(b[11]), .D(a[11]), .Z(n120) );
  GTECH_NOT U147 ( .A(n131), .Z(n109) );
  GTECH_AOI21 U148 ( .A(n111), .B(n132), .C(n113), .Z(n130) );
  GTECH_AND2 U149 ( .A(b[10]), .B(a[10]), .Z(n113) );
  GTECH_AO22 U150 ( .A(n114), .B(n115), .C(b[9]), .D(a[9]), .Z(n132) );
  GTECH_NOT U151 ( .A(n133), .Z(n122) );
  GTECH_AOI222 U152 ( .A(a[7]), .B(b[7]), .C(n123), .D(n134), .E(n82), .F(n135), .Z(n133) );
  GTECH_AO21 U153 ( .A(n136), .B(n84), .C(n86), .Z(n135) );
  GTECH_AND2 U154 ( .A(a[6]), .B(b[6]), .Z(n86) );
  GTECH_AO22 U155 ( .A(n88), .B(n91), .C(b[5]), .D(a[5]), .Z(n136) );
  GTECH_AND2 U156 ( .A(a[4]), .B(b[4]), .Z(n91) );
  GTECH_OAI2N2 U157 ( .A(n137), .B(n92), .C(b[3]), .D(a[3]), .Z(n134) );
  GTECH_NOT U158 ( .A(n124), .Z(n92) );
  GTECH_XOR2 U159 ( .A(a[3]), .B(b[3]), .Z(n124) );
  GTECH_AOI21 U160 ( .A(n94), .B(n138), .C(n96), .Z(n137) );
  GTECH_AND2 U161 ( .A(b[2]), .B(a[2]), .Z(n96) );
  GTECH_AO22 U162 ( .A(b[1]), .B(a[1]), .C(n98), .D(n100), .Z(n138) );
  GTECH_AND2 U163 ( .A(b[0]), .B(a[0]), .Z(n100) );
  GTECH_XOR2 U164 ( .A(a[1]), .B(b[1]), .Z(n98) );
  GTECH_XOR2 U165 ( .A(a[2]), .B(b[2]), .Z(n94) );
  GTECH_AND4 U166 ( .A(n90), .B(n88), .C(n84), .D(n82), .Z(n123) );
  GTECH_XOR2 U167 ( .A(a[7]), .B(b[7]), .Z(n82) );
  GTECH_XOR2 U168 ( .A(a[6]), .B(b[6]), .Z(n84) );
  GTECH_XOR2 U169 ( .A(a[5]), .B(b[5]), .Z(n88) );
  GTECH_XOR2 U170 ( .A(a[4]), .B(b[4]), .Z(n90) );
  GTECH_AND4 U171 ( .A(n79), .B(n131), .C(n111), .D(n114), .Z(n119) );
  GTECH_XOR2 U172 ( .A(a[9]), .B(b[9]), .Z(n114) );
  GTECH_XOR2 U173 ( .A(a[10]), .B(b[10]), .Z(n111) );
  GTECH_XOR2 U174 ( .A(a[11]), .B(b[11]), .Z(n131) );
  GTECH_AOI21 U175 ( .A(n139), .B(n140), .C(n115), .Z(n79) );
  GTECH_AND_NOT U176 ( .A(b[8]), .B(n140), .Z(n115) );
  GTECH_NOT U177 ( .A(a[8]), .Z(n140) );
  GTECH_NOT U178 ( .A(b[8]), .Z(n139) );
endmodule

