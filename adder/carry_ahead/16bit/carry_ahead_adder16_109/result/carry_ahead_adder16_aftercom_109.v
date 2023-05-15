
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
         n131;

  GTECH_XOR2 U88 ( .A(n69), .B(n70), .Z(sum[9]) );
  GTECH_XOR2 U89 ( .A(n71), .B(n72), .Z(sum[8]) );
  GTECH_XNOR2 U90 ( .A(n73), .B(n74), .Z(sum[7]) );
  GTECH_AOI21 U91 ( .A(n75), .B(n76), .C(n77), .Z(n74) );
  GTECH_XOR2 U92 ( .A(n75), .B(n76), .Z(sum[6]) );
  GTECH_AO22 U93 ( .A(n78), .B(n79), .C(b[5]), .D(a[5]), .Z(n75) );
  GTECH_XOR2 U94 ( .A(n79), .B(n78), .Z(sum[5]) );
  GTECH_AO21 U95 ( .A(n80), .B(n81), .C(n82), .Z(n78) );
  GTECH_XOR2 U96 ( .A(n81), .B(n80), .Z(sum[4]) );
  GTECH_XNOR2 U97 ( .A(n83), .B(n84), .Z(sum[3]) );
  GTECH_AOI21 U98 ( .A(n85), .B(n86), .C(n87), .Z(n84) );
  GTECH_XOR2 U99 ( .A(n85), .B(n86), .Z(sum[2]) );
  GTECH_AO22 U100 ( .A(b[1]), .B(a[1]), .C(n88), .D(n89), .Z(n85) );
  GTECH_XOR2 U101 ( .A(n89), .B(n88), .Z(sum[1]) );
  GTECH_AO21 U102 ( .A(cin), .B(n90), .C(n91), .Z(n88) );
  GTECH_XNOR2 U103 ( .A(n92), .B(n93), .Z(sum[15]) );
  GTECH_AOI21 U104 ( .A(n94), .B(n95), .C(n96), .Z(n93) );
  GTECH_XOR2 U105 ( .A(n95), .B(n94), .Z(sum[14]) );
  GTECH_AO22 U106 ( .A(n97), .B(n98), .C(b[13]), .D(a[13]), .Z(n94) );
  GTECH_XOR2 U107 ( .A(n98), .B(n97), .Z(sum[13]) );
  GTECH_AO22 U108 ( .A(a[12]), .B(b[12]), .C(cout), .D(n99), .Z(n97) );
  GTECH_XOR2 U109 ( .A(n99), .B(cout), .Z(sum[12]) );
  GTECH_XNOR2 U110 ( .A(n100), .B(n101), .Z(sum[11]) );
  GTECH_OA21 U111 ( .A(n102), .B(n103), .C(n104), .Z(n101) );
  GTECH_XNOR2 U112 ( .A(n105), .B(n102), .Z(sum[10]) );
  GTECH_AOI21 U113 ( .A(n69), .B(n70), .C(n106), .Z(n102) );
  GTECH_NOT U114 ( .A(n107), .Z(n106) );
  GTECH_AO22 U115 ( .A(a[8]), .B(b[8]), .C(n72), .D(n71), .Z(n70) );
  GTECH_XOR2 U116 ( .A(cin), .B(n90), .Z(sum[0]) );
  GTECH_AO21 U117 ( .A(n108), .B(n72), .C(n109), .Z(cout) );
  GTECH_AO21 U118 ( .A(n110), .B(n81), .C(n111), .Z(n72) );
  GTECH_AO21 U119 ( .A(cin), .B(n112), .C(n113), .Z(n81) );
  GTECH_AND3 U120 ( .A(n110), .B(n112), .C(n108), .Z(Pm) );
  GTECH_AND5 U121 ( .A(n83), .B(n89), .C(n86), .D(n90), .E(n114), .Z(n112) );
  GTECH_OA21 U122 ( .A(b[0]), .B(a[0]), .C(n115), .Z(n90) );
  GTECH_NOT U123 ( .A(n91), .Z(n115) );
  GTECH_AO21 U124 ( .A(n108), .B(n116), .C(n109), .Z(Gm) );
  GTECH_AO22 U125 ( .A(b[15]), .B(a[15]), .C(n117), .D(n92), .Z(n109) );
  GTECH_AO21 U126 ( .A(n118), .B(n95), .C(n96), .Z(n117) );
  GTECH_AND2 U127 ( .A(a[14]), .B(b[14]), .Z(n96) );
  GTECH_AO21 U128 ( .A(b[13]), .B(a[13]), .C(n119), .Z(n118) );
  GTECH_AND3 U129 ( .A(a[12]), .B(n98), .C(b[12]), .Z(n119) );
  GTECH_AO21 U130 ( .A(n110), .B(n113), .C(n111), .Z(n116) );
  GTECH_AO22 U131 ( .A(b[11]), .B(a[11]), .C(n120), .D(n100), .Z(n111) );
  GTECH_NAND2 U132 ( .A(n104), .B(n121), .Z(n120) );
  GTECH_AO21 U133 ( .A(n107), .B(n122), .C(n103), .Z(n121) );
  GTECH_NOT U134 ( .A(n105), .Z(n103) );
  GTECH_NAND3 U135 ( .A(a[8]), .B(n69), .C(b[8]), .Z(n122) );
  GTECH_NAND2 U136 ( .A(a[9]), .B(b[9]), .Z(n107) );
  GTECH_NOT U137 ( .A(n123), .Z(n113) );
  GTECH_AOI222 U138 ( .A(a[7]), .B(b[7]), .C(n114), .D(n124), .E(n73), .F(n125), .Z(n123) );
  GTECH_AO21 U139 ( .A(n76), .B(n126), .C(n77), .Z(n125) );
  GTECH_AO22 U140 ( .A(n79), .B(n82), .C(b[5]), .D(a[5]), .Z(n126) );
  GTECH_AO22 U141 ( .A(b[3]), .B(a[3]), .C(n127), .D(n83), .Z(n124) );
  GTECH_XOR2 U142 ( .A(a[3]), .B(b[3]), .Z(n83) );
  GTECH_AO21 U143 ( .A(n128), .B(n86), .C(n87), .Z(n127) );
  GTECH_OA21 U144 ( .A(b[2]), .B(a[2]), .C(n129), .Z(n86) );
  GTECH_NOT U145 ( .A(n87), .Z(n129) );
  GTECH_AND2 U146 ( .A(b[2]), .B(a[2]), .Z(n87) );
  GTECH_AO22 U147 ( .A(n89), .B(n91), .C(b[1]), .D(a[1]), .Z(n128) );
  GTECH_AND2 U148 ( .A(a[0]), .B(b[0]), .Z(n91) );
  GTECH_XOR2 U149 ( .A(a[1]), .B(b[1]), .Z(n89) );
  GTECH_AND4 U150 ( .A(n80), .B(n76), .C(n79), .D(n73), .Z(n114) );
  GTECH_XOR2 U151 ( .A(a[7]), .B(b[7]), .Z(n73) );
  GTECH_XOR2 U152 ( .A(a[5]), .B(b[5]), .Z(n79) );
  GTECH_OA21 U153 ( .A(b[6]), .B(a[6]), .C(n130), .Z(n76) );
  GTECH_NOT U154 ( .A(n77), .Z(n130) );
  GTECH_AND2 U155 ( .A(b[6]), .B(a[6]), .Z(n77) );
  GTECH_OA21 U156 ( .A(b[4]), .B(a[4]), .C(n131), .Z(n80) );
  GTECH_NOT U157 ( .A(n82), .Z(n131) );
  GTECH_AND2 U158 ( .A(a[4]), .B(b[4]), .Z(n82) );
  GTECH_AND4 U159 ( .A(n105), .B(n71), .C(n100), .D(n69), .Z(n110) );
  GTECH_XOR2 U160 ( .A(a[9]), .B(b[9]), .Z(n69) );
  GTECH_XOR2 U161 ( .A(a[11]), .B(b[11]), .Z(n100) );
  GTECH_XOR2 U162 ( .A(a[8]), .B(b[8]), .Z(n71) );
  GTECH_OA21 U163 ( .A(a[10]), .B(b[10]), .C(n104), .Z(n105) );
  GTECH_NAND2 U164 ( .A(a[10]), .B(b[10]), .Z(n104) );
  GTECH_AND4 U165 ( .A(n99), .B(n92), .C(n95), .D(n98), .Z(n108) );
  GTECH_XOR2 U166 ( .A(a[13]), .B(b[13]), .Z(n98) );
  GTECH_XOR2 U167 ( .A(a[14]), .B(b[14]), .Z(n95) );
  GTECH_XOR2 U168 ( .A(a[15]), .B(b[15]), .Z(n92) );
  GTECH_XOR2 U169 ( .A(a[12]), .B(b[12]), .Z(n99) );
endmodule

