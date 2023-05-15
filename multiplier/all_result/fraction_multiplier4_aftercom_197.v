
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n14, n15, n16, n17, n18, n19, n71, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n81) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n12) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .QN(n82) );
  GTECH_FJK1S B_reg_0_ ( .J(n71), .K(n71), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n14) );
  GTECH_FJK1S A_reg_3_ ( .J(n71), .K(n71), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n15) );
  GTECH_FJK1S A_reg_0_ ( .J(n71), .K(n71), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n80) );
  GTECH_FJK1S A_reg_1_ ( .J(n71), .K(n71), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n79) );
  GTECH_FJK1S A_reg_2_ ( .J(n71), .K(n71), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n16) );
  GTECH_FJK1S B_reg_3_ ( .J(n71), .K(n71), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n17) );
  GTECH_FJK1S B_reg_2_ ( .J(n71), .K(n71), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n18) );
  GTECH_FJK1S B_reg_1_ ( .J(n71), .K(n71), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n19) );
  GTECH_ZERO U76 ( .Z(n71) );
  GTECH_AND2 U77 ( .A(N57), .B(n83), .Z(N63) );
  GTECH_NOT U78 ( .A(n84), .Z(N58) );
  GTECH_AOI222 U79 ( .A(Mplier[3]), .B(n85), .C(n86), .D(n87), .E(n88), .F(n89), .Z(n84) );
  GTECH_OAI21 U80 ( .A(Mcand[0]), .B(n90), .C(n83), .Z(n88) );
  GTECH_AND_NOT U81 ( .A(n91), .B(n90), .Z(n86) );
  GTECH_OAI21 U82 ( .A(n92), .B(n93), .C(n90), .Z(N57) );
  GTECH_OAI2N2 U83 ( .A(n17), .B(n90), .C(Mplier[2]), .D(n85), .Z(N56) );
  GTECH_OAI2N2 U84 ( .A(n18), .B(n90), .C(Mplier[1]), .D(n85), .Z(N54) );
  GTECH_OAI2N2 U85 ( .A(n19), .B(n90), .C(Mplier[0]), .D(n85), .Z(N52) );
  GTECH_MUX2 U86 ( .A(n94), .B(n95), .S(n96), .Z(N50) );
  GTECH_MUX2 U87 ( .A(n97), .B(n98), .S(n15), .Z(N48) );
  GTECH_MUX2 U88 ( .A(n99), .B(n100), .S(Mcand[3]), .Z(n98) );
  GTECH_OR2 U89 ( .A(n101), .B(n102), .Z(n97) );
  GTECH_MUX2 U90 ( .A(n99), .B(n100), .S(n96), .Z(n101) );
  GTECH_NOT U91 ( .A(Mcand[3]), .Z(n96) );
  GTECH_AO22 U92 ( .A(n103), .B(n104), .C(n105), .D(n106), .Z(n100) );
  GTECH_OAI22 U93 ( .A(n103), .B(n107), .C(n105), .D(n108), .Z(n99) );
  GTECH_OA21 U94 ( .A(n109), .B(n110), .C(n111), .Z(n105) );
  GTECH_AO21 U95 ( .A(n110), .B(n109), .C(n112), .Z(n111) );
  GTECH_AOI21 U96 ( .A(n113), .B(Mcand[2]), .C(n114), .Z(n103) );
  GTECH_OA21 U97 ( .A(Mcand[2]), .B(n113), .C(n112), .Z(n114) );
  GTECH_MUX2 U98 ( .A(n115), .B(n116), .S(n112), .Z(N46) );
  GTECH_NOT U99 ( .A(n16), .Z(n112) );
  GTECH_OR_NOT U100 ( .A(n102), .B(n117), .Z(n116) );
  GTECH_MUX2 U101 ( .A(n118), .B(n119), .S(n110), .Z(n117) );
  GTECH_NOT U102 ( .A(Mcand[2]), .Z(n110) );
  GTECH_NOT U103 ( .A(n83), .Z(n102) );
  GTECH_NOT U104 ( .A(n120), .Z(n115) );
  GTECH_MUX2 U105 ( .A(n118), .B(n119), .S(Mcand[2]), .Z(n120) );
  GTECH_AOI2N2 U106 ( .A(n109), .B(n106), .C(n113), .D(n107), .Z(n119) );
  GTECH_AOI2N2 U107 ( .A(n113), .B(n104), .C(n109), .D(n108), .Z(n118) );
  GTECH_ADD_ABC U108 ( .A(n121), .B(n122), .C(n123), .COUT(n109) );
  GTECH_OR_NOT U109 ( .A(n89), .B(Mcand[0]), .Z(n121) );
  GTECH_ADD_ABC U110 ( .A(Mcand[1]), .B(n124), .C(n123), .COUT(n113) );
  GTECH_NOT U111 ( .A(n79), .Z(n123) );
  GTECH_MUX2 U112 ( .A(n125), .B(n126), .S(n79), .Z(N44) );
  GTECH_MUX2 U113 ( .A(n127), .B(n128), .S(n122), .Z(n126) );
  GTECH_NOT U114 ( .A(Mcand[1]), .Z(n122) );
  GTECH_OR_NOT U115 ( .A(n129), .B(n83), .Z(n125) );
  GTECH_OR2 U116 ( .A(n91), .B(n90), .Z(n83) );
  GTECH_AND2 U117 ( .A(n130), .B(n131), .Z(n90) );
  GTECH_MUX2 U118 ( .A(n127), .B(n128), .S(Mcand[1]), .Z(n129) );
  GTECH_AO22 U119 ( .A(n87), .B(n106), .C(n124), .D(n104), .Z(n128) );
  GTECH_AOI21 U120 ( .A(n108), .B(n124), .C(n132), .Z(n127) );
  GTECH_OA21 U121 ( .A(n87), .B(n108), .C(n107), .Z(n132) );
  GTECH_NOT U122 ( .A(n104), .Z(n107) );
  GTECH_AND_NOT U123 ( .A(n91), .B(n131), .Z(n104) );
  GTECH_NOT U124 ( .A(n14), .Z(n91) );
  GTECH_AND_NOT U125 ( .A(Mcand[0]), .B(n89), .Z(n87) );
  GTECH_AND2 U126 ( .A(Mcand[0]), .B(n89), .Z(n124) );
  GTECH_NOT U127 ( .A(n80), .Z(n89) );
  GTECH_NOT U128 ( .A(n106), .Z(n108) );
  GTECH_AND_NOT U129 ( .A(n95), .B(n14), .Z(n106) );
  GTECH_OAI21 U130 ( .A(n131), .B(n133), .C(n130), .Z(N42) );
  GTECH_OR_NOT U131 ( .A(n12), .B(n134), .Z(n133) );
  GTECH_OA21 U132 ( .A(n12), .B(n81), .C(n94), .Z(N41) );
  GTECH_OAI21 U133 ( .A(n92), .B(n93), .C(n135), .Z(N40) );
  GTECH_OA21 U134 ( .A(n134), .B(n131), .C(n130), .Z(n135) );
  GTECH_NOT U135 ( .A(n95), .Z(n130) );
  GTECH_AND3 U136 ( .A(n12), .B(n136), .C(n81), .Z(n95) );
  GTECH_NOT U137 ( .A(n94), .Z(n131) );
  GTECH_OA21 U138 ( .A(n137), .B(n134), .C(n82), .Z(n94) );
  GTECH_NOT U139 ( .A(n12), .Z(n137) );
  GTECH_NOT U140 ( .A(St), .Z(n93) );
  GTECH_NOT U141 ( .A(n85), .Z(n92) );
  GTECH_AND3 U142 ( .A(n81), .B(n12), .C(n82), .Z(n85) );
  GTECH_AND3 U143 ( .A(n134), .B(n136), .C(n12), .Z(Done) );
  GTECH_NOT U144 ( .A(n82), .Z(n136) );
  GTECH_NOT U145 ( .A(n81), .Z(n134) );
endmodule

