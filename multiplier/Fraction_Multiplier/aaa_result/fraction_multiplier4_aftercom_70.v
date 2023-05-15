
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
         n135, n136, n137, n138, n139;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n12) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n13) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n86) );
  GTECH_FJK1S B_reg_0_ ( .J(n76), .K(n76), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n14) );
  GTECH_FJK1S A_reg_3_ ( .J(n76), .K(n76), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n15) );
  GTECH_FJK1S A_reg_0_ ( .J(n76), .K(n76), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n84) );
  GTECH_FJK1S A_reg_1_ ( .J(n76), .K(n76), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n85) );
  GTECH_FJK1S A_reg_2_ ( .J(n76), .K(n76), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n16) );
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
  GTECH_OAI21 U85 ( .A(Mcand[0]), .B(n94), .C(n95), .Z(n92) );
  GTECH_NOR2 U86 ( .A(n94), .B(n14), .Z(n90) );
  GTECH_OAI21 U87 ( .A(n96), .B(n97), .C(n94), .Z(N57) );
  GTECH_OAI2N2 U88 ( .A(n17), .B(n94), .C(Mplier[2]), .D(n89), .Z(N56) );
  GTECH_OAI2N2 U89 ( .A(n18), .B(n94), .C(Mplier[1]), .D(n89), .Z(N54) );
  GTECH_OAI2N2 U90 ( .A(n19), .B(n94), .C(Mplier[0]), .D(n89), .Z(N52) );
  GTECH_NOT U91 ( .A(n96), .Z(n89) );
  GTECH_MUX2 U92 ( .A(n98), .B(n99), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U93 ( .A(n100), .B(n101), .S(n15), .Z(N48) );
  GTECH_MUX2 U94 ( .A(n102), .B(n103), .S(Mcand[3]), .Z(n101) );
  GTECH_OR2 U95 ( .A(n104), .B(n87), .Z(n100) );
  GTECH_MUX2 U96 ( .A(n103), .B(n102), .S(Mcand[3]), .Z(n104) );
  GTECH_OAI22 U97 ( .A(n105), .B(n106), .C(n107), .D(n108), .Z(n102) );
  GTECH_AO22 U98 ( .A(n109), .B(n105), .C(n110), .D(n107), .Z(n103) );
  GTECH_OA21 U99 ( .A(n111), .B(n112), .C(n113), .Z(n107) );
  GTECH_OAI21 U100 ( .A(Mcand[2]), .B(n114), .C(n16), .Z(n113) );
  GTECH_NOT U101 ( .A(n111), .Z(n114) );
  GTECH_AOI21 U102 ( .A(n115), .B(Mcand[2]), .C(n116), .Z(n105) );
  GTECH_AOI21 U103 ( .A(n112), .B(n117), .C(n16), .Z(n116) );
  GTECH_NOT U104 ( .A(n115), .Z(n117) );
  GTECH_MUX2 U105 ( .A(n118), .B(n119), .S(n16), .Z(N46) );
  GTECH_NOT U106 ( .A(n120), .Z(n119) );
  GTECH_MUX2 U107 ( .A(n121), .B(n122), .S(n112), .Z(n120) );
  GTECH_NOT U108 ( .A(Mcand[2]), .Z(n112) );
  GTECH_OR_NOT U109 ( .A(n87), .B(n123), .Z(n118) );
  GTECH_MUX2 U110 ( .A(n121), .B(n122), .S(Mcand[2]), .Z(n123) );
  GTECH_AOI2N2 U111 ( .A(n115), .B(n109), .C(n111), .D(n108), .Z(n122) );
  GTECH_AOI2N2 U112 ( .A(n111), .B(n110), .C(n115), .D(n106), .Z(n121) );
  GTECH_ADD_ABC U113 ( .A(Mcand[1]), .B(n124), .C(n125), .COUT(n115) );
  GTECH_AND_NOT U114 ( .A(Mcand[0]), .B(n84), .Z(n124) );
  GTECH_ADD_ABC U115 ( .A(n126), .B(n127), .C(n125), .COUT(n111) );
  GTECH_OR_NOT U116 ( .A(n93), .B(Mcand[0]), .Z(n126) );
  GTECH_MUX2 U117 ( .A(n128), .B(n129), .S(n125), .Z(N44) );
  GTECH_NOT U118 ( .A(n85), .Z(n125) );
  GTECH_OR2 U119 ( .A(n130), .B(n87), .Z(n129) );
  GTECH_NOT U120 ( .A(n95), .Z(n87) );
  GTECH_OR_NOT U121 ( .A(n94), .B(n14), .Z(n95) );
  GTECH_AND2 U122 ( .A(n131), .B(n132), .Z(n94) );
  GTECH_MUX2 U123 ( .A(n133), .B(n134), .S(n127), .Z(n130) );
  GTECH_NOT U124 ( .A(Mcand[1]), .Z(n127) );
  GTECH_MUX2 U125 ( .A(n133), .B(n134), .S(Mcand[1]), .Z(n128) );
  GTECH_OAI22 U126 ( .A(n135), .B(n106), .C(n91), .D(n108), .Z(n134) );
  GTECH_NOT U127 ( .A(n110), .Z(n108) );
  GTECH_NOT U128 ( .A(n109), .Z(n106) );
  GTECH_AO22 U129 ( .A(n135), .B(n109), .C(n91), .D(n110), .Z(n133) );
  GTECH_NOR2 U130 ( .A(n131), .B(n14), .Z(n110) );
  GTECH_AND2 U131 ( .A(Mcand[0]), .B(n84), .Z(n91) );
  GTECH_NOR2 U132 ( .A(n132), .B(n14), .Z(n109) );
  GTECH_AND2 U133 ( .A(Mcand[0]), .B(n93), .Z(n135) );
  GTECH_NOT U134 ( .A(n84), .Z(n93) );
  GTECH_OAI21 U135 ( .A(n132), .B(n136), .C(n131), .Z(N42) );
  GTECH_OR_NOT U136 ( .A(n86), .B(n137), .Z(n136) );
  GTECH_AOI21 U137 ( .A(n137), .B(n138), .C(n132), .Z(N41) );
  GTECH_NOT U138 ( .A(n99), .Z(n132) );
  GTECH_OAI21 U139 ( .A(n96), .B(n97), .C(n139), .Z(N40) );
  GTECH_AOI21 U140 ( .A(n12), .B(n99), .C(n98), .Z(n139) );
  GTECH_NOT U141 ( .A(n131), .Z(n98) );
  GTECH_OR3 U142 ( .A(n137), .B(n13), .C(n138), .Z(n131) );
  GTECH_OA21 U143 ( .A(n137), .B(n138), .C(n13), .Z(n99) );
  GTECH_NOT U144 ( .A(n12), .Z(n137) );
  GTECH_NOT U145 ( .A(St), .Z(n97) );
  GTECH_NAND3 U146 ( .A(n86), .B(n12), .C(n13), .Z(n96) );
  GTECH_NOR3 U147 ( .A(n12), .B(n13), .C(n138), .Z(Done) );
  GTECH_NOT U148 ( .A(n86), .Z(n138) );
endmodule

