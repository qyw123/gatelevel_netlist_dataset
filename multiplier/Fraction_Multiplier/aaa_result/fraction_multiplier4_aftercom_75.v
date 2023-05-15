
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n18, n74, n75, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n12) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n13) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n93) );
  GTECH_FJK2S B_reg_0_ ( .J(n75), .K(n75), .TI(N52), .TE(N57), .CP(CLK), .CD(
        n74), .Q(Product[0]), .QN(n92) );
  GTECH_FJK2S A_reg_3_ ( .J(n75), .K(n75), .TI(N50), .TE(N63), .CP(CLK), .CD(
        n74), .Q(A_3_), .QN(n14) );
  GTECH_FJK2S A_reg_0_ ( .J(n75), .K(n75), .TI(N44), .TE(N57), .CP(CLK), .CD(
        n74), .Q(Product[4]), .QN(n91) );
  GTECH_FJK2S A_reg_1_ ( .J(n75), .K(n75), .TI(N46), .TE(N57), .CP(CLK), .CD(
        n74), .Q(Product[5]), .QN(n90) );
  GTECH_FJK2S A_reg_2_ ( .J(n75), .K(n75), .TI(N48), .TE(N57), .CP(CLK), .CD(
        n74), .Q(Product[6]), .QN(n15) );
  GTECH_FJK2S B_reg_3_ ( .J(n75), .K(n75), .TI(N58), .TE(N57), .CP(CLK), .CD(
        n74), .Q(Product[3]), .QN(n16) );
  GTECH_FJK2S B_reg_2_ ( .J(n75), .K(n75), .TI(N56), .TE(N57), .CP(CLK), .CD(
        n74), .Q(Product[2]), .QN(n17) );
  GTECH_FJK2S B_reg_1_ ( .J(n75), .K(n75), .TI(N54), .TE(N57), .CP(CLK), .CD(
        n74), .Q(Product[1]), .QN(n18) );
  GTECH_ZERO U88 ( .Z(n75) );
  GTECH_ONE U89 ( .Z(n74) );
  GTECH_AND2 U90 ( .A(N57), .B(n94), .Z(N63) );
  GTECH_NOT U91 ( .A(n95), .Z(N58) );
  GTECH_AOI222 U92 ( .A(Mplier[3]), .B(n96), .C(n97), .D(n98), .E(n99), .F(
        n100), .Z(n95) );
  GTECH_OAI21 U93 ( .A(Mcand[0]), .B(n101), .C(n94), .Z(n99) );
  GTECH_NOR2 U94 ( .A(n101), .B(n92), .Z(n97) );
  GTECH_OAI21 U95 ( .A(n102), .B(n103), .C(n101), .Z(N57) );
  GTECH_OAI2N2 U96 ( .A(n16), .B(n101), .C(Mplier[2]), .D(n96), .Z(N56) );
  GTECH_OAI2N2 U97 ( .A(n17), .B(n101), .C(Mplier[1]), .D(n96), .Z(N54) );
  GTECH_OAI2N2 U98 ( .A(n18), .B(n101), .C(Mplier[0]), .D(n96), .Z(N52) );
  GTECH_NOT U99 ( .A(n102), .Z(n96) );
  GTECH_MUX2 U100 ( .A(n104), .B(n105), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U101 ( .A(n106), .B(n107), .S(n14), .Z(N48) );
  GTECH_MUX2 U102 ( .A(n108), .B(n109), .S(n110), .Z(n107) );
  GTECH_NOT U103 ( .A(Mcand[3]), .Z(n110) );
  GTECH_OR_NOT U104 ( .A(n111), .B(n94), .Z(n106) );
  GTECH_MUX2 U105 ( .A(n108), .B(n109), .S(Mcand[3]), .Z(n111) );
  GTECH_OAI22 U106 ( .A(n112), .B(n113), .C(n114), .D(n115), .Z(n109) );
  GTECH_AO22 U107 ( .A(n116), .B(n112), .C(n117), .D(n114), .Z(n108) );
  GTECH_OA21 U108 ( .A(n118), .B(n119), .C(n120), .Z(n114) );
  GTECH_OAI21 U109 ( .A(Mcand[2]), .B(n121), .C(n15), .Z(n120) );
  GTECH_AOI21 U110 ( .A(n122), .B(Mcand[2]), .C(n123), .Z(n112) );
  GTECH_OA21 U111 ( .A(Mcand[2]), .B(n122), .C(n124), .Z(n123) );
  GTECH_NOT U112 ( .A(n15), .Z(n124) );
  GTECH_MUX2 U113 ( .A(n125), .B(n126), .S(n15), .Z(N46) );
  GTECH_NOT U114 ( .A(n127), .Z(n126) );
  GTECH_MUX2 U115 ( .A(n128), .B(n129), .S(n119), .Z(n127) );
  GTECH_NOT U116 ( .A(Mcand[2]), .Z(n119) );
  GTECH_NAND2 U117 ( .A(n130), .B(n94), .Z(n125) );
  GTECH_MUX2 U118 ( .A(n128), .B(n129), .S(Mcand[2]), .Z(n130) );
  GTECH_AOI2N2 U119 ( .A(n122), .B(n116), .C(n118), .D(n115), .Z(n129) );
  GTECH_OA22 U120 ( .A(n121), .B(n115), .C(n122), .D(n113), .Z(n128) );
  GTECH_ADD_ABC U121 ( .A(Mcand[1]), .B(n131), .C(n132), .COUT(n122) );
  GTECH_AND_NOT U122 ( .A(Mcand[0]), .B(n91), .Z(n131) );
  GTECH_NOT U123 ( .A(n118), .Z(n121) );
  GTECH_ADD_ABC U124 ( .A(n133), .B(n134), .C(n132), .COUT(n118) );
  GTECH_OR_NOT U125 ( .A(n100), .B(Mcand[0]), .Z(n133) );
  GTECH_NOT U126 ( .A(n91), .Z(n100) );
  GTECH_MUX2 U127 ( .A(n135), .B(n136), .S(n132), .Z(N44) );
  GTECH_NOT U128 ( .A(n90), .Z(n132) );
  GTECH_OR_NOT U129 ( .A(n137), .B(n94), .Z(n136) );
  GTECH_OR_NOT U130 ( .A(n101), .B(n92), .Z(n94) );
  GTECH_NOR2 U131 ( .A(n104), .B(n105), .Z(n101) );
  GTECH_MUX2 U132 ( .A(n138), .B(n139), .S(n134), .Z(n137) );
  GTECH_NOT U133 ( .A(Mcand[1]), .Z(n134) );
  GTECH_MUX2 U134 ( .A(n138), .B(n139), .S(Mcand[1]), .Z(n135) );
  GTECH_OAI2N2 U135 ( .A(n98), .B(n115), .C(n140), .D(n116), .Z(n139) );
  GTECH_NOT U136 ( .A(n113), .Z(n116) );
  GTECH_NOT U137 ( .A(n117), .Z(n115) );
  GTECH_OAI2N2 U138 ( .A(n140), .B(n113), .C(n98), .D(n117), .Z(n138) );
  GTECH_NOR2 U139 ( .A(n141), .B(n92), .Z(n117) );
  GTECH_NOT U140 ( .A(n104), .Z(n141) );
  GTECH_AND2 U141 ( .A(Mcand[0]), .B(n91), .Z(n98) );
  GTECH_OR_NOT U142 ( .A(n92), .B(n105), .Z(n113) );
  GTECH_OR_NOT U143 ( .A(n91), .B(Mcand[0]), .Z(n140) );
  GTECH_OR_NOT U144 ( .A(n104), .B(n142), .Z(N42) );
  GTECH_NAND3 U145 ( .A(n143), .B(n144), .C(n105), .Z(n142) );
  GTECH_OA21 U146 ( .A(n12), .B(n93), .C(n105), .Z(N41) );
  GTECH_OAI21 U147 ( .A(n102), .B(n103), .C(n145), .Z(N40) );
  GTECH_AOI21 U148 ( .A(n12), .B(n105), .C(n104), .Z(n145) );
  GTECH_NOR3 U149 ( .A(n143), .B(n13), .C(n144), .Z(n104) );
  GTECH_OA21 U150 ( .A(n143), .B(n144), .C(n13), .Z(n105) );
  GTECH_NOT U151 ( .A(n12), .Z(n143) );
  GTECH_NOT U152 ( .A(St), .Z(n103) );
  GTECH_NAND3 U153 ( .A(n93), .B(n12), .C(n13), .Z(n102) );
  GTECH_NOR3 U154 ( .A(n12), .B(n13), .C(n144), .Z(Done) );
  GTECH_NOT U155 ( .A(n93), .Z(n144) );
endmodule

