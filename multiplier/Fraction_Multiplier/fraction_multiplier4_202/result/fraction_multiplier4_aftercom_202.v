
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n18, n71, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n81) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n12) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n82) );
  GTECH_FJK1S B_reg_0_ ( .J(n71), .K(n71), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n13) );
  GTECH_FJK1S A_reg_3_ ( .J(n71), .K(n71), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n14) );
  GTECH_FJK1S A_reg_0_ ( .J(n71), .K(n71), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n80) );
  GTECH_FJK1S A_reg_1_ ( .J(n71), .K(n71), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n79) );
  GTECH_FJK1S A_reg_2_ ( .J(n71), .K(n71), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n15) );
  GTECH_FJK1S B_reg_3_ ( .J(n71), .K(n71), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n16) );
  GTECH_FJK1S B_reg_2_ ( .J(n71), .K(n71), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n17) );
  GTECH_FJK1S B_reg_1_ ( .J(n71), .K(n71), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n18) );
  GTECH_ZERO U77 ( .Z(n71) );
  GTECH_AND2 U78 ( .A(N57), .B(n83), .Z(N63) );
  GTECH_NOT U79 ( .A(n84), .Z(N58) );
  GTECH_AOI222 U80 ( .A(Mplier[3]), .B(n85), .C(n86), .D(n87), .E(n88), .F(n89), .Z(n84) );
  GTECH_OAI21 U81 ( .A(Mcand[0]), .B(n90), .C(n83), .Z(n88) );
  GTECH_AND2 U82 ( .A(n91), .B(n92), .Z(n86) );
  GTECH_NOT U83 ( .A(n13), .Z(n92) );
  GTECH_AO21 U84 ( .A(n85), .B(St), .C(n91), .Z(N57) );
  GTECH_NOT U85 ( .A(n90), .Z(n91) );
  GTECH_OAI2N2 U86 ( .A(n16), .B(n90), .C(Mplier[2]), .D(n85), .Z(N56) );
  GTECH_OAI2N2 U87 ( .A(n17), .B(n90), .C(Mplier[1]), .D(n85), .Z(N54) );
  GTECH_OAI2N2 U88 ( .A(n18), .B(n90), .C(Mplier[0]), .D(n85), .Z(N52) );
  GTECH_MUX2 U89 ( .A(n93), .B(n94), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U90 ( .A(n95), .B(n96), .S(n14), .Z(N48) );
  GTECH_MUX2 U91 ( .A(n97), .B(n98), .S(Mcand[3]), .Z(n96) );
  GTECH_OR2 U92 ( .A(n99), .B(n100), .Z(n95) );
  GTECH_MUX2 U93 ( .A(n98), .B(n97), .S(Mcand[3]), .Z(n99) );
  GTECH_OAI22 U94 ( .A(n101), .B(n102), .C(n103), .D(n104), .Z(n97) );
  GTECH_AO22 U95 ( .A(n101), .B(n105), .C(n103), .D(n106), .Z(n98) );
  GTECH_OA21 U96 ( .A(n107), .B(n108), .C(n109), .Z(n103) );
  GTECH_OAI21 U97 ( .A(Mcand[2]), .B(n110), .C(n15), .Z(n109) );
  GTECH_AOI21 U98 ( .A(n111), .B(Mcand[2]), .C(n112), .Z(n101) );
  GTECH_OA21 U99 ( .A(Mcand[2]), .B(n111), .C(n113), .Z(n112) );
  GTECH_MUX2 U100 ( .A(n114), .B(n115), .S(n113), .Z(N46) );
  GTECH_NOT U101 ( .A(n15), .Z(n113) );
  GTECH_NAND2 U102 ( .A(n116), .B(n83), .Z(n115) );
  GTECH_NOT U103 ( .A(n100), .Z(n83) );
  GTECH_MUX2 U104 ( .A(n117), .B(n118), .S(n108), .Z(n116) );
  GTECH_NOT U105 ( .A(Mcand[2]), .Z(n108) );
  GTECH_NOT U106 ( .A(n119), .Z(n114) );
  GTECH_MUX2 U107 ( .A(n117), .B(n118), .S(Mcand[2]), .Z(n119) );
  GTECH_OA22 U108 ( .A(n110), .B(n104), .C(n111), .D(n102), .Z(n118) );
  GTECH_NOT U109 ( .A(n107), .Z(n110) );
  GTECH_AOI2N2 U110 ( .A(n111), .B(n105), .C(n107), .D(n104), .Z(n117) );
  GTECH_ADD_ABC U111 ( .A(n120), .B(n121), .C(n122), .COUT(n107) );
  GTECH_NAND2 U112 ( .A(n80), .B(Mcand[0]), .Z(n120) );
  GTECH_ADD_ABC U113 ( .A(Mcand[1]), .B(n123), .C(n122), .COUT(n111) );
  GTECH_NOT U114 ( .A(n79), .Z(n122) );
  GTECH_MUX2 U115 ( .A(n124), .B(n125), .S(n79), .Z(N44) );
  GTECH_MUX2 U116 ( .A(n126), .B(n127), .S(n121), .Z(n125) );
  GTECH_NOT U117 ( .A(Mcand[1]), .Z(n121) );
  GTECH_OR2 U118 ( .A(n128), .B(n100), .Z(n124) );
  GTECH_AND_NOT U119 ( .A(n13), .B(n90), .Z(n100) );
  GTECH_AND_NOT U120 ( .A(n129), .B(n94), .Z(n90) );
  GTECH_MUX2 U121 ( .A(n126), .B(n127), .S(Mcand[1]), .Z(n128) );
  GTECH_AO22 U122 ( .A(n87), .B(n106), .C(n123), .D(n105), .Z(n127) );
  GTECH_AOI21 U123 ( .A(n104), .B(n123), .C(n130), .Z(n126) );
  GTECH_OA21 U124 ( .A(n87), .B(n104), .C(n102), .Z(n130) );
  GTECH_NOT U125 ( .A(n105), .Z(n102) );
  GTECH_AND_NOT U126 ( .A(n94), .B(n13), .Z(n105) );
  GTECH_AND_NOT U127 ( .A(Mcand[0]), .B(n89), .Z(n87) );
  GTECH_AND2 U128 ( .A(Mcand[0]), .B(n89), .Z(n123) );
  GTECH_NOT U129 ( .A(n80), .Z(n89) );
  GTECH_NOT U130 ( .A(n106), .Z(n104) );
  GTECH_AND_NOT U131 ( .A(n93), .B(n13), .Z(n106) );
  GTECH_NAND2 U132 ( .A(n131), .B(n129), .Z(N42) );
  GTECH_NAND3 U133 ( .A(n132), .B(n133), .C(n94), .Z(n131) );
  GTECH_OA21 U134 ( .A(n81), .B(n82), .C(n94), .Z(N41) );
  GTECH_AO21 U135 ( .A(n85), .B(St), .C(n134), .Z(N40) );
  GTECH_AO21 U136 ( .A(n81), .B(n94), .C(n93), .Z(n134) );
  GTECH_NOT U137 ( .A(n129), .Z(n93) );
  GTECH_OR3 U138 ( .A(n132), .B(n12), .C(n133), .Z(n129) );
  GTECH_OA21 U139 ( .A(n132), .B(n133), .C(n12), .Z(n94) );
  GTECH_NOT U140 ( .A(n81), .Z(n132) );
  GTECH_AND3 U141 ( .A(n82), .B(n81), .C(n12), .Z(n85) );
  GTECH_NOR3 U142 ( .A(n12), .B(n81), .C(n133), .Z(Done) );
  GTECH_NOT U143 ( .A(n82), .Z(n133) );
endmodule

