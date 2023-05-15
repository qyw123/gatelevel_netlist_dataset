
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n13, n14, n15, n16, n17, n18, n19, n71, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n82) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .QN(n81) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n13) );
  GTECH_FJK1S B_reg_0_ ( .J(n71), .K(n71), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n14) );
  GTECH_FJK1S A_reg_3_ ( .J(n71), .K(n71), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n15) );
  GTECH_FJK1S A_reg_0_ ( .J(n71), .K(n71), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n16) );
  GTECH_FJK1S A_reg_1_ ( .J(n71), .K(n71), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n80) );
  GTECH_FJK1S A_reg_2_ ( .J(n71), .K(n71), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n79) );
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
  GTECH_NOR2 U81 ( .A(n90), .B(n14), .Z(n86) );
  GTECH_AO21 U82 ( .A(n85), .B(St), .C(n91), .Z(N57) );
  GTECH_OAI2N2 U83 ( .A(n17), .B(n90), .C(Mplier[2]), .D(n85), .Z(N56) );
  GTECH_OAI2N2 U84 ( .A(n18), .B(n90), .C(Mplier[1]), .D(n85), .Z(N54) );
  GTECH_OAI2N2 U85 ( .A(n19), .B(n90), .C(Mplier[0]), .D(n85), .Z(N52) );
  GTECH_MUX2 U86 ( .A(n92), .B(n93), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U87 ( .A(n94), .B(n95), .S(n15), .Z(N48) );
  GTECH_NOT U88 ( .A(n96), .Z(n95) );
  GTECH_MUX2 U89 ( .A(n97), .B(n98), .S(n99), .Z(n96) );
  GTECH_NOT U90 ( .A(Mcand[3]), .Z(n99) );
  GTECH_NAND2 U91 ( .A(n100), .B(n83), .Z(n94) );
  GTECH_MUX2 U92 ( .A(n97), .B(n98), .S(Mcand[3]), .Z(n100) );
  GTECH_AOI2N2 U93 ( .A(n101), .B(n102), .C(n103), .D(n104), .Z(n98) );
  GTECH_AOI2N2 U94 ( .A(n105), .B(n103), .C(n101), .D(n106), .Z(n97) );
  GTECH_OA21 U95 ( .A(Mcand[2]), .B(n107), .C(n108), .Z(n101) );
  GTECH_AO21 U96 ( .A(n107), .B(Mcand[2]), .C(n79), .Z(n108) );
  GTECH_OA21 U97 ( .A(n109), .B(n110), .C(n111), .Z(n103) );
  GTECH_AO21 U98 ( .A(n110), .B(n109), .C(n79), .Z(n111) );
  GTECH_NOT U99 ( .A(Mcand[2]), .Z(n110) );
  GTECH_MUX2 U100 ( .A(n112), .B(n113), .S(n79), .Z(N46) );
  GTECH_NOT U101 ( .A(n114), .Z(n113) );
  GTECH_MUX2 U102 ( .A(n115), .B(n116), .S(Mcand[2]), .Z(n114) );
  GTECH_NAND2 U103 ( .A(n117), .B(n83), .Z(n112) );
  GTECH_MUX2 U104 ( .A(n116), .B(n115), .S(Mcand[2]), .Z(n117) );
  GTECH_AOI2N2 U105 ( .A(n107), .B(n102), .C(n109), .D(n104), .Z(n115) );
  GTECH_NOT U106 ( .A(n118), .Z(n109) );
  GTECH_NOT U107 ( .A(n119), .Z(n107) );
  GTECH_AOI2N2 U108 ( .A(n119), .B(n102), .C(n118), .D(n104), .Z(n116) );
  GTECH_ADD_ABC U109 ( .A(n120), .B(Mcand[1]), .C(n121), .COUT(n118) );
  GTECH_AND_NOT U110 ( .A(Mcand[0]), .B(n16), .Z(n120) );
  GTECH_ADD_ABC U111 ( .A(n122), .B(n123), .C(n121), .COUT(n119) );
  GTECH_OR_NOT U112 ( .A(n89), .B(Mcand[0]), .Z(n122) );
  GTECH_MUX2 U113 ( .A(n124), .B(n125), .S(n121), .Z(N44) );
  GTECH_NOT U114 ( .A(n80), .Z(n121) );
  GTECH_OR_NOT U115 ( .A(n126), .B(n83), .Z(n125) );
  GTECH_NAND2 U116 ( .A(n91), .B(n14), .Z(n83) );
  GTECH_NOT U117 ( .A(n90), .Z(n91) );
  GTECH_NOR2 U118 ( .A(n92), .B(n93), .Z(n90) );
  GTECH_MUX2 U119 ( .A(n127), .B(n128), .S(n123), .Z(n126) );
  GTECH_NOT U120 ( .A(Mcand[1]), .Z(n123) );
  GTECH_MUX2 U121 ( .A(n127), .B(n128), .S(Mcand[1]), .Z(n124) );
  GTECH_OAI2N2 U122 ( .A(n87), .B(n106), .C(n129), .D(n105), .Z(n128) );
  GTECH_NOT U123 ( .A(n102), .Z(n106) );
  GTECH_OAI2N2 U124 ( .A(n129), .B(n104), .C(n87), .D(n102), .Z(n127) );
  GTECH_NOR2 U125 ( .A(n130), .B(n14), .Z(n102) );
  GTECH_AND_NOT U126 ( .A(Mcand[0]), .B(n89), .Z(n87) );
  GTECH_NOT U127 ( .A(n16), .Z(n89) );
  GTECH_NOT U128 ( .A(n105), .Z(n104) );
  GTECH_NOR2 U129 ( .A(n131), .B(n14), .Z(n105) );
  GTECH_OR_NOT U130 ( .A(n16), .B(Mcand[0]), .Z(n129) );
  GTECH_OR_NOT U131 ( .A(n92), .B(n132), .Z(N42) );
  GTECH_OR3 U132 ( .A(n81), .B(n82), .C(n131), .Z(n132) );
  GTECH_OA21 U133 ( .A(n81), .B(n82), .C(n93), .Z(N41) );
  GTECH_NOT U134 ( .A(n131), .Z(n93) );
  GTECH_AO21 U135 ( .A(n85), .B(St), .C(n133), .Z(N40) );
  GTECH_OAI21 U136 ( .A(n134), .B(n131), .C(n130), .Z(n133) );
  GTECH_NOT U137 ( .A(n92), .Z(n130) );
  GTECH_AND3 U138 ( .A(n81), .B(n135), .C(n82), .Z(n92) );
  GTECH_AO21 U139 ( .A(n81), .B(n82), .C(n135), .Z(n131) );
  GTECH_AND3 U140 ( .A(n82), .B(n81), .C(n13), .Z(n85) );
  GTECH_AND3 U141 ( .A(n135), .B(n134), .C(n81), .Z(Done) );
  GTECH_NOT U142 ( .A(n82), .Z(n134) );
  GTECH_NOT U143 ( .A(n13), .Z(n135) );
endmodule

