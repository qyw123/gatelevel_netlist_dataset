
module bcd_counter ( clk, reset, ena, q );
  output [3:1] ena;
  output [15:0] q;
  input clk, reset;
  wire   N10, N11, N12, N13, N22, N23, N24, N25, N26, N38, N39, N40, N41, N42,
         N54, N55, N56, N57, N58, n46, n47, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133;

  GTECH_FD1 ones_reg_0_ ( .D(N10), .CP(clk), .Q(q[0]) );
  GTECH_FD1 ones_reg_2_ ( .D(N12), .CP(clk), .Q(q[2]) );
  GTECH_FD1 ones_reg_3_ ( .D(N13), .CP(clk), .Q(q[3]) );
  GTECH_FD1 ones_reg_1_ ( .D(N11), .CP(clk), .Q(q[1]) );
  GTECH_FJK2S tens_reg_0_ ( .J(n47), .K(n47), .TI(N22), .TE(N25), .CP(clk), 
        .CD(n46), .Q(q[4]) );
  GTECH_FJK2S tens_reg_2_ ( .J(n47), .K(n47), .TI(N24), .TE(N25), .CP(clk), 
        .CD(n46), .Q(q[6]) );
  GTECH_FJK2S tens_reg_3_ ( .J(n47), .K(n47), .TI(N26), .TE(N25), .CP(clk), 
        .CD(n46), .Q(q[7]) );
  GTECH_FJK2S tens_reg_1_ ( .J(n47), .K(n47), .TI(N23), .TE(N25), .CP(clk), 
        .CD(n46), .Q(q[5]) );
  GTECH_FJK2S hundreds_reg_0_ ( .J(n47), .K(n47), .TI(N38), .TE(N41), .CP(clk), 
        .CD(n46), .Q(q[8]) );
  GTECH_FJK2S hundreds_reg_2_ ( .J(n47), .K(n47), .TI(N40), .TE(N41), .CP(clk), 
        .CD(n46), .Q(q[10]) );
  GTECH_FJK2S hundreds_reg_3_ ( .J(n47), .K(n47), .TI(N42), .TE(N41), .CP(clk), 
        .CD(n46), .Q(q[11]) );
  GTECH_FJK2S hundreds_reg_1_ ( .J(n47), .K(n47), .TI(N39), .TE(N41), .CP(clk), 
        .CD(n46), .Q(q[9]) );
  GTECH_FJK2S thousands_reg_0_ ( .J(n47), .K(n47), .TI(N54), .TE(N57), .CP(clk), .CD(n46), .Q(q[12]) );
  GTECH_FJK2S thousands_reg_2_ ( .J(n47), .K(n47), .TI(N56), .TE(N57), .CP(clk), .CD(n46), .Q(q[14]) );
  GTECH_FJK2S thousands_reg_3_ ( .J(n47), .K(n47), .TI(N58), .TE(N57), .CP(clk), .CD(n46), .Q(q[15]) );
  GTECH_FJK2S thousands_reg_1_ ( .J(n47), .K(n47), .TI(N55), .TE(N57), .CP(clk), .CD(n46), .Q(q[13]) );
  GTECH_ZERO U89 ( .Z(n47) );
  GTECH_ONE U90 ( .Z(n46) );
  GTECH_MUX2 U91 ( .A(n82), .B(n83), .S(q[15]), .Z(N58) );
  GTECH_OAI21 U92 ( .A(q[14]), .B(n84), .C(n85), .Z(n83) );
  GTECH_NOT U93 ( .A(n86), .Z(n85) );
  GTECH_AND2 U94 ( .A(q[14]), .B(n87), .Z(n82) );
  GTECH_MUX2 U95 ( .A(n87), .B(n86), .S(q[14]), .Z(N56) );
  GTECH_OAI21 U96 ( .A(q[13]), .B(n84), .C(n88), .Z(n86) );
  GTECH_NOT U97 ( .A(n89), .Z(n87) );
  GTECH_NAND3 U98 ( .A(n90), .B(q[12]), .C(q[13]), .Z(n89) );
  GTECH_MUX2 U99 ( .A(n91), .B(N54), .S(q[13]), .Z(N55) );
  GTECH_AND2 U100 ( .A(n90), .B(q[12]), .Z(n91) );
  GTECH_NOT U101 ( .A(n88), .Z(N54) );
  GTECH_OR_NOT U102 ( .A(q[12]), .B(n90), .Z(n88) );
  GTECH_NOT U103 ( .A(n84), .Z(n90) );
  GTECH_NAND3 U104 ( .A(n92), .B(ena[3]), .C(n93), .Z(n84) );
  GTECH_NAND3 U105 ( .A(q[15]), .B(q[12]), .C(n94), .Z(n93) );
  GTECH_NOR2 U106 ( .A(q[13]), .B(q[14]), .Z(n94) );
  GTECH_MUX2 U107 ( .A(n95), .B(n96), .S(q[11]), .Z(N42) );
  GTECH_OAI21 U108 ( .A(q[10]), .B(n97), .C(n98), .Z(n96) );
  GTECH_NOT U109 ( .A(n99), .Z(n98) );
  GTECH_AND2 U110 ( .A(q[10]), .B(n100), .Z(n95) );
  GTECH_OR_NOT U111 ( .A(N57), .B(n97), .Z(N41) );
  GTECH_MUX2 U112 ( .A(n100), .B(n99), .S(q[10]), .Z(N40) );
  GTECH_OAI21 U113 ( .A(q[9]), .B(n97), .C(n101), .Z(n99) );
  GTECH_NOT U114 ( .A(n102), .Z(n100) );
  GTECH_NAND3 U115 ( .A(n103), .B(q[8]), .C(q[9]), .Z(n102) );
  GTECH_MUX2 U116 ( .A(n104), .B(N38), .S(q[9]), .Z(N39) );
  GTECH_AND2 U117 ( .A(n103), .B(q[8]), .Z(n104) );
  GTECH_NOT U118 ( .A(n101), .Z(N38) );
  GTECH_OR_NOT U119 ( .A(q[8]), .B(n103), .Z(n101) );
  GTECH_NOT U120 ( .A(n97), .Z(n103) );
  GTECH_OR_NOT U121 ( .A(N57), .B(ena[2]), .Z(n97) );
  GTECH_OR_NOT U122 ( .A(ena[3]), .B(n92), .Z(N57) );
  GTECH_NOT U123 ( .A(n105), .Z(ena[3]) );
  GTECH_NAND5 U124 ( .A(n106), .B(n107), .C(ena[2]), .D(q[8]), .E(q[11]), .Z(
        n105) );
  GTECH_NOT U125 ( .A(n108), .Z(ena[2]) );
  GTECH_NOT U126 ( .A(q[9]), .Z(n107) );
  GTECH_NOT U127 ( .A(q[10]), .Z(n106) );
  GTECH_MUX2 U128 ( .A(n109), .B(n110), .S(q[7]), .Z(N26) );
  GTECH_OAI21 U129 ( .A(q[6]), .B(n111), .C(n112), .Z(n110) );
  GTECH_NOT U130 ( .A(n113), .Z(n112) );
  GTECH_AND2 U131 ( .A(q[6]), .B(n114), .Z(n109) );
  GTECH_NAND3 U132 ( .A(n108), .B(n92), .C(n111), .Z(N25) );
  GTECH_MUX2 U133 ( .A(n114), .B(n113), .S(q[6]), .Z(N24) );
  GTECH_OAI21 U134 ( .A(q[5]), .B(n111), .C(n115), .Z(n113) );
  GTECH_NOT U135 ( .A(n116), .Z(n114) );
  GTECH_NAND3 U136 ( .A(n117), .B(q[4]), .C(q[5]), .Z(n116) );
  GTECH_MUX2 U137 ( .A(n118), .B(N22), .S(q[5]), .Z(N23) );
  GTECH_AND2 U138 ( .A(n117), .B(q[4]), .Z(n118) );
  GTECH_NOT U139 ( .A(n115), .Z(N22) );
  GTECH_OR_NOT U140 ( .A(q[4]), .B(n117), .Z(n115) );
  GTECH_NOT U141 ( .A(n111), .Z(n117) );
  GTECH_NAND3 U142 ( .A(n108), .B(n92), .C(ena[1]), .Z(n111) );
  GTECH_NOT U143 ( .A(reset), .Z(n92) );
  GTECH_NAND5 U144 ( .A(n119), .B(n120), .C(ena[1]), .D(q[7]), .E(q[4]), .Z(
        n108) );
  GTECH_NOT U145 ( .A(n121), .Z(ena[1]) );
  GTECH_NOT U146 ( .A(q[6]), .Z(n120) );
  GTECH_NOT U147 ( .A(q[5]), .Z(n119) );
  GTECH_MUX2 U148 ( .A(n122), .B(n123), .S(q[3]), .Z(N13) );
  GTECH_OAI21 U149 ( .A(q[2]), .B(n124), .C(n125), .Z(n123) );
  GTECH_NOT U150 ( .A(n126), .Z(n125) );
  GTECH_AND2 U151 ( .A(q[2]), .B(n127), .Z(n122) );
  GTECH_MUX2 U152 ( .A(n127), .B(n126), .S(q[2]), .Z(N12) );
  GTECH_OAI21 U153 ( .A(q[1]), .B(n124), .C(n128), .Z(n126) );
  GTECH_NOT U154 ( .A(n129), .Z(n127) );
  GTECH_NAND3 U155 ( .A(n130), .B(q[0]), .C(q[1]), .Z(n129) );
  GTECH_MUX2 U156 ( .A(n131), .B(N10), .S(q[1]), .Z(N11) );
  GTECH_AND2 U157 ( .A(n130), .B(q[0]), .Z(n131) );
  GTECH_NOT U158 ( .A(n128), .Z(N10) );
  GTECH_OR_NOT U159 ( .A(q[0]), .B(n130), .Z(n128) );
  GTECH_NOT U160 ( .A(n124), .Z(n130) );
  GTECH_OR_NOT U161 ( .A(reset), .B(n121), .Z(n124) );
  GTECH_NAND4 U162 ( .A(q[3]), .B(q[0]), .C(n132), .D(n133), .Z(n121) );
  GTECH_NOT U163 ( .A(q[2]), .Z(n133) );
  GTECH_NOT U164 ( .A(q[1]), .Z(n132) );
endmodule

