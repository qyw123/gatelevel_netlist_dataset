
module bcd_counter ( clk, reset, ena, q );
  output [3:1] ena;
  output [15:0] q;
  input clk, reset;
  wire   N10, N11, N12, N13, N22, N23, N24, N25, N26, N38, N39, N40, N41, N42,
         N54, N55, N56, N57, N58, n53, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133;

  GTECH_FD1 ones_reg_0_ ( .D(N10), .CP(clk), .Q(q[0]) );
  GTECH_FD1 ones_reg_2_ ( .D(N12), .CP(clk), .Q(q[2]) );
  GTECH_FD1 ones_reg_1_ ( .D(N11), .CP(clk), .Q(q[1]) );
  GTECH_FD1 ones_reg_3_ ( .D(N13), .CP(clk), .Q(q[3]) );
  GTECH_FJK1S tens_reg_0_ ( .J(n53), .K(n53), .TI(N22), .TE(N25), .CP(clk), 
        .Q(q[4]) );
  GTECH_FJK1S tens_reg_2_ ( .J(n53), .K(n53), .TI(N24), .TE(N25), .CP(clk), 
        .Q(q[6]) );
  GTECH_FJK1S tens_reg_3_ ( .J(n53), .K(n53), .TI(N26), .TE(N25), .CP(clk), 
        .Q(q[7]) );
  GTECH_FJK1S tens_reg_1_ ( .J(n53), .K(n53), .TI(N23), .TE(N25), .CP(clk), 
        .Q(q[5]) );
  GTECH_FJK1S hundreds_reg_0_ ( .J(n53), .K(n53), .TI(N38), .TE(N41), .CP(clk), 
        .Q(q[8]) );
  GTECH_FJK1S hundreds_reg_2_ ( .J(n53), .K(n53), .TI(N40), .TE(N41), .CP(clk), 
        .Q(q[10]) );
  GTECH_FJK1S hundreds_reg_1_ ( .J(n53), .K(n53), .TI(N39), .TE(N41), .CP(clk), 
        .Q(q[9]) );
  GTECH_FJK1S hundreds_reg_3_ ( .J(n53), .K(n53), .TI(N42), .TE(N41), .CP(clk), 
        .Q(q[11]) );
  GTECH_FJK1S thousands_reg_0_ ( .J(n53), .K(n53), .TI(N54), .TE(N57), .CP(clk), .Q(q[12]) );
  GTECH_FJK1S thousands_reg_1_ ( .J(n53), .K(n53), .TI(N55), .TE(N57), .CP(clk), .Q(q[13]) );
  GTECH_FJK1S thousands_reg_2_ ( .J(n53), .K(n53), .TI(N56), .TE(N57), .CP(clk), .Q(q[14]) );
  GTECH_FJK1S thousands_reg_3_ ( .J(n53), .K(n53), .TI(N58), .TE(N57), .CP(clk), .Q(q[15]) );
  GTECH_ZERO U83 ( .Z(n53) );
  GTECH_NOT U84 ( .A(n76), .Z(ena[1]) );
  GTECH_MUX2 U85 ( .A(n77), .B(n78), .S(q[15]), .Z(N58) );
  GTECH_OAI21 U86 ( .A(q[14]), .B(n79), .C(n80), .Z(n78) );
  GTECH_NOT U87 ( .A(n81), .Z(n80) );
  GTECH_AND2 U88 ( .A(q[14]), .B(n82), .Z(n77) );
  GTECH_OR3 U89 ( .A(reset), .B(n83), .C(n84), .Z(N57) );
  GTECH_MUX2 U90 ( .A(n82), .B(n81), .S(q[14]), .Z(N56) );
  GTECH_OAI21 U91 ( .A(q[13]), .B(n79), .C(n85), .Z(n81) );
  GTECH_NOT U92 ( .A(n86), .Z(n82) );
  GTECH_OR3 U93 ( .A(n87), .B(n79), .C(n88), .Z(n86) );
  GTECH_NOT U94 ( .A(q[13]), .Z(n88) );
  GTECH_MUX2 U95 ( .A(n89), .B(N54), .S(q[13]), .Z(N55) );
  GTECH_AND2 U96 ( .A(n84), .B(q[12]), .Z(n89) );
  GTECH_NOT U97 ( .A(n85), .Z(N54) );
  GTECH_NAND2 U98 ( .A(n84), .B(n87), .Z(n85) );
  GTECH_NOT U99 ( .A(n79), .Z(n84) );
  GTECH_OR3 U100 ( .A(reset), .B(n83), .C(n90), .Z(n79) );
  GTECH_NOT U101 ( .A(n91), .Z(n83) );
  GTECH_OR5 U102 ( .A(q[14]), .B(q[13]), .C(n90), .D(n87), .E(n92), .Z(n91) );
  GTECH_NOT U103 ( .A(q[15]), .Z(n92) );
  GTECH_NOT U104 ( .A(q[12]), .Z(n87) );
  GTECH_MUX2 U105 ( .A(n93), .B(n94), .S(q[11]), .Z(N42) );
  GTECH_OAI21 U106 ( .A(q[10]), .B(n95), .C(n96), .Z(n94) );
  GTECH_NOT U107 ( .A(n97), .Z(n96) );
  GTECH_AND2 U108 ( .A(q[10]), .B(n98), .Z(n93) );
  GTECH_OR3 U109 ( .A(reset), .B(ena[3]), .C(n99), .Z(N41) );
  GTECH_MUX2 U110 ( .A(n98), .B(n97), .S(q[10]), .Z(N40) );
  GTECH_OAI21 U111 ( .A(q[9]), .B(n95), .C(n100), .Z(n97) );
  GTECH_NOT U112 ( .A(n101), .Z(n98) );
  GTECH_OR3 U113 ( .A(n102), .B(n95), .C(n103), .Z(n101) );
  GTECH_NOT U114 ( .A(q[9]), .Z(n103) );
  GTECH_MUX2 U115 ( .A(n104), .B(N38), .S(q[9]), .Z(N39) );
  GTECH_AND2 U116 ( .A(n99), .B(q[8]), .Z(n104) );
  GTECH_NOT U117 ( .A(n100), .Z(N38) );
  GTECH_NAND2 U118 ( .A(n99), .B(n102), .Z(n100) );
  GTECH_NOT U119 ( .A(n95), .Z(n99) );
  GTECH_OR3 U120 ( .A(reset), .B(ena[3]), .C(n105), .Z(n95) );
  GTECH_NOT U121 ( .A(n90), .Z(ena[3]) );
  GTECH_OR5 U122 ( .A(q[9]), .B(q[10]), .C(n105), .D(n106), .E(n102), .Z(n90)
         );
  GTECH_NOT U123 ( .A(q[8]), .Z(n102) );
  GTECH_NOT U124 ( .A(q[11]), .Z(n106) );
  GTECH_MUX2 U125 ( .A(n107), .B(n108), .S(q[7]), .Z(N26) );
  GTECH_OAI21 U126 ( .A(q[6]), .B(n109), .C(n110), .Z(n108) );
  GTECH_NOT U127 ( .A(n111), .Z(n110) );
  GTECH_AND2 U128 ( .A(q[6]), .B(n112), .Z(n107) );
  GTECH_OR3 U129 ( .A(reset), .B(ena[2]), .C(n113), .Z(N25) );
  GTECH_MUX2 U130 ( .A(n112), .B(n111), .S(q[6]), .Z(N24) );
  GTECH_OAI21 U131 ( .A(q[5]), .B(n109), .C(n114), .Z(n111) );
  GTECH_NOT U132 ( .A(n115), .Z(n112) );
  GTECH_OR3 U133 ( .A(n116), .B(n109), .C(n117), .Z(n115) );
  GTECH_NOT U134 ( .A(q[5]), .Z(n117) );
  GTECH_MUX2 U135 ( .A(n118), .B(N22), .S(q[5]), .Z(N23) );
  GTECH_AND2 U136 ( .A(n113), .B(q[4]), .Z(n118) );
  GTECH_NOT U137 ( .A(n114), .Z(N22) );
  GTECH_NAND2 U138 ( .A(n113), .B(n116), .Z(n114) );
  GTECH_NOT U139 ( .A(n109), .Z(n113) );
  GTECH_OR3 U140 ( .A(reset), .B(ena[2]), .C(n76), .Z(n109) );
  GTECH_NOT U141 ( .A(n105), .Z(ena[2]) );
  GTECH_OR5 U142 ( .A(q[6]), .B(q[5]), .C(n76), .D(n116), .E(n119), .Z(n105)
         );
  GTECH_NOT U143 ( .A(q[7]), .Z(n119) );
  GTECH_NOT U144 ( .A(q[4]), .Z(n116) );
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
  GTECH_NAND2 U159 ( .A(n76), .B(n132), .Z(n122) );
  GTECH_NOT U160 ( .A(reset), .Z(n132) );
  GTECH_NAND4 U161 ( .A(q[3]), .B(q[0]), .C(n129), .D(n133), .Z(n76) );
  GTECH_NOT U162 ( .A(q[2]), .Z(n133) );
  GTECH_NOT U163 ( .A(q[1]), .Z(n129) );
endmodule

