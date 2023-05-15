
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n18, n70, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n12) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n13) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n81) );
  GTECH_FJK1S B_reg_0_ ( .J(n70), .K(n70), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n14) );
  GTECH_FJK1S A_reg_3_ ( .J(n70), .K(n70), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n15) );
  GTECH_FJK1S A_reg_0_ ( .J(n70), .K(n70), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n78) );
  GTECH_FJK1S A_reg_1_ ( .J(n70), .K(n70), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n80) );
  GTECH_FJK1S A_reg_2_ ( .J(n70), .K(n70), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n79) );
  GTECH_FJK1S B_reg_3_ ( .J(n70), .K(n70), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n16) );
  GTECH_FJK1S B_reg_2_ ( .J(n70), .K(n70), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n17) );
  GTECH_FJK1S B_reg_1_ ( .J(n70), .K(n70), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n18) );
  GTECH_ZERO U76 ( .Z(n70) );
  GTECH_AND2 U77 ( .A(N57), .B(n82), .Z(N63) );
  GTECH_OAI21 U78 ( .A(n83), .B(n84), .C(n85), .Z(N58) );
  GTECH_OA21 U79 ( .A(n78), .B(n86), .C(n87), .Z(n85) );
  GTECH_OR3 U80 ( .A(n88), .B(n14), .C(n89), .Z(n87) );
  GTECH_OA21 U81 ( .A(Mcand[0]), .B(n88), .C(n82), .Z(n86) );
  GTECH_NOT U82 ( .A(Mplier[3]), .Z(n83) );
  GTECH_OAI21 U83 ( .A(n84), .B(n90), .C(n88), .Z(N57) );
  GTECH_OAI2N2 U84 ( .A(n16), .B(n88), .C(Mplier[2]), .D(n91), .Z(N56) );
  GTECH_OAI2N2 U85 ( .A(n17), .B(n88), .C(Mplier[1]), .D(n91), .Z(N54) );
  GTECH_OAI2N2 U86 ( .A(n18), .B(n88), .C(Mplier[0]), .D(n91), .Z(N52) );
  GTECH_MUX2 U87 ( .A(n92), .B(n93), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U88 ( .A(n94), .B(n95), .S(n15), .Z(N48) );
  GTECH_MUX2 U89 ( .A(n96), .B(n97), .S(Mcand[3]), .Z(n95) );
  GTECH_OR_NOT U90 ( .A(n98), .B(n82), .Z(n94) );
  GTECH_MUX2 U91 ( .A(n97), .B(n96), .S(Mcand[3]), .Z(n98) );
  GTECH_OAI2N2 U92 ( .A(n99), .B(n100), .C(n101), .D(n102), .Z(n96) );
  GTECH_OAI2N2 U93 ( .A(n101), .B(n103), .C(n104), .D(n99), .Z(n97) );
  GTECH_OA21 U94 ( .A(n105), .B(n106), .C(n107), .Z(n99) );
  GTECH_OAI21 U95 ( .A(Mcand[2]), .B(n108), .C(n109), .Z(n107) );
  GTECH_OA21 U96 ( .A(Mcand[2]), .B(n110), .C(n111), .Z(n101) );
  GTECH_OAI21 U97 ( .A(n112), .B(n106), .C(n109), .Z(n111) );
  GTECH_NOT U98 ( .A(n79), .Z(n109) );
  GTECH_MUX2 U99 ( .A(n113), .B(n114), .S(n79), .Z(N46) );
  GTECH_NOT U100 ( .A(n115), .Z(n114) );
  GTECH_MUX2 U101 ( .A(n116), .B(n117), .S(n106), .Z(n115) );
  GTECH_NAND2 U102 ( .A(n118), .B(n82), .Z(n113) );
  GTECH_MUX2 U103 ( .A(n117), .B(n116), .S(n106), .Z(n118) );
  GTECH_NOT U104 ( .A(Mcand[2]), .Z(n106) );
  GTECH_AOI2N2 U105 ( .A(n112), .B(n102), .C(n108), .D(n100), .Z(n116) );
  GTECH_AOI2N2 U106 ( .A(n110), .B(n102), .C(n105), .D(n100), .Z(n117) );
  GTECH_NOT U107 ( .A(n108), .Z(n105) );
  GTECH_ADD_ABC U108 ( .A(n119), .B(Mcand[1]), .C(n120), .COUT(n108) );
  GTECH_AND_NOT U109 ( .A(Mcand[0]), .B(n78), .Z(n119) );
  GTECH_NOT U110 ( .A(n112), .Z(n110) );
  GTECH_ADD_ABC U111 ( .A(n89), .B(n121), .C(n120), .COUT(n112) );
  GTECH_NOT U112 ( .A(n80), .Z(n120) );
  GTECH_MUX2 U113 ( .A(n122), .B(n123), .S(n80), .Z(N44) );
  GTECH_MUX2 U114 ( .A(n124), .B(n125), .S(n121), .Z(n123) );
  GTECH_NOT U115 ( .A(Mcand[1]), .Z(n121) );
  GTECH_OR_NOT U116 ( .A(n126), .B(n82), .Z(n122) );
  GTECH_OR_NOT U117 ( .A(n88), .B(n14), .Z(n82) );
  GTECH_AND2 U118 ( .A(n127), .B(n128), .Z(n88) );
  GTECH_MUX2 U119 ( .A(n124), .B(n125), .S(Mcand[1]), .Z(n126) );
  GTECH_OAI22 U120 ( .A(n129), .B(n100), .C(n89), .D(n103), .Z(n125) );
  GTECH_NOT U121 ( .A(n102), .Z(n103) );
  GTECH_NOT U122 ( .A(n104), .Z(n100) );
  GTECH_AO22 U123 ( .A(n129), .B(n104), .C(n89), .D(n102), .Z(n124) );
  GTECH_AND_NOT U124 ( .A(n92), .B(n14), .Z(n102) );
  GTECH_NAND2 U125 ( .A(Mcand[0]), .B(n78), .Z(n89) );
  GTECH_NOR2 U126 ( .A(n14), .B(n128), .Z(n104) );
  GTECH_OR_NOT U127 ( .A(n78), .B(Mcand[0]), .Z(n129) );
  GTECH_NAND2 U128 ( .A(n127), .B(n130), .Z(N42) );
  GTECH_OR3 U129 ( .A(n12), .B(n81), .C(n128), .Z(n130) );
  GTECH_NOT U130 ( .A(n93), .Z(n128) );
  GTECH_NOT U131 ( .A(n92), .Z(n127) );
  GTECH_OA21 U132 ( .A(n12), .B(n81), .C(n93), .Z(N41) );
  GTECH_OAI21 U133 ( .A(n84), .B(n90), .C(n131), .Z(N40) );
  GTECH_AOI21 U134 ( .A(n12), .B(n93), .C(n92), .Z(n131) );
  GTECH_AND_NOT U135 ( .A(n132), .B(n13), .Z(n92) );
  GTECH_AND_NOT U136 ( .A(n13), .B(n132), .Z(n93) );
  GTECH_NOT U137 ( .A(St), .Z(n90) );
  GTECH_NOT U138 ( .A(n91), .Z(n84) );
  GTECH_AND_NOT U139 ( .A(n132), .B(n133), .Z(n91) );
  GTECH_AND_NOT U140 ( .A(n81), .B(n134), .Z(n132) );
  GTECH_AND3 U141 ( .A(n134), .B(n133), .C(n81), .Z(Done) );
  GTECH_NOT U142 ( .A(n13), .Z(n133) );
  GTECH_NOT U143 ( .A(n12), .Z(n134) );
endmodule

