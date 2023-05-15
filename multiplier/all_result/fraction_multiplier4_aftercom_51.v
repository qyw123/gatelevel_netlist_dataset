
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n72, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n12) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n13) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n81) );
  GTECH_FJK1S B_reg_0_ ( .J(n72), .K(n72), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n14) );
  GTECH_FJK1S A_reg_3_ ( .J(n72), .K(n72), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n15) );
  GTECH_FJK1S A_reg_0_ ( .J(n72), .K(n72), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n16) );
  GTECH_FJK1S A_reg_1_ ( .J(n72), .K(n72), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n17) );
  GTECH_FJK1S A_reg_2_ ( .J(n72), .K(n72), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n80) );
  GTECH_FJK1S B_reg_3_ ( .J(n72), .K(n72), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n18) );
  GTECH_FJK1S B_reg_2_ ( .J(n72), .K(n72), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n19) );
  GTECH_FJK1S B_reg_1_ ( .J(n72), .K(n72), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n20) );
  GTECH_ZERO U76 ( .Z(n72) );
  GTECH_AND2 U77 ( .A(n82), .B(N57), .Z(N63) );
  GTECH_NOT U78 ( .A(n83), .Z(N58) );
  GTECH_AOI222 U79 ( .A(Mplier[3]), .B(n84), .C(n85), .D(n86), .E(n87), .F(n88), .Z(n83) );
  GTECH_NOT U80 ( .A(n16), .Z(n88) );
  GTECH_OAI21 U81 ( .A(Mcand[0]), .B(n89), .C(n82), .Z(n87) );
  GTECH_AND_NOT U82 ( .A(n90), .B(n14), .Z(n85) );
  GTECH_AO21 U83 ( .A(n84), .B(St), .C(n90), .Z(N57) );
  GTECH_OAI2N2 U84 ( .A(n18), .B(n89), .C(Mplier[2]), .D(n84), .Z(N56) );
  GTECH_OAI2N2 U85 ( .A(n19), .B(n89), .C(Mplier[1]), .D(n84), .Z(N54) );
  GTECH_OAI2N2 U86 ( .A(n20), .B(n89), .C(Mplier[0]), .D(n84), .Z(N52) );
  GTECH_MUX2 U87 ( .A(n91), .B(n92), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U88 ( .A(n93), .B(n94), .S(n15), .Z(N48) );
  GTECH_NOT U89 ( .A(n95), .Z(n94) );
  GTECH_MUX2 U90 ( .A(n96), .B(n97), .S(Mcand[3]), .Z(n95) );
  GTECH_NAND2 U91 ( .A(n98), .B(n82), .Z(n93) );
  GTECH_MUX2 U92 ( .A(n97), .B(n96), .S(Mcand[3]), .Z(n98) );
  GTECH_AOI2N2 U93 ( .A(n99), .B(n100), .C(n101), .D(n102), .Z(n96) );
  GTECH_AOI2N2 U94 ( .A(n101), .B(n103), .C(n99), .D(n104), .Z(n97) );
  GTECH_OAI21 U95 ( .A(n105), .B(n106), .C(n107), .Z(n99) );
  GTECH_OAI21 U96 ( .A(Mcand[2]), .B(n108), .C(n80), .Z(n107) );
  GTECH_OA21 U97 ( .A(n109), .B(n106), .C(n110), .Z(n101) );
  GTECH_AO21 U98 ( .A(n106), .B(n109), .C(n80), .Z(n110) );
  GTECH_MUX2 U99 ( .A(n111), .B(n112), .S(n80), .Z(N46) );
  GTECH_MUX2 U100 ( .A(n113), .B(n114), .S(n106), .Z(n112) );
  GTECH_OR_NOT U101 ( .A(n115), .B(n82), .Z(n111) );
  GTECH_MUX2 U102 ( .A(n114), .B(n113), .S(n106), .Z(n115) );
  GTECH_NOT U103 ( .A(Mcand[2]), .Z(n106) );
  GTECH_OAI2N2 U104 ( .A(n108), .B(n104), .C(n109), .D(n103), .Z(n113) );
  GTECH_OAI22 U105 ( .A(n109), .B(n102), .C(n105), .D(n104), .Z(n114) );
  GTECH_NOT U106 ( .A(n108), .Z(n105) );
  GTECH_OAI21 U107 ( .A(n116), .B(n117), .C(n118), .Z(n108) );
  GTECH_OAI21 U108 ( .A(n86), .B(Mcand[1]), .C(n17), .Z(n118) );
  GTECH_NOT U109 ( .A(n103), .Z(n102) );
  GTECH_OA21 U110 ( .A(n117), .B(n119), .C(n120), .Z(n109) );
  GTECH_AO21 U111 ( .A(n119), .B(n117), .C(n17), .Z(n120) );
  GTECH_MUX2 U112 ( .A(n121), .B(n122), .S(n17), .Z(N44) );
  GTECH_MUX2 U113 ( .A(n123), .B(n124), .S(n117), .Z(n122) );
  GTECH_OR_NOT U114 ( .A(n125), .B(n82), .Z(n121) );
  GTECH_NAND2 U115 ( .A(n90), .B(n14), .Z(n82) );
  GTECH_NOT U116 ( .A(n89), .Z(n90) );
  GTECH_AND_NOT U117 ( .A(n126), .B(n91), .Z(n89) );
  GTECH_MUX2 U118 ( .A(n124), .B(n123), .S(n117), .Z(n125) );
  GTECH_NOT U119 ( .A(Mcand[1]), .Z(n117) );
  GTECH_OAI2N2 U120 ( .A(n86), .B(n104), .C(n119), .D(n103), .Z(n123) );
  GTECH_NOT U121 ( .A(n127), .Z(n119) );
  GTECH_OAI2N2 U122 ( .A(n116), .B(n104), .C(n127), .D(n103), .Z(n124) );
  GTECH_AND_NOT U123 ( .A(n92), .B(n14), .Z(n103) );
  GTECH_AND_NOT U124 ( .A(Mcand[0]), .B(n16), .Z(n127) );
  GTECH_NOT U125 ( .A(n100), .Z(n104) );
  GTECH_AND_NOT U126 ( .A(n91), .B(n14), .Z(n100) );
  GTECH_NOT U127 ( .A(n86), .Z(n116) );
  GTECH_AND2 U128 ( .A(Mcand[0]), .B(n16), .Z(n86) );
  GTECH_OR_NOT U129 ( .A(n91), .B(n128), .Z(N42) );
  GTECH_OR3 U130 ( .A(n12), .B(n81), .C(n126), .Z(n128) );
  GTECH_NOT U131 ( .A(n92), .Z(n126) );
  GTECH_OA21 U132 ( .A(n12), .B(n81), .C(n92), .Z(N41) );
  GTECH_AO21 U133 ( .A(n84), .B(St), .C(n129), .Z(N40) );
  GTECH_AO21 U134 ( .A(n12), .B(n92), .C(n91), .Z(n129) );
  GTECH_AND_NOT U135 ( .A(n130), .B(n131), .Z(n91) );
  GTECH_AND_NOT U136 ( .A(n131), .B(n130), .Z(n92) );
  GTECH_AND_NOT U137 ( .A(n13), .B(n131), .Z(n84) );
  GTECH_OR_NOT U138 ( .A(n132), .B(n81), .Z(n131) );
  GTECH_AND3 U139 ( .A(n132), .B(n130), .C(n81), .Z(Done) );
  GTECH_NOT U140 ( .A(n13), .Z(n130) );
  GTECH_NOT U141 ( .A(n12), .Z(n132) );
endmodule

