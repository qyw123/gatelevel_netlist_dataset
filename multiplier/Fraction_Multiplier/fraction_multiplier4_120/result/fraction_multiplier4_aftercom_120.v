
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n18, n71, n70, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145;
  wire   [2:0] State;

  GTECH_FD2 State_reg_0_ ( .D(N40), .CP(CLK), .CD(n70), .Q(State[0]), .QN(n12)
         );
  GTECH_FD2 State_reg_2_ ( .D(N42), .CP(CLK), .CD(n70), .Q(State[2]), .QN(n13)
         );
  GTECH_FD2 State_reg_1_ ( .D(N41), .CP(CLK), .CD(n70), .Q(State[1]), .QN(n92)
         );
  GTECH_FJK2S B_reg_0_ ( .J(n71), .K(n71), .TI(N52), .TE(N57), .CP(CLK), .CD(
        n70), .Q(Product[0]), .QN(n91) );
  GTECH_FJK2S A_reg_3_ ( .J(n71), .K(n71), .TI(N50), .TE(N63), .CP(CLK), .CD(
        n70), .Q(A_3_), .QN(n14) );
  GTECH_FJK2S A_reg_0_ ( .J(n71), .K(n71), .TI(N44), .TE(N57), .CP(CLK), .CD(
        n70), .Q(Product[4]), .QN(n90) );
  GTECH_FJK2S A_reg_1_ ( .J(n71), .K(n71), .TI(N46), .TE(N57), .CP(CLK), .CD(
        n70), .Q(Product[5]), .QN(n89) );
  GTECH_FJK2S A_reg_2_ ( .J(n71), .K(n71), .TI(N48), .TE(N57), .CP(CLK), .CD(
        n70), .Q(Product[6]), .QN(n15) );
  GTECH_FJK2S B_reg_3_ ( .J(n71), .K(n71), .TI(N58), .TE(N57), .CP(CLK), .CD(
        n70), .Q(Product[3]), .QN(n16) );
  GTECH_FJK2S B_reg_2_ ( .J(n71), .K(n71), .TI(N56), .TE(N57), .CP(CLK), .CD(
        n70), .Q(Product[2]), .QN(n17) );
  GTECH_FJK2S B_reg_1_ ( .J(n71), .K(n71), .TI(N54), .TE(N57), .CP(CLK), .CD(
        n70), .Q(Product[1]), .QN(n18) );
  GTECH_ONE U87 ( .Z(n70) );
  GTECH_ZERO U88 ( .Z(n71) );
  GTECH_AND2 U89 ( .A(n93), .B(N57), .Z(N63) );
  GTECH_NOT U90 ( .A(n94), .Z(N58) );
  GTECH_AOI222 U91 ( .A(Mplier[3]), .B(n95), .C(n96), .D(n97), .E(n98), .F(n99), .Z(n94) );
  GTECH_OAI21 U92 ( .A(Mcand[0]), .B(n100), .C(n93), .Z(n98) );
  GTECH_NOR2 U93 ( .A(n100), .B(n91), .Z(n96) );
  GTECH_OAI21 U94 ( .A(n101), .B(n102), .C(n100), .Z(N57) );
  GTECH_OAI2N2 U95 ( .A(n16), .B(n100), .C(Mplier[2]), .D(n95), .Z(N56) );
  GTECH_OAI2N2 U96 ( .A(n17), .B(n100), .C(Mplier[1]), .D(n95), .Z(N54) );
  GTECH_OAI2N2 U97 ( .A(n18), .B(n100), .C(Mplier[0]), .D(n95), .Z(N52) );
  GTECH_MUX2 U98 ( .A(n103), .B(n104), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U99 ( .A(n105), .B(n106), .S(n14), .Z(N48) );
  GTECH_MUX2 U100 ( .A(n107), .B(n108), .S(Mcand[3]), .Z(n106) );
  GTECH_OR_NOT U101 ( .A(n109), .B(n93), .Z(n105) );
  GTECH_MUX2 U102 ( .A(n108), .B(n107), .S(Mcand[3]), .Z(n109) );
  GTECH_OAI2N2 U103 ( .A(n110), .B(n111), .C(n112), .D(n113), .Z(n107) );
  GTECH_NOT U104 ( .A(n114), .Z(n113) );
  GTECH_OAI2N2 U105 ( .A(n112), .B(n114), .C(n110), .D(n115), .Z(n108) );
  GTECH_OA21 U106 ( .A(n116), .B(n117), .C(n118), .Z(n110) );
  GTECH_AO21 U107 ( .A(n117), .B(n116), .C(n119), .Z(n118) );
  GTECH_NOT U108 ( .A(n15), .Z(n119) );
  GTECH_OAI21 U109 ( .A(n120), .B(n117), .C(n121), .Z(n112) );
  GTECH_AO21 U110 ( .A(n117), .B(n120), .C(n15), .Z(n121) );
  GTECH_MUX2 U111 ( .A(n122), .B(n123), .S(n15), .Z(N46) );
  GTECH_NOT U112 ( .A(n124), .Z(n123) );
  GTECH_MUX2 U113 ( .A(n125), .B(n126), .S(n117), .Z(n124) );
  GTECH_NOT U114 ( .A(Mcand[2]), .Z(n117) );
  GTECH_NAND2 U115 ( .A(n127), .B(n93), .Z(n122) );
  GTECH_MUX2 U116 ( .A(n125), .B(n126), .S(Mcand[2]), .Z(n127) );
  GTECH_OA22 U117 ( .A(n120), .B(n114), .C(n116), .D(n111), .Z(n126) );
  GTECH_NOT U118 ( .A(n128), .Z(n120) );
  GTECH_AOI2N2 U119 ( .A(n116), .B(n115), .C(n128), .D(n114), .Z(n125) );
  GTECH_ADD_ABC U120 ( .A(Mcand[1]), .B(n129), .C(n130), .COUT(n128) );
  GTECH_AND_NOT U121 ( .A(Mcand[0]), .B(n90), .Z(n129) );
  GTECH_ADD_ABC U122 ( .A(n131), .B(n132), .C(n130), .COUT(n116) );
  GTECH_NOT U123 ( .A(Mcand[1]), .Z(n132) );
  GTECH_OR_NOT U124 ( .A(n99), .B(Mcand[0]), .Z(n131) );
  GTECH_NOT U125 ( .A(n90), .Z(n99) );
  GTECH_MUX2 U126 ( .A(n133), .B(n134), .S(n130), .Z(N44) );
  GTECH_NOT U127 ( .A(n89), .Z(n130) );
  GTECH_OR_NOT U128 ( .A(n135), .B(n93), .Z(n134) );
  GTECH_OR_NOT U129 ( .A(n100), .B(n91), .Z(n93) );
  GTECH_NOR2 U130 ( .A(n103), .B(n104), .Z(n100) );
  GTECH_MUX2 U131 ( .A(n136), .B(n137), .S(Mcand[1]), .Z(n135) );
  GTECH_MUX2 U132 ( .A(n137), .B(n136), .S(Mcand[1]), .Z(n133) );
  GTECH_OA21 U133 ( .A(n115), .B(n138), .C(n139), .Z(n136) );
  GTECH_OAI21 U134 ( .A(n97), .B(n111), .C(n114), .Z(n139) );
  GTECH_NOT U135 ( .A(n115), .Z(n111) );
  GTECH_OAI2N2 U136 ( .A(n138), .B(n114), .C(n97), .D(n115), .Z(n137) );
  GTECH_NOR2 U137 ( .A(n140), .B(n91), .Z(n115) );
  GTECH_NOT U138 ( .A(n103), .Z(n140) );
  GTECH_AND2 U139 ( .A(Mcand[0]), .B(n90), .Z(n97) );
  GTECH_OR_NOT U140 ( .A(n91), .B(n104), .Z(n114) );
  GTECH_OR_NOT U141 ( .A(n90), .B(Mcand[0]), .Z(n138) );
  GTECH_OR_NOT U142 ( .A(n103), .B(n141), .Z(N42) );
  GTECH_NAND3 U143 ( .A(n142), .B(n143), .C(n104), .Z(n141) );
  GTECH_OA21 U144 ( .A(n12), .B(n92), .C(n104), .Z(N41) );
  GTECH_OAI21 U145 ( .A(n101), .B(n102), .C(n144), .Z(N40) );
  GTECH_AOI21 U146 ( .A(n12), .B(n104), .C(n103), .Z(n144) );
  GTECH_NOR3 U147 ( .A(n142), .B(n13), .C(n143), .Z(n103) );
  GTECH_AOI21 U148 ( .A(n12), .B(n92), .C(n145), .Z(n104) );
  GTECH_NOT U149 ( .A(St), .Z(n102) );
  GTECH_NOT U150 ( .A(n95), .Z(n101) );
  GTECH_NOR3 U151 ( .A(n143), .B(n142), .C(n145), .Z(n95) );
  GTECH_NOT U152 ( .A(n13), .Z(n145) );
  GTECH_NOT U153 ( .A(n12), .Z(n142) );
  GTECH_NOR3 U154 ( .A(n12), .B(n13), .C(n143), .Z(Done) );
  GTECH_NOT U155 ( .A(n92), .Z(n143) );
endmodule

