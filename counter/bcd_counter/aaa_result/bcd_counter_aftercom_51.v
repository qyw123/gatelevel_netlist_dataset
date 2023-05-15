
module bcd_counter ( clk, reset, ena, q );
  output [3:1] ena;
  output [15:0] q;
  input clk, reset;
  wire   N10, N11, N12, N13, N22, N23, N24, N25, N26, N38, N39, N40, N41, N42,
         N54, N55, N56, N57, N58, n47, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139;

  GTECH_FD1 ones_reg_0_ ( .D(N10), .CP(clk), .Q(q[0]) );
  GTECH_FD1 ones_reg_2_ ( .D(N12), .CP(clk), .Q(q[2]) );
  GTECH_FD1 ones_reg_1_ ( .D(N11), .CP(clk), .Q(q[1]) );
  GTECH_FD1 ones_reg_3_ ( .D(N13), .CP(clk), .Q(q[3]) );
  GTECH_FJK2S tens_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N22), .TE(N25), .CP(clk), 
        .CD(n47), .Q(q[4]) );
  GTECH_FJK2S tens_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N24), .TE(N25), .CP(clk), 
        .CD(n47), .Q(q[6]) );
  GTECH_FJK2S tens_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N23), .TE(N25), .CP(clk), 
        .CD(n47), .Q(q[5]) );
  GTECH_FJK2S tens_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N26), .TE(N25), .CP(clk), 
        .CD(n47), .Q(q[7]) );
  GTECH_FJK2S hundreds_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N38), .TE(N41), .CP(
        clk), .CD(n47), .Q(q[8]) );
  GTECH_FJK2S hundreds_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N40), .TE(N41), .CP(
        clk), .CD(n47), .Q(q[10]) );
  GTECH_FJK2S hundreds_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N39), .TE(N41), .CP(
        clk), .CD(n47), .Q(q[9]) );
  GTECH_FJK2S hundreds_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N42), .TE(N41), .CP(
        clk), .CD(n47), .Q(q[11]) );
  GTECH_FJK2S thousands_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N54), .TE(N57), .CP(
        clk), .CD(n47), .Q(q[12]) );
  GTECH_FJK2S thousands_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N56), .TE(N57), .CP(
        clk), .CD(n47), .Q(q[14]) );
  GTECH_FJK2S thousands_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N55), .TE(N57), .CP(
        clk), .CD(n47), .Q(q[13]) );
  GTECH_FJK2S thousands_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N58), .TE(N57), .CP(
        clk), .CD(n47), .Q(q[15]) );
  GTECH_ONE U90 ( .Z(n47) );
  GTECH_MUX2 U91 ( .A(n83), .B(n84), .S(q[15]), .Z(N58) );
  GTECH_OAI21 U92 ( .A(q[14]), .B(n85), .C(n86), .Z(n84) );
  GTECH_NOT U93 ( .A(n87), .Z(n86) );
  GTECH_AND2 U94 ( .A(q[14]), .B(n88), .Z(n83) );
  GTECH_NAND3 U95 ( .A(n89), .B(n90), .C(n85), .Z(N57) );
  GTECH_MUX2 U96 ( .A(n88), .B(n87), .S(q[14]), .Z(N56) );
  GTECH_OAI21 U97 ( .A(q[13]), .B(n85), .C(n91), .Z(n87) );
  GTECH_NOT U98 ( .A(n92), .Z(n88) );
  GTECH_NAND3 U99 ( .A(n93), .B(q[12]), .C(q[13]), .Z(n92) );
  GTECH_MUX2 U100 ( .A(n94), .B(N54), .S(q[13]), .Z(N55) );
  GTECH_AND2 U101 ( .A(n93), .B(q[12]), .Z(n94) );
  GTECH_NOT U102 ( .A(n91), .Z(N54) );
  GTECH_NAND2 U103 ( .A(n93), .B(n95), .Z(n91) );
  GTECH_NOT U104 ( .A(q[12]), .Z(n95) );
  GTECH_NOT U105 ( .A(n85), .Z(n93) );
  GTECH_NAND3 U106 ( .A(n89), .B(n90), .C(ena[3]), .Z(n85) );
  GTECH_NAND5 U107 ( .A(n96), .B(n97), .C(ena[3]), .D(q[15]), .E(q[12]), .Z(
        n89) );
  GTECH_NOT U108 ( .A(n98), .Z(ena[3]) );
  GTECH_NOT U109 ( .A(q[14]), .Z(n97) );
  GTECH_NOT U110 ( .A(q[13]), .Z(n96) );
  GTECH_MUX2 U111 ( .A(n99), .B(n100), .S(q[11]), .Z(N42) );
  GTECH_OAI21 U112 ( .A(q[10]), .B(n101), .C(n102), .Z(n100) );
  GTECH_NOT U113 ( .A(n103), .Z(n102) );
  GTECH_AND2 U114 ( .A(q[10]), .B(n104), .Z(n99) );
  GTECH_NAND3 U115 ( .A(n101), .B(n90), .C(n98), .Z(N41) );
  GTECH_MUX2 U116 ( .A(n104), .B(n103), .S(q[10]), .Z(N40) );
  GTECH_OAI21 U117 ( .A(q[9]), .B(n101), .C(n105), .Z(n103) );
  GTECH_NOT U118 ( .A(n106), .Z(n104) );
  GTECH_NAND3 U119 ( .A(n107), .B(q[8]), .C(q[9]), .Z(n106) );
  GTECH_MUX2 U120 ( .A(n108), .B(N38), .S(q[9]), .Z(N39) );
  GTECH_AND2 U121 ( .A(n107), .B(q[8]), .Z(n108) );
  GTECH_NOT U122 ( .A(n105), .Z(N38) );
  GTECH_NAND2 U123 ( .A(n107), .B(n109), .Z(n105) );
  GTECH_NOT U124 ( .A(q[8]), .Z(n109) );
  GTECH_NOT U125 ( .A(n101), .Z(n107) );
  GTECH_NAND3 U126 ( .A(n98), .B(n90), .C(ena[2]), .Z(n101) );
  GTECH_NAND5 U127 ( .A(n110), .B(n111), .C(ena[2]), .D(q[8]), .E(q[11]), .Z(
        n98) );
  GTECH_NOT U128 ( .A(n112), .Z(ena[2]) );
  GTECH_NOT U129 ( .A(q[9]), .Z(n111) );
  GTECH_NOT U130 ( .A(q[10]), .Z(n110) );
  GTECH_MUX2 U131 ( .A(n113), .B(n114), .S(q[7]), .Z(N26) );
  GTECH_OAI21 U132 ( .A(q[6]), .B(n115), .C(n116), .Z(n114) );
  GTECH_NOT U133 ( .A(n117), .Z(n116) );
  GTECH_AND2 U134 ( .A(q[6]), .B(n118), .Z(n113) );
  GTECH_NAND3 U135 ( .A(n115), .B(n90), .C(n112), .Z(N25) );
  GTECH_MUX2 U136 ( .A(n118), .B(n117), .S(q[6]), .Z(N24) );
  GTECH_OAI21 U137 ( .A(q[5]), .B(n115), .C(n119), .Z(n117) );
  GTECH_NOT U138 ( .A(n120), .Z(n118) );
  GTECH_NAND3 U139 ( .A(n121), .B(q[4]), .C(q[5]), .Z(n120) );
  GTECH_MUX2 U140 ( .A(n122), .B(N22), .S(q[5]), .Z(N23) );
  GTECH_AND2 U141 ( .A(n121), .B(q[4]), .Z(n122) );
  GTECH_NOT U142 ( .A(n119), .Z(N22) );
  GTECH_NAND2 U143 ( .A(n121), .B(n123), .Z(n119) );
  GTECH_NOT U144 ( .A(q[4]), .Z(n123) );
  GTECH_NOT U145 ( .A(n115), .Z(n121) );
  GTECH_NAND3 U146 ( .A(n112), .B(n90), .C(ena[1]), .Z(n115) );
  GTECH_NAND5 U147 ( .A(n124), .B(n125), .C(ena[1]), .D(q[7]), .E(q[4]), .Z(
        n112) );
  GTECH_NOT U148 ( .A(n126), .Z(ena[1]) );
  GTECH_NOT U149 ( .A(q[6]), .Z(n125) );
  GTECH_NOT U150 ( .A(q[5]), .Z(n124) );
  GTECH_MUX2 U151 ( .A(n127), .B(n128), .S(q[3]), .Z(N13) );
  GTECH_OAI21 U152 ( .A(q[2]), .B(n129), .C(n130), .Z(n128) );
  GTECH_NOT U153 ( .A(n131), .Z(n130) );
  GTECH_AND2 U154 ( .A(q[2]), .B(n132), .Z(n127) );
  GTECH_MUX2 U155 ( .A(n132), .B(n131), .S(q[2]), .Z(N12) );
  GTECH_OAI21 U156 ( .A(q[1]), .B(n129), .C(n133), .Z(n131) );
  GTECH_NOT U157 ( .A(n134), .Z(n132) );
  GTECH_NAND3 U158 ( .A(n135), .B(q[0]), .C(q[1]), .Z(n134) );
  GTECH_MUX2 U159 ( .A(n136), .B(N10), .S(q[1]), .Z(N11) );
  GTECH_AND2 U160 ( .A(n135), .B(q[0]), .Z(n136) );
  GTECH_NOT U161 ( .A(n133), .Z(N10) );
  GTECH_NAND2 U162 ( .A(n135), .B(n137), .Z(n133) );
  GTECH_NOT U163 ( .A(q[0]), .Z(n137) );
  GTECH_NOT U164 ( .A(n129), .Z(n135) );
  GTECH_NAND2 U165 ( .A(n126), .B(n90), .Z(n129) );
  GTECH_NOT U166 ( .A(reset), .Z(n90) );
  GTECH_NAND4 U167 ( .A(q[3]), .B(q[0]), .C(n138), .D(n139), .Z(n126) );
  GTECH_NOT U168 ( .A(q[2]), .Z(n139) );
  GTECH_NOT U169 ( .A(q[1]), .Z(n138) );
endmodule

