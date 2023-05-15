
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
         n133, n134, n135, n136;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n12) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n82) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n83) );
  GTECH_FJK1S B_reg_0_ ( .J(n72), .K(n72), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n13) );
  GTECH_FJK1S A_reg_3_ ( .J(n72), .K(n72), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n14) );
  GTECH_FJK1S A_reg_0_ ( .J(n72), .K(n72), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n81) );
  GTECH_FJK1S A_reg_1_ ( .J(n72), .K(n72), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n80) );
  GTECH_FJK1S A_reg_2_ ( .J(n72), .K(n72), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n15) );
  GTECH_FJK1S B_reg_3_ ( .J(n72), .K(n72), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n16) );
  GTECH_FJK1S B_reg_2_ ( .J(n72), .K(n72), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n17) );
  GTECH_FJK1S B_reg_1_ ( .J(n72), .K(n72), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n18) );
  GTECH_ZERO U78 ( .Z(n72) );
  GTECH_AND2 U79 ( .A(n84), .B(N57), .Z(N63) );
  GTECH_NOT U80 ( .A(n85), .Z(N58) );
  GTECH_AOI222 U81 ( .A(Mplier[3]), .B(n86), .C(n87), .D(n88), .E(n89), .F(n90), .Z(n85) );
  GTECH_OAI21 U82 ( .A(Mcand[0]), .B(n91), .C(n84), .Z(n89) );
  GTECH_NOR2 U83 ( .A(n13), .B(n91), .Z(n87) );
  GTECH_OAI21 U84 ( .A(n92), .B(n93), .C(n91), .Z(N57) );
  GTECH_OAI2N2 U85 ( .A(n16), .B(n91), .C(Mplier[2]), .D(n86), .Z(N56) );
  GTECH_OAI2N2 U86 ( .A(n17), .B(n91), .C(Mplier[1]), .D(n86), .Z(N54) );
  GTECH_OAI2N2 U87 ( .A(n18), .B(n91), .C(Mplier[0]), .D(n86), .Z(N52) );
  GTECH_MUX2 U88 ( .A(n94), .B(n95), .S(n96), .Z(N50) );
  GTECH_MUX2 U89 ( .A(n97), .B(n98), .S(n14), .Z(N48) );
  GTECH_MUX2 U90 ( .A(n99), .B(n100), .S(Mcand[3]), .Z(n98) );
  GTECH_OR_NOT U91 ( .A(n101), .B(n84), .Z(n97) );
  GTECH_MUX2 U92 ( .A(n99), .B(n100), .S(n96), .Z(n101) );
  GTECH_NOT U93 ( .A(Mcand[3]), .Z(n96) );
  GTECH_AO22 U94 ( .A(n102), .B(n103), .C(n104), .D(n105), .Z(n100) );
  GTECH_OAI22 U95 ( .A(n102), .B(n106), .C(n104), .D(n107), .Z(n99) );
  GTECH_OA21 U96 ( .A(n108), .B(n109), .C(n110), .Z(n104) );
  GTECH_AO21 U97 ( .A(n109), .B(n108), .C(n111), .Z(n110) );
  GTECH_AOI21 U98 ( .A(n112), .B(Mcand[2]), .C(n113), .Z(n102) );
  GTECH_OA21 U99 ( .A(Mcand[2]), .B(n112), .C(n111), .Z(n113) );
  GTECH_MUX2 U100 ( .A(n114), .B(n115), .S(n111), .Z(N46) );
  GTECH_NOT U101 ( .A(n15), .Z(n111) );
  GTECH_NAND2 U102 ( .A(n116), .B(n84), .Z(n115) );
  GTECH_MUX2 U103 ( .A(n117), .B(n118), .S(n109), .Z(n116) );
  GTECH_NOT U104 ( .A(Mcand[2]), .Z(n109) );
  GTECH_NOT U105 ( .A(n119), .Z(n114) );
  GTECH_MUX2 U106 ( .A(n117), .B(n118), .S(Mcand[2]), .Z(n119) );
  GTECH_AOI2N2 U107 ( .A(n108), .B(n105), .C(n112), .D(n106), .Z(n118) );
  GTECH_AOI2N2 U108 ( .A(n112), .B(n103), .C(n108), .D(n107), .Z(n117) );
  GTECH_ADD_ABC U109 ( .A(n120), .B(n121), .C(n122), .COUT(n108) );
  GTECH_NAND2 U110 ( .A(n81), .B(Mcand[0]), .Z(n120) );
  GTECH_ADD_ABC U111 ( .A(Mcand[1]), .B(n123), .C(n122), .COUT(n112) );
  GTECH_NOT U112 ( .A(n80), .Z(n122) );
  GTECH_MUX2 U113 ( .A(n124), .B(n125), .S(n80), .Z(N44) );
  GTECH_MUX2 U114 ( .A(n126), .B(n127), .S(n121), .Z(n125) );
  GTECH_NOT U115 ( .A(Mcand[1]), .Z(n121) );
  GTECH_OR_NOT U116 ( .A(n128), .B(n84), .Z(n124) );
  GTECH_OR_NOT U117 ( .A(n91), .B(n13), .Z(n84) );
  GTECH_AND2 U118 ( .A(n129), .B(n130), .Z(n91) );
  GTECH_MUX2 U119 ( .A(n126), .B(n127), .S(Mcand[1]), .Z(n128) );
  GTECH_AO22 U120 ( .A(n88), .B(n105), .C(n123), .D(n103), .Z(n127) );
  GTECH_NOT U121 ( .A(n106), .Z(n103) );
  GTECH_NOT U122 ( .A(n107), .Z(n105) );
  GTECH_AOI21 U123 ( .A(n107), .B(n123), .C(n131), .Z(n126) );
  GTECH_OA21 U124 ( .A(n88), .B(n107), .C(n106), .Z(n131) );
  GTECH_OR2 U125 ( .A(n130), .B(n13), .Z(n106) );
  GTECH_AND2 U126 ( .A(n81), .B(Mcand[0]), .Z(n88) );
  GTECH_AND2 U127 ( .A(Mcand[0]), .B(n90), .Z(n123) );
  GTECH_NOT U128 ( .A(n81), .Z(n90) );
  GTECH_OR2 U129 ( .A(n129), .B(n13), .Z(n107) );
  GTECH_NAND2 U130 ( .A(n129), .B(n132), .Z(N42) );
  GTECH_OR3 U131 ( .A(n83), .B(n12), .C(n130), .Z(n132) );
  GTECH_OA21 U132 ( .A(n12), .B(n83), .C(n94), .Z(N41) );
  GTECH_OAI21 U133 ( .A(n92), .B(n93), .C(n133), .Z(N40) );
  GTECH_OA21 U134 ( .A(n134), .B(n130), .C(n129), .Z(n133) );
  GTECH_NOT U135 ( .A(n95), .Z(n129) );
  GTECH_AND3 U136 ( .A(n135), .B(n12), .C(n83), .Z(n95) );
  GTECH_NOT U137 ( .A(n94), .Z(n130) );
  GTECH_OA21 U138 ( .A(n134), .B(n136), .C(n82), .Z(n94) );
  GTECH_NOT U139 ( .A(n83), .Z(n136) );
  GTECH_NOT U140 ( .A(St), .Z(n93) );
  GTECH_NOT U141 ( .A(n86), .Z(n92) );
  GTECH_AND3 U142 ( .A(n12), .B(n83), .C(n82), .Z(n86) );
  GTECH_AND3 U143 ( .A(n134), .B(n135), .C(n83), .Z(Done) );
  GTECH_NOT U144 ( .A(n82), .Z(n135) );
  GTECH_NOT U145 ( .A(n12), .Z(n134) );
endmodule

