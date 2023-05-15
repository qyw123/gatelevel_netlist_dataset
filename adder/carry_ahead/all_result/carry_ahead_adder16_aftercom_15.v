
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
         n131, n132, n133;

  GTECH_XOR2 U88 ( .A(n69), .B(n70), .Z(sum[9]) );
  GTECH_XOR2 U89 ( .A(n71), .B(n72), .Z(sum[8]) );
  GTECH_XOR2 U90 ( .A(n73), .B(n74), .Z(sum[7]) );
  GTECH_OA21 U91 ( .A(n75), .B(n76), .C(n77), .Z(n74) );
  GTECH_XOR2 U92 ( .A(n76), .B(n75), .Z(sum[6]) );
  GTECH_OA21 U93 ( .A(n78), .B(n79), .C(n80), .Z(n75) );
  GTECH_XOR2 U94 ( .A(n79), .B(n78), .Z(sum[5]) );
  GTECH_OA21 U95 ( .A(n81), .B(n82), .C(n83), .Z(n78) );
  GTECH_XOR2 U96 ( .A(n81), .B(n82), .Z(sum[4]) );
  GTECH_XNOR2 U97 ( .A(n84), .B(n85), .Z(sum[3]) );
  GTECH_AOI21 U98 ( .A(n86), .B(n87), .C(n88), .Z(n85) );
  GTECH_XOR2 U99 ( .A(n86), .B(n87), .Z(sum[2]) );
  GTECH_AO22 U100 ( .A(b[1]), .B(a[1]), .C(n89), .D(n90), .Z(n86) );
  GTECH_XOR2 U101 ( .A(n90), .B(n89), .Z(sum[1]) );
  GTECH_AO22 U102 ( .A(n91), .B(cin), .C(a[0]), .D(b[0]), .Z(n89) );
  GTECH_XNOR2 U103 ( .A(n92), .B(n93), .Z(sum[15]) );
  GTECH_OAI21 U104 ( .A(n94), .B(n95), .C(n96), .Z(n92) );
  GTECH_XOR2 U105 ( .A(n95), .B(n94), .Z(sum[14]) );
  GTECH_OA21 U106 ( .A(n97), .B(n98), .C(n99), .Z(n94) );
  GTECH_XOR2 U107 ( .A(n98), .B(n97), .Z(sum[13]) );
  GTECH_OA21 U108 ( .A(n100), .B(n101), .C(n102), .Z(n97) );
  GTECH_XNOR2 U109 ( .A(n101), .B(cout), .Z(sum[12]) );
  GTECH_XNOR2 U110 ( .A(n103), .B(n104), .Z(sum[11]) );
  GTECH_OAI21 U111 ( .A(n105), .B(n106), .C(n107), .Z(n103) );
  GTECH_XOR2 U112 ( .A(n106), .B(n105), .Z(sum[10]) );
  GTECH_OA21 U113 ( .A(n70), .B(n69), .C(n108), .Z(n105) );
  GTECH_OA21 U114 ( .A(n72), .B(n71), .C(n109), .Z(n70) );
  GTECH_XOR2 U115 ( .A(cin), .B(n91), .Z(sum[0]) );
  GTECH_NOT U116 ( .A(n100), .Z(cout) );
  GTECH_OA21 U117 ( .A(n72), .B(n110), .C(n111), .Z(n100) );
  GTECH_OA21 U118 ( .A(n81), .B(n112), .C(n113), .Z(n72) );
  GTECH_OA21 U119 ( .A(n114), .B(n115), .C(n116), .Z(n81) );
  GTECH_NOT U120 ( .A(cin), .Z(n115) );
  GTECH_NOR3 U121 ( .A(n112), .B(n114), .C(n110), .Z(Pm) );
  GTECH_NAND5 U122 ( .A(n84), .B(n90), .C(n91), .D(n117), .E(n87), .Z(n114) );
  GTECH_XOR2 U123 ( .A(a[0]), .B(b[0]), .Z(n91) );
  GTECH_OAI21 U124 ( .A(n118), .B(n110), .C(n111), .Z(Gm) );
  GTECH_OA21 U125 ( .A(n119), .B(n93), .C(n120), .Z(n111) );
  GTECH_OA21 U126 ( .A(n121), .B(n95), .C(n96), .Z(n119) );
  GTECH_OA21 U127 ( .A(n102), .B(n98), .C(n99), .Z(n121) );
  GTECH_OR4 U128 ( .A(n101), .B(n93), .C(n95), .D(n98), .Z(n110) );
  GTECH_OAI21 U129 ( .A(b[13]), .B(a[13]), .C(n99), .Z(n98) );
  GTECH_NAND2 U130 ( .A(b[13]), .B(a[13]), .Z(n99) );
  GTECH_OAI21 U131 ( .A(b[14]), .B(a[14]), .C(n96), .Z(n95) );
  GTECH_NAND2 U132 ( .A(b[14]), .B(a[14]), .Z(n96) );
  GTECH_OAI21 U133 ( .A(b[15]), .B(a[15]), .C(n120), .Z(n93) );
  GTECH_NAND2 U134 ( .A(a[15]), .B(b[15]), .Z(n120) );
  GTECH_OAI21 U135 ( .A(b[12]), .B(a[12]), .C(n102), .Z(n101) );
  GTECH_NAND2 U136 ( .A(a[12]), .B(b[12]), .Z(n102) );
  GTECH_OA21 U137 ( .A(n116), .B(n112), .C(n113), .Z(n118) );
  GTECH_OA21 U138 ( .A(n122), .B(n104), .C(n123), .Z(n113) );
  GTECH_OA21 U139 ( .A(n124), .B(n106), .C(n107), .Z(n122) );
  GTECH_OA21 U140 ( .A(n109), .B(n69), .C(n108), .Z(n124) );
  GTECH_OR4 U141 ( .A(n71), .B(n104), .C(n106), .D(n69), .Z(n112) );
  GTECH_OAI21 U142 ( .A(b[9]), .B(a[9]), .C(n108), .Z(n69) );
  GTECH_NAND2 U143 ( .A(a[9]), .B(b[9]), .Z(n108) );
  GTECH_OAI21 U144 ( .A(b[10]), .B(a[10]), .C(n107), .Z(n106) );
  GTECH_NAND2 U145 ( .A(b[10]), .B(a[10]), .Z(n107) );
  GTECH_OAI21 U146 ( .A(b[11]), .B(a[11]), .C(n123), .Z(n104) );
  GTECH_NAND2 U147 ( .A(a[11]), .B(b[11]), .Z(n123) );
  GTECH_OAI21 U148 ( .A(b[8]), .B(a[8]), .C(n109), .Z(n71) );
  GTECH_NAND2 U149 ( .A(a[8]), .B(b[8]), .Z(n109) );
  GTECH_AOI222 U150 ( .A(a[7]), .B(b[7]), .C(n117), .D(n125), .E(n126), .F(
        n127), .Z(n116) );
  GTECH_OAI21 U151 ( .A(n128), .B(n76), .C(n77), .Z(n127) );
  GTECH_OA21 U152 ( .A(n79), .B(n83), .C(n80), .Z(n128) );
  GTECH_NAND2 U153 ( .A(a[5]), .B(b[5]), .Z(n80) );
  GTECH_OAI2N2 U154 ( .A(n129), .B(n130), .C(b[3]), .D(a[3]), .Z(n125) );
  GTECH_NOT U155 ( .A(n84), .Z(n130) );
  GTECH_XOR2 U156 ( .A(a[3]), .B(b[3]), .Z(n84) );
  GTECH_AOI21 U157 ( .A(n131), .B(n87), .C(n88), .Z(n129) );
  GTECH_OA21 U158 ( .A(a[2]), .B(b[2]), .C(n132), .Z(n87) );
  GTECH_NOT U159 ( .A(n88), .Z(n132) );
  GTECH_AND2 U160 ( .A(a[2]), .B(b[2]), .Z(n88) );
  GTECH_AO21 U161 ( .A(b[1]), .B(a[1]), .C(n133), .Z(n131) );
  GTECH_AND3 U162 ( .A(a[0]), .B(n90), .C(b[0]), .Z(n133) );
  GTECH_XOR2 U163 ( .A(a[1]), .B(b[1]), .Z(n90) );
  GTECH_NOR4 U164 ( .A(n76), .B(n82), .C(n79), .D(n73), .Z(n117) );
  GTECH_NOT U165 ( .A(n126), .Z(n73) );
  GTECH_XOR2 U166 ( .A(a[7]), .B(b[7]), .Z(n126) );
  GTECH_XNOR2 U167 ( .A(a[5]), .B(b[5]), .Z(n79) );
  GTECH_OAI21 U168 ( .A(b[4]), .B(a[4]), .C(n83), .Z(n82) );
  GTECH_NAND2 U169 ( .A(a[4]), .B(b[4]), .Z(n83) );
  GTECH_OAI21 U170 ( .A(b[6]), .B(a[6]), .C(n77), .Z(n76) );
  GTECH_NAND2 U171 ( .A(b[6]), .B(a[6]), .Z(n77) );
endmodule

