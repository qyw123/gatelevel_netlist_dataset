
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n14, n15, n16, n17, n18, n19, n70, n78, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138;
  wire   [2:0] State;

  GTECH_FD2 State_reg_0_ ( .D(N40), .CP(CLK), .CD(n78), .Q(State[0]), .QN(n84)
         );
  GTECH_FD2 State_reg_2_ ( .D(N42), .CP(CLK), .CD(n78), .Q(State[2]), .QN(n12)
         );
  GTECH_FD2 State_reg_1_ ( .D(N41), .CP(CLK), .CD(n78), .QN(n83) );
  GTECH_FJK1S B_reg_0_ ( .J(n70), .K(n70), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n14) );
  GTECH_FJK1S A_reg_3_ ( .J(n70), .K(n70), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n15) );
  GTECH_FJK1S A_reg_0_ ( .J(n70), .K(n70), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n82) );
  GTECH_FJK1S A_reg_1_ ( .J(n70), .K(n70), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n81) );
  GTECH_FJK1S A_reg_2_ ( .J(n70), .K(n70), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n16) );
  GTECH_FJK1S B_reg_3_ ( .J(n70), .K(n70), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n17) );
  GTECH_FJK1S B_reg_2_ ( .J(n70), .K(n70), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n18) );
  GTECH_FJK1S B_reg_1_ ( .J(n70), .K(n70), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n19) );
  GTECH_ONE U78 ( .Z(n78) );
  GTECH_ZERO U79 ( .Z(n70) );
  GTECH_AND_NOT U80 ( .A(N57), .B(n85), .Z(N63) );
  GTECH_NOT U81 ( .A(n86), .Z(N58) );
  GTECH_AOI222 U82 ( .A(Mplier[3]), .B(n87), .C(n88), .D(n89), .E(n90), .F(n91), .Z(n86) );
  GTECH_AO21 U83 ( .A(n92), .B(n93), .C(n85), .Z(n90) );
  GTECH_AND_NOT U84 ( .A(n93), .B(n14), .Z(n88) );
  GTECH_AO21 U85 ( .A(n87), .B(St), .C(n93), .Z(N57) );
  GTECH_OAI2N2 U86 ( .A(n17), .B(n94), .C(Mplier[2]), .D(n87), .Z(N56) );
  GTECH_OAI2N2 U87 ( .A(n18), .B(n94), .C(Mplier[1]), .D(n87), .Z(N54) );
  GTECH_OAI2N2 U88 ( .A(n19), .B(n94), .C(Mplier[0]), .D(n87), .Z(N52) );
  GTECH_MUX2 U89 ( .A(n95), .B(n96), .S(n97), .Z(N50) );
  GTECH_MUX2 U90 ( .A(n98), .B(n99), .S(n15), .Z(N48) );
  GTECH_MUX2 U91 ( .A(n100), .B(n101), .S(Mcand[3]), .Z(n99) );
  GTECH_OR2 U92 ( .A(n85), .B(n102), .Z(n98) );
  GTECH_MUX2 U93 ( .A(n100), .B(n101), .S(n97), .Z(n102) );
  GTECH_NOT U94 ( .A(Mcand[3]), .Z(n97) );
  GTECH_AO22 U95 ( .A(n103), .B(n104), .C(n105), .D(n106), .Z(n101) );
  GTECH_OAI22 U96 ( .A(n103), .B(n107), .C(n105), .D(n108), .Z(n100) );
  GTECH_OA21 U97 ( .A(n109), .B(n110), .C(n111), .Z(n105) );
  GTECH_OAI21 U98 ( .A(Mcand[2]), .B(n112), .C(n16), .Z(n111) );
  GTECH_NOT U99 ( .A(n109), .Z(n112) );
  GTECH_OA21 U100 ( .A(n113), .B(n110), .C(n114), .Z(n103) );
  GTECH_AO21 U101 ( .A(n110), .B(n113), .C(n16), .Z(n114) );
  GTECH_MUX2 U102 ( .A(n115), .B(n116), .S(n16), .Z(N46) );
  GTECH_NOT U103 ( .A(n117), .Z(n116) );
  GTECH_MUX2 U104 ( .A(n118), .B(n119), .S(Mcand[2]), .Z(n117) );
  GTECH_OR_NOT U105 ( .A(n85), .B(n120), .Z(n115) );
  GTECH_MUX2 U106 ( .A(n118), .B(n119), .S(n110), .Z(n120) );
  GTECH_NOT U107 ( .A(Mcand[2]), .Z(n110) );
  GTECH_AOI22 U108 ( .A(n113), .B(n104), .C(n109), .D(n106), .Z(n119) );
  GTECH_OA22 U109 ( .A(n109), .B(n108), .C(n113), .D(n107), .Z(n118) );
  GTECH_OA21 U110 ( .A(n81), .B(n121), .C(n122), .Z(n113) );
  GTECH_OR3 U111 ( .A(n123), .B(n82), .C(n92), .Z(n122) );
  GTECH_NOT U112 ( .A(Mcand[0]), .Z(n92) );
  GTECH_AOI22 U113 ( .A(Mcand[1]), .B(n81), .C(n124), .D(n89), .Z(n109) );
  GTECH_NOT U114 ( .A(n125), .Z(N44) );
  GTECH_AOI222 U115 ( .A(n85), .B(n126), .C(n127), .D(n128), .E(n129), .F(n130), .Z(n125) );
  GTECH_AND_NOT U116 ( .A(n131), .B(n123), .Z(n130) );
  GTECH_AND_NOT U117 ( .A(n81), .B(Mcand[1]), .Z(n123) );
  GTECH_NAND3 U118 ( .A(n108), .B(n91), .C(Mcand[0]), .Z(n131) );
  GTECH_OA21 U119 ( .A(n81), .B(n121), .C(n132), .Z(n129) );
  GTECH_OAI21 U120 ( .A(n89), .B(n108), .C(n107), .Z(n132) );
  GTECH_NOT U121 ( .A(n104), .Z(n107) );
  GTECH_NOT U122 ( .A(n106), .Z(n108) );
  GTECH_AND_NOT U123 ( .A(Mcand[0]), .B(n91), .Z(n89) );
  GTECH_OA21 U124 ( .A(n121), .B(n126), .C(n124), .Z(n128) );
  GTECH_OR_NOT U125 ( .A(n81), .B(n121), .Z(n124) );
  GTECH_NOT U126 ( .A(Mcand[1]), .Z(n121) );
  GTECH_AND2 U127 ( .A(n133), .B(Mcand[0]), .Z(n127) );
  GTECH_MUX2 U128 ( .A(n106), .B(n104), .S(n91), .Z(n133) );
  GTECH_NOT U129 ( .A(n82), .Z(n91) );
  GTECH_AND_NOT U130 ( .A(n95), .B(n14), .Z(n104) );
  GTECH_AND_NOT U131 ( .A(n96), .B(n14), .Z(n106) );
  GTECH_NOT U132 ( .A(n81), .Z(n126) );
  GTECH_AND_NOT U133 ( .A(n14), .B(n94), .Z(n85) );
  GTECH_NOT U134 ( .A(n93), .Z(n94) );
  GTECH_OR2 U135 ( .A(n95), .B(n96), .Z(n93) );
  GTECH_AO21 U136 ( .A(n95), .B(n134), .C(n96), .Z(N42) );
  GTECH_NOR2 U137 ( .A(n84), .B(n83), .Z(n134) );
  GTECH_OA21 U138 ( .A(n83), .B(n84), .C(n95), .Z(N41) );
  GTECH_AO21 U139 ( .A(n87), .B(St), .C(n135), .Z(N40) );
  GTECH_AO21 U140 ( .A(n84), .B(n95), .C(n96), .Z(n135) );
  GTECH_AND2 U141 ( .A(n136), .B(n137), .Z(n96) );
  GTECH_AND_NOT U142 ( .A(n12), .B(n136), .Z(n95) );
  GTECH_AND_NOT U143 ( .A(n136), .B(n137), .Z(n87) );
  GTECH_AND_NOT U144 ( .A(n83), .B(n138), .Z(n136) );
  GTECH_AND3 U145 ( .A(n137), .B(n138), .C(n83), .Z(Done) );
  GTECH_NOT U146 ( .A(n84), .Z(n138) );
  GTECH_NOT U147 ( .A(n12), .Z(n137) );
endmodule

