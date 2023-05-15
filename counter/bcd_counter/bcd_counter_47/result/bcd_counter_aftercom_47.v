
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
         n136;

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
  GTECH_MUX2 U92 ( .A(n83), .B(n84), .S(q[15]), .Z(N58) );
  GTECH_OAI21 U93 ( .A(q[14]), .B(n85), .C(n86), .Z(n84) );
  GTECH_NOT U94 ( .A(n87), .Z(n86) );
  GTECH_AND2 U95 ( .A(q[14]), .B(n88), .Z(n83) );
  GTECH_NAND3 U96 ( .A(n89), .B(n90), .C(n85), .Z(N57) );
  GTECH_MUX2 U97 ( .A(n88), .B(n87), .S(q[14]), .Z(N56) );
  GTECH_OAI21 U98 ( .A(q[13]), .B(n85), .C(n91), .Z(n87) );
  GTECH_NOT U99 ( .A(n92), .Z(n88) );
  GTECH_NAND3 U100 ( .A(n93), .B(q[12]), .C(q[13]), .Z(n92) );
  GTECH_MUX2 U101 ( .A(n94), .B(N54), .S(q[13]), .Z(N55) );
  GTECH_AND2 U102 ( .A(n93), .B(q[12]), .Z(n94) );
  GTECH_NOT U103 ( .A(n91), .Z(N54) );
  GTECH_NAND2 U104 ( .A(n93), .B(n95), .Z(n91) );
  GTECH_NOT U105 ( .A(n85), .Z(n93) );
  GTECH_NAND3 U106 ( .A(n89), .B(n90), .C(ena[3]), .Z(n85) );
  GTECH_NOT U107 ( .A(n96), .Z(ena[3]) );
  GTECH_OR5 U108 ( .A(q[14]), .B(q[13]), .C(n96), .D(n95), .E(n97), .Z(n89) );
  GTECH_NOT U109 ( .A(q[15]), .Z(n97) );
  GTECH_NOT U110 ( .A(q[12]), .Z(n95) );
  GTECH_MUX2 U111 ( .A(n98), .B(n99), .S(q[11]), .Z(N42) );
  GTECH_OAI21 U112 ( .A(q[10]), .B(n100), .C(n101), .Z(n99) );
  GTECH_NOT U113 ( .A(n102), .Z(n101) );
  GTECH_AND2 U114 ( .A(q[10]), .B(n103), .Z(n98) );
  GTECH_NAND3 U115 ( .A(n96), .B(n90), .C(n100), .Z(N41) );
  GTECH_MUX2 U116 ( .A(n103), .B(n102), .S(q[10]), .Z(N40) );
  GTECH_OAI21 U117 ( .A(q[9]), .B(n100), .C(n104), .Z(n102) );
  GTECH_NOT U118 ( .A(n105), .Z(n103) );
  GTECH_NAND3 U119 ( .A(n106), .B(q[8]), .C(q[9]), .Z(n105) );
  GTECH_MUX2 U120 ( .A(n107), .B(N38), .S(q[9]), .Z(N39) );
  GTECH_AND2 U121 ( .A(n106), .B(q[8]), .Z(n107) );
  GTECH_NOT U122 ( .A(n104), .Z(N38) );
  GTECH_NAND2 U123 ( .A(n106), .B(n108), .Z(n104) );
  GTECH_NOT U124 ( .A(n100), .Z(n106) );
  GTECH_NAND3 U125 ( .A(n96), .B(n90), .C(ena[2]), .Z(n100) );
  GTECH_NOT U126 ( .A(n109), .Z(ena[2]) );
  GTECH_OR5 U127 ( .A(q[9]), .B(q[10]), .C(n109), .D(n110), .E(n108), .Z(n96)
         );
  GTECH_NOT U128 ( .A(q[8]), .Z(n108) );
  GTECH_NOT U129 ( .A(q[11]), .Z(n110) );
  GTECH_MUX2 U130 ( .A(n111), .B(n112), .S(q[7]), .Z(N26) );
  GTECH_OAI21 U131 ( .A(q[6]), .B(n113), .C(n114), .Z(n112) );
  GTECH_NOT U132 ( .A(n115), .Z(n114) );
  GTECH_AND2 U133 ( .A(q[6]), .B(n116), .Z(n111) );
  GTECH_NAND3 U134 ( .A(n109), .B(n90), .C(n113), .Z(N25) );
  GTECH_MUX2 U135 ( .A(n116), .B(n115), .S(q[6]), .Z(N24) );
  GTECH_OAI21 U136 ( .A(q[5]), .B(n113), .C(n117), .Z(n115) );
  GTECH_NOT U137 ( .A(n118), .Z(n116) );
  GTECH_NAND3 U138 ( .A(n119), .B(q[4]), .C(q[5]), .Z(n118) );
  GTECH_MUX2 U139 ( .A(n120), .B(N22), .S(q[5]), .Z(N23) );
  GTECH_AND2 U140 ( .A(n119), .B(q[4]), .Z(n120) );
  GTECH_NOT U141 ( .A(n117), .Z(N22) );
  GTECH_NAND2 U142 ( .A(n119), .B(n121), .Z(n117) );
  GTECH_NOT U143 ( .A(n113), .Z(n119) );
  GTECH_NAND3 U144 ( .A(n109), .B(n90), .C(ena[1]), .Z(n113) );
  GTECH_NOT U145 ( .A(n122), .Z(ena[1]) );
  GTECH_OR5 U146 ( .A(q[6]), .B(q[5]), .C(n122), .D(n121), .E(n123), .Z(n109)
         );
  GTECH_NOT U147 ( .A(q[7]), .Z(n123) );
  GTECH_NOT U148 ( .A(q[4]), .Z(n121) );
  GTECH_MUX2 U149 ( .A(n124), .B(n125), .S(q[3]), .Z(N13) );
  GTECH_OAI21 U150 ( .A(q[2]), .B(n126), .C(n127), .Z(n125) );
  GTECH_NOT U151 ( .A(n128), .Z(n127) );
  GTECH_AND2 U152 ( .A(q[2]), .B(n129), .Z(n124) );
  GTECH_MUX2 U153 ( .A(n129), .B(n128), .S(q[2]), .Z(N12) );
  GTECH_OAI21 U154 ( .A(q[1]), .B(n126), .C(n130), .Z(n128) );
  GTECH_NOT U155 ( .A(n131), .Z(n129) );
  GTECH_NAND3 U156 ( .A(n132), .B(q[0]), .C(q[1]), .Z(n131) );
  GTECH_MUX2 U157 ( .A(n133), .B(N10), .S(q[1]), .Z(N11) );
  GTECH_AND2 U158 ( .A(n132), .B(q[0]), .Z(n133) );
  GTECH_NOT U159 ( .A(n130), .Z(N10) );
  GTECH_NAND2 U160 ( .A(n132), .B(n134), .Z(n130) );
  GTECH_NOT U161 ( .A(q[0]), .Z(n134) );
  GTECH_NOT U162 ( .A(n126), .Z(n132) );
  GTECH_NAND2 U163 ( .A(n122), .B(n90), .Z(n126) );
  GTECH_NOT U164 ( .A(reset), .Z(n90) );
  GTECH_NAND4 U165 ( .A(q[3]), .B(q[0]), .C(n135), .D(n136), .Z(n122) );
  GTECH_NOT U166 ( .A(q[2]), .Z(n136) );
  GTECH_NOT U167 ( .A(q[1]), .Z(n135) );
endmodule

