
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n75, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n12) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n13) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n83) );
  GTECH_FJK1S B_reg_0_ ( .J(n75), .K(n75), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n14) );
  GTECH_FJK1S A_reg_3_ ( .J(n75), .K(n75), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n15) );
  GTECH_FJK1S A_reg_0_ ( .J(n75), .K(n75), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n16) );
  GTECH_FJK1S A_reg_1_ ( .J(n75), .K(n75), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n17) );
  GTECH_FJK1S A_reg_2_ ( .J(n75), .K(n75), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n18) );
  GTECH_FJK1S B_reg_3_ ( .J(n75), .K(n75), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n19) );
  GTECH_FJK1S B_reg_2_ ( .J(n75), .K(n75), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n20) );
  GTECH_FJK1S B_reg_1_ ( .J(n75), .K(n75), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n21) );
  GTECH_ZERO U78 ( .Z(n75) );
  GTECH_AND_NOT U79 ( .A(n84), .B(n85), .Z(N63) );
  GTECH_NOT U80 ( .A(n86), .Z(N58) );
  GTECH_AOI222 U81 ( .A(Mplier[3]), .B(n87), .C(n88), .D(n89), .E(n90), .F(n91), .Z(n86) );
  GTECH_NOT U82 ( .A(n16), .Z(n91) );
  GTECH_OAI21 U83 ( .A(Mcand[0]), .B(n92), .C(n84), .Z(n90) );
  GTECH_AND_NOT U84 ( .A(n93), .B(n92), .Z(n88) );
  GTECH_NOT U85 ( .A(n14), .Z(n93) );
  GTECH_NOT U86 ( .A(n85), .Z(N57) );
  GTECH_AOI21 U87 ( .A(n87), .B(St), .C(n94), .Z(n85) );
  GTECH_OAI2N2 U88 ( .A(n19), .B(n92), .C(Mplier[2]), .D(n87), .Z(N56) );
  GTECH_OAI2N2 U89 ( .A(n20), .B(n92), .C(Mplier[1]), .D(n87), .Z(N54) );
  GTECH_OAI2N2 U90 ( .A(n21), .B(n92), .C(Mplier[0]), .D(n87), .Z(N52) );
  GTECH_MUX2 U91 ( .A(n95), .B(n96), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U92 ( .A(n97), .B(n98), .S(n15), .Z(N48) );
  GTECH_MUX2 U93 ( .A(n99), .B(n100), .S(Mcand[3]), .Z(n98) );
  GTECH_OR_NOT U94 ( .A(n101), .B(n84), .Z(n97) );
  GTECH_MUX2 U95 ( .A(n100), .B(n99), .S(Mcand[3]), .Z(n101) );
  GTECH_OAI2N2 U96 ( .A(n102), .B(n103), .C(n104), .D(n105), .Z(n99) );
  GTECH_NOT U97 ( .A(n106), .Z(n104) );
  GTECH_NOT U98 ( .A(n107), .Z(n103) );
  GTECH_AO22 U99 ( .A(n105), .B(n106), .C(n107), .D(n102), .Z(n100) );
  GTECH_AOI21 U100 ( .A(n108), .B(Mcand[2]), .C(n109), .Z(n102) );
  GTECH_AOI21 U101 ( .A(n110), .B(n111), .C(n18), .Z(n109) );
  GTECH_OA21 U102 ( .A(n111), .B(n112), .C(n113), .Z(n106) );
  GTECH_OAI21 U103 ( .A(n114), .B(Mcand[2]), .C(n18), .Z(n113) );
  GTECH_MUX2 U104 ( .A(n115), .B(n116), .S(n18), .Z(N46) );
  GTECH_NOT U105 ( .A(n117), .Z(n116) );
  GTECH_MUX2 U106 ( .A(n118), .B(n119), .S(Mcand[2]), .Z(n117) );
  GTECH_NAND2 U107 ( .A(n120), .B(n84), .Z(n115) );
  GTECH_MUX2 U108 ( .A(n118), .B(n119), .S(n111), .Z(n120) );
  GTECH_NOT U109 ( .A(Mcand[2]), .Z(n111) );
  GTECH_AOI22 U110 ( .A(n112), .B(n105), .C(n110), .D(n107), .Z(n119) );
  GTECH_NOT U111 ( .A(n114), .Z(n112) );
  GTECH_AOI22 U112 ( .A(n114), .B(n105), .C(n108), .D(n107), .Z(n118) );
  GTECH_NOT U113 ( .A(n110), .Z(n108) );
  GTECH_OAI21 U114 ( .A(Mcand[1]), .B(n121), .C(n122), .Z(n110) );
  GTECH_OAI21 U115 ( .A(n123), .B(n124), .C(n17), .Z(n122) );
  GTECH_AOI21 U116 ( .A(n124), .B(n125), .C(n126), .Z(n114) );
  GTECH_AOI21 U117 ( .A(n89), .B(Mcand[1]), .C(n17), .Z(n126) );
  GTECH_MUX2 U118 ( .A(n127), .B(n128), .S(n17), .Z(N44) );
  GTECH_MUX2 U119 ( .A(n129), .B(n130), .S(n124), .Z(n128) );
  GTECH_OR_NOT U120 ( .A(n131), .B(n84), .Z(n127) );
  GTECH_NAND2 U121 ( .A(n94), .B(n14), .Z(n84) );
  GTECH_NOT U122 ( .A(n92), .Z(n94) );
  GTECH_NOR2 U123 ( .A(n95), .B(n96), .Z(n92) );
  GTECH_MUX2 U124 ( .A(n130), .B(n129), .S(n124), .Z(n131) );
  GTECH_NOT U125 ( .A(Mcand[1]), .Z(n124) );
  GTECH_AO22 U126 ( .A(n123), .B(n107), .C(n125), .D(n105), .Z(n129) );
  GTECH_NOT U127 ( .A(n89), .Z(n125) );
  GTECH_NOT U128 ( .A(n121), .Z(n123) );
  GTECH_AO22 U129 ( .A(n121), .B(n107), .C(n89), .D(n105), .Z(n130) );
  GTECH_AND_NOT U130 ( .A(n95), .B(n14), .Z(n105) );
  GTECH_AND2 U131 ( .A(Mcand[0]), .B(n16), .Z(n89) );
  GTECH_NOR2 U132 ( .A(n14), .B(n132), .Z(n107) );
  GTECH_AND_NOT U133 ( .A(Mcand[0]), .B(n16), .Z(n121) );
  GTECH_NAND2 U134 ( .A(n133), .B(n134), .Z(N42) );
  GTECH_OR3 U135 ( .A(n12), .B(n83), .C(n132), .Z(n134) );
  GTECH_OA21 U136 ( .A(n12), .B(n83), .C(n96), .Z(N41) );
  GTECH_NOT U137 ( .A(n135), .Z(N40) );
  GTECH_AOI21 U138 ( .A(n87), .B(St), .C(n136), .Z(n135) );
  GTECH_OAI21 U139 ( .A(n137), .B(n132), .C(n133), .Z(n136) );
  GTECH_NOT U140 ( .A(n95), .Z(n133) );
  GTECH_AND_NOT U141 ( .A(n138), .B(n13), .Z(n95) );
  GTECH_NOT U142 ( .A(n96), .Z(n132) );
  GTECH_NOR2 U143 ( .A(n139), .B(n138), .Z(n96) );
  GTECH_AND2 U144 ( .A(n138), .B(n13), .Z(n87) );
  GTECH_AND_NOT U145 ( .A(n83), .B(n137), .Z(n138) );
  GTECH_AND3 U146 ( .A(n137), .B(n139), .C(n83), .Z(Done) );
  GTECH_NOT U147 ( .A(n13), .Z(n139) );
  GTECH_NOT U148 ( .A(n12), .Z(n137) );
endmodule

