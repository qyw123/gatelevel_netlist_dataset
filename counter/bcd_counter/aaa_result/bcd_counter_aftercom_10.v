
module bcd_counter ( clk, reset, ena, q );
  output [3:1] ena;
  output [15:0] q;
  input clk, reset;
  wire   N10, N11, N12, N13, N22, N23, N24, N25, N26, N38, N39, N40, N41, N42,
         N54, N55, N56, N57, N58, n46, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121;

  GTECH_FD1 ones_reg_0_ ( .D(N10), .CP(clk), .Q(q[0]) );
  GTECH_FD1 ones_reg_2_ ( .D(N12), .CP(clk), .Q(q[2]) );
  GTECH_FD1 ones_reg_3_ ( .D(N13), .CP(clk), .Q(q[3]) );
  GTECH_FD1 ones_reg_1_ ( .D(N11), .CP(clk), .Q(q[1]) );
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
  GTECH_ZERO U77 ( .Z(n46) );
  GTECH_MUX2 U78 ( .A(n70), .B(n71), .S(q[15]), .Z(N58) );
  GTECH_OAI21 U79 ( .A(q[14]), .B(n72), .C(n73), .Z(n71) );
  GTECH_NOT U80 ( .A(n74), .Z(n73) );
  GTECH_AND2 U81 ( .A(q[14]), .B(n75), .Z(n70) );
  GTECH_MUX2 U82 ( .A(n75), .B(n74), .S(q[14]), .Z(N56) );
  GTECH_OAI21 U83 ( .A(q[13]), .B(n72), .C(n76), .Z(n74) );
  GTECH_NOT U84 ( .A(n77), .Z(n75) );
  GTECH_NAND3 U85 ( .A(n78), .B(q[12]), .C(q[13]), .Z(n77) );
  GTECH_MUX2 U86 ( .A(n79), .B(N54), .S(q[13]), .Z(N55) );
  GTECH_AND2 U87 ( .A(n78), .B(q[12]), .Z(n79) );
  GTECH_NOT U88 ( .A(n76), .Z(N54) );
  GTECH_OR_NOT U89 ( .A(q[12]), .B(n78), .Z(n76) );
  GTECH_NOT U90 ( .A(n72), .Z(n78) );
  GTECH_NAND3 U91 ( .A(n80), .B(ena[3]), .C(n81), .Z(n72) );
  GTECH_NAND3 U92 ( .A(q[15]), .B(q[12]), .C(n82), .Z(n81) );
  GTECH_NOR2 U93 ( .A(q[13]), .B(q[14]), .Z(n82) );
  GTECH_MUX2 U94 ( .A(n83), .B(n84), .S(q[11]), .Z(N42) );
  GTECH_OAI21 U95 ( .A(q[10]), .B(n85), .C(n86), .Z(n84) );
  GTECH_NOT U96 ( .A(n87), .Z(n86) );
  GTECH_AND2 U97 ( .A(q[10]), .B(n88), .Z(n83) );
  GTECH_OR_NOT U98 ( .A(N57), .B(n85), .Z(N41) );
  GTECH_MUX2 U99 ( .A(n88), .B(n87), .S(q[10]), .Z(N40) );
  GTECH_OAI21 U100 ( .A(q[9]), .B(n85), .C(n89), .Z(n87) );
  GTECH_NOT U101 ( .A(n90), .Z(n88) );
  GTECH_NAND3 U102 ( .A(n91), .B(q[8]), .C(q[9]), .Z(n90) );
  GTECH_MUX2 U103 ( .A(n92), .B(N38), .S(q[9]), .Z(N39) );
  GTECH_AND2 U104 ( .A(n91), .B(q[8]), .Z(n92) );
  GTECH_NOT U105 ( .A(n89), .Z(N38) );
  GTECH_OR_NOT U106 ( .A(q[8]), .B(n91), .Z(n89) );
  GTECH_NOT U107 ( .A(n85), .Z(n91) );
  GTECH_OR_NOT U108 ( .A(N57), .B(ena[2]), .Z(n85) );
  GTECH_OR_NOT U109 ( .A(ena[3]), .B(n80), .Z(N57) );
  GTECH_NOT U110 ( .A(n93), .Z(ena[3]) );
  GTECH_NAND5 U111 ( .A(n94), .B(n95), .C(ena[2]), .D(q[8]), .E(q[11]), .Z(n93) );
  GTECH_NOT U112 ( .A(n96), .Z(ena[2]) );
  GTECH_NOT U113 ( .A(q[9]), .Z(n95) );
  GTECH_NOT U114 ( .A(q[10]), .Z(n94) );
  GTECH_MUX2 U115 ( .A(n97), .B(n98), .S(q[7]), .Z(N26) );
  GTECH_OAI21 U116 ( .A(q[6]), .B(n99), .C(n100), .Z(n98) );
  GTECH_NOT U117 ( .A(n101), .Z(n100) );
  GTECH_AND2 U118 ( .A(q[6]), .B(n102), .Z(n97) );
  GTECH_NAND3 U119 ( .A(n96), .B(n80), .C(n99), .Z(N25) );
  GTECH_MUX2 U120 ( .A(n102), .B(n101), .S(q[6]), .Z(N24) );
  GTECH_OAI21 U121 ( .A(q[5]), .B(n99), .C(n103), .Z(n101) );
  GTECH_NOT U122 ( .A(n104), .Z(n102) );
  GTECH_NAND3 U123 ( .A(n105), .B(q[4]), .C(q[5]), .Z(n104) );
  GTECH_MUX2 U124 ( .A(n106), .B(N22), .S(q[5]), .Z(N23) );
  GTECH_AND2 U125 ( .A(n105), .B(q[4]), .Z(n106) );
  GTECH_NOT U126 ( .A(n103), .Z(N22) );
  GTECH_OR_NOT U127 ( .A(q[4]), .B(n105), .Z(n103) );
  GTECH_NOT U128 ( .A(n99), .Z(n105) );
  GTECH_NAND3 U129 ( .A(n96), .B(n80), .C(ena[1]), .Z(n99) );
  GTECH_NOT U130 ( .A(reset), .Z(n80) );
  GTECH_NAND5 U131 ( .A(n107), .B(n108), .C(ena[1]), .D(q[7]), .E(q[4]), .Z(
        n96) );
  GTECH_NOT U132 ( .A(n109), .Z(ena[1]) );
  GTECH_NOT U133 ( .A(q[6]), .Z(n108) );
  GTECH_NOT U134 ( .A(q[5]), .Z(n107) );
  GTECH_MUX2 U135 ( .A(n110), .B(n111), .S(q[3]), .Z(N13) );
  GTECH_OAI21 U136 ( .A(q[2]), .B(n112), .C(n113), .Z(n111) );
  GTECH_NOT U137 ( .A(n114), .Z(n113) );
  GTECH_AND2 U138 ( .A(q[2]), .B(n115), .Z(n110) );
  GTECH_MUX2 U139 ( .A(n115), .B(n114), .S(q[2]), .Z(N12) );
  GTECH_OAI21 U140 ( .A(q[1]), .B(n112), .C(n116), .Z(n114) );
  GTECH_NOT U141 ( .A(n117), .Z(n115) );
  GTECH_NAND3 U142 ( .A(n118), .B(q[0]), .C(q[1]), .Z(n117) );
  GTECH_MUX2 U143 ( .A(n119), .B(N10), .S(q[1]), .Z(N11) );
  GTECH_AND2 U144 ( .A(n118), .B(q[0]), .Z(n119) );
  GTECH_NOT U145 ( .A(n116), .Z(N10) );
  GTECH_OR_NOT U146 ( .A(q[0]), .B(n118), .Z(n116) );
  GTECH_NOT U147 ( .A(n112), .Z(n118) );
  GTECH_OR_NOT U148 ( .A(reset), .B(n109), .Z(n112) );
  GTECH_NAND4 U149 ( .A(q[3]), .B(q[0]), .C(n120), .D(n121), .Z(n109) );
  GTECH_NOT U150 ( .A(q[2]), .Z(n121) );
  GTECH_NOT U151 ( .A(q[1]), .Z(n120) );
endmodule

