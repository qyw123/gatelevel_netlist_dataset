
module bcd_counter ( clk, reset, ena, q );
  output [3:1] ena;
  output [15:0] q;
  input clk, reset;
  wire   N10, N11, N12, N13, N22, N23, N24, N25, N26, N38, N39, N40, N41, N42,
         N54, N55, N56, N57, N58, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133;

  GTECH_FD1 ones_reg_0_ ( .D(N10), .CP(clk), .Q(q[0]) );
  GTECH_FD1 ones_reg_2_ ( .D(N12), .CP(clk), .Q(q[2]) );
  GTECH_FD1 ones_reg_1_ ( .D(N11), .CP(clk), .Q(q[1]) );
  GTECH_FD1 ones_reg_3_ ( .D(N13), .CP(clk), .Q(q[3]) );
  GTECH_FJK1S tens_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N22), .TE(N25), .CP(clk), 
        .Q(q[4]) );
  GTECH_FJK1S tens_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N24), .TE(N25), .CP(clk), 
        .Q(q[6]) );
  GTECH_FJK1S tens_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N26), .TE(N25), .CP(clk), 
        .Q(q[7]) );
  GTECH_FJK1S tens_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N23), .TE(N25), .CP(clk), 
        .Q(q[5]) );
  GTECH_FJK1S hundreds_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N38), .TE(N41), .CP(
        clk), .Q(q[8]) );
  GTECH_FJK1S hundreds_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N40), .TE(N41), .CP(
        clk), .Q(q[10]) );
  GTECH_FJK1S hundreds_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N39), .TE(N41), .CP(
        clk), .Q(q[9]) );
  GTECH_FJK1S hundreds_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N42), .TE(N41), .CP(
        clk), .Q(q[11]) );
  GTECH_FJK1S thousands_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N54), .TE(N57), .CP(
        clk), .Q(q[12]) );
  GTECH_FJK1S thousands_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N56), .TE(N57), .CP(
        clk), .Q(q[14]) );
  GTECH_FJK1S thousands_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N58), .TE(N57), .CP(
        clk), .Q(q[15]) );
  GTECH_FJK1S thousands_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N55), .TE(N57), .CP(
        clk), .Q(q[13]) );
  GTECH_MUX2 U83 ( .A(n76), .B(n77), .S(q[15]), .Z(N58) );
  GTECH_OAI21 U84 ( .A(q[14]), .B(n78), .C(n79), .Z(n77) );
  GTECH_NOT U85 ( .A(n80), .Z(n79) );
  GTECH_AND2 U86 ( .A(q[14]), .B(n81), .Z(n76) );
  GTECH_OR3 U87 ( .A(reset), .B(n82), .C(n83), .Z(N57) );
  GTECH_MUX2 U88 ( .A(n81), .B(n80), .S(q[14]), .Z(N56) );
  GTECH_OAI21 U89 ( .A(q[13]), .B(n78), .C(n84), .Z(n80) );
  GTECH_NOT U90 ( .A(n85), .Z(n81) );
  GTECH_OR3 U91 ( .A(n86), .B(n78), .C(n87), .Z(n85) );
  GTECH_MUX2 U92 ( .A(n88), .B(N54), .S(q[13]), .Z(N55) );
  GTECH_AND2 U93 ( .A(n83), .B(q[12]), .Z(n88) );
  GTECH_NOT U94 ( .A(n84), .Z(N54) );
  GTECH_NAND2 U95 ( .A(n83), .B(n86), .Z(n84) );
  GTECH_NOT U96 ( .A(q[12]), .Z(n86) );
  GTECH_NOT U97 ( .A(n78), .Z(n83) );
  GTECH_OR3 U98 ( .A(reset), .B(n82), .C(n89), .Z(n78) );
  GTECH_NOT U99 ( .A(n90), .Z(n82) );
  GTECH_NAND5 U100 ( .A(n87), .B(n91), .C(ena[3]), .D(q[15]), .E(q[12]), .Z(
        n90) );
  GTECH_NOT U101 ( .A(q[14]), .Z(n91) );
  GTECH_NOT U102 ( .A(q[13]), .Z(n87) );
  GTECH_MUX2 U103 ( .A(n92), .B(n93), .S(q[11]), .Z(N42) );
  GTECH_OAI21 U104 ( .A(q[10]), .B(n94), .C(n95), .Z(n93) );
  GTECH_NOT U105 ( .A(n96), .Z(n95) );
  GTECH_AND2 U106 ( .A(q[10]), .B(n97), .Z(n92) );
  GTECH_OR3 U107 ( .A(reset), .B(n98), .C(ena[3]), .Z(N41) );
  GTECH_MUX2 U108 ( .A(n97), .B(n96), .S(q[10]), .Z(N40) );
  GTECH_OAI21 U109 ( .A(q[9]), .B(n94), .C(n99), .Z(n96) );
  GTECH_NOT U110 ( .A(n100), .Z(n97) );
  GTECH_OR3 U111 ( .A(n101), .B(n94), .C(n102), .Z(n100) );
  GTECH_MUX2 U112 ( .A(n103), .B(N38), .S(q[9]), .Z(N39) );
  GTECH_AND2 U113 ( .A(n98), .B(q[8]), .Z(n103) );
  GTECH_NOT U114 ( .A(n99), .Z(N38) );
  GTECH_NAND2 U115 ( .A(n98), .B(n101), .Z(n99) );
  GTECH_NOT U116 ( .A(q[8]), .Z(n101) );
  GTECH_NOT U117 ( .A(n94), .Z(n98) );
  GTECH_OR3 U118 ( .A(reset), .B(ena[3]), .C(n104), .Z(n94) );
  GTECH_NOT U119 ( .A(n89), .Z(ena[3]) );
  GTECH_NAND5 U120 ( .A(n105), .B(n102), .C(ena[2]), .D(q[8]), .E(q[11]), .Z(
        n89) );
  GTECH_NOT U121 ( .A(q[9]), .Z(n102) );
  GTECH_NOT U122 ( .A(q[10]), .Z(n105) );
  GTECH_MUX2 U123 ( .A(n106), .B(n107), .S(q[7]), .Z(N26) );
  GTECH_OAI21 U124 ( .A(q[6]), .B(n108), .C(n109), .Z(n107) );
  GTECH_NOT U125 ( .A(n110), .Z(n109) );
  GTECH_AND2 U126 ( .A(q[6]), .B(n111), .Z(n106) );
  GTECH_OR3 U127 ( .A(reset), .B(ena[2]), .C(n112), .Z(N25) );
  GTECH_MUX2 U128 ( .A(n111), .B(n110), .S(q[6]), .Z(N24) );
  GTECH_OAI21 U129 ( .A(q[5]), .B(n108), .C(n113), .Z(n110) );
  GTECH_NOT U130 ( .A(n114), .Z(n111) );
  GTECH_OR3 U131 ( .A(n115), .B(n108), .C(n116), .Z(n114) );
  GTECH_MUX2 U132 ( .A(n117), .B(N22), .S(q[5]), .Z(N23) );
  GTECH_AND2 U133 ( .A(n112), .B(q[4]), .Z(n117) );
  GTECH_NOT U134 ( .A(n113), .Z(N22) );
  GTECH_NAND2 U135 ( .A(n112), .B(n115), .Z(n113) );
  GTECH_NOT U136 ( .A(q[4]), .Z(n115) );
  GTECH_NOT U137 ( .A(n108), .Z(n112) );
  GTECH_OR3 U138 ( .A(reset), .B(ena[2]), .C(n118), .Z(n108) );
  GTECH_NOT U139 ( .A(n104), .Z(ena[2]) );
  GTECH_NAND5 U140 ( .A(n116), .B(n119), .C(ena[1]), .D(q[7]), .E(q[4]), .Z(
        n104) );
  GTECH_NOT U141 ( .A(n118), .Z(ena[1]) );
  GTECH_NOT U142 ( .A(q[6]), .Z(n119) );
  GTECH_NOT U143 ( .A(q[5]), .Z(n116) );
  GTECH_MUX2 U144 ( .A(n120), .B(n121), .S(q[3]), .Z(N13) );
  GTECH_OAI21 U145 ( .A(q[2]), .B(n122), .C(n123), .Z(n121) );
  GTECH_NOT U146 ( .A(n124), .Z(n123) );
  GTECH_AND2 U147 ( .A(q[2]), .B(n125), .Z(n120) );
  GTECH_MUX2 U148 ( .A(n125), .B(n124), .S(q[2]), .Z(N12) );
  GTECH_OAI21 U149 ( .A(q[1]), .B(n122), .C(n126), .Z(n124) );
  GTECH_NOT U150 ( .A(n127), .Z(n125) );
  GTECH_OR3 U151 ( .A(n128), .B(n122), .C(n129), .Z(n127) );
  GTECH_MUX2 U152 ( .A(n130), .B(N10), .S(q[1]), .Z(N11) );
  GTECH_AND2 U153 ( .A(n131), .B(q[0]), .Z(n130) );
  GTECH_NOT U154 ( .A(n126), .Z(N10) );
  GTECH_NAND2 U155 ( .A(n131), .B(n128), .Z(n126) );
  GTECH_NOT U156 ( .A(q[0]), .Z(n128) );
  GTECH_NOT U157 ( .A(n122), .Z(n131) );
  GTECH_NAND2 U158 ( .A(n118), .B(n132), .Z(n122) );
  GTECH_NOT U159 ( .A(reset), .Z(n132) );
  GTECH_NAND4 U160 ( .A(q[3]), .B(q[0]), .C(n129), .D(n133), .Z(n118) );
  GTECH_NOT U161 ( .A(q[2]), .Z(n133) );
  GTECH_NOT U162 ( .A(q[1]), .Z(n129) );
endmodule

