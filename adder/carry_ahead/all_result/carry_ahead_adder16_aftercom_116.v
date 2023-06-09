
module carry_ahead_adder16 ( a, b, cin, cout, sum, Gm, Pm );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout, Gm, Pm;
  wire   n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129;

  GTECH_XOR2 U81 ( .A(n62), .B(n63), .Z(sum[9]) );
  GTECH_XOR2 U82 ( .A(n64), .B(n65), .Z(sum[8]) );
  GTECH_XNOR2 U83 ( .A(n66), .B(n67), .Z(sum[7]) );
  GTECH_OA21 U84 ( .A(n68), .B(n69), .C(n70), .Z(n67) );
  GTECH_NOT U85 ( .A(n71), .Z(n69) );
  GTECH_XNOR2 U86 ( .A(n68), .B(n71), .Z(sum[6]) );
  GTECH_AOI21 U87 ( .A(n72), .B(n73), .C(n74), .Z(n68) );
  GTECH_XOR2 U88 ( .A(n73), .B(n72), .Z(sum[5]) );
  GTECH_AO22 U89 ( .A(b[4]), .B(a[4]), .C(n75), .D(n76), .Z(n72) );
  GTECH_XNOR2 U90 ( .A(n76), .B(n77), .Z(sum[4]) );
  GTECH_XNOR2 U91 ( .A(n78), .B(n79), .Z(sum[3]) );
  GTECH_OA21 U92 ( .A(n80), .B(n81), .C(n82), .Z(n79) );
  GTECH_XOR2 U93 ( .A(n81), .B(n80), .Z(sum[2]) );
  GTECH_AOI21 U94 ( .A(n83), .B(n84), .C(n85), .Z(n80) );
  GTECH_NOT U95 ( .A(n86), .Z(n81) );
  GTECH_XOR2 U96 ( .A(n84), .B(n83), .Z(sum[1]) );
  GTECH_AO22 U97 ( .A(a[0]), .B(b[0]), .C(n87), .D(cin), .Z(n83) );
  GTECH_XNOR2 U98 ( .A(n88), .B(n89), .Z(sum[15]) );
  GTECH_OA21 U99 ( .A(n90), .B(n91), .C(n92), .Z(n89) );
  GTECH_XOR2 U100 ( .A(n91), .B(n90), .Z(sum[14]) );
  GTECH_AOI21 U101 ( .A(n93), .B(n94), .C(n95), .Z(n90) );
  GTECH_NOT U102 ( .A(n96), .Z(n91) );
  GTECH_XOR2 U103 ( .A(n94), .B(n93), .Z(sum[13]) );
  GTECH_AO22 U104 ( .A(a[12]), .B(b[12]), .C(cout), .D(n97), .Z(n93) );
  GTECH_XOR2 U105 ( .A(n97), .B(cout), .Z(sum[12]) );
  GTECH_XNOR2 U106 ( .A(n98), .B(n99), .Z(sum[11]) );
  GTECH_OAI21 U107 ( .A(n100), .B(n101), .C(n102), .Z(n98) );
  GTECH_XOR2 U108 ( .A(n101), .B(n100), .Z(sum[10]) );
  GTECH_OA21 U109 ( .A(n63), .B(n62), .C(n103), .Z(n100) );
  GTECH_OA21 U110 ( .A(n65), .B(n64), .C(n104), .Z(n63) );
  GTECH_XOR2 U111 ( .A(cin), .B(n87), .Z(sum[0]) );
  GTECH_OAI21 U112 ( .A(n65), .B(n105), .C(n106), .Z(cout) );
  GTECH_OA21 U113 ( .A(n77), .B(n107), .C(n108), .Z(n65) );
  GTECH_NOT U114 ( .A(n75), .Z(n77) );
  GTECH_OAI21 U115 ( .A(n109), .B(n110), .C(n111), .Z(n75) );
  GTECH_NOT U116 ( .A(cin), .Z(n110) );
  GTECH_NOR3 U117 ( .A(n107), .B(n109), .C(n105), .Z(Pm) );
  GTECH_NAND5 U118 ( .A(n78), .B(n84), .C(n87), .D(n112), .E(n86), .Z(n109) );
  GTECH_XOR2 U119 ( .A(a[0]), .B(b[0]), .Z(n87) );
  GTECH_OAI21 U120 ( .A(n113), .B(n105), .C(n106), .Z(Gm) );
  GTECH_AOI21 U121 ( .A(b[15]), .B(a[15]), .C(n114), .Z(n106) );
  GTECH_OA21 U122 ( .A(n115), .B(n116), .C(n88), .Z(n114) );
  GTECH_NOT U123 ( .A(n92), .Z(n116) );
  GTECH_OA21 U124 ( .A(n117), .B(n95), .C(n96), .Z(n115) );
  GTECH_AND2 U125 ( .A(a[13]), .B(b[13]), .Z(n95) );
  GTECH_AND3 U126 ( .A(a[12]), .B(n94), .C(b[12]), .Z(n117) );
  GTECH_NAND4 U127 ( .A(n96), .B(n97), .C(n88), .D(n94), .Z(n105) );
  GTECH_XOR2 U128 ( .A(a[13]), .B(b[13]), .Z(n94) );
  GTECH_XOR2 U129 ( .A(a[15]), .B(b[15]), .Z(n88) );
  GTECH_XOR2 U130 ( .A(a[12]), .B(b[12]), .Z(n97) );
  GTECH_OA21 U131 ( .A(b[14]), .B(a[14]), .C(n92), .Z(n96) );
  GTECH_NAND2 U132 ( .A(a[14]), .B(b[14]), .Z(n92) );
  GTECH_OA21 U133 ( .A(n111), .B(n107), .C(n108), .Z(n113) );
  GTECH_OA21 U134 ( .A(n118), .B(n99), .C(n119), .Z(n108) );
  GTECH_OA21 U135 ( .A(n120), .B(n101), .C(n102), .Z(n118) );
  GTECH_OA21 U136 ( .A(n104), .B(n62), .C(n103), .Z(n120) );
  GTECH_OR4 U137 ( .A(n64), .B(n99), .C(n101), .D(n62), .Z(n107) );
  GTECH_OAI21 U138 ( .A(b[9]), .B(a[9]), .C(n103), .Z(n62) );
  GTECH_NAND2 U139 ( .A(a[9]), .B(b[9]), .Z(n103) );
  GTECH_OAI21 U140 ( .A(b[10]), .B(a[10]), .C(n102), .Z(n101) );
  GTECH_NAND2 U141 ( .A(a[10]), .B(b[10]), .Z(n102) );
  GTECH_OAI21 U142 ( .A(b[11]), .B(a[11]), .C(n119), .Z(n99) );
  GTECH_NAND2 U143 ( .A(a[11]), .B(b[11]), .Z(n119) );
  GTECH_OAI21 U144 ( .A(b[8]), .B(a[8]), .C(n104), .Z(n64) );
  GTECH_NAND2 U145 ( .A(a[8]), .B(b[8]), .Z(n104) );
  GTECH_AOI222 U146 ( .A(a[7]), .B(b[7]), .C(n112), .D(n121), .E(n66), .F(n122), .Z(n111) );
  GTECH_NAND2 U147 ( .A(n123), .B(n70), .Z(n122) );
  GTECH_OAI21 U148 ( .A(n124), .B(n74), .C(n71), .Z(n123) );
  GTECH_AND2 U149 ( .A(b[5]), .B(a[5]), .Z(n74) );
  GTECH_AND3 U150 ( .A(b[4]), .B(n73), .C(a[4]), .Z(n124) );
  GTECH_NOT U151 ( .A(n125), .Z(n121) );
  GTECH_AOI21 U152 ( .A(b[3]), .B(a[3]), .C(n126), .Z(n125) );
  GTECH_OA21 U153 ( .A(n127), .B(n128), .C(n78), .Z(n126) );
  GTECH_XOR2 U154 ( .A(a[3]), .B(b[3]), .Z(n78) );
  GTECH_NOT U155 ( .A(n82), .Z(n128) );
  GTECH_OA21 U156 ( .A(n129), .B(n85), .C(n86), .Z(n127) );
  GTECH_OA21 U157 ( .A(b[2]), .B(a[2]), .C(n82), .Z(n86) );
  GTECH_NAND2 U158 ( .A(a[2]), .B(b[2]), .Z(n82) );
  GTECH_AND2 U159 ( .A(b[1]), .B(a[1]), .Z(n85) );
  GTECH_AND3 U160 ( .A(a[0]), .B(n84), .C(b[0]), .Z(n129) );
  GTECH_XOR2 U161 ( .A(a[1]), .B(b[1]), .Z(n84) );
  GTECH_AND4 U162 ( .A(n71), .B(n76), .C(n73), .D(n66), .Z(n112) );
  GTECH_XOR2 U163 ( .A(a[7]), .B(b[7]), .Z(n66) );
  GTECH_XOR2 U164 ( .A(a[5]), .B(b[5]), .Z(n73) );
  GTECH_XOR2 U165 ( .A(a[4]), .B(b[4]), .Z(n76) );
  GTECH_OA21 U166 ( .A(a[6]), .B(b[6]), .C(n70), .Z(n71) );
  GTECH_NAND2 U167 ( .A(a[6]), .B(b[6]), .Z(n70) );
endmodule

