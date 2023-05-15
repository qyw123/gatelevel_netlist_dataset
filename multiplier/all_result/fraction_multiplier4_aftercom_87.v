
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n68, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n80) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n79) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n12) );
  GTECH_FJK1S B_reg_0_ ( .J(n68), .K(n68), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n77) );
  GTECH_FJK1S A_reg_3_ ( .J(n68), .K(n68), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n13) );
  GTECH_FJK1S A_reg_0_ ( .J(n68), .K(n68), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n76) );
  GTECH_FJK1S A_reg_1_ ( .J(n68), .K(n68), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n78) );
  GTECH_FJK1S A_reg_2_ ( .J(n68), .K(n68), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n14) );
  GTECH_FJK1S B_reg_3_ ( .J(n68), .K(n68), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n15) );
  GTECH_FJK1S B_reg_2_ ( .J(n68), .K(n68), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n16) );
  GTECH_FJK1S B_reg_1_ ( .J(n68), .K(n68), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n17) );
  GTECH_ZERO U75 ( .Z(n68) );
  GTECH_AND2 U76 ( .A(N57), .B(n81), .Z(N63) );
  GTECH_AO21 U77 ( .A(Mplier[3]), .B(n82), .C(n83), .Z(N58) );
  GTECH_OAI21 U78 ( .A(n76), .B(n84), .C(n85), .Z(n83) );
  GTECH_NAND3 U79 ( .A(n86), .B(n87), .C(n88), .Z(n85) );
  GTECH_OA21 U80 ( .A(Mcand[0]), .B(n89), .C(n81), .Z(n84) );
  GTECH_AO21 U81 ( .A(n82), .B(St), .C(n86), .Z(N57) );
  GTECH_NOT U82 ( .A(n89), .Z(n86) );
  GTECH_OAI2N2 U83 ( .A(n15), .B(n89), .C(Mplier[2]), .D(n82), .Z(N56) );
  GTECH_OAI2N2 U84 ( .A(n16), .B(n89), .C(Mplier[1]), .D(n82), .Z(N54) );
  GTECH_OAI2N2 U85 ( .A(n17), .B(n89), .C(Mplier[0]), .D(n82), .Z(N52) );
  GTECH_MUX2 U86 ( .A(n90), .B(n91), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U87 ( .A(n92), .B(n93), .S(n13), .Z(N48) );
  GTECH_MUX2 U88 ( .A(n94), .B(n95), .S(Mcand[3]), .Z(n93) );
  GTECH_OR_NOT U89 ( .A(n96), .B(n81), .Z(n92) );
  GTECH_MUX2 U90 ( .A(n95), .B(n94), .S(Mcand[3]), .Z(n96) );
  GTECH_OAI22 U91 ( .A(n97), .B(n98), .C(n99), .D(n100), .Z(n94) );
  GTECH_AO22 U92 ( .A(n97), .B(n101), .C(n99), .D(n102), .Z(n95) );
  GTECH_OA21 U93 ( .A(n103), .B(n104), .C(n105), .Z(n99) );
  GTECH_OAI21 U94 ( .A(Mcand[2]), .B(n106), .C(n14), .Z(n105) );
  GTECH_OA21 U95 ( .A(n107), .B(n104), .C(n108), .Z(n97) );
  GTECH_AO21 U96 ( .A(n104), .B(n107), .C(n14), .Z(n108) );
  GTECH_NOT U97 ( .A(Mcand[2]), .Z(n104) );
  GTECH_MUX2 U98 ( .A(n109), .B(n110), .S(n14), .Z(N46) );
  GTECH_NOT U99 ( .A(n111), .Z(n110) );
  GTECH_MUX2 U100 ( .A(n112), .B(n113), .S(Mcand[2]), .Z(n111) );
  GTECH_NAND2 U101 ( .A(n114), .B(n81), .Z(n109) );
  GTECH_MUX2 U102 ( .A(n113), .B(n112), .S(Mcand[2]), .Z(n114) );
  GTECH_AOI2N2 U103 ( .A(n106), .B(n102), .C(n107), .D(n98), .Z(n112) );
  GTECH_NOT U104 ( .A(n115), .Z(n107) );
  GTECH_AOI2N2 U105 ( .A(n103), .B(n102), .C(n115), .D(n98), .Z(n113) );
  GTECH_ADD_ABC U106 ( .A(Mcand[1]), .B(n116), .C(n117), .COUT(n115) );
  GTECH_AND_NOT U107 ( .A(Mcand[0]), .B(n76), .Z(n116) );
  GTECH_NOT U108 ( .A(n106), .Z(n103) );
  GTECH_ADD_ABC U109 ( .A(n88), .B(Mcand[1]), .C(n78), .COUT(n106) );
  GTECH_MUX2 U110 ( .A(n118), .B(n119), .S(n117), .Z(N44) );
  GTECH_NOT U111 ( .A(n78), .Z(n117) );
  GTECH_NAND2 U112 ( .A(n120), .B(n81), .Z(n119) );
  GTECH_OR_NOT U113 ( .A(n89), .B(n77), .Z(n81) );
  GTECH_AND_NOT U114 ( .A(n121), .B(n91), .Z(n89) );
  GTECH_MUX2 U115 ( .A(n122), .B(n123), .S(Mcand[1]), .Z(n120) );
  GTECH_NOT U116 ( .A(n124), .Z(n118) );
  GTECH_MUX2 U117 ( .A(n123), .B(n122), .S(Mcand[1]), .Z(n124) );
  GTECH_OAI21 U118 ( .A(n102), .B(n125), .C(n126), .Z(n122) );
  GTECH_OAI21 U119 ( .A(n88), .B(n100), .C(n98), .Z(n126) );
  GTECH_NOT U120 ( .A(n102), .Z(n100) );
  GTECH_AOI2N2 U121 ( .A(n88), .B(n102), .C(n125), .D(n98), .Z(n123) );
  GTECH_NOT U122 ( .A(n101), .Z(n98) );
  GTECH_AND_NOT U123 ( .A(n87), .B(n127), .Z(n101) );
  GTECH_NOT U124 ( .A(n91), .Z(n127) );
  GTECH_NOT U125 ( .A(n77), .Z(n87) );
  GTECH_OR_NOT U126 ( .A(n76), .B(Mcand[0]), .Z(n125) );
  GTECH_AND_NOT U127 ( .A(n90), .B(n77), .Z(n102) );
  GTECH_AND2 U128 ( .A(Mcand[0]), .B(n76), .Z(n88) );
  GTECH_NAND2 U129 ( .A(n121), .B(n128), .Z(N42) );
  GTECH_NAND3 U130 ( .A(n129), .B(n130), .C(n91), .Z(n128) );
  GTECH_NOT U131 ( .A(n90), .Z(n121) );
  GTECH_OA21 U132 ( .A(n12), .B(n80), .C(n91), .Z(N41) );
  GTECH_AO21 U133 ( .A(n82), .B(St), .C(n131), .Z(N40) );
  GTECH_AO21 U134 ( .A(n80), .B(n91), .C(n90), .Z(n131) );
  GTECH_NOR3 U135 ( .A(n129), .B(n79), .C(n130), .Z(n90) );
  GTECH_AOI21 U136 ( .A(n12), .B(n80), .C(n132), .Z(n91) );
  GTECH_NOR3 U137 ( .A(n130), .B(n129), .C(n132), .Z(n82) );
  GTECH_NOT U138 ( .A(n12), .Z(n129) );
  GTECH_AND3 U139 ( .A(n132), .B(n130), .C(n12), .Z(Done) );
  GTECH_NOT U140 ( .A(n80), .Z(n130) );
  GTECH_NOT U141 ( .A(n79), .Z(n132) );
endmodule

