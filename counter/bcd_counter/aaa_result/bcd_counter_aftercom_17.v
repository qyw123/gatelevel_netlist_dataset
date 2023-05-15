
module bcd_counter ( clk, reset, ena, q );
  output [3:1] ena;
  output [15:0] q;
  input clk, reset;
  wire   N10, N11, N12, N13, N22, N23, N24, N25, N26, N38, N39, N40, N41, N42,
         N54, N55, N56, N57, N58, n58, n59, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141;

  GTECH_FD1 ones_reg_0_ ( .D(N10), .CP(clk), .Q(q[0]) );
  GTECH_FD1 ones_reg_2_ ( .D(N12), .CP(clk), .Q(q[2]) );
  GTECH_FD1 ones_reg_3_ ( .D(N13), .CP(clk), .Q(q[3]) );
  GTECH_FD1 ones_reg_1_ ( .D(N11), .CP(clk), .Q(q[1]) );
  GTECH_FJK2S tens_reg_0_ ( .J(n59), .K(n59), .TI(N22), .TE(N25), .CP(clk), 
        .CD(n58), .Q(q[4]) );
  GTECH_FJK2S tens_reg_2_ ( .J(n59), .K(n59), .TI(N24), .TE(N25), .CP(clk), 
        .CD(n58), .Q(q[6]) );
  GTECH_FJK2S tens_reg_3_ ( .J(n59), .K(n59), .TI(N26), .TE(N25), .CP(clk), 
        .CD(n58), .Q(q[7]) );
  GTECH_FJK2S tens_reg_1_ ( .J(n59), .K(n59), .TI(N23), .TE(N25), .CP(clk), 
        .CD(n58), .Q(q[5]) );
  GTECH_FJK2S hundreds_reg_0_ ( .J(n59), .K(n59), .TI(N38), .TE(N41), .CP(clk), 
        .CD(n58), .Q(q[8]) );
  GTECH_FJK2S hundreds_reg_2_ ( .J(n59), .K(n59), .TI(N40), .TE(N41), .CP(clk), 
        .CD(n58), .Q(q[10]) );
  GTECH_FJK2S hundreds_reg_3_ ( .J(n59), .K(n59), .TI(N42), .TE(N41), .CP(clk), 
        .CD(n58), .Q(q[11]) );
  GTECH_FJK2S hundreds_reg_1_ ( .J(n59), .K(n59), .TI(N39), .TE(N41), .CP(clk), 
        .CD(n58), .Q(q[9]) );
  GTECH_FJK2S thousands_reg_0_ ( .J(n59), .K(n59), .TI(N54), .TE(N57), .CP(clk), .CD(n58), .Q(q[12]) );
  GTECH_FJK2S thousands_reg_2_ ( .J(n59), .K(n59), .TI(N56), .TE(N57), .CP(clk), .CD(n58), .Q(q[14]) );
  GTECH_FJK2S thousands_reg_3_ ( .J(n59), .K(n59), .TI(N58), .TE(N57), .CP(clk), .CD(n58), .Q(q[15]) );
  GTECH_FJK2S thousands_reg_1_ ( .J(n59), .K(n59), .TI(N55), .TE(N57), .CP(clk), .CD(n58), .Q(q[13]) );
  GTECH_ZERO U101 ( .Z(n59) );
  GTECH_ONE U102 ( .Z(n58) );
  GTECH_OAI22 U103 ( .A(n94), .B(n95), .C(n96), .D(n97), .Z(N58) );
  GTECH_MUX2 U104 ( .A(n94), .B(n98), .S(q[14]), .Z(n97) );
  GTECH_OR_NOT U105 ( .A(n99), .B(n94), .Z(n98) );
  GTECH_NOT U106 ( .A(q[15]), .Z(n94) );
  GTECH_NAND2 U107 ( .A(n100), .B(n101), .Z(N57) );
  GTECH_MUX2 U108 ( .A(n102), .B(n103), .S(q[14]), .Z(N56) );
  GTECH_AND_NOT U109 ( .A(n104), .B(n99), .Z(n102) );
  GTECH_OA21 U110 ( .A(q[12]), .B(q[13]), .C(n103), .Z(N55) );
  GTECH_NOT U111 ( .A(n95), .Z(n103) );
  GTECH_NAND2 U112 ( .A(n104), .B(n99), .Z(n95) );
  GTECH_NAND2 U113 ( .A(q[13]), .B(q[12]), .Z(n99) );
  GTECH_AND_NOT U114 ( .A(n104), .B(q[12]), .Z(N54) );
  GTECH_NOT U115 ( .A(n96), .Z(n104) );
  GTECH_NAND3 U116 ( .A(n101), .B(ena[3]), .C(n105), .Z(n96) );
  GTECH_NAND3 U117 ( .A(q[15]), .B(q[12]), .C(n106), .Z(n105) );
  GTECH_NOR2 U118 ( .A(q[13]), .B(q[14]), .Z(n106) );
  GTECH_NOT U119 ( .A(n100), .Z(ena[3]) );
  GTECH_OAI22 U120 ( .A(n107), .B(n108), .C(n109), .D(n110), .Z(N42) );
  GTECH_MUX2 U121 ( .A(n107), .B(n111), .S(q[10]), .Z(n110) );
  GTECH_OR_NOT U122 ( .A(n112), .B(n107), .Z(n111) );
  GTECH_NOT U123 ( .A(q[11]), .Z(n107) );
  GTECH_NAND3 U124 ( .A(n109), .B(n101), .C(n100), .Z(N41) );
  GTECH_MUX2 U125 ( .A(n113), .B(n114), .S(q[10]), .Z(N40) );
  GTECH_AND_NOT U126 ( .A(n115), .B(n112), .Z(n113) );
  GTECH_OA21 U127 ( .A(q[8]), .B(q[9]), .C(n114), .Z(N39) );
  GTECH_NOT U128 ( .A(n108), .Z(n114) );
  GTECH_NAND2 U129 ( .A(n115), .B(n112), .Z(n108) );
  GTECH_NAND2 U130 ( .A(q[9]), .B(q[8]), .Z(n112) );
  GTECH_AND_NOT U131 ( .A(n115), .B(q[8]), .Z(N38) );
  GTECH_NOT U132 ( .A(n109), .Z(n115) );
  GTECH_NAND3 U133 ( .A(n100), .B(n101), .C(ena[2]), .Z(n109) );
  GTECH_NAND5 U134 ( .A(n116), .B(n117), .C(ena[2]), .D(q[8]), .E(q[11]), .Z(
        n100) );
  GTECH_NOT U135 ( .A(n118), .Z(ena[2]) );
  GTECH_NOT U136 ( .A(q[9]), .Z(n117) );
  GTECH_NOT U137 ( .A(q[10]), .Z(n116) );
  GTECH_OAI22 U138 ( .A(n119), .B(n120), .C(n121), .D(n122), .Z(N26) );
  GTECH_MUX2 U139 ( .A(n119), .B(n123), .S(q[6]), .Z(n122) );
  GTECH_OR_NOT U140 ( .A(n124), .B(n119), .Z(n123) );
  GTECH_NOT U141 ( .A(q[7]), .Z(n119) );
  GTECH_NAND3 U142 ( .A(n121), .B(n101), .C(n118), .Z(N25) );
  GTECH_MUX2 U143 ( .A(n125), .B(n126), .S(q[6]), .Z(N24) );
  GTECH_AND_NOT U144 ( .A(n127), .B(n124), .Z(n125) );
  GTECH_OA21 U145 ( .A(q[4]), .B(q[5]), .C(n126), .Z(N23) );
  GTECH_NOT U146 ( .A(n120), .Z(n126) );
  GTECH_NAND2 U147 ( .A(n127), .B(n124), .Z(n120) );
  GTECH_NAND2 U148 ( .A(q[5]), .B(q[4]), .Z(n124) );
  GTECH_AND_NOT U149 ( .A(n127), .B(q[4]), .Z(N22) );
  GTECH_NOT U150 ( .A(n121), .Z(n127) );
  GTECH_NAND3 U151 ( .A(n118), .B(n101), .C(ena[1]), .Z(n121) );
  GTECH_NAND5 U152 ( .A(n128), .B(n129), .C(ena[1]), .D(q[7]), .E(q[4]), .Z(
        n118) );
  GTECH_NOT U153 ( .A(n130), .Z(ena[1]) );
  GTECH_NOT U154 ( .A(q[6]), .Z(n129) );
  GTECH_NOT U155 ( .A(q[5]), .Z(n128) );
  GTECH_OAI22 U156 ( .A(n131), .B(n132), .C(n133), .D(n134), .Z(N13) );
  GTECH_MUX2 U157 ( .A(n131), .B(n135), .S(q[2]), .Z(n134) );
  GTECH_OR_NOT U158 ( .A(n136), .B(n131), .Z(n135) );
  GTECH_NOT U159 ( .A(q[3]), .Z(n131) );
  GTECH_MUX2 U160 ( .A(n137), .B(n138), .S(q[2]), .Z(N12) );
  GTECH_AND_NOT U161 ( .A(n139), .B(n136), .Z(n137) );
  GTECH_OA21 U162 ( .A(q[0]), .B(q[1]), .C(n138), .Z(N11) );
  GTECH_NOT U163 ( .A(n132), .Z(n138) );
  GTECH_NAND2 U164 ( .A(n139), .B(n136), .Z(n132) );
  GTECH_NAND2 U165 ( .A(q[1]), .B(q[0]), .Z(n136) );
  GTECH_AND_NOT U166 ( .A(n139), .B(q[0]), .Z(N10) );
  GTECH_NOT U167 ( .A(n133), .Z(n139) );
  GTECH_NAND2 U168 ( .A(n130), .B(n101), .Z(n133) );
  GTECH_NOT U169 ( .A(reset), .Z(n101) );
  GTECH_NAND4 U170 ( .A(q[3]), .B(q[0]), .C(n140), .D(n141), .Z(n130) );
  GTECH_NOT U171 ( .A(q[2]), .Z(n141) );
  GTECH_NOT U172 ( .A(q[1]), .Z(n140) );
endmodule

