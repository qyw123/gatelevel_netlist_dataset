
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n18, n19, n74, n75, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n12) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n13) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n92) );
  GTECH_FJK2S B_reg_0_ ( .J(n75), .K(n75), .TI(N52), .TE(N57), .CP(CLK), .CD(
        n74), .Q(Product[0]), .QN(n14) );
  GTECH_FJK2S A_reg_3_ ( .J(n75), .K(n75), .TI(N50), .TE(N63), .CP(CLK), .CD(
        n74), .Q(A_3_), .QN(n15) );
  GTECH_FJK2S A_reg_0_ ( .J(n75), .K(n75), .TI(N44), .TE(N57), .CP(CLK), .CD(
        n74), .Q(Product[4]), .QN(n90) );
  GTECH_FJK2S A_reg_1_ ( .J(n75), .K(n75), .TI(N46), .TE(N57), .CP(CLK), .CD(
        n74), .Q(Product[5]), .QN(n91) );
  GTECH_FJK2S A_reg_2_ ( .J(n75), .K(n75), .TI(N48), .TE(N57), .CP(CLK), .CD(
        n74), .Q(Product[6]), .QN(n16) );
  GTECH_FJK2S B_reg_3_ ( .J(n75), .K(n75), .TI(N58), .TE(N57), .CP(CLK), .CD(
        n74), .Q(Product[3]), .QN(n17) );
  GTECH_FJK2S B_reg_2_ ( .J(n75), .K(n75), .TI(N56), .TE(N57), .CP(CLK), .CD(
        n74), .Q(Product[2]), .QN(n18) );
  GTECH_FJK2S B_reg_1_ ( .J(n75), .K(n75), .TI(N54), .TE(N57), .CP(CLK), .CD(
        n74), .Q(Product[1]), .QN(n19) );
  GTECH_ZERO U87 ( .Z(n75) );
  GTECH_ONE U88 ( .Z(n74) );
  GTECH_AND2 U89 ( .A(n93), .B(N57), .Z(N63) );
  GTECH_AO21 U90 ( .A(Mplier[3]), .B(n94), .C(n95), .Z(N58) );
  GTECH_MUX2 U91 ( .A(n96), .B(n97), .S(n90), .Z(n95) );
  GTECH_NOR3 U92 ( .A(n98), .B(n14), .C(n99), .Z(n97) );
  GTECH_OAI21 U93 ( .A(Mcand[0]), .B(n98), .C(n93), .Z(n96) );
  GTECH_OAI21 U94 ( .A(n100), .B(n101), .C(n98), .Z(N57) );
  GTECH_OAI2N2 U95 ( .A(n17), .B(n98), .C(Mplier[2]), .D(n94), .Z(N56) );
  GTECH_OAI2N2 U96 ( .A(n18), .B(n98), .C(Mplier[1]), .D(n94), .Z(N54) );
  GTECH_OAI2N2 U97 ( .A(n19), .B(n98), .C(Mplier[0]), .D(n94), .Z(N52) );
  GTECH_MUX2 U98 ( .A(n102), .B(n103), .S(n104), .Z(N50) );
  GTECH_MUX2 U99 ( .A(n105), .B(n106), .S(n15), .Z(N48) );
  GTECH_MUX2 U100 ( .A(n107), .B(n108), .S(Mcand[3]), .Z(n106) );
  GTECH_OR_NOT U101 ( .A(n109), .B(n93), .Z(n105) );
  GTECH_MUX2 U102 ( .A(n107), .B(n108), .S(n104), .Z(n109) );
  GTECH_NOT U103 ( .A(Mcand[3]), .Z(n104) );
  GTECH_AO22 U104 ( .A(n110), .B(n111), .C(n112), .D(n113), .Z(n108) );
  GTECH_OAI22 U105 ( .A(n110), .B(n114), .C(n112), .D(n115), .Z(n107) );
  GTECH_OA21 U106 ( .A(n116), .B(n117), .C(n118), .Z(n112) );
  GTECH_AO21 U107 ( .A(n117), .B(n116), .C(n119), .Z(n118) );
  GTECH_NOT U108 ( .A(n16), .Z(n119) );
  GTECH_OA21 U109 ( .A(n120), .B(n117), .C(n121), .Z(n110) );
  GTECH_AO21 U110 ( .A(n117), .B(n120), .C(n16), .Z(n121) );
  GTECH_MUX2 U111 ( .A(n122), .B(n123), .S(n16), .Z(N46) );
  GTECH_NOT U112 ( .A(n124), .Z(n123) );
  GTECH_MUX2 U113 ( .A(n125), .B(n126), .S(Mcand[2]), .Z(n124) );
  GTECH_NAND2 U114 ( .A(n127), .B(n93), .Z(n122) );
  GTECH_MUX2 U115 ( .A(n125), .B(n126), .S(n117), .Z(n127) );
  GTECH_NOT U116 ( .A(Mcand[2]), .Z(n117) );
  GTECH_AOI22 U117 ( .A(n120), .B(n111), .C(n116), .D(n113), .Z(n126) );
  GTECH_OA22 U118 ( .A(n120), .B(n114), .C(n116), .D(n115), .Z(n125) );
  GTECH_OA22 U119 ( .A(n128), .B(n129), .C(n130), .D(n131), .Z(n116) );
  GTECH_OAI21 U120 ( .A(Mcand[1]), .B(n91), .C(Mcand[0]), .Z(n131) );
  GTECH_OA21 U121 ( .A(n91), .B(n128), .C(n132), .Z(n120) );
  GTECH_OAI21 U122 ( .A(Mcand[1]), .B(n129), .C(n133), .Z(n132) );
  GTECH_NOT U123 ( .A(n91), .Z(n129) );
  GTECH_MUX2 U124 ( .A(n134), .B(n135), .S(n91), .Z(N44) );
  GTECH_MUX2 U125 ( .A(n136), .B(n137), .S(n128), .Z(n135) );
  GTECH_NOT U126 ( .A(Mcand[1]), .Z(n128) );
  GTECH_NOR2 U127 ( .A(n99), .B(n138), .Z(n137) );
  GTECH_OR_NOT U128 ( .A(n139), .B(n93), .Z(n134) );
  GTECH_OR_NOT U129 ( .A(n98), .B(n14), .Z(n93) );
  GTECH_AND_NOT U130 ( .A(n140), .B(n102), .Z(n98) );
  GTECH_MUX2 U131 ( .A(n136), .B(n141), .S(Mcand[1]), .Z(n139) );
  GTECH_AND_NOT U132 ( .A(Mcand[0]), .B(n138), .Z(n141) );
  GTECH_MUX2 U133 ( .A(n114), .B(n115), .S(n90), .Z(n138) );
  GTECH_NOT U134 ( .A(n113), .Z(n115) );
  GTECH_OAI21 U135 ( .A(n133), .B(n114), .C(n142), .Z(n136) );
  GTECH_OAI21 U136 ( .A(n99), .B(n130), .C(n113), .Z(n142) );
  GTECH_AND_NOT U137 ( .A(n103), .B(n14), .Z(n113) );
  GTECH_NOT U138 ( .A(n111), .Z(n114) );
  GTECH_AND_NOT U139 ( .A(n102), .B(n14), .Z(n111) );
  GTECH_AND_NOT U140 ( .A(n130), .B(n99), .Z(n133) );
  GTECH_NOT U141 ( .A(Mcand[0]), .Z(n99) );
  GTECH_NOT U142 ( .A(n90), .Z(n130) );
  GTECH_NAND2 U143 ( .A(n140), .B(n143), .Z(N42) );
  GTECH_NAND3 U144 ( .A(n144), .B(n145), .C(n102), .Z(n143) );
  GTECH_NOT U145 ( .A(n103), .Z(n140) );
  GTECH_OA21 U146 ( .A(n12), .B(n92), .C(n102), .Z(N41) );
  GTECH_OAI21 U147 ( .A(n100), .B(n101), .C(n146), .Z(N40) );
  GTECH_AOI21 U148 ( .A(n12), .B(n102), .C(n103), .Z(n146) );
  GTECH_AND3 U149 ( .A(n12), .B(n147), .C(n92), .Z(n103) );
  GTECH_OA21 U150 ( .A(n144), .B(n145), .C(n13), .Z(n102) );
  GTECH_NOT U151 ( .A(n92), .Z(n145) );
  GTECH_NOT U152 ( .A(St), .Z(n101) );
  GTECH_NOT U153 ( .A(n94), .Z(n100) );
  GTECH_AND3 U154 ( .A(n92), .B(n12), .C(n13), .Z(n94) );
  GTECH_AND3 U155 ( .A(n144), .B(n147), .C(n92), .Z(Done) );
  GTECH_NOT U156 ( .A(n13), .Z(n147) );
  GTECH_NOT U157 ( .A(n12), .Z(n144) );
endmodule

