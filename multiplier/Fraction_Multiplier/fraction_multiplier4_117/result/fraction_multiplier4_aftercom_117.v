
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n18, n19, n72, n80, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137;
  wire   [2:0] State;

  GTECH_FD2 State_reg_0_ ( .D(N40), .CP(CLK), .CD(n80), .Q(State[0]), .QN(n12)
         );
  GTECH_FD2 State_reg_2_ ( .D(N42), .CP(CLK), .CD(n80), .Q(State[2]), .QN(n13)
         );
  GTECH_FD2 State_reg_1_ ( .D(N41), .CP(CLK), .CD(n80), .Q(State[1]), .QN(n85)
         );
  GTECH_FJK1S B_reg_0_ ( .J(n72), .K(n72), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n14) );
  GTECH_FJK1S A_reg_3_ ( .J(n72), .K(n72), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n15) );
  GTECH_FJK1S A_reg_0_ ( .J(n72), .K(n72), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n84) );
  GTECH_FJK1S A_reg_1_ ( .J(n72), .K(n72), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n83) );
  GTECH_FJK1S A_reg_2_ ( .J(n72), .K(n72), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n16) );
  GTECH_FJK1S B_reg_3_ ( .J(n72), .K(n72), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n17) );
  GTECH_FJK1S B_reg_2_ ( .J(n72), .K(n72), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n18) );
  GTECH_FJK1S B_reg_1_ ( .J(n72), .K(n72), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n19) );
  GTECH_ONE U80 ( .Z(n80) );
  GTECH_ZERO U81 ( .Z(n72) );
  GTECH_AND2 U82 ( .A(N57), .B(n86), .Z(N63) );
  GTECH_NOT U83 ( .A(n87), .Z(N58) );
  GTECH_AOI222 U84 ( .A(Mplier[3]), .B(n88), .C(n89), .D(n90), .E(n91), .F(n92), .Z(n87) );
  GTECH_OAI21 U85 ( .A(Mcand[0]), .B(n93), .C(n86), .Z(n91) );
  GTECH_AND_NOT U86 ( .A(n94), .B(n14), .Z(n89) );
  GTECH_AO21 U87 ( .A(n88), .B(St), .C(n94), .Z(N57) );
  GTECH_NOT U88 ( .A(n93), .Z(n94) );
  GTECH_OAI2N2 U89 ( .A(n17), .B(n93), .C(Mplier[2]), .D(n88), .Z(N56) );
  GTECH_OAI2N2 U90 ( .A(n18), .B(n93), .C(Mplier[1]), .D(n88), .Z(N54) );
  GTECH_OAI2N2 U91 ( .A(n19), .B(n93), .C(Mplier[0]), .D(n88), .Z(N52) );
  GTECH_MUX2 U92 ( .A(n95), .B(n96), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U93 ( .A(n97), .B(n98), .S(n15), .Z(N48) );
  GTECH_MUX2 U94 ( .A(n99), .B(n100), .S(Mcand[3]), .Z(n98) );
  GTECH_OR2 U95 ( .A(n101), .B(n102), .Z(n97) );
  GTECH_MUX2 U96 ( .A(n100), .B(n99), .S(Mcand[3]), .Z(n101) );
  GTECH_OAI2N2 U97 ( .A(n103), .B(n104), .C(n105), .D(n106), .Z(n99) );
  GTECH_OAI2N2 U98 ( .A(n105), .B(n107), .C(n103), .D(n108), .Z(n100) );
  GTECH_OA21 U99 ( .A(n109), .B(n110), .C(n111), .Z(n103) );
  GTECH_AO21 U100 ( .A(n110), .B(n109), .C(n112), .Z(n111) );
  GTECH_OAI21 U101 ( .A(n113), .B(n110), .C(n114), .Z(n105) );
  GTECH_OAI21 U102 ( .A(Mcand[2]), .B(n115), .C(n112), .Z(n114) );
  GTECH_MUX2 U103 ( .A(n116), .B(n117), .S(n112), .Z(N46) );
  GTECH_NOT U104 ( .A(n16), .Z(n112) );
  GTECH_NAND2 U105 ( .A(n118), .B(n86), .Z(n117) );
  GTECH_NOT U106 ( .A(n102), .Z(n86) );
  GTECH_MUX2 U107 ( .A(n119), .B(n120), .S(n110), .Z(n118) );
  GTECH_NOT U108 ( .A(Mcand[2]), .Z(n110) );
  GTECH_NOT U109 ( .A(n121), .Z(n116) );
  GTECH_MUX2 U110 ( .A(n119), .B(n120), .S(Mcand[2]), .Z(n121) );
  GTECH_AOI22 U111 ( .A(n109), .B(n108), .C(n113), .D(n106), .Z(n120) );
  GTECH_NOT U112 ( .A(n115), .Z(n113) );
  GTECH_AOI2N2 U113 ( .A(n115), .B(n106), .C(n109), .D(n104), .Z(n119) );
  GTECH_ADD_ABC U114 ( .A(n122), .B(n123), .C(n124), .COUT(n109) );
  GTECH_NAND2 U115 ( .A(Mcand[0]), .B(n84), .Z(n122) );
  GTECH_ADD_ABC U116 ( .A(Mcand[1]), .B(n125), .C(n124), .COUT(n115) );
  GTECH_NOT U117 ( .A(n83), .Z(n124) );
  GTECH_AND2 U118 ( .A(Mcand[0]), .B(n92), .Z(n125) );
  GTECH_MUX2 U119 ( .A(n126), .B(n127), .S(n83), .Z(N44) );
  GTECH_MUX2 U120 ( .A(n128), .B(n129), .S(n123), .Z(n127) );
  GTECH_OR2 U121 ( .A(n130), .B(n102), .Z(n126) );
  GTECH_AND_NOT U122 ( .A(n14), .B(n93), .Z(n102) );
  GTECH_AND_NOT U123 ( .A(n131), .B(n96), .Z(n93) );
  GTECH_MUX2 U124 ( .A(n129), .B(n128), .S(n123), .Z(n130) );
  GTECH_NOT U125 ( .A(Mcand[1]), .Z(n123) );
  GTECH_OA21 U126 ( .A(n108), .B(n132), .C(n133), .Z(n128) );
  GTECH_OAI21 U127 ( .A(n90), .B(n104), .C(n107), .Z(n133) );
  GTECH_NOT U128 ( .A(n108), .Z(n104) );
  GTECH_OAI2N2 U129 ( .A(n132), .B(n107), .C(n90), .D(n108), .Z(n129) );
  GTECH_AND_NOT U130 ( .A(n95), .B(n14), .Z(n108) );
  GTECH_AND_NOT U131 ( .A(Mcand[0]), .B(n92), .Z(n90) );
  GTECH_NOT U132 ( .A(n106), .Z(n107) );
  GTECH_AND_NOT U133 ( .A(n96), .B(n14), .Z(n106) );
  GTECH_NAND2 U134 ( .A(n92), .B(Mcand[0]), .Z(n132) );
  GTECH_NOT U135 ( .A(n84), .Z(n92) );
  GTECH_NAND2 U136 ( .A(n134), .B(n131), .Z(N42) );
  GTECH_NAND3 U137 ( .A(n135), .B(n136), .C(n96), .Z(n134) );
  GTECH_OA21 U138 ( .A(n12), .B(n85), .C(n96), .Z(N41) );
  GTECH_AO21 U139 ( .A(n88), .B(St), .C(n137), .Z(N40) );
  GTECH_AO21 U140 ( .A(n12), .B(n96), .C(n95), .Z(n137) );
  GTECH_NOT U141 ( .A(n131), .Z(n95) );
  GTECH_OR3 U142 ( .A(n135), .B(n13), .C(n136), .Z(n131) );
  GTECH_OA21 U143 ( .A(n135), .B(n136), .C(n13), .Z(n96) );
  GTECH_NOT U144 ( .A(n12), .Z(n135) );
  GTECH_AND3 U145 ( .A(n85), .B(n12), .C(n13), .Z(n88) );
  GTECH_NOR3 U146 ( .A(n12), .B(n13), .C(n136), .Z(Done) );
  GTECH_NOT U147 ( .A(n85), .Z(n136) );
endmodule

