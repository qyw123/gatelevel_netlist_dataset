
module bcd_counter ( clk, reset, ena, q );
  output [3:1] ena;
  output [15:0] q;
  input clk, reset;
  wire   N10, N11, N12, N13, N22, N23, N24, N25, N26, N38, N39, N40, N41, N42,
         N54, N55, N56, N57, N58, n54, n55, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145;

  GTECH_FD1 ones_reg_0_ ( .D(N10), .CP(clk), .Q(q[0]) );
  GTECH_FD1 ones_reg_2_ ( .D(N12), .CP(clk), .Q(q[2]) );
  GTECH_FD1 ones_reg_1_ ( .D(N11), .CP(clk), .Q(q[1]) );
  GTECH_FD1 ones_reg_3_ ( .D(N13), .CP(clk), .Q(q[3]) );
  GTECH_FJK2S tens_reg_0_ ( .J(n55), .K(n55), .TI(N22), .TE(N25), .CP(clk), 
        .CD(n54), .Q(q[4]) );
  GTECH_FJK2S tens_reg_2_ ( .J(n55), .K(n55), .TI(N24), .TE(N25), .CP(clk), 
        .CD(n54), .Q(q[6]) );
  GTECH_FJK2S tens_reg_3_ ( .J(n55), .K(n55), .TI(N26), .TE(N25), .CP(clk), 
        .CD(n54), .Q(q[7]) );
  GTECH_FJK2S tens_reg_1_ ( .J(n55), .K(n55), .TI(N23), .TE(N25), .CP(clk), 
        .CD(n54), .Q(q[5]) );
  GTECH_FJK2S hundreds_reg_0_ ( .J(n55), .K(n55), .TI(N38), .TE(N41), .CP(clk), 
        .CD(n54), .Q(q[8]) );
  GTECH_FJK2S hundreds_reg_2_ ( .J(n55), .K(n55), .TI(N40), .TE(N41), .CP(clk), 
        .CD(n54), .Q(q[10]) );
  GTECH_FJK2S hundreds_reg_1_ ( .J(n55), .K(n55), .TI(N39), .TE(N41), .CP(clk), 
        .CD(n54), .Q(q[9]) );
  GTECH_FJK2S hundreds_reg_3_ ( .J(n55), .K(n55), .TI(N42), .TE(N41), .CP(clk), 
        .CD(n54), .Q(q[11]) );
  GTECH_FJK2S thousands_reg_0_ ( .J(n55), .K(n55), .TI(N54), .TE(N57), .CP(clk), .CD(n54), .Q(q[12]) );
  GTECH_FJK2S thousands_reg_2_ ( .J(n55), .K(n55), .TI(N56), .TE(N57), .CP(clk), .CD(n54), .Q(q[14]) );
  GTECH_FJK2S thousands_reg_3_ ( .J(n55), .K(n55), .TI(N58), .TE(N57), .CP(clk), .CD(n54), .Q(q[15]) );
  GTECH_FJK2S thousands_reg_1_ ( .J(n55), .K(n55), .TI(N55), .TE(N57), .CP(clk), .CD(n54), .Q(q[13]) );
  GTECH_ZERO U95 ( .Z(n55) );
  GTECH_ONE U96 ( .Z(n54) );
  GTECH_MUX2 U97 ( .A(n88), .B(n89), .S(q[15]), .Z(N58) );
  GTECH_OAI21 U98 ( .A(q[14]), .B(n90), .C(n91), .Z(n89) );
  GTECH_NOT U99 ( .A(n92), .Z(n91) );
  GTECH_AND2 U100 ( .A(q[14]), .B(n93), .Z(n88) );
  GTECH_OR3 U101 ( .A(reset), .B(n94), .C(n95), .Z(N57) );
  GTECH_MUX2 U102 ( .A(n93), .B(n92), .S(q[14]), .Z(N56) );
  GTECH_OAI21 U103 ( .A(q[13]), .B(n90), .C(n96), .Z(n92) );
  GTECH_NOT U104 ( .A(n97), .Z(n93) );
  GTECH_OR3 U105 ( .A(n98), .B(n90), .C(n99), .Z(n97) );
  GTECH_MUX2 U106 ( .A(n100), .B(N54), .S(q[13]), .Z(N55) );
  GTECH_AND2 U107 ( .A(n95), .B(q[12]), .Z(n100) );
  GTECH_NOT U108 ( .A(n96), .Z(N54) );
  GTECH_NAND2 U109 ( .A(n95), .B(n98), .Z(n96) );
  GTECH_NOT U110 ( .A(q[12]), .Z(n98) );
  GTECH_NOT U111 ( .A(n90), .Z(n95) );
  GTECH_OR3 U112 ( .A(reset), .B(n94), .C(n101), .Z(n90) );
  GTECH_NOT U113 ( .A(n102), .Z(n94) );
  GTECH_NAND5 U114 ( .A(n99), .B(n103), .C(ena[3]), .D(q[15]), .E(q[12]), .Z(
        n102) );
  GTECH_NOT U115 ( .A(q[14]), .Z(n103) );
  GTECH_NOT U116 ( .A(q[13]), .Z(n99) );
  GTECH_MUX2 U117 ( .A(n104), .B(n105), .S(q[11]), .Z(N42) );
  GTECH_OAI21 U118 ( .A(q[10]), .B(n106), .C(n107), .Z(n105) );
  GTECH_NOT U119 ( .A(n108), .Z(n107) );
  GTECH_AND2 U120 ( .A(q[10]), .B(n109), .Z(n104) );
  GTECH_OR3 U121 ( .A(reset), .B(n110), .C(ena[3]), .Z(N41) );
  GTECH_MUX2 U122 ( .A(n109), .B(n108), .S(q[10]), .Z(N40) );
  GTECH_OAI21 U123 ( .A(q[9]), .B(n106), .C(n111), .Z(n108) );
  GTECH_NOT U124 ( .A(n112), .Z(n109) );
  GTECH_OR3 U125 ( .A(n113), .B(n106), .C(n114), .Z(n112) );
  GTECH_MUX2 U126 ( .A(n115), .B(N38), .S(q[9]), .Z(N39) );
  GTECH_AND2 U127 ( .A(n110), .B(q[8]), .Z(n115) );
  GTECH_NOT U128 ( .A(n111), .Z(N38) );
  GTECH_NAND2 U129 ( .A(n110), .B(n113), .Z(n111) );
  GTECH_NOT U130 ( .A(q[8]), .Z(n113) );
  GTECH_NOT U131 ( .A(n106), .Z(n110) );
  GTECH_OR3 U132 ( .A(reset), .B(ena[3]), .C(n116), .Z(n106) );
  GTECH_NOT U133 ( .A(n101), .Z(ena[3]) );
  GTECH_NAND5 U134 ( .A(n117), .B(n114), .C(ena[2]), .D(q[8]), .E(q[11]), .Z(
        n101) );
  GTECH_NOT U135 ( .A(q[9]), .Z(n114) );
  GTECH_NOT U136 ( .A(q[10]), .Z(n117) );
  GTECH_MUX2 U137 ( .A(n118), .B(n119), .S(q[7]), .Z(N26) );
  GTECH_OAI21 U138 ( .A(q[6]), .B(n120), .C(n121), .Z(n119) );
  GTECH_NOT U139 ( .A(n122), .Z(n121) );
  GTECH_AND2 U140 ( .A(q[6]), .B(n123), .Z(n118) );
  GTECH_OR3 U141 ( .A(reset), .B(ena[2]), .C(n124), .Z(N25) );
  GTECH_MUX2 U142 ( .A(n123), .B(n122), .S(q[6]), .Z(N24) );
  GTECH_OAI21 U143 ( .A(q[5]), .B(n120), .C(n125), .Z(n122) );
  GTECH_NOT U144 ( .A(n126), .Z(n123) );
  GTECH_OR3 U145 ( .A(n127), .B(n120), .C(n128), .Z(n126) );
  GTECH_MUX2 U146 ( .A(n129), .B(N22), .S(q[5]), .Z(N23) );
  GTECH_AND2 U147 ( .A(n124), .B(q[4]), .Z(n129) );
  GTECH_NOT U148 ( .A(n125), .Z(N22) );
  GTECH_NAND2 U149 ( .A(n124), .B(n127), .Z(n125) );
  GTECH_NOT U150 ( .A(q[4]), .Z(n127) );
  GTECH_NOT U151 ( .A(n120), .Z(n124) );
  GTECH_OR3 U152 ( .A(reset), .B(ena[2]), .C(n130), .Z(n120) );
  GTECH_NOT U153 ( .A(n116), .Z(ena[2]) );
  GTECH_NAND5 U154 ( .A(n128), .B(n131), .C(ena[1]), .D(q[7]), .E(q[4]), .Z(
        n116) );
  GTECH_NOT U155 ( .A(n130), .Z(ena[1]) );
  GTECH_NOT U156 ( .A(q[6]), .Z(n131) );
  GTECH_NOT U157 ( .A(q[5]), .Z(n128) );
  GTECH_MUX2 U158 ( .A(n132), .B(n133), .S(q[3]), .Z(N13) );
  GTECH_OAI21 U159 ( .A(q[2]), .B(n134), .C(n135), .Z(n133) );
  GTECH_NOT U160 ( .A(n136), .Z(n135) );
  GTECH_AND2 U161 ( .A(q[2]), .B(n137), .Z(n132) );
  GTECH_MUX2 U162 ( .A(n137), .B(n136), .S(q[2]), .Z(N12) );
  GTECH_OAI21 U163 ( .A(q[1]), .B(n134), .C(n138), .Z(n136) );
  GTECH_NOT U164 ( .A(n139), .Z(n137) );
  GTECH_OR3 U165 ( .A(n140), .B(n134), .C(n141), .Z(n139) );
  GTECH_MUX2 U166 ( .A(n142), .B(N10), .S(q[1]), .Z(N11) );
  GTECH_AND2 U167 ( .A(n143), .B(q[0]), .Z(n142) );
  GTECH_NOT U168 ( .A(n138), .Z(N10) );
  GTECH_NAND2 U169 ( .A(n143), .B(n140), .Z(n138) );
  GTECH_NOT U170 ( .A(q[0]), .Z(n140) );
  GTECH_NOT U171 ( .A(n134), .Z(n143) );
  GTECH_NAND2 U172 ( .A(n130), .B(n144), .Z(n134) );
  GTECH_NOT U173 ( .A(reset), .Z(n144) );
  GTECH_NAND4 U174 ( .A(q[3]), .B(q[0]), .C(n141), .D(n145), .Z(n130) );
  GTECH_NOT U175 ( .A(q[2]), .Z(n145) );
  GTECH_NOT U176 ( .A(q[1]), .Z(n141) );
endmodule

