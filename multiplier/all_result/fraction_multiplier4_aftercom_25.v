
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63, n12,
         n13, n15, n16, n17, n18, n19, n20, n77, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n86) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n12) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n87) );
  GTECH_FJK1S B_reg_0_ ( .J(n77), .K(n77), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n13) );
  GTECH_FJK1S A_reg_3_ ( .J(n77), .K(n77), .TI(N50), .TE(N63), .CP(CLK), .QN(
        n85) );
  GTECH_FJK1S A_reg_0_ ( .J(n77), .K(n77), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n15) );
  GTECH_FJK1S A_reg_1_ ( .J(n77), .K(n77), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n16) );
  GTECH_FJK1S A_reg_2_ ( .J(n77), .K(n77), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n17) );
  GTECH_FJK1S B_reg_3_ ( .J(n77), .K(n77), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n18) );
  GTECH_FJK1S B_reg_2_ ( .J(n77), .K(n77), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n19) );
  GTECH_FJK1S B_reg_1_ ( .J(n77), .K(n77), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n20) );
  GTECH_ZERO U81 ( .Z(n77) );
  GTECH_AND_NOT U82 ( .A(N57), .B(n88), .Z(N63) );
  GTECH_NOT U83 ( .A(n89), .Z(N58) );
  GTECH_AOI222 U84 ( .A(Mplier[3]), .B(n90), .C(n91), .D(n92), .E(n93), .F(n94), .Z(n89) );
  GTECH_AO21 U85 ( .A(n95), .B(n96), .C(n88), .Z(n93) );
  GTECH_NOR2 U86 ( .A(n97), .B(n13), .Z(n91) );
  GTECH_AO21 U87 ( .A(St), .B(n90), .C(n95), .Z(N57) );
  GTECH_OAI2N2 U88 ( .A(n18), .B(n97), .C(Mplier[2]), .D(n90), .Z(N56) );
  GTECH_OAI2N2 U89 ( .A(n19), .B(n97), .C(Mplier[1]), .D(n90), .Z(N54) );
  GTECH_OAI2N2 U90 ( .A(n20), .B(n97), .C(Mplier[0]), .D(n90), .Z(N52) );
  GTECH_NOT U91 ( .A(n95), .Z(n97) );
  GTECH_MUX2 U92 ( .A(n98), .B(n99), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U93 ( .A(n100), .B(n101), .S(n85), .Z(N48) );
  GTECH_NOT U94 ( .A(n102), .Z(n101) );
  GTECH_MUX2 U95 ( .A(n103), .B(n104), .S(Mcand[3]), .Z(n102) );
  GTECH_OR_NOT U96 ( .A(n88), .B(n105), .Z(n100) );
  GTECH_MUX2 U97 ( .A(n104), .B(n103), .S(Mcand[3]), .Z(n105) );
  GTECH_AOI2N2 U98 ( .A(n106), .B(n107), .C(n108), .D(n109), .Z(n103) );
  GTECH_AOI2N2 U99 ( .A(n109), .B(n110), .C(n107), .D(n111), .Z(n104) );
  GTECH_AOI2N2 U100 ( .A(n112), .B(n17), .C(Mcand[2]), .D(n113), .Z(n107) );
  GTECH_OR_NOT U101 ( .A(n114), .B(Mcand[2]), .Z(n112) );
  GTECH_OAI22 U102 ( .A(Mcand[2]), .B(n115), .C(n17), .D(n116), .Z(n109) );
  GTECH_AND2 U103 ( .A(n115), .B(Mcand[2]), .Z(n116) );
  GTECH_MUX2 U104 ( .A(n117), .B(n118), .S(n17), .Z(N46) );
  GTECH_NOT U105 ( .A(n119), .Z(n118) );
  GTECH_MUX2 U106 ( .A(n120), .B(n121), .S(Mcand[2]), .Z(n119) );
  GTECH_OR_NOT U107 ( .A(n88), .B(n122), .Z(n117) );
  GTECH_MUX2 U108 ( .A(n121), .B(n120), .S(Mcand[2]), .Z(n122) );
  GTECH_AOI22 U109 ( .A(n115), .B(n110), .C(n113), .D(n106), .Z(n120) );
  GTECH_AOI2N2 U110 ( .A(n114), .B(n106), .C(n115), .D(n108), .Z(n121) );
  GTECH_ADD_ABC U111 ( .A(n123), .B(Mcand[1]), .C(n16), .COUT(n115) );
  GTECH_AND2 U112 ( .A(Mcand[0]), .B(n15), .Z(n123) );
  GTECH_NOT U113 ( .A(n111), .Z(n106) );
  GTECH_NOT U114 ( .A(n113), .Z(n114) );
  GTECH_OAI2N2 U115 ( .A(n96), .B(n124), .C(n125), .D(Mcand[1]), .Z(n113) );
  GTECH_OR2 U116 ( .A(n126), .B(n15), .Z(n124) );
  GTECH_NOT U117 ( .A(Mcand[0]), .Z(n96) );
  GTECH_AO21 U118 ( .A(n126), .B(n127), .C(n128), .Z(N44) );
  GTECH_MUX2 U119 ( .A(n129), .B(n130), .S(n125), .Z(n128) );
  GTECH_OR2 U120 ( .A(n131), .B(n88), .Z(n130) );
  GTECH_AND2 U121 ( .A(n13), .B(n95), .Z(n88) );
  GTECH_OR2 U122 ( .A(n98), .B(n99), .Z(n95) );
  GTECH_MUX2 U123 ( .A(n132), .B(n127), .S(Mcand[1]), .Z(n131) );
  GTECH_AND2 U124 ( .A(n132), .B(Mcand[1]), .Z(n129) );
  GTECH_OAI22 U125 ( .A(n133), .B(n111), .C(n92), .D(n108), .Z(n132) );
  GTECH_AND2 U126 ( .A(n94), .B(Mcand[0]), .Z(n133) );
  GTECH_OAI2N2 U127 ( .A(n111), .B(n134), .C(n92), .D(n110), .Z(n127) );
  GTECH_NOT U128 ( .A(n108), .Z(n110) );
  GTECH_OR_NOT U129 ( .A(n13), .B(n98), .Z(n108) );
  GTECH_AND_NOT U130 ( .A(Mcand[0]), .B(n94), .Z(n92) );
  GTECH_NAND2 U131 ( .A(n94), .B(Mcand[0]), .Z(n134) );
  GTECH_NOT U132 ( .A(n15), .Z(n94) );
  GTECH_OR_NOT U133 ( .A(n13), .B(n99), .Z(n111) );
  GTECH_NOR2 U134 ( .A(n125), .B(Mcand[1]), .Z(n126) );
  GTECH_NOT U135 ( .A(n16), .Z(n125) );
  GTECH_OR_NOT U136 ( .A(n98), .B(n135), .Z(N42) );
  GTECH_NAND3 U137 ( .A(n136), .B(n137), .C(n99), .Z(n135) );
  GTECH_OA21 U138 ( .A(n86), .B(n87), .C(n99), .Z(N41) );
  GTECH_AO21 U139 ( .A(St), .B(n90), .C(n138), .Z(N40) );
  GTECH_AO21 U140 ( .A(n99), .B(n86), .C(n98), .Z(n138) );
  GTECH_NOR3 U141 ( .A(n136), .B(n12), .C(n137), .Z(n98) );
  GTECH_NOT U142 ( .A(n87), .Z(n137) );
  GTECH_AOI21 U143 ( .A(n87), .B(n86), .C(n139), .Z(n99) );
  GTECH_AND3 U144 ( .A(n87), .B(n86), .C(n12), .Z(n90) );
  GTECH_AND3 U145 ( .A(n139), .B(n136), .C(n87), .Z(Done) );
  GTECH_NOT U146 ( .A(n86), .Z(n136) );
  GTECH_NOT U147 ( .A(n12), .Z(n139) );
endmodule

