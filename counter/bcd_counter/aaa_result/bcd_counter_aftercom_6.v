
module bcd_counter ( clk, reset, ena, q );
  output [3:1] ena;
  output [15:0] q;
  input clk, reset;
  wire   N10, N11, N12, N13, N22, N23, N24, N25, N26, N38, N39, N40, N41, N42,
         N54, N55, N56, N57, N58, n54, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133;

  GTECH_FD1 ones_reg_0_ ( .D(N10), .CP(clk), .Q(q[0]) );
  GTECH_FD1 ones_reg_2_ ( .D(N12), .CP(clk), .Q(q[2]) );
  GTECH_FD1 ones_reg_1_ ( .D(N11), .CP(clk), .Q(q[1]) );
  GTECH_FD1 ones_reg_3_ ( .D(N13), .CP(clk), .Q(q[3]) );
  GTECH_FJK1S tens_reg_0_ ( .J(n54), .K(n54), .TI(N22), .TE(N25), .CP(clk), 
        .Q(q[4]) );
  GTECH_FJK1S tens_reg_2_ ( .J(n54), .K(n54), .TI(N24), .TE(N25), .CP(clk), 
        .Q(q[6]) );
  GTECH_FJK1S tens_reg_3_ ( .J(n54), .K(n54), .TI(N26), .TE(N25), .CP(clk), 
        .Q(q[7]) );
  GTECH_FJK1S tens_reg_1_ ( .J(n54), .K(n54), .TI(N23), .TE(N25), .CP(clk), 
        .Q(q[5]) );
  GTECH_FJK1S hundreds_reg_0_ ( .J(n54), .K(n54), .TI(N38), .TE(N41), .CP(clk), 
        .Q(q[8]) );
  GTECH_FJK1S hundreds_reg_2_ ( .J(n54), .K(n54), .TI(N40), .TE(N41), .CP(clk), 
        .Q(q[10]) );
  GTECH_FJK1S hundreds_reg_1_ ( .J(n54), .K(n54), .TI(N39), .TE(N41), .CP(clk), 
        .Q(q[9]) );
  GTECH_FJK1S hundreds_reg_3_ ( .J(n54), .K(n54), .TI(N42), .TE(N41), .CP(clk), 
        .Q(q[11]) );
  GTECH_FJK1S thousands_reg_0_ ( .J(n54), .K(n54), .TI(N54), .TE(N57), .CP(clk), .Q(q[12]) );
  GTECH_FJK1S thousands_reg_2_ ( .J(n54), .K(n54), .TI(N56), .TE(N57), .CP(clk), .Q(q[14]) );
  GTECH_FJK1S thousands_reg_3_ ( .J(n54), .K(n54), .TI(N58), .TE(N57), .CP(clk), .Q(q[15]) );
  GTECH_FJK1S thousands_reg_1_ ( .J(n54), .K(n54), .TI(N55), .TE(N57), .CP(clk), .Q(q[13]) );
  GTECH_ZERO U83 ( .Z(n54) );
  GTECH_MUX2 U84 ( .A(n76), .B(n77), .S(q[15]), .Z(N58) );
  GTECH_OAI21 U85 ( .A(q[14]), .B(n78), .C(n79), .Z(n77) );
  GTECH_NOT U86 ( .A(n80), .Z(n79) );
  GTECH_AND2 U87 ( .A(q[14]), .B(n81), .Z(n76) );
  GTECH_OR3 U88 ( .A(reset), .B(n82), .C(n83), .Z(N57) );
  GTECH_MUX2 U89 ( .A(n81), .B(n80), .S(q[14]), .Z(N56) );
  GTECH_OAI21 U90 ( .A(q[13]), .B(n78), .C(n84), .Z(n80) );
  GTECH_NOT U91 ( .A(n85), .Z(n81) );
  GTECH_OR3 U92 ( .A(n86), .B(n78), .C(n87), .Z(n85) );
  GTECH_MUX2 U93 ( .A(n88), .B(N54), .S(q[13]), .Z(N55) );
  GTECH_AND2 U94 ( .A(n83), .B(q[12]), .Z(n88) );
  GTECH_NOT U95 ( .A(n84), .Z(N54) );
  GTECH_NAND2 U96 ( .A(n83), .B(n86), .Z(n84) );
  GTECH_NOT U97 ( .A(q[12]), .Z(n86) );
  GTECH_NOT U98 ( .A(n78), .Z(n83) );
  GTECH_OR3 U99 ( .A(reset), .B(n82), .C(n89), .Z(n78) );
  GTECH_NOT U100 ( .A(n90), .Z(n82) );
  GTECH_NAND5 U101 ( .A(n87), .B(n91), .C(ena[3]), .D(q[15]), .E(q[12]), .Z(
        n90) );
  GTECH_NOT U102 ( .A(q[14]), .Z(n91) );
  GTECH_NOT U103 ( .A(q[13]), .Z(n87) );
  GTECH_MUX2 U104 ( .A(n92), .B(n93), .S(q[11]), .Z(N42) );
  GTECH_OAI21 U105 ( .A(q[10]), .B(n94), .C(n95), .Z(n93) );
  GTECH_NOT U106 ( .A(n96), .Z(n95) );
  GTECH_AND2 U107 ( .A(q[10]), .B(n97), .Z(n92) );
  GTECH_OR3 U108 ( .A(reset), .B(n98), .C(ena[3]), .Z(N41) );
  GTECH_MUX2 U109 ( .A(n97), .B(n96), .S(q[10]), .Z(N40) );
  GTECH_OAI21 U110 ( .A(q[9]), .B(n94), .C(n99), .Z(n96) );
  GTECH_NOT U111 ( .A(n100), .Z(n97) );
  GTECH_OR3 U112 ( .A(n101), .B(n94), .C(n102), .Z(n100) );
  GTECH_MUX2 U113 ( .A(n103), .B(N38), .S(q[9]), .Z(N39) );
  GTECH_AND2 U114 ( .A(n98), .B(q[8]), .Z(n103) );
  GTECH_NOT U115 ( .A(n99), .Z(N38) );
  GTECH_NAND2 U116 ( .A(n98), .B(n101), .Z(n99) );
  GTECH_NOT U117 ( .A(q[8]), .Z(n101) );
  GTECH_NOT U118 ( .A(n94), .Z(n98) );
  GTECH_OR3 U119 ( .A(reset), .B(ena[3]), .C(n104), .Z(n94) );
  GTECH_NOT U120 ( .A(n89), .Z(ena[3]) );
  GTECH_NAND5 U121 ( .A(n105), .B(n102), .C(ena[2]), .D(q[8]), .E(q[11]), .Z(
        n89) );
  GTECH_NOT U122 ( .A(q[9]), .Z(n102) );
  GTECH_NOT U123 ( .A(q[10]), .Z(n105) );
  GTECH_MUX2 U124 ( .A(n106), .B(n107), .S(q[7]), .Z(N26) );
  GTECH_OAI21 U125 ( .A(q[6]), .B(n108), .C(n109), .Z(n107) );
  GTECH_NOT U126 ( .A(n110), .Z(n109) );
  GTECH_AND2 U127 ( .A(q[6]), .B(n111), .Z(n106) );
  GTECH_OR3 U128 ( .A(reset), .B(ena[2]), .C(n112), .Z(N25) );
  GTECH_MUX2 U129 ( .A(n111), .B(n110), .S(q[6]), .Z(N24) );
  GTECH_OAI21 U130 ( .A(q[5]), .B(n108), .C(n113), .Z(n110) );
  GTECH_NOT U131 ( .A(n114), .Z(n111) );
  GTECH_OR3 U132 ( .A(n115), .B(n108), .C(n116), .Z(n114) );
  GTECH_MUX2 U133 ( .A(n117), .B(N22), .S(q[5]), .Z(N23) );
  GTECH_AND2 U134 ( .A(n112), .B(q[4]), .Z(n117) );
  GTECH_NOT U135 ( .A(n113), .Z(N22) );
  GTECH_NAND2 U136 ( .A(n112), .B(n115), .Z(n113) );
  GTECH_NOT U137 ( .A(q[4]), .Z(n115) );
  GTECH_NOT U138 ( .A(n108), .Z(n112) );
  GTECH_OR3 U139 ( .A(reset), .B(ena[2]), .C(n118), .Z(n108) );
  GTECH_NOT U140 ( .A(n104), .Z(ena[2]) );
  GTECH_NAND5 U141 ( .A(n116), .B(n119), .C(ena[1]), .D(q[7]), .E(q[4]), .Z(
        n104) );
  GTECH_NOT U142 ( .A(n118), .Z(ena[1]) );
  GTECH_NOT U143 ( .A(q[6]), .Z(n119) );
  GTECH_NOT U144 ( .A(q[5]), .Z(n116) );
  GTECH_MUX2 U145 ( .A(n120), .B(n121), .S(q[3]), .Z(N13) );
  GTECH_OAI21 U146 ( .A(q[2]), .B(n122), .C(n123), .Z(n121) );
  GTECH_NOT U147 ( .A(n124), .Z(n123) );
  GTECH_AND2 U148 ( .A(q[2]), .B(n125), .Z(n120) );
  GTECH_MUX2 U149 ( .A(n125), .B(n124), .S(q[2]), .Z(N12) );
  GTECH_OAI21 U150 ( .A(q[1]), .B(n122), .C(n126), .Z(n124) );
  GTECH_NOT U151 ( .A(n127), .Z(n125) );
  GTECH_OR3 U152 ( .A(n128), .B(n122), .C(n129), .Z(n127) );
  GTECH_MUX2 U153 ( .A(n130), .B(N10), .S(q[1]), .Z(N11) );
  GTECH_AND2 U154 ( .A(n131), .B(q[0]), .Z(n130) );
  GTECH_NOT U155 ( .A(n126), .Z(N10) );
  GTECH_NAND2 U156 ( .A(n131), .B(n128), .Z(n126) );
  GTECH_NOT U157 ( .A(q[0]), .Z(n128) );
  GTECH_NOT U158 ( .A(n122), .Z(n131) );
  GTECH_NAND2 U159 ( .A(n118), .B(n132), .Z(n122) );
  GTECH_NOT U160 ( .A(reset), .Z(n132) );
  GTECH_NAND4 U161 ( .A(q[3]), .B(q[0]), .C(n129), .D(n133), .Z(n118) );
  GTECH_NOT U162 ( .A(q[2]), .Z(n133) );
  GTECH_NOT U163 ( .A(q[1]), .Z(n129) );
endmodule

