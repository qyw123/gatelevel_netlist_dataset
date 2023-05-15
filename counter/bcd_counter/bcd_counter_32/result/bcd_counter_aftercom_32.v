
module bcd_counter ( clk, reset, ena, q );
  output [3:1] ena;
  output [15:0] q;
  input clk, reset;
  wire   N10, N11, N12, N13, N22, N23, N24, N25, N26, N38, N39, N40, N41, N42,
         N54, N55, N56, N57, N58, n48, n47, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143;

  GTECH_FD2 ones_reg_0_ ( .D(N10), .CP(clk), .CD(n47), .Q(q[0]) );
  GTECH_FD2 ones_reg_2_ ( .D(N12), .CP(clk), .CD(n47), .Q(q[2]) );
  GTECH_FD2 ones_reg_1_ ( .D(N11), .CP(clk), .CD(n47), .Q(q[1]) );
  GTECH_FD2 ones_reg_3_ ( .D(N13), .CP(clk), .CD(n47), .Q(q[3]) );
  GTECH_FJK2S tens_reg_0_ ( .J(n48), .K(n48), .TI(N22), .TE(N25), .CP(clk), 
        .CD(n47), .Q(q[4]) );
  GTECH_FJK2S tens_reg_2_ ( .J(n48), .K(n48), .TI(N24), .TE(N25), .CP(clk), 
        .CD(n47), .Q(q[6]) );
  GTECH_FJK2S tens_reg_1_ ( .J(n48), .K(n48), .TI(N23), .TE(N25), .CP(clk), 
        .CD(n47), .Q(q[5]) );
  GTECH_FJK2S tens_reg_3_ ( .J(n48), .K(n48), .TI(N26), .TE(N25), .CP(clk), 
        .CD(n47), .Q(q[7]) );
  GTECH_FJK2S hundreds_reg_0_ ( .J(n48), .K(n48), .TI(N38), .TE(N41), .CP(clk), 
        .CD(n47), .Q(q[8]) );
  GTECH_FJK2S hundreds_reg_2_ ( .J(n48), .K(n48), .TI(N40), .TE(N41), .CP(clk), 
        .CD(n47), .Q(q[10]) );
  GTECH_FJK2S hundreds_reg_1_ ( .J(n48), .K(n48), .TI(N39), .TE(N41), .CP(clk), 
        .CD(n47), .Q(q[9]) );
  GTECH_FJK2S hundreds_reg_3_ ( .J(n48), .K(n48), .TI(N42), .TE(N41), .CP(clk), 
        .CD(n47), .Q(q[11]) );
  GTECH_FJK2S thousands_reg_0_ ( .J(n48), .K(n48), .TI(N54), .TE(N57), .CP(clk), .CD(n47), .Q(q[12]) );
  GTECH_FJK2S thousands_reg_2_ ( .J(n48), .K(n48), .TI(N56), .TE(N57), .CP(clk), .CD(n47), .Q(q[14]) );
  GTECH_FJK2S thousands_reg_1_ ( .J(n48), .K(n48), .TI(N55), .TE(N57), .CP(clk), .CD(n47), .Q(q[13]) );
  GTECH_FJK2S thousands_reg_3_ ( .J(n48), .K(n48), .TI(N58), .TE(N57), .CP(clk), .CD(n47), .Q(q[15]) );
  GTECH_ONE U94 ( .Z(n47) );
  GTECH_ZERO U95 ( .Z(n48) );
  GTECH_MUX2 U96 ( .A(n87), .B(n88), .S(q[15]), .Z(N58) );
  GTECH_OAI21 U97 ( .A(q[14]), .B(n89), .C(n90), .Z(n88) );
  GTECH_NOT U98 ( .A(n91), .Z(n90) );
  GTECH_AND2 U99 ( .A(q[14]), .B(n92), .Z(n87) );
  GTECH_NAND3 U100 ( .A(n93), .B(n94), .C(n89), .Z(N57) );
  GTECH_MUX2 U101 ( .A(n92), .B(n91), .S(q[14]), .Z(N56) );
  GTECH_OAI21 U102 ( .A(q[13]), .B(n89), .C(n95), .Z(n91) );
  GTECH_NOT U103 ( .A(n96), .Z(n92) );
  GTECH_NAND3 U104 ( .A(n97), .B(q[12]), .C(q[13]), .Z(n96) );
  GTECH_MUX2 U105 ( .A(n98), .B(N54), .S(q[13]), .Z(N55) );
  GTECH_AND2 U106 ( .A(n97), .B(q[12]), .Z(n98) );
  GTECH_NOT U107 ( .A(n95), .Z(N54) );
  GTECH_NAND2 U108 ( .A(n97), .B(n99), .Z(n95) );
  GTECH_NOT U109 ( .A(q[12]), .Z(n99) );
  GTECH_NOT U110 ( .A(n89), .Z(n97) );
  GTECH_NAND3 U111 ( .A(n93), .B(n94), .C(ena[3]), .Z(n89) );
  GTECH_NAND5 U112 ( .A(n100), .B(n101), .C(ena[3]), .D(q[15]), .E(q[12]), .Z(
        n93) );
  GTECH_NOT U113 ( .A(n102), .Z(ena[3]) );
  GTECH_NOT U114 ( .A(q[14]), .Z(n101) );
  GTECH_NOT U115 ( .A(q[13]), .Z(n100) );
  GTECH_MUX2 U116 ( .A(n103), .B(n104), .S(q[11]), .Z(N42) );
  GTECH_OAI21 U117 ( .A(q[10]), .B(n105), .C(n106), .Z(n104) );
  GTECH_NOT U118 ( .A(n107), .Z(n106) );
  GTECH_AND2 U119 ( .A(q[10]), .B(n108), .Z(n103) );
  GTECH_NAND3 U120 ( .A(n105), .B(n94), .C(n102), .Z(N41) );
  GTECH_MUX2 U121 ( .A(n108), .B(n107), .S(q[10]), .Z(N40) );
  GTECH_OAI21 U122 ( .A(q[9]), .B(n105), .C(n109), .Z(n107) );
  GTECH_NOT U123 ( .A(n110), .Z(n108) );
  GTECH_NAND3 U124 ( .A(n111), .B(q[8]), .C(q[9]), .Z(n110) );
  GTECH_MUX2 U125 ( .A(n112), .B(N38), .S(q[9]), .Z(N39) );
  GTECH_AND2 U126 ( .A(n111), .B(q[8]), .Z(n112) );
  GTECH_NOT U127 ( .A(n109), .Z(N38) );
  GTECH_NAND2 U128 ( .A(n111), .B(n113), .Z(n109) );
  GTECH_NOT U129 ( .A(q[8]), .Z(n113) );
  GTECH_NOT U130 ( .A(n105), .Z(n111) );
  GTECH_NAND3 U131 ( .A(n102), .B(n94), .C(ena[2]), .Z(n105) );
  GTECH_NAND5 U132 ( .A(n114), .B(n115), .C(ena[2]), .D(q[8]), .E(q[11]), .Z(
        n102) );
  GTECH_NOT U133 ( .A(n116), .Z(ena[2]) );
  GTECH_NOT U134 ( .A(q[9]), .Z(n115) );
  GTECH_NOT U135 ( .A(q[10]), .Z(n114) );
  GTECH_MUX2 U136 ( .A(n117), .B(n118), .S(q[7]), .Z(N26) );
  GTECH_OAI21 U137 ( .A(q[6]), .B(n119), .C(n120), .Z(n118) );
  GTECH_NOT U138 ( .A(n121), .Z(n120) );
  GTECH_AND2 U139 ( .A(q[6]), .B(n122), .Z(n117) );
  GTECH_NAND3 U140 ( .A(n119), .B(n94), .C(n116), .Z(N25) );
  GTECH_MUX2 U141 ( .A(n122), .B(n121), .S(q[6]), .Z(N24) );
  GTECH_OAI21 U142 ( .A(q[5]), .B(n119), .C(n123), .Z(n121) );
  GTECH_NOT U143 ( .A(n124), .Z(n122) );
  GTECH_NAND3 U144 ( .A(n125), .B(q[4]), .C(q[5]), .Z(n124) );
  GTECH_MUX2 U145 ( .A(n126), .B(N22), .S(q[5]), .Z(N23) );
  GTECH_AND2 U146 ( .A(n125), .B(q[4]), .Z(n126) );
  GTECH_NOT U147 ( .A(n123), .Z(N22) );
  GTECH_NAND2 U148 ( .A(n125), .B(n127), .Z(n123) );
  GTECH_NOT U149 ( .A(q[4]), .Z(n127) );
  GTECH_NOT U150 ( .A(n119), .Z(n125) );
  GTECH_NAND3 U151 ( .A(n116), .B(n94), .C(ena[1]), .Z(n119) );
  GTECH_NAND5 U152 ( .A(n128), .B(n129), .C(ena[1]), .D(q[7]), .E(q[4]), .Z(
        n116) );
  GTECH_NOT U153 ( .A(n130), .Z(ena[1]) );
  GTECH_NOT U154 ( .A(q[6]), .Z(n129) );
  GTECH_NOT U155 ( .A(q[5]), .Z(n128) );
  GTECH_MUX2 U156 ( .A(n131), .B(n132), .S(q[3]), .Z(N13) );
  GTECH_OAI21 U157 ( .A(q[2]), .B(n133), .C(n134), .Z(n132) );
  GTECH_NOT U158 ( .A(n135), .Z(n134) );
  GTECH_AND2 U159 ( .A(q[2]), .B(n136), .Z(n131) );
  GTECH_MUX2 U160 ( .A(n136), .B(n135), .S(q[2]), .Z(N12) );
  GTECH_OAI21 U161 ( .A(q[1]), .B(n133), .C(n137), .Z(n135) );
  GTECH_NOT U162 ( .A(n138), .Z(n136) );
  GTECH_NAND3 U163 ( .A(n139), .B(q[0]), .C(q[1]), .Z(n138) );
  GTECH_MUX2 U164 ( .A(n140), .B(N10), .S(q[1]), .Z(N11) );
  GTECH_AND2 U165 ( .A(n139), .B(q[0]), .Z(n140) );
  GTECH_NOT U166 ( .A(n137), .Z(N10) );
  GTECH_NAND2 U167 ( .A(n139), .B(n141), .Z(n137) );
  GTECH_NOT U168 ( .A(q[0]), .Z(n141) );
  GTECH_NOT U169 ( .A(n133), .Z(n139) );
  GTECH_NAND2 U170 ( .A(n130), .B(n94), .Z(n133) );
  GTECH_NOT U171 ( .A(reset), .Z(n94) );
  GTECH_NAND4 U172 ( .A(q[3]), .B(q[0]), .C(n142), .D(n143), .Z(n130) );
  GTECH_NOT U173 ( .A(q[2]), .Z(n143) );
  GTECH_NOT U174 ( .A(q[1]), .Z(n142) );
endmodule

