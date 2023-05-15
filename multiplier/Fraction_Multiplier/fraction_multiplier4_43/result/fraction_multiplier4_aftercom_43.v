
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63, n13,
         n14, n15, n16, n17, n74, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n85) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n87) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n86) );
  GTECH_FJK1S B_reg_0_ ( .J(n74), .K(n74), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n84) );
  GTECH_FJK1S A_reg_3_ ( .J(n74), .K(n74), .TI(N50), .TE(N63), .CP(CLK), .QN(
        n82) );
  GTECH_FJK1S A_reg_0_ ( .J(n74), .K(n74), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n13) );
  GTECH_FJK1S A_reg_1_ ( .J(n74), .K(n74), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n14) );
  GTECH_FJK1S A_reg_2_ ( .J(n74), .K(n74), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n83) );
  GTECH_FJK1S B_reg_3_ ( .J(n74), .K(n74), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n15) );
  GTECH_FJK1S B_reg_2_ ( .J(n74), .K(n74), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n16) );
  GTECH_FJK1S B_reg_1_ ( .J(n74), .K(n74), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n17) );
  GTECH_ZERO U81 ( .Z(n74) );
  GTECH_AND2 U82 ( .A(n88), .B(N57), .Z(N63) );
  GTECH_NOT U83 ( .A(n89), .Z(N58) );
  GTECH_AOI222 U84 ( .A(Mplier[3]), .B(n90), .C(n91), .D(n92), .E(n93), .F(n94), .Z(n89) );
  GTECH_OAI21 U85 ( .A(Mcand[0]), .B(n95), .C(n88), .Z(n93) );
  GTECH_NOR2 U86 ( .A(n95), .B(n84), .Z(n91) );
  GTECH_AO21 U87 ( .A(n90), .B(St), .C(n96), .Z(N57) );
  GTECH_NOT U88 ( .A(n95), .Z(n96) );
  GTECH_OAI2N2 U89 ( .A(n15), .B(n95), .C(Mplier[2]), .D(n90), .Z(N56) );
  GTECH_OAI2N2 U90 ( .A(n16), .B(n95), .C(Mplier[1]), .D(n90), .Z(N54) );
  GTECH_OAI2N2 U91 ( .A(n17), .B(n95), .C(Mplier[0]), .D(n90), .Z(N52) );
  GTECH_MUX2 U92 ( .A(n97), .B(n98), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U93 ( .A(n99), .B(n100), .S(n82), .Z(N48) );
  GTECH_NOT U94 ( .A(n101), .Z(n100) );
  GTECH_MUX2 U95 ( .A(n102), .B(n103), .S(Mcand[3]), .Z(n101) );
  GTECH_NAND2 U96 ( .A(n104), .B(n88), .Z(n99) );
  GTECH_MUX2 U97 ( .A(n103), .B(n102), .S(Mcand[3]), .Z(n104) );
  GTECH_AOI2N2 U98 ( .A(n105), .B(n106), .C(n107), .D(n108), .Z(n102) );
  GTECH_AOI2N2 U99 ( .A(n109), .B(n107), .C(n110), .D(n105), .Z(n103) );
  GTECH_AO21 U100 ( .A(Mcand[2]), .B(n111), .C(n112), .Z(n105) );
  GTECH_NOT U101 ( .A(n113), .Z(n112) );
  GTECH_OAI21 U102 ( .A(n111), .B(Mcand[2]), .C(n83), .Z(n113) );
  GTECH_OA21 U103 ( .A(n114), .B(n115), .C(n116), .Z(n107) );
  GTECH_AO21 U104 ( .A(n114), .B(n115), .C(n83), .Z(n116) );
  GTECH_MUX2 U105 ( .A(n117), .B(n118), .S(n83), .Z(N46) );
  GTECH_NOT U106 ( .A(n119), .Z(n118) );
  GTECH_MUX2 U107 ( .A(n120), .B(n121), .S(n115), .Z(n119) );
  GTECH_NOT U108 ( .A(Mcand[2]), .Z(n115) );
  GTECH_NAND2 U109 ( .A(n122), .B(n88), .Z(n117) );
  GTECH_MUX2 U110 ( .A(n120), .B(n121), .S(Mcand[2]), .Z(n122) );
  GTECH_AOI2N2 U111 ( .A(n111), .B(n106), .C(n114), .D(n108), .Z(n121) );
  GTECH_AOI2N2 U112 ( .A(n114), .B(n109), .C(n111), .D(n110), .Z(n120) );
  GTECH_OA21 U113 ( .A(Mcand[1]), .B(n92), .C(n123), .Z(n111) );
  GTECH_AO21 U114 ( .A(n92), .B(Mcand[1]), .C(n14), .Z(n123) );
  GTECH_OAI21 U115 ( .A(Mcand[1]), .B(n124), .C(n125), .Z(n114) );
  GTECH_AO21 U116 ( .A(n124), .B(Mcand[1]), .C(n126), .Z(n125) );
  GTECH_NOT U117 ( .A(n14), .Z(n126) );
  GTECH_MUX2 U118 ( .A(n127), .B(n128), .S(n14), .Z(N44) );
  GTECH_MUX2 U119 ( .A(n129), .B(n130), .S(Mcand[1]), .Z(n128) );
  GTECH_OR_NOT U120 ( .A(n131), .B(n88), .Z(n127) );
  GTECH_OR_NOT U121 ( .A(n95), .B(n84), .Z(n88) );
  GTECH_NOR2 U122 ( .A(n98), .B(n97), .Z(n95) );
  GTECH_MUX2 U123 ( .A(n130), .B(n129), .S(Mcand[1]), .Z(n131) );
  GTECH_AO22 U124 ( .A(n124), .B(n109), .C(n92), .D(n106), .Z(n129) );
  GTECH_OAI22 U125 ( .A(n124), .B(n108), .C(n92), .D(n110), .Z(n130) );
  GTECH_NOT U126 ( .A(n106), .Z(n110) );
  GTECH_AND_NOT U127 ( .A(n97), .B(n84), .Z(n106) );
  GTECH_AND_NOT U128 ( .A(Mcand[0]), .B(n94), .Z(n92) );
  GTECH_NOT U129 ( .A(n109), .Z(n108) );
  GTECH_NOR2 U130 ( .A(n132), .B(n84), .Z(n109) );
  GTECH_NOT U131 ( .A(n98), .Z(n132) );
  GTECH_AND2 U132 ( .A(Mcand[0]), .B(n94), .Z(n124) );
  GTECH_NOT U133 ( .A(n13), .Z(n94) );
  GTECH_OR_NOT U134 ( .A(n97), .B(n133), .Z(N42) );
  GTECH_NAND3 U135 ( .A(n134), .B(n135), .C(n98), .Z(n133) );
  GTECH_OA21 U136 ( .A(n85), .B(n86), .C(n98), .Z(N41) );
  GTECH_AO21 U137 ( .A(n90), .B(St), .C(n136), .Z(N40) );
  GTECH_AO21 U138 ( .A(n85), .B(n98), .C(n97), .Z(n136) );
  GTECH_NOR3 U139 ( .A(n134), .B(n87), .C(n135), .Z(n97) );
  GTECH_AOI21 U140 ( .A(n85), .B(n86), .C(n137), .Z(n98) );
  GTECH_NOR3 U141 ( .A(n135), .B(n134), .C(n137), .Z(n90) );
  GTECH_NOT U142 ( .A(n86), .Z(n135) );
  GTECH_AND3 U143 ( .A(n134), .B(n137), .C(n86), .Z(Done) );
  GTECH_NOT U144 ( .A(n87), .Z(n137) );
  GTECH_NOT U145 ( .A(n85), .Z(n134) );
endmodule

