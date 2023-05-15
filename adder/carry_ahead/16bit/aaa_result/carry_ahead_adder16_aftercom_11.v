
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
         n125;

  GTECH_XOR2 U81 ( .A(n62), .B(n63), .Z(sum[9]) );
  GTECH_XOR2 U82 ( .A(n64), .B(n65), .Z(sum[8]) );
  GTECH_XNOR2 U83 ( .A(n66), .B(n67), .Z(sum[7]) );
  GTECH_AOI21 U84 ( .A(n68), .B(n69), .C(n70), .Z(n67) );
  GTECH_XOR2 U85 ( .A(n69), .B(n68), .Z(sum[6]) );
  GTECH_AO22 U86 ( .A(b[5]), .B(a[5]), .C(n71), .D(n72), .Z(n68) );
  GTECH_XOR2 U87 ( .A(n72), .B(n71), .Z(sum[5]) );
  GTECH_AO22 U88 ( .A(n73), .B(n74), .C(b[4]), .D(a[4]), .Z(n71) );
  GTECH_XOR2 U89 ( .A(n74), .B(n73), .Z(sum[4]) );
  GTECH_XNOR2 U90 ( .A(n75), .B(n76), .Z(sum[3]) );
  GTECH_AOI21 U91 ( .A(n77), .B(n78), .C(n79), .Z(n76) );
  GTECH_XNOR2 U92 ( .A(n80), .B(n77), .Z(sum[2]) );
  GTECH_AO21 U93 ( .A(n81), .B(n82), .C(n83), .Z(n77) );
  GTECH_NOT U94 ( .A(n84), .Z(n83) );
  GTECH_XOR2 U95 ( .A(n81), .B(n82), .Z(sum[1]) );
  GTECH_AO22 U96 ( .A(n85), .B(cin), .C(a[0]), .D(b[0]), .Z(n82) );
  GTECH_XNOR2 U97 ( .A(n86), .B(n87), .Z(sum[15]) );
  GTECH_AOI21 U98 ( .A(n88), .B(n89), .C(n90), .Z(n87) );
  GTECH_XOR2 U99 ( .A(n89), .B(n88), .Z(sum[14]) );
  GTECH_AO22 U100 ( .A(n91), .B(n92), .C(b[13]), .D(a[13]), .Z(n88) );
  GTECH_XOR2 U101 ( .A(n92), .B(n91), .Z(sum[13]) );
  GTECH_AO22 U102 ( .A(a[12]), .B(b[12]), .C(cout), .D(n93), .Z(n91) );
  GTECH_XOR2 U103 ( .A(n93), .B(cout), .Z(sum[12]) );
  GTECH_XOR2 U104 ( .A(n94), .B(n95), .Z(sum[11]) );
  GTECH_OA21 U105 ( .A(n96), .B(n97), .C(n98), .Z(n95) );
  GTECH_XNOR2 U106 ( .A(n99), .B(n96), .Z(sum[10]) );
  GTECH_AOI21 U107 ( .A(n62), .B(n63), .C(n100), .Z(n96) );
  GTECH_AO21 U108 ( .A(n64), .B(n65), .C(n101), .Z(n63) );
  GTECH_XOR2 U109 ( .A(cin), .B(n85), .Z(sum[0]) );
  GTECH_AO21 U110 ( .A(n102), .B(n65), .C(n103), .Z(cout) );
  GTECH_AO21 U111 ( .A(n104), .B(n73), .C(n105), .Z(n65) );
  GTECH_AO21 U112 ( .A(cin), .B(n106), .C(n107), .Z(n73) );
  GTECH_AND3 U113 ( .A(n104), .B(n106), .C(n102), .Z(Pm) );
  GTECH_AND5 U114 ( .A(n78), .B(n81), .C(n75), .D(n108), .E(n85), .Z(n106) );
  GTECH_XOR2 U115 ( .A(a[0]), .B(b[0]), .Z(n85) );
  GTECH_AO21 U116 ( .A(n102), .B(n109), .C(n103), .Z(Gm) );
  GTECH_AO22 U117 ( .A(b[15]), .B(a[15]), .C(n110), .D(n86), .Z(n103) );
  GTECH_AO21 U118 ( .A(n111), .B(n89), .C(n90), .Z(n110) );
  GTECH_AND2 U119 ( .A(a[14]), .B(b[14]), .Z(n90) );
  GTECH_AO21 U120 ( .A(b[13]), .B(a[13]), .C(n112), .Z(n111) );
  GTECH_AND3 U121 ( .A(a[12]), .B(n92), .C(b[12]), .Z(n112) );
  GTECH_AO21 U122 ( .A(n104), .B(n107), .C(n105), .Z(n109) );
  GTECH_OAI2N2 U123 ( .A(n113), .B(n94), .C(b[11]), .D(a[11]), .Z(n105) );
  GTECH_OA21 U124 ( .A(n114), .B(n97), .C(n98), .Z(n113) );
  GTECH_AOI21 U125 ( .A(n62), .B(n101), .C(n100), .Z(n114) );
  GTECH_AND2 U126 ( .A(a[9]), .B(b[9]), .Z(n100) );
  GTECH_NOT U127 ( .A(n115), .Z(n107) );
  GTECH_AOI222 U128 ( .A(a[7]), .B(b[7]), .C(n108), .D(n116), .E(n66), .F(n117), .Z(n115) );
  GTECH_AO21 U129 ( .A(n69), .B(n118), .C(n70), .Z(n117) );
  GTECH_AND2 U130 ( .A(b[6]), .B(a[6]), .Z(n70) );
  GTECH_AO22 U131 ( .A(a[4]), .B(n119), .C(b[5]), .D(a[5]), .Z(n118) );
  GTECH_AND2 U132 ( .A(n72), .B(b[4]), .Z(n119) );
  GTECH_AO22 U133 ( .A(n120), .B(n75), .C(b[3]), .D(a[3]), .Z(n116) );
  GTECH_XOR2 U134 ( .A(a[3]), .B(b[3]), .Z(n75) );
  GTECH_OR_NOT U135 ( .A(n79), .B(n121), .Z(n120) );
  GTECH_AO21 U136 ( .A(n84), .B(n122), .C(n80), .Z(n121) );
  GTECH_NOT U137 ( .A(n78), .Z(n80) );
  GTECH_XOR2 U138 ( .A(a[2]), .B(b[2]), .Z(n78) );
  GTECH_NAND3 U139 ( .A(a[0]), .B(n81), .C(b[0]), .Z(n122) );
  GTECH_XOR2 U140 ( .A(a[1]), .B(b[1]), .Z(n81) );
  GTECH_NAND2 U141 ( .A(a[1]), .B(b[1]), .Z(n84) );
  GTECH_AND2 U142 ( .A(a[2]), .B(b[2]), .Z(n79) );
  GTECH_AND4 U143 ( .A(n74), .B(n72), .C(n69), .D(n66), .Z(n108) );
  GTECH_XOR2 U144 ( .A(a[7]), .B(b[7]), .Z(n66) );
  GTECH_XOR2 U145 ( .A(a[6]), .B(b[6]), .Z(n69) );
  GTECH_XOR2 U146 ( .A(a[5]), .B(b[5]), .Z(n72) );
  GTECH_XOR2 U147 ( .A(a[4]), .B(b[4]), .Z(n74) );
  GTECH_NOR4 U148 ( .A(n123), .B(n97), .C(n94), .D(n124), .Z(n104) );
  GTECH_NOT U149 ( .A(n62), .Z(n124) );
  GTECH_XOR2 U150 ( .A(a[9]), .B(b[9]), .Z(n62) );
  GTECH_XNOR2 U151 ( .A(a[11]), .B(b[11]), .Z(n94) );
  GTECH_NOT U152 ( .A(n99), .Z(n97) );
  GTECH_OA21 U153 ( .A(a[10]), .B(b[10]), .C(n98), .Z(n99) );
  GTECH_NAND2 U154 ( .A(b[10]), .B(a[10]), .Z(n98) );
  GTECH_NOT U155 ( .A(n64), .Z(n123) );
  GTECH_OA21 U156 ( .A(a[8]), .B(b[8]), .C(n125), .Z(n64) );
  GTECH_NOT U157 ( .A(n101), .Z(n125) );
  GTECH_AND2 U158 ( .A(b[8]), .B(a[8]), .Z(n101) );
  GTECH_AND4 U159 ( .A(n93), .B(n86), .C(n89), .D(n92), .Z(n102) );
  GTECH_XOR2 U160 ( .A(a[13]), .B(b[13]), .Z(n92) );
  GTECH_XOR2 U161 ( .A(a[14]), .B(b[14]), .Z(n89) );
  GTECH_XOR2 U162 ( .A(a[15]), .B(b[15]), .Z(n86) );
  GTECH_XOR2 U163 ( .A(a[12]), .B(b[12]), .Z(n93) );
endmodule

