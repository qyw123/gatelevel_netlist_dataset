
module bcd_counter ( clk, reset, ena, q );
  output [3:1] ena;
  output [15:0] q;
  input clk, reset;
  wire   N10, N11, N12, N13, N22, N23, N24, N25, N26, N38, N39, N40, N41, N42,
         N54, N55, N56, N57, N58, n46, n58, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125;

  GTECH_FD2 ones_reg_0_ ( .D(N10), .CP(clk), .CD(n58), .Q(q[0]) );
  GTECH_FD2 ones_reg_2_ ( .D(N12), .CP(clk), .CD(n58), .Q(q[2]) );
  GTECH_FD2 ones_reg_3_ ( .D(N13), .CP(clk), .CD(n58), .Q(q[3]) );
  GTECH_FD2 ones_reg_1_ ( .D(N11), .CP(clk), .CD(n58), .Q(q[1]) );
  GTECH_FJK1S tens_reg_0_ ( .J(n46), .K(n46), .TI(N22), .TE(N25), .CP(clk), 
        .Q(q[4]) );
  GTECH_FJK1S tens_reg_2_ ( .J(n46), .K(n46), .TI(N24), .TE(N25), .CP(clk), 
        .Q(q[6]) );
  GTECH_FJK1S tens_reg_3_ ( .J(n46), .K(n46), .TI(N26), .TE(N25), .CP(clk), 
        .Q(q[7]) );
  GTECH_FJK1S tens_reg_1_ ( .J(n46), .K(n46), .TI(N23), .TE(N25), .CP(clk), 
        .Q(q[5]) );
  GTECH_FJK1S hundreds_reg_0_ ( .J(n46), .K(n46), .TI(N38), .TE(N41), .CP(clk), 
        .Q(q[8]) );
  GTECH_FJK1S hundreds_reg_2_ ( .J(n46), .K(n46), .TI(N40), .TE(N41), .CP(clk), 
        .Q(q[10]) );
  GTECH_FJK1S hundreds_reg_3_ ( .J(n46), .K(n46), .TI(N42), .TE(N41), .CP(clk), 
        .Q(q[11]) );
  GTECH_FJK1S hundreds_reg_1_ ( .J(n46), .K(n46), .TI(N39), .TE(N41), .CP(clk), 
        .Q(q[9]) );
  GTECH_FJK1S thousands_reg_0_ ( .J(n46), .K(n46), .TI(N54), .TE(N57), .CP(clk), .Q(q[12]) );
  GTECH_FJK1S thousands_reg_2_ ( .J(n46), .K(n46), .TI(N56), .TE(N57), .CP(clk), .Q(q[14]) );
  GTECH_FJK1S thousands_reg_3_ ( .J(n46), .K(n46), .TI(N58), .TE(N57), .CP(clk), .Q(q[15]) );
  GTECH_FJK1S thousands_reg_1_ ( .J(n46), .K(n46), .TI(N55), .TE(N57), .CP(clk), .Q(q[13]) );
  GTECH_ONE U81 ( .Z(n58) );
  GTECH_ZERO U82 ( .Z(n46) );
  GTECH_MUX2 U83 ( .A(n74), .B(n75), .S(q[15]), .Z(N58) );
  GTECH_OAI21 U84 ( .A(q[14]), .B(n76), .C(n77), .Z(n75) );
  GTECH_NOT U85 ( .A(n78), .Z(n77) );
  GTECH_AND2 U86 ( .A(q[14]), .B(n79), .Z(n74) );
  GTECH_MUX2 U87 ( .A(n79), .B(n78), .S(q[14]), .Z(N56) );
  GTECH_OAI21 U88 ( .A(q[13]), .B(n76), .C(n80), .Z(n78) );
  GTECH_NOT U89 ( .A(n81), .Z(n79) );
  GTECH_NAND3 U90 ( .A(n82), .B(q[12]), .C(q[13]), .Z(n81) );
  GTECH_MUX2 U91 ( .A(n83), .B(N54), .S(q[13]), .Z(N55) );
  GTECH_AND2 U92 ( .A(n82), .B(q[12]), .Z(n83) );
  GTECH_NOT U93 ( .A(n80), .Z(N54) );
  GTECH_OR_NOT U94 ( .A(q[12]), .B(n82), .Z(n80) );
  GTECH_NOT U95 ( .A(n76), .Z(n82) );
  GTECH_NAND3 U96 ( .A(n84), .B(ena[3]), .C(n85), .Z(n76) );
  GTECH_NAND3 U97 ( .A(q[15]), .B(q[12]), .C(n86), .Z(n85) );
  GTECH_NOR2 U98 ( .A(q[13]), .B(q[14]), .Z(n86) );
  GTECH_MUX2 U99 ( .A(n87), .B(n88), .S(q[11]), .Z(N42) );
  GTECH_OAI21 U100 ( .A(q[10]), .B(n89), .C(n90), .Z(n88) );
  GTECH_NOT U101 ( .A(n91), .Z(n90) );
  GTECH_AND2 U102 ( .A(q[10]), .B(n92), .Z(n87) );
  GTECH_OR_NOT U103 ( .A(N57), .B(n89), .Z(N41) );
  GTECH_MUX2 U104 ( .A(n92), .B(n91), .S(q[10]), .Z(N40) );
  GTECH_OAI21 U105 ( .A(q[9]), .B(n89), .C(n93), .Z(n91) );
  GTECH_NOT U106 ( .A(n94), .Z(n92) );
  GTECH_NAND3 U107 ( .A(n95), .B(q[8]), .C(q[9]), .Z(n94) );
  GTECH_MUX2 U108 ( .A(n96), .B(N38), .S(q[9]), .Z(N39) );
  GTECH_AND2 U109 ( .A(n95), .B(q[8]), .Z(n96) );
  GTECH_NOT U110 ( .A(n93), .Z(N38) );
  GTECH_OR_NOT U111 ( .A(q[8]), .B(n95), .Z(n93) );
  GTECH_NOT U112 ( .A(n89), .Z(n95) );
  GTECH_OR_NOT U113 ( .A(N57), .B(ena[2]), .Z(n89) );
  GTECH_OR_NOT U114 ( .A(ena[3]), .B(n84), .Z(N57) );
  GTECH_NOT U115 ( .A(n97), .Z(ena[3]) );
  GTECH_NAND5 U116 ( .A(n98), .B(n99), .C(ena[2]), .D(q[8]), .E(q[11]), .Z(n97) );
  GTECH_NOT U117 ( .A(n100), .Z(ena[2]) );
  GTECH_NOT U118 ( .A(q[9]), .Z(n99) );
  GTECH_NOT U119 ( .A(q[10]), .Z(n98) );
  GTECH_MUX2 U120 ( .A(n101), .B(n102), .S(q[7]), .Z(N26) );
  GTECH_OAI21 U121 ( .A(q[6]), .B(n103), .C(n104), .Z(n102) );
  GTECH_NOT U122 ( .A(n105), .Z(n104) );
  GTECH_AND2 U123 ( .A(q[6]), .B(n106), .Z(n101) );
  GTECH_NAND3 U124 ( .A(n100), .B(n84), .C(n103), .Z(N25) );
  GTECH_MUX2 U125 ( .A(n106), .B(n105), .S(q[6]), .Z(N24) );
  GTECH_OAI21 U126 ( .A(q[5]), .B(n103), .C(n107), .Z(n105) );
  GTECH_NOT U127 ( .A(n108), .Z(n106) );
  GTECH_NAND3 U128 ( .A(n109), .B(q[4]), .C(q[5]), .Z(n108) );
  GTECH_MUX2 U129 ( .A(n110), .B(N22), .S(q[5]), .Z(N23) );
  GTECH_AND2 U130 ( .A(n109), .B(q[4]), .Z(n110) );
  GTECH_NOT U131 ( .A(n107), .Z(N22) );
  GTECH_OR_NOT U132 ( .A(q[4]), .B(n109), .Z(n107) );
  GTECH_NOT U133 ( .A(n103), .Z(n109) );
  GTECH_NAND3 U134 ( .A(n100), .B(n84), .C(ena[1]), .Z(n103) );
  GTECH_NOT U135 ( .A(reset), .Z(n84) );
  GTECH_NAND5 U136 ( .A(n111), .B(n112), .C(ena[1]), .D(q[7]), .E(q[4]), .Z(
        n100) );
  GTECH_NOT U137 ( .A(n113), .Z(ena[1]) );
  GTECH_NOT U138 ( .A(q[6]), .Z(n112) );
  GTECH_NOT U139 ( .A(q[5]), .Z(n111) );
  GTECH_MUX2 U140 ( .A(n114), .B(n115), .S(q[3]), .Z(N13) );
  GTECH_OAI21 U141 ( .A(q[2]), .B(n116), .C(n117), .Z(n115) );
  GTECH_NOT U142 ( .A(n118), .Z(n117) );
  GTECH_AND2 U143 ( .A(q[2]), .B(n119), .Z(n114) );
  GTECH_MUX2 U144 ( .A(n119), .B(n118), .S(q[2]), .Z(N12) );
  GTECH_OAI21 U145 ( .A(q[1]), .B(n116), .C(n120), .Z(n118) );
  GTECH_NOT U146 ( .A(n121), .Z(n119) );
  GTECH_NAND3 U147 ( .A(n122), .B(q[0]), .C(q[1]), .Z(n121) );
  GTECH_MUX2 U148 ( .A(n123), .B(N10), .S(q[1]), .Z(N11) );
  GTECH_AND2 U149 ( .A(n122), .B(q[0]), .Z(n123) );
  GTECH_NOT U150 ( .A(n120), .Z(N10) );
  GTECH_OR_NOT U151 ( .A(q[0]), .B(n122), .Z(n120) );
  GTECH_NOT U152 ( .A(n116), .Z(n122) );
  GTECH_OR_NOT U153 ( .A(reset), .B(n113), .Z(n116) );
  GTECH_NAND4 U154 ( .A(q[3]), .B(q[0]), .C(n124), .D(n125), .Z(n113) );
  GTECH_NOT U155 ( .A(q[2]), .Z(n125) );
  GTECH_NOT U156 ( .A(q[1]), .Z(n124) );
endmodule

