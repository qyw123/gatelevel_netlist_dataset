
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63, n12,
         n14, n15, n16, n17, n18, n71, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n81) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n83) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n82) );
  GTECH_FJK1S B_reg_0_ ( .J(n71), .K(n71), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n12) );
  GTECH_FJK1S A_reg_3_ ( .J(n71), .K(n71), .TI(N50), .TE(N63), .CP(CLK), .QN(
        n79) );
  GTECH_FJK1S A_reg_0_ ( .J(n71), .K(n71), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n14) );
  GTECH_FJK1S A_reg_1_ ( .J(n71), .K(n71), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n15) );
  GTECH_FJK1S A_reg_2_ ( .J(n71), .K(n71), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n80) );
  GTECH_FJK1S B_reg_3_ ( .J(n71), .K(n71), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n16) );
  GTECH_FJK1S B_reg_2_ ( .J(n71), .K(n71), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n17) );
  GTECH_FJK1S B_reg_1_ ( .J(n71), .K(n71), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n18) );
  GTECH_ZERO U77 ( .Z(n71) );
  GTECH_AND2 U78 ( .A(N57), .B(n84), .Z(N63) );
  GTECH_NOT U79 ( .A(n85), .Z(N58) );
  GTECH_AOI222 U80 ( .A(Mplier[3]), .B(n86), .C(n87), .D(n88), .E(n89), .F(n90), .Z(n85) );
  GTECH_OAI21 U81 ( .A(Mcand[0]), .B(n91), .C(n84), .Z(n89) );
  GTECH_NOR2 U82 ( .A(n12), .B(n91), .Z(n87) );
  GTECH_OAI21 U83 ( .A(n92), .B(n93), .C(n91), .Z(N57) );
  GTECH_OAI2N2 U84 ( .A(n16), .B(n91), .C(Mplier[2]), .D(n86), .Z(N56) );
  GTECH_OAI2N2 U85 ( .A(n17), .B(n91), .C(Mplier[1]), .D(n86), .Z(N54) );
  GTECH_OAI2N2 U86 ( .A(n18), .B(n91), .C(Mplier[0]), .D(n86), .Z(N52) );
  GTECH_MUX2 U87 ( .A(n94), .B(n95), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U88 ( .A(n96), .B(n97), .S(n79), .Z(N48) );
  GTECH_NOT U89 ( .A(n98), .Z(n97) );
  GTECH_MUX2 U90 ( .A(n99), .B(n100), .S(Mcand[3]), .Z(n98) );
  GTECH_NAND2 U91 ( .A(n101), .B(n84), .Z(n96) );
  GTECH_MUX2 U92 ( .A(n100), .B(n99), .S(Mcand[3]), .Z(n101) );
  GTECH_AOI2N2 U93 ( .A(n102), .B(n103), .C(n104), .D(n105), .Z(n99) );
  GTECH_AOI2N2 U94 ( .A(n104), .B(n106), .C(n107), .D(n102), .Z(n100) );
  GTECH_OAI21 U95 ( .A(n108), .B(n109), .C(n110), .Z(n102) );
  GTECH_OAI21 U96 ( .A(Mcand[2]), .B(n111), .C(n80), .Z(n110) );
  GTECH_OAI21 U97 ( .A(Mcand[2]), .B(n112), .C(n113), .Z(n104) );
  GTECH_OAI21 U98 ( .A(n114), .B(n109), .C(n80), .Z(n113) );
  GTECH_NOT U99 ( .A(Mcand[2]), .Z(n109) );
  GTECH_MUX2 U100 ( .A(n115), .B(n116), .S(n80), .Z(N46) );
  GTECH_MUX2 U101 ( .A(n117), .B(n118), .S(Mcand[2]), .Z(n116) );
  GTECH_OR_NOT U102 ( .A(n119), .B(n84), .Z(n115) );
  GTECH_MUX2 U103 ( .A(n118), .B(n117), .S(Mcand[2]), .Z(n119) );
  GTECH_OAI2N2 U104 ( .A(n108), .B(n107), .C(n112), .D(n106), .Z(n117) );
  GTECH_NOT U105 ( .A(n114), .Z(n112) );
  GTECH_NOT U106 ( .A(n111), .Z(n108) );
  GTECH_OAI2N2 U107 ( .A(n111), .B(n107), .C(n114), .D(n106), .Z(n118) );
  GTECH_OA21 U108 ( .A(n15), .B(n120), .C(n121), .Z(n114) );
  GTECH_AO21 U109 ( .A(n120), .B(n15), .C(n122), .Z(n121) );
  GTECH_ADD_ABC U110 ( .A(n88), .B(Mcand[1]), .C(n15), .COUT(n111) );
  GTECH_MUX2 U111 ( .A(n123), .B(n124), .S(n15), .Z(N44) );
  GTECH_NOT U112 ( .A(n125), .Z(n124) );
  GTECH_MUX2 U113 ( .A(n126), .B(n127), .S(n120), .Z(n125) );
  GTECH_NOT U114 ( .A(Mcand[1]), .Z(n120) );
  GTECH_NAND2 U115 ( .A(n128), .B(n84), .Z(n123) );
  GTECH_OR_NOT U116 ( .A(n91), .B(n12), .Z(n84) );
  GTECH_AND2 U117 ( .A(n129), .B(n130), .Z(n91) );
  GTECH_MUX2 U118 ( .A(n126), .B(n127), .S(Mcand[1]), .Z(n128) );
  GTECH_AOI2N2 U119 ( .A(n88), .B(n103), .C(n122), .D(n105), .Z(n127) );
  GTECH_NOT U120 ( .A(n106), .Z(n105) );
  GTECH_AOI2N2 U121 ( .A(n122), .B(n106), .C(n88), .D(n107), .Z(n126) );
  GTECH_NOT U122 ( .A(n103), .Z(n107) );
  GTECH_NOR2 U123 ( .A(n129), .B(n12), .Z(n103) );
  GTECH_AND2 U124 ( .A(Mcand[0]), .B(n14), .Z(n88) );
  GTECH_NOR2 U125 ( .A(n130), .B(n12), .Z(n106) );
  GTECH_NAND2 U126 ( .A(n90), .B(Mcand[0]), .Z(n122) );
  GTECH_NOT U127 ( .A(n14), .Z(n90) );
  GTECH_NAND2 U128 ( .A(n129), .B(n131), .Z(N42) );
  GTECH_OR3 U129 ( .A(n81), .B(n82), .C(n130), .Z(n131) );
  GTECH_OA21 U130 ( .A(n81), .B(n82), .C(n95), .Z(N41) );
  GTECH_OAI21 U131 ( .A(n92), .B(n93), .C(n132), .Z(N40) );
  GTECH_OA21 U132 ( .A(n133), .B(n130), .C(n129), .Z(n132) );
  GTECH_NOT U133 ( .A(n94), .Z(n129) );
  GTECH_NOR2 U134 ( .A(n83), .B(n134), .Z(n94) );
  GTECH_NOT U135 ( .A(n95), .Z(n130) );
  GTECH_AND2 U136 ( .A(n134), .B(n83), .Z(n95) );
  GTECH_NOT U137 ( .A(St), .Z(n93) );
  GTECH_NOT U138 ( .A(n86), .Z(n92) );
  GTECH_NOR2 U139 ( .A(n135), .B(n134), .Z(n86) );
  GTECH_NAND2 U140 ( .A(n81), .B(n82), .Z(n134) );
  GTECH_AND3 U141 ( .A(n133), .B(n135), .C(n82), .Z(Done) );
  GTECH_NOT U142 ( .A(n83), .Z(n135) );
  GTECH_NOT U143 ( .A(n81), .Z(n133) );
endmodule

