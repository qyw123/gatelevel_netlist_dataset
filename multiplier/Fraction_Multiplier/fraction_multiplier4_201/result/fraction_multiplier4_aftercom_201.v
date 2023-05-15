
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n14, n15, n16, n17, n18, n19, n70, n71, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n89) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n12) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .QN(n88) );
  GTECH_FJK2S B_reg_0_ ( .J(n71), .K(n71), .TI(N52), .TE(N57), .CP(CLK), .CD(
        n70), .Q(Product[0]), .QN(n14) );
  GTECH_FJK2S A_reg_3_ ( .J(n71), .K(n71), .TI(N50), .TE(N63), .CP(CLK), .CD(
        n70), .Q(A_3_), .QN(n15) );
  GTECH_FJK2S A_reg_0_ ( .J(n71), .K(n71), .TI(N44), .TE(N57), .CP(CLK), .CD(
        n70), .Q(Product[4]), .QN(n87) );
  GTECH_FJK2S A_reg_1_ ( .J(n71), .K(n71), .TI(N46), .TE(N57), .CP(CLK), .CD(
        n70), .Q(Product[5]), .QN(n86) );
  GTECH_FJK2S A_reg_2_ ( .J(n71), .K(n71), .TI(N48), .TE(N57), .CP(CLK), .CD(
        n70), .Q(Product[6]), .QN(n16) );
  GTECH_FJK2S B_reg_3_ ( .J(n71), .K(n71), .TI(N58), .TE(N57), .CP(CLK), .CD(
        n70), .Q(Product[3]), .QN(n17) );
  GTECH_FJK2S B_reg_2_ ( .J(n71), .K(n71), .TI(N56), .TE(N57), .CP(CLK), .CD(
        n70), .Q(Product[2]), .QN(n18) );
  GTECH_FJK2S B_reg_1_ ( .J(n71), .K(n71), .TI(N54), .TE(N57), .CP(CLK), .CD(
        n70), .Q(Product[1]), .QN(n19) );
  GTECH_ZERO U83 ( .Z(n71) );
  GTECH_ONE U84 ( .Z(n70) );
  GTECH_AND_NOT U85 ( .A(N57), .B(n90), .Z(N63) );
  GTECH_NOT U86 ( .A(n91), .Z(N58) );
  GTECH_AOI222 U87 ( .A(Mplier[3]), .B(n92), .C(n93), .D(n94), .E(n95), .F(n96), .Z(n91) );
  GTECH_AO21 U88 ( .A(n97), .B(n98), .C(n90), .Z(n95) );
  GTECH_AND_NOT U89 ( .A(n98), .B(n14), .Z(n93) );
  GTECH_AO21 U90 ( .A(n92), .B(St), .C(n98), .Z(N57) );
  GTECH_OAI2N2 U91 ( .A(n17), .B(n99), .C(Mplier[2]), .D(n92), .Z(N56) );
  GTECH_OAI2N2 U92 ( .A(n18), .B(n99), .C(Mplier[1]), .D(n92), .Z(N54) );
  GTECH_OAI2N2 U93 ( .A(n19), .B(n99), .C(Mplier[0]), .D(n92), .Z(N52) );
  GTECH_MUX2 U94 ( .A(n100), .B(n101), .S(n102), .Z(N50) );
  GTECH_MUX2 U95 ( .A(n103), .B(n104), .S(n15), .Z(N48) );
  GTECH_MUX2 U96 ( .A(n105), .B(n106), .S(Mcand[3]), .Z(n104) );
  GTECH_OR2 U97 ( .A(n90), .B(n107), .Z(n103) );
  GTECH_MUX2 U98 ( .A(n105), .B(n106), .S(n102), .Z(n107) );
  GTECH_NOT U99 ( .A(Mcand[3]), .Z(n102) );
  GTECH_AO22 U100 ( .A(n108), .B(n109), .C(n110), .D(n111), .Z(n106) );
  GTECH_OAI22 U101 ( .A(n108), .B(n112), .C(n110), .D(n113), .Z(n105) );
  GTECH_OA21 U102 ( .A(n114), .B(n115), .C(n116), .Z(n110) );
  GTECH_OAI21 U103 ( .A(Mcand[2]), .B(n117), .C(n16), .Z(n116) );
  GTECH_NOT U104 ( .A(n114), .Z(n117) );
  GTECH_OA21 U105 ( .A(n118), .B(n115), .C(n119), .Z(n108) );
  GTECH_AO21 U106 ( .A(n115), .B(n118), .C(n16), .Z(n119) );
  GTECH_MUX2 U107 ( .A(n120), .B(n121), .S(n16), .Z(N46) );
  GTECH_NOT U108 ( .A(n122), .Z(n121) );
  GTECH_MUX2 U109 ( .A(n123), .B(n124), .S(Mcand[2]), .Z(n122) );
  GTECH_OR_NOT U110 ( .A(n90), .B(n125), .Z(n120) );
  GTECH_MUX2 U111 ( .A(n123), .B(n124), .S(n115), .Z(n125) );
  GTECH_NOT U112 ( .A(Mcand[2]), .Z(n115) );
  GTECH_AOI22 U113 ( .A(n118), .B(n109), .C(n114), .D(n111), .Z(n124) );
  GTECH_OA22 U114 ( .A(n114), .B(n113), .C(n118), .D(n112), .Z(n123) );
  GTECH_OA21 U115 ( .A(n86), .B(n126), .C(n127), .Z(n118) );
  GTECH_OR3 U116 ( .A(n128), .B(n87), .C(n97), .Z(n127) );
  GTECH_NOT U117 ( .A(Mcand[0]), .Z(n97) );
  GTECH_AOI22 U118 ( .A(Mcand[1]), .B(n86), .C(n129), .D(n94), .Z(n114) );
  GTECH_NOT U119 ( .A(n130), .Z(N44) );
  GTECH_AOI222 U120 ( .A(n90), .B(n131), .C(n132), .D(n133), .E(n134), .F(n135), .Z(n130) );
  GTECH_AND_NOT U121 ( .A(n136), .B(n128), .Z(n135) );
  GTECH_AND_NOT U122 ( .A(n86), .B(Mcand[1]), .Z(n128) );
  GTECH_NAND3 U123 ( .A(n113), .B(n96), .C(Mcand[0]), .Z(n136) );
  GTECH_OA21 U124 ( .A(n86), .B(n126), .C(n137), .Z(n134) );
  GTECH_OAI21 U125 ( .A(n94), .B(n113), .C(n112), .Z(n137) );
  GTECH_NOT U126 ( .A(n109), .Z(n112) );
  GTECH_NOT U127 ( .A(n111), .Z(n113) );
  GTECH_AND_NOT U128 ( .A(Mcand[0]), .B(n96), .Z(n94) );
  GTECH_OA21 U129 ( .A(n126), .B(n131), .C(n129), .Z(n133) );
  GTECH_OR_NOT U130 ( .A(n86), .B(n126), .Z(n129) );
  GTECH_NOT U131 ( .A(Mcand[1]), .Z(n126) );
  GTECH_AND2 U132 ( .A(n138), .B(Mcand[0]), .Z(n132) );
  GTECH_MUX2 U133 ( .A(n111), .B(n109), .S(n96), .Z(n138) );
  GTECH_NOT U134 ( .A(n87), .Z(n96) );
  GTECH_AND_NOT U135 ( .A(n100), .B(n14), .Z(n109) );
  GTECH_AND_NOT U136 ( .A(n101), .B(n14), .Z(n111) );
  GTECH_NOT U137 ( .A(n86), .Z(n131) );
  GTECH_AND_NOT U138 ( .A(n14), .B(n99), .Z(n90) );
  GTECH_NOT U139 ( .A(n98), .Z(n99) );
  GTECH_OR2 U140 ( .A(n100), .B(n101), .Z(n98) );
  GTECH_AO21 U141 ( .A(n100), .B(n139), .C(n101), .Z(N42) );
  GTECH_NOR2 U142 ( .A(n89), .B(n88), .Z(n139) );
  GTECH_OA21 U143 ( .A(n88), .B(n89), .C(n100), .Z(N41) );
  GTECH_AO21 U144 ( .A(n92), .B(St), .C(n140), .Z(N40) );
  GTECH_AO21 U145 ( .A(n89), .B(n100), .C(n101), .Z(n140) );
  GTECH_AND2 U146 ( .A(n141), .B(n142), .Z(n101) );
  GTECH_AND_NOT U147 ( .A(n12), .B(n141), .Z(n100) );
  GTECH_AND_NOT U148 ( .A(n141), .B(n142), .Z(n92) );
  GTECH_AND_NOT U149 ( .A(n88), .B(n143), .Z(n141) );
  GTECH_AND3 U150 ( .A(n142), .B(n143), .C(n88), .Z(Done) );
  GTECH_NOT U151 ( .A(n89), .Z(n143) );
  GTECH_NOT U152 ( .A(n12), .Z(n142) );
endmodule

