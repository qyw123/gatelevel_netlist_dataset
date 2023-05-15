
module carry_ahead_adder16 ( a, b, cin, cout, sum, Gm, Pm );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout, Gm, Pm;
  wire   n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126;

  GTECH_XOR2 U82 ( .A(n63), .B(n64), .Z(sum[9]) );
  GTECH_XOR2 U83 ( .A(n65), .B(n66), .Z(sum[8]) );
  GTECH_XNOR2 U84 ( .A(n67), .B(n68), .Z(sum[7]) );
  GTECH_AOI2N2 U85 ( .A(n69), .B(n70), .C(n71), .D(n72), .Z(n68) );
  GTECH_XOR2 U86 ( .A(n70), .B(n69), .Z(sum[6]) );
  GTECH_AO21 U87 ( .A(n73), .B(n74), .C(n75), .Z(n69) );
  GTECH_XOR2 U88 ( .A(n74), .B(n73), .Z(sum[5]) );
  GTECH_AO22 U89 ( .A(b[4]), .B(a[4]), .C(n76), .D(n77), .Z(n73) );
  GTECH_XOR2 U90 ( .A(n77), .B(n76), .Z(sum[4]) );
  GTECH_XNOR2 U91 ( .A(n78), .B(n79), .Z(sum[3]) );
  GTECH_OAI21 U92 ( .A(n80), .B(n81), .C(n82), .Z(n78) );
  GTECH_XNOR2 U93 ( .A(n83), .B(n80), .Z(sum[2]) );
  GTECH_NOT U94 ( .A(n84), .Z(n80) );
  GTECH_AO21 U95 ( .A(n85), .B(n86), .C(n87), .Z(n84) );
  GTECH_XOR2 U96 ( .A(n86), .B(n85), .Z(sum[1]) );
  GTECH_AO22 U97 ( .A(n88), .B(cin), .C(a[0]), .D(b[0]), .Z(n85) );
  GTECH_XNOR2 U98 ( .A(n89), .B(n90), .Z(sum[15]) );
  GTECH_AOI22 U99 ( .A(b[14]), .B(a[14]), .C(n91), .D(n92), .Z(n90) );
  GTECH_XNOR2 U100 ( .A(n93), .B(n91), .Z(sum[14]) );
  GTECH_AO21 U101 ( .A(n94), .B(n95), .C(n96), .Z(n91) );
  GTECH_XOR2 U102 ( .A(n95), .B(n94), .Z(sum[13]) );
  GTECH_AO22 U103 ( .A(a[12]), .B(b[12]), .C(cout), .D(n97), .Z(n94) );
  GTECH_XOR2 U104 ( .A(n97), .B(cout), .Z(sum[12]) );
  GTECH_XOR2 U105 ( .A(n98), .B(n99), .Z(sum[11]) );
  GTECH_AOI2N2 U106 ( .A(b[10]), .B(a[10]), .C(n100), .D(n101), .Z(n99) );
  GTECH_XOR2 U107 ( .A(n101), .B(n100), .Z(sum[10]) );
  GTECH_AOI2N2 U108 ( .A(b[9]), .B(a[9]), .C(n64), .D(n63), .Z(n100) );
  GTECH_AOI22 U109 ( .A(a[8]), .B(b[8]), .C(n66), .D(n65), .Z(n64) );
  GTECH_NOT U110 ( .A(n102), .Z(n65) );
  GTECH_XOR2 U111 ( .A(cin), .B(n88), .Z(sum[0]) );
  GTECH_AO21 U112 ( .A(n66), .B(n103), .C(n104), .Z(cout) );
  GTECH_AO21 U113 ( .A(n76), .B(n105), .C(n106), .Z(n66) );
  GTECH_AO21 U114 ( .A(n107), .B(cin), .C(n108), .Z(n76) );
  GTECH_AND3 U115 ( .A(n105), .B(n107), .C(n103), .Z(Pm) );
  GTECH_AND5 U116 ( .A(n109), .B(n86), .C(n88), .D(n110), .E(n83), .Z(n107) );
  GTECH_XOR2 U117 ( .A(a[0]), .B(b[0]), .Z(n88) );
  GTECH_NOT U118 ( .A(n79), .Z(n109) );
  GTECH_AO21 U119 ( .A(n103), .B(n111), .C(n104), .Z(Gm) );
  GTECH_AO22 U120 ( .A(b[15]), .B(a[15]), .C(n112), .D(n89), .Z(n104) );
  GTECH_OAI2N2 U121 ( .A(n113), .B(n93), .C(b[14]), .D(a[14]), .Z(n112) );
  GTECH_AND_NOT U122 ( .A(n114), .B(n96), .Z(n113) );
  GTECH_AND2 U123 ( .A(a[13]), .B(b[13]), .Z(n96) );
  GTECH_NAND3 U124 ( .A(a[12]), .B(n95), .C(b[12]), .Z(n114) );
  GTECH_AO21 U125 ( .A(n108), .B(n105), .C(n106), .Z(n111) );
  GTECH_OAI2N2 U126 ( .A(n115), .B(n98), .C(b[11]), .D(a[11]), .Z(n106) );
  GTECH_AOI2N2 U127 ( .A(b[10]), .B(a[10]), .C(n116), .D(n101), .Z(n115) );
  GTECH_AOI22 U128 ( .A(b[9]), .B(a[9]), .C(b[8]), .D(n117), .Z(n116) );
  GTECH_AND_NOT U129 ( .A(a[8]), .B(n63), .Z(n117) );
  GTECH_NOR4 U130 ( .A(n102), .B(n98), .C(n101), .D(n63), .Z(n105) );
  GTECH_XNOR2 U131 ( .A(a[9]), .B(b[9]), .Z(n63) );
  GTECH_XNOR2 U132 ( .A(a[10]), .B(b[10]), .Z(n101) );
  GTECH_XNOR2 U133 ( .A(a[11]), .B(b[11]), .Z(n98) );
  GTECH_XNOR2 U134 ( .A(a[8]), .B(b[8]), .Z(n102) );
  GTECH_NOT U135 ( .A(n118), .Z(n108) );
  GTECH_AOI222 U136 ( .A(a[7]), .B(b[7]), .C(n110), .D(n119), .E(n67), .F(n120), .Z(n118) );
  GTECH_OAI21 U137 ( .A(n71), .B(n72), .C(n121), .Z(n120) );
  GTECH_OAI21 U138 ( .A(n122), .B(n75), .C(n70), .Z(n121) );
  GTECH_AND2 U139 ( .A(b[5]), .B(a[5]), .Z(n75) );
  GTECH_AND3 U140 ( .A(b[4]), .B(n74), .C(a[4]), .Z(n122) );
  GTECH_AO21 U141 ( .A(b[3]), .B(a[3]), .C(n123), .Z(n119) );
  GTECH_NOT U142 ( .A(n124), .Z(n123) );
  GTECH_AO21 U143 ( .A(n82), .B(n125), .C(n79), .Z(n124) );
  GTECH_XNOR2 U144 ( .A(a[3]), .B(b[3]), .Z(n79) );
  GTECH_OAI21 U145 ( .A(n126), .B(n87), .C(n83), .Z(n125) );
  GTECH_NOT U146 ( .A(n81), .Z(n83) );
  GTECH_OAI21 U147 ( .A(b[2]), .B(a[2]), .C(n82), .Z(n81) );
  GTECH_AND2 U148 ( .A(b[1]), .B(a[1]), .Z(n87) );
  GTECH_AND3 U149 ( .A(a[0]), .B(n86), .C(b[0]), .Z(n126) );
  GTECH_XOR2 U150 ( .A(a[1]), .B(b[1]), .Z(n86) );
  GTECH_NAND2 U151 ( .A(a[2]), .B(b[2]), .Z(n82) );
  GTECH_AND4 U152 ( .A(n77), .B(n74), .C(n70), .D(n67), .Z(n110) );
  GTECH_XOR2 U153 ( .A(a[7]), .B(b[7]), .Z(n67) );
  GTECH_XOR2 U154 ( .A(n72), .B(n71), .Z(n70) );
  GTECH_NOT U155 ( .A(b[6]), .Z(n71) );
  GTECH_NOT U156 ( .A(a[6]), .Z(n72) );
  GTECH_XOR2 U157 ( .A(a[5]), .B(b[5]), .Z(n74) );
  GTECH_XOR2 U158 ( .A(a[4]), .B(b[4]), .Z(n77) );
  GTECH_AND4 U159 ( .A(n97), .B(n89), .C(n92), .D(n95), .Z(n103) );
  GTECH_XOR2 U160 ( .A(a[13]), .B(b[13]), .Z(n95) );
  GTECH_NOT U161 ( .A(n93), .Z(n92) );
  GTECH_XNOR2 U162 ( .A(a[14]), .B(b[14]), .Z(n93) );
  GTECH_XOR2 U163 ( .A(a[15]), .B(b[15]), .Z(n89) );
  GTECH_XOR2 U164 ( .A(a[12]), .B(b[12]), .Z(n97) );
endmodule

