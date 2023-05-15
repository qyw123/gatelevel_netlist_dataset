
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n18, n72, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n82) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n83) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n81) );
  GTECH_FJK1S B_reg_0_ ( .J(n72), .K(n72), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n12) );
  GTECH_FJK1S A_reg_3_ ( .J(n72), .K(n72), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n13) );
  GTECH_FJK1S A_reg_0_ ( .J(n72), .K(n72), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n14) );
  GTECH_FJK1S A_reg_1_ ( .J(n72), .K(n72), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n15) );
  GTECH_FJK1S A_reg_2_ ( .J(n72), .K(n72), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n80) );
  GTECH_FJK1S B_reg_3_ ( .J(n72), .K(n72), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n16) );
  GTECH_FJK1S B_reg_2_ ( .J(n72), .K(n72), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n17) );
  GTECH_FJK1S B_reg_1_ ( .J(n72), .K(n72), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n18) );
  GTECH_ZERO U78 ( .Z(n72) );
  GTECH_AND2 U79 ( .A(N57), .B(n84), .Z(N63) );
  GTECH_NOT U80 ( .A(n85), .Z(N58) );
  GTECH_AOI222 U81 ( .A(Mplier[3]), .B(n86), .C(n87), .D(n88), .E(n89), .F(n90), .Z(n85) );
  GTECH_NOT U82 ( .A(n14), .Z(n90) );
  GTECH_OAI21 U83 ( .A(Mcand[0]), .B(n91), .C(n84), .Z(n89) );
  GTECH_AND_NOT U84 ( .A(n92), .B(n12), .Z(n87) );
  GTECH_AO21 U85 ( .A(n86), .B(St), .C(n92), .Z(N57) );
  GTECH_NOT U86 ( .A(n91), .Z(n92) );
  GTECH_OAI2N2 U87 ( .A(n16), .B(n91), .C(Mplier[2]), .D(n86), .Z(N56) );
  GTECH_OAI2N2 U88 ( .A(n17), .B(n91), .C(Mplier[1]), .D(n86), .Z(N54) );
  GTECH_OAI2N2 U89 ( .A(n18), .B(n91), .C(Mplier[0]), .D(n86), .Z(N52) );
  GTECH_MUX2 U90 ( .A(n93), .B(n94), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U91 ( .A(n95), .B(n96), .S(n13), .Z(N48) );
  GTECH_MUX2 U92 ( .A(n97), .B(n98), .S(Mcand[3]), .Z(n96) );
  GTECH_OR_NOT U93 ( .A(n99), .B(n84), .Z(n95) );
  GTECH_MUX2 U94 ( .A(n98), .B(n97), .S(Mcand[3]), .Z(n99) );
  GTECH_OAI22 U95 ( .A(n100), .B(n101), .C(n102), .D(n103), .Z(n97) );
  GTECH_AO22 U96 ( .A(n104), .B(n100), .C(n102), .D(n105), .Z(n98) );
  GTECH_OAI21 U97 ( .A(Mcand[2]), .B(n106), .C(n107), .Z(n102) );
  GTECH_AO21 U98 ( .A(n106), .B(Mcand[2]), .C(n108), .Z(n107) );
  GTECH_NOT U99 ( .A(n80), .Z(n108) );
  GTECH_AOI21 U100 ( .A(n109), .B(Mcand[2]), .C(n110), .Z(n100) );
  GTECH_NOT U101 ( .A(n111), .Z(n110) );
  GTECH_OAI21 U102 ( .A(Mcand[2]), .B(n109), .C(n80), .Z(n111) );
  GTECH_MUX2 U103 ( .A(n112), .B(n113), .S(n80), .Z(N46) );
  GTECH_MUX2 U104 ( .A(n114), .B(n115), .S(Mcand[2]), .Z(n113) );
  GTECH_OR_NOT U105 ( .A(n116), .B(n84), .Z(n112) );
  GTECH_MUX2 U106 ( .A(n115), .B(n114), .S(Mcand[2]), .Z(n116) );
  GTECH_AO22 U107 ( .A(n109), .B(n104), .C(n106), .D(n105), .Z(n114) );
  GTECH_OAI22 U108 ( .A(n109), .B(n101), .C(n106), .D(n103), .Z(n115) );
  GTECH_OAI21 U109 ( .A(n15), .B(n117), .C(n118), .Z(n106) );
  GTECH_OR3 U110 ( .A(n119), .B(n14), .C(n120), .Z(n118) );
  GTECH_ADD_ABC U111 ( .A(n121), .B(Mcand[1]), .C(n15), .COUT(n109) );
  GTECH_NOT U112 ( .A(n122), .Z(n121) );
  GTECH_NAND2 U113 ( .A(Mcand[0]), .B(n14), .Z(n122) );
  GTECH_AO21 U114 ( .A(n123), .B(n119), .C(n124), .Z(N44) );
  GTECH_NOT U115 ( .A(n125), .Z(n124) );
  GTECH_MUX2 U116 ( .A(n126), .B(n127), .S(n15), .Z(n125) );
  GTECH_NAND2 U117 ( .A(Mcand[1]), .B(n128), .Z(n127) );
  GTECH_AND_NOT U118 ( .A(n84), .B(n129), .Z(n126) );
  GTECH_MUX2 U119 ( .A(n128), .B(n123), .S(Mcand[1]), .Z(n129) );
  GTECH_OAI21 U120 ( .A(n88), .B(n101), .C(n130), .Z(n128) );
  GTECH_OAI21 U121 ( .A(n14), .B(n120), .C(n105), .Z(n130) );
  GTECH_NOT U122 ( .A(n104), .Z(n101) );
  GTECH_OR_NOT U123 ( .A(n91), .B(n12), .Z(n84) );
  GTECH_AND_NOT U124 ( .A(n131), .B(n93), .Z(n91) );
  GTECH_AND_NOT U125 ( .A(n117), .B(n132), .Z(n119) );
  GTECH_NOT U126 ( .A(n15), .Z(n132) );
  GTECH_NOT U127 ( .A(Mcand[1]), .Z(n117) );
  GTECH_AO21 U128 ( .A(n88), .B(n104), .C(n133), .Z(n123) );
  GTECH_NOR3 U129 ( .A(n120), .B(n14), .C(n103), .Z(n133) );
  GTECH_NOT U130 ( .A(n105), .Z(n103) );
  GTECH_AND_NOT U131 ( .A(n94), .B(n12), .Z(n105) );
  GTECH_AND_NOT U132 ( .A(n93), .B(n12), .Z(n104) );
  GTECH_AND_NOT U133 ( .A(n14), .B(n120), .Z(n88) );
  GTECH_NOT U134 ( .A(Mcand[0]), .Z(n120) );
  GTECH_OR_NOT U135 ( .A(n93), .B(n134), .Z(N42) );
  GTECH_NAND3 U136 ( .A(n135), .B(n136), .C(n94), .Z(n134) );
  GTECH_AOI21 U137 ( .A(n136), .B(n135), .C(n131), .Z(N41) );
  GTECH_NOT U138 ( .A(n94), .Z(n131) );
  GTECH_NOT U139 ( .A(n82), .Z(n136) );
  GTECH_AO21 U140 ( .A(n86), .B(St), .C(n137), .Z(N40) );
  GTECH_AO21 U141 ( .A(n94), .B(n82), .C(n93), .Z(n137) );
  GTECH_AND_NOT U142 ( .A(n138), .B(n83), .Z(n93) );
  GTECH_AND_NOT U143 ( .A(n83), .B(n138), .Z(n94) );
  GTECH_AND2 U144 ( .A(n83), .B(n138), .Z(n86) );
  GTECH_AND2 U145 ( .A(n82), .B(n81), .Z(n138) );
  GTECH_NOR3 U146 ( .A(n82), .B(n83), .C(n135), .Z(Done) );
  GTECH_NOT U147 ( .A(n81), .Z(n135) );
endmodule

