
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63, n12,
         n13, n14, n16, n17, n18, n71, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n12) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n13) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n83) );
  GTECH_FJK1S B_reg_0_ ( .J(n71), .K(n71), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n14) );
  GTECH_FJK1S A_reg_3_ ( .J(n71), .K(n71), .TI(N50), .TE(N63), .CP(CLK), .QN(
        n79) );
  GTECH_FJK1S A_reg_0_ ( .J(n71), .K(n71), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n82) );
  GTECH_FJK1S A_reg_1_ ( .J(n71), .K(n71), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n81) );
  GTECH_FJK1S A_reg_2_ ( .J(n71), .K(n71), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n80) );
  GTECH_FJK1S B_reg_3_ ( .J(n71), .K(n71), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n16) );
  GTECH_FJK1S B_reg_2_ ( .J(n71), .K(n71), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n17) );
  GTECH_FJK1S B_reg_1_ ( .J(n71), .K(n71), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n18) );
  GTECH_ZERO U77 ( .Z(n71) );
  GTECH_AND_NOT U78 ( .A(N57), .B(n84), .Z(N63) );
  GTECH_NOT U79 ( .A(n85), .Z(N58) );
  GTECH_AOI222 U80 ( .A(Mplier[3]), .B(n86), .C(n87), .D(n88), .E(n89), .F(n90), .Z(n85) );
  GTECH_OAI21 U81 ( .A(Mcand[0]), .B(n91), .C(n92), .Z(n89) );
  GTECH_NOR2 U82 ( .A(n14), .B(n91), .Z(n87) );
  GTECH_OAI21 U83 ( .A(n93), .B(n94), .C(n91), .Z(N57) );
  GTECH_OAI2N2 U84 ( .A(n16), .B(n91), .C(Mplier[2]), .D(n86), .Z(N56) );
  GTECH_OAI2N2 U85 ( .A(n17), .B(n91), .C(Mplier[1]), .D(n86), .Z(N54) );
  GTECH_OAI2N2 U86 ( .A(n18), .B(n91), .C(Mplier[0]), .D(n86), .Z(N52) );
  GTECH_MUX2 U87 ( .A(n95), .B(n96), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U88 ( .A(n97), .B(n98), .S(n79), .Z(N48) );
  GTECH_MUX2 U89 ( .A(n99), .B(n100), .S(Mcand[3]), .Z(n98) );
  GTECH_OR2 U90 ( .A(n84), .B(n101), .Z(n97) );
  GTECH_MUX2 U91 ( .A(n100), .B(n99), .S(Mcand[3]), .Z(n101) );
  GTECH_AO22 U92 ( .A(n102), .B(n103), .C(n104), .D(n105), .Z(n99) );
  GTECH_OAI22 U93 ( .A(n102), .B(n106), .C(n104), .D(n107), .Z(n100) );
  GTECH_OA21 U94 ( .A(Mcand[2]), .B(n108), .C(n109), .Z(n104) );
  GTECH_AO21 U95 ( .A(n108), .B(Mcand[2]), .C(n80), .Z(n109) );
  GTECH_ADD_ABC U96 ( .A(Mcand[2]), .B(n110), .C(n111), .COUT(n102) );
  GTECH_NOT U97 ( .A(n80), .Z(n111) );
  GTECH_AOI21 U98 ( .A(n112), .B(n81), .C(n113), .Z(n110) );
  GTECH_MUX2 U99 ( .A(n114), .B(n115), .S(n80), .Z(N46) );
  GTECH_MUX2 U100 ( .A(n116), .B(n117), .S(Mcand[2]), .Z(n115) );
  GTECH_OR2 U101 ( .A(n118), .B(n84), .Z(n114) );
  GTECH_MUX2 U102 ( .A(n117), .B(n116), .S(Mcand[2]), .Z(n118) );
  GTECH_OAI2N2 U103 ( .A(n119), .B(n106), .C(n108), .D(n105), .Z(n116) );
  GTECH_OAI2N2 U104 ( .A(n108), .B(n107), .C(n119), .D(n103), .Z(n117) );
  GTECH_AO21 U105 ( .A(n112), .B(n81), .C(n113), .Z(n119) );
  GTECH_NOT U106 ( .A(n120), .Z(n113) );
  GTECH_OAI2N2 U107 ( .A(n81), .B(n112), .C(n90), .D(Mcand[0]), .Z(n120) );
  GTECH_ADD_ABC U108 ( .A(n121), .B(Mcand[1]), .C(n81), .COUT(n108) );
  GTECH_AND2 U109 ( .A(Mcand[0]), .B(n82), .Z(n121) );
  GTECH_MUX2 U110 ( .A(n122), .B(n123), .S(n81), .Z(N44) );
  GTECH_NOT U111 ( .A(n124), .Z(n123) );
  GTECH_MUX2 U112 ( .A(n125), .B(n126), .S(n112), .Z(n124) );
  GTECH_NOT U113 ( .A(Mcand[1]), .Z(n112) );
  GTECH_NAND2 U114 ( .A(n127), .B(n92), .Z(n122) );
  GTECH_NOT U115 ( .A(n84), .Z(n92) );
  GTECH_AND_NOT U116 ( .A(n14), .B(n91), .Z(n84) );
  GTECH_AND_NOT U117 ( .A(n128), .B(n95), .Z(n91) );
  GTECH_MUX2 U118 ( .A(n125), .B(n126), .S(Mcand[1]), .Z(n127) );
  GTECH_AOI21 U119 ( .A(n88), .B(n105), .C(n129), .Z(n126) );
  GTECH_AND3 U120 ( .A(Mcand[0]), .B(n90), .C(n103), .Z(n129) );
  GTECH_NAND2 U121 ( .A(n130), .B(n131), .Z(n125) );
  GTECH_NAND3 U122 ( .A(n107), .B(n90), .C(Mcand[0]), .Z(n131) );
  GTECH_OAI21 U123 ( .A(n88), .B(n107), .C(n106), .Z(n130) );
  GTECH_NOT U124 ( .A(n103), .Z(n106) );
  GTECH_NOR2 U125 ( .A(n128), .B(n14), .Z(n103) );
  GTECH_NOT U126 ( .A(n105), .Z(n107) );
  GTECH_NOR2 U127 ( .A(n132), .B(n14), .Z(n105) );
  GTECH_AND_NOT U128 ( .A(Mcand[0]), .B(n90), .Z(n88) );
  GTECH_NOT U129 ( .A(n82), .Z(n90) );
  GTECH_NAND2 U130 ( .A(n133), .B(n132), .Z(N42) );
  GTECH_NAND3 U131 ( .A(n134), .B(n135), .C(n96), .Z(n133) );
  GTECH_OA21 U132 ( .A(n12), .B(n83), .C(n96), .Z(N41) );
  GTECH_OAI21 U133 ( .A(n93), .B(n94), .C(n136), .Z(N40) );
  GTECH_OA21 U134 ( .A(n134), .B(n128), .C(n132), .Z(n136) );
  GTECH_NOT U135 ( .A(n95), .Z(n132) );
  GTECH_NOR3 U136 ( .A(n134), .B(n13), .C(n135), .Z(n95) );
  GTECH_NOT U137 ( .A(n96), .Z(n128) );
  GTECH_AOI21 U138 ( .A(n12), .B(n83), .C(n137), .Z(n96) );
  GTECH_NOT U139 ( .A(St), .Z(n94) );
  GTECH_NOT U140 ( .A(n86), .Z(n93) );
  GTECH_NOR3 U141 ( .A(n135), .B(n134), .C(n137), .Z(n86) );
  GTECH_NOT U142 ( .A(n83), .Z(n135) );
  GTECH_AND3 U143 ( .A(n134), .B(n137), .C(n83), .Z(Done) );
  GTECH_NOT U144 ( .A(n13), .Z(n137) );
  GTECH_NOT U145 ( .A(n12), .Z(n134) );
endmodule

