
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n18, n19, n68, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n76) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n78) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n77) );
  GTECH_FJK1S B_reg_0_ ( .J(n68), .K(n68), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n12) );
  GTECH_FJK1S A_reg_3_ ( .J(n68), .K(n68), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n13) );
  GTECH_FJK1S A_reg_0_ ( .J(n68), .K(n68), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n14) );
  GTECH_FJK1S A_reg_1_ ( .J(n68), .K(n68), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n15) );
  GTECH_FJK1S A_reg_2_ ( .J(n68), .K(n68), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n16) );
  GTECH_FJK1S B_reg_3_ ( .J(n68), .K(n68), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n17) );
  GTECH_FJK1S B_reg_2_ ( .J(n68), .K(n68), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n18) );
  GTECH_FJK1S B_reg_1_ ( .J(n68), .K(n68), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n19) );
  GTECH_ZERO U73 ( .Z(n68) );
  GTECH_AND2 U74 ( .A(N57), .B(n79), .Z(N63) );
  GTECH_NOT U75 ( .A(n80), .Z(N58) );
  GTECH_AOI222 U76 ( .A(Mplier[3]), .B(n81), .C(n82), .D(n83), .E(n84), .F(n85), .Z(n80) );
  GTECH_NOT U77 ( .A(n14), .Z(n85) );
  GTECH_OAI21 U78 ( .A(Mcand[0]), .B(n86), .C(n79), .Z(n84) );
  GTECH_NOR2 U79 ( .A(n12), .B(n86), .Z(n82) );
  GTECH_OAI21 U80 ( .A(n87), .B(n88), .C(n86), .Z(N57) );
  GTECH_OAI2N2 U81 ( .A(n17), .B(n86), .C(Mplier[2]), .D(n81), .Z(N56) );
  GTECH_OAI2N2 U82 ( .A(n18), .B(n86), .C(Mplier[1]), .D(n81), .Z(N54) );
  GTECH_OAI2N2 U83 ( .A(n19), .B(n86), .C(Mplier[0]), .D(n81), .Z(N52) );
  GTECH_MUX2 U84 ( .A(n89), .B(n90), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U85 ( .A(n91), .B(n92), .S(n13), .Z(N48) );
  GTECH_NOT U86 ( .A(n93), .Z(n92) );
  GTECH_MUX2 U87 ( .A(n94), .B(n95), .S(Mcand[3]), .Z(n93) );
  GTECH_NAND2 U88 ( .A(n96), .B(n79), .Z(n91) );
  GTECH_MUX2 U89 ( .A(n95), .B(n94), .S(Mcand[3]), .Z(n96) );
  GTECH_AOI2N2 U90 ( .A(n97), .B(n98), .C(n99), .D(n100), .Z(n94) );
  GTECH_NOT U91 ( .A(n101), .Z(n100) );
  GTECH_AOI22 U92 ( .A(n99), .B(n101), .C(n98), .D(n102), .Z(n95) );
  GTECH_NOT U93 ( .A(n97), .Z(n102) );
  GTECH_OAI21 U94 ( .A(n103), .B(n104), .C(n105), .Z(n97) );
  GTECH_OAI21 U95 ( .A(Mcand[2]), .B(n106), .C(n16), .Z(n105) );
  GTECH_OAI21 U96 ( .A(Mcand[2]), .B(n107), .C(n108), .Z(n99) );
  GTECH_OAI21 U97 ( .A(n104), .B(n109), .C(n16), .Z(n108) );
  GTECH_MUX2 U98 ( .A(n110), .B(n111), .S(n16), .Z(N46) );
  GTECH_NOT U99 ( .A(n112), .Z(n111) );
  GTECH_MUX2 U100 ( .A(n113), .B(n114), .S(n104), .Z(n112) );
  GTECH_NAND2 U101 ( .A(n115), .B(n79), .Z(n110) );
  GTECH_MUX2 U102 ( .A(n114), .B(n113), .S(n104), .Z(n115) );
  GTECH_NOT U103 ( .A(Mcand[2]), .Z(n104) );
  GTECH_AOI22 U104 ( .A(n103), .B(n98), .C(n109), .D(n101), .Z(n113) );
  GTECH_NOT U105 ( .A(n106), .Z(n103) );
  GTECH_AOI22 U106 ( .A(n106), .B(n98), .C(n107), .D(n101), .Z(n114) );
  GTECH_NOT U107 ( .A(n109), .Z(n107) );
  GTECH_OAI21 U108 ( .A(Mcand[1]), .B(n116), .C(n117), .Z(n109) );
  GTECH_OAI21 U109 ( .A(n118), .B(n119), .C(n15), .Z(n117) );
  GTECH_OAI21 U110 ( .A(n120), .B(n118), .C(n121), .Z(n106) );
  GTECH_OAI21 U111 ( .A(n83), .B(Mcand[1]), .C(n15), .Z(n121) );
  GTECH_MUX2 U112 ( .A(n122), .B(n123), .S(n15), .Z(N44) );
  GTECH_NOT U113 ( .A(n124), .Z(n123) );
  GTECH_MUX2 U114 ( .A(n125), .B(n126), .S(n118), .Z(n124) );
  GTECH_NAND2 U115 ( .A(n127), .B(n79), .Z(n122) );
  GTECH_OR_NOT U116 ( .A(n86), .B(n12), .Z(n79) );
  GTECH_AND_NOT U117 ( .A(n128), .B(n90), .Z(n86) );
  GTECH_MUX2 U118 ( .A(n126), .B(n125), .S(n118), .Z(n127) );
  GTECH_NOT U119 ( .A(Mcand[1]), .Z(n118) );
  GTECH_AOI22 U120 ( .A(n120), .B(n98), .C(n119), .D(n101), .Z(n125) );
  GTECH_NOT U121 ( .A(n116), .Z(n119) );
  GTECH_NOT U122 ( .A(n83), .Z(n120) );
  GTECH_AOI22 U123 ( .A(n83), .B(n98), .C(n116), .D(n101), .Z(n126) );
  GTECH_AND_NOT U124 ( .A(n90), .B(n12), .Z(n101) );
  GTECH_AND_NOT U125 ( .A(Mcand[0]), .B(n14), .Z(n116) );
  GTECH_AND_NOT U126 ( .A(n89), .B(n12), .Z(n98) );
  GTECH_AND2 U127 ( .A(Mcand[0]), .B(n14), .Z(n83) );
  GTECH_NAND2 U128 ( .A(n128), .B(n129), .Z(N42) );
  GTECH_OR3 U129 ( .A(n76), .B(n77), .C(n130), .Z(n129) );
  GTECH_OA21 U130 ( .A(n76), .B(n77), .C(n90), .Z(N41) );
  GTECH_OAI21 U131 ( .A(n87), .B(n88), .C(n131), .Z(N40) );
  GTECH_OA21 U132 ( .A(n132), .B(n130), .C(n128), .Z(n131) );
  GTECH_NOT U133 ( .A(n89), .Z(n128) );
  GTECH_AND_NOT U134 ( .A(n133), .B(n78), .Z(n89) );
  GTECH_NOT U135 ( .A(n90), .Z(n130) );
  GTECH_NOR2 U136 ( .A(n134), .B(n133), .Z(n90) );
  GTECH_NOT U137 ( .A(St), .Z(n88) );
  GTECH_NOT U138 ( .A(n81), .Z(n87) );
  GTECH_AND_NOT U139 ( .A(n133), .B(n134), .Z(n81) );
  GTECH_AND_NOT U140 ( .A(n77), .B(n132), .Z(n133) );
  GTECH_AND3 U141 ( .A(n132), .B(n134), .C(n77), .Z(Done) );
  GTECH_NOT U142 ( .A(n78), .Z(n134) );
  GTECH_NOT U143 ( .A(n76), .Z(n132) );
endmodule

