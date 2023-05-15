
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n18, n19, n76, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n12) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n13) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n86) );
  GTECH_FJK1S B_reg_0_ ( .J(n76), .K(n76), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n14) );
  GTECH_FJK1S A_reg_3_ ( .J(n76), .K(n76), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n15) );
  GTECH_FJK1S A_reg_0_ ( .J(n76), .K(n76), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n16) );
  GTECH_FJK1S A_reg_1_ ( .J(n76), .K(n76), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n85) );
  GTECH_FJK1S A_reg_2_ ( .J(n76), .K(n76), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n84) );
  GTECH_FJK1S B_reg_3_ ( .J(n76), .K(n76), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n17) );
  GTECH_FJK1S B_reg_2_ ( .J(n76), .K(n76), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n18) );
  GTECH_FJK1S B_reg_1_ ( .J(n76), .K(n76), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n19) );
  GTECH_ZERO U81 ( .Z(n76) );
  GTECH_AND_NOT U82 ( .A(N57), .B(n87), .Z(N63) );
  GTECH_NOT U83 ( .A(n88), .Z(N58) );
  GTECH_AOI222 U84 ( .A(Mplier[3]), .B(n89), .C(n90), .D(n91), .E(n92), .F(n93), .Z(n88) );
  GTECH_NOT U85 ( .A(n94), .Z(n92) );
  GTECH_OA21 U86 ( .A(n95), .B(Mcand[0]), .C(n96), .Z(n94) );
  GTECH_NOT U87 ( .A(n87), .Z(n96) );
  GTECH_NOR2 U88 ( .A(n95), .B(n14), .Z(n90) );
  GTECH_AO21 U89 ( .A(St), .B(n89), .C(n97), .Z(N57) );
  GTECH_OAI2N2 U90 ( .A(n17), .B(n95), .C(Mplier[2]), .D(n89), .Z(N56) );
  GTECH_OAI2N2 U91 ( .A(n18), .B(n95), .C(Mplier[1]), .D(n89), .Z(N54) );
  GTECH_OAI2N2 U92 ( .A(n19), .B(n95), .C(Mplier[0]), .D(n89), .Z(N52) );
  GTECH_MUX2 U93 ( .A(n98), .B(n99), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U94 ( .A(n100), .B(n101), .S(n15), .Z(N48) );
  GTECH_MUX2 U95 ( .A(n102), .B(n103), .S(Mcand[3]), .Z(n101) );
  GTECH_OR2 U96 ( .A(n104), .B(n87), .Z(n100) );
  GTECH_MUX2 U97 ( .A(n103), .B(n102), .S(Mcand[3]), .Z(n104) );
  GTECH_OAI22 U98 ( .A(n105), .B(n106), .C(n107), .D(n108), .Z(n102) );
  GTECH_AO22 U99 ( .A(n109), .B(n107), .C(n105), .D(n110), .Z(n103) );
  GTECH_ADD_ABC U100 ( .A(n111), .B(n112), .C(n84), .COUT(n105) );
  GTECH_AOI2N2 U101 ( .A(n113), .B(n84), .C(n114), .D(n111), .Z(n107) );
  GTECH_NOT U102 ( .A(Mcand[2]), .Z(n111) );
  GTECH_OR_NOT U103 ( .A(Mcand[2]), .B(n114), .Z(n113) );
  GTECH_MUX2 U104 ( .A(n115), .B(n116), .S(n84), .Z(N46) );
  GTECH_NOT U105 ( .A(n117), .Z(n116) );
  GTECH_MUX2 U106 ( .A(n118), .B(n119), .S(Mcand[2]), .Z(n117) );
  GTECH_OR_NOT U107 ( .A(n87), .B(n120), .Z(n115) );
  GTECH_MUX2 U108 ( .A(n119), .B(n118), .S(Mcand[2]), .Z(n120) );
  GTECH_AOI2N2 U109 ( .A(n121), .B(n110), .C(n114), .D(n108), .Z(n118) );
  GTECH_AOI2N2 U110 ( .A(n112), .B(n110), .C(n122), .D(n108), .Z(n119) );
  GTECH_NOT U111 ( .A(n114), .Z(n122) );
  GTECH_ADD_ABC U112 ( .A(n123), .B(n124), .C(n125), .COUT(n114) );
  GTECH_OR_NOT U113 ( .A(n93), .B(Mcand[0]), .Z(n123) );
  GTECH_NOT U114 ( .A(n16), .Z(n93) );
  GTECH_NOT U115 ( .A(n121), .Z(n112) );
  GTECH_ADD_ABC U116 ( .A(Mcand[1]), .B(n126), .C(n125), .COUT(n121) );
  GTECH_AND_NOT U117 ( .A(Mcand[0]), .B(n16), .Z(n126) );
  GTECH_MUX2 U118 ( .A(n127), .B(n128), .S(n125), .Z(N44) );
  GTECH_NOT U119 ( .A(n85), .Z(n125) );
  GTECH_OR2 U120 ( .A(n129), .B(n87), .Z(n128) );
  GTECH_AND2 U121 ( .A(n14), .B(n97), .Z(n87) );
  GTECH_NOT U122 ( .A(n95), .Z(n97) );
  GTECH_AND_NOT U123 ( .A(n130), .B(n98), .Z(n95) );
  GTECH_MUX2 U124 ( .A(n131), .B(n132), .S(n124), .Z(n129) );
  GTECH_NOT U125 ( .A(Mcand[1]), .Z(n124) );
  GTECH_MUX2 U126 ( .A(n131), .B(n132), .S(Mcand[1]), .Z(n127) );
  GTECH_OAI2N2 U127 ( .A(n91), .B(n108), .C(n133), .D(n110), .Z(n132) );
  GTECH_NOT U128 ( .A(n109), .Z(n108) );
  GTECH_OAI2N2 U129 ( .A(n133), .B(n106), .C(n91), .D(n109), .Z(n131) );
  GTECH_NOR2 U130 ( .A(n134), .B(n14), .Z(n109) );
  GTECH_NOT U131 ( .A(n98), .Z(n134) );
  GTECH_AND2 U132 ( .A(Mcand[0]), .B(n16), .Z(n91) );
  GTECH_NOT U133 ( .A(n110), .Z(n106) );
  GTECH_AND_NOT U134 ( .A(n99), .B(n14), .Z(n110) );
  GTECH_OR_NOT U135 ( .A(n16), .B(Mcand[0]), .Z(n133) );
  GTECH_OR_NOT U136 ( .A(n98), .B(n135), .Z(N42) );
  GTECH_OR3 U137 ( .A(n12), .B(n86), .C(n130), .Z(n135) );
  GTECH_NOT U138 ( .A(n99), .Z(n130) );
  GTECH_OA21 U139 ( .A(n12), .B(n86), .C(n99), .Z(N41) );
  GTECH_AO21 U140 ( .A(St), .B(n89), .C(n136), .Z(N40) );
  GTECH_AO21 U141 ( .A(n99), .B(n12), .C(n98), .Z(n136) );
  GTECH_AND3 U142 ( .A(n12), .B(n137), .C(n86), .Z(n98) );
  GTECH_AOI21 U143 ( .A(n86), .B(n12), .C(n137), .Z(n99) );
  GTECH_AND3 U144 ( .A(n86), .B(n12), .C(n13), .Z(n89) );
  GTECH_AND3 U145 ( .A(n138), .B(n137), .C(n86), .Z(Done) );
  GTECH_NOT U146 ( .A(n13), .Z(n137) );
  GTECH_NOT U147 ( .A(n12), .Z(n138) );
endmodule

