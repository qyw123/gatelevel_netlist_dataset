
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n74, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n84) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n86) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n85) );
  GTECH_FJK1S B_reg_0_ ( .J(n74), .K(n74), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n12) );
  GTECH_FJK1S A_reg_3_ ( .J(n74), .K(n74), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n13) );
  GTECH_FJK1S A_reg_0_ ( .J(n74), .K(n74), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n83) );
  GTECH_FJK1S A_reg_1_ ( .J(n74), .K(n74), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n82) );
  GTECH_FJK1S A_reg_2_ ( .J(n74), .K(n74), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n14) );
  GTECH_FJK1S B_reg_3_ ( .J(n74), .K(n74), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n15) );
  GTECH_FJK1S B_reg_2_ ( .J(n74), .K(n74), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n16) );
  GTECH_FJK1S B_reg_1_ ( .J(n74), .K(n74), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n17) );
  GTECH_ZERO U81 ( .Z(n74) );
  GTECH_AND2 U82 ( .A(N57), .B(n87), .Z(N63) );
  GTECH_NOT U83 ( .A(n88), .Z(N58) );
  GTECH_AOI222 U84 ( .A(Mplier[3]), .B(n89), .C(n90), .D(n91), .E(n92), .F(n93), .Z(n88) );
  GTECH_OAI21 U85 ( .A(Mcand[0]), .B(n94), .C(n87), .Z(n92) );
  GTECH_AND_NOT U86 ( .A(n95), .B(n94), .Z(n90) );
  GTECH_OAI21 U87 ( .A(n96), .B(n97), .C(n94), .Z(N57) );
  GTECH_OAI2N2 U88 ( .A(n15), .B(n94), .C(Mplier[2]), .D(n89), .Z(N56) );
  GTECH_OAI2N2 U89 ( .A(n16), .B(n94), .C(Mplier[1]), .D(n89), .Z(N54) );
  GTECH_OAI2N2 U90 ( .A(n17), .B(n94), .C(Mplier[0]), .D(n89), .Z(N52) );
  GTECH_NOT U91 ( .A(n96), .Z(n89) );
  GTECH_NOT U92 ( .A(n98), .Z(n94) );
  GTECH_MUX2 U93 ( .A(n99), .B(n100), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U94 ( .A(n101), .B(n102), .S(n13), .Z(N48) );
  GTECH_MUX2 U95 ( .A(n103), .B(n104), .S(n105), .Z(n102) );
  GTECH_NOT U96 ( .A(Mcand[3]), .Z(n105) );
  GTECH_OR_NOT U97 ( .A(n106), .B(n87), .Z(n101) );
  GTECH_MUX2 U98 ( .A(n103), .B(n104), .S(Mcand[3]), .Z(n106) );
  GTECH_OAI22 U99 ( .A(n107), .B(n108), .C(n109), .D(n110), .Z(n104) );
  GTECH_AO22 U100 ( .A(n111), .B(n107), .C(n112), .D(n109), .Z(n103) );
  GTECH_OA21 U101 ( .A(n113), .B(n114), .C(n115), .Z(n109) );
  GTECH_OAI21 U102 ( .A(Mcand[2]), .B(n116), .C(n14), .Z(n115) );
  GTECH_AOI21 U103 ( .A(n117), .B(Mcand[2]), .C(n118), .Z(n107) );
  GTECH_OA21 U104 ( .A(Mcand[2]), .B(n117), .C(n119), .Z(n118) );
  GTECH_NOT U105 ( .A(n14), .Z(n119) );
  GTECH_MUX2 U106 ( .A(n120), .B(n121), .S(n14), .Z(N46) );
  GTECH_NOT U107 ( .A(n122), .Z(n121) );
  GTECH_MUX2 U108 ( .A(n123), .B(n124), .S(n114), .Z(n122) );
  GTECH_NOT U109 ( .A(Mcand[2]), .Z(n114) );
  GTECH_NAND2 U110 ( .A(n125), .B(n87), .Z(n120) );
  GTECH_MUX2 U111 ( .A(n123), .B(n124), .S(Mcand[2]), .Z(n125) );
  GTECH_AOI2N2 U112 ( .A(n117), .B(n111), .C(n113), .D(n110), .Z(n124) );
  GTECH_OA22 U113 ( .A(n116), .B(n110), .C(n117), .D(n108), .Z(n123) );
  GTECH_ADD_ABC U114 ( .A(Mcand[1]), .B(n126), .C(n127), .COUT(n117) );
  GTECH_AND_NOT U115 ( .A(Mcand[0]), .B(n83), .Z(n126) );
  GTECH_NOT U116 ( .A(n113), .Z(n116) );
  GTECH_ADD_ABC U117 ( .A(n128), .B(n129), .C(n127), .COUT(n113) );
  GTECH_OR_NOT U118 ( .A(n93), .B(Mcand[0]), .Z(n128) );
  GTECH_NOT U119 ( .A(n83), .Z(n93) );
  GTECH_MUX2 U120 ( .A(n130), .B(n131), .S(n127), .Z(N44) );
  GTECH_NOT U121 ( .A(n82), .Z(n127) );
  GTECH_OR_NOT U122 ( .A(n132), .B(n87), .Z(n131) );
  GTECH_NAND2 U123 ( .A(n12), .B(n98), .Z(n87) );
  GTECH_OR2 U124 ( .A(n99), .B(n100), .Z(n98) );
  GTECH_MUX2 U125 ( .A(n133), .B(n134), .S(n129), .Z(n132) );
  GTECH_NOT U126 ( .A(Mcand[1]), .Z(n129) );
  GTECH_MUX2 U127 ( .A(n133), .B(n134), .S(Mcand[1]), .Z(n130) );
  GTECH_OAI2N2 U128 ( .A(n91), .B(n110), .C(n135), .D(n111), .Z(n134) );
  GTECH_NOT U129 ( .A(n112), .Z(n110) );
  GTECH_OAI2N2 U130 ( .A(n135), .B(n108), .C(n91), .D(n112), .Z(n133) );
  GTECH_AND_NOT U131 ( .A(n99), .B(n12), .Z(n112) );
  GTECH_AND2 U132 ( .A(Mcand[0]), .B(n83), .Z(n91) );
  GTECH_NOT U133 ( .A(n111), .Z(n108) );
  GTECH_AND2 U134 ( .A(n100), .B(n95), .Z(n111) );
  GTECH_NOT U135 ( .A(n12), .Z(n95) );
  GTECH_OR_NOT U136 ( .A(n83), .B(Mcand[0]), .Z(n135) );
  GTECH_OR_NOT U137 ( .A(n99), .B(n136), .Z(N42) );
  GTECH_NAND3 U138 ( .A(n137), .B(n138), .C(n100), .Z(n136) );
  GTECH_OA21 U139 ( .A(n84), .B(n85), .C(n100), .Z(N41) );
  GTECH_OAI21 U140 ( .A(n96), .B(n97), .C(n139), .Z(N40) );
  GTECH_AOI21 U141 ( .A(n84), .B(n100), .C(n99), .Z(n139) );
  GTECH_NOR3 U142 ( .A(n137), .B(n86), .C(n138), .Z(n99) );
  GTECH_OA21 U143 ( .A(n137), .B(n138), .C(n86), .Z(n100) );
  GTECH_NOT U144 ( .A(n84), .Z(n137) );
  GTECH_NOT U145 ( .A(St), .Z(n97) );
  GTECH_NAND3 U146 ( .A(n85), .B(n84), .C(n86), .Z(n96) );
  GTECH_NOR3 U147 ( .A(n84), .B(n86), .C(n138), .Z(Done) );
  GTECH_NOT U148 ( .A(n85), .Z(n138) );
endmodule

