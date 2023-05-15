
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
         n133, n134, n135, n136, n137, n138;

  GTECH_XOR2 U90 ( .A(n71), .B(n72), .Z(sum[9]) );
  GTECH_XNOR2 U91 ( .A(n73), .B(n74), .Z(sum[8]) );
  GTECH_XOR2 U92 ( .A(n75), .B(n76), .Z(sum[7]) );
  GTECH_OAI21 U93 ( .A(n77), .B(n78), .C(n79), .Z(n76) );
  GTECH_NOT U94 ( .A(n80), .Z(n78) );
  GTECH_XNOR2 U95 ( .A(n77), .B(n80), .Z(sum[6]) );
  GTECH_OAI21 U96 ( .A(n81), .B(n82), .C(n83), .Z(n80) );
  GTECH_XNOR2 U97 ( .A(n81), .B(n84), .Z(sum[5]) );
  GTECH_AOI2N2 U98 ( .A(b[4]), .B(a[4]), .C(n85), .D(n86), .Z(n81) );
  GTECH_XOR2 U99 ( .A(n86), .B(n85), .Z(sum[4]) );
  GTECH_XNOR2 U100 ( .A(n87), .B(n88), .Z(sum[3]) );
  GTECH_AOI21 U101 ( .A(n89), .B(n90), .C(n91), .Z(n88) );
  GTECH_XOR2 U102 ( .A(n89), .B(n90), .Z(sum[2]) );
  GTECH_AO22 U103 ( .A(b[1]), .B(a[1]), .C(n92), .D(n93), .Z(n90) );
  GTECH_XOR2 U104 ( .A(n93), .B(n92), .Z(sum[1]) );
  GTECH_AO22 U105 ( .A(n94), .B(cin), .C(a[0]), .D(b[0]), .Z(n92) );
  GTECH_XNOR2 U106 ( .A(n95), .B(n96), .Z(sum[15]) );
  GTECH_AOI21 U107 ( .A(n97), .B(n98), .C(n99), .Z(n96) );
  GTECH_XOR2 U108 ( .A(n98), .B(n97), .Z(sum[14]) );
  GTECH_AO22 U109 ( .A(n100), .B(n101), .C(b[13]), .D(a[13]), .Z(n98) );
  GTECH_XOR2 U110 ( .A(n101), .B(n100), .Z(sum[13]) );
  GTECH_AO22 U111 ( .A(a[12]), .B(b[12]), .C(cout), .D(n102), .Z(n100) );
  GTECH_XOR2 U112 ( .A(n102), .B(cout), .Z(sum[12]) );
  GTECH_XNOR2 U113 ( .A(n103), .B(n104), .Z(sum[11]) );
  GTECH_AOI21 U114 ( .A(n105), .B(n106), .C(n107), .Z(n104) );
  GTECH_XOR2 U115 ( .A(n106), .B(n105), .Z(sum[10]) );
  GTECH_AO22 U116 ( .A(b[9]), .B(a[9]), .C(n72), .D(n71), .Z(n106) );
  GTECH_AO21 U117 ( .A(n73), .B(n108), .C(n109), .Z(n72) );
  GTECH_XOR2 U118 ( .A(cin), .B(n94), .Z(sum[0]) );
  GTECH_AO21 U119 ( .A(n73), .B(n110), .C(n111), .Z(cout) );
  GTECH_OAI21 U120 ( .A(n85), .B(n112), .C(n113), .Z(n73) );
  GTECH_AOI21 U121 ( .A(n114), .B(cin), .C(n115), .Z(n85) );
  GTECH_NOT U122 ( .A(n116), .Z(n115) );
  GTECH_AND3 U123 ( .A(n117), .B(n114), .C(n110), .Z(Pm) );
  GTECH_AND5 U124 ( .A(n89), .B(n93), .C(n87), .D(n118), .E(n94), .Z(n114) );
  GTECH_XOR2 U125 ( .A(a[0]), .B(b[0]), .Z(n94) );
  GTECH_NOT U126 ( .A(n112), .Z(n117) );
  GTECH_AO21 U127 ( .A(n119), .B(n110), .C(n111), .Z(Gm) );
  GTECH_AO22 U128 ( .A(n120), .B(n95), .C(b[15]), .D(a[15]), .Z(n111) );
  GTECH_AO21 U129 ( .A(n97), .B(n121), .C(n99), .Z(n120) );
  GTECH_AO21 U130 ( .A(b[13]), .B(a[13]), .C(n122), .Z(n121) );
  GTECH_AND3 U131 ( .A(a[12]), .B(n101), .C(b[12]), .Z(n122) );
  GTECH_AND4 U132 ( .A(n97), .B(n102), .C(n95), .D(n101), .Z(n110) );
  GTECH_XOR2 U133 ( .A(a[13]), .B(b[13]), .Z(n101) );
  GTECH_XOR2 U134 ( .A(a[15]), .B(b[15]), .Z(n95) );
  GTECH_XOR2 U135 ( .A(a[12]), .B(b[12]), .Z(n102) );
  GTECH_NOT U136 ( .A(n123), .Z(n97) );
  GTECH_OAI21 U137 ( .A(b[14]), .B(a[14]), .C(n124), .Z(n123) );
  GTECH_NOT U138 ( .A(n99), .Z(n124) );
  GTECH_ADD_AB U139 ( .A(a[14]), .B(b[14]), .COUT(n99) );
  GTECH_OAI21 U140 ( .A(n112), .B(n116), .C(n113), .Z(n119) );
  GTECH_AOI22 U141 ( .A(b[11]), .B(a[11]), .C(n125), .D(n103), .Z(n113) );
  GTECH_NOT U142 ( .A(n126), .Z(n125) );
  GTECH_AOI21 U143 ( .A(n105), .B(n127), .C(n107), .Z(n126) );
  GTECH_AO22 U144 ( .A(b[9]), .B(a[9]), .C(n71), .D(n109), .Z(n127) );
  GTECH_AOI222 U145 ( .A(a[7]), .B(b[7]), .C(n118), .D(n128), .E(n75), .F(n129), .Z(n116) );
  GTECH_NAND2 U146 ( .A(n130), .B(n79), .Z(n129) );
  GTECH_NAND2 U147 ( .A(a[6]), .B(b[6]), .Z(n79) );
  GTECH_AO21 U148 ( .A(n131), .B(n83), .C(n77), .Z(n130) );
  GTECH_NAND3 U149 ( .A(a[4]), .B(b[4]), .C(n84), .Z(n131) );
  GTECH_NOT U150 ( .A(n82), .Z(n84) );
  GTECH_AO22 U151 ( .A(n132), .B(n87), .C(b[3]), .D(a[3]), .Z(n128) );
  GTECH_XOR2 U152 ( .A(a[3]), .B(b[3]), .Z(n87) );
  GTECH_AO21 U153 ( .A(n89), .B(n133), .C(n91), .Z(n132) );
  GTECH_ADD_AB U154 ( .A(a[2]), .B(b[2]), .COUT(n91) );
  GTECH_AO21 U155 ( .A(b[1]), .B(a[1]), .C(n134), .Z(n133) );
  GTECH_AND3 U156 ( .A(a[0]), .B(n93), .C(b[0]), .Z(n134) );
  GTECH_XOR2 U157 ( .A(a[1]), .B(b[1]), .Z(n93) );
  GTECH_XOR2 U158 ( .A(a[2]), .B(b[2]), .Z(n89) );
  GTECH_NOR4 U159 ( .A(n82), .B(n86), .C(n77), .D(n135), .Z(n118) );
  GTECH_NOT U160 ( .A(n75), .Z(n135) );
  GTECH_XOR2 U161 ( .A(a[7]), .B(b[7]), .Z(n75) );
  GTECH_XNOR2 U162 ( .A(a[6]), .B(b[6]), .Z(n77) );
  GTECH_XNOR2 U163 ( .A(a[4]), .B(b[4]), .Z(n86) );
  GTECH_OAI21 U164 ( .A(a[5]), .B(b[5]), .C(n83), .Z(n82) );
  GTECH_NAND2 U165 ( .A(b[5]), .B(a[5]), .Z(n83) );
  GTECH_NAND4 U166 ( .A(n108), .B(n105), .C(n103), .D(n71), .Z(n112) );
  GTECH_XOR2 U167 ( .A(a[9]), .B(b[9]), .Z(n71) );
  GTECH_XOR2 U168 ( .A(a[11]), .B(b[11]), .Z(n103) );
  GTECH_NOT U169 ( .A(n136), .Z(n105) );
  GTECH_OAI21 U170 ( .A(b[10]), .B(a[10]), .C(n137), .Z(n136) );
  GTECH_NOT U171 ( .A(n107), .Z(n137) );
  GTECH_ADD_AB U172 ( .A(a[10]), .B(b[10]), .COUT(n107) );
  GTECH_NOT U173 ( .A(n74), .Z(n108) );
  GTECH_OAI21 U174 ( .A(b[8]), .B(a[8]), .C(n138), .Z(n74) );
  GTECH_NOT U175 ( .A(n109), .Z(n138) );
  GTECH_ADD_AB U176 ( .A(b[8]), .B(a[8]), .COUT(n109) );
endmodule
