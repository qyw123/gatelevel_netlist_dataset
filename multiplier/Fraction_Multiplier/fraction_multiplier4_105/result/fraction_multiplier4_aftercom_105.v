
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63, n12,
         n14, n15, n16, n17, n18, n19, n73, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n82) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n84) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n83) );
  GTECH_FJK1S B_reg_0_ ( .J(n73), .K(n73), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n12) );
  GTECH_FJK1S A_reg_3_ ( .J(n73), .K(n73), .TI(N50), .TE(N63), .CP(CLK), .QN(
        n81) );
  GTECH_FJK1S A_reg_0_ ( .J(n73), .K(n73), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n14) );
  GTECH_FJK1S A_reg_1_ ( .J(n73), .K(n73), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n15) );
  GTECH_FJK1S A_reg_2_ ( .J(n73), .K(n73), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n16) );
  GTECH_FJK1S B_reg_3_ ( .J(n73), .K(n73), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n17) );
  GTECH_FJK1S B_reg_2_ ( .J(n73), .K(n73), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n18) );
  GTECH_FJK1S B_reg_1_ ( .J(n73), .K(n73), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n19) );
  GTECH_ZERO U78 ( .Z(n73) );
  GTECH_ADD_AB U79 ( .A(n85), .B(N57), .COUT(N63) );
  GTECH_NOT U80 ( .A(n86), .Z(N58) );
  GTECH_AOI222 U81 ( .A(Mplier[3]), .B(n87), .C(n88), .D(n89), .E(n90), .F(n91), .Z(n86) );
  GTECH_OAI21 U82 ( .A(Mcand[0]), .B(n92), .C(n85), .Z(n90) );
  GTECH_NOR2 U83 ( .A(n92), .B(n12), .Z(n88) );
  GTECH_OAI21 U84 ( .A(n93), .B(n94), .C(n92), .Z(N57) );
  GTECH_OAI2N2 U85 ( .A(n17), .B(n92), .C(Mplier[2]), .D(n87), .Z(N56) );
  GTECH_OAI2N2 U86 ( .A(n18), .B(n92), .C(Mplier[1]), .D(n87), .Z(N54) );
  GTECH_OAI2N2 U87 ( .A(n19), .B(n92), .C(Mplier[0]), .D(n87), .Z(N52) );
  GTECH_MUX2 U88 ( .A(n95), .B(n96), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U89 ( .A(n97), .B(n98), .S(n81), .Z(N48) );
  GTECH_MUX2 U90 ( .A(n99), .B(n100), .S(Mcand[3]), .Z(n98) );
  GTECH_OR_NOT U91 ( .A(n101), .B(n85), .Z(n97) );
  GTECH_MUX2 U92 ( .A(n100), .B(n99), .S(Mcand[3]), .Z(n101) );
  GTECH_OAI2N2 U93 ( .A(n102), .B(n103), .C(n104), .D(n105), .Z(n99) );
  GTECH_OAI2N2 U94 ( .A(n104), .B(n106), .C(n107), .D(n102), .Z(n100) );
  GTECH_OA21 U95 ( .A(n108), .B(n109), .C(n110), .Z(n102) );
  GTECH_AO21 U96 ( .A(n109), .B(n108), .C(n16), .Z(n110) );
  GTECH_NOT U97 ( .A(Mcand[2]), .Z(n109) );
  GTECH_ADD_ABC U98 ( .A(Mcand[2]), .B(n111), .C(n16), .COUT(n104) );
  GTECH_MUX2 U99 ( .A(n112), .B(n113), .S(n16), .Z(N46) );
  GTECH_NOT U100 ( .A(n114), .Z(n113) );
  GTECH_MUX2 U101 ( .A(n115), .B(n116), .S(Mcand[2]), .Z(n114) );
  GTECH_NAND2 U102 ( .A(n117), .B(n85), .Z(n112) );
  GTECH_MUX2 U103 ( .A(n116), .B(n115), .S(Mcand[2]), .Z(n117) );
  GTECH_AOI2N2 U104 ( .A(n111), .B(n105), .C(n108), .D(n103), .Z(n115) );
  GTECH_AOI2N2 U105 ( .A(n108), .B(n107), .C(n111), .D(n106), .Z(n116) );
  GTECH_ADD_ABC U106 ( .A(Mcand[1]), .B(n89), .C(n15), .COUT(n111) );
  GTECH_OA21 U107 ( .A(n15), .B(n118), .C(n119), .Z(n108) );
  GTECH_OR3 U108 ( .A(n120), .B(n14), .C(n121), .Z(n119) );
  GTECH_NAND2 U109 ( .A(n122), .B(n123), .Z(N44) );
  GTECH_MUX2 U110 ( .A(n124), .B(n125), .S(n15), .Z(n123) );
  GTECH_OR_NOT U111 ( .A(n118), .B(n126), .Z(n125) );
  GTECH_AND_NOT U112 ( .A(n85), .B(n127), .Z(n124) );
  GTECH_MUX2 U113 ( .A(n128), .B(n126), .S(n118), .Z(n127) );
  GTECH_OAI21 U114 ( .A(n89), .B(n106), .C(n129), .Z(n126) );
  GTECH_AO21 U115 ( .A(n91), .B(Mcand[0]), .C(n103), .Z(n129) );
  GTECH_NOT U116 ( .A(n105), .Z(n106) );
  GTECH_AND_NOT U117 ( .A(Mcand[0]), .B(n91), .Z(n89) );
  GTECH_NOT U118 ( .A(n14), .Z(n91) );
  GTECH_AND_NOT U119 ( .A(n130), .B(n121), .Z(n128) );
  GTECH_NOT U120 ( .A(Mcand[0]), .Z(n121) );
  GTECH_OR_NOT U121 ( .A(n92), .B(n12), .Z(n85) );
  GTECH_NOR2 U122 ( .A(n95), .B(n96), .Z(n92) );
  GTECH_NAND3 U123 ( .A(Mcand[0]), .B(n130), .C(n120), .Z(n122) );
  GTECH_ADD_AB U124 ( .A(n15), .B(n118), .COUT(n120) );
  GTECH_NOT U125 ( .A(Mcand[1]), .Z(n118) );
  GTECH_MUX2 U126 ( .A(n107), .B(n105), .S(n14), .Z(n130) );
  GTECH_NOR2 U127 ( .A(n131), .B(n12), .Z(n105) );
  GTECH_NOT U128 ( .A(n95), .Z(n131) );
  GTECH_NOT U129 ( .A(n103), .Z(n107) );
  GTECH_OR_NOT U130 ( .A(n12), .B(n96), .Z(n103) );
  GTECH_OR_NOT U131 ( .A(n95), .B(n132), .Z(N42) );
  GTECH_NAND3 U132 ( .A(n133), .B(n134), .C(n96), .Z(n132) );
  GTECH_OA21 U133 ( .A(n82), .B(n83), .C(n96), .Z(N41) );
  GTECH_OAI21 U134 ( .A(n93), .B(n94), .C(n135), .Z(N40) );
  GTECH_AOI21 U135 ( .A(n82), .B(n96), .C(n95), .Z(n135) );
  GTECH_NOR3 U136 ( .A(n133), .B(n84), .C(n134), .Z(n95) );
  GTECH_AOI21 U137 ( .A(n82), .B(n83), .C(n136), .Z(n96) );
  GTECH_NOT U138 ( .A(St), .Z(n94) );
  GTECH_NOT U139 ( .A(n87), .Z(n93) );
  GTECH_NOR3 U140 ( .A(n134), .B(n133), .C(n136), .Z(n87) );
  GTECH_NOT U141 ( .A(n84), .Z(n136) );
  GTECH_NOT U142 ( .A(n82), .Z(n133) );
  GTECH_NOR3 U143 ( .A(n82), .B(n84), .C(n134), .Z(Done) );
  GTECH_NOT U144 ( .A(n83), .Z(n134) );
endmodule

