
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n74, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n12) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n13) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n83) );
  GTECH_FJK1S B_reg_0_ ( .J(n74), .K(n74), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n14) );
  GTECH_FJK1S A_reg_3_ ( .J(n74), .K(n74), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n15) );
  GTECH_FJK1S A_reg_0_ ( .J(n74), .K(n74), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n16) );
  GTECH_FJK1S A_reg_1_ ( .J(n74), .K(n74), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n17) );
  GTECH_FJK1S A_reg_2_ ( .J(n74), .K(n74), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n82) );
  GTECH_FJK1S B_reg_3_ ( .J(n74), .K(n74), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n18) );
  GTECH_FJK1S B_reg_2_ ( .J(n74), .K(n74), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n19) );
  GTECH_FJK1S B_reg_1_ ( .J(n74), .K(n74), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n20) );
  GTECH_ZERO U78 ( .Z(n74) );
  GTECH_AND2 U79 ( .A(N57), .B(n84), .Z(N63) );
  GTECH_NOT U80 ( .A(n85), .Z(N58) );
  GTECH_AOI222 U81 ( .A(Mplier[3]), .B(n86), .C(n87), .D(n88), .E(n89), .F(n90), .Z(n85) );
  GTECH_NOT U82 ( .A(n16), .Z(n90) );
  GTECH_OAI21 U83 ( .A(Mcand[0]), .B(n91), .C(n84), .Z(n89) );
  GTECH_AND_NOT U84 ( .A(n92), .B(n14), .Z(n87) );
  GTECH_AO21 U85 ( .A(n86), .B(St), .C(n92), .Z(N57) );
  GTECH_OAI2N2 U86 ( .A(n18), .B(n91), .C(Mplier[2]), .D(n86), .Z(N56) );
  GTECH_OAI2N2 U87 ( .A(n19), .B(n91), .C(Mplier[1]), .D(n86), .Z(N54) );
  GTECH_OAI2N2 U88 ( .A(n20), .B(n91), .C(Mplier[0]), .D(n86), .Z(N52) );
  GTECH_MUX2 U89 ( .A(n93), .B(n94), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U90 ( .A(n95), .B(n96), .S(n15), .Z(N48) );
  GTECH_NOT U91 ( .A(n97), .Z(n96) );
  GTECH_MUX2 U92 ( .A(n98), .B(n99), .S(Mcand[3]), .Z(n97) );
  GTECH_NAND2 U93 ( .A(n100), .B(n84), .Z(n95) );
  GTECH_MUX2 U94 ( .A(n99), .B(n98), .S(Mcand[3]), .Z(n100) );
  GTECH_AOI2N2 U95 ( .A(n101), .B(n102), .C(n103), .D(n104), .Z(n98) );
  GTECH_AOI2N2 U96 ( .A(n103), .B(n105), .C(n101), .D(n106), .Z(n99) );
  GTECH_OAI21 U97 ( .A(n107), .B(n108), .C(n109), .Z(n101) );
  GTECH_OAI21 U98 ( .A(Mcand[2]), .B(n110), .C(n82), .Z(n109) );
  GTECH_OA21 U99 ( .A(n111), .B(n108), .C(n112), .Z(n103) );
  GTECH_AO21 U100 ( .A(n108), .B(n111), .C(n82), .Z(n112) );
  GTECH_MUX2 U101 ( .A(n113), .B(n114), .S(n82), .Z(N46) );
  GTECH_MUX2 U102 ( .A(n115), .B(n116), .S(n108), .Z(n114) );
  GTECH_NOT U103 ( .A(n117), .Z(n113) );
  GTECH_AND_NOT U104 ( .A(n84), .B(n118), .Z(n117) );
  GTECH_MUX2 U105 ( .A(n116), .B(n115), .S(n108), .Z(n118) );
  GTECH_NOT U106 ( .A(Mcand[2]), .Z(n108) );
  GTECH_OAI2N2 U107 ( .A(n110), .B(n106), .C(n111), .D(n105), .Z(n115) );
  GTECH_OAI22 U108 ( .A(n111), .B(n104), .C(n107), .D(n106), .Z(n116) );
  GTECH_NOT U109 ( .A(n110), .Z(n107) );
  GTECH_OAI21 U110 ( .A(n119), .B(n120), .C(n121), .Z(n110) );
  GTECH_OAI21 U111 ( .A(n88), .B(Mcand[1]), .C(n17), .Z(n121) );
  GTECH_NOT U112 ( .A(n105), .Z(n104) );
  GTECH_OA21 U113 ( .A(n120), .B(n122), .C(n123), .Z(n111) );
  GTECH_AO21 U114 ( .A(n122), .B(n120), .C(n17), .Z(n123) );
  GTECH_MUX2 U115 ( .A(n124), .B(n125), .S(n17), .Z(N44) );
  GTECH_MUX2 U116 ( .A(n126), .B(n127), .S(n120), .Z(n125) );
  GTECH_NOT U117 ( .A(n128), .Z(n124) );
  GTECH_AND_NOT U118 ( .A(n84), .B(n129), .Z(n128) );
  GTECH_MUX2 U119 ( .A(n127), .B(n126), .S(n120), .Z(n129) );
  GTECH_NOT U120 ( .A(Mcand[1]), .Z(n120) );
  GTECH_OAI2N2 U121 ( .A(n88), .B(n106), .C(n122), .D(n105), .Z(n126) );
  GTECH_NOT U122 ( .A(n130), .Z(n122) );
  GTECH_OAI2N2 U123 ( .A(n119), .B(n106), .C(n130), .D(n105), .Z(n127) );
  GTECH_AND_NOT U124 ( .A(n94), .B(n14), .Z(n105) );
  GTECH_AND_NOT U125 ( .A(Mcand[0]), .B(n16), .Z(n130) );
  GTECH_NOT U126 ( .A(n102), .Z(n106) );
  GTECH_AND_NOT U127 ( .A(n93), .B(n14), .Z(n102) );
  GTECH_NOT U128 ( .A(n88), .Z(n119) );
  GTECH_AND2 U129 ( .A(Mcand[0]), .B(n16), .Z(n88) );
  GTECH_NAND2 U130 ( .A(n92), .B(n14), .Z(n84) );
  GTECH_NOT U131 ( .A(n91), .Z(n92) );
  GTECH_AND_NOT U132 ( .A(n131), .B(n93), .Z(n91) );
  GTECH_NAND2 U133 ( .A(n132), .B(n133), .Z(N42) );
  GTECH_NOT U134 ( .A(n93), .Z(n133) );
  GTECH_OR3 U135 ( .A(n12), .B(n83), .C(n131), .Z(n132) );
  GTECH_AOI21 U136 ( .A(n134), .B(n135), .C(n131), .Z(N41) );
  GTECH_NOT U137 ( .A(n94), .Z(n131) );
  GTECH_AO21 U138 ( .A(n86), .B(St), .C(n136), .Z(N40) );
  GTECH_AO21 U139 ( .A(n12), .B(n94), .C(n93), .Z(n136) );
  GTECH_AND3 U140 ( .A(n12), .B(n137), .C(n83), .Z(n93) );
  GTECH_NOT U141 ( .A(n13), .Z(n137) );
  GTECH_OA21 U142 ( .A(n134), .B(n135), .C(n13), .Z(n94) );
  GTECH_NOT U143 ( .A(n12), .Z(n134) );
  GTECH_AND3 U144 ( .A(n83), .B(n12), .C(n13), .Z(n86) );
  GTECH_NOR3 U145 ( .A(n12), .B(n13), .C(n135), .Z(Done) );
  GTECH_NOT U146 ( .A(n83), .Z(n135) );
endmodule

