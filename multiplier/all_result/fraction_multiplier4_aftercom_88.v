
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n18, n19, n78, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n12) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n13) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n88) );
  GTECH_FJK1S B_reg_0_ ( .J(n78), .K(n78), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n14) );
  GTECH_FJK1S A_reg_3_ ( .J(n78), .K(n78), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n15) );
  GTECH_FJK1S A_reg_0_ ( .J(n78), .K(n78), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n86) );
  GTECH_FJK1S A_reg_1_ ( .J(n78), .K(n78), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n87) );
  GTECH_FJK1S A_reg_2_ ( .J(n78), .K(n78), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n16) );
  GTECH_FJK1S B_reg_3_ ( .J(n78), .K(n78), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n17) );
  GTECH_FJK1S B_reg_2_ ( .J(n78), .K(n78), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n18) );
  GTECH_FJK1S B_reg_1_ ( .J(n78), .K(n78), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n19) );
  GTECH_ZERO U83 ( .Z(n78) );
  GTECH_AND2 U84 ( .A(N57), .B(n89), .Z(N63) );
  GTECH_AO21 U85 ( .A(Mplier[3]), .B(n90), .C(n91), .Z(N58) );
  GTECH_MUX2 U86 ( .A(n92), .B(n93), .S(n86), .Z(n91) );
  GTECH_NOR3 U87 ( .A(n94), .B(n14), .C(n95), .Z(n93) );
  GTECH_OAI21 U88 ( .A(Mcand[0]), .B(n94), .C(n89), .Z(n92) );
  GTECH_AO21 U89 ( .A(n90), .B(St), .C(n96), .Z(N57) );
  GTECH_OAI2N2 U90 ( .A(n17), .B(n94), .C(Mplier[2]), .D(n90), .Z(N56) );
  GTECH_OAI2N2 U91 ( .A(n18), .B(n94), .C(Mplier[1]), .D(n90), .Z(N54) );
  GTECH_OAI2N2 U92 ( .A(n19), .B(n94), .C(Mplier[0]), .D(n90), .Z(N52) );
  GTECH_MUX2 U93 ( .A(n97), .B(n98), .S(n99), .Z(N50) );
  GTECH_MUX2 U94 ( .A(n100), .B(n101), .S(n15), .Z(N48) );
  GTECH_MUX2 U95 ( .A(n102), .B(n103), .S(Mcand[3]), .Z(n101) );
  GTECH_NAND2 U96 ( .A(n89), .B(n104), .Z(n100) );
  GTECH_NOT U97 ( .A(n105), .Z(n104) );
  GTECH_MUX2 U98 ( .A(n102), .B(n103), .S(n99), .Z(n105) );
  GTECH_NOT U99 ( .A(Mcand[3]), .Z(n99) );
  GTECH_AO22 U100 ( .A(n106), .B(n107), .C(n108), .D(n109), .Z(n103) );
  GTECH_OAI22 U101 ( .A(n110), .B(n106), .C(n108), .D(n111), .Z(n102) );
  GTECH_OA21 U102 ( .A(n112), .B(n113), .C(n114), .Z(n108) );
  GTECH_AO21 U103 ( .A(n113), .B(n112), .C(n115), .Z(n114) );
  GTECH_NOT U104 ( .A(n16), .Z(n115) );
  GTECH_AO21 U105 ( .A(n113), .B(n116), .C(n117), .Z(n106) );
  GTECH_OA21 U106 ( .A(n116), .B(n113), .C(n16), .Z(n117) );
  GTECH_MUX2 U107 ( .A(n118), .B(n119), .S(n16), .Z(N46) );
  GTECH_NOT U108 ( .A(n120), .Z(n119) );
  GTECH_MUX2 U109 ( .A(n121), .B(n122), .S(Mcand[2]), .Z(n120) );
  GTECH_NAND2 U110 ( .A(n123), .B(n89), .Z(n118) );
  GTECH_MUX2 U111 ( .A(n121), .B(n122), .S(n113), .Z(n123) );
  GTECH_NOT U112 ( .A(Mcand[2]), .Z(n113) );
  GTECH_AOI22 U113 ( .A(n116), .B(n107), .C(n112), .D(n109), .Z(n122) );
  GTECH_OA22 U114 ( .A(n112), .B(n111), .C(n116), .D(n110), .Z(n121) );
  GTECH_OA21 U115 ( .A(n87), .B(n124), .C(n125), .Z(n116) );
  GTECH_NAND3 U116 ( .A(n126), .B(n127), .C(Mcand[0]), .Z(n125) );
  GTECH_OA22 U117 ( .A(n124), .B(n128), .C(n127), .D(n129), .Z(n112) );
  GTECH_OAI21 U118 ( .A(Mcand[1]), .B(n87), .C(Mcand[0]), .Z(n129) );
  GTECH_NOT U119 ( .A(n87), .Z(n128) );
  GTECH_NAND2 U120 ( .A(n130), .B(n131), .Z(N44) );
  GTECH_MUX2 U121 ( .A(n132), .B(n133), .S(n87), .Z(n131) );
  GTECH_NAND2 U122 ( .A(Mcand[1]), .B(n134), .Z(n133) );
  GTECH_AND_NOT U123 ( .A(n89), .B(n135), .Z(n132) );
  GTECH_MUX2 U124 ( .A(n134), .B(n136), .S(Mcand[1]), .Z(n135) );
  GTECH_AND_NOT U125 ( .A(Mcand[0]), .B(n137), .Z(n136) );
  GTECH_NAND2 U126 ( .A(n138), .B(n139), .Z(n134) );
  GTECH_OAI21 U127 ( .A(n107), .B(n109), .C(n95), .Z(n139) );
  GTECH_MUX2 U128 ( .A(n110), .B(n111), .S(n127), .Z(n138) );
  GTECH_NOT U129 ( .A(n86), .Z(n127) );
  GTECH_NAND2 U130 ( .A(n14), .B(n96), .Z(n89) );
  GTECH_NOT U131 ( .A(n94), .Z(n96) );
  GTECH_AND_NOT U132 ( .A(n140), .B(n97), .Z(n94) );
  GTECH_OR3 U133 ( .A(n95), .B(n137), .C(n126), .Z(n130) );
  GTECH_NAND2 U134 ( .A(n124), .B(n87), .Z(n126) );
  GTECH_NOT U135 ( .A(Mcand[1]), .Z(n124) );
  GTECH_MUX2 U136 ( .A(n110), .B(n111), .S(n86), .Z(n137) );
  GTECH_NOT U137 ( .A(n109), .Z(n111) );
  GTECH_AND_NOT U138 ( .A(n98), .B(n14), .Z(n109) );
  GTECH_NOT U139 ( .A(n107), .Z(n110) );
  GTECH_AND_NOT U140 ( .A(n97), .B(n14), .Z(n107) );
  GTECH_NOT U141 ( .A(Mcand[0]), .Z(n95) );
  GTECH_NAND2 U142 ( .A(n141), .B(n140), .Z(N42) );
  GTECH_NAND3 U143 ( .A(n142), .B(n143), .C(n97), .Z(n141) );
  GTECH_OA21 U144 ( .A(n12), .B(n88), .C(n97), .Z(N41) );
  GTECH_AO21 U145 ( .A(n90), .B(St), .C(n144), .Z(N40) );
  GTECH_AO21 U146 ( .A(n12), .B(n97), .C(n98), .Z(n144) );
  GTECH_NOT U147 ( .A(n140), .Z(n98) );
  GTECH_OR3 U148 ( .A(n142), .B(n13), .C(n143), .Z(n140) );
  GTECH_OA21 U149 ( .A(n142), .B(n143), .C(n13), .Z(n97) );
  GTECH_NOT U150 ( .A(n12), .Z(n142) );
  GTECH_AND3 U151 ( .A(n88), .B(n12), .C(n13), .Z(n90) );
  GTECH_NOR3 U152 ( .A(n12), .B(n13), .C(n143), .Z(Done) );
  GTECH_NOT U153 ( .A(n88), .Z(n143) );
endmodule

