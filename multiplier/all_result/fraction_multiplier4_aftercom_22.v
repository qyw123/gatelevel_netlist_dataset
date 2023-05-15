
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n71, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n82) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n12) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n83) );
  GTECH_FJK1S B_reg_0_ ( .J(n71), .K(n71), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n81) );
  GTECH_FJK1S A_reg_3_ ( .J(n71), .K(n71), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n13) );
  GTECH_FJK1S A_reg_0_ ( .J(n71), .K(n71), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n14) );
  GTECH_FJK1S A_reg_1_ ( .J(n71), .K(n71), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n80) );
  GTECH_FJK1S A_reg_2_ ( .J(n71), .K(n71), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n79) );
  GTECH_FJK1S B_reg_3_ ( .J(n71), .K(n71), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n15) );
  GTECH_FJK1S B_reg_2_ ( .J(n71), .K(n71), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n16) );
  GTECH_FJK1S B_reg_1_ ( .J(n71), .K(n71), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n17) );
  GTECH_ZERO U78 ( .Z(n71) );
  GTECH_AND_NOT U79 ( .A(N57), .B(n84), .Z(N63) );
  GTECH_NOT U80 ( .A(n85), .Z(N58) );
  GTECH_AOI222 U81 ( .A(Mplier[3]), .B(n86), .C(n87), .D(n88), .E(n89), .F(n90), .Z(n85) );
  GTECH_NOT U82 ( .A(n14), .Z(n90) );
  GTECH_NOT U83 ( .A(n91), .Z(n89) );
  GTECH_OA21 U84 ( .A(n92), .B(Mcand[0]), .C(n93), .Z(n91) );
  GTECH_NOT U85 ( .A(n84), .Z(n93) );
  GTECH_NOR2 U86 ( .A(n92), .B(n81), .Z(n87) );
  GTECH_AO21 U87 ( .A(St), .B(n86), .C(n94), .Z(N57) );
  GTECH_OAI2N2 U88 ( .A(n15), .B(n92), .C(Mplier[2]), .D(n86), .Z(N56) );
  GTECH_OAI2N2 U89 ( .A(n16), .B(n92), .C(Mplier[1]), .D(n86), .Z(N54) );
  GTECH_OAI2N2 U90 ( .A(n17), .B(n92), .C(Mplier[0]), .D(n86), .Z(N52) );
  GTECH_MUX2 U91 ( .A(n95), .B(n96), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U92 ( .A(n97), .B(n98), .S(n13), .Z(N48) );
  GTECH_MUX2 U93 ( .A(n99), .B(n100), .S(Mcand[3]), .Z(n98) );
  GTECH_OR2 U94 ( .A(n101), .B(n84), .Z(n97) );
  GTECH_MUX2 U95 ( .A(n100), .B(n99), .S(Mcand[3]), .Z(n101) );
  GTECH_OAI2N2 U96 ( .A(n102), .B(n103), .C(n104), .D(n105), .Z(n99) );
  GTECH_OAI2N2 U97 ( .A(n104), .B(n106), .C(n102), .D(n107), .Z(n100) );
  GTECH_OA22 U98 ( .A(n108), .B(n109), .C(n79), .D(n110), .Z(n102) );
  GTECH_AND_NOT U99 ( .A(n108), .B(Mcand[2]), .Z(n110) );
  GTECH_OAI2N2 U100 ( .A(n111), .B(n109), .C(n112), .D(n79), .Z(n104) );
  GTECH_OR_NOT U101 ( .A(Mcand[2]), .B(n111), .Z(n112) );
  GTECH_MUX2 U102 ( .A(n113), .B(n114), .S(n79), .Z(N46) );
  GTECH_MUX2 U103 ( .A(n115), .B(n116), .S(Mcand[2]), .Z(n114) );
  GTECH_OR2 U104 ( .A(n117), .B(n84), .Z(n113) );
  GTECH_MUX2 U105 ( .A(n115), .B(n116), .S(n109), .Z(n117) );
  GTECH_NOT U106 ( .A(Mcand[2]), .Z(n109) );
  GTECH_AO22 U107 ( .A(n111), .B(n105), .C(n108), .D(n107), .Z(n116) );
  GTECH_OAI22 U108 ( .A(n111), .B(n106), .C(n108), .D(n103), .Z(n115) );
  GTECH_OA22 U109 ( .A(n118), .B(n119), .C(n80), .D(n120), .Z(n108) );
  GTECH_AND_NOT U110 ( .A(n119), .B(Mcand[1]), .Z(n120) );
  GTECH_OAI22 U111 ( .A(Mcand[1]), .B(n88), .C(n80), .D(n121), .Z(n111) );
  GTECH_AND_NOT U112 ( .A(n88), .B(n118), .Z(n121) );
  GTECH_MUX2 U113 ( .A(n122), .B(n123), .S(n80), .Z(N44) );
  GTECH_MUX2 U114 ( .A(n124), .B(n125), .S(Mcand[1]), .Z(n123) );
  GTECH_OR2 U115 ( .A(n126), .B(n84), .Z(n122) );
  GTECH_AND2 U116 ( .A(n81), .B(n94), .Z(n84) );
  GTECH_NOT U117 ( .A(n92), .Z(n94) );
  GTECH_AND_NOT U118 ( .A(n127), .B(n95), .Z(n92) );
  GTECH_MUX2 U119 ( .A(n124), .B(n125), .S(n118), .Z(n126) );
  GTECH_NOT U120 ( .A(Mcand[1]), .Z(n118) );
  GTECH_OAI2N2 U121 ( .A(n88), .B(n106), .C(n119), .D(n107), .Z(n125) );
  GTECH_OAI2N2 U122 ( .A(n119), .B(n103), .C(n88), .D(n105), .Z(n124) );
  GTECH_NOT U123 ( .A(n106), .Z(n105) );
  GTECH_OR_NOT U124 ( .A(n81), .B(n95), .Z(n106) );
  GTECH_AND2 U125 ( .A(Mcand[0]), .B(n14), .Z(n88) );
  GTECH_NOT U126 ( .A(n107), .Z(n103) );
  GTECH_AND_NOT U127 ( .A(n96), .B(n81), .Z(n107) );
  GTECH_OR_NOT U128 ( .A(n14), .B(Mcand[0]), .Z(n119) );
  GTECH_OR_NOT U129 ( .A(n95), .B(n128), .Z(N42) );
  GTECH_OR3 U130 ( .A(n82), .B(n83), .C(n127), .Z(n128) );
  GTECH_NOT U131 ( .A(n96), .Z(n127) );
  GTECH_OA21 U132 ( .A(n82), .B(n83), .C(n96), .Z(N41) );
  GTECH_AO21 U133 ( .A(St), .B(n86), .C(n129), .Z(N40) );
  GTECH_AO21 U134 ( .A(n96), .B(n82), .C(n95), .Z(n129) );
  GTECH_AND_NOT U135 ( .A(n130), .B(n12), .Z(n95) );
  GTECH_AND_NOT U136 ( .A(n12), .B(n130), .Z(n96) );
  GTECH_AND2 U137 ( .A(n12), .B(n130), .Z(n86) );
  GTECH_AND2 U138 ( .A(n82), .B(n83), .Z(n130) );
  GTECH_NOR3 U139 ( .A(n12), .B(n82), .C(n131), .Z(Done) );
  GTECH_NOT U140 ( .A(n83), .Z(n131) );
endmodule

