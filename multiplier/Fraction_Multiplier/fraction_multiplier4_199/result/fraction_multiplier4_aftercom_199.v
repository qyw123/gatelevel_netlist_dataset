
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n18, n71, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n81) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n12) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n82) );
  GTECH_FJK1S B_reg_0_ ( .J(n71), .K(n71), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n13) );
  GTECH_FJK1S A_reg_3_ ( .J(n71), .K(n71), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n14) );
  GTECH_FJK1S A_reg_0_ ( .J(n71), .K(n71), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n80) );
  GTECH_FJK1S A_reg_1_ ( .J(n71), .K(n71), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n79) );
  GTECH_FJK1S A_reg_2_ ( .J(n71), .K(n71), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n15) );
  GTECH_FJK1S B_reg_3_ ( .J(n71), .K(n71), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n16) );
  GTECH_FJK1S B_reg_2_ ( .J(n71), .K(n71), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n17) );
  GTECH_FJK1S B_reg_1_ ( .J(n71), .K(n71), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n18) );
  GTECH_ZERO U77 ( .Z(n71) );
  GTECH_AND2 U78 ( .A(n83), .B(N57), .Z(N63) );
  GTECH_NOT U79 ( .A(n84), .Z(N58) );
  GTECH_AOI222 U80 ( .A(Mplier[3]), .B(n85), .C(n86), .D(n87), .E(n88), .F(n89), .Z(n84) );
  GTECH_OAI21 U81 ( .A(Mcand[0]), .B(n90), .C(n83), .Z(n88) );
  GTECH_NOR2 U82 ( .A(n13), .B(n90), .Z(n86) );
  GTECH_OAI21 U83 ( .A(n91), .B(n92), .C(n90), .Z(N57) );
  GTECH_OAI2N2 U84 ( .A(n16), .B(n90), .C(Mplier[2]), .D(n85), .Z(N56) );
  GTECH_OAI2N2 U85 ( .A(n17), .B(n90), .C(Mplier[1]), .D(n85), .Z(N54) );
  GTECH_OAI2N2 U86 ( .A(n18), .B(n90), .C(Mplier[0]), .D(n85), .Z(N52) );
  GTECH_MUX2 U87 ( .A(n93), .B(n94), .S(n95), .Z(N50) );
  GTECH_MUX2 U88 ( .A(n96), .B(n97), .S(n14), .Z(N48) );
  GTECH_MUX2 U89 ( .A(n98), .B(n99), .S(Mcand[3]), .Z(n97) );
  GTECH_OR_NOT U90 ( .A(n100), .B(n83), .Z(n96) );
  GTECH_MUX2 U91 ( .A(n98), .B(n99), .S(n95), .Z(n100) );
  GTECH_NOT U92 ( .A(Mcand[3]), .Z(n95) );
  GTECH_AO22 U93 ( .A(n101), .B(n102), .C(n103), .D(n104), .Z(n99) );
  GTECH_OAI22 U94 ( .A(n101), .B(n105), .C(n103), .D(n106), .Z(n98) );
  GTECH_OA21 U95 ( .A(n107), .B(n108), .C(n109), .Z(n103) );
  GTECH_AO21 U96 ( .A(n108), .B(n107), .C(n110), .Z(n109) );
  GTECH_AOI21 U97 ( .A(n111), .B(Mcand[2]), .C(n112), .Z(n101) );
  GTECH_OA21 U98 ( .A(Mcand[2]), .B(n111), .C(n110), .Z(n112) );
  GTECH_NOT U99 ( .A(n113), .Z(N46) );
  GTECH_MUX2 U100 ( .A(n114), .B(n115), .S(n110), .Z(n113) );
  GTECH_NOT U101 ( .A(n15), .Z(n110) );
  GTECH_AND2 U102 ( .A(n83), .B(n116), .Z(n115) );
  GTECH_MUX2 U103 ( .A(n117), .B(n118), .S(n108), .Z(n116) );
  GTECH_NOT U104 ( .A(Mcand[2]), .Z(n108) );
  GTECH_MUX2 U105 ( .A(n117), .B(n118), .S(Mcand[2]), .Z(n114) );
  GTECH_AOI2N2 U106 ( .A(n107), .B(n104), .C(n111), .D(n105), .Z(n118) );
  GTECH_AOI2N2 U107 ( .A(n111), .B(n102), .C(n107), .D(n106), .Z(n117) );
  GTECH_ADD_ABC U108 ( .A(n119), .B(n120), .C(n121), .COUT(n107) );
  GTECH_OR_NOT U109 ( .A(n89), .B(Mcand[0]), .Z(n119) );
  GTECH_ADD_ABC U110 ( .A(Mcand[1]), .B(n122), .C(n121), .COUT(n111) );
  GTECH_NOT U111 ( .A(n79), .Z(n121) );
  GTECH_MUX2 U112 ( .A(n123), .B(n124), .S(n79), .Z(N44) );
  GTECH_MUX2 U113 ( .A(n125), .B(n126), .S(n120), .Z(n124) );
  GTECH_NOT U114 ( .A(Mcand[1]), .Z(n120) );
  GTECH_OR_NOT U115 ( .A(n127), .B(n83), .Z(n123) );
  GTECH_OR_NOT U116 ( .A(n90), .B(n13), .Z(n83) );
  GTECH_AND2 U117 ( .A(n128), .B(n129), .Z(n90) );
  GTECH_MUX2 U118 ( .A(n125), .B(n126), .S(Mcand[1]), .Z(n127) );
  GTECH_AO22 U119 ( .A(n87), .B(n104), .C(n122), .D(n102), .Z(n126) );
  GTECH_NOT U120 ( .A(n105), .Z(n102) );
  GTECH_NOT U121 ( .A(n106), .Z(n104) );
  GTECH_AOI21 U122 ( .A(n106), .B(n122), .C(n130), .Z(n125) );
  GTECH_OA21 U123 ( .A(n87), .B(n106), .C(n105), .Z(n130) );
  GTECH_OR2 U124 ( .A(n13), .B(n128), .Z(n105) );
  GTECH_AND2 U125 ( .A(Mcand[0]), .B(n80), .Z(n87) );
  GTECH_AND2 U126 ( .A(n89), .B(Mcand[0]), .Z(n122) );
  GTECH_NOT U127 ( .A(n80), .Z(n89) );
  GTECH_OR2 U128 ( .A(n13), .B(n129), .Z(n106) );
  GTECH_OAI21 U129 ( .A(n128), .B(n131), .C(n129), .Z(N42) );
  GTECH_OR_NOT U130 ( .A(n81), .B(n132), .Z(n131) );
  GTECH_OA21 U131 ( .A(n12), .B(n81), .C(n93), .Z(N41) );
  GTECH_OAI21 U132 ( .A(n91), .B(n92), .C(n133), .Z(N40) );
  GTECH_OA21 U133 ( .A(n134), .B(n128), .C(n129), .Z(n133) );
  GTECH_NOT U134 ( .A(n94), .Z(n129) );
  GTECH_AND3 U135 ( .A(n12), .B(n135), .C(n81), .Z(n94) );
  GTECH_NOT U136 ( .A(n93), .Z(n128) );
  GTECH_OA21 U137 ( .A(n132), .B(n134), .C(n82), .Z(n93) );
  GTECH_NOT U138 ( .A(n12), .Z(n132) );
  GTECH_NOT U139 ( .A(St), .Z(n92) );
  GTECH_NOT U140 ( .A(n85), .Z(n91) );
  GTECH_AND3 U141 ( .A(n81), .B(n12), .C(n82), .Z(n85) );
  GTECH_AND3 U142 ( .A(n134), .B(n135), .C(n12), .Z(Done) );
  GTECH_NOT U143 ( .A(n82), .Z(n135) );
  GTECH_NOT U144 ( .A(n81), .Z(n134) );
endmodule

