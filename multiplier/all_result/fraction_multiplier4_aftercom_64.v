
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n18, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n12) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n13) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n85) );
  GTECH_FJK1S B_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n84) );
  GTECH_FJK1S A_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n14) );
  GTECH_FJK1S A_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n83) );
  GTECH_FJK1S A_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n82) );
  GTECH_FJK1S A_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n15) );
  GTECH_FJK1S B_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n16) );
  GTECH_FJK1S B_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n17) );
  GTECH_FJK1S B_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n18) );
  GTECH_AND2 U80 ( .A(N57), .B(n86), .Z(N63) );
  GTECH_NOT U81 ( .A(n87), .Z(N58) );
  GTECH_AOI222 U82 ( .A(Mplier[3]), .B(n88), .C(n89), .D(n90), .E(n91), .F(n92), .Z(n87) );
  GTECH_OAI21 U83 ( .A(Mcand[0]), .B(n93), .C(n86), .Z(n91) );
  GTECH_NOR2 U84 ( .A(n93), .B(n84), .Z(n89) );
  GTECH_OAI21 U85 ( .A(n94), .B(n95), .C(n93), .Z(N57) );
  GTECH_OAI2N2 U86 ( .A(n16), .B(n93), .C(Mplier[2]), .D(n88), .Z(N56) );
  GTECH_OAI2N2 U87 ( .A(n17), .B(n93), .C(Mplier[1]), .D(n88), .Z(N54) );
  GTECH_OAI2N2 U88 ( .A(n18), .B(n93), .C(Mplier[0]), .D(n88), .Z(N52) );
  GTECH_NOT U89 ( .A(n94), .Z(n88) );
  GTECH_MUX2 U90 ( .A(n96), .B(n97), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U91 ( .A(n98), .B(n99), .S(n14), .Z(N48) );
  GTECH_MUX2 U92 ( .A(n100), .B(n101), .S(n102), .Z(n99) );
  GTECH_NOT U93 ( .A(Mcand[3]), .Z(n102) );
  GTECH_OR_NOT U94 ( .A(n103), .B(n86), .Z(n98) );
  GTECH_MUX2 U95 ( .A(n100), .B(n101), .S(Mcand[3]), .Z(n103) );
  GTECH_OAI22 U96 ( .A(n104), .B(n105), .C(n106), .D(n107), .Z(n101) );
  GTECH_AO22 U97 ( .A(n108), .B(n104), .C(n109), .D(n106), .Z(n100) );
  GTECH_OA21 U98 ( .A(n110), .B(n111), .C(n112), .Z(n106) );
  GTECH_OAI21 U99 ( .A(Mcand[2]), .B(n113), .C(n15), .Z(n112) );
  GTECH_AOI21 U100 ( .A(n114), .B(Mcand[2]), .C(n115), .Z(n104) );
  GTECH_OA21 U101 ( .A(Mcand[2]), .B(n114), .C(n116), .Z(n115) );
  GTECH_NOT U102 ( .A(n15), .Z(n116) );
  GTECH_MUX2 U103 ( .A(n117), .B(n118), .S(n15), .Z(N46) );
  GTECH_NOT U104 ( .A(n119), .Z(n118) );
  GTECH_MUX2 U105 ( .A(n120), .B(n121), .S(n111), .Z(n119) );
  GTECH_NOT U106 ( .A(Mcand[2]), .Z(n111) );
  GTECH_NAND2 U107 ( .A(n122), .B(n86), .Z(n117) );
  GTECH_MUX2 U108 ( .A(n120), .B(n121), .S(Mcand[2]), .Z(n122) );
  GTECH_AOI2N2 U109 ( .A(n114), .B(n108), .C(n110), .D(n107), .Z(n121) );
  GTECH_OA22 U110 ( .A(n113), .B(n107), .C(n114), .D(n105), .Z(n120) );
  GTECH_ADD_ABC U111 ( .A(Mcand[1]), .B(n123), .C(n124), .COUT(n114) );
  GTECH_AND_NOT U112 ( .A(Mcand[0]), .B(n83), .Z(n123) );
  GTECH_NOT U113 ( .A(n110), .Z(n113) );
  GTECH_ADD_ABC U114 ( .A(n125), .B(n126), .C(n124), .COUT(n110) );
  GTECH_OR_NOT U115 ( .A(n92), .B(Mcand[0]), .Z(n125) );
  GTECH_NOT U116 ( .A(n83), .Z(n92) );
  GTECH_MUX2 U117 ( .A(n127), .B(n128), .S(n124), .Z(N44) );
  GTECH_NOT U118 ( .A(n82), .Z(n124) );
  GTECH_OR_NOT U119 ( .A(n129), .B(n86), .Z(n128) );
  GTECH_OR_NOT U120 ( .A(n93), .B(n84), .Z(n86) );
  GTECH_NOR2 U121 ( .A(n96), .B(n97), .Z(n93) );
  GTECH_MUX2 U122 ( .A(n130), .B(n131), .S(n126), .Z(n129) );
  GTECH_NOT U123 ( .A(Mcand[1]), .Z(n126) );
  GTECH_MUX2 U124 ( .A(n130), .B(n131), .S(Mcand[1]), .Z(n127) );
  GTECH_OAI2N2 U125 ( .A(n90), .B(n107), .C(n132), .D(n108), .Z(n131) );
  GTECH_NOT U126 ( .A(n105), .Z(n108) );
  GTECH_NOT U127 ( .A(n109), .Z(n107) );
  GTECH_OAI2N2 U128 ( .A(n132), .B(n105), .C(n90), .D(n109), .Z(n130) );
  GTECH_NOR2 U129 ( .A(n133), .B(n84), .Z(n109) );
  GTECH_NOT U130 ( .A(n96), .Z(n133) );
  GTECH_AND2 U131 ( .A(Mcand[0]), .B(n83), .Z(n90) );
  GTECH_OR_NOT U132 ( .A(n84), .B(n97), .Z(n105) );
  GTECH_OR_NOT U133 ( .A(n83), .B(Mcand[0]), .Z(n132) );
  GTECH_OR_NOT U134 ( .A(n96), .B(n134), .Z(N42) );
  GTECH_NAND3 U135 ( .A(n135), .B(n136), .C(n97), .Z(n134) );
  GTECH_OA21 U136 ( .A(n12), .B(n85), .C(n97), .Z(N41) );
  GTECH_OAI21 U137 ( .A(n94), .B(n95), .C(n137), .Z(N40) );
  GTECH_AOI21 U138 ( .A(n12), .B(n97), .C(n96), .Z(n137) );
  GTECH_NOR3 U139 ( .A(n135), .B(n13), .C(n136), .Z(n96) );
  GTECH_OA21 U140 ( .A(n135), .B(n136), .C(n13), .Z(n97) );
  GTECH_NOT U141 ( .A(n12), .Z(n135) );
  GTECH_NOT U142 ( .A(St), .Z(n95) );
  GTECH_NAND3 U143 ( .A(n85), .B(n12), .C(n13), .Z(n94) );
  GTECH_NOR3 U144 ( .A(n12), .B(n13), .C(n136), .Z(Done) );
  GTECH_NOT U145 ( .A(n85), .Z(n136) );
endmodule

