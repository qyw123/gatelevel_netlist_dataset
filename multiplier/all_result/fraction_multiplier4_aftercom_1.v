
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n18, n70, n71, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n12) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n13) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n89) );
  GTECH_FJK2S B_reg_0_ ( .J(n71), .K(n71), .TI(N52), .TE(N57), .CP(CLK), .CD(
        n70), .Q(Product[0]), .QN(n88) );
  GTECH_FJK2S A_reg_3_ ( .J(n71), .K(n71), .TI(N50), .TE(N63), .CP(CLK), .CD(
        n70), .Q(A_3_), .QN(n14) );
  GTECH_FJK2S A_reg_0_ ( .J(n71), .K(n71), .TI(N44), .TE(N57), .CP(CLK), .CD(
        n70), .Q(Product[4]), .QN(n87) );
  GTECH_FJK2S A_reg_1_ ( .J(n71), .K(n71), .TI(N46), .TE(N57), .CP(CLK), .CD(
        n70), .Q(Product[5]), .QN(n86) );
  GTECH_FJK2S A_reg_2_ ( .J(n71), .K(n71), .TI(N48), .TE(N57), .CP(CLK), .CD(
        n70), .Q(Product[6]), .QN(n15) );
  GTECH_FJK2S B_reg_3_ ( .J(n71), .K(n71), .TI(N58), .TE(N57), .CP(CLK), .CD(
        n70), .Q(Product[3]), .QN(n16) );
  GTECH_FJK2S B_reg_2_ ( .J(n71), .K(n71), .TI(N56), .TE(N57), .CP(CLK), .CD(
        n70), .Q(Product[2]), .QN(n17) );
  GTECH_FJK2S B_reg_1_ ( .J(n71), .K(n71), .TI(N54), .TE(N57), .CP(CLK), .CD(
        n70), .Q(Product[1]), .QN(n18) );
  GTECH_ZERO U84 ( .Z(n71) );
  GTECH_ONE U85 ( .Z(n70) );
  GTECH_ADD_AB U86 ( .A(n90), .B(N57), .COUT(N63) );
  GTECH_NOT U87 ( .A(n91), .Z(N58) );
  GTECH_AOI222 U88 ( .A(Mplier[3]), .B(n92), .C(n93), .D(n94), .E(n95), .F(n96), .Z(n91) );
  GTECH_OAI21 U89 ( .A(Mcand[0]), .B(n97), .C(n90), .Z(n95) );
  GTECH_NOR2 U90 ( .A(n97), .B(n88), .Z(n93) );
  GTECH_OAI21 U91 ( .A(n98), .B(n99), .C(n97), .Z(N57) );
  GTECH_OAI2N2 U92 ( .A(n16), .B(n97), .C(Mplier[2]), .D(n92), .Z(N56) );
  GTECH_OAI2N2 U93 ( .A(n17), .B(n97), .C(Mplier[1]), .D(n92), .Z(N54) );
  GTECH_OAI2N2 U94 ( .A(n18), .B(n97), .C(Mplier[0]), .D(n92), .Z(N52) );
  GTECH_MUX2 U95 ( .A(n100), .B(n101), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U96 ( .A(n102), .B(n103), .S(n14), .Z(N48) );
  GTECH_MUX2 U97 ( .A(n104), .B(n105), .S(Mcand[3]), .Z(n103) );
  GTECH_OR_NOT U98 ( .A(n106), .B(n90), .Z(n102) );
  GTECH_MUX2 U99 ( .A(n105), .B(n104), .S(Mcand[3]), .Z(n106) );
  GTECH_OAI2N2 U100 ( .A(n107), .B(n108), .C(n109), .D(n110), .Z(n104) );
  GTECH_NOT U101 ( .A(n111), .Z(n110) );
  GTECH_OAI2N2 U102 ( .A(n109), .B(n111), .C(n107), .D(n112), .Z(n105) );
  GTECH_OA21 U103 ( .A(n113), .B(n114), .C(n115), .Z(n107) );
  GTECH_AO21 U104 ( .A(n114), .B(n113), .C(n116), .Z(n115) );
  GTECH_NOT U105 ( .A(n15), .Z(n116) );
  GTECH_OAI21 U106 ( .A(n117), .B(n114), .C(n118), .Z(n109) );
  GTECH_AO21 U107 ( .A(n114), .B(n117), .C(n15), .Z(n118) );
  GTECH_MUX2 U108 ( .A(n119), .B(n120), .S(n15), .Z(N46) );
  GTECH_NOT U109 ( .A(n121), .Z(n120) );
  GTECH_MUX2 U110 ( .A(n122), .B(n123), .S(n114), .Z(n121) );
  GTECH_NOT U111 ( .A(Mcand[2]), .Z(n114) );
  GTECH_NAND2 U112 ( .A(n124), .B(n90), .Z(n119) );
  GTECH_MUX2 U113 ( .A(n122), .B(n123), .S(Mcand[2]), .Z(n124) );
  GTECH_OA22 U114 ( .A(n117), .B(n111), .C(n113), .D(n108), .Z(n123) );
  GTECH_NOT U115 ( .A(n125), .Z(n117) );
  GTECH_AOI2N2 U116 ( .A(n113), .B(n112), .C(n125), .D(n111), .Z(n122) );
  GTECH_ADD_ABC U117 ( .A(Mcand[1]), .B(n126), .C(n127), .COUT(n125) );
  GTECH_AND_NOT U118 ( .A(Mcand[0]), .B(n87), .Z(n126) );
  GTECH_ADD_ABC U119 ( .A(n128), .B(n129), .C(n127), .COUT(n113) );
  GTECH_NOT U120 ( .A(Mcand[1]), .Z(n129) );
  GTECH_OR_NOT U121 ( .A(n96), .B(Mcand[0]), .Z(n128) );
  GTECH_NOT U122 ( .A(n87), .Z(n96) );
  GTECH_MUX2 U123 ( .A(n130), .B(n131), .S(n127), .Z(N44) );
  GTECH_NOT U124 ( .A(n86), .Z(n127) );
  GTECH_OR_NOT U125 ( .A(n132), .B(n90), .Z(n131) );
  GTECH_OR_NOT U126 ( .A(n97), .B(n88), .Z(n90) );
  GTECH_NOR2 U127 ( .A(n100), .B(n101), .Z(n97) );
  GTECH_MUX2 U128 ( .A(n133), .B(n134), .S(Mcand[1]), .Z(n132) );
  GTECH_MUX2 U129 ( .A(n134), .B(n133), .S(Mcand[1]), .Z(n130) );
  GTECH_OA21 U130 ( .A(n112), .B(n135), .C(n136), .Z(n133) );
  GTECH_OAI21 U131 ( .A(n94), .B(n108), .C(n111), .Z(n136) );
  GTECH_NOT U132 ( .A(n112), .Z(n108) );
  GTECH_OAI2N2 U133 ( .A(n135), .B(n111), .C(n94), .D(n112), .Z(n134) );
  GTECH_NOR2 U134 ( .A(n137), .B(n88), .Z(n112) );
  GTECH_NOT U135 ( .A(n100), .Z(n137) );
  GTECH_ADD_AB U136 ( .A(Mcand[0]), .B(n87), .COUT(n94) );
  GTECH_OR_NOT U137 ( .A(n88), .B(n101), .Z(n111) );
  GTECH_OR_NOT U138 ( .A(n87), .B(Mcand[0]), .Z(n135) );
  GTECH_OR_NOT U139 ( .A(n100), .B(n138), .Z(N42) );
  GTECH_NAND3 U140 ( .A(n139), .B(n140), .C(n101), .Z(n138) );
  GTECH_OA21 U141 ( .A(n12), .B(n89), .C(n101), .Z(N41) );
  GTECH_OAI21 U142 ( .A(n98), .B(n99), .C(n141), .Z(N40) );
  GTECH_AOI21 U143 ( .A(n12), .B(n101), .C(n100), .Z(n141) );
  GTECH_NOR3 U144 ( .A(n139), .B(n13), .C(n140), .Z(n100) );
  GTECH_AOI21 U145 ( .A(n12), .B(n89), .C(n142), .Z(n101) );
  GTECH_NOT U146 ( .A(St), .Z(n99) );
  GTECH_NOT U147 ( .A(n92), .Z(n98) );
  GTECH_NOR3 U148 ( .A(n140), .B(n139), .C(n142), .Z(n92) );
  GTECH_NOT U149 ( .A(n13), .Z(n142) );
  GTECH_NOT U150 ( .A(n12), .Z(n139) );
  GTECH_NOR3 U151 ( .A(n12), .B(n13), .C(n140), .Z(Done) );
  GTECH_NOT U152 ( .A(n89), .Z(n140) );
endmodule

