
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63, n12,
         n13, n15, n16, n17, n71, n72, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n12) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n13) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n92) );
  GTECH_FJK2S B_reg_0_ ( .J(n72), .K(n72), .TI(N52), .TE(N57), .CP(CLK), .CD(
        n71), .Q(Product[0]), .QN(n91) );
  GTECH_FJK2S A_reg_3_ ( .J(n72), .K(n72), .TI(N50), .TE(N63), .CP(CLK), .CD(
        n71), .QN(n87) );
  GTECH_FJK2S A_reg_0_ ( .J(n72), .K(n72), .TI(N44), .TE(N57), .CP(CLK), .CD(
        n71), .Q(Product[4]), .QN(n90) );
  GTECH_FJK2S A_reg_1_ ( .J(n72), .K(n72), .TI(N46), .TE(N57), .CP(CLK), .CD(
        n71), .Q(Product[5]), .QN(n89) );
  GTECH_FJK2S A_reg_2_ ( .J(n72), .K(n72), .TI(N48), .TE(N57), .CP(CLK), .CD(
        n71), .Q(Product[6]), .QN(n88) );
  GTECH_FJK2S B_reg_3_ ( .J(n72), .K(n72), .TI(N58), .TE(N57), .CP(CLK), .CD(
        n71), .Q(Product[3]), .QN(n15) );
  GTECH_FJK2S B_reg_2_ ( .J(n72), .K(n72), .TI(N56), .TE(N57), .CP(CLK), .CD(
        n71), .Q(Product[2]), .QN(n16) );
  GTECH_FJK2S B_reg_1_ ( .J(n72), .K(n72), .TI(N54), .TE(N57), .CP(CLK), .CD(
        n71), .Q(Product[1]), .QN(n17) );
  GTECH_ZERO U86 ( .Z(n72) );
  GTECH_ONE U87 ( .Z(n71) );
  GTECH_AND2 U88 ( .A(n93), .B(N57), .Z(N63) );
  GTECH_NOT U89 ( .A(n94), .Z(N58) );
  GTECH_AOI222 U90 ( .A(Mplier[3]), .B(n95), .C(n96), .D(n97), .E(n98), .F(n99), .Z(n94) );
  GTECH_OAI21 U91 ( .A(Mcand[0]), .B(n100), .C(n93), .Z(n98) );
  GTECH_NOR2 U92 ( .A(n100), .B(n91), .Z(n96) );
  GTECH_OAI21 U93 ( .A(n101), .B(n102), .C(n100), .Z(N57) );
  GTECH_OAI2N2 U94 ( .A(n15), .B(n100), .C(Mplier[2]), .D(n95), .Z(N56) );
  GTECH_OAI2N2 U95 ( .A(n16), .B(n100), .C(Mplier[1]), .D(n95), .Z(N54) );
  GTECH_OAI2N2 U96 ( .A(n17), .B(n100), .C(Mplier[0]), .D(n95), .Z(N52) );
  GTECH_MUX2 U97 ( .A(n103), .B(n104), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U98 ( .A(n105), .B(n106), .S(n87), .Z(N48) );
  GTECH_MUX2 U99 ( .A(n107), .B(n108), .S(n109), .Z(n106) );
  GTECH_NOT U100 ( .A(Mcand[3]), .Z(n109) );
  GTECH_OR_NOT U101 ( .A(n110), .B(n93), .Z(n105) );
  GTECH_MUX2 U102 ( .A(n107), .B(n108), .S(Mcand[3]), .Z(n110) );
  GTECH_OAI22 U103 ( .A(n111), .B(n112), .C(n113), .D(n114), .Z(n108) );
  GTECH_AO22 U104 ( .A(n111), .B(n115), .C(n113), .D(n116), .Z(n107) );
  GTECH_OA21 U105 ( .A(n117), .B(n118), .C(n119), .Z(n113) );
  GTECH_OAI21 U106 ( .A(Mcand[2]), .B(n120), .C(n88), .Z(n119) );
  GTECH_OA21 U107 ( .A(n121), .B(n118), .C(n122), .Z(n111) );
  GTECH_AO21 U108 ( .A(n118), .B(n121), .C(n88), .Z(n122) );
  GTECH_MUX2 U109 ( .A(n123), .B(n124), .S(n88), .Z(N46) );
  GTECH_NOT U110 ( .A(n125), .Z(n124) );
  GTECH_MUX2 U111 ( .A(n126), .B(n127), .S(n118), .Z(n125) );
  GTECH_NOT U112 ( .A(Mcand[2]), .Z(n118) );
  GTECH_NAND2 U113 ( .A(n128), .B(n93), .Z(n123) );
  GTECH_MUX2 U114 ( .A(n126), .B(n127), .S(Mcand[2]), .Z(n128) );
  GTECH_OA22 U115 ( .A(n121), .B(n112), .C(n117), .D(n114), .Z(n127) );
  GTECH_AOI22 U116 ( .A(n121), .B(n115), .C(n117), .D(n116), .Z(n126) );
  GTECH_NOT U117 ( .A(n120), .Z(n117) );
  GTECH_ADD_ABC U118 ( .A(n129), .B(Mcand[1]), .C(n89), .COUT(n120) );
  GTECH_AND_NOT U119 ( .A(Mcand[0]), .B(n99), .Z(n129) );
  GTECH_NOT U120 ( .A(n112), .Z(n115) );
  GTECH_OA21 U121 ( .A(n89), .B(n130), .C(n131), .Z(n121) );
  GTECH_OR3 U122 ( .A(n132), .B(n90), .C(n133), .Z(n131) );
  GTECH_AO21 U123 ( .A(n134), .B(n132), .C(n135), .Z(N44) );
  GTECH_NOT U124 ( .A(n136), .Z(n135) );
  GTECH_MUX2 U125 ( .A(n137), .B(n138), .S(n89), .Z(n136) );
  GTECH_OR_NOT U126 ( .A(n130), .B(n139), .Z(n138) );
  GTECH_AND_NOT U127 ( .A(n93), .B(n140), .Z(n137) );
  GTECH_MUX2 U128 ( .A(n134), .B(n139), .S(n130), .Z(n140) );
  GTECH_OAI21 U129 ( .A(n97), .B(n114), .C(n141), .Z(n139) );
  GTECH_AO21 U130 ( .A(n99), .B(Mcand[0]), .C(n112), .Z(n141) );
  GTECH_NOT U131 ( .A(n90), .Z(n99) );
  GTECH_NOT U132 ( .A(n116), .Z(n114) );
  GTECH_OR_NOT U133 ( .A(n100), .B(n91), .Z(n93) );
  GTECH_NOR2 U134 ( .A(n103), .B(n104), .Z(n100) );
  GTECH_AND2 U135 ( .A(n89), .B(n130), .Z(n132) );
  GTECH_NOT U136 ( .A(Mcand[1]), .Z(n130) );
  GTECH_AO21 U137 ( .A(n97), .B(n116), .C(n142), .Z(n134) );
  GTECH_NOR3 U138 ( .A(n133), .B(n90), .C(n112), .Z(n142) );
  GTECH_OR_NOT U139 ( .A(n91), .B(n104), .Z(n112) );
  GTECH_NOR2 U140 ( .A(n143), .B(n91), .Z(n116) );
  GTECH_NOT U141 ( .A(n103), .Z(n143) );
  GTECH_AND_NOT U142 ( .A(n90), .B(n133), .Z(n97) );
  GTECH_NOT U143 ( .A(Mcand[0]), .Z(n133) );
  GTECH_OR_NOT U144 ( .A(n103), .B(n144), .Z(N42) );
  GTECH_NAND3 U145 ( .A(n145), .B(n146), .C(n104), .Z(n144) );
  GTECH_OA21 U146 ( .A(n12), .B(n92), .C(n104), .Z(N41) );
  GTECH_OAI21 U147 ( .A(n101), .B(n102), .C(n147), .Z(N40) );
  GTECH_AOI21 U148 ( .A(n12), .B(n104), .C(n103), .Z(n147) );
  GTECH_NOR3 U149 ( .A(n145), .B(n13), .C(n146), .Z(n103) );
  GTECH_AOI21 U150 ( .A(n12), .B(n92), .C(n148), .Z(n104) );
  GTECH_NOT U151 ( .A(St), .Z(n102) );
  GTECH_NOT U152 ( .A(n95), .Z(n101) );
  GTECH_NOR3 U153 ( .A(n146), .B(n145), .C(n148), .Z(n95) );
  GTECH_NOT U154 ( .A(n13), .Z(n148) );
  GTECH_NOT U155 ( .A(n12), .Z(n145) );
  GTECH_NOR3 U156 ( .A(n12), .B(n13), .C(n146), .Z(Done) );
  GTECH_NOT U157 ( .A(n92), .Z(n146) );
endmodule

