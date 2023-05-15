
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
         n137, n138, n139, n140, n141, n142, n143, n144;
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
  GTECH_AND_NOT U86 ( .A(N57), .B(n90), .Z(N63) );
  GTECH_NOT U87 ( .A(n91), .Z(N58) );
  GTECH_AOI222 U88 ( .A(Mplier[3]), .B(n92), .C(n93), .D(n94), .E(n95), .F(n96), .Z(n91) );
  GTECH_OAI21 U89 ( .A(Mcand[0]), .B(n97), .C(n98), .Z(n95) );
  GTECH_NOT U90 ( .A(n90), .Z(n98) );
  GTECH_AND_NOT U91 ( .A(n99), .B(n88), .Z(n93) );
  GTECH_AO21 U92 ( .A(n92), .B(St), .C(n99), .Z(N57) );
  GTECH_NOT U93 ( .A(n97), .Z(n99) );
  GTECH_OAI2N2 U94 ( .A(n16), .B(n97), .C(Mplier[2]), .D(n92), .Z(N56) );
  GTECH_OAI2N2 U95 ( .A(n17), .B(n97), .C(Mplier[1]), .D(n92), .Z(N54) );
  GTECH_OAI2N2 U96 ( .A(n18), .B(n97), .C(Mplier[0]), .D(n92), .Z(N52) );
  GTECH_OAI2N2 U97 ( .A(n100), .B(n101), .C(n101), .D(n102), .Z(N50) );
  GTECH_OAI21 U98 ( .A(n103), .B(n104), .C(n105), .Z(N48) );
  GTECH_OAI21 U99 ( .A(n90), .B(n106), .C(n104), .Z(n105) );
  GTECH_AO22 U100 ( .A(n101), .B(n107), .C(n108), .D(Mcand[3]), .Z(n106) );
  GTECH_NOT U101 ( .A(n14), .Z(n104) );
  GTECH_AOI22 U102 ( .A(n101), .B(n108), .C(n107), .D(Mcand[3]), .Z(n103) );
  GTECH_AO22 U103 ( .A(n109), .B(n110), .C(n111), .D(n112), .Z(n107) );
  GTECH_OAI22 U104 ( .A(n109), .B(n113), .C(n111), .D(n114), .Z(n108) );
  GTECH_OA21 U105 ( .A(n115), .B(n116), .C(n117), .Z(n111) );
  GTECH_AO21 U106 ( .A(n116), .B(n115), .C(n118), .Z(n117) );
  GTECH_OA21 U107 ( .A(n119), .B(n116), .C(n120), .Z(n109) );
  GTECH_AO21 U108 ( .A(n116), .B(n119), .C(n15), .Z(n120) );
  GTECH_NOT U109 ( .A(Mcand[3]), .Z(n101) );
  GTECH_OAI21 U110 ( .A(n118), .B(n121), .C(n122), .Z(N46) );
  GTECH_OAI21 U111 ( .A(n90), .B(n123), .C(n118), .Z(n122) );
  GTECH_AO22 U112 ( .A(n116), .B(n124), .C(n125), .D(Mcand[2]), .Z(n123) );
  GTECH_AOI22 U113 ( .A(n116), .B(n125), .C(n124), .D(Mcand[2]), .Z(n121) );
  GTECH_OAI2N2 U114 ( .A(n126), .B(n113), .C(n115), .D(n112), .Z(n124) );
  GTECH_NOT U115 ( .A(n127), .Z(n115) );
  GTECH_OAI2N2 U116 ( .A(n119), .B(n113), .C(n127), .D(n112), .Z(n125) );
  GTECH_ADD_ABC U117 ( .A(n128), .B(Mcand[1]), .C(n86), .COUT(n127) );
  GTECH_AND_NOT U118 ( .A(Mcand[0]), .B(n96), .Z(n128) );
  GTECH_NOT U119 ( .A(n87), .Z(n96) );
  GTECH_NOT U120 ( .A(n126), .Z(n119) );
  GTECH_ADD_ABC U121 ( .A(Mcand[1]), .B(n129), .C(n130), .COUT(n126) );
  GTECH_AND_NOT U122 ( .A(Mcand[0]), .B(n87), .Z(n129) );
  GTECH_NOT U123 ( .A(Mcand[2]), .Z(n116) );
  GTECH_NOT U124 ( .A(n15), .Z(n118) );
  GTECH_OAI21 U125 ( .A(n130), .B(n131), .C(n132), .Z(N44) );
  GTECH_OAI21 U126 ( .A(n90), .B(n133), .C(n130), .Z(n132) );
  GTECH_AO22 U127 ( .A(n134), .B(Mcand[1]), .C(n135), .D(n136), .Z(n133) );
  GTECH_AND_NOT U128 ( .A(n88), .B(n97), .Z(n90) );
  GTECH_AND_NOT U129 ( .A(n100), .B(n102), .Z(n97) );
  GTECH_AOI22 U130 ( .A(Mcand[1]), .B(n136), .C(n135), .D(n134), .Z(n131) );
  GTECH_OAI2N2 U131 ( .A(n137), .B(n113), .C(n94), .D(n112), .Z(n134) );
  GTECH_NOT U132 ( .A(Mcand[1]), .Z(n135) );
  GTECH_OA21 U133 ( .A(n112), .B(n137), .C(n138), .Z(n136) );
  GTECH_OAI21 U134 ( .A(n94), .B(n114), .C(n113), .Z(n138) );
  GTECH_NOT U135 ( .A(n110), .Z(n113) );
  GTECH_AND_NOT U136 ( .A(n139), .B(n88), .Z(n110) );
  GTECH_NOT U137 ( .A(n112), .Z(n114) );
  GTECH_AND2 U138 ( .A(Mcand[0]), .B(n87), .Z(n94) );
  GTECH_OR_NOT U139 ( .A(n87), .B(Mcand[0]), .Z(n137) );
  GTECH_AND_NOT U140 ( .A(n102), .B(n88), .Z(n112) );
  GTECH_NOT U141 ( .A(n86), .Z(n130) );
  GTECH_OR_NOT U142 ( .A(n102), .B(n140), .Z(N42) );
  GTECH_OR3 U143 ( .A(n12), .B(n89), .C(n100), .Z(n140) );
  GTECH_AOI21 U144 ( .A(n141), .B(n142), .C(n100), .Z(N41) );
  GTECH_NOT U145 ( .A(n139), .Z(n100) );
  GTECH_AO21 U146 ( .A(n92), .B(St), .C(n143), .Z(N40) );
  GTECH_AO21 U147 ( .A(n12), .B(n139), .C(n102), .Z(n143) );
  GTECH_AND3 U148 ( .A(n12), .B(n144), .C(n89), .Z(n102) );
  GTECH_NOT U149 ( .A(n13), .Z(n144) );
  GTECH_OA21 U150 ( .A(n141), .B(n142), .C(n13), .Z(n139) );
  GTECH_NOT U151 ( .A(n12), .Z(n141) );
  GTECH_AND3 U152 ( .A(n89), .B(n12), .C(n13), .Z(n92) );
  GTECH_NOR3 U153 ( .A(n12), .B(n13), .C(n142), .Z(Done) );
  GTECH_NOT U154 ( .A(n89), .Z(n142) );
endmodule

