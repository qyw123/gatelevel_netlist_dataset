
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n68, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n12) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n79) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n80) );
  GTECH_FJK1S B_reg_0_ ( .J(n68), .K(n68), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n78) );
  GTECH_FJK1S A_reg_3_ ( .J(n68), .K(n68), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n13) );
  GTECH_FJK1S A_reg_0_ ( .J(n68), .K(n68), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n77) );
  GTECH_FJK1S A_reg_1_ ( .J(n68), .K(n68), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n76) );
  GTECH_FJK1S A_reg_2_ ( .J(n68), .K(n68), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n14) );
  GTECH_FJK1S B_reg_3_ ( .J(n68), .K(n68), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n15) );
  GTECH_FJK1S B_reg_2_ ( .J(n68), .K(n68), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n16) );
  GTECH_FJK1S B_reg_1_ ( .J(n68), .K(n68), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n17) );
  GTECH_ZERO U75 ( .Z(n68) );
  GTECH_AND2 U76 ( .A(N57), .B(n81), .Z(N63) );
  GTECH_NOT U77 ( .A(n82), .Z(N58) );
  GTECH_AOI222 U78 ( .A(Mplier[3]), .B(n83), .C(n84), .D(n85), .E(n86), .F(n87), .Z(n82) );
  GTECH_OAI21 U79 ( .A(Mcand[0]), .B(n88), .C(n81), .Z(n86) );
  GTECH_NOR2 U80 ( .A(n88), .B(n78), .Z(n84) );
  GTECH_OAI21 U81 ( .A(n89), .B(n90), .C(n88), .Z(N57) );
  GTECH_OAI2N2 U82 ( .A(n15), .B(n88), .C(Mplier[2]), .D(n83), .Z(N56) );
  GTECH_OAI2N2 U83 ( .A(n16), .B(n88), .C(Mplier[1]), .D(n83), .Z(N54) );
  GTECH_OAI2N2 U84 ( .A(n17), .B(n88), .C(Mplier[0]), .D(n83), .Z(N52) );
  GTECH_MUX2 U85 ( .A(n91), .B(n92), .S(n93), .Z(N50) );
  GTECH_MUX2 U86 ( .A(n94), .B(n95), .S(n13), .Z(N48) );
  GTECH_MUX2 U87 ( .A(n96), .B(n97), .S(Mcand[3]), .Z(n95) );
  GTECH_OR2 U88 ( .A(n98), .B(n99), .Z(n94) );
  GTECH_MUX2 U89 ( .A(n96), .B(n97), .S(n93), .Z(n98) );
  GTECH_NOT U90 ( .A(Mcand[3]), .Z(n93) );
  GTECH_AO22 U91 ( .A(n100), .B(n101), .C(n102), .D(n103), .Z(n97) );
  GTECH_OAI22 U92 ( .A(n100), .B(n104), .C(n102), .D(n105), .Z(n96) );
  GTECH_OA21 U93 ( .A(n106), .B(n107), .C(n108), .Z(n102) );
  GTECH_OAI21 U94 ( .A(Mcand[2]), .B(n109), .C(n14), .Z(n108) );
  GTECH_OA21 U95 ( .A(n110), .B(n107), .C(n111), .Z(n100) );
  GTECH_AO21 U96 ( .A(n107), .B(n110), .C(n14), .Z(n111) );
  GTECH_MUX2 U97 ( .A(n112), .B(n113), .S(n14), .Z(N46) );
  GTECH_NOT U98 ( .A(n114), .Z(n113) );
  GTECH_MUX2 U99 ( .A(n115), .B(n116), .S(Mcand[2]), .Z(n114) );
  GTECH_NAND2 U100 ( .A(n117), .B(n81), .Z(n112) );
  GTECH_NOT U101 ( .A(n99), .Z(n81) );
  GTECH_MUX2 U102 ( .A(n115), .B(n116), .S(n107), .Z(n117) );
  GTECH_NOT U103 ( .A(Mcand[2]), .Z(n107) );
  GTECH_AOI2N2 U104 ( .A(n110), .B(n101), .C(n109), .D(n105), .Z(n116) );
  GTECH_AOI2N2 U105 ( .A(n109), .B(n103), .C(n110), .D(n104), .Z(n115) );
  GTECH_ADD_ABC U106 ( .A(n118), .B(n119), .C(n76), .COUT(n110) );
  GTECH_NOT U107 ( .A(n120), .Z(n119) );
  GTECH_AND2 U108 ( .A(Mcand[0]), .B(n87), .Z(n120) );
  GTECH_NOT U109 ( .A(n106), .Z(n109) );
  GTECH_ADD_ABC U110 ( .A(n121), .B(n118), .C(n122), .COUT(n106) );
  GTECH_NOT U111 ( .A(n76), .Z(n122) );
  GTECH_NAND2 U112 ( .A(n77), .B(Mcand[0]), .Z(n121) );
  GTECH_MUX2 U113 ( .A(n123), .B(n124), .S(n76), .Z(N44) );
  GTECH_MUX2 U114 ( .A(n125), .B(n126), .S(n118), .Z(n124) );
  GTECH_NOT U115 ( .A(Mcand[1]), .Z(n118) );
  GTECH_OR2 U116 ( .A(n127), .B(n99), .Z(n123) );
  GTECH_AND2 U117 ( .A(n78), .B(n128), .Z(n99) );
  GTECH_NOT U118 ( .A(n88), .Z(n128) );
  GTECH_AND2 U119 ( .A(n129), .B(n130), .Z(n88) );
  GTECH_MUX2 U120 ( .A(n125), .B(n126), .S(Mcand[1]), .Z(n127) );
  GTECH_OAI2N2 U121 ( .A(n131), .B(n104), .C(n85), .D(n103), .Z(n126) );
  GTECH_NOT U122 ( .A(n105), .Z(n103) );
  GTECH_OAI2N2 U123 ( .A(n85), .B(n105), .C(n131), .D(n101), .Z(n125) );
  GTECH_NOT U124 ( .A(n104), .Z(n101) );
  GTECH_OR2 U125 ( .A(n130), .B(n78), .Z(n104) );
  GTECH_NAND2 U126 ( .A(Mcand[0]), .B(n87), .Z(n131) );
  GTECH_NOT U127 ( .A(n77), .Z(n87) );
  GTECH_OR2 U128 ( .A(n129), .B(n78), .Z(n105) );
  GTECH_AND2 U129 ( .A(n77), .B(Mcand[0]), .Z(n85) );
  GTECH_NAND2 U130 ( .A(n129), .B(n132), .Z(N42) );
  GTECH_NAND3 U131 ( .A(n133), .B(n134), .C(n91), .Z(n132) );
  GTECH_OA21 U132 ( .A(n12), .B(n80), .C(n91), .Z(N41) );
  GTECH_OAI21 U133 ( .A(n89), .B(n90), .C(n135), .Z(N40) );
  GTECH_OA21 U134 ( .A(n133), .B(n130), .C(n129), .Z(n135) );
  GTECH_NOT U135 ( .A(n92), .Z(n129) );
  GTECH_AND3 U136 ( .A(n12), .B(n136), .C(n80), .Z(n92) );
  GTECH_NOT U137 ( .A(n91), .Z(n130) );
  GTECH_OA21 U138 ( .A(n133), .B(n134), .C(n79), .Z(n91) );
  GTECH_NOT U139 ( .A(n80), .Z(n134) );
  GTECH_NOT U140 ( .A(St), .Z(n90) );
  GTECH_NOT U141 ( .A(n83), .Z(n89) );
  GTECH_AND3 U142 ( .A(n80), .B(n12), .C(n79), .Z(n83) );
  GTECH_AND3 U143 ( .A(n133), .B(n136), .C(n80), .Z(Done) );
  GTECH_NOT U144 ( .A(n79), .Z(n136) );
  GTECH_NOT U145 ( .A(n12), .Z(n133) );
endmodule

