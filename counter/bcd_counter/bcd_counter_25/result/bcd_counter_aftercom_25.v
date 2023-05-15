
module bcd_counter ( clk, reset, ena, q );
  output [3:1] ena;
  output [15:0] q;
  input clk, reset;
  wire   N10, N11, N12, N13, N22, N23, N24, N25, N26, N38, N39, N40, N41, N42,
         N54, N55, N56, N57, N58, n50, n51, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138;

  GTECH_FD1 ones_reg_0_ ( .D(N10), .CP(clk), .Q(q[0]) );
  GTECH_FD1 ones_reg_2_ ( .D(N12), .CP(clk), .Q(q[2]) );
  GTECH_FD1 ones_reg_1_ ( .D(N11), .CP(clk), .Q(q[1]) );
  GTECH_FD1 ones_reg_3_ ( .D(N13), .CP(clk), .Q(q[3]) );
  GTECH_FJK2S tens_reg_0_ ( .J(n51), .K(n51), .TI(N22), .TE(N25), .CP(clk), 
        .CD(n50), .Q(q[4]) );
  GTECH_FJK2S tens_reg_2_ ( .J(n51), .K(n51), .TI(N24), .TE(N25), .CP(clk), 
        .CD(n50), .Q(q[6]) );
  GTECH_FJK2S tens_reg_1_ ( .J(n51), .K(n51), .TI(N23), .TE(N25), .CP(clk), 
        .CD(n50), .Q(q[5]) );
  GTECH_FJK2S tens_reg_3_ ( .J(n51), .K(n51), .TI(N26), .TE(N25), .CP(clk), 
        .CD(n50), .Q(q[7]) );
  GTECH_FJK2S hundreds_reg_0_ ( .J(n51), .K(n51), .TI(N38), .TE(N41), .CP(clk), 
        .CD(n50), .Q(q[8]) );
  GTECH_FJK2S hundreds_reg_2_ ( .J(n51), .K(n51), .TI(N40), .TE(N41), .CP(clk), 
        .CD(n50), .Q(q[10]) );
  GTECH_FJK2S hundreds_reg_1_ ( .J(n51), .K(n51), .TI(N39), .TE(N41), .CP(clk), 
        .CD(n50), .Q(q[9]) );
  GTECH_FJK2S hundreds_reg_3_ ( .J(n51), .K(n51), .TI(N42), .TE(N41), .CP(clk), 
        .CD(n50), .Q(q[11]) );
  GTECH_FJK2S thousands_reg_0_ ( .J(n51), .K(n51), .TI(N54), .TE(N57), .CP(clk), .CD(n50), .Q(q[12]) );
  GTECH_FJK2S thousands_reg_2_ ( .J(n51), .K(n51), .TI(N56), .TE(N57), .CP(clk), .CD(n50), .Q(q[14]) );
  GTECH_FJK2S thousands_reg_1_ ( .J(n51), .K(n51), .TI(N55), .TE(N57), .CP(clk), .CD(n50), .Q(q[13]) );
  GTECH_FJK2S thousands_reg_3_ ( .J(n51), .K(n51), .TI(N58), .TE(N57), .CP(clk), .CD(n50), .Q(q[15]) );
  GTECH_ZERO U93 ( .Z(n51) );
  GTECH_ONE U94 ( .Z(n50) );
  GTECH_MUX2 U95 ( .A(n86), .B(n87), .S(q[15]), .Z(N58) );
  GTECH_AO21 U96 ( .A(n88), .B(n89), .C(n90), .Z(n87) );
  GTECH_AND2 U97 ( .A(q[14]), .B(n91), .Z(n86) );
  GTECH_MUX2 U98 ( .A(n91), .B(n90), .S(q[14]), .Z(N56) );
  GTECH_AO21 U99 ( .A(n88), .B(n92), .C(N54), .Z(n90) );
  GTECH_NOT U100 ( .A(n93), .Z(n91) );
  GTECH_NAND3 U101 ( .A(n88), .B(q[12]), .C(q[13]), .Z(n93) );
  GTECH_MUX2 U102 ( .A(n94), .B(N54), .S(q[13]), .Z(N55) );
  GTECH_AND2 U103 ( .A(n88), .B(q[12]), .Z(n94) );
  GTECH_NOT U104 ( .A(n95), .Z(N54) );
  GTECH_NAND2 U105 ( .A(n88), .B(n96), .Z(n95) );
  GTECH_NOT U106 ( .A(q[12]), .Z(n96) );
  GTECH_AND3 U107 ( .A(n97), .B(ena[3]), .C(n98), .Z(n88) );
  GTECH_NAND4 U108 ( .A(q[15]), .B(q[12]), .C(n92), .D(n89), .Z(n98) );
  GTECH_NOT U109 ( .A(q[14]), .Z(n89) );
  GTECH_NOT U110 ( .A(q[13]), .Z(n92) );
  GTECH_NOT U111 ( .A(n99), .Z(ena[3]) );
  GTECH_MUX2 U112 ( .A(n100), .B(n101), .S(q[11]), .Z(N42) );
  GTECH_AO21 U113 ( .A(n102), .B(n103), .C(n104), .Z(n101) );
  GTECH_AND2 U114 ( .A(q[10]), .B(n105), .Z(n100) );
  GTECH_NAND2 U115 ( .A(n106), .B(n107), .Z(N41) );
  GTECH_MUX2 U116 ( .A(n105), .B(n104), .S(q[10]), .Z(N40) );
  GTECH_AO21 U117 ( .A(n102), .B(n108), .C(N38), .Z(n104) );
  GTECH_NOT U118 ( .A(n109), .Z(n105) );
  GTECH_NAND3 U119 ( .A(n102), .B(q[8]), .C(q[9]), .Z(n109) );
  GTECH_MUX2 U120 ( .A(n110), .B(N38), .S(q[9]), .Z(N39) );
  GTECH_AND2 U121 ( .A(n102), .B(q[8]), .Z(n110) );
  GTECH_NOT U122 ( .A(n111), .Z(N38) );
  GTECH_NAND2 U123 ( .A(n102), .B(n112), .Z(n111) );
  GTECH_NOT U124 ( .A(q[8]), .Z(n112) );
  GTECH_NOT U125 ( .A(n106), .Z(n102) );
  GTECH_NAND2 U126 ( .A(ena[2]), .B(n107), .Z(n106) );
  GTECH_NOT U127 ( .A(N57), .Z(n107) );
  GTECH_NAND2 U128 ( .A(n97), .B(n99), .Z(N57) );
  GTECH_NAND5 U129 ( .A(n103), .B(n108), .C(ena[2]), .D(q[8]), .E(q[11]), .Z(
        n99) );
  GTECH_NOT U130 ( .A(q[9]), .Z(n108) );
  GTECH_NOT U131 ( .A(q[10]), .Z(n103) );
  GTECH_NOT U132 ( .A(n113), .Z(ena[2]) );
  GTECH_MUX2 U133 ( .A(n114), .B(n115), .S(q[7]), .Z(N26) );
  GTECH_AO21 U134 ( .A(n116), .B(n117), .C(n118), .Z(n115) );
  GTECH_AND2 U135 ( .A(q[6]), .B(n119), .Z(n114) );
  GTECH_NAND3 U136 ( .A(n113), .B(n97), .C(n120), .Z(N25) );
  GTECH_MUX2 U137 ( .A(n119), .B(n118), .S(q[6]), .Z(N24) );
  GTECH_AO21 U138 ( .A(n116), .B(n121), .C(N22), .Z(n118) );
  GTECH_NOT U139 ( .A(n122), .Z(n119) );
  GTECH_NAND3 U140 ( .A(n116), .B(q[4]), .C(q[5]), .Z(n122) );
  GTECH_MUX2 U141 ( .A(n123), .B(N22), .S(q[5]), .Z(N23) );
  GTECH_AND2 U142 ( .A(n116), .B(q[4]), .Z(n123) );
  GTECH_NOT U143 ( .A(n124), .Z(N22) );
  GTECH_NAND2 U144 ( .A(n116), .B(n125), .Z(n124) );
  GTECH_NOT U145 ( .A(q[4]), .Z(n125) );
  GTECH_NOT U146 ( .A(n120), .Z(n116) );
  GTECH_NAND3 U147 ( .A(n113), .B(n97), .C(ena[1]), .Z(n120) );
  GTECH_NAND5 U148 ( .A(n121), .B(n117), .C(ena[1]), .D(q[7]), .E(q[4]), .Z(
        n113) );
  GTECH_NOT U149 ( .A(n126), .Z(ena[1]) );
  GTECH_NOT U150 ( .A(q[6]), .Z(n117) );
  GTECH_NOT U151 ( .A(q[5]), .Z(n121) );
  GTECH_MUX2 U152 ( .A(n127), .B(n128), .S(q[3]), .Z(N13) );
  GTECH_AO21 U153 ( .A(n129), .B(n130), .C(n131), .Z(n128) );
  GTECH_AND2 U154 ( .A(q[2]), .B(n132), .Z(n127) );
  GTECH_MUX2 U155 ( .A(n132), .B(n131), .S(q[2]), .Z(N12) );
  GTECH_AO21 U156 ( .A(n129), .B(n133), .C(N10), .Z(n131) );
  GTECH_NOT U157 ( .A(n134), .Z(n132) );
  GTECH_NAND3 U158 ( .A(n129), .B(q[0]), .C(q[1]), .Z(n134) );
  GTECH_MUX2 U159 ( .A(n135), .B(N10), .S(q[1]), .Z(N11) );
  GTECH_AND2 U160 ( .A(n129), .B(q[0]), .Z(n135) );
  GTECH_NOT U161 ( .A(n136), .Z(N10) );
  GTECH_NAND2 U162 ( .A(n129), .B(n137), .Z(n136) );
  GTECH_NOT U163 ( .A(q[0]), .Z(n137) );
  GTECH_NOT U164 ( .A(n138), .Z(n129) );
  GTECH_NAND2 U165 ( .A(n126), .B(n97), .Z(n138) );
  GTECH_NOT U166 ( .A(reset), .Z(n97) );
  GTECH_NAND4 U167 ( .A(q[3]), .B(q[0]), .C(n133), .D(n130), .Z(n126) );
  GTECH_NOT U168 ( .A(q[2]), .Z(n130) );
  GTECH_NOT U169 ( .A(q[1]), .Z(n133) );
endmodule

