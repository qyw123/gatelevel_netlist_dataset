
module carry_ahead_adder16 ( a, b, cin, cout, sum, Gm, Pm );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout, Gm, Pm;
  wire   n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118;

  GTECH_XOR2 U79 ( .A(n60), .B(n61), .Z(sum[9]) );
  GTECH_XOR2 U80 ( .A(n62), .B(n63), .Z(sum[8]) );
  GTECH_XNOR2 U81 ( .A(n64), .B(n65), .Z(sum[7]) );
  GTECH_AOI21 U82 ( .A(n66), .B(n67), .C(n68), .Z(n65) );
  GTECH_XOR2 U83 ( .A(n67), .B(n66), .Z(sum[6]) );
  GTECH_AO22 U84 ( .A(b[5]), .B(a[5]), .C(n69), .D(n70), .Z(n66) );
  GTECH_XOR2 U85 ( .A(n70), .B(n69), .Z(sum[5]) );
  GTECH_AO22 U86 ( .A(n71), .B(n72), .C(b[4]), .D(a[4]), .Z(n69) );
  GTECH_XOR2 U87 ( .A(n72), .B(n71), .Z(sum[4]) );
  GTECH_XNOR2 U88 ( .A(n73), .B(n74), .Z(sum[3]) );
  GTECH_AOI21 U89 ( .A(n75), .B(n76), .C(n77), .Z(n74) );
  GTECH_XNOR2 U90 ( .A(n78), .B(n75), .Z(sum[2]) );
  GTECH_AO21 U91 ( .A(n79), .B(n80), .C(n81), .Z(n75) );
  GTECH_NOT U92 ( .A(n82), .Z(n81) );
  GTECH_XOR2 U93 ( .A(n79), .B(n80), .Z(sum[1]) );
  GTECH_AO22 U94 ( .A(n83), .B(cin), .C(a[0]), .D(b[0]), .Z(n80) );
  GTECH_XNOR2 U95 ( .A(n84), .B(n85), .Z(sum[15]) );
  GTECH_AOI21 U96 ( .A(n86), .B(n87), .C(n88), .Z(n85) );
  GTECH_XOR2 U97 ( .A(n87), .B(n86), .Z(sum[14]) );
  GTECH_AO22 U98 ( .A(n89), .B(n90), .C(b[13]), .D(a[13]), .Z(n86) );
  GTECH_XOR2 U99 ( .A(n90), .B(n89), .Z(sum[13]) );
  GTECH_AO22 U100 ( .A(a[12]), .B(b[12]), .C(cout), .D(n91), .Z(n89) );
  GTECH_XOR2 U101 ( .A(n91), .B(cout), .Z(sum[12]) );
  GTECH_XNOR2 U102 ( .A(n92), .B(n93), .Z(sum[11]) );
  GTECH_AOI21 U103 ( .A(n94), .B(n95), .C(n96), .Z(n93) );
  GTECH_XOR2 U104 ( .A(n95), .B(n94), .Z(sum[10]) );
  GTECH_AO22 U105 ( .A(n61), .B(n60), .C(b[9]), .D(a[9]), .Z(n94) );
  GTECH_AO22 U106 ( .A(a[8]), .B(b[8]), .C(n63), .D(n62), .Z(n61) );
  GTECH_XOR2 U107 ( .A(cin), .B(n83), .Z(sum[0]) );
  GTECH_AO21 U108 ( .A(n97), .B(n63), .C(n98), .Z(cout) );
  GTECH_AO21 U109 ( .A(n99), .B(n71), .C(n100), .Z(n63) );
  GTECH_AO21 U110 ( .A(cin), .B(n101), .C(n102), .Z(n71) );
  GTECH_AND3 U111 ( .A(n99), .B(n101), .C(n97), .Z(Pm) );
  GTECH_AND5 U112 ( .A(n76), .B(n79), .C(n73), .D(n103), .E(n83), .Z(n101) );
  GTECH_XOR2 U113 ( .A(a[0]), .B(b[0]), .Z(n83) );
  GTECH_AO21 U114 ( .A(n97), .B(n104), .C(n98), .Z(Gm) );
  GTECH_AO22 U115 ( .A(b[15]), .B(a[15]), .C(n105), .D(n84), .Z(n98) );
  GTECH_AO21 U116 ( .A(n106), .B(n87), .C(n88), .Z(n105) );
  GTECH_AND2 U117 ( .A(a[14]), .B(b[14]), .Z(n88) );
  GTECH_AO21 U118 ( .A(b[13]), .B(a[13]), .C(n107), .Z(n106) );
  GTECH_AND3 U119 ( .A(a[12]), .B(n90), .C(b[12]), .Z(n107) );
  GTECH_AO21 U120 ( .A(n99), .B(n102), .C(n100), .Z(n104) );
  GTECH_AO22 U121 ( .A(b[11]), .B(a[11]), .C(n108), .D(n92), .Z(n100) );
  GTECH_AO21 U122 ( .A(n109), .B(n95), .C(n96), .Z(n108) );
  GTECH_AND2 U123 ( .A(b[10]), .B(a[10]), .Z(n96) );
  GTECH_AO21 U124 ( .A(b[9]), .B(a[9]), .C(n110), .Z(n109) );
  GTECH_AND3 U125 ( .A(a[8]), .B(n60), .C(b[8]), .Z(n110) );
  GTECH_NOT U126 ( .A(n111), .Z(n102) );
  GTECH_AOI222 U127 ( .A(a[7]), .B(b[7]), .C(n103), .D(n112), .E(n64), .F(n113), .Z(n111) );
  GTECH_AO21 U128 ( .A(n67), .B(n114), .C(n68), .Z(n113) );
  GTECH_AND2 U129 ( .A(b[6]), .B(a[6]), .Z(n68) );
  GTECH_AO22 U130 ( .A(a[4]), .B(n115), .C(b[5]), .D(a[5]), .Z(n114) );
  GTECH_AND2 U131 ( .A(n70), .B(b[4]), .Z(n115) );
  GTECH_AO22 U132 ( .A(n116), .B(n73), .C(b[3]), .D(a[3]), .Z(n112) );
  GTECH_XOR2 U133 ( .A(a[3]), .B(b[3]), .Z(n73) );
  GTECH_OR_NOT U134 ( .A(n77), .B(n117), .Z(n116) );
  GTECH_AO21 U135 ( .A(n82), .B(n118), .C(n78), .Z(n117) );
  GTECH_NOT U136 ( .A(n76), .Z(n78) );
  GTECH_XOR2 U137 ( .A(a[2]), .B(b[2]), .Z(n76) );
  GTECH_NAND3 U138 ( .A(a[0]), .B(n79), .C(b[0]), .Z(n118) );
  GTECH_XOR2 U139 ( .A(a[1]), .B(b[1]), .Z(n79) );
  GTECH_NAND2 U140 ( .A(a[1]), .B(b[1]), .Z(n82) );
  GTECH_AND2 U141 ( .A(a[2]), .B(b[2]), .Z(n77) );
  GTECH_AND4 U142 ( .A(n72), .B(n70), .C(n67), .D(n64), .Z(n103) );
  GTECH_XOR2 U143 ( .A(a[7]), .B(b[7]), .Z(n64) );
  GTECH_XOR2 U144 ( .A(a[6]), .B(b[6]), .Z(n67) );
  GTECH_XOR2 U145 ( .A(a[5]), .B(b[5]), .Z(n70) );
  GTECH_XOR2 U146 ( .A(a[4]), .B(b[4]), .Z(n72) );
  GTECH_AND4 U147 ( .A(n62), .B(n92), .C(n95), .D(n60), .Z(n99) );
  GTECH_XOR2 U148 ( .A(a[9]), .B(b[9]), .Z(n60) );
  GTECH_XOR2 U149 ( .A(a[10]), .B(b[10]), .Z(n95) );
  GTECH_XOR2 U150 ( .A(a[11]), .B(b[11]), .Z(n92) );
  GTECH_XOR2 U151 ( .A(a[8]), .B(b[8]), .Z(n62) );
  GTECH_AND4 U152 ( .A(n91), .B(n84), .C(n87), .D(n90), .Z(n97) );
  GTECH_XOR2 U153 ( .A(a[13]), .B(b[13]), .Z(n90) );
  GTECH_XOR2 U154 ( .A(a[14]), .B(b[14]), .Z(n87) );
  GTECH_XOR2 U155 ( .A(a[15]), .B(b[15]), .Z(n84) );
  GTECH_XOR2 U156 ( .A(a[12]), .B(b[12]), .Z(n91) );
endmodule

