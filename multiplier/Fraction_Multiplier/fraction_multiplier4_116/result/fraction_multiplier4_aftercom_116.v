
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n70, n78, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137;
  wire   [2:0] State;

  GTECH_FD2 State_reg_0_ ( .D(N40), .CP(CLK), .CD(n78), .Q(State[0]), .QN(n83)
         );
  GTECH_FD2 State_reg_2_ ( .D(N42), .CP(CLK), .CD(n78), .Q(State[2]), .QN(n85)
         );
  GTECH_FD2 State_reg_1_ ( .D(N41), .CP(CLK), .CD(n78), .Q(State[1]), .QN(n84)
         );
  GTECH_FJK1S B_reg_0_ ( .J(n70), .K(n70), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n12) );
  GTECH_FJK1S A_reg_3_ ( .J(n70), .K(n70), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n13) );
  GTECH_FJK1S A_reg_0_ ( .J(n70), .K(n70), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n82) );
  GTECH_FJK1S A_reg_1_ ( .J(n70), .K(n70), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n81) );
  GTECH_FJK1S A_reg_2_ ( .J(n70), .K(n70), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n14) );
  GTECH_FJK1S B_reg_3_ ( .J(n70), .K(n70), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n15) );
  GTECH_FJK1S B_reg_2_ ( .J(n70), .K(n70), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n16) );
  GTECH_FJK1S B_reg_1_ ( .J(n70), .K(n70), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n17) );
  GTECH_ONE U80 ( .Z(n78) );
  GTECH_ZERO U81 ( .Z(n70) );
  GTECH_AND2 U82 ( .A(n86), .B(N57), .Z(N63) );
  GTECH_NOT U83 ( .A(n87), .Z(N58) );
  GTECH_AOI222 U84 ( .A(Mplier[3]), .B(n88), .C(n89), .D(n90), .E(n91), .F(n92), .Z(n87) );
  GTECH_OAI21 U85 ( .A(Mcand[0]), .B(n93), .C(n86), .Z(n91) );
  GTECH_AND_NOT U86 ( .A(n94), .B(n93), .Z(n89) );
  GTECH_OAI21 U87 ( .A(n95), .B(n96), .C(n93), .Z(N57) );
  GTECH_OAI2N2 U88 ( .A(n15), .B(n93), .C(Mplier[2]), .D(n88), .Z(N56) );
  GTECH_OAI2N2 U89 ( .A(n16), .B(n93), .C(Mplier[1]), .D(n88), .Z(N54) );
  GTECH_OAI2N2 U90 ( .A(n17), .B(n93), .C(Mplier[0]), .D(n88), .Z(N52) );
  GTECH_NOT U91 ( .A(n95), .Z(n88) );
  GTECH_MUX2 U92 ( .A(n97), .B(n98), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U93 ( .A(n99), .B(n100), .S(n13), .Z(N48) );
  GTECH_MUX2 U94 ( .A(n101), .B(n102), .S(Mcand[3]), .Z(n100) );
  GTECH_OR_NOT U95 ( .A(n103), .B(n86), .Z(n99) );
  GTECH_MUX2 U96 ( .A(n102), .B(n101), .S(Mcand[3]), .Z(n103) );
  GTECH_OAI22 U97 ( .A(n104), .B(n105), .C(n106), .D(n107), .Z(n101) );
  GTECH_AO22 U98 ( .A(n104), .B(n108), .C(n106), .D(n109), .Z(n102) );
  GTECH_OA21 U99 ( .A(n110), .B(n111), .C(n112), .Z(n106) );
  GTECH_OAI21 U100 ( .A(Mcand[2]), .B(n113), .C(n14), .Z(n112) );
  GTECH_AOI21 U101 ( .A(n114), .B(Mcand[2]), .C(n115), .Z(n104) );
  GTECH_OA21 U102 ( .A(Mcand[2]), .B(n114), .C(n116), .Z(n115) );
  GTECH_MUX2 U103 ( .A(n117), .B(n118), .S(n116), .Z(N46) );
  GTECH_NOT U104 ( .A(n14), .Z(n116) );
  GTECH_NAND2 U105 ( .A(n119), .B(n86), .Z(n118) );
  GTECH_MUX2 U106 ( .A(n120), .B(n121), .S(n111), .Z(n119) );
  GTECH_NOT U107 ( .A(Mcand[2]), .Z(n111) );
  GTECH_NOT U108 ( .A(n122), .Z(n117) );
  GTECH_MUX2 U109 ( .A(n120), .B(n121), .S(Mcand[2]), .Z(n122) );
  GTECH_OA22 U110 ( .A(n113), .B(n107), .C(n114), .D(n105), .Z(n121) );
  GTECH_NOT U111 ( .A(n110), .Z(n113) );
  GTECH_AOI2N2 U112 ( .A(n114), .B(n108), .C(n110), .D(n107), .Z(n120) );
  GTECH_ADD_ABC U113 ( .A(n123), .B(n124), .C(n125), .COUT(n110) );
  GTECH_NAND2 U114 ( .A(n82), .B(Mcand[0]), .Z(n123) );
  GTECH_ADD_ABC U115 ( .A(Mcand[1]), .B(n126), .C(n125), .COUT(n114) );
  GTECH_NOT U116 ( .A(n81), .Z(n125) );
  GTECH_MUX2 U117 ( .A(n127), .B(n128), .S(n81), .Z(N44) );
  GTECH_MUX2 U118 ( .A(n129), .B(n130), .S(n124), .Z(n128) );
  GTECH_NOT U119 ( .A(Mcand[1]), .Z(n124) );
  GTECH_OR_NOT U120 ( .A(n131), .B(n86), .Z(n127) );
  GTECH_OR_NOT U121 ( .A(n93), .B(n12), .Z(n86) );
  GTECH_AND_NOT U122 ( .A(n132), .B(n97), .Z(n93) );
  GTECH_MUX2 U123 ( .A(n129), .B(n130), .S(Mcand[1]), .Z(n131) );
  GTECH_AO22 U124 ( .A(n90), .B(n109), .C(n126), .D(n108), .Z(n130) );
  GTECH_AOI21 U125 ( .A(n107), .B(n126), .C(n133), .Z(n129) );
  GTECH_OA21 U126 ( .A(n90), .B(n107), .C(n105), .Z(n133) );
  GTECH_NOT U127 ( .A(n108), .Z(n105) );
  GTECH_AND_NOT U128 ( .A(n98), .B(n12), .Z(n108) );
  GTECH_AND_NOT U129 ( .A(Mcand[0]), .B(n92), .Z(n90) );
  GTECH_AND2 U130 ( .A(Mcand[0]), .B(n92), .Z(n126) );
  GTECH_NOT U131 ( .A(n82), .Z(n92) );
  GTECH_NOT U132 ( .A(n109), .Z(n107) );
  GTECH_AND2 U133 ( .A(n97), .B(n94), .Z(n109) );
  GTECH_NOT U134 ( .A(n12), .Z(n94) );
  GTECH_OR_NOT U135 ( .A(n97), .B(n134), .Z(N42) );
  GTECH_OR3 U136 ( .A(n83), .B(n84), .C(n132), .Z(n134) );
  GTECH_NOT U137 ( .A(n98), .Z(n132) );
  GTECH_OA21 U138 ( .A(n83), .B(n84), .C(n98), .Z(N41) );
  GTECH_OAI21 U139 ( .A(n95), .B(n96), .C(n135), .Z(N40) );
  GTECH_AOI21 U140 ( .A(n83), .B(n98), .C(n97), .Z(n135) );
  GTECH_AND_NOT U141 ( .A(n136), .B(n85), .Z(n97) );
  GTECH_AND_NOT U142 ( .A(n85), .B(n136), .Z(n98) );
  GTECH_NOT U143 ( .A(St), .Z(n96) );
  GTECH_NAND2 U144 ( .A(n136), .B(n85), .Z(n95) );
  GTECH_AND2 U145 ( .A(n83), .B(n84), .Z(n136) );
  GTECH_NOR3 U146 ( .A(n83), .B(n85), .C(n137), .Z(Done) );
  GTECH_NOT U147 ( .A(n84), .Z(n137) );
endmodule

