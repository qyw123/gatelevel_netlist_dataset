
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n78) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n80) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n79) );
  GTECH_FJK1S B_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n12) );
  GTECH_FJK1S A_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n13) );
  GTECH_FJK1S A_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n14) );
  GTECH_FJK1S A_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n77) );
  GTECH_FJK1S A_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n76) );
  GTECH_FJK1S B_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n15) );
  GTECH_FJK1S B_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n16) );
  GTECH_FJK1S B_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n17) );
  GTECH_AND2 U75 ( .A(N57), .B(n81), .Z(N63) );
  GTECH_NOT U76 ( .A(n82), .Z(N58) );
  GTECH_AOI222 U77 ( .A(Mplier[3]), .B(n83), .C(n84), .D(n85), .E(n86), .F(n87), .Z(n82) );
  GTECH_OAI21 U78 ( .A(Mcand[0]), .B(n88), .C(n81), .Z(n86) );
  GTECH_NOR2 U79 ( .A(n88), .B(n12), .Z(n84) );
  GTECH_AO21 U80 ( .A(n83), .B(St), .C(n89), .Z(N57) );
  GTECH_OAI2N2 U81 ( .A(n15), .B(n88), .C(Mplier[2]), .D(n83), .Z(N56) );
  GTECH_OAI2N2 U82 ( .A(n16), .B(n88), .C(Mplier[1]), .D(n83), .Z(N54) );
  GTECH_OAI2N2 U83 ( .A(n17), .B(n88), .C(Mplier[0]), .D(n83), .Z(N52) );
  GTECH_MUX2 U84 ( .A(n90), .B(n91), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U85 ( .A(n92), .B(n93), .S(n13), .Z(N48) );
  GTECH_NOT U86 ( .A(n94), .Z(n93) );
  GTECH_MUX2 U87 ( .A(n95), .B(n96), .S(n97), .Z(n94) );
  GTECH_NOT U88 ( .A(Mcand[3]), .Z(n97) );
  GTECH_NAND2 U89 ( .A(n98), .B(n81), .Z(n92) );
  GTECH_MUX2 U90 ( .A(n95), .B(n96), .S(Mcand[3]), .Z(n98) );
  GTECH_AOI2N2 U91 ( .A(n99), .B(n100), .C(n101), .D(n102), .Z(n96) );
  GTECH_AOI2N2 U92 ( .A(n103), .B(n101), .C(n99), .D(n104), .Z(n95) );
  GTECH_OA21 U93 ( .A(Mcand[2]), .B(n105), .C(n106), .Z(n99) );
  GTECH_AO21 U94 ( .A(n105), .B(Mcand[2]), .C(n76), .Z(n106) );
  GTECH_OA21 U95 ( .A(n107), .B(n108), .C(n109), .Z(n101) );
  GTECH_AO21 U96 ( .A(n108), .B(n107), .C(n76), .Z(n109) );
  GTECH_NOT U97 ( .A(Mcand[2]), .Z(n108) );
  GTECH_MUX2 U98 ( .A(n110), .B(n111), .S(n76), .Z(N46) );
  GTECH_NOT U99 ( .A(n112), .Z(n111) );
  GTECH_MUX2 U100 ( .A(n113), .B(n114), .S(Mcand[2]), .Z(n112) );
  GTECH_NAND2 U101 ( .A(n115), .B(n81), .Z(n110) );
  GTECH_MUX2 U102 ( .A(n114), .B(n113), .S(Mcand[2]), .Z(n115) );
  GTECH_AOI2N2 U103 ( .A(n105), .B(n100), .C(n107), .D(n102), .Z(n113) );
  GTECH_NOT U104 ( .A(n116), .Z(n107) );
  GTECH_NOT U105 ( .A(n117), .Z(n105) );
  GTECH_AOI2N2 U106 ( .A(n117), .B(n100), .C(n116), .D(n102), .Z(n114) );
  GTECH_ADD_ABC U107 ( .A(n118), .B(Mcand[1]), .C(n119), .COUT(n116) );
  GTECH_AND_NOT U108 ( .A(Mcand[0]), .B(n14), .Z(n118) );
  GTECH_ADD_ABC U109 ( .A(n120), .B(n121), .C(n119), .COUT(n117) );
  GTECH_OR_NOT U110 ( .A(n87), .B(Mcand[0]), .Z(n120) );
  GTECH_MUX2 U111 ( .A(n122), .B(n123), .S(n119), .Z(N44) );
  GTECH_NOT U112 ( .A(n77), .Z(n119) );
  GTECH_OR_NOT U113 ( .A(n124), .B(n81), .Z(n123) );
  GTECH_NAND2 U114 ( .A(n89), .B(n12), .Z(n81) );
  GTECH_NOT U115 ( .A(n88), .Z(n89) );
  GTECH_NOR2 U116 ( .A(n90), .B(n91), .Z(n88) );
  GTECH_MUX2 U117 ( .A(n125), .B(n126), .S(n121), .Z(n124) );
  GTECH_NOT U118 ( .A(Mcand[1]), .Z(n121) );
  GTECH_MUX2 U119 ( .A(n125), .B(n126), .S(Mcand[1]), .Z(n122) );
  GTECH_OAI2N2 U120 ( .A(n85), .B(n104), .C(n127), .D(n103), .Z(n126) );
  GTECH_NOT U121 ( .A(n102), .Z(n103) );
  GTECH_NOT U122 ( .A(n100), .Z(n104) );
  GTECH_OAI2N2 U123 ( .A(n127), .B(n102), .C(n85), .D(n100), .Z(n125) );
  GTECH_NOR2 U124 ( .A(n128), .B(n12), .Z(n100) );
  GTECH_NOT U125 ( .A(n90), .Z(n128) );
  GTECH_AND_NOT U126 ( .A(Mcand[0]), .B(n87), .Z(n85) );
  GTECH_NOT U127 ( .A(n14), .Z(n87) );
  GTECH_OR_NOT U128 ( .A(n12), .B(n91), .Z(n102) );
  GTECH_OR_NOT U129 ( .A(n14), .B(Mcand[0]), .Z(n127) );
  GTECH_OR_NOT U130 ( .A(n90), .B(n129), .Z(N42) );
  GTECH_NAND3 U131 ( .A(n130), .B(n131), .C(n91), .Z(n129) );
  GTECH_OA21 U132 ( .A(n78), .B(n79), .C(n91), .Z(N41) );
  GTECH_AO21 U133 ( .A(n83), .B(St), .C(n132), .Z(N40) );
  GTECH_AO21 U134 ( .A(n78), .B(n91), .C(n90), .Z(n132) );
  GTECH_NOR3 U135 ( .A(n130), .B(n80), .C(n131), .Z(n90) );
  GTECH_OA21 U136 ( .A(n130), .B(n131), .C(n80), .Z(n91) );
  GTECH_NOT U137 ( .A(n78), .Z(n130) );
  GTECH_AND3 U138 ( .A(n79), .B(n78), .C(n80), .Z(n83) );
  GTECH_NOR3 U139 ( .A(n78), .B(n80), .C(n131), .Z(Done) );
  GTECH_NOT U140 ( .A(n79), .Z(n131) );
endmodule

