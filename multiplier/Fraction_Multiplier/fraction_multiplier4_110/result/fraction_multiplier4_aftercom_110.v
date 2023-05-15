
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n18, n19, n71, n79, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136;
  wire   [2:0] State;

  GTECH_FD2 State_reg_0_ ( .D(N40), .CP(CLK), .CD(n79), .Q(State[0]), .QN(n12)
         );
  GTECH_FD2 State_reg_2_ ( .D(N42), .CP(CLK), .CD(n79), .Q(State[2]), .QN(n13)
         );
  GTECH_FD2 State_reg_1_ ( .D(N41), .CP(CLK), .CD(n79), .Q(State[1]), .QN(n84)
         );
  GTECH_FJK1S B_reg_0_ ( .J(n71), .K(n71), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n14) );
  GTECH_FJK1S A_reg_3_ ( .J(n71), .K(n71), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n15) );
  GTECH_FJK1S A_reg_0_ ( .J(n71), .K(n71), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n83) );
  GTECH_FJK1S A_reg_1_ ( .J(n71), .K(n71), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n82) );
  GTECH_FJK1S A_reg_2_ ( .J(n71), .K(n71), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n16) );
  GTECH_FJK1S B_reg_3_ ( .J(n71), .K(n71), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n17) );
  GTECH_FJK1S B_reg_2_ ( .J(n71), .K(n71), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n18) );
  GTECH_FJK1S B_reg_1_ ( .J(n71), .K(n71), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n19) );
  GTECH_ONE U79 ( .Z(n79) );
  GTECH_ZERO U80 ( .Z(n71) );
  GTECH_AND2 U81 ( .A(n85), .B(N57), .Z(N63) );
  GTECH_NOT U82 ( .A(n86), .Z(N58) );
  GTECH_AOI222 U83 ( .A(Mplier[3]), .B(n87), .C(n88), .D(n89), .E(n90), .F(n91), .Z(n86) );
  GTECH_OAI21 U84 ( .A(Mcand[0]), .B(n92), .C(n85), .Z(n90) );
  GTECH_NOR2 U85 ( .A(n92), .B(n14), .Z(n88) );
  GTECH_OAI21 U86 ( .A(n93), .B(n94), .C(n92), .Z(N57) );
  GTECH_OAI2N2 U87 ( .A(n17), .B(n92), .C(Mplier[2]), .D(n87), .Z(N56) );
  GTECH_OAI2N2 U88 ( .A(n18), .B(n92), .C(Mplier[1]), .D(n87), .Z(N54) );
  GTECH_OAI2N2 U89 ( .A(n19), .B(n92), .C(Mplier[0]), .D(n87), .Z(N52) );
  GTECH_NOT U90 ( .A(n93), .Z(n87) );
  GTECH_MUX2 U91 ( .A(n95), .B(n96), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U92 ( .A(n97), .B(n98), .S(n15), .Z(N48) );
  GTECH_MUX2 U93 ( .A(n99), .B(n100), .S(n101), .Z(n98) );
  GTECH_NOT U94 ( .A(Mcand[3]), .Z(n101) );
  GTECH_OR_NOT U95 ( .A(n102), .B(n85), .Z(n97) );
  GTECH_MUX2 U96 ( .A(n99), .B(n100), .S(Mcand[3]), .Z(n102) );
  GTECH_OAI22 U97 ( .A(n103), .B(n104), .C(n105), .D(n106), .Z(n100) );
  GTECH_AO22 U98 ( .A(n103), .B(n107), .C(n105), .D(n108), .Z(n99) );
  GTECH_OA21 U99 ( .A(n109), .B(n110), .C(n111), .Z(n105) );
  GTECH_AO21 U100 ( .A(n110), .B(n109), .C(n112), .Z(n111) );
  GTECH_AOI21 U101 ( .A(n113), .B(Mcand[2]), .C(n114), .Z(n103) );
  GTECH_OA21 U102 ( .A(Mcand[2]), .B(n113), .C(n112), .Z(n114) );
  GTECH_NOT U103 ( .A(n16), .Z(n112) );
  GTECH_MUX2 U104 ( .A(n115), .B(n116), .S(n16), .Z(N46) );
  GTECH_NOT U105 ( .A(n117), .Z(n116) );
  GTECH_MUX2 U106 ( .A(n118), .B(n119), .S(n110), .Z(n117) );
  GTECH_NOT U107 ( .A(Mcand[2]), .Z(n110) );
  GTECH_NAND2 U108 ( .A(n120), .B(n85), .Z(n115) );
  GTECH_MUX2 U109 ( .A(n118), .B(n119), .S(Mcand[2]), .Z(n120) );
  GTECH_AOI2N2 U110 ( .A(n113), .B(n107), .C(n109), .D(n106), .Z(n119) );
  GTECH_AOI2N2 U111 ( .A(n109), .B(n108), .C(n113), .D(n104), .Z(n118) );
  GTECH_ADD_ABC U112 ( .A(Mcand[1]), .B(n121), .C(n122), .COUT(n113) );
  GTECH_AND_NOT U113 ( .A(Mcand[0]), .B(n83), .Z(n121) );
  GTECH_ADD_ABC U114 ( .A(n123), .B(n124), .C(n122), .COUT(n109) );
  GTECH_OR_NOT U115 ( .A(n91), .B(Mcand[0]), .Z(n123) );
  GTECH_MUX2 U116 ( .A(n125), .B(n126), .S(n122), .Z(N44) );
  GTECH_NOT U117 ( .A(n82), .Z(n122) );
  GTECH_OR_NOT U118 ( .A(n127), .B(n85), .Z(n126) );
  GTECH_OR_NOT U119 ( .A(n92), .B(n14), .Z(n85) );
  GTECH_NOR2 U120 ( .A(n96), .B(n95), .Z(n92) );
  GTECH_MUX2 U121 ( .A(n128), .B(n129), .S(n124), .Z(n127) );
  GTECH_NOT U122 ( .A(Mcand[1]), .Z(n124) );
  GTECH_MUX2 U123 ( .A(n128), .B(n129), .S(Mcand[1]), .Z(n125) );
  GTECH_AOI21 U124 ( .A(n106), .B(n130), .C(n131), .Z(n129) );
  GTECH_OA21 U125 ( .A(n89), .B(n106), .C(n104), .Z(n131) );
  GTECH_NOT U126 ( .A(n107), .Z(n104) );
  GTECH_AO22 U127 ( .A(n89), .B(n108), .C(n130), .D(n107), .Z(n128) );
  GTECH_NOR2 U128 ( .A(n132), .B(n14), .Z(n107) );
  GTECH_AND2 U129 ( .A(Mcand[0]), .B(n91), .Z(n130) );
  GTECH_NOT U130 ( .A(n83), .Z(n91) );
  GTECH_NOT U131 ( .A(n106), .Z(n108) );
  GTECH_OR_NOT U132 ( .A(n14), .B(n95), .Z(n106) );
  GTECH_AND2 U133 ( .A(Mcand[0]), .B(n83), .Z(n89) );
  GTECH_OR_NOT U134 ( .A(n95), .B(n133), .Z(N42) );
  GTECH_OR3 U135 ( .A(n84), .B(n12), .C(n132), .Z(n133) );
  GTECH_OA21 U136 ( .A(n12), .B(n84), .C(n96), .Z(N41) );
  GTECH_OAI21 U137 ( .A(n93), .B(n94), .C(n134), .Z(N40) );
  GTECH_AOI21 U138 ( .A(n12), .B(n96), .C(n95), .Z(n134) );
  GTECH_AND_NOT U139 ( .A(n135), .B(n13), .Z(n95) );
  GTECH_NOT U140 ( .A(n132), .Z(n96) );
  GTECH_OR_NOT U141 ( .A(n135), .B(n13), .Z(n132) );
  GTECH_NOT U142 ( .A(St), .Z(n94) );
  GTECH_NAND2 U143 ( .A(n135), .B(n13), .Z(n93) );
  GTECH_AND2 U144 ( .A(n12), .B(n84), .Z(n135) );
  GTECH_NOR3 U145 ( .A(n12), .B(n13), .C(n136), .Z(Done) );
  GTECH_NOT U146 ( .A(n84), .Z(n136) );
endmodule

