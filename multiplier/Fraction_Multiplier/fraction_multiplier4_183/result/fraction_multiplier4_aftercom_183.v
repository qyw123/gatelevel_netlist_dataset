
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n70, n71, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n89) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n90) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n91) );
  GTECH_FJK2S B_reg_0_ ( .J(n71), .K(n71), .TI(N52), .TE(N57), .CP(CLK), .CD(
        n70), .Q(Product[0]), .QN(n12) );
  GTECH_FJK2S A_reg_3_ ( .J(n71), .K(n71), .TI(N50), .TE(N63), .CP(CLK), .CD(
        n70), .Q(A_3_), .QN(n13) );
  GTECH_FJK2S A_reg_0_ ( .J(n71), .K(n71), .TI(N44), .TE(N57), .CP(CLK), .CD(
        n70), .Q(Product[4]), .QN(n87) );
  GTECH_FJK2S A_reg_1_ ( .J(n71), .K(n71), .TI(N46), .TE(N57), .CP(CLK), .CD(
        n70), .Q(Product[5]), .QN(n88) );
  GTECH_FJK2S A_reg_2_ ( .J(n71), .K(n71), .TI(N48), .TE(N57), .CP(CLK), .CD(
        n70), .Q(Product[6]), .QN(n86) );
  GTECH_FJK2S B_reg_3_ ( .J(n71), .K(n71), .TI(N58), .TE(N57), .CP(CLK), .CD(
        n70), .Q(Product[3]), .QN(n14) );
  GTECH_FJK2S B_reg_2_ ( .J(n71), .K(n71), .TI(N56), .TE(N57), .CP(CLK), .CD(
        n70), .Q(Product[2]), .QN(n15) );
  GTECH_FJK2S B_reg_1_ ( .J(n71), .K(n71), .TI(N54), .TE(N57), .CP(CLK), .CD(
        n70), .Q(Product[1]), .QN(n16) );
  GTECH_ZERO U86 ( .Z(n71) );
  GTECH_ONE U87 ( .Z(n70) );
  GTECH_AND_NOT U88 ( .A(N57), .B(n92), .Z(N63) );
  GTECH_NOT U89 ( .A(n93), .Z(N58) );
  GTECH_AOI222 U90 ( .A(Mplier[3]), .B(n94), .C(n95), .D(n96), .E(n97), .F(n98), .Z(n93) );
  GTECH_OAI21 U91 ( .A(Mcand[0]), .B(n99), .C(n100), .Z(n97) );
  GTECH_NOR2 U92 ( .A(n99), .B(n12), .Z(n95) );
  GTECH_AO21 U93 ( .A(n94), .B(St), .C(n101), .Z(N57) );
  GTECH_OAI2N2 U94 ( .A(n14), .B(n99), .C(Mplier[2]), .D(n94), .Z(N56) );
  GTECH_OAI2N2 U95 ( .A(n15), .B(n99), .C(Mplier[1]), .D(n94), .Z(N54) );
  GTECH_OAI2N2 U96 ( .A(n16), .B(n99), .C(Mplier[0]), .D(n94), .Z(N52) );
  GTECH_MUX2 U97 ( .A(n102), .B(n103), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U98 ( .A(n104), .B(n105), .S(n13), .Z(N48) );
  GTECH_MUX2 U99 ( .A(n106), .B(n107), .S(n108), .Z(n105) );
  GTECH_NOT U100 ( .A(Mcand[3]), .Z(n108) );
  GTECH_OR_NOT U101 ( .A(n109), .B(n100), .Z(n104) );
  GTECH_NOT U102 ( .A(n92), .Z(n100) );
  GTECH_MUX2 U103 ( .A(n106), .B(n107), .S(Mcand[3]), .Z(n109) );
  GTECH_OAI2N2 U104 ( .A(n110), .B(n111), .C(n112), .D(n113), .Z(n107) );
  GTECH_OAI2N2 U105 ( .A(n112), .B(n114), .C(n111), .D(n115), .Z(n106) );
  GTECH_OAI21 U106 ( .A(Mcand[2]), .B(n116), .C(n117), .Z(n111) );
  GTECH_AO21 U107 ( .A(n116), .B(Mcand[2]), .C(n118), .Z(n117) );
  GTECH_NOT U108 ( .A(n86), .Z(n118) );
  GTECH_ADD_ABC U109 ( .A(n119), .B(Mcand[2]), .C(n86), .COUT(n112) );
  GTECH_AOI21 U110 ( .A(n120), .B(n121), .C(n122), .Z(n119) );
  GTECH_MUX2 U111 ( .A(n123), .B(n124), .S(n86), .Z(N46) );
  GTECH_NOT U112 ( .A(n125), .Z(n124) );
  GTECH_MUX2 U113 ( .A(n126), .B(n127), .S(Mcand[2]), .Z(n125) );
  GTECH_OR_NOT U114 ( .A(n92), .B(n128), .Z(n123) );
  GTECH_MUX2 U115 ( .A(n127), .B(n126), .S(Mcand[2]), .Z(n128) );
  GTECH_AOI2N2 U116 ( .A(n116), .B(n115), .C(n129), .D(n114), .Z(n126) );
  GTECH_AOI2N2 U117 ( .A(n129), .B(n113), .C(n116), .D(n110), .Z(n127) );
  GTECH_ADD_ABC U118 ( .A(Mcand[1]), .B(n130), .C(n131), .COUT(n116) );
  GTECH_AND_NOT U119 ( .A(Mcand[0]), .B(n87), .Z(n130) );
  GTECH_AO21 U120 ( .A(n121), .B(n120), .C(n122), .Z(n129) );
  GTECH_NOT U121 ( .A(n96), .Z(n121) );
  GTECH_OR_NOT U122 ( .A(n132), .B(n133), .Z(N44) );
  GTECH_MUX2 U123 ( .A(n134), .B(n135), .S(n131), .Z(n133) );
  GTECH_AOI21 U124 ( .A(Mcand[1]), .B(n136), .C(n92), .Z(n135) );
  GTECH_AND2 U125 ( .A(n12), .B(n101), .Z(n92) );
  GTECH_NOT U126 ( .A(n99), .Z(n101) );
  GTECH_NOR2 U127 ( .A(n103), .B(n102), .Z(n99) );
  GTECH_OR_NOT U128 ( .A(Mcand[1]), .B(n136), .Z(n134) );
  GTECH_OAI2N2 U129 ( .A(n137), .B(n110), .C(n96), .D(n113), .Z(n136) );
  GTECH_NOT U130 ( .A(n114), .Z(n113) );
  GTECH_AOI222 U131 ( .A(n120), .B(n138), .C(n139), .D(n114), .E(n96), .F(n110), .Z(n132) );
  GTECH_AND_NOT U132 ( .A(Mcand[0]), .B(n98), .Z(n96) );
  GTECH_NOT U133 ( .A(n87), .Z(n98) );
  GTECH_OR_NOT U134 ( .A(n12), .B(n102), .Z(n114) );
  GTECH_OR_NOT U135 ( .A(n110), .B(n137), .Z(n139) );
  GTECH_OR_NOT U136 ( .A(n87), .B(Mcand[0]), .Z(n137) );
  GTECH_NOT U137 ( .A(n115), .Z(n110) );
  GTECH_NOR2 U138 ( .A(n140), .B(n12), .Z(n115) );
  GTECH_NOT U139 ( .A(n122), .Z(n138) );
  GTECH_NOR2 U140 ( .A(n88), .B(Mcand[1]), .Z(n122) );
  GTECH_OR_NOT U141 ( .A(n131), .B(Mcand[1]), .Z(n120) );
  GTECH_NOT U142 ( .A(n88), .Z(n131) );
  GTECH_OR_NOT U143 ( .A(n102), .B(n141), .Z(N42) );
  GTECH_OR3 U144 ( .A(n89), .B(n91), .C(n140), .Z(n141) );
  GTECH_AOI21 U145 ( .A(n142), .B(n143), .C(n140), .Z(N41) );
  GTECH_AO21 U146 ( .A(n94), .B(St), .C(n144), .Z(N40) );
  GTECH_AO21 U147 ( .A(n103), .B(n89), .C(n102), .Z(n144) );
  GTECH_AND_NOT U148 ( .A(n145), .B(n90), .Z(n102) );
  GTECH_NOT U149 ( .A(n140), .Z(n103) );
  GTECH_OR_NOT U150 ( .A(n145), .B(n90), .Z(n140) );
  GTECH_AND2 U151 ( .A(n90), .B(n145), .Z(n94) );
  GTECH_AND_NOT U152 ( .A(n91), .B(n143), .Z(n145) );
  GTECH_NOT U153 ( .A(n89), .Z(n143) );
  GTECH_NOR3 U154 ( .A(n89), .B(n90), .C(n142), .Z(Done) );
  GTECH_NOT U155 ( .A(n91), .Z(n142) );
endmodule

