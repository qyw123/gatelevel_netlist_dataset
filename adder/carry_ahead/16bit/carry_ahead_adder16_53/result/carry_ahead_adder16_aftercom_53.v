
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
         n129, n130;

  GTECH_XOR2 U86 ( .A(n67), .B(n68), .Z(sum[9]) );
  GTECH_XOR2 U87 ( .A(n69), .B(n70), .Z(sum[8]) );
  GTECH_NOT U88 ( .A(n71), .Z(sum[7]) );
  GTECH_XOR2 U89 ( .A(n72), .B(n73), .Z(n71) );
  GTECH_AOI21 U90 ( .A(n74), .B(n75), .C(n76), .Z(n73) );
  GTECH_XOR2 U91 ( .A(n75), .B(n74), .Z(sum[6]) );
  GTECH_AO22 U92 ( .A(b[5]), .B(a[5]), .C(n77), .D(n78), .Z(n74) );
  GTECH_XOR2 U93 ( .A(n78), .B(n77), .Z(sum[5]) );
  GTECH_AO22 U94 ( .A(a[4]), .B(b[4]), .C(n79), .D(n80), .Z(n77) );
  GTECH_XOR2 U95 ( .A(n80), .B(n79), .Z(sum[4]) );
  GTECH_NOT U96 ( .A(n81), .Z(n79) );
  GTECH_NOT U97 ( .A(n82), .Z(sum[3]) );
  GTECH_XOR2 U98 ( .A(n83), .B(n84), .Z(n82) );
  GTECH_AOI21 U99 ( .A(n85), .B(n86), .C(n87), .Z(n84) );
  GTECH_XOR2 U100 ( .A(n86), .B(n85), .Z(sum[2]) );
  GTECH_AO22 U101 ( .A(b[1]), .B(a[1]), .C(n88), .D(n89), .Z(n85) );
  GTECH_XOR2 U102 ( .A(n89), .B(n88), .Z(sum[1]) );
  GTECH_AO22 U103 ( .A(a[0]), .B(b[0]), .C(n90), .D(cin), .Z(n88) );
  GTECH_NOT U104 ( .A(n91), .Z(sum[15]) );
  GTECH_XOR2 U105 ( .A(n92), .B(n93), .Z(n91) );
  GTECH_AOI21 U106 ( .A(n94), .B(n95), .C(n96), .Z(n93) );
  GTECH_XOR2 U107 ( .A(n95), .B(n94), .Z(sum[14]) );
  GTECH_AO21 U108 ( .A(n97), .B(n98), .C(n99), .Z(n94) );
  GTECH_XOR2 U109 ( .A(n98), .B(n97), .Z(sum[13]) );
  GTECH_AO22 U110 ( .A(a[12]), .B(b[12]), .C(cout), .D(n100), .Z(n97) );
  GTECH_XOR2 U111 ( .A(n100), .B(cout), .Z(sum[12]) );
  GTECH_NOT U112 ( .A(n101), .Z(sum[11]) );
  GTECH_XOR2 U113 ( .A(n102), .B(n103), .Z(n101) );
  GTECH_AOI21 U114 ( .A(n104), .B(n105), .C(n106), .Z(n103) );
  GTECH_XOR2 U115 ( .A(n105), .B(n104), .Z(sum[10]) );
  GTECH_AO21 U116 ( .A(n68), .B(n67), .C(n107), .Z(n104) );
  GTECH_AO22 U117 ( .A(a[8]), .B(b[8]), .C(n70), .D(n69), .Z(n68) );
  GTECH_XOR2 U118 ( .A(cin), .B(n90), .Z(sum[0]) );
  GTECH_OAI21 U119 ( .A(n108), .B(n109), .C(n110), .Z(cout) );
  GTECH_NOT U120 ( .A(n70), .Z(n108) );
  GTECH_OAI21 U121 ( .A(n81), .B(n111), .C(n112), .Z(n70) );
  GTECH_OA21 U122 ( .A(n113), .B(n114), .C(n115), .Z(n81) );
  GTECH_NOT U123 ( .A(cin), .Z(n114) );
  GTECH_NOR3 U124 ( .A(n111), .B(n113), .C(n109), .Z(Pm) );
  GTECH_NAND5 U125 ( .A(n86), .B(n89), .C(n83), .D(n116), .E(n90), .Z(n113) );
  GTECH_XOR2 U126 ( .A(a[0]), .B(b[0]), .Z(n90) );
  GTECH_OAI21 U127 ( .A(n117), .B(n109), .C(n110), .Z(Gm) );
  GTECH_AOI21 U128 ( .A(b[15]), .B(a[15]), .C(n118), .Z(n110) );
  GTECH_OA21 U129 ( .A(n119), .B(n96), .C(n92), .Z(n118) );
  GTECH_AND2 U130 ( .A(a[14]), .B(b[14]), .Z(n96) );
  GTECH_OA21 U131 ( .A(n120), .B(n99), .C(n95), .Z(n119) );
  GTECH_AND2 U132 ( .A(b[13]), .B(a[13]), .Z(n99) );
  GTECH_AND3 U133 ( .A(a[12]), .B(n98), .C(b[12]), .Z(n120) );
  GTECH_NAND4 U134 ( .A(n100), .B(n92), .C(n95), .D(n98), .Z(n109) );
  GTECH_XOR2 U135 ( .A(a[13]), .B(b[13]), .Z(n98) );
  GTECH_XOR2 U136 ( .A(a[14]), .B(b[14]), .Z(n95) );
  GTECH_XOR2 U137 ( .A(a[15]), .B(b[15]), .Z(n92) );
  GTECH_XOR2 U138 ( .A(a[12]), .B(b[12]), .Z(n100) );
  GTECH_OA21 U139 ( .A(n115), .B(n111), .C(n112), .Z(n117) );
  GTECH_AOI21 U140 ( .A(b[11]), .B(a[11]), .C(n121), .Z(n112) );
  GTECH_OA21 U141 ( .A(n122), .B(n106), .C(n102), .Z(n121) );
  GTECH_AND2 U142 ( .A(a[10]), .B(b[10]), .Z(n106) );
  GTECH_OA21 U143 ( .A(n123), .B(n107), .C(n105), .Z(n122) );
  GTECH_AND2 U144 ( .A(a[9]), .B(b[9]), .Z(n107) );
  GTECH_AND3 U145 ( .A(a[8]), .B(n67), .C(b[8]), .Z(n123) );
  GTECH_NAND4 U146 ( .A(n69), .B(n102), .C(n105), .D(n67), .Z(n111) );
  GTECH_XOR2 U147 ( .A(a[9]), .B(b[9]), .Z(n67) );
  GTECH_XOR2 U148 ( .A(a[10]), .B(b[10]), .Z(n105) );
  GTECH_XOR2 U149 ( .A(a[11]), .B(b[11]), .Z(n102) );
  GTECH_XOR2 U150 ( .A(a[8]), .B(b[8]), .Z(n69) );
  GTECH_AOI222 U151 ( .A(a[7]), .B(b[7]), .C(n72), .D(n124), .E(n116), .F(n125), .Z(n115) );
  GTECH_AO22 U152 ( .A(b[3]), .B(a[3]), .C(n126), .D(n83), .Z(n125) );
  GTECH_XOR2 U153 ( .A(a[3]), .B(b[3]), .Z(n83) );
  GTECH_AO21 U154 ( .A(n127), .B(n86), .C(n87), .Z(n126) );
  GTECH_AND2 U155 ( .A(a[2]), .B(b[2]), .Z(n87) );
  GTECH_XOR2 U156 ( .A(a[2]), .B(b[2]), .Z(n86) );
  GTECH_AO21 U157 ( .A(b[1]), .B(a[1]), .C(n128), .Z(n127) );
  GTECH_AND3 U158 ( .A(a[0]), .B(n89), .C(b[0]), .Z(n128) );
  GTECH_XOR2 U159 ( .A(a[1]), .B(b[1]), .Z(n89) );
  GTECH_AND4 U160 ( .A(n80), .B(n72), .C(n75), .D(n78), .Z(n116) );
  GTECH_XOR2 U161 ( .A(a[4]), .B(b[4]), .Z(n80) );
  GTECH_AO21 U162 ( .A(n129), .B(n75), .C(n76), .Z(n124) );
  GTECH_AND2 U163 ( .A(a[6]), .B(b[6]), .Z(n76) );
  GTECH_XOR2 U164 ( .A(a[6]), .B(b[6]), .Z(n75) );
  GTECH_AO21 U165 ( .A(b[5]), .B(a[5]), .C(n130), .Z(n129) );
  GTECH_AND3 U166 ( .A(a[4]), .B(n78), .C(b[4]), .Z(n130) );
  GTECH_XOR2 U167 ( .A(a[5]), .B(b[5]), .Z(n78) );
  GTECH_XOR2 U168 ( .A(a[7]), .B(b[7]), .Z(n72) );
endmodule

