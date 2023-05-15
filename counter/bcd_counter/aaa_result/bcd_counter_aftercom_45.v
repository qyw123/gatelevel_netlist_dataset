
module bcd_counter ( clk, reset, ena, q );
  output [3:1] ena;
  output [15:0] q;
  input clk, reset;
  wire   N10, N11, N12, N13, N22, N23, N24, N25, N26, N38, N39, N40, N41, N42,
         N54, N55, N56, N57, N58, n53, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136;

  GTECH_FD1 ones_reg_0_ ( .D(N10), .CP(clk), .Q(q[0]) );
  GTECH_FD1 ones_reg_1_ ( .D(N11), .CP(clk), .Q(q[1]) );
  GTECH_FD1 ones_reg_2_ ( .D(N12), .CP(clk), .Q(q[2]) );
  GTECH_FD1 ones_reg_3_ ( .D(N13), .CP(clk), .Q(q[3]) );
  GTECH_FJK1S tens_reg_0_ ( .J(n53), .K(n53), .TI(N22), .TE(N25), .CP(clk), 
        .Q(q[4]) );
  GTECH_FJK1S tens_reg_1_ ( .J(n53), .K(n53), .TI(N23), .TE(N25), .CP(clk), 
        .Q(q[5]) );
  GTECH_FJK1S tens_reg_2_ ( .J(n53), .K(n53), .TI(N24), .TE(N25), .CP(clk), 
        .Q(q[6]) );
  GTECH_FJK1S tens_reg_3_ ( .J(n53), .K(n53), .TI(N26), .TE(N25), .CP(clk), 
        .Q(q[7]) );
  GTECH_FJK1S hundreds_reg_0_ ( .J(n53), .K(n53), .TI(N38), .TE(N41), .CP(clk), 
        .Q(q[8]) );
  GTECH_FJK1S hundreds_reg_1_ ( .J(n53), .K(n53), .TI(N39), .TE(N41), .CP(clk), 
        .Q(q[9]) );
  GTECH_FJK1S hundreds_reg_2_ ( .J(n53), .K(n53), .TI(N40), .TE(N41), .CP(clk), 
        .Q(q[10]) );
  GTECH_FJK1S hundreds_reg_3_ ( .J(n53), .K(n53), .TI(N42), .TE(N41), .CP(clk), 
        .Q(q[11]) );
  GTECH_FJK1S thousands_reg_0_ ( .J(n53), .K(n53), .TI(N54), .TE(N57), .CP(clk), .Q(q[12]) );
  GTECH_FJK1S thousands_reg_2_ ( .J(n53), .K(n53), .TI(N56), .TE(N57), .CP(clk), .Q(q[14]) );
  GTECH_FJK1S thousands_reg_3_ ( .J(n53), .K(n53), .TI(N58), .TE(N57), .CP(clk), .Q(q[15]) );
  GTECH_FJK1S thousands_reg_1_ ( .J(n53), .K(n53), .TI(N55), .TE(N57), .CP(clk), .Q(q[13]) );
  GTECH_ZERO U87 ( .Z(n53) );
  GTECH_MUX2 U88 ( .A(n80), .B(n81), .S(q[15]), .Z(N58) );
  GTECH_OAI21 U89 ( .A(q[14]), .B(n82), .C(n83), .Z(n81) );
  GTECH_NOT U90 ( .A(n84), .Z(n83) );
  GTECH_AND2 U91 ( .A(q[14]), .B(n85), .Z(n80) );
  GTECH_OR3 U92 ( .A(reset), .B(n86), .C(n87), .Z(N57) );
  GTECH_MUX2 U93 ( .A(n85), .B(n84), .S(q[14]), .Z(N56) );
  GTECH_OAI21 U94 ( .A(q[13]), .B(n82), .C(n88), .Z(n84) );
  GTECH_NOT U95 ( .A(n89), .Z(n85) );
  GTECH_OR3 U96 ( .A(n90), .B(n82), .C(n91), .Z(n89) );
  GTECH_NOT U97 ( .A(q[12]), .Z(n90) );
  GTECH_MUX2 U98 ( .A(n92), .B(N54), .S(q[13]), .Z(N55) );
  GTECH_AND2 U99 ( .A(n87), .B(q[12]), .Z(n92) );
  GTECH_NOT U100 ( .A(n88), .Z(N54) );
  GTECH_OR_NOT U101 ( .A(q[12]), .B(n87), .Z(n88) );
  GTECH_NOT U102 ( .A(n82), .Z(n87) );
  GTECH_OR3 U103 ( .A(reset), .B(n86), .C(n93), .Z(n82) );
  GTECH_NOT U104 ( .A(n94), .Z(n86) );
  GTECH_NAND5 U105 ( .A(n91), .B(n95), .C(ena[3]), .D(q[15]), .E(q[12]), .Z(
        n94) );
  GTECH_NOT U106 ( .A(q[14]), .Z(n95) );
  GTECH_NOT U107 ( .A(q[13]), .Z(n91) );
  GTECH_MUX2 U108 ( .A(n96), .B(n97), .S(q[11]), .Z(N42) );
  GTECH_OAI21 U109 ( .A(q[10]), .B(n98), .C(n99), .Z(n97) );
  GTECH_NOT U110 ( .A(n100), .Z(n99) );
  GTECH_AND2 U111 ( .A(q[10]), .B(n101), .Z(n96) );
  GTECH_OR3 U112 ( .A(reset), .B(ena[3]), .C(n102), .Z(N41) );
  GTECH_MUX2 U113 ( .A(n101), .B(n100), .S(q[10]), .Z(N40) );
  GTECH_OAI21 U114 ( .A(q[9]), .B(n98), .C(n103), .Z(n100) );
  GTECH_NOT U115 ( .A(n104), .Z(n101) );
  GTECH_OR3 U116 ( .A(n105), .B(n98), .C(n106), .Z(n104) );
  GTECH_NOT U117 ( .A(q[8]), .Z(n105) );
  GTECH_MUX2 U118 ( .A(n107), .B(N38), .S(q[9]), .Z(N39) );
  GTECH_AND2 U119 ( .A(n102), .B(q[8]), .Z(n107) );
  GTECH_NOT U120 ( .A(n103), .Z(N38) );
  GTECH_OR_NOT U121 ( .A(q[8]), .B(n102), .Z(n103) );
  GTECH_NOT U122 ( .A(n98), .Z(n102) );
  GTECH_OR3 U123 ( .A(reset), .B(ena[3]), .C(n108), .Z(n98) );
  GTECH_NOT U124 ( .A(n93), .Z(ena[3]) );
  GTECH_NAND5 U125 ( .A(n109), .B(n106), .C(ena[2]), .D(q[8]), .E(q[11]), .Z(
        n93) );
  GTECH_NOT U126 ( .A(q[9]), .Z(n106) );
  GTECH_NOT U127 ( .A(q[10]), .Z(n109) );
  GTECH_MUX2 U128 ( .A(n110), .B(n111), .S(q[7]), .Z(N26) );
  GTECH_OAI21 U129 ( .A(q[6]), .B(n112), .C(n113), .Z(n111) );
  GTECH_NOT U130 ( .A(n114), .Z(n113) );
  GTECH_AND2 U131 ( .A(q[6]), .B(n115), .Z(n110) );
  GTECH_OR3 U132 ( .A(reset), .B(ena[2]), .C(n116), .Z(N25) );
  GTECH_MUX2 U133 ( .A(n115), .B(n114), .S(q[6]), .Z(N24) );
  GTECH_OAI21 U134 ( .A(q[5]), .B(n112), .C(n117), .Z(n114) );
  GTECH_NOT U135 ( .A(n118), .Z(n115) );
  GTECH_OR3 U136 ( .A(n119), .B(n112), .C(n120), .Z(n118) );
  GTECH_NOT U137 ( .A(q[4]), .Z(n119) );
  GTECH_MUX2 U138 ( .A(n121), .B(N22), .S(q[5]), .Z(N23) );
  GTECH_AND2 U139 ( .A(n116), .B(q[4]), .Z(n121) );
  GTECH_NOT U140 ( .A(n117), .Z(N22) );
  GTECH_OR_NOT U141 ( .A(q[4]), .B(n116), .Z(n117) );
  GTECH_NOT U142 ( .A(n112), .Z(n116) );
  GTECH_OR3 U143 ( .A(reset), .B(ena[2]), .C(n122), .Z(n112) );
  GTECH_NOT U144 ( .A(n108), .Z(ena[2]) );
  GTECH_NAND5 U145 ( .A(n120), .B(n123), .C(ena[1]), .D(q[7]), .E(q[4]), .Z(
        n108) );
  GTECH_NOT U146 ( .A(n122), .Z(ena[1]) );
  GTECH_NOT U147 ( .A(q[6]), .Z(n123) );
  GTECH_NOT U148 ( .A(q[5]), .Z(n120) );
  GTECH_MUX2 U149 ( .A(n124), .B(n125), .S(q[3]), .Z(N13) );
  GTECH_OAI21 U150 ( .A(q[2]), .B(n126), .C(n127), .Z(n125) );
  GTECH_NOT U151 ( .A(n128), .Z(n127) );
  GTECH_AND2 U152 ( .A(q[2]), .B(n129), .Z(n124) );
  GTECH_MUX2 U153 ( .A(n129), .B(n128), .S(q[2]), .Z(N12) );
  GTECH_OAI21 U154 ( .A(q[1]), .B(n126), .C(n130), .Z(n128) );
  GTECH_NOT U155 ( .A(n131), .Z(n129) );
  GTECH_OR3 U156 ( .A(n132), .B(n126), .C(n133), .Z(n131) );
  GTECH_NOT U157 ( .A(q[0]), .Z(n132) );
  GTECH_MUX2 U158 ( .A(n134), .B(N10), .S(q[1]), .Z(N11) );
  GTECH_AND2 U159 ( .A(n135), .B(q[0]), .Z(n134) );
  GTECH_NOT U160 ( .A(n130), .Z(N10) );
  GTECH_OR_NOT U161 ( .A(q[0]), .B(n135), .Z(n130) );
  GTECH_NOT U162 ( .A(n126), .Z(n135) );
  GTECH_OR_NOT U163 ( .A(reset), .B(n122), .Z(n126) );
  GTECH_NAND4 U164 ( .A(q[3]), .B(q[0]), .C(n133), .D(n136), .Z(n122) );
  GTECH_NOT U165 ( .A(q[2]), .Z(n136) );
  GTECH_NOT U166 ( .A(q[1]), .Z(n133) );
endmodule

