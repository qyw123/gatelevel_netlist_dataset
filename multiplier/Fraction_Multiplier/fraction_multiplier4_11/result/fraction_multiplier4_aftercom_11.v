
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n18, n19, n71, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n12) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n13) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n81) );
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
  GTECH_AND2 U77 ( .A(n82), .B(N57), .Z(N63) );
  GTECH_NOT U78 ( .A(n83), .Z(N58) );
  GTECH_AOI222 U79 ( .A(Mplier[3]), .B(n84), .C(n85), .D(n86), .E(n87), .F(n88), .Z(n83) );
  GTECH_OAI21 U80 ( .A(Mcand[0]), .B(n89), .C(n82), .Z(n87) );
  GTECH_NOR2 U81 ( .A(n89), .B(n14), .Z(n85) );
  GTECH_OAI21 U82 ( .A(n90), .B(n91), .C(n89), .Z(N57) );
  GTECH_OAI2N2 U83 ( .A(n17), .B(n89), .C(Mplier[2]), .D(n84), .Z(N56) );
  GTECH_OAI2N2 U84 ( .A(n18), .B(n89), .C(Mplier[1]), .D(n84), .Z(N54) );
  GTECH_OAI2N2 U85 ( .A(n19), .B(n89), .C(Mplier[0]), .D(n84), .Z(N52) );
  GTECH_NOT U86 ( .A(n90), .Z(n84) );
  GTECH_MUX2 U87 ( .A(n92), .B(n93), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U88 ( .A(n94), .B(n95), .S(n15), .Z(N48) );
  GTECH_MUX2 U89 ( .A(n96), .B(n97), .S(n98), .Z(n95) );
  GTECH_NOT U90 ( .A(Mcand[3]), .Z(n98) );
  GTECH_OR_NOT U91 ( .A(n99), .B(n82), .Z(n94) );
  GTECH_MUX2 U92 ( .A(n96), .B(n97), .S(Mcand[3]), .Z(n99) );
  GTECH_OAI22 U93 ( .A(n100), .B(n101), .C(n102), .D(n103), .Z(n97) );
  GTECH_AO22 U94 ( .A(n100), .B(n104), .C(n102), .D(n105), .Z(n96) );
  GTECH_OA21 U95 ( .A(n106), .B(n107), .C(n108), .Z(n102) );
  GTECH_AO21 U96 ( .A(n107), .B(n106), .C(n109), .Z(n108) );
  GTECH_AOI21 U97 ( .A(n110), .B(Mcand[2]), .C(n111), .Z(n100) );
  GTECH_OA21 U98 ( .A(Mcand[2]), .B(n110), .C(n109), .Z(n111) );
  GTECH_NOT U99 ( .A(n16), .Z(n109) );
  GTECH_MUX2 U100 ( .A(n112), .B(n113), .S(n16), .Z(N46) );
  GTECH_NOT U101 ( .A(n114), .Z(n113) );
  GTECH_MUX2 U102 ( .A(n115), .B(n116), .S(n107), .Z(n114) );
  GTECH_NOT U103 ( .A(Mcand[2]), .Z(n107) );
  GTECH_NAND2 U104 ( .A(n117), .B(n82), .Z(n112) );
  GTECH_MUX2 U105 ( .A(n115), .B(n116), .S(Mcand[2]), .Z(n117) );
  GTECH_AOI2N2 U106 ( .A(n110), .B(n104), .C(n106), .D(n103), .Z(n116) );
  GTECH_AOI2N2 U107 ( .A(n106), .B(n105), .C(n110), .D(n101), .Z(n115) );
  GTECH_ADD_ABC U108 ( .A(Mcand[1]), .B(n118), .C(n119), .COUT(n110) );
  GTECH_AND_NOT U109 ( .A(Mcand[0]), .B(n80), .Z(n118) );
  GTECH_ADD_ABC U110 ( .A(n120), .B(n121), .C(n119), .COUT(n106) );
  GTECH_OR_NOT U111 ( .A(n88), .B(Mcand[0]), .Z(n120) );
  GTECH_MUX2 U112 ( .A(n122), .B(n123), .S(n119), .Z(N44) );
  GTECH_NOT U113 ( .A(n79), .Z(n119) );
  GTECH_OR_NOT U114 ( .A(n124), .B(n82), .Z(n123) );
  GTECH_OR_NOT U115 ( .A(n89), .B(n14), .Z(n82) );
  GTECH_NOR2 U116 ( .A(n93), .B(n92), .Z(n89) );
  GTECH_MUX2 U117 ( .A(n125), .B(n126), .S(n121), .Z(n124) );
  GTECH_NOT U118 ( .A(Mcand[1]), .Z(n121) );
  GTECH_MUX2 U119 ( .A(n125), .B(n126), .S(Mcand[1]), .Z(n122) );
  GTECH_AOI21 U120 ( .A(n103), .B(n127), .C(n128), .Z(n126) );
  GTECH_OA21 U121 ( .A(n86), .B(n103), .C(n101), .Z(n128) );
  GTECH_NOT U122 ( .A(n104), .Z(n101) );
  GTECH_AO22 U123 ( .A(n86), .B(n105), .C(n127), .D(n104), .Z(n125) );
  GTECH_NOR2 U124 ( .A(n129), .B(n14), .Z(n104) );
  GTECH_AND2 U125 ( .A(Mcand[0]), .B(n88), .Z(n127) );
  GTECH_NOT U126 ( .A(n80), .Z(n88) );
  GTECH_NOT U127 ( .A(n103), .Z(n105) );
  GTECH_OR_NOT U128 ( .A(n14), .B(n92), .Z(n103) );
  GTECH_AND2 U129 ( .A(Mcand[0]), .B(n80), .Z(n86) );
  GTECH_OR_NOT U130 ( .A(n92), .B(n130), .Z(N42) );
  GTECH_OR3 U131 ( .A(n81), .B(n12), .C(n129), .Z(n130) );
  GTECH_OA21 U132 ( .A(n12), .B(n81), .C(n93), .Z(N41) );
  GTECH_OAI21 U133 ( .A(n90), .B(n91), .C(n131), .Z(N40) );
  GTECH_AOI21 U134 ( .A(n12), .B(n93), .C(n92), .Z(n131) );
  GTECH_AND_NOT U135 ( .A(n132), .B(n13), .Z(n92) );
  GTECH_NOT U136 ( .A(n129), .Z(n93) );
  GTECH_OR_NOT U137 ( .A(n132), .B(n13), .Z(n129) );
  GTECH_NOT U138 ( .A(St), .Z(n91) );
  GTECH_NAND2 U139 ( .A(n132), .B(n13), .Z(n90) );
  GTECH_AND2 U140 ( .A(n12), .B(n81), .Z(n132) );
  GTECH_NOR3 U141 ( .A(n12), .B(n13), .C(n133), .Z(Done) );
  GTECH_NOT U142 ( .A(n81), .Z(n133) );
endmodule

