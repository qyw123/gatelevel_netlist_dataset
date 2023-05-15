
module carry_ahead_adder16 ( a, b, cin, cout, sum, Gm, Pm );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout, Gm, Pm;
  wire   n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135;

  GTECH_XOR2 U88 ( .A(n69), .B(n70), .Z(sum[9]) );
  GTECH_XOR2 U89 ( .A(n71), .B(n72), .Z(sum[8]) );
  GTECH_XNOR2 U90 ( .A(n73), .B(n74), .Z(sum[7]) );
  GTECH_OAI21 U91 ( .A(n75), .B(n76), .C(n77), .Z(n73) );
  GTECH_XOR2 U92 ( .A(n76), .B(n75), .Z(sum[6]) );
  GTECH_OA21 U93 ( .A(n78), .B(n79), .C(n80), .Z(n75) );
  GTECH_XOR2 U94 ( .A(n79), .B(n78), .Z(sum[5]) );
  GTECH_OA21 U95 ( .A(n81), .B(n82), .C(n83), .Z(n78) );
  GTECH_XOR2 U96 ( .A(n82), .B(n81), .Z(sum[4]) );
  GTECH_XNOR2 U97 ( .A(n84), .B(n85), .Z(sum[3]) );
  GTECH_OAI21 U98 ( .A(n86), .B(n87), .C(n88), .Z(n85) );
  GTECH_XOR2 U99 ( .A(n87), .B(n86), .Z(sum[2]) );
  GTECH_OA21 U100 ( .A(n89), .B(n90), .C(n91), .Z(n86) );
  GTECH_XOR2 U101 ( .A(n90), .B(n89), .Z(sum[1]) );
  GTECH_AND2 U102 ( .A(n92), .B(n93), .Z(n89) );
  GTECH_XOR2 U103 ( .A(n94), .B(n95), .Z(sum[15]) );
  GTECH_OA21 U104 ( .A(n96), .B(n97), .C(n98), .Z(n95) );
  GTECH_XOR2 U105 ( .A(n97), .B(n96), .Z(sum[14]) );
  GTECH_OA21 U106 ( .A(n99), .B(n100), .C(n101), .Z(n96) );
  GTECH_XOR2 U107 ( .A(n100), .B(n99), .Z(sum[13]) );
  GTECH_OA21 U108 ( .A(n102), .B(n103), .C(n104), .Z(n99) );
  GTECH_XOR2 U109 ( .A(n102), .B(n103), .Z(sum[12]) );
  GTECH_NOT U110 ( .A(cout), .Z(n102) );
  GTECH_XNOR2 U111 ( .A(n105), .B(n106), .Z(sum[11]) );
  GTECH_OAI21 U112 ( .A(n107), .B(n108), .C(n109), .Z(n105) );
  GTECH_XOR2 U113 ( .A(n107), .B(n108), .Z(sum[10]) );
  GTECH_AOI22 U114 ( .A(n70), .B(n69), .C(b[9]), .D(a[9]), .Z(n107) );
  GTECH_OAI2N2 U115 ( .A(n72), .B(n71), .C(a[8]), .D(b[8]), .Z(n70) );
  GTECH_XNOR2 U116 ( .A(cin), .B(n110), .Z(sum[0]) );
  GTECH_OAI21 U117 ( .A(n72), .B(n111), .C(n112), .Z(cout) );
  GTECH_OA21 U118 ( .A(n81), .B(n113), .C(n114), .Z(n72) );
  GTECH_AND2 U119 ( .A(n115), .B(n116), .Z(n81) );
  GTECH_OR5 U120 ( .A(n90), .B(n84), .C(n87), .D(n92), .E(n117), .Z(n115) );
  GTECH_OR_NOT U121 ( .A(n110), .B(cin), .Z(n92) );
  GTECH_NOR4 U122 ( .A(n118), .B(n111), .C(n110), .D(n113), .Z(Pm) );
  GTECH_OAI21 U123 ( .A(b[0]), .B(a[0]), .C(n93), .Z(n110) );
  GTECH_OR4 U124 ( .A(n117), .B(n87), .C(n90), .D(n84), .Z(n118) );
  GTECH_OAI21 U125 ( .A(n119), .B(n111), .C(n112), .Z(Gm) );
  GTECH_AOI2N2 U126 ( .A(b[15]), .B(a[15]), .C(n120), .D(n94), .Z(n112) );
  GTECH_OA21 U127 ( .A(n121), .B(n97), .C(n98), .Z(n120) );
  GTECH_OA21 U128 ( .A(n104), .B(n100), .C(n101), .Z(n121) );
  GTECH_OR4 U129 ( .A(n103), .B(n97), .C(n100), .D(n94), .Z(n111) );
  GTECH_XNOR2 U130 ( .A(a[15]), .B(b[15]), .Z(n94) );
  GTECH_OAI21 U131 ( .A(b[13]), .B(a[13]), .C(n101), .Z(n100) );
  GTECH_NAND2 U132 ( .A(b[13]), .B(a[13]), .Z(n101) );
  GTECH_OAI21 U133 ( .A(b[14]), .B(a[14]), .C(n98), .Z(n97) );
  GTECH_NAND2 U134 ( .A(b[14]), .B(a[14]), .Z(n98) );
  GTECH_OAI21 U135 ( .A(b[12]), .B(a[12]), .C(n104), .Z(n103) );
  GTECH_NAND2 U136 ( .A(b[12]), .B(a[12]), .Z(n104) );
  GTECH_OA21 U137 ( .A(n116), .B(n113), .C(n114), .Z(n119) );
  GTECH_OA21 U138 ( .A(n122), .B(n106), .C(n123), .Z(n114) );
  GTECH_OA21 U139 ( .A(n124), .B(n108), .C(n109), .Z(n122) );
  GTECH_OA21 U140 ( .A(n125), .B(n126), .C(n127), .Z(n124) );
  GTECH_NAND3 U141 ( .A(a[8]), .B(n69), .C(b[8]), .Z(n127) );
  GTECH_NOT U142 ( .A(b[9]), .Z(n125) );
  GTECH_OR4 U143 ( .A(n106), .B(n108), .C(n71), .D(n128), .Z(n113) );
  GTECH_NOT U144 ( .A(n69), .Z(n128) );
  GTECH_XNOR2 U145 ( .A(n126), .B(b[9]), .Z(n69) );
  GTECH_NOT U146 ( .A(a[9]), .Z(n126) );
  GTECH_XNOR2 U147 ( .A(a[8]), .B(b[8]), .Z(n71) );
  GTECH_OAI21 U148 ( .A(a[10]), .B(b[10]), .C(n109), .Z(n108) );
  GTECH_NAND2 U149 ( .A(b[10]), .B(a[10]), .Z(n109) );
  GTECH_OAI21 U150 ( .A(a[11]), .B(b[11]), .C(n123), .Z(n106) );
  GTECH_NAND2 U151 ( .A(b[11]), .B(a[11]), .Z(n123) );
  GTECH_OA21 U152 ( .A(n129), .B(n74), .C(n130), .Z(n116) );
  GTECH_OA21 U153 ( .A(n131), .B(n117), .C(n132), .Z(n130) );
  GTECH_OR4 U154 ( .A(n82), .B(n74), .C(n76), .D(n79), .Z(n117) );
  GTECH_OAI21 U155 ( .A(b[4]), .B(a[4]), .C(n83), .Z(n82) );
  GTECH_AOI2N2 U156 ( .A(b[3]), .B(a[3]), .C(n133), .D(n84), .Z(n131) );
  GTECH_XNOR2 U157 ( .A(a[3]), .B(b[3]), .Z(n84) );
  GTECH_OA21 U158 ( .A(n134), .B(n87), .C(n88), .Z(n133) );
  GTECH_OAI21 U159 ( .A(b[2]), .B(a[2]), .C(n88), .Z(n87) );
  GTECH_NAND2 U160 ( .A(b[2]), .B(a[2]), .Z(n88) );
  GTECH_OA21 U161 ( .A(n93), .B(n90), .C(n91), .Z(n134) );
  GTECH_OAI21 U162 ( .A(b[1]), .B(a[1]), .C(n91), .Z(n90) );
  GTECH_NAND2 U163 ( .A(b[1]), .B(a[1]), .Z(n91) );
  GTECH_NAND2 U164 ( .A(b[0]), .B(a[0]), .Z(n93) );
  GTECH_OAI21 U165 ( .A(b[7]), .B(a[7]), .C(n132), .Z(n74) );
  GTECH_NAND2 U166 ( .A(b[7]), .B(a[7]), .Z(n132) );
  GTECH_OA21 U167 ( .A(n135), .B(n76), .C(n77), .Z(n129) );
  GTECH_OAI21 U168 ( .A(b[6]), .B(a[6]), .C(n77), .Z(n76) );
  GTECH_NAND2 U169 ( .A(a[6]), .B(b[6]), .Z(n77) );
  GTECH_OA21 U170 ( .A(n79), .B(n83), .C(n80), .Z(n135) );
  GTECH_NAND2 U171 ( .A(b[4]), .B(a[4]), .Z(n83) );
  GTECH_OAI21 U172 ( .A(b[5]), .B(a[5]), .C(n80), .Z(n79) );
  GTECH_NAND2 U173 ( .A(b[5]), .B(a[5]), .Z(n80) );
endmodule
