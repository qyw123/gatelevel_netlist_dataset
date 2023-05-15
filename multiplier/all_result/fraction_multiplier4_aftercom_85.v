
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n70, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n12) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n13) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n82) );
  GTECH_FJK1S B_reg_0_ ( .J(n70), .K(n70), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n79) );
  GTECH_FJK1S A_reg_3_ ( .J(n70), .K(n70), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n14) );
  GTECH_FJK1S A_reg_0_ ( .J(n70), .K(n70), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n78) );
  GTECH_FJK1S A_reg_1_ ( .J(n70), .K(n70), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n81) );
  GTECH_FJK1S A_reg_2_ ( .J(n70), .K(n70), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n80) );
  GTECH_FJK1S B_reg_3_ ( .J(n70), .K(n70), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n15) );
  GTECH_FJK1S B_reg_2_ ( .J(n70), .K(n70), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n16) );
  GTECH_FJK1S B_reg_1_ ( .J(n70), .K(n70), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n17) );
  GTECH_ZERO U77 ( .Z(n70) );
  GTECH_AND2 U78 ( .A(N57), .B(n83), .Z(N63) );
  GTECH_AO21 U79 ( .A(Mplier[3]), .B(n84), .C(n85), .Z(N58) );
  GTECH_OAI21 U80 ( .A(n78), .B(n86), .C(n87), .Z(n85) );
  GTECH_OR3 U81 ( .A(n88), .B(n79), .C(n89), .Z(n87) );
  GTECH_OA21 U82 ( .A(Mcand[0]), .B(n88), .C(n83), .Z(n86) );
  GTECH_OAI21 U83 ( .A(n90), .B(n91), .C(n88), .Z(N57) );
  GTECH_OAI2N2 U84 ( .A(n15), .B(n88), .C(Mplier[2]), .D(n84), .Z(N56) );
  GTECH_OAI2N2 U85 ( .A(n16), .B(n88), .C(Mplier[1]), .D(n84), .Z(N54) );
  GTECH_OAI2N2 U86 ( .A(n17), .B(n88), .C(Mplier[0]), .D(n84), .Z(N52) );
  GTECH_MUX2 U87 ( .A(n92), .B(n93), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U88 ( .A(n94), .B(n95), .S(n14), .Z(N48) );
  GTECH_MUX2 U89 ( .A(n96), .B(n97), .S(Mcand[3]), .Z(n95) );
  GTECH_OR_NOT U90 ( .A(n98), .B(n83), .Z(n94) );
  GTECH_MUX2 U91 ( .A(n97), .B(n96), .S(Mcand[3]), .Z(n98) );
  GTECH_OAI22 U92 ( .A(n99), .B(n100), .C(n101), .D(n102), .Z(n96) );
  GTECH_AO22 U93 ( .A(n99), .B(n103), .C(n101), .D(n104), .Z(n97) );
  GTECH_OAI21 U94 ( .A(Mcand[2]), .B(n105), .C(n106), .Z(n101) );
  GTECH_AO21 U95 ( .A(n105), .B(Mcand[2]), .C(n107), .Z(n106) );
  GTECH_AO21 U96 ( .A(n108), .B(n109), .C(n110), .Z(n99) );
  GTECH_OA21 U97 ( .A(n109), .B(n108), .C(n107), .Z(n110) );
  GTECH_NOT U98 ( .A(n80), .Z(n107) );
  GTECH_MUX2 U99 ( .A(n111), .B(n112), .S(n80), .Z(N46) );
  GTECH_MUX2 U100 ( .A(n113), .B(n114), .S(n108), .Z(n112) );
  GTECH_NOT U101 ( .A(Mcand[2]), .Z(n108) );
  GTECH_OR_NOT U102 ( .A(n115), .B(n83), .Z(n111) );
  GTECH_MUX2 U103 ( .A(n113), .B(n114), .S(Mcand[2]), .Z(n115) );
  GTECH_OAI2N2 U104 ( .A(n109), .B(n100), .C(n105), .D(n104), .Z(n114) );
  GTECH_OAI2N2 U105 ( .A(n105), .B(n102), .C(n109), .D(n103), .Z(n113) );
  GTECH_ADD_ABC U106 ( .A(n89), .B(n116), .C(n117), .COUT(n109) );
  GTECH_ADD_ABC U107 ( .A(n118), .B(Mcand[1]), .C(n117), .COUT(n105) );
  GTECH_NOT U108 ( .A(n81), .Z(n117) );
  GTECH_MUX2 U109 ( .A(n119), .B(n120), .S(n81), .Z(N44) );
  GTECH_NOT U110 ( .A(n121), .Z(n120) );
  GTECH_MUX2 U111 ( .A(n122), .B(n123), .S(n116), .Z(n121) );
  GTECH_NAND2 U112 ( .A(n124), .B(n83), .Z(n119) );
  GTECH_OR_NOT U113 ( .A(n88), .B(n79), .Z(n83) );
  GTECH_AND_NOT U114 ( .A(n125), .B(n93), .Z(n88) );
  GTECH_MUX2 U115 ( .A(n123), .B(n122), .S(n116), .Z(n124) );
  GTECH_NOT U116 ( .A(Mcand[1]), .Z(n116) );
  GTECH_AOI2N2 U117 ( .A(n89), .B(n103), .C(n118), .D(n102), .Z(n122) );
  GTECH_NOT U118 ( .A(n104), .Z(n102) );
  GTECH_AOI2N2 U119 ( .A(n118), .B(n104), .C(n89), .D(n100), .Z(n123) );
  GTECH_NOT U120 ( .A(n103), .Z(n100) );
  GTECH_AND_NOT U121 ( .A(n92), .B(n79), .Z(n103) );
  GTECH_NOT U122 ( .A(n125), .Z(n92) );
  GTECH_NAND2 U123 ( .A(Mcand[0]), .B(n78), .Z(n89) );
  GTECH_AND_NOT U124 ( .A(n93), .B(n79), .Z(n104) );
  GTECH_AND_NOT U125 ( .A(Mcand[0]), .B(n78), .Z(n118) );
  GTECH_NAND2 U126 ( .A(n125), .B(n126), .Z(N42) );
  GTECH_NAND3 U127 ( .A(n127), .B(n128), .C(n93), .Z(n126) );
  GTECH_OA21 U128 ( .A(n12), .B(n82), .C(n93), .Z(N41) );
  GTECH_NOT U129 ( .A(n129), .Z(n93) );
  GTECH_OAI21 U130 ( .A(n90), .B(n91), .C(n130), .Z(N40) );
  GTECH_OA21 U131 ( .A(n127), .B(n129), .C(n125), .Z(n130) );
  GTECH_OR3 U132 ( .A(n127), .B(n13), .C(n128), .Z(n125) );
  GTECH_OAI21 U133 ( .A(n127), .B(n128), .C(n13), .Z(n129) );
  GTECH_NOT U134 ( .A(n12), .Z(n127) );
  GTECH_NOT U135 ( .A(St), .Z(n91) );
  GTECH_NOT U136 ( .A(n84), .Z(n90) );
  GTECH_AND3 U137 ( .A(n82), .B(n12), .C(n13), .Z(n84) );
  GTECH_NOR3 U138 ( .A(n12), .B(n13), .C(n128), .Z(Done) );
  GTECH_NOT U139 ( .A(n82), .Z(n128) );
endmodule

