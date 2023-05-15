
module bcd_counter ( clk, reset, ena, q );
  output [3:1] ena;
  output [15:0] q;
  input clk, reset;
  wire   N10, N11, N12, N13, N22, N23, N24, N25, N26, N38, N39, N40, N41, N42,
         N54, N55, N56, N57, N58, n59, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138;

  GTECH_FD1 ones_reg_0_ ( .D(N10), .CP(clk), .Q(q[0]) );
  GTECH_FD1 ones_reg_2_ ( .D(N12), .CP(clk), .Q(q[2]) );
  GTECH_FD1 ones_reg_3_ ( .D(N13), .CP(clk), .Q(q[3]) );
  GTECH_FD1 ones_reg_1_ ( .D(N11), .CP(clk), .Q(q[1]) );
  GTECH_FJK1S tens_reg_0_ ( .J(n59), .K(n59), .TI(N22), .TE(N25), .CP(clk), 
        .Q(q[4]) );
  GTECH_FJK1S tens_reg_2_ ( .J(n59), .K(n59), .TI(N24), .TE(N25), .CP(clk), 
        .Q(q[6]) );
  GTECH_FJK1S tens_reg_3_ ( .J(n59), .K(n59), .TI(N26), .TE(N25), .CP(clk), 
        .Q(q[7]) );
  GTECH_FJK1S tens_reg_1_ ( .J(n59), .K(n59), .TI(N23), .TE(N25), .CP(clk), 
        .Q(q[5]) );
  GTECH_FJK1S hundreds_reg_0_ ( .J(n59), .K(n59), .TI(N38), .TE(N41), .CP(clk), 
        .Q(q[8]) );
  GTECH_FJK1S hundreds_reg_2_ ( .J(n59), .K(n59), .TI(N40), .TE(N41), .CP(clk), 
        .Q(q[10]) );
  GTECH_FJK1S hundreds_reg_3_ ( .J(n59), .K(n59), .TI(N42), .TE(N41), .CP(clk), 
        .Q(q[11]) );
  GTECH_FJK1S hundreds_reg_1_ ( .J(n59), .K(n59), .TI(N39), .TE(N41), .CP(clk), 
        .Q(q[9]) );
  GTECH_FJK1S thousands_reg_0_ ( .J(n59), .K(n59), .TI(N54), .TE(N57), .CP(clk), .Q(q[12]) );
  GTECH_FJK1S thousands_reg_2_ ( .J(n59), .K(n59), .TI(N56), .TE(N57), .CP(clk), .Q(q[14]) );
  GTECH_FJK1S thousands_reg_3_ ( .J(n59), .K(n59), .TI(N58), .TE(N57), .CP(clk), .Q(q[15]) );
  GTECH_FJK1S thousands_reg_1_ ( .J(n59), .K(n59), .TI(N55), .TE(N57), .CP(clk), .Q(q[13]) );
  GTECH_ZERO U90 ( .Z(n59) );
  GTECH_OAI22 U91 ( .A(n83), .B(n84), .C(n85), .D(n86), .Z(N58) );
  GTECH_MUX2 U92 ( .A(n83), .B(n87), .S(q[14]), .Z(n86) );
  GTECH_OR_NOT U93 ( .A(q[15]), .B(n88), .Z(n87) );
  GTECH_NOT U94 ( .A(q[15]), .Z(n83) );
  GTECH_OR_NOT U95 ( .A(reset), .B(n89), .Z(N57) );
  GTECH_MUX2 U96 ( .A(n90), .B(n91), .S(q[14]), .Z(N56) );
  GTECH_AND_NOT U97 ( .A(n92), .B(n93), .Z(n90) );
  GTECH_OA21 U98 ( .A(q[12]), .B(q[13]), .C(n91), .Z(N55) );
  GTECH_NOT U99 ( .A(n84), .Z(n91) );
  GTECH_OR_NOT U100 ( .A(n88), .B(n92), .Z(n84) );
  GTECH_NOT U101 ( .A(n93), .Z(n88) );
  GTECH_OR_NOT U102 ( .A(n94), .B(q[13]), .Z(n93) );
  GTECH_NOT U103 ( .A(q[12]), .Z(n94) );
  GTECH_AND_NOT U104 ( .A(n92), .B(q[12]), .Z(N54) );
  GTECH_NOT U105 ( .A(n85), .Z(n92) );
  GTECH_NAND3 U106 ( .A(n95), .B(ena[3]), .C(n96), .Z(n85) );
  GTECH_NAND3 U107 ( .A(q[15]), .B(q[12]), .C(n97), .Z(n96) );
  GTECH_NOR2 U108 ( .A(q[13]), .B(q[14]), .Z(n97) );
  GTECH_NOT U109 ( .A(n89), .Z(ena[3]) );
  GTECH_OAI22 U110 ( .A(n98), .B(n99), .C(n100), .D(n101), .Z(N42) );
  GTECH_MUX2 U111 ( .A(n98), .B(n102), .S(q[10]), .Z(n101) );
  GTECH_OR_NOT U112 ( .A(q[11]), .B(n103), .Z(n102) );
  GTECH_NOT U113 ( .A(q[11]), .Z(n98) );
  GTECH_NAND3 U114 ( .A(n89), .B(n95), .C(n100), .Z(N41) );
  GTECH_MUX2 U115 ( .A(n104), .B(n105), .S(q[10]), .Z(N40) );
  GTECH_AND_NOT U116 ( .A(n106), .B(n107), .Z(n104) );
  GTECH_OA21 U117 ( .A(q[8]), .B(q[9]), .C(n105), .Z(N39) );
  GTECH_NOT U118 ( .A(n99), .Z(n105) );
  GTECH_OR_NOT U119 ( .A(n103), .B(n106), .Z(n99) );
  GTECH_NOT U120 ( .A(n107), .Z(n103) );
  GTECH_OR_NOT U121 ( .A(n108), .B(q[9]), .Z(n107) );
  GTECH_NOT U122 ( .A(q[8]), .Z(n108) );
  GTECH_AND_NOT U123 ( .A(n106), .B(q[8]), .Z(N38) );
  GTECH_NOT U124 ( .A(n100), .Z(n106) );
  GTECH_NAND3 U125 ( .A(n89), .B(n95), .C(ena[2]), .Z(n100) );
  GTECH_NAND5 U126 ( .A(n109), .B(n110), .C(ena[2]), .D(q[8]), .E(q[11]), .Z(
        n89) );
  GTECH_NOT U127 ( .A(n111), .Z(ena[2]) );
  GTECH_NOT U128 ( .A(q[9]), .Z(n110) );
  GTECH_NOT U129 ( .A(q[10]), .Z(n109) );
  GTECH_OAI22 U130 ( .A(n112), .B(n113), .C(n114), .D(n115), .Z(N26) );
  GTECH_MUX2 U131 ( .A(n112), .B(n116), .S(q[6]), .Z(n115) );
  GTECH_OR_NOT U132 ( .A(q[7]), .B(n117), .Z(n116) );
  GTECH_NOT U133 ( .A(q[7]), .Z(n112) );
  GTECH_NAND3 U134 ( .A(n111), .B(n95), .C(n114), .Z(N25) );
  GTECH_MUX2 U135 ( .A(n118), .B(n119), .S(q[6]), .Z(N24) );
  GTECH_AND_NOT U136 ( .A(n120), .B(n121), .Z(n118) );
  GTECH_OA21 U137 ( .A(q[4]), .B(q[5]), .C(n119), .Z(N23) );
  GTECH_NOT U138 ( .A(n113), .Z(n119) );
  GTECH_OR_NOT U139 ( .A(n117), .B(n120), .Z(n113) );
  GTECH_NOT U140 ( .A(n121), .Z(n117) );
  GTECH_OR_NOT U141 ( .A(n122), .B(q[5]), .Z(n121) );
  GTECH_NOT U142 ( .A(q[4]), .Z(n122) );
  GTECH_AND_NOT U143 ( .A(n120), .B(q[4]), .Z(N22) );
  GTECH_NOT U144 ( .A(n114), .Z(n120) );
  GTECH_NAND3 U145 ( .A(n111), .B(n95), .C(ena[1]), .Z(n114) );
  GTECH_NOT U146 ( .A(reset), .Z(n95) );
  GTECH_NAND5 U147 ( .A(n123), .B(n124), .C(ena[1]), .D(q[7]), .E(q[4]), .Z(
        n111) );
  GTECH_NOT U148 ( .A(n125), .Z(ena[1]) );
  GTECH_NOT U149 ( .A(q[6]), .Z(n124) );
  GTECH_NOT U150 ( .A(q[5]), .Z(n123) );
  GTECH_OAI22 U151 ( .A(n126), .B(n127), .C(n128), .D(n129), .Z(N13) );
  GTECH_MUX2 U152 ( .A(n126), .B(n130), .S(q[2]), .Z(n129) );
  GTECH_OR_NOT U153 ( .A(q[3]), .B(n131), .Z(n130) );
  GTECH_NOT U154 ( .A(q[3]), .Z(n126) );
  GTECH_MUX2 U155 ( .A(n132), .B(n133), .S(q[2]), .Z(N12) );
  GTECH_AND_NOT U156 ( .A(n134), .B(n135), .Z(n132) );
  GTECH_OA21 U157 ( .A(q[0]), .B(q[1]), .C(n133), .Z(N11) );
  GTECH_NOT U158 ( .A(n127), .Z(n133) );
  GTECH_OR_NOT U159 ( .A(n131), .B(n134), .Z(n127) );
  GTECH_NOT U160 ( .A(n135), .Z(n131) );
  GTECH_OR_NOT U161 ( .A(n136), .B(q[1]), .Z(n135) );
  GTECH_NOT U162 ( .A(q[0]), .Z(n136) );
  GTECH_AND_NOT U163 ( .A(n134), .B(q[0]), .Z(N10) );
  GTECH_NOT U164 ( .A(n128), .Z(n134) );
  GTECH_OR_NOT U165 ( .A(reset), .B(n125), .Z(n128) );
  GTECH_NAND4 U166 ( .A(q[3]), .B(q[0]), .C(n137), .D(n138), .Z(n125) );
  GTECH_NOT U167 ( .A(q[2]), .Z(n138) );
  GTECH_NOT U168 ( .A(q[1]), .Z(n137) );
endmodule

