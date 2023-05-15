
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n66, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n78) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n79) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n77) );
  GTECH_FJK1S B_reg_0_ ( .J(n66), .K(n66), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n12) );
  GTECH_FJK1S A_reg_3_ ( .J(n66), .K(n66), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n13) );
  GTECH_FJK1S A_reg_0_ ( .J(n66), .K(n66), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n76) );
  GTECH_FJK1S A_reg_1_ ( .J(n66), .K(n66), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n75) );
  GTECH_FJK1S A_reg_2_ ( .J(n66), .K(n66), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n74) );
  GTECH_FJK1S B_reg_3_ ( .J(n66), .K(n66), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n14) );
  GTECH_FJK1S B_reg_2_ ( .J(n66), .K(n66), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n15) );
  GTECH_FJK1S B_reg_1_ ( .J(n66), .K(n66), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n16) );
  GTECH_ZERO U74 ( .Z(n66) );
  GTECH_AND_NOT U75 ( .A(N57), .B(n80), .Z(N63) );
  GTECH_NOT U76 ( .A(n81), .Z(N58) );
  GTECH_AOI222 U77 ( .A(Mplier[3]), .B(n82), .C(n83), .D(n84), .E(n85), .F(n86), .Z(n81) );
  GTECH_AO21 U78 ( .A(n87), .B(n88), .C(n80), .Z(n85) );
  GTECH_NOR2 U79 ( .A(n89), .B(n12), .Z(n83) );
  GTECH_AO21 U80 ( .A(n82), .B(St), .C(n88), .Z(N57) );
  GTECH_OAI2N2 U81 ( .A(n14), .B(n89), .C(Mplier[2]), .D(n82), .Z(N56) );
  GTECH_OAI2N2 U82 ( .A(n15), .B(n89), .C(Mplier[1]), .D(n82), .Z(N54) );
  GTECH_OAI2N2 U83 ( .A(n16), .B(n89), .C(Mplier[0]), .D(n82), .Z(N52) );
  GTECH_NOT U84 ( .A(n90), .Z(N50) );
  GTECH_MUX2 U85 ( .A(n91), .B(n92), .S(Mcand[3]), .Z(n90) );
  GTECH_MUX2 U86 ( .A(n93), .B(n94), .S(n13), .Z(N48) );
  GTECH_NOT U87 ( .A(n95), .Z(n94) );
  GTECH_MUX2 U88 ( .A(n96), .B(n97), .S(n98), .Z(n95) );
  GTECH_NOT U89 ( .A(Mcand[3]), .Z(n98) );
  GTECH_OR_NOT U90 ( .A(n80), .B(n99), .Z(n93) );
  GTECH_MUX2 U91 ( .A(n96), .B(n97), .S(Mcand[3]), .Z(n99) );
  GTECH_OA22 U92 ( .A(n100), .B(n101), .C(n102), .D(n103), .Z(n97) );
  GTECH_AOI22 U93 ( .A(n104), .B(n102), .C(n100), .D(n105), .Z(n96) );
  GTECH_OAI21 U94 ( .A(Mcand[2]), .B(n106), .C(n107), .Z(n100) );
  GTECH_AO21 U95 ( .A(n106), .B(Mcand[2]), .C(n74), .Z(n107) );
  GTECH_OA21 U96 ( .A(n108), .B(n109), .C(n110), .Z(n102) );
  GTECH_AO21 U97 ( .A(n109), .B(n108), .C(n74), .Z(n110) );
  GTECH_NOT U98 ( .A(Mcand[2]), .Z(n109) );
  GTECH_MUX2 U99 ( .A(n111), .B(n112), .S(n74), .Z(N46) );
  GTECH_NOT U100 ( .A(n113), .Z(n112) );
  GTECH_MUX2 U101 ( .A(n114), .B(n115), .S(Mcand[2]), .Z(n113) );
  GTECH_OR_NOT U102 ( .A(n80), .B(n116), .Z(n111) );
  GTECH_MUX2 U103 ( .A(n115), .B(n114), .S(Mcand[2]), .Z(n116) );
  GTECH_AOI2N2 U104 ( .A(n106), .B(n105), .C(n108), .D(n103), .Z(n114) );
  GTECH_NOT U105 ( .A(n117), .Z(n108) );
  GTECH_NOT U106 ( .A(n118), .Z(n106) );
  GTECH_AOI2N2 U107 ( .A(n118), .B(n105), .C(n117), .D(n103), .Z(n115) );
  GTECH_ADD_ABC U108 ( .A(n119), .B(Mcand[1]), .C(n120), .COUT(n117) );
  GTECH_AND_NOT U109 ( .A(n86), .B(n87), .Z(n119) );
  GTECH_ADD_ABC U110 ( .A(n121), .B(n122), .C(n120), .COUT(n118) );
  GTECH_OR_NOT U111 ( .A(n86), .B(Mcand[0]), .Z(n121) );
  GTECH_MUX2 U112 ( .A(n123), .B(n124), .S(n120), .Z(N44) );
  GTECH_NOT U113 ( .A(n75), .Z(n120) );
  GTECH_OR2 U114 ( .A(n125), .B(n80), .Z(n124) );
  GTECH_AND2 U115 ( .A(n12), .B(n88), .Z(n80) );
  GTECH_NOT U116 ( .A(n89), .Z(n88) );
  GTECH_AND2 U117 ( .A(n91), .B(n92), .Z(n89) );
  GTECH_MUX2 U118 ( .A(n126), .B(n127), .S(n122), .Z(n125) );
  GTECH_NOT U119 ( .A(Mcand[1]), .Z(n122) );
  GTECH_MUX2 U120 ( .A(n126), .B(n127), .S(Mcand[1]), .Z(n123) );
  GTECH_AO22 U121 ( .A(n128), .B(n105), .C(n129), .D(n104), .Z(n127) );
  GTECH_NOT U122 ( .A(n84), .Z(n128) );
  GTECH_OAI2N2 U123 ( .A(n129), .B(n103), .C(n84), .D(n105), .Z(n126) );
  GTECH_NOT U124 ( .A(n101), .Z(n105) );
  GTECH_OR2 U125 ( .A(n91), .B(n12), .Z(n101) );
  GTECH_NOR2 U126 ( .A(n87), .B(n86), .Z(n84) );
  GTECH_NOT U127 ( .A(n76), .Z(n86) );
  GTECH_NOT U128 ( .A(Mcand[0]), .Z(n87) );
  GTECH_NOT U129 ( .A(n104), .Z(n103) );
  GTECH_NOR2 U130 ( .A(n92), .B(n12), .Z(n104) );
  GTECH_OR_NOT U131 ( .A(n76), .B(Mcand[0]), .Z(n129) );
  GTECH_OAI21 U132 ( .A(n92), .B(n130), .C(n91), .Z(N42) );
  GTECH_OR_NOT U133 ( .A(n78), .B(n131), .Z(n130) );
  GTECH_OA21 U134 ( .A(n77), .B(n78), .C(n132), .Z(N41) );
  GTECH_AO21 U135 ( .A(n82), .B(St), .C(n133), .Z(N40) );
  GTECH_OAI21 U136 ( .A(n134), .B(n92), .C(n91), .Z(n133) );
  GTECH_OR3 U137 ( .A(n131), .B(n79), .C(n134), .Z(n91) );
  GTECH_NOT U138 ( .A(n132), .Z(n92) );
  GTECH_OA21 U139 ( .A(n131), .B(n134), .C(n79), .Z(n132) );
  GTECH_NOT U140 ( .A(n78), .Z(n134) );
  GTECH_AND3 U141 ( .A(n78), .B(n77), .C(n79), .Z(n82) );
  GTECH_NOR3 U142 ( .A(n78), .B(n79), .C(n131), .Z(Done) );
  GTECH_NOT U143 ( .A(n77), .Z(n131) );
endmodule

