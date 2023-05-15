
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n18, n75, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n85) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n12) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n86) );
  GTECH_FJK1S B_reg_0_ ( .J(n75), .K(n75), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n13) );
  GTECH_FJK1S A_reg_3_ ( .J(n75), .K(n75), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n14) );
  GTECH_FJK1S A_reg_0_ ( .J(n75), .K(n75), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n15) );
  GTECH_FJK1S A_reg_1_ ( .J(n75), .K(n75), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n84) );
  GTECH_FJK1S A_reg_2_ ( .J(n75), .K(n75), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n83) );
  GTECH_FJK1S B_reg_3_ ( .J(n75), .K(n75), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n16) );
  GTECH_FJK1S B_reg_2_ ( .J(n75), .K(n75), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n17) );
  GTECH_FJK1S B_reg_1_ ( .J(n75), .K(n75), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n18) );
  GTECH_ZERO U81 ( .Z(n75) );
  GTECH_AND_NOT U82 ( .A(N57), .B(n87), .Z(N63) );
  GTECH_NOT U83 ( .A(n88), .Z(N58) );
  GTECH_AOI222 U84 ( .A(Mplier[3]), .B(n89), .C(n90), .D(n91), .E(n92), .F(n93), .Z(n88) );
  GTECH_NOT U85 ( .A(n94), .Z(n92) );
  GTECH_OA21 U86 ( .A(n95), .B(Mcand[0]), .C(n96), .Z(n94) );
  GTECH_NOT U87 ( .A(n87), .Z(n96) );
  GTECH_NOR2 U88 ( .A(n95), .B(n13), .Z(n90) );
  GTECH_AO21 U89 ( .A(St), .B(n89), .C(n97), .Z(N57) );
  GTECH_OAI2N2 U90 ( .A(n16), .B(n95), .C(Mplier[2]), .D(n89), .Z(N56) );
  GTECH_OAI2N2 U91 ( .A(n17), .B(n95), .C(Mplier[1]), .D(n89), .Z(N54) );
  GTECH_OAI2N2 U92 ( .A(n18), .B(n95), .C(Mplier[0]), .D(n89), .Z(N52) );
  GTECH_NOT U93 ( .A(n97), .Z(n95) );
  GTECH_MUX2 U94 ( .A(n98), .B(n99), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U95 ( .A(n100), .B(n101), .S(n14), .Z(N48) );
  GTECH_MUX2 U96 ( .A(n102), .B(n103), .S(Mcand[3]), .Z(n101) );
  GTECH_OR2 U97 ( .A(n104), .B(n87), .Z(n100) );
  GTECH_MUX2 U98 ( .A(n103), .B(n102), .S(Mcand[3]), .Z(n104) );
  GTECH_OAI2N2 U99 ( .A(n105), .B(n106), .C(n107), .D(n108), .Z(n102) );
  GTECH_OAI2N2 U100 ( .A(n109), .B(n107), .C(n105), .D(n110), .Z(n103) );
  GTECH_ADD_ABC U101 ( .A(n111), .B(n112), .C(n83), .COUT(n105) );
  GTECH_OAI2N2 U102 ( .A(n113), .B(n111), .C(n114), .D(n83), .Z(n107) );
  GTECH_OR_NOT U103 ( .A(Mcand[2]), .B(n113), .Z(n114) );
  GTECH_MUX2 U104 ( .A(n115), .B(n116), .S(n83), .Z(N46) );
  GTECH_MUX2 U105 ( .A(n117), .B(n118), .S(Mcand[2]), .Z(n116) );
  GTECH_OR2 U106 ( .A(n119), .B(n87), .Z(n115) );
  GTECH_MUX2 U107 ( .A(n117), .B(n118), .S(n111), .Z(n119) );
  GTECH_NOT U108 ( .A(Mcand[2]), .Z(n111) );
  GTECH_OAI2N2 U109 ( .A(n120), .B(n106), .C(n113), .D(n108), .Z(n118) );
  GTECH_OAI22 U110 ( .A(n113), .B(n109), .C(n112), .D(n106), .Z(n117) );
  GTECH_NOT U111 ( .A(n120), .Z(n112) );
  GTECH_ADD_ABC U112 ( .A(Mcand[1]), .B(n121), .C(n122), .COUT(n120) );
  GTECH_AND_NOT U113 ( .A(Mcand[0]), .B(n15), .Z(n121) );
  GTECH_ADD_ABC U114 ( .A(n123), .B(n124), .C(n122), .COUT(n113) );
  GTECH_OR_NOT U115 ( .A(n93), .B(Mcand[0]), .Z(n123) );
  GTECH_MUX2 U116 ( .A(n125), .B(n126), .S(n122), .Z(N44) );
  GTECH_NOT U117 ( .A(n84), .Z(n122) );
  GTECH_OR2 U118 ( .A(n127), .B(n87), .Z(n126) );
  GTECH_ADD_AB U119 ( .A(n13), .B(n97), .COUT(n87) );
  GTECH_OR2 U120 ( .A(n98), .B(n99), .Z(n97) );
  GTECH_MUX2 U121 ( .A(n128), .B(n129), .S(n124), .Z(n127) );
  GTECH_NOT U122 ( .A(Mcand[1]), .Z(n124) );
  GTECH_MUX2 U123 ( .A(n128), .B(n129), .S(Mcand[1]), .Z(n125) );
  GTECH_OAI22 U124 ( .A(n130), .B(n106), .C(n91), .D(n109), .Z(n129) );
  GTECH_AO22 U125 ( .A(n130), .B(n110), .C(n91), .D(n108), .Z(n128) );
  GTECH_NOT U126 ( .A(n109), .Z(n108) );
  GTECH_OR_NOT U127 ( .A(n13), .B(n98), .Z(n109) );
  GTECH_ADD_AB U128 ( .A(Mcand[0]), .B(n15), .COUT(n91) );
  GTECH_NOT U129 ( .A(n106), .Z(n110) );
  GTECH_OR_NOT U130 ( .A(n13), .B(n99), .Z(n106) );
  GTECH_ADD_AB U131 ( .A(Mcand[0]), .B(n93), .COUT(n130) );
  GTECH_NOT U132 ( .A(n15), .Z(n93) );
  GTECH_OR_NOT U133 ( .A(n98), .B(n131), .Z(N42) );
  GTECH_NAND3 U134 ( .A(n132), .B(n133), .C(n99), .Z(n131) );
  GTECH_OA21 U135 ( .A(n85), .B(n86), .C(n99), .Z(N41) );
  GTECH_AO21 U136 ( .A(St), .B(n89), .C(n134), .Z(N40) );
  GTECH_AO21 U137 ( .A(n99), .B(n85), .C(n98), .Z(n134) );
  GTECH_NOR3 U138 ( .A(n132), .B(n12), .C(n133), .Z(n98) );
  GTECH_NOT U139 ( .A(n85), .Z(n132) );
  GTECH_AOI21 U140 ( .A(n86), .B(n85), .C(n135), .Z(n99) );
  GTECH_NOT U141 ( .A(n12), .Z(n135) );
  GTECH_AND3 U142 ( .A(n86), .B(n85), .C(n12), .Z(n89) );
  GTECH_NOR3 U143 ( .A(n12), .B(n85), .C(n133), .Z(Done) );
  GTECH_NOT U144 ( .A(n86), .Z(n133) );
endmodule

