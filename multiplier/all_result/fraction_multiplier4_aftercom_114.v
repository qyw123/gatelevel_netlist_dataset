
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n68, n76, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135;
  wire   [2:0] State;

  GTECH_FD2 State_reg_0_ ( .D(N40), .CP(CLK), .CD(n76), .Q(State[0]), .QN(n81)
         );
  GTECH_FD2 State_reg_2_ ( .D(N42), .CP(CLK), .CD(n76), .Q(State[2]), .QN(n83)
         );
  GTECH_FD2 State_reg_1_ ( .D(N41), .CP(CLK), .CD(n76), .Q(State[1]), .QN(n82)
         );
  GTECH_FJK1S B_reg_0_ ( .J(n68), .K(n68), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n12) );
  GTECH_FJK1S A_reg_3_ ( .J(n68), .K(n68), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n13) );
  GTECH_FJK1S A_reg_0_ ( .J(n68), .K(n68), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n14) );
  GTECH_FJK1S A_reg_1_ ( .J(n68), .K(n68), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n80) );
  GTECH_FJK1S A_reg_2_ ( .J(n68), .K(n68), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n79) );
  GTECH_FJK1S B_reg_3_ ( .J(n68), .K(n68), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n15) );
  GTECH_FJK1S B_reg_2_ ( .J(n68), .K(n68), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n16) );
  GTECH_FJK1S B_reg_1_ ( .J(n68), .K(n68), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n17) );
  GTECH_ONE U78 ( .Z(n76) );
  GTECH_ZERO U79 ( .Z(n68) );
  GTECH_AND2 U80 ( .A(N57), .B(n84), .Z(N63) );
  GTECH_NOT U81 ( .A(n85), .Z(N58) );
  GTECH_AOI222 U82 ( .A(Mplier[3]), .B(n86), .C(n87), .D(n88), .E(n89), .F(n90), .Z(n85) );
  GTECH_OAI21 U83 ( .A(Mcand[0]), .B(n91), .C(n84), .Z(n89) );
  GTECH_NOR2 U84 ( .A(n91), .B(n12), .Z(n87) );
  GTECH_AO21 U85 ( .A(n86), .B(St), .C(n92), .Z(N57) );
  GTECH_OAI2N2 U86 ( .A(n15), .B(n91), .C(Mplier[2]), .D(n86), .Z(N56) );
  GTECH_OAI2N2 U87 ( .A(n16), .B(n91), .C(Mplier[1]), .D(n86), .Z(N54) );
  GTECH_OAI2N2 U88 ( .A(n17), .B(n91), .C(Mplier[0]), .D(n86), .Z(N52) );
  GTECH_MUX2 U89 ( .A(n93), .B(n94), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U90 ( .A(n95), .B(n96), .S(n13), .Z(N48) );
  GTECH_NOT U91 ( .A(n97), .Z(n96) );
  GTECH_MUX2 U92 ( .A(n98), .B(n99), .S(n100), .Z(n97) );
  GTECH_NOT U93 ( .A(Mcand[3]), .Z(n100) );
  GTECH_NAND2 U94 ( .A(n101), .B(n84), .Z(n95) );
  GTECH_MUX2 U95 ( .A(n98), .B(n99), .S(Mcand[3]), .Z(n101) );
  GTECH_AOI2N2 U96 ( .A(n102), .B(n103), .C(n104), .D(n105), .Z(n99) );
  GTECH_AOI2N2 U97 ( .A(n106), .B(n104), .C(n102), .D(n107), .Z(n98) );
  GTECH_OA21 U98 ( .A(Mcand[2]), .B(n108), .C(n109), .Z(n102) );
  GTECH_AO21 U99 ( .A(n108), .B(Mcand[2]), .C(n79), .Z(n109) );
  GTECH_OA21 U100 ( .A(n110), .B(n111), .C(n112), .Z(n104) );
  GTECH_AO21 U101 ( .A(n111), .B(n110), .C(n79), .Z(n112) );
  GTECH_NOT U102 ( .A(Mcand[2]), .Z(n111) );
  GTECH_MUX2 U103 ( .A(n113), .B(n114), .S(n79), .Z(N46) );
  GTECH_NOT U104 ( .A(n115), .Z(n114) );
  GTECH_MUX2 U105 ( .A(n116), .B(n117), .S(Mcand[2]), .Z(n115) );
  GTECH_NAND2 U106 ( .A(n118), .B(n84), .Z(n113) );
  GTECH_MUX2 U107 ( .A(n117), .B(n116), .S(Mcand[2]), .Z(n118) );
  GTECH_AOI2N2 U108 ( .A(n108), .B(n103), .C(n110), .D(n105), .Z(n116) );
  GTECH_NOT U109 ( .A(n119), .Z(n110) );
  GTECH_NOT U110 ( .A(n120), .Z(n108) );
  GTECH_AOI2N2 U111 ( .A(n120), .B(n103), .C(n119), .D(n105), .Z(n117) );
  GTECH_ADD_ABC U112 ( .A(n121), .B(Mcand[1]), .C(n122), .COUT(n119) );
  GTECH_AND_NOT U113 ( .A(Mcand[0]), .B(n14), .Z(n121) );
  GTECH_ADD_ABC U114 ( .A(n123), .B(n124), .C(n122), .COUT(n120) );
  GTECH_OR_NOT U115 ( .A(n90), .B(Mcand[0]), .Z(n123) );
  GTECH_MUX2 U116 ( .A(n125), .B(n126), .S(n122), .Z(N44) );
  GTECH_NOT U117 ( .A(n80), .Z(n122) );
  GTECH_OR_NOT U118 ( .A(n127), .B(n84), .Z(n126) );
  GTECH_NAND2 U119 ( .A(n92), .B(n12), .Z(n84) );
  GTECH_NOT U120 ( .A(n91), .Z(n92) );
  GTECH_NOR2 U121 ( .A(n93), .B(n94), .Z(n91) );
  GTECH_MUX2 U122 ( .A(n128), .B(n129), .S(n124), .Z(n127) );
  GTECH_NOT U123 ( .A(Mcand[1]), .Z(n124) );
  GTECH_MUX2 U124 ( .A(n128), .B(n129), .S(Mcand[1]), .Z(n125) );
  GTECH_OAI2N2 U125 ( .A(n88), .B(n107), .C(n130), .D(n106), .Z(n129) );
  GTECH_NOT U126 ( .A(n105), .Z(n106) );
  GTECH_NOT U127 ( .A(n103), .Z(n107) );
  GTECH_OAI2N2 U128 ( .A(n130), .B(n105), .C(n88), .D(n103), .Z(n128) );
  GTECH_NOR2 U129 ( .A(n131), .B(n12), .Z(n103) );
  GTECH_NOT U130 ( .A(n93), .Z(n131) );
  GTECH_AND_NOT U131 ( .A(Mcand[0]), .B(n90), .Z(n88) );
  GTECH_NOT U132 ( .A(n14), .Z(n90) );
  GTECH_OR_NOT U133 ( .A(n12), .B(n94), .Z(n105) );
  GTECH_OR_NOT U134 ( .A(n14), .B(Mcand[0]), .Z(n130) );
  GTECH_OR_NOT U135 ( .A(n93), .B(n132), .Z(N42) );
  GTECH_NAND3 U136 ( .A(n133), .B(n134), .C(n94), .Z(n132) );
  GTECH_OA21 U137 ( .A(n81), .B(n82), .C(n94), .Z(N41) );
  GTECH_AO21 U138 ( .A(n86), .B(St), .C(n135), .Z(N40) );
  GTECH_AO21 U139 ( .A(n81), .B(n94), .C(n93), .Z(n135) );
  GTECH_NOR3 U140 ( .A(n133), .B(n83), .C(n134), .Z(n93) );
  GTECH_OA21 U141 ( .A(n133), .B(n134), .C(n83), .Z(n94) );
  GTECH_NOT U142 ( .A(n81), .Z(n133) );
  GTECH_AND3 U143 ( .A(n82), .B(n81), .C(n83), .Z(n86) );
  GTECH_NOR3 U144 ( .A(n81), .B(n83), .C(n134), .Z(Done) );
  GTECH_NOT U145 ( .A(n82), .Z(n134) );
endmodule

