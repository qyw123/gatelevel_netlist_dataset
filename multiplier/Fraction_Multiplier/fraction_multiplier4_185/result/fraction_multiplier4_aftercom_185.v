
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n14, n15, n16, n17, n18, n19, n72, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n83) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n12) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .QN(n82) );
  GTECH_FJK1S B_reg_0_ ( .J(n72), .K(n72), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n14) );
  GTECH_FJK1S A_reg_3_ ( .J(n72), .K(n72), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n15) );
  GTECH_FJK1S A_reg_0_ ( .J(n72), .K(n72), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n81) );
  GTECH_FJK1S A_reg_1_ ( .J(n72), .K(n72), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n80) );
  GTECH_FJK1S A_reg_2_ ( .J(n72), .K(n72), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n16) );
  GTECH_FJK1S B_reg_3_ ( .J(n72), .K(n72), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n17) );
  GTECH_FJK1S B_reg_2_ ( .J(n72), .K(n72), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n18) );
  GTECH_FJK1S B_reg_1_ ( .J(n72), .K(n72), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n19) );
  GTECH_ZERO U77 ( .Z(n72) );
  GTECH_AND_NOT U78 ( .A(N57), .B(n84), .Z(N63) );
  GTECH_NOT U79 ( .A(n85), .Z(N58) );
  GTECH_AOI222 U80 ( .A(Mplier[3]), .B(n86), .C(n87), .D(n88), .E(n89), .F(n90), .Z(n85) );
  GTECH_AO21 U81 ( .A(n91), .B(n92), .C(n84), .Z(n89) );
  GTECH_NOR2 U82 ( .A(n93), .B(n14), .Z(n87) );
  GTECH_AO21 U83 ( .A(n86), .B(St), .C(n92), .Z(N57) );
  GTECH_OAI2N2 U84 ( .A(n17), .B(n93), .C(Mplier[2]), .D(n86), .Z(N56) );
  GTECH_OAI2N2 U85 ( .A(n18), .B(n93), .C(Mplier[1]), .D(n86), .Z(N54) );
  GTECH_OAI2N2 U86 ( .A(n19), .B(n93), .C(Mplier[0]), .D(n86), .Z(N52) );
  GTECH_NOT U87 ( .A(n94), .Z(N50) );
  GTECH_MUX2 U88 ( .A(n95), .B(n96), .S(Mcand[3]), .Z(n94) );
  GTECH_MUX2 U89 ( .A(n97), .B(n98), .S(n15), .Z(N48) );
  GTECH_MUX2 U90 ( .A(n99), .B(n100), .S(Mcand[3]), .Z(n98) );
  GTECH_OR2 U91 ( .A(n84), .B(n101), .Z(n97) );
  GTECH_MUX2 U92 ( .A(n100), .B(n99), .S(Mcand[3]), .Z(n101) );
  GTECH_AO22 U93 ( .A(n102), .B(n103), .C(n104), .D(n105), .Z(n99) );
  GTECH_OAI22 U94 ( .A(n103), .B(n106), .C(n104), .D(n107), .Z(n100) );
  GTECH_OAI21 U95 ( .A(n108), .B(n109), .C(n110), .Z(n104) );
  GTECH_OAI21 U96 ( .A(Mcand[2]), .B(n111), .C(n16), .Z(n110) );
  GTECH_OA21 U97 ( .A(Mcand[2]), .B(n112), .C(n113), .Z(n103) );
  GTECH_OAI21 U98 ( .A(n114), .B(n109), .C(n16), .Z(n113) );
  GTECH_MUX2 U99 ( .A(n115), .B(n116), .S(n16), .Z(N46) );
  GTECH_NOT U100 ( .A(n117), .Z(n116) );
  GTECH_MUX2 U101 ( .A(n118), .B(n119), .S(n109), .Z(n117) );
  GTECH_OR_NOT U102 ( .A(n84), .B(n120), .Z(n115) );
  GTECH_MUX2 U103 ( .A(n119), .B(n118), .S(n109), .Z(n120) );
  GTECH_NOT U104 ( .A(Mcand[2]), .Z(n109) );
  GTECH_AOI2N2 U105 ( .A(n108), .B(n105), .C(n112), .D(n106), .Z(n118) );
  GTECH_NOT U106 ( .A(n114), .Z(n112) );
  GTECH_AOI2N2 U107 ( .A(n111), .B(n105), .C(n114), .D(n106), .Z(n119) );
  GTECH_OA21 U108 ( .A(n80), .B(n121), .C(n122), .Z(n114) );
  GTECH_OR3 U109 ( .A(n123), .B(n81), .C(n91), .Z(n122) );
  GTECH_NOT U110 ( .A(n108), .Z(n111) );
  GTECH_AOI22 U111 ( .A(Mcand[1]), .B(n80), .C(n124), .D(n88), .Z(n108) );
  GTECH_NOT U112 ( .A(n125), .Z(N44) );
  GTECH_AOI222 U113 ( .A(n84), .B(n126), .C(n127), .D(n128), .E(n129), .F(n130), .Z(n125) );
  GTECH_AND_NOT U114 ( .A(n131), .B(n123), .Z(n130) );
  GTECH_AND2 U115 ( .A(n80), .B(n121), .Z(n123) );
  GTECH_OR3 U116 ( .A(n105), .B(n81), .C(n91), .Z(n131) );
  GTECH_OA21 U117 ( .A(n80), .B(n121), .C(n132), .Z(n129) );
  GTECH_OAI21 U118 ( .A(n88), .B(n107), .C(n106), .Z(n132) );
  GTECH_NOT U119 ( .A(n102), .Z(n106) );
  GTECH_AND_NOT U120 ( .A(Mcand[0]), .B(n90), .Z(n88) );
  GTECH_OA21 U121 ( .A(n121), .B(n126), .C(n124), .Z(n128) );
  GTECH_OR_NOT U122 ( .A(Mcand[1]), .B(n126), .Z(n124) );
  GTECH_NOT U123 ( .A(Mcand[1]), .Z(n121) );
  GTECH_AND_NOT U124 ( .A(n133), .B(n91), .Z(n127) );
  GTECH_NOT U125 ( .A(Mcand[0]), .Z(n91) );
  GTECH_MUX2 U126 ( .A(n105), .B(n102), .S(n90), .Z(n133) );
  GTECH_NOT U127 ( .A(n81), .Z(n90) );
  GTECH_AND_NOT U128 ( .A(n134), .B(n14), .Z(n102) );
  GTECH_NOT U129 ( .A(n107), .Z(n105) );
  GTECH_OR2 U130 ( .A(n95), .B(n14), .Z(n107) );
  GTECH_NOT U131 ( .A(n80), .Z(n126) );
  GTECH_AND2 U132 ( .A(n14), .B(n92), .Z(n84) );
  GTECH_NOT U133 ( .A(n93), .Z(n92) );
  GTECH_AND_NOT U134 ( .A(n95), .B(n134), .Z(n93) );
  GTECH_OAI21 U135 ( .A(n96), .B(n135), .C(n95), .Z(N42) );
  GTECH_OR2 U136 ( .A(n82), .B(n83), .Z(n135) );
  GTECH_OA21 U137 ( .A(n82), .B(n83), .C(n134), .Z(N41) );
  GTECH_NOT U138 ( .A(n96), .Z(n134) );
  GTECH_AO21 U139 ( .A(n86), .B(St), .C(n136), .Z(N40) );
  GTECH_OAI21 U140 ( .A(n137), .B(n96), .C(n95), .Z(n136) );
  GTECH_NAND3 U141 ( .A(n82), .B(n138), .C(n83), .Z(n95) );
  GTECH_AO21 U142 ( .A(n82), .B(n83), .C(n138), .Z(n96) );
  GTECH_AND3 U143 ( .A(n83), .B(n82), .C(n12), .Z(n86) );
  GTECH_AND3 U144 ( .A(n138), .B(n137), .C(n82), .Z(Done) );
  GTECH_NOT U145 ( .A(n83), .Z(n137) );
  GTECH_NOT U146 ( .A(n12), .Z(n138) );
endmodule

