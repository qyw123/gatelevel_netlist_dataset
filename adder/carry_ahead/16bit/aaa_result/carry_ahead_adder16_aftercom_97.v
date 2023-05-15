
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
         n131, n132, n133, n134, n135, n136, n137, n138;

  GTECH_XOR2 U88 ( .A(n69), .B(n70), .Z(sum[9]) );
  GTECH_XOR2 U89 ( .A(n71), .B(n72), .Z(sum[8]) );
  GTECH_XOR2 U90 ( .A(n73), .B(n74), .Z(sum[7]) );
  GTECH_OA21 U91 ( .A(n75), .B(n76), .C(n77), .Z(n74) );
  GTECH_XOR2 U92 ( .A(n76), .B(n75), .Z(sum[6]) );
  GTECH_OA21 U93 ( .A(n78), .B(n79), .C(n80), .Z(n75) );
  GTECH_XOR2 U94 ( .A(n79), .B(n78), .Z(sum[5]) );
  GTECH_OA21 U95 ( .A(n81), .B(n82), .C(n83), .Z(n78) );
  GTECH_XOR2 U96 ( .A(n82), .B(n81), .Z(sum[4]) );
  GTECH_XOR2 U97 ( .A(n84), .B(n85), .Z(sum[3]) );
  GTECH_OA21 U98 ( .A(n86), .B(n87), .C(n88), .Z(n85) );
  GTECH_XNOR2 U99 ( .A(n86), .B(n89), .Z(sum[2]) );
  GTECH_OA21 U100 ( .A(n90), .B(n91), .C(n92), .Z(n86) );
  GTECH_XOR2 U101 ( .A(n90), .B(n91), .Z(sum[1]) );
  GTECH_NOT U102 ( .A(n93), .Z(n90) );
  GTECH_OR_NOT U103 ( .A(n94), .B(n95), .Z(n93) );
  GTECH_XNOR2 U104 ( .A(n96), .B(n97), .Z(sum[15]) );
  GTECH_OAI21 U105 ( .A(n98), .B(n99), .C(n100), .Z(n96) );
  GTECH_XOR2 U106 ( .A(n99), .B(n98), .Z(sum[14]) );
  GTECH_OA21 U107 ( .A(n101), .B(n102), .C(n103), .Z(n98) );
  GTECH_XOR2 U108 ( .A(n102), .B(n101), .Z(sum[13]) );
  GTECH_OA21 U109 ( .A(n104), .B(n105), .C(n106), .Z(n101) );
  GTECH_XOR2 U110 ( .A(n105), .B(n104), .Z(sum[12]) );
  GTECH_XNOR2 U111 ( .A(n107), .B(n108), .Z(sum[11]) );
  GTECH_OAI21 U112 ( .A(n109), .B(n110), .C(n111), .Z(n107) );
  GTECH_XOR2 U113 ( .A(n110), .B(n109), .Z(sum[10]) );
  GTECH_OA21 U114 ( .A(n70), .B(n69), .C(n112), .Z(n109) );
  GTECH_OA21 U115 ( .A(n72), .B(n71), .C(n113), .Z(n70) );
  GTECH_XOR2 U116 ( .A(cin), .B(n114), .Z(sum[0]) );
  GTECH_NOT U117 ( .A(n104), .Z(cout) );
  GTECH_OA21 U118 ( .A(n72), .B(n115), .C(n116), .Z(n104) );
  GTECH_OA21 U119 ( .A(n81), .B(n117), .C(n118), .Z(n72) );
  GTECH_AND2 U120 ( .A(n119), .B(n120), .Z(n81) );
  GTECH_NAND5 U121 ( .A(n121), .B(n122), .C(n89), .D(n94), .E(n123), .Z(n119)
         );
  GTECH_AND_NOT U122 ( .A(cin), .B(n124), .Z(n94) );
  GTECH_NOR4 U123 ( .A(n125), .B(n115), .C(n124), .D(n117), .Z(Pm) );
  GTECH_NOT U124 ( .A(n114), .Z(n124) );
  GTECH_OA21 U125 ( .A(b[0]), .B(a[0]), .C(n95), .Z(n114) );
  GTECH_NAND4 U126 ( .A(n123), .B(n89), .C(n121), .D(n122), .Z(n125) );
  GTECH_NOT U127 ( .A(n84), .Z(n122) );
  GTECH_OAI21 U128 ( .A(n126), .B(n115), .C(n116), .Z(Gm) );
  GTECH_OA21 U129 ( .A(n127), .B(n97), .C(n128), .Z(n116) );
  GTECH_OA21 U130 ( .A(n129), .B(n99), .C(n100), .Z(n127) );
  GTECH_OA21 U131 ( .A(n106), .B(n102), .C(n103), .Z(n129) );
  GTECH_OR4 U132 ( .A(n105), .B(n97), .C(n99), .D(n102), .Z(n115) );
  GTECH_OAI21 U133 ( .A(b[13]), .B(a[13]), .C(n103), .Z(n102) );
  GTECH_NAND2 U134 ( .A(a[13]), .B(b[13]), .Z(n103) );
  GTECH_OAI21 U135 ( .A(b[14]), .B(a[14]), .C(n100), .Z(n99) );
  GTECH_NAND2 U136 ( .A(a[14]), .B(b[14]), .Z(n100) );
  GTECH_OAI21 U137 ( .A(b[15]), .B(a[15]), .C(n128), .Z(n97) );
  GTECH_NAND2 U138 ( .A(a[15]), .B(b[15]), .Z(n128) );
  GTECH_OAI21 U139 ( .A(b[12]), .B(a[12]), .C(n106), .Z(n105) );
  GTECH_NAND2 U140 ( .A(a[12]), .B(b[12]), .Z(n106) );
  GTECH_OA21 U141 ( .A(n120), .B(n117), .C(n118), .Z(n126) );
  GTECH_OA21 U142 ( .A(n130), .B(n108), .C(n131), .Z(n118) );
  GTECH_OA21 U143 ( .A(n132), .B(n110), .C(n111), .Z(n130) );
  GTECH_OA21 U144 ( .A(n113), .B(n69), .C(n112), .Z(n132) );
  GTECH_OR4 U145 ( .A(n71), .B(n108), .C(n110), .D(n69), .Z(n117) );
  GTECH_OAI21 U146 ( .A(b[9]), .B(a[9]), .C(n112), .Z(n69) );
  GTECH_NAND2 U147 ( .A(a[9]), .B(b[9]), .Z(n112) );
  GTECH_OAI21 U148 ( .A(b[10]), .B(a[10]), .C(n111), .Z(n110) );
  GTECH_NAND2 U149 ( .A(a[10]), .B(b[10]), .Z(n111) );
  GTECH_OAI21 U150 ( .A(b[11]), .B(a[11]), .C(n131), .Z(n108) );
  GTECH_NAND2 U151 ( .A(a[11]), .B(b[11]), .Z(n131) );
  GTECH_OAI21 U152 ( .A(b[8]), .B(a[8]), .C(n113), .Z(n71) );
  GTECH_NAND2 U153 ( .A(a[8]), .B(b[8]), .Z(n113) );
  GTECH_AOI222 U154 ( .A(n123), .B(n133), .C(b[7]), .D(a[7]), .E(n134), .F(
        n135), .Z(n120) );
  GTECH_OAI21 U155 ( .A(n136), .B(n76), .C(n77), .Z(n135) );
  GTECH_OA21 U156 ( .A(n79), .B(n83), .C(n80), .Z(n136) );
  GTECH_NOT U157 ( .A(n73), .Z(n134) );
  GTECH_OAI2N2 U158 ( .A(n137), .B(n84), .C(b[3]), .D(a[3]), .Z(n133) );
  GTECH_XNOR2 U159 ( .A(a[3]), .B(b[3]), .Z(n84) );
  GTECH_OA21 U160 ( .A(n138), .B(n87), .C(n88), .Z(n137) );
  GTECH_NOT U161 ( .A(n89), .Z(n87) );
  GTECH_OA21 U162 ( .A(a[2]), .B(b[2]), .C(n88), .Z(n89) );
  GTECH_NAND2 U163 ( .A(a[2]), .B(b[2]), .Z(n88) );
  GTECH_OA21 U164 ( .A(n95), .B(n91), .C(n92), .Z(n138) );
  GTECH_NOT U165 ( .A(n121), .Z(n91) );
  GTECH_OA21 U166 ( .A(a[1]), .B(b[1]), .C(n92), .Z(n121) );
  GTECH_NAND2 U167 ( .A(a[1]), .B(b[1]), .Z(n92) );
  GTECH_NAND2 U168 ( .A(a[0]), .B(b[0]), .Z(n95) );
  GTECH_NOR4 U169 ( .A(n82), .B(n76), .C(n79), .D(n73), .Z(n123) );
  GTECH_XNOR2 U170 ( .A(a[7]), .B(b[7]), .Z(n73) );
  GTECH_OAI21 U171 ( .A(b[5]), .B(a[5]), .C(n80), .Z(n79) );
  GTECH_NAND2 U172 ( .A(a[5]), .B(b[5]), .Z(n80) );
  GTECH_OAI21 U173 ( .A(b[6]), .B(a[6]), .C(n77), .Z(n76) );
  GTECH_NAND2 U174 ( .A(a[6]), .B(b[6]), .Z(n77) );
  GTECH_OAI21 U175 ( .A(b[4]), .B(a[4]), .C(n83), .Z(n82) );
  GTECH_NAND2 U176 ( .A(a[4]), .B(b[4]), .Z(n83) );
endmodule

