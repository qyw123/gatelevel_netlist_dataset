
module bcd_counter ( clk, reset, ena, q );
  output [3:1] ena;
  output [15:0] q;
  input clk, reset;
  wire   N10, N11, N12, N13, N22, N23, N24, N25, N26, N38, N39, N40, N41, N42,
         N54, N55, N56, N57, N58, n54, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129;

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
  GTECH_OAI2N2 U84 ( .A(n76), .B(n77), .C(q[15]), .D(n78), .Z(N58) );
  GTECH_OAI21 U85 ( .A(n79), .B(q[14]), .C(n80), .Z(n78) );
  GTECH_OR_NOT U86 ( .A(q[15]), .B(q[14]), .Z(n77) );
  GTECH_OR3 U87 ( .A(reset), .B(n81), .C(n82), .Z(N57) );
  GTECH_OAI22 U88 ( .A(n80), .B(n83), .C(q[14]), .D(n76), .Z(N56) );
  GTECH_OR3 U89 ( .A(n84), .B(n79), .C(n85), .Z(n76) );
  GTECH_NOT U90 ( .A(n86), .Z(n80) );
  GTECH_OAI21 U91 ( .A(q[13]), .B(n79), .C(n87), .Z(n86) );
  GTECH_OAI21 U92 ( .A(n85), .B(n87), .C(n88), .Z(N55) );
  GTECH_OR3 U93 ( .A(n84), .B(n79), .C(q[13]), .Z(n88) );
  GTECH_NOT U94 ( .A(n87), .Z(N54) );
  GTECH_NAND2 U95 ( .A(n82), .B(n84), .Z(n87) );
  GTECH_NOT U96 ( .A(q[12]), .Z(n84) );
  GTECH_NOT U97 ( .A(n79), .Z(n82) );
  GTECH_OR3 U98 ( .A(reset), .B(n81), .C(n89), .Z(n79) );
  GTECH_NOT U99 ( .A(n90), .Z(n81) );
  GTECH_NAND5 U100 ( .A(n85), .B(n83), .C(ena[3]), .D(q[15]), .E(q[12]), .Z(
        n90) );
  GTECH_NOT U101 ( .A(q[14]), .Z(n83) );
  GTECH_NOT U102 ( .A(q[13]), .Z(n85) );
  GTECH_OAI2N2 U103 ( .A(n91), .B(n92), .C(q[11]), .D(n93), .Z(N42) );
  GTECH_OAI21 U104 ( .A(n94), .B(q[10]), .C(n95), .Z(n93) );
  GTECH_OR_NOT U105 ( .A(q[11]), .B(q[10]), .Z(n92) );
  GTECH_OR3 U106 ( .A(reset), .B(n96), .C(ena[3]), .Z(N41) );
  GTECH_OAI22 U107 ( .A(n95), .B(n97), .C(q[10]), .D(n91), .Z(N40) );
  GTECH_OR3 U108 ( .A(n98), .B(n94), .C(n99), .Z(n91) );
  GTECH_NOT U109 ( .A(n100), .Z(n95) );
  GTECH_OAI21 U110 ( .A(q[9]), .B(n94), .C(n101), .Z(n100) );
  GTECH_OAI21 U111 ( .A(n99), .B(n101), .C(n102), .Z(N39) );
  GTECH_OR3 U112 ( .A(n98), .B(n94), .C(q[9]), .Z(n102) );
  GTECH_NOT U113 ( .A(n101), .Z(N38) );
  GTECH_NAND2 U114 ( .A(n96), .B(n98), .Z(n101) );
  GTECH_NOT U115 ( .A(q[8]), .Z(n98) );
  GTECH_NOT U116 ( .A(n94), .Z(n96) );
  GTECH_OR3 U117 ( .A(reset), .B(ena[3]), .C(n103), .Z(n94) );
  GTECH_NOT U118 ( .A(n89), .Z(ena[3]) );
  GTECH_NAND5 U119 ( .A(n97), .B(n99), .C(ena[2]), .D(q[8]), .E(q[11]), .Z(n89) );
  GTECH_NOT U120 ( .A(q[9]), .Z(n99) );
  GTECH_NOT U121 ( .A(q[10]), .Z(n97) );
  GTECH_OAI2N2 U122 ( .A(n104), .B(n105), .C(q[7]), .D(n106), .Z(N26) );
  GTECH_OAI21 U123 ( .A(n107), .B(q[6]), .C(n108), .Z(n106) );
  GTECH_OR_NOT U124 ( .A(q[7]), .B(q[6]), .Z(n105) );
  GTECH_OR3 U125 ( .A(reset), .B(ena[2]), .C(n109), .Z(N25) );
  GTECH_OAI22 U126 ( .A(n108), .B(n110), .C(q[6]), .D(n104), .Z(N24) );
  GTECH_OR3 U127 ( .A(n111), .B(n107), .C(n112), .Z(n104) );
  GTECH_NOT U128 ( .A(n113), .Z(n108) );
  GTECH_OAI21 U129 ( .A(q[5]), .B(n107), .C(n114), .Z(n113) );
  GTECH_OAI21 U130 ( .A(n112), .B(n114), .C(n115), .Z(N23) );
  GTECH_OR3 U131 ( .A(n111), .B(n107), .C(q[5]), .Z(n115) );
  GTECH_NOT U132 ( .A(n114), .Z(N22) );
  GTECH_NAND2 U133 ( .A(n109), .B(n111), .Z(n114) );
  GTECH_NOT U134 ( .A(q[4]), .Z(n111) );
  GTECH_NOT U135 ( .A(n107), .Z(n109) );
  GTECH_OR3 U136 ( .A(reset), .B(ena[2]), .C(n116), .Z(n107) );
  GTECH_NOT U137 ( .A(n103), .Z(ena[2]) );
  GTECH_NAND5 U138 ( .A(n112), .B(n110), .C(ena[1]), .D(q[7]), .E(q[4]), .Z(
        n103) );
  GTECH_NOT U139 ( .A(n116), .Z(ena[1]) );
  GTECH_NOT U140 ( .A(q[6]), .Z(n110) );
  GTECH_NOT U141 ( .A(q[5]), .Z(n112) );
  GTECH_OAI2N2 U142 ( .A(n117), .B(n118), .C(q[3]), .D(n119), .Z(N13) );
  GTECH_OAI21 U143 ( .A(n120), .B(q[2]), .C(n121), .Z(n119) );
  GTECH_OR_NOT U144 ( .A(q[3]), .B(q[2]), .Z(n118) );
  GTECH_OAI22 U145 ( .A(n121), .B(n122), .C(q[2]), .D(n117), .Z(N12) );
  GTECH_OR3 U146 ( .A(n123), .B(n120), .C(n124), .Z(n117) );
  GTECH_NOT U147 ( .A(n125), .Z(n121) );
  GTECH_OAI21 U148 ( .A(q[1]), .B(n120), .C(n126), .Z(n125) );
  GTECH_OAI21 U149 ( .A(n124), .B(n126), .C(n127), .Z(N11) );
  GTECH_OR3 U150 ( .A(n123), .B(n120), .C(q[1]), .Z(n127) );
  GTECH_NOT U151 ( .A(n126), .Z(N10) );
  GTECH_NAND2 U152 ( .A(n128), .B(n123), .Z(n126) );
  GTECH_NOT U153 ( .A(q[0]), .Z(n123) );
  GTECH_NOT U154 ( .A(n120), .Z(n128) );
  GTECH_NAND2 U155 ( .A(n116), .B(n129), .Z(n120) );
  GTECH_NOT U156 ( .A(reset), .Z(n129) );
  GTECH_NAND4 U157 ( .A(q[3]), .B(q[0]), .C(n124), .D(n122), .Z(n116) );
  GTECH_NOT U158 ( .A(q[2]), .Z(n122) );
  GTECH_NOT U159 ( .A(q[1]), .Z(n124) );
endmodule

