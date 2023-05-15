
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n18, n19, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n12) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n13) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n82) );
  GTECH_FJK1S B_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n14) );
  GTECH_FJK1S A_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n15) );
  GTECH_FJK1S A_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n81) );
  GTECH_FJK1S A_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n80) );
  GTECH_FJK1S A_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n16) );
  GTECH_FJK1S B_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n17) );
  GTECH_FJK1S B_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n18) );
  GTECH_FJK1S B_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n19) );
  GTECH_AND2 U77 ( .A(N57), .B(n83), .Z(N63) );
  GTECH_NOT U78 ( .A(n84), .Z(N58) );
  GTECH_AOI222 U79 ( .A(Mplier[3]), .B(n85), .C(n86), .D(n87), .E(n88), .F(n89), .Z(n84) );
  GTECH_OAI21 U80 ( .A(Mcand[0]), .B(n90), .C(n83), .Z(n88) );
  GTECH_AND_NOT U81 ( .A(n91), .B(n14), .Z(n86) );
  GTECH_AO21 U82 ( .A(n85), .B(St), .C(n91), .Z(N57) );
  GTECH_NOT U83 ( .A(n90), .Z(n91) );
  GTECH_OAI2N2 U84 ( .A(n17), .B(n90), .C(Mplier[2]), .D(n85), .Z(N56) );
  GTECH_OAI2N2 U85 ( .A(n18), .B(n90), .C(Mplier[1]), .D(n85), .Z(N54) );
  GTECH_OAI2N2 U86 ( .A(n19), .B(n90), .C(Mplier[0]), .D(n85), .Z(N52) );
  GTECH_MUX2 U87 ( .A(n92), .B(n93), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U88 ( .A(n94), .B(n95), .S(n15), .Z(N48) );
  GTECH_MUX2 U89 ( .A(n96), .B(n97), .S(Mcand[3]), .Z(n95) );
  GTECH_OR2 U90 ( .A(n98), .B(n99), .Z(n94) );
  GTECH_MUX2 U91 ( .A(n97), .B(n96), .S(Mcand[3]), .Z(n98) );
  GTECH_OAI2N2 U92 ( .A(n100), .B(n101), .C(n102), .D(n103), .Z(n96) );
  GTECH_OAI2N2 U93 ( .A(n102), .B(n104), .C(n100), .D(n105), .Z(n97) );
  GTECH_OA21 U94 ( .A(n106), .B(n107), .C(n108), .Z(n100) );
  GTECH_AO21 U95 ( .A(n107), .B(n106), .C(n109), .Z(n108) );
  GTECH_OAI21 U96 ( .A(n110), .B(n107), .C(n111), .Z(n102) );
  GTECH_OAI21 U97 ( .A(Mcand[2]), .B(n112), .C(n109), .Z(n111) );
  GTECH_MUX2 U98 ( .A(n113), .B(n114), .S(n109), .Z(N46) );
  GTECH_NOT U99 ( .A(n16), .Z(n109) );
  GTECH_NAND2 U100 ( .A(n115), .B(n83), .Z(n114) );
  GTECH_NOT U101 ( .A(n99), .Z(n83) );
  GTECH_MUX2 U102 ( .A(n116), .B(n117), .S(n107), .Z(n115) );
  GTECH_NOT U103 ( .A(Mcand[2]), .Z(n107) );
  GTECH_NOT U104 ( .A(n118), .Z(n113) );
  GTECH_MUX2 U105 ( .A(n116), .B(n117), .S(Mcand[2]), .Z(n118) );
  GTECH_AOI22 U106 ( .A(n106), .B(n105), .C(n110), .D(n103), .Z(n117) );
  GTECH_NOT U107 ( .A(n112), .Z(n110) );
  GTECH_AOI2N2 U108 ( .A(n112), .B(n103), .C(n106), .D(n101), .Z(n116) );
  GTECH_ADD_ABC U109 ( .A(n119), .B(n120), .C(n121), .COUT(n106) );
  GTECH_NAND2 U110 ( .A(Mcand[0]), .B(n81), .Z(n119) );
  GTECH_ADD_ABC U111 ( .A(Mcand[1]), .B(n122), .C(n121), .COUT(n112) );
  GTECH_NOT U112 ( .A(n80), .Z(n121) );
  GTECH_AND2 U113 ( .A(Mcand[0]), .B(n89), .Z(n122) );
  GTECH_MUX2 U114 ( .A(n123), .B(n124), .S(n80), .Z(N44) );
  GTECH_MUX2 U115 ( .A(n125), .B(n126), .S(n120), .Z(n124) );
  GTECH_OR2 U116 ( .A(n127), .B(n99), .Z(n123) );
  GTECH_AND_NOT U117 ( .A(n14), .B(n90), .Z(n99) );
  GTECH_AND_NOT U118 ( .A(n128), .B(n93), .Z(n90) );
  GTECH_MUX2 U119 ( .A(n126), .B(n125), .S(n120), .Z(n127) );
  GTECH_NOT U120 ( .A(Mcand[1]), .Z(n120) );
  GTECH_OA21 U121 ( .A(n105), .B(n129), .C(n130), .Z(n125) );
  GTECH_OAI21 U122 ( .A(n87), .B(n101), .C(n104), .Z(n130) );
  GTECH_NOT U123 ( .A(n105), .Z(n101) );
  GTECH_OAI2N2 U124 ( .A(n129), .B(n104), .C(n87), .D(n105), .Z(n126) );
  GTECH_AND_NOT U125 ( .A(n92), .B(n14), .Z(n105) );
  GTECH_AND_NOT U126 ( .A(Mcand[0]), .B(n89), .Z(n87) );
  GTECH_NOT U127 ( .A(n103), .Z(n104) );
  GTECH_AND_NOT U128 ( .A(n93), .B(n14), .Z(n103) );
  GTECH_NAND2 U129 ( .A(n89), .B(Mcand[0]), .Z(n129) );
  GTECH_NOT U130 ( .A(n81), .Z(n89) );
  GTECH_NAND2 U131 ( .A(n131), .B(n128), .Z(N42) );
  GTECH_NAND3 U132 ( .A(n132), .B(n133), .C(n93), .Z(n131) );
  GTECH_OA21 U133 ( .A(n12), .B(n82), .C(n93), .Z(N41) );
  GTECH_AO21 U134 ( .A(n85), .B(St), .C(n134), .Z(N40) );
  GTECH_AO21 U135 ( .A(n12), .B(n93), .C(n92), .Z(n134) );
  GTECH_NOT U136 ( .A(n128), .Z(n92) );
  GTECH_OR3 U137 ( .A(n132), .B(n13), .C(n133), .Z(n128) );
  GTECH_OA21 U138 ( .A(n132), .B(n133), .C(n13), .Z(n93) );
  GTECH_NOT U139 ( .A(n12), .Z(n132) );
  GTECH_AND3 U140 ( .A(n82), .B(n12), .C(n13), .Z(n85) );
  GTECH_NOR3 U141 ( .A(n12), .B(n13), .C(n133), .Z(Done) );
  GTECH_NOT U142 ( .A(n82), .Z(n133) );
endmodule

