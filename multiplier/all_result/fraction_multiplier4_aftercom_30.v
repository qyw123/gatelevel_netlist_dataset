
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n13, n14, n15, n16, n17, n18, n76, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n87) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .QN(n88) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n13) );
  GTECH_FJK1S B_reg_0_ ( .J(n76), .K(n76), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n14) );
  GTECH_FJK1S A_reg_3_ ( .J(n76), .K(n76), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n15) );
  GTECH_FJK1S A_reg_0_ ( .J(n76), .K(n76), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n86) );
  GTECH_FJK1S A_reg_1_ ( .J(n76), .K(n76), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n85) );
  GTECH_FJK1S A_reg_2_ ( .J(n76), .K(n76), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n84) );
  GTECH_FJK1S B_reg_3_ ( .J(n76), .K(n76), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n16) );
  GTECH_FJK1S B_reg_2_ ( .J(n76), .K(n76), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n17) );
  GTECH_FJK1S B_reg_1_ ( .J(n76), .K(n76), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n18) );
  GTECH_ZERO U82 ( .Z(n76) );
  GTECH_AND_NOT U83 ( .A(N57), .B(n89), .Z(N63) );
  GTECH_NOT U84 ( .A(n90), .Z(N58) );
  GTECH_AOI222 U85 ( .A(Mplier[3]), .B(n91), .C(n92), .D(n93), .E(n94), .F(n95), .Z(n90) );
  GTECH_AO21 U86 ( .A(n96), .B(n97), .C(n89), .Z(n94) );
  GTECH_NOT U87 ( .A(Mcand[0]), .Z(n97) );
  GTECH_AND_NOT U88 ( .A(n96), .B(n14), .Z(n92) );
  GTECH_AO21 U89 ( .A(St), .B(n91), .C(n96), .Z(N57) );
  GTECH_NOT U90 ( .A(n98), .Z(n96) );
  GTECH_OAI2N2 U91 ( .A(n16), .B(n98), .C(Mplier[2]), .D(n91), .Z(N56) );
  GTECH_OAI2N2 U92 ( .A(n17), .B(n98), .C(Mplier[1]), .D(n91), .Z(N54) );
  GTECH_OAI2N2 U93 ( .A(n18), .B(n98), .C(Mplier[0]), .D(n91), .Z(N52) );
  GTECH_MUX2 U94 ( .A(n99), .B(n100), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U95 ( .A(n101), .B(n102), .S(n15), .Z(N48) );
  GTECH_MUX2 U96 ( .A(n103), .B(n104), .S(Mcand[3]), .Z(n102) );
  GTECH_OR2 U97 ( .A(n105), .B(n89), .Z(n101) );
  GTECH_MUX2 U98 ( .A(n104), .B(n103), .S(Mcand[3]), .Z(n105) );
  GTECH_OAI22 U99 ( .A(n106), .B(n107), .C(n108), .D(n109), .Z(n103) );
  GTECH_AO22 U100 ( .A(n109), .B(n110), .C(n106), .D(n111), .Z(n104) );
  GTECH_AOI2N2 U101 ( .A(n112), .B(n84), .C(n113), .D(n114), .Z(n106) );
  GTECH_NAND2 U102 ( .A(n114), .B(n113), .Z(n112) );
  GTECH_ADD_ABC U103 ( .A(n114), .B(n115), .C(n84), .COUT(n109) );
  GTECH_MUX2 U104 ( .A(n116), .B(n117), .S(n84), .Z(N46) );
  GTECH_MUX2 U105 ( .A(n118), .B(n119), .S(n114), .Z(n117) );
  GTECH_NOT U106 ( .A(Mcand[2]), .Z(n114) );
  GTECH_OR2 U107 ( .A(n120), .B(n89), .Z(n116) );
  GTECH_MUX2 U108 ( .A(n118), .B(n119), .S(Mcand[2]), .Z(n120) );
  GTECH_OAI22 U109 ( .A(n113), .B(n107), .C(n115), .D(n108), .Z(n119) );
  GTECH_NOT U110 ( .A(n121), .Z(n115) );
  GTECH_OAI2N2 U111 ( .A(n121), .B(n108), .C(n113), .D(n111), .Z(n118) );
  GTECH_ADD_ABC U112 ( .A(n122), .B(n123), .C(n124), .COUT(n113) );
  GTECH_NAND2 U113 ( .A(n86), .B(Mcand[0]), .Z(n122) );
  GTECH_ADD_ABC U114 ( .A(Mcand[1]), .B(n125), .C(n124), .COUT(n121) );
  GTECH_NOT U115 ( .A(n85), .Z(n124) );
  GTECH_AND2 U116 ( .A(Mcand[0]), .B(n95), .Z(n125) );
  GTECH_MUX2 U117 ( .A(n126), .B(n127), .S(n85), .Z(N44) );
  GTECH_MUX2 U118 ( .A(n128), .B(n129), .S(n123), .Z(n127) );
  GTECH_NOT U119 ( .A(Mcand[1]), .Z(n123) );
  GTECH_OR2 U120 ( .A(n130), .B(n89), .Z(n126) );
  GTECH_AND_NOT U121 ( .A(n14), .B(n98), .Z(n89) );
  GTECH_AND_NOT U122 ( .A(n131), .B(n99), .Z(n98) );
  GTECH_MUX2 U123 ( .A(n128), .B(n129), .S(Mcand[1]), .Z(n130) );
  GTECH_AO22 U124 ( .A(n132), .B(n110), .C(n93), .D(n111), .Z(n129) );
  GTECH_OAI22 U125 ( .A(n93), .B(n107), .C(n132), .D(n108), .Z(n128) );
  GTECH_NOT U126 ( .A(n110), .Z(n108) );
  GTECH_AND_NOT U127 ( .A(n100), .B(n14), .Z(n110) );
  GTECH_AND_NOT U128 ( .A(Mcand[0]), .B(n86), .Z(n132) );
  GTECH_NOT U129 ( .A(n111), .Z(n107) );
  GTECH_AND_NOT U130 ( .A(n99), .B(n14), .Z(n111) );
  GTECH_AND_NOT U131 ( .A(Mcand[0]), .B(n95), .Z(n93) );
  GTECH_NOT U132 ( .A(n86), .Z(n95) );
  GTECH_OR_NOT U133 ( .A(n99), .B(n133), .Z(N42) );
  GTECH_OR3 U134 ( .A(n88), .B(n87), .C(n131), .Z(n133) );
  GTECH_NOT U135 ( .A(n100), .Z(n131) );
  GTECH_OA21 U136 ( .A(n87), .B(n88), .C(n100), .Z(N41) );
  GTECH_AO21 U137 ( .A(St), .B(n91), .C(n134), .Z(N40) );
  GTECH_AO21 U138 ( .A(n100), .B(n87), .C(n99), .Z(n134) );
  GTECH_NOR3 U139 ( .A(n13), .B(n135), .C(n136), .Z(n99) );
  GTECH_OA21 U140 ( .A(n136), .B(n135), .C(n13), .Z(n100) );
  GTECH_NOT U141 ( .A(n87), .Z(n135) );
  GTECH_AND3 U142 ( .A(n87), .B(n88), .C(n13), .Z(n91) );
  GTECH_NOR3 U143 ( .A(n13), .B(n87), .C(n136), .Z(Done) );
  GTECH_NOT U144 ( .A(n88), .Z(n136) );
endmodule

