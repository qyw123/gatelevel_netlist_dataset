
module carry_ahead_adder16 ( a, b, cin, cout, sum, Gm, Pm );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout, Gm, Pm;
  wire   n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134;

  GTECH_XOR2 U92 ( .A(n73), .B(n74), .Z(sum[9]) );
  GTECH_XOR2 U93 ( .A(n75), .B(n76), .Z(sum[8]) );
  GTECH_XOR2 U94 ( .A(n77), .B(n78), .Z(sum[7]) );
  GTECH_OA21 U95 ( .A(n79), .B(n80), .C(n81), .Z(n78) );
  GTECH_XOR2 U96 ( .A(n79), .B(n80), .Z(sum[6]) );
  GTECH_AOI2N2 U97 ( .A(b[5]), .B(a[5]), .C(n82), .D(n83), .Z(n79) );
  GTECH_XOR2 U98 ( .A(n83), .B(n82), .Z(sum[5]) );
  GTECH_OA21 U99 ( .A(n84), .B(n85), .C(n86), .Z(n82) );
  GTECH_XOR2 U100 ( .A(n85), .B(n84), .Z(sum[4]) );
  GTECH_XOR2 U101 ( .A(n87), .B(n88), .Z(sum[3]) );
  GTECH_OA21 U102 ( .A(n89), .B(n90), .C(n91), .Z(n88) );
  GTECH_XOR2 U103 ( .A(n89), .B(n90), .Z(sum[2]) );
  GTECH_AOI22 U104 ( .A(b[1]), .B(a[1]), .C(n92), .D(n93), .Z(n89) );
  GTECH_XOR2 U105 ( .A(n93), .B(n92), .Z(sum[1]) );
  GTECH_OAI2N2 U106 ( .A(n94), .B(n95), .C(a[0]), .D(b[0]), .Z(n92) );
  GTECH_XOR2 U107 ( .A(n96), .B(n97), .Z(sum[15]) );
  GTECH_OA21 U108 ( .A(n98), .B(n99), .C(n100), .Z(n97) );
  GTECH_XOR2 U109 ( .A(n98), .B(n99), .Z(sum[14]) );
  GTECH_AOI2N2 U110 ( .A(b[13]), .B(a[13]), .C(n101), .D(n102), .Z(n98) );
  GTECH_XOR2 U111 ( .A(n102), .B(n101), .Z(sum[13]) );
  GTECH_OA21 U112 ( .A(n103), .B(n104), .C(n105), .Z(n101) );
  GTECH_NOT U113 ( .A(cout), .Z(n103) );
  GTECH_XNOR2 U114 ( .A(n104), .B(cout), .Z(sum[12]) );
  GTECH_XNOR2 U115 ( .A(n106), .B(n107), .Z(sum[11]) );
  GTECH_AOI21 U116 ( .A(n108), .B(n109), .C(n110), .Z(n107) );
  GTECH_XOR2 U117 ( .A(n108), .B(n109), .Z(sum[10]) );
  GTECH_AO22 U118 ( .A(b[9]), .B(a[9]), .C(n74), .D(n73), .Z(n108) );
  GTECH_AO22 U119 ( .A(a[8]), .B(b[8]), .C(n76), .D(n75), .Z(n74) );
  GTECH_XNOR2 U120 ( .A(cin), .B(n94), .Z(sum[0]) );
  GTECH_OAI21 U121 ( .A(n111), .B(n112), .C(n113), .Z(cout) );
  GTECH_NOT U122 ( .A(n76), .Z(n111) );
  GTECH_OAI21 U123 ( .A(n84), .B(n114), .C(n115), .Z(n76) );
  GTECH_OA21 U124 ( .A(n116), .B(n95), .C(n117), .Z(n84) );
  GTECH_NOT U125 ( .A(cin), .Z(n95) );
  GTECH_NOR3 U126 ( .A(n114), .B(n116), .C(n112), .Z(Pm) );
  GTECH_OR5 U127 ( .A(n87), .B(n118), .C(n94), .D(n119), .E(n90), .Z(n116) );
  GTECH_XNOR2 U128 ( .A(a[0]), .B(b[0]), .Z(n94) );
  GTECH_OAI21 U129 ( .A(n120), .B(n112), .C(n113), .Z(Gm) );
  GTECH_AOI2N2 U130 ( .A(b[15]), .B(a[15]), .C(n121), .D(n96), .Z(n113) );
  GTECH_OA21 U131 ( .A(n122), .B(n99), .C(n100), .Z(n121) );
  GTECH_AOI2N2 U132 ( .A(b[13]), .B(a[13]), .C(n102), .D(n105), .Z(n122) );
  GTECH_OR4 U133 ( .A(n104), .B(n99), .C(n96), .D(n102), .Z(n112) );
  GTECH_XNOR2 U134 ( .A(a[13]), .B(b[13]), .Z(n102) );
  GTECH_XNOR2 U135 ( .A(a[15]), .B(b[15]), .Z(n96) );
  GTECH_OAI21 U136 ( .A(b[14]), .B(a[14]), .C(n100), .Z(n99) );
  GTECH_NAND2 U137 ( .A(b[14]), .B(a[14]), .Z(n100) );
  GTECH_OAI21 U138 ( .A(b[12]), .B(a[12]), .C(n105), .Z(n104) );
  GTECH_NAND2 U139 ( .A(a[12]), .B(b[12]), .Z(n105) );
  GTECH_OA21 U140 ( .A(n117), .B(n114), .C(n115), .Z(n120) );
  GTECH_AOI2N2 U141 ( .A(b[11]), .B(a[11]), .C(n123), .D(n124), .Z(n115) );
  GTECH_NOT U142 ( .A(n106), .Z(n124) );
  GTECH_AOI21 U143 ( .A(n125), .B(n109), .C(n110), .Z(n123) );
  GTECH_AO21 U144 ( .A(b[9]), .B(a[9]), .C(n126), .Z(n125) );
  GTECH_AND3 U145 ( .A(a[8]), .B(n73), .C(b[8]), .Z(n126) );
  GTECH_NAND4 U146 ( .A(n109), .B(n75), .C(n106), .D(n73), .Z(n114) );
  GTECH_XOR2 U147 ( .A(a[9]), .B(b[9]), .Z(n73) );
  GTECH_XOR2 U148 ( .A(a[11]), .B(b[11]), .Z(n106) );
  GTECH_XOR2 U149 ( .A(a[8]), .B(b[8]), .Z(n75) );
  GTECH_OA21 U150 ( .A(a[10]), .B(b[10]), .C(n127), .Z(n109) );
  GTECH_NOT U151 ( .A(n110), .Z(n127) );
  GTECH_AND2 U152 ( .A(a[10]), .B(b[10]), .Z(n110) );
  GTECH_AOI21 U153 ( .A(b[7]), .B(a[7]), .C(n128), .Z(n117) );
  GTECH_OAI22 U154 ( .A(n129), .B(n119), .C(n130), .D(n77), .Z(n128) );
  GTECH_OA21 U155 ( .A(n131), .B(n80), .C(n81), .Z(n130) );
  GTECH_AOI2N2 U156 ( .A(b[5]), .B(a[5]), .C(n83), .D(n86), .Z(n131) );
  GTECH_OR4 U157 ( .A(n80), .B(n85), .C(n83), .D(n77), .Z(n119) );
  GTECH_XNOR2 U158 ( .A(a[7]), .B(b[7]), .Z(n77) );
  GTECH_XNOR2 U159 ( .A(a[5]), .B(b[5]), .Z(n83) );
  GTECH_OAI21 U160 ( .A(b[4]), .B(a[4]), .C(n86), .Z(n85) );
  GTECH_NAND2 U161 ( .A(b[4]), .B(a[4]), .Z(n86) );
  GTECH_OAI21 U162 ( .A(a[6]), .B(b[6]), .C(n81), .Z(n80) );
  GTECH_NAND2 U163 ( .A(b[6]), .B(a[6]), .Z(n81) );
  GTECH_AOI2N2 U164 ( .A(b[3]), .B(a[3]), .C(n132), .D(n87), .Z(n129) );
  GTECH_XNOR2 U165 ( .A(a[3]), .B(b[3]), .Z(n87) );
  GTECH_OA21 U166 ( .A(n133), .B(n90), .C(n91), .Z(n132) );
  GTECH_OAI21 U167 ( .A(a[2]), .B(b[2]), .C(n91), .Z(n90) );
  GTECH_NAND2 U168 ( .A(b[2]), .B(a[2]), .Z(n91) );
  GTECH_AOI21 U169 ( .A(b[1]), .B(a[1]), .C(n134), .Z(n133) );
  GTECH_AND3 U170 ( .A(a[0]), .B(n93), .C(b[0]), .Z(n134) );
  GTECH_NOT U171 ( .A(n118), .Z(n93) );
  GTECH_XNOR2 U172 ( .A(a[1]), .B(b[1]), .Z(n118) );
endmodule

