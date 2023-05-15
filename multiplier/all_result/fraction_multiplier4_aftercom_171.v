
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63, n12,
         n14, n15, n16, n71, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n83) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n85) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n84) );
  GTECH_FJK1S B_reg_0_ ( .J(n71), .K(n71), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n12) );
  GTECH_FJK1S A_reg_3_ ( .J(n71), .K(n71), .TI(N50), .TE(N63), .CP(CLK), .QN(
        n79) );
  GTECH_FJK1S A_reg_0_ ( .J(n71), .K(n71), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n82) );
  GTECH_FJK1S A_reg_1_ ( .J(n71), .K(n71), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n81) );
  GTECH_FJK1S A_reg_2_ ( .J(n71), .K(n71), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n80) );
  GTECH_FJK1S B_reg_3_ ( .J(n71), .K(n71), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n14) );
  GTECH_FJK1S B_reg_2_ ( .J(n71), .K(n71), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n15) );
  GTECH_FJK1S B_reg_1_ ( .J(n71), .K(n71), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n16) );
  GTECH_ZERO U79 ( .Z(n71) );
  GTECH_AND2 U80 ( .A(n86), .B(N57), .Z(N63) );
  GTECH_NOT U81 ( .A(n87), .Z(N58) );
  GTECH_AOI222 U82 ( .A(Mplier[3]), .B(n88), .C(n89), .D(n90), .E(n91), .F(n92), .Z(n87) );
  GTECH_OAI21 U83 ( .A(Mcand[0]), .B(n93), .C(n86), .Z(n91) );
  GTECH_AND2 U84 ( .A(n94), .B(n95), .Z(n89) );
  GTECH_AO21 U85 ( .A(n88), .B(St), .C(n95), .Z(N57) );
  GTECH_OAI2N2 U86 ( .A(n14), .B(n93), .C(Mplier[2]), .D(n88), .Z(N56) );
  GTECH_OAI2N2 U87 ( .A(n15), .B(n93), .C(Mplier[1]), .D(n88), .Z(N54) );
  GTECH_OAI2N2 U88 ( .A(n16), .B(n93), .C(Mplier[0]), .D(n88), .Z(N52) );
  GTECH_NOT U89 ( .A(n95), .Z(n93) );
  GTECH_MUX2 U90 ( .A(n96), .B(n97), .S(n98), .Z(N50) );
  GTECH_MUX2 U91 ( .A(n99), .B(n100), .S(n79), .Z(N48) );
  GTECH_MUX2 U92 ( .A(n101), .B(n102), .S(Mcand[3]), .Z(n100) );
  GTECH_OR_NOT U93 ( .A(n103), .B(n86), .Z(n99) );
  GTECH_MUX2 U94 ( .A(n101), .B(n102), .S(n98), .Z(n103) );
  GTECH_NOT U95 ( .A(Mcand[3]), .Z(n98) );
  GTECH_AO22 U96 ( .A(n104), .B(n105), .C(n106), .D(n107), .Z(n102) );
  GTECH_OAI22 U97 ( .A(n104), .B(n108), .C(n106), .D(n109), .Z(n101) );
  GTECH_OA21 U98 ( .A(n110), .B(n111), .C(n112), .Z(n106) );
  GTECH_OAI21 U99 ( .A(Mcand[2]), .B(n113), .C(n80), .Z(n112) );
  GTECH_OA21 U100 ( .A(n114), .B(n111), .C(n115), .Z(n104) );
  GTECH_AO21 U101 ( .A(n111), .B(n114), .C(n80), .Z(n115) );
  GTECH_MUX2 U102 ( .A(n116), .B(n117), .S(n80), .Z(N46) );
  GTECH_NOT U103 ( .A(n118), .Z(n117) );
  GTECH_MUX2 U104 ( .A(n119), .B(n120), .S(Mcand[2]), .Z(n118) );
  GTECH_NAND2 U105 ( .A(n121), .B(n86), .Z(n116) );
  GTECH_MUX2 U106 ( .A(n119), .B(n120), .S(n111), .Z(n121) );
  GTECH_NOT U107 ( .A(Mcand[2]), .Z(n111) );
  GTECH_AOI22 U108 ( .A(n114), .B(n105), .C(n110), .D(n107), .Z(n120) );
  GTECH_OA22 U109 ( .A(n114), .B(n108), .C(n110), .D(n109), .Z(n119) );
  GTECH_NOT U110 ( .A(n113), .Z(n110) );
  GTECH_ADD_ABC U111 ( .A(n122), .B(Mcand[1]), .C(n81), .COUT(n113) );
  GTECH_AND2 U112 ( .A(Mcand[0]), .B(n82), .Z(n122) );
  GTECH_OA21 U113 ( .A(n81), .B(n123), .C(n124), .Z(n114) );
  GTECH_NAND3 U114 ( .A(n125), .B(n92), .C(Mcand[0]), .Z(n124) );
  GTECH_OAI21 U115 ( .A(n126), .B(n125), .C(n127), .Z(N44) );
  GTECH_MUX2 U116 ( .A(n128), .B(n129), .S(n81), .Z(n127) );
  GTECH_OR_NOT U117 ( .A(n130), .B(Mcand[1]), .Z(n129) );
  GTECH_AND2 U118 ( .A(n86), .B(n131), .Z(n128) );
  GTECH_MUX2 U119 ( .A(n126), .B(n130), .S(n123), .Z(n131) );
  GTECH_OA21 U120 ( .A(n90), .B(n109), .C(n132), .Z(n130) );
  GTECH_AO21 U121 ( .A(n92), .B(Mcand[0]), .C(n108), .Z(n132) );
  GTECH_NOT U122 ( .A(n105), .Z(n108) );
  GTECH_NOT U123 ( .A(n107), .Z(n109) );
  GTECH_OR_NOT U124 ( .A(n94), .B(n95), .Z(n86) );
  GTECH_OR2 U125 ( .A(n96), .B(n97), .Z(n95) );
  GTECH_NAND2 U126 ( .A(n123), .B(n81), .Z(n125) );
  GTECH_NOT U127 ( .A(Mcand[1]), .Z(n123) );
  GTECH_AOI21 U128 ( .A(n90), .B(n107), .C(n133), .Z(n126) );
  GTECH_AND3 U129 ( .A(Mcand[0]), .B(n92), .C(n105), .Z(n133) );
  GTECH_AND_NOT U130 ( .A(n96), .B(n12), .Z(n105) );
  GTECH_AND2 U131 ( .A(n97), .B(n94), .Z(n107) );
  GTECH_NOT U132 ( .A(n12), .Z(n94) );
  GTECH_AND_NOT U133 ( .A(Mcand[0]), .B(n92), .Z(n90) );
  GTECH_NOT U134 ( .A(n82), .Z(n92) );
  GTECH_OR_NOT U135 ( .A(n97), .B(n134), .Z(N42) );
  GTECH_NAND3 U136 ( .A(n135), .B(n136), .C(n96), .Z(n134) );
  GTECH_NOT U137 ( .A(n83), .Z(n135) );
  GTECH_OA21 U138 ( .A(n83), .B(n84), .C(n96), .Z(N41) );
  GTECH_AO21 U139 ( .A(n88), .B(St), .C(n137), .Z(N40) );
  GTECH_AO21 U140 ( .A(n83), .B(n96), .C(n97), .Z(n137) );
  GTECH_AND_NOT U141 ( .A(n138), .B(n85), .Z(n97) );
  GTECH_AND_NOT U142 ( .A(n85), .B(n138), .Z(n96) );
  GTECH_AND2 U143 ( .A(n138), .B(n85), .Z(n88) );
  GTECH_AND2 U144 ( .A(n83), .B(n84), .Z(n138) );
  GTECH_NOR3 U145 ( .A(n83), .B(n85), .C(n136), .Z(Done) );
  GTECH_NOT U146 ( .A(n84), .Z(n136) );
endmodule

