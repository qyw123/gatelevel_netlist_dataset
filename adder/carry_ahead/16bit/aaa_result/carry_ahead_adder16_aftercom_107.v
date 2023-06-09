
module carry_ahead_adder16 ( a, b, cin, cout, sum, Gm, Pm );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout, Gm, Pm;
  wire   n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136;

  GTECH_XOR2 U86 ( .A(n67), .B(n68), .Z(sum[9]) );
  GTECH_XOR2 U87 ( .A(n69), .B(n70), .Z(sum[8]) );
  GTECH_XNOR2 U88 ( .A(n71), .B(n72), .Z(sum[7]) );
  GTECH_OA21 U89 ( .A(n73), .B(n74), .C(n75), .Z(n72) );
  GTECH_XNOR2 U90 ( .A(n73), .B(n76), .Z(sum[6]) );
  GTECH_AOI21 U91 ( .A(n77), .B(n78), .C(n79), .Z(n73) );
  GTECH_XOR2 U92 ( .A(n77), .B(n78), .Z(sum[5]) );
  GTECH_AO22 U93 ( .A(n80), .B(n81), .C(b[4]), .D(a[4]), .Z(n78) );
  GTECH_XOR2 U94 ( .A(n81), .B(n80), .Z(sum[4]) );
  GTECH_XNOR2 U95 ( .A(n82), .B(n83), .Z(sum[3]) );
  GTECH_OA21 U96 ( .A(n84), .B(n85), .C(n86), .Z(n83) );
  GTECH_XOR2 U97 ( .A(n85), .B(n84), .Z(sum[2]) );
  GTECH_AOI21 U98 ( .A(n87), .B(n88), .C(n89), .Z(n84) );
  GTECH_XOR2 U99 ( .A(n87), .B(n88), .Z(sum[1]) );
  GTECH_AO21 U100 ( .A(cin), .B(n90), .C(n91), .Z(n88) );
  GTECH_XNOR2 U101 ( .A(n92), .B(n93), .Z(sum[15]) );
  GTECH_AOI21 U102 ( .A(n94), .B(n95), .C(n96), .Z(n93) );
  GTECH_XOR2 U103 ( .A(n95), .B(n94), .Z(sum[14]) );
  GTECH_AO22 U104 ( .A(n97), .B(n98), .C(b[13]), .D(a[13]), .Z(n94) );
  GTECH_XOR2 U105 ( .A(n98), .B(n97), .Z(sum[13]) );
  GTECH_AO22 U106 ( .A(a[12]), .B(b[12]), .C(cout), .D(n99), .Z(n97) );
  GTECH_XOR2 U107 ( .A(n99), .B(cout), .Z(sum[12]) );
  GTECH_XOR2 U108 ( .A(n100), .B(n101), .Z(sum[11]) );
  GTECH_AO21 U109 ( .A(n102), .B(n103), .C(n104), .Z(n100) );
  GTECH_XOR2 U110 ( .A(n102), .B(n103), .Z(sum[10]) );
  GTECH_AO21 U111 ( .A(n67), .B(n68), .C(n105), .Z(n103) );
  GTECH_AO21 U112 ( .A(n69), .B(n70), .C(n106), .Z(n68) );
  GTECH_XOR2 U113 ( .A(cin), .B(n90), .Z(sum[0]) );
  GTECH_AO21 U114 ( .A(n107), .B(n70), .C(n108), .Z(cout) );
  GTECH_AO21 U115 ( .A(n109), .B(n80), .C(n110), .Z(n70) );
  GTECH_AO21 U116 ( .A(cin), .B(n111), .C(n112), .Z(n80) );
  GTECH_AND3 U117 ( .A(n109), .B(n111), .C(n107), .Z(Pm) );
  GTECH_AND5 U118 ( .A(n82), .B(n87), .C(n113), .D(n90), .E(n114), .Z(n111) );
  GTECH_OA21 U119 ( .A(a[0]), .B(b[0]), .C(n115), .Z(n90) );
  GTECH_AO21 U120 ( .A(n107), .B(n116), .C(n108), .Z(Gm) );
  GTECH_AO22 U121 ( .A(b[15]), .B(a[15]), .C(n117), .D(n92), .Z(n108) );
  GTECH_AO21 U122 ( .A(n118), .B(n95), .C(n96), .Z(n117) );
  GTECH_AND2 U123 ( .A(a[14]), .B(b[14]), .Z(n96) );
  GTECH_AO21 U124 ( .A(b[13]), .B(a[13]), .C(n119), .Z(n118) );
  GTECH_AND3 U125 ( .A(a[12]), .B(n98), .C(b[12]), .Z(n119) );
  GTECH_AO21 U126 ( .A(n109), .B(n112), .C(n110), .Z(n116) );
  GTECH_AO21 U127 ( .A(n101), .B(n120), .C(n121), .Z(n110) );
  GTECH_AO21 U128 ( .A(n102), .B(n122), .C(n104), .Z(n120) );
  GTECH_NOT U129 ( .A(n123), .Z(n104) );
  GTECH_AO21 U130 ( .A(n67), .B(n106), .C(n105), .Z(n122) );
  GTECH_NOT U131 ( .A(n124), .Z(n105) );
  GTECH_NOT U132 ( .A(n125), .Z(n106) );
  GTECH_AO21 U133 ( .A(a[7]), .B(b[7]), .C(n126), .Z(n112) );
  GTECH_AO22 U134 ( .A(n127), .B(n71), .C(n128), .D(n114), .Z(n126) );
  GTECH_AND4 U135 ( .A(n76), .B(n81), .C(n77), .D(n71), .Z(n114) );
  GTECH_XOR2 U136 ( .A(a[4]), .B(b[4]), .Z(n81) );
  GTECH_AO22 U137 ( .A(n129), .B(n82), .C(b[3]), .D(a[3]), .Z(n128) );
  GTECH_XOR2 U138 ( .A(a[3]), .B(b[3]), .Z(n82) );
  GTECH_NOT U139 ( .A(n130), .Z(n129) );
  GTECH_OA21 U140 ( .A(n131), .B(n85), .C(n86), .Z(n130) );
  GTECH_NOT U141 ( .A(n113), .Z(n85) );
  GTECH_OA21 U142 ( .A(a[2]), .B(b[2]), .C(n86), .Z(n113) );
  GTECH_NAND2 U143 ( .A(b[2]), .B(a[2]), .Z(n86) );
  GTECH_AOI21 U144 ( .A(n87), .B(n91), .C(n89), .Z(n131) );
  GTECH_AND2 U145 ( .A(a[1]), .B(b[1]), .Z(n89) );
  GTECH_NOT U146 ( .A(n115), .Z(n91) );
  GTECH_NAND2 U147 ( .A(a[0]), .B(b[0]), .Z(n115) );
  GTECH_XOR2 U148 ( .A(a[1]), .B(b[1]), .Z(n87) );
  GTECH_XOR2 U149 ( .A(a[7]), .B(b[7]), .Z(n71) );
  GTECH_NOT U150 ( .A(n132), .Z(n127) );
  GTECH_AND2 U151 ( .A(n133), .B(n75), .Z(n132) );
  GTECH_AO21 U152 ( .A(n134), .B(n135), .C(n74), .Z(n133) );
  GTECH_NOT U153 ( .A(n76), .Z(n74) );
  GTECH_OA21 U154 ( .A(b[6]), .B(a[6]), .C(n75), .Z(n76) );
  GTECH_NAND2 U155 ( .A(a[6]), .B(b[6]), .Z(n75) );
  GTECH_NAND3 U156 ( .A(b[4]), .B(n77), .C(a[4]), .Z(n135) );
  GTECH_XOR2 U157 ( .A(a[5]), .B(b[5]), .Z(n77) );
  GTECH_NOT U158 ( .A(n79), .Z(n134) );
  GTECH_AND2 U159 ( .A(a[5]), .B(b[5]), .Z(n79) );
  GTECH_AND4 U160 ( .A(n69), .B(n101), .C(n102), .D(n67), .Z(n109) );
  GTECH_OA21 U161 ( .A(a[9]), .B(b[9]), .C(n124), .Z(n67) );
  GTECH_NAND2 U162 ( .A(b[9]), .B(a[9]), .Z(n124) );
  GTECH_OA21 U163 ( .A(a[10]), .B(b[10]), .C(n123), .Z(n102) );
  GTECH_NAND2 U164 ( .A(b[10]), .B(a[10]), .Z(n123) );
  GTECH_OA21 U165 ( .A(a[11]), .B(b[11]), .C(n136), .Z(n101) );
  GTECH_NOT U166 ( .A(n121), .Z(n136) );
  GTECH_AND2 U167 ( .A(a[11]), .B(b[11]), .Z(n121) );
  GTECH_OA21 U168 ( .A(a[8]), .B(b[8]), .C(n125), .Z(n69) );
  GTECH_NAND2 U169 ( .A(b[8]), .B(a[8]), .Z(n125) );
  GTECH_AND4 U170 ( .A(n99), .B(n92), .C(n95), .D(n98), .Z(n107) );
  GTECH_XOR2 U171 ( .A(a[13]), .B(b[13]), .Z(n98) );
  GTECH_XOR2 U172 ( .A(a[14]), .B(b[14]), .Z(n95) );
  GTECH_XOR2 U173 ( .A(a[15]), .B(b[15]), .Z(n92) );
  GTECH_XOR2 U174 ( .A(a[12]), .B(b[12]), .Z(n99) );
endmodule

