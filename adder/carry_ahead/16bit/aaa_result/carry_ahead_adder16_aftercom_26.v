
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
         n115, n116, n117, n118, n119;

  GTECH_XOR2 U82 ( .A(n63), .B(n64), .Z(sum[9]) );
  GTECH_XOR2 U83 ( .A(n65), .B(n66), .Z(sum[8]) );
  GTECH_XNOR2 U84 ( .A(n67), .B(n68), .Z(sum[7]) );
  GTECH_AOI21 U85 ( .A(n69), .B(n70), .C(n71), .Z(n68) );
  GTECH_XOR2 U86 ( .A(n69), .B(n70), .Z(sum[6]) );
  GTECH_AO22 U87 ( .A(b[5]), .B(a[5]), .C(n72), .D(n73), .Z(n70) );
  GTECH_XOR2 U88 ( .A(n73), .B(n72), .Z(sum[5]) );
  GTECH_AO22 U89 ( .A(b[4]), .B(a[4]), .C(n74), .D(n75), .Z(n72) );
  GTECH_XOR2 U90 ( .A(n75), .B(n74), .Z(sum[4]) );
  GTECH_XNOR2 U91 ( .A(n76), .B(n77), .Z(sum[3]) );
  GTECH_AOI2N2 U92 ( .A(b[2]), .B(a[2]), .C(n78), .D(n79), .Z(n77) );
  GTECH_XOR2 U93 ( .A(n79), .B(n78), .Z(sum[2]) );
  GTECH_AOI21 U94 ( .A(n80), .B(n81), .C(n82), .Z(n78) );
  GTECH_XOR2 U95 ( .A(n81), .B(n80), .Z(sum[1]) );
  GTECH_AO22 U96 ( .A(a[0]), .B(b[0]), .C(n83), .D(cin), .Z(n80) );
  GTECH_XNOR2 U97 ( .A(n84), .B(n85), .Z(sum[15]) );
  GTECH_AOI21 U98 ( .A(n86), .B(n87), .C(n88), .Z(n85) );
  GTECH_XOR2 U99 ( .A(n86), .B(n87), .Z(sum[14]) );
  GTECH_AO22 U100 ( .A(b[13]), .B(a[13]), .C(n89), .D(n90), .Z(n87) );
  GTECH_XOR2 U101 ( .A(n90), .B(n89), .Z(sum[13]) );
  GTECH_AO22 U102 ( .A(cout), .B(n91), .C(a[12]), .D(b[12]), .Z(n89) );
  GTECH_XOR2 U103 ( .A(n91), .B(cout), .Z(sum[12]) );
  GTECH_XNOR2 U104 ( .A(n92), .B(n93), .Z(sum[11]) );
  GTECH_AOI21 U105 ( .A(n94), .B(n95), .C(n96), .Z(n93) );
  GTECH_XOR2 U106 ( .A(n95), .B(n94), .Z(sum[10]) );
  GTECH_AO22 U107 ( .A(n64), .B(n63), .C(b[9]), .D(a[9]), .Z(n95) );
  GTECH_AO22 U108 ( .A(a[8]), .B(b[8]), .C(n66), .D(n65), .Z(n64) );
  GTECH_XOR2 U109 ( .A(cin), .B(n83), .Z(sum[0]) );
  GTECH_AO21 U110 ( .A(n66), .B(n97), .C(n98), .Z(cout) );
  GTECH_AO21 U111 ( .A(n74), .B(n99), .C(n100), .Z(n66) );
  GTECH_AO21 U112 ( .A(n101), .B(cin), .C(n102), .Z(n74) );
  GTECH_AND3 U113 ( .A(n99), .B(n101), .C(n97), .Z(Pm) );
  GTECH_AND8 U114 ( .A(n83), .B(n67), .C(n69), .D(n73), .E(n75), .F(n76), .G(
        n103), .H(n81), .Z(n101) );
  GTECH_XOR2 U115 ( .A(a[0]), .B(b[0]), .Z(n83) );
  GTECH_AO21 U116 ( .A(n104), .B(n97), .C(n98), .Z(Gm) );
  GTECH_AO22 U117 ( .A(n105), .B(n84), .C(b[15]), .D(a[15]), .Z(n98) );
  GTECH_AO21 U118 ( .A(n86), .B(n106), .C(n88), .Z(n105) );
  GTECH_AND2 U119 ( .A(b[14]), .B(a[14]), .Z(n88) );
  GTECH_AO21 U120 ( .A(b[13]), .B(a[13]), .C(n107), .Z(n106) );
  GTECH_AND3 U121 ( .A(a[12]), .B(n90), .C(b[12]), .Z(n107) );
  GTECH_AND4 U122 ( .A(n91), .B(n84), .C(n86), .D(n90), .Z(n97) );
  GTECH_XOR2 U123 ( .A(a[13]), .B(b[13]), .Z(n90) );
  GTECH_XOR2 U124 ( .A(a[14]), .B(b[14]), .Z(n86) );
  GTECH_XOR2 U125 ( .A(a[15]), .B(b[15]), .Z(n84) );
  GTECH_XOR2 U126 ( .A(a[12]), .B(b[12]), .Z(n91) );
  GTECH_AO21 U127 ( .A(n99), .B(n102), .C(n100), .Z(n104) );
  GTECH_AO22 U128 ( .A(b[11]), .B(a[11]), .C(n108), .D(n92), .Z(n100) );
  GTECH_AO21 U129 ( .A(n94), .B(n109), .C(n96), .Z(n108) );
  GTECH_AO21 U130 ( .A(b[9]), .B(a[9]), .C(n110), .Z(n109) );
  GTECH_AND3 U131 ( .A(a[8]), .B(n63), .C(b[8]), .Z(n110) );
  GTECH_AO22 U132 ( .A(b[7]), .B(a[7]), .C(n111), .D(n67), .Z(n102) );
  GTECH_XOR2 U133 ( .A(a[7]), .B(b[7]), .Z(n67) );
  GTECH_AO21 U134 ( .A(n69), .B(n112), .C(n71), .Z(n111) );
  GTECH_AND2 U135 ( .A(a[6]), .B(b[6]), .Z(n71) );
  GTECH_AO22 U136 ( .A(n113), .B(n73), .C(b[5]), .D(a[5]), .Z(n112) );
  GTECH_XOR2 U137 ( .A(a[5]), .B(b[5]), .Z(n73) );
  GTECH_AO22 U138 ( .A(b[4]), .B(a[4]), .C(n114), .D(n75), .Z(n113) );
  GTECH_XOR2 U139 ( .A(a[4]), .B(b[4]), .Z(n75) );
  GTECH_AO22 U140 ( .A(b[3]), .B(a[3]), .C(n115), .D(n76), .Z(n114) );
  GTECH_XOR2 U141 ( .A(a[3]), .B(b[3]), .Z(n76) );
  GTECH_OAI2N2 U142 ( .A(n116), .B(n79), .C(b[2]), .D(a[2]), .Z(n115) );
  GTECH_NOT U143 ( .A(n103), .Z(n79) );
  GTECH_XOR2 U144 ( .A(a[2]), .B(b[2]), .Z(n103) );
  GTECH_AND_NOT U145 ( .A(n117), .B(n82), .Z(n116) );
  GTECH_AND2 U146 ( .A(b[1]), .B(a[1]), .Z(n82) );
  GTECH_NAND3 U147 ( .A(a[0]), .B(n81), .C(b[0]), .Z(n117) );
  GTECH_XOR2 U148 ( .A(a[1]), .B(b[1]), .Z(n81) );
  GTECH_XOR2 U149 ( .A(a[6]), .B(b[6]), .Z(n69) );
  GTECH_AND4 U150 ( .A(n94), .B(n65), .C(n92), .D(n63), .Z(n99) );
  GTECH_XOR2 U151 ( .A(a[9]), .B(b[9]), .Z(n63) );
  GTECH_XOR2 U152 ( .A(a[11]), .B(b[11]), .Z(n92) );
  GTECH_XOR2 U153 ( .A(a[8]), .B(b[8]), .Z(n65) );
  GTECH_NOT U154 ( .A(n118), .Z(n94) );
  GTECH_OAI21 U155 ( .A(b[10]), .B(a[10]), .C(n119), .Z(n118) );
  GTECH_NOT U156 ( .A(n96), .Z(n119) );
  GTECH_AND2 U157 ( .A(a[10]), .B(b[10]), .Z(n96) );
endmodule

