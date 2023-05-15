
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n67, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n79) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n80) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n78) );
  GTECH_FJK1S B_reg_0_ ( .J(n67), .K(n67), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n12) );
  GTECH_FJK1S A_reg_3_ ( .J(n67), .K(n67), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n13) );
  GTECH_FJK1S A_reg_0_ ( .J(n67), .K(n67), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n75) );
  GTECH_FJK1S A_reg_1_ ( .J(n67), .K(n67), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n77) );
  GTECH_FJK1S A_reg_2_ ( .J(n67), .K(n67), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n76) );
  GTECH_FJK1S B_reg_3_ ( .J(n67), .K(n67), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n14) );
  GTECH_FJK1S B_reg_2_ ( .J(n67), .K(n67), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n15) );
  GTECH_FJK1S B_reg_1_ ( .J(n67), .K(n67), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n16) );
  GTECH_ZERO U75 ( .Z(n67) );
  GTECH_AND2 U76 ( .A(N57), .B(n81), .Z(N63) );
  GTECH_AO21 U77 ( .A(Mplier[3]), .B(n82), .C(n83), .Z(N58) );
  GTECH_AO21 U78 ( .A(n84), .B(n85), .C(n86), .Z(n83) );
  GTECH_NOR3 U79 ( .A(n87), .B(n12), .C(n88), .Z(n86) );
  GTECH_OAI21 U80 ( .A(n87), .B(Mcand[0]), .C(n81), .Z(n85) );
  GTECH_AO21 U81 ( .A(n82), .B(St), .C(n89), .Z(N57) );
  GTECH_NOT U82 ( .A(n87), .Z(n89) );
  GTECH_OAI2N2 U83 ( .A(n14), .B(n87), .C(Mplier[2]), .D(n82), .Z(N56) );
  GTECH_OAI2N2 U84 ( .A(n15), .B(n87), .C(Mplier[1]), .D(n82), .Z(N54) );
  GTECH_OAI2N2 U85 ( .A(n16), .B(n87), .C(Mplier[0]), .D(n82), .Z(N52) );
  GTECH_MUX2 U86 ( .A(n90), .B(n91), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U87 ( .A(n92), .B(n93), .S(n13), .Z(N48) );
  GTECH_MUX2 U88 ( .A(n94), .B(n95), .S(Mcand[3]), .Z(n93) );
  GTECH_OR_NOT U89 ( .A(n96), .B(n81), .Z(n92) );
  GTECH_MUX2 U90 ( .A(n95), .B(n94), .S(Mcand[3]), .Z(n96) );
  GTECH_OAI22 U91 ( .A(n97), .B(n98), .C(n99), .D(n100), .Z(n94) );
  GTECH_AO22 U92 ( .A(n98), .B(n101), .C(n99), .D(n102), .Z(n95) );
  GTECH_AOI21 U93 ( .A(n103), .B(Mcand[2]), .C(n104), .Z(n99) );
  GTECH_AOI21 U94 ( .A(n105), .B(n106), .C(n107), .Z(n104) );
  GTECH_NOT U95 ( .A(Mcand[2]), .Z(n105) );
  GTECH_NOT U96 ( .A(n106), .Z(n103) );
  GTECH_OAI21 U97 ( .A(Mcand[2]), .B(n108), .C(n109), .Z(n98) );
  GTECH_AO21 U98 ( .A(n108), .B(Mcand[2]), .C(n107), .Z(n109) );
  GTECH_NOT U99 ( .A(n76), .Z(n107) );
  GTECH_MUX2 U100 ( .A(n110), .B(n111), .S(n76), .Z(N46) );
  GTECH_NOT U101 ( .A(n112), .Z(n111) );
  GTECH_MUX2 U102 ( .A(n113), .B(n114), .S(Mcand[2]), .Z(n112) );
  GTECH_NAND2 U103 ( .A(n81), .B(n115), .Z(n110) );
  GTECH_MUX2 U104 ( .A(n114), .B(n113), .S(Mcand[2]), .Z(n115) );
  GTECH_AOI2N2 U105 ( .A(n108), .B(n101), .C(n106), .D(n100), .Z(n113) );
  GTECH_AOI2N2 U106 ( .A(n106), .B(n102), .C(n108), .D(n97), .Z(n114) );
  GTECH_ADD_ABC U107 ( .A(Mcand[1]), .B(n116), .C(n117), .COUT(n108) );
  GTECH_AND2 U108 ( .A(Mcand[0]), .B(n84), .Z(n116) );
  GTECH_ADD_ABC U109 ( .A(n88), .B(n118), .C(n117), .COUT(n106) );
  GTECH_NOT U110 ( .A(n77), .Z(n117) );
  GTECH_MUX2 U111 ( .A(n119), .B(n120), .S(n77), .Z(N44) );
  GTECH_MUX2 U112 ( .A(n121), .B(n122), .S(n118), .Z(n120) );
  GTECH_NOT U113 ( .A(Mcand[1]), .Z(n118) );
  GTECH_OR_NOT U114 ( .A(n123), .B(n81), .Z(n119) );
  GTECH_OR_NOT U115 ( .A(n87), .B(n12), .Z(n81) );
  GTECH_AND_NOT U116 ( .A(n124), .B(n90), .Z(n87) );
  GTECH_MUX2 U117 ( .A(n121), .B(n122), .S(Mcand[1]), .Z(n123) );
  GTECH_OAI22 U118 ( .A(n88), .B(n100), .C(n125), .D(n97), .Z(n122) );
  GTECH_NOT U119 ( .A(n101), .Z(n97) );
  GTECH_NOT U120 ( .A(n102), .Z(n100) );
  GTECH_NOT U121 ( .A(n126), .Z(n121) );
  GTECH_OAI21 U122 ( .A(n101), .B(n88), .C(n127), .Z(n126) );
  GTECH_AO21 U123 ( .A(n125), .B(n101), .C(n102), .Z(n127) );
  GTECH_AND_NOT U124 ( .A(n90), .B(n12), .Z(n102) );
  GTECH_NAND2 U125 ( .A(n84), .B(Mcand[0]), .Z(n125) );
  GTECH_NOT U126 ( .A(n75), .Z(n84) );
  GTECH_NAND2 U127 ( .A(n75), .B(Mcand[0]), .Z(n88) );
  GTECH_AND_NOT U128 ( .A(n91), .B(n12), .Z(n101) );
  GTECH_OR_NOT U129 ( .A(n90), .B(n128), .Z(N42) );
  GTECH_OR3 U130 ( .A(n78), .B(n79), .C(n124), .Z(n128) );
  GTECH_AOI21 U131 ( .A(n129), .B(n130), .C(n124), .Z(N41) );
  GTECH_NOT U132 ( .A(n91), .Z(n124) );
  GTECH_NOT U133 ( .A(n79), .Z(n129) );
  GTECH_AO21 U134 ( .A(n82), .B(St), .C(n131), .Z(N40) );
  GTECH_AO21 U135 ( .A(n91), .B(n79), .C(n90), .Z(n131) );
  GTECH_AND_NOT U136 ( .A(n132), .B(n80), .Z(n90) );
  GTECH_AND_NOT U137 ( .A(n80), .B(n132), .Z(n91) );
  GTECH_AND2 U138 ( .A(n80), .B(n132), .Z(n82) );
  GTECH_AND2 U139 ( .A(n79), .B(n78), .Z(n132) );
  GTECH_NOR3 U140 ( .A(n79), .B(n80), .C(n130), .Z(Done) );
  GTECH_NOT U141 ( .A(n78), .Z(n130) );
endmodule

