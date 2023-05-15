
module bcd_counter ( clk, reset, ena, q );
  output [3:1] ena;
  output [15:0] q;
  input clk, reset;
  wire   N10, N11, N12, N13, N22, N23, N24, N25, N26, N38, N39, N40, N41, N42,
         N54, N55, N56, N57, N58, n47, n48, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139;

  GTECH_FD1 ones_reg_0_ ( .D(N10), .CP(clk), .Q(q[0]) );
  GTECH_FD1 ones_reg_2_ ( .D(N12), .CP(clk), .Q(q[2]) );
  GTECH_FD1 ones_reg_1_ ( .D(N11), .CP(clk), .Q(q[1]) );
  GTECH_FD1 ones_reg_3_ ( .D(N13), .CP(clk), .Q(q[3]) );
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
  GTECH_ZERO U90 ( .Z(n48) );
  GTECH_ONE U91 ( .Z(n47) );
  GTECH_OAI2N2 U92 ( .A(n83), .B(n84), .C(n85), .D(q[14]), .Z(N58) );
  GTECH_AND_NOT U93 ( .A(n84), .B(n86), .Z(n85) );
  GTECH_NOT U94 ( .A(q[15]), .Z(n84) );
  GTECH_OA21 U95 ( .A(n87), .B(q[14]), .C(n88), .Z(n83) );
  GTECH_NAND3 U96 ( .A(n89), .B(n90), .C(n87), .Z(N57) );
  GTECH_OAI22 U97 ( .A(n88), .B(n91), .C(q[14]), .D(n86), .Z(N56) );
  GTECH_NAND3 U98 ( .A(n92), .B(q[12]), .C(q[13]), .Z(n86) );
  GTECH_NOT U99 ( .A(n93), .Z(n88) );
  GTECH_OAI21 U100 ( .A(q[13]), .B(n87), .C(n94), .Z(n93) );
  GTECH_OAI21 U101 ( .A(n95), .B(n94), .C(n96), .Z(N55) );
  GTECH_NAND3 U102 ( .A(n92), .B(q[12]), .C(n95), .Z(n96) );
  GTECH_NOT U103 ( .A(n94), .Z(N54) );
  GTECH_NAND2 U104 ( .A(n92), .B(n97), .Z(n94) );
  GTECH_NOT U105 ( .A(q[12]), .Z(n97) );
  GTECH_NOT U106 ( .A(n87), .Z(n92) );
  GTECH_NAND3 U107 ( .A(n89), .B(n90), .C(ena[3]), .Z(n87) );
  GTECH_NAND5 U108 ( .A(n95), .B(n91), .C(ena[3]), .D(q[15]), .E(q[12]), .Z(
        n89) );
  GTECH_NOT U109 ( .A(n98), .Z(ena[3]) );
  GTECH_NOT U110 ( .A(q[14]), .Z(n91) );
  GTECH_NOT U111 ( .A(q[13]), .Z(n95) );
  GTECH_OAI2N2 U112 ( .A(n99), .B(n100), .C(n101), .D(q[10]), .Z(N42) );
  GTECH_AND_NOT U113 ( .A(n100), .B(n102), .Z(n101) );
  GTECH_NOT U114 ( .A(q[11]), .Z(n100) );
  GTECH_OA21 U115 ( .A(n103), .B(q[10]), .C(n104), .Z(n99) );
  GTECH_NAND3 U116 ( .A(n103), .B(n90), .C(n98), .Z(N41) );
  GTECH_OAI22 U117 ( .A(n104), .B(n105), .C(q[10]), .D(n102), .Z(N40) );
  GTECH_NAND3 U118 ( .A(n106), .B(q[8]), .C(q[9]), .Z(n102) );
  GTECH_NOT U119 ( .A(n107), .Z(n104) );
  GTECH_OAI21 U120 ( .A(q[9]), .B(n103), .C(n108), .Z(n107) );
  GTECH_OAI21 U121 ( .A(n109), .B(n108), .C(n110), .Z(N39) );
  GTECH_NAND3 U122 ( .A(n106), .B(q[8]), .C(n109), .Z(n110) );
  GTECH_NOT U123 ( .A(n108), .Z(N38) );
  GTECH_NAND2 U124 ( .A(n106), .B(n111), .Z(n108) );
  GTECH_NOT U125 ( .A(q[8]), .Z(n111) );
  GTECH_NOT U126 ( .A(n103), .Z(n106) );
  GTECH_NAND3 U127 ( .A(n98), .B(n90), .C(ena[2]), .Z(n103) );
  GTECH_NAND5 U128 ( .A(n105), .B(n109), .C(ena[2]), .D(q[8]), .E(q[11]), .Z(
        n98) );
  GTECH_NOT U129 ( .A(n112), .Z(ena[2]) );
  GTECH_NOT U130 ( .A(q[9]), .Z(n109) );
  GTECH_NOT U131 ( .A(q[10]), .Z(n105) );
  GTECH_OAI2N2 U132 ( .A(n113), .B(n114), .C(n115), .D(q[6]), .Z(N26) );
  GTECH_AND_NOT U133 ( .A(n114), .B(n116), .Z(n115) );
  GTECH_NOT U134 ( .A(q[7]), .Z(n114) );
  GTECH_OA21 U135 ( .A(n117), .B(q[6]), .C(n118), .Z(n113) );
  GTECH_NAND3 U136 ( .A(n117), .B(n90), .C(n112), .Z(N25) );
  GTECH_OAI22 U137 ( .A(n118), .B(n119), .C(q[6]), .D(n116), .Z(N24) );
  GTECH_NAND3 U138 ( .A(n120), .B(q[4]), .C(q[5]), .Z(n116) );
  GTECH_NOT U139 ( .A(n121), .Z(n118) );
  GTECH_OAI21 U140 ( .A(q[5]), .B(n117), .C(n122), .Z(n121) );
  GTECH_OAI21 U141 ( .A(n123), .B(n122), .C(n124), .Z(N23) );
  GTECH_NAND3 U142 ( .A(n120), .B(q[4]), .C(n123), .Z(n124) );
  GTECH_NOT U143 ( .A(n122), .Z(N22) );
  GTECH_NAND2 U144 ( .A(n120), .B(n125), .Z(n122) );
  GTECH_NOT U145 ( .A(q[4]), .Z(n125) );
  GTECH_NOT U146 ( .A(n117), .Z(n120) );
  GTECH_NAND3 U147 ( .A(n112), .B(n90), .C(ena[1]), .Z(n117) );
  GTECH_NAND5 U148 ( .A(n123), .B(n119), .C(ena[1]), .D(q[7]), .E(q[4]), .Z(
        n112) );
  GTECH_NOT U149 ( .A(n126), .Z(ena[1]) );
  GTECH_NOT U150 ( .A(q[6]), .Z(n119) );
  GTECH_NOT U151 ( .A(q[5]), .Z(n123) );
  GTECH_OAI2N2 U152 ( .A(n127), .B(n128), .C(n129), .D(q[2]), .Z(N13) );
  GTECH_AND_NOT U153 ( .A(n128), .B(n130), .Z(n129) );
  GTECH_NOT U154 ( .A(q[3]), .Z(n128) );
  GTECH_OA21 U155 ( .A(n131), .B(q[2]), .C(n132), .Z(n127) );
  GTECH_OAI22 U156 ( .A(n132), .B(n133), .C(q[2]), .D(n130), .Z(N12) );
  GTECH_NAND3 U157 ( .A(n134), .B(q[0]), .C(q[1]), .Z(n130) );
  GTECH_NOT U158 ( .A(n135), .Z(n132) );
  GTECH_OAI21 U159 ( .A(q[1]), .B(n131), .C(n136), .Z(n135) );
  GTECH_OAI21 U160 ( .A(n137), .B(n136), .C(n138), .Z(N11) );
  GTECH_NAND3 U161 ( .A(n134), .B(q[0]), .C(n137), .Z(n138) );
  GTECH_NOT U162 ( .A(n136), .Z(N10) );
  GTECH_NAND2 U163 ( .A(n134), .B(n139), .Z(n136) );
  GTECH_NOT U164 ( .A(q[0]), .Z(n139) );
  GTECH_NOT U165 ( .A(n131), .Z(n134) );
  GTECH_NAND2 U166 ( .A(n126), .B(n90), .Z(n131) );
  GTECH_NOT U167 ( .A(reset), .Z(n90) );
  GTECH_NAND4 U168 ( .A(q[3]), .B(q[0]), .C(n137), .D(n133), .Z(n126) );
  GTECH_NOT U169 ( .A(q[2]), .Z(n133) );
  GTECH_NOT U170 ( .A(q[1]), .Z(n137) );
endmodule

