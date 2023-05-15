
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n18, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n12) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n13) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n81) );
  GTECH_FJK1S B_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n80) );
  GTECH_FJK1S A_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n14) );
  GTECH_FJK1S A_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n79) );
  GTECH_FJK1S A_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n78) );
  GTECH_FJK1S A_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n15) );
  GTECH_FJK1S B_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n16) );
  GTECH_FJK1S B_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n17) );
  GTECH_FJK1S B_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n18) );
  GTECH_AND2 U76 ( .A(n82), .B(N57), .Z(N63) );
  GTECH_NOT U77 ( .A(n83), .Z(N58) );
  GTECH_AOI222 U78 ( .A(Mplier[3]), .B(n84), .C(n85), .D(n86), .E(n87), .F(n88), .Z(n83) );
  GTECH_OAI21 U79 ( .A(Mcand[0]), .B(n89), .C(n82), .Z(n87) );
  GTECH_NOR2 U80 ( .A(n89), .B(n80), .Z(n85) );
  GTECH_OAI21 U81 ( .A(n90), .B(n91), .C(n89), .Z(N57) );
  GTECH_OAI2N2 U82 ( .A(n16), .B(n89), .C(Mplier[2]), .D(n84), .Z(N56) );
  GTECH_OAI2N2 U83 ( .A(n17), .B(n89), .C(Mplier[1]), .D(n84), .Z(N54) );
  GTECH_OAI2N2 U84 ( .A(n18), .B(n89), .C(Mplier[0]), .D(n84), .Z(N52) );
  GTECH_MUX2 U85 ( .A(n92), .B(n93), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U86 ( .A(n94), .B(n95), .S(n14), .Z(N48) );
  GTECH_MUX2 U87 ( .A(n96), .B(n97), .S(Mcand[3]), .Z(n95) );
  GTECH_OR_NOT U88 ( .A(n98), .B(n82), .Z(n94) );
  GTECH_MUX2 U89 ( .A(n97), .B(n96), .S(Mcand[3]), .Z(n98) );
  GTECH_OAI2N2 U90 ( .A(n99), .B(n100), .C(n101), .D(n102), .Z(n96) );
  GTECH_NOT U91 ( .A(n103), .Z(n102) );
  GTECH_OAI2N2 U92 ( .A(n101), .B(n103), .C(n99), .D(n104), .Z(n97) );
  GTECH_OA21 U93 ( .A(n105), .B(n106), .C(n107), .Z(n99) );
  GTECH_AO21 U94 ( .A(n106), .B(n105), .C(n108), .Z(n107) );
  GTECH_NOT U95 ( .A(n15), .Z(n108) );
  GTECH_OAI21 U96 ( .A(n109), .B(n106), .C(n110), .Z(n101) );
  GTECH_AO21 U97 ( .A(n106), .B(n109), .C(n15), .Z(n110) );
  GTECH_MUX2 U98 ( .A(n111), .B(n112), .S(n15), .Z(N46) );
  GTECH_NOT U99 ( .A(n113), .Z(n112) );
  GTECH_MUX2 U100 ( .A(n114), .B(n115), .S(n106), .Z(n113) );
  GTECH_NOT U101 ( .A(Mcand[2]), .Z(n106) );
  GTECH_NAND2 U102 ( .A(n116), .B(n82), .Z(n111) );
  GTECH_MUX2 U103 ( .A(n114), .B(n115), .S(Mcand[2]), .Z(n116) );
  GTECH_OA22 U104 ( .A(n109), .B(n103), .C(n105), .D(n100), .Z(n115) );
  GTECH_NOT U105 ( .A(n117), .Z(n109) );
  GTECH_AOI2N2 U106 ( .A(n105), .B(n104), .C(n117), .D(n103), .Z(n114) );
  GTECH_ADD_ABC U107 ( .A(Mcand[1]), .B(n118), .C(n119), .COUT(n117) );
  GTECH_AND_NOT U108 ( .A(Mcand[0]), .B(n79), .Z(n118) );
  GTECH_ADD_ABC U109 ( .A(n120), .B(n121), .C(n119), .COUT(n105) );
  GTECH_NOT U110 ( .A(Mcand[1]), .Z(n121) );
  GTECH_OR_NOT U111 ( .A(n88), .B(Mcand[0]), .Z(n120) );
  GTECH_NOT U112 ( .A(n79), .Z(n88) );
  GTECH_MUX2 U113 ( .A(n122), .B(n123), .S(n119), .Z(N44) );
  GTECH_NOT U114 ( .A(n78), .Z(n119) );
  GTECH_OR_NOT U115 ( .A(n124), .B(n82), .Z(n123) );
  GTECH_OR_NOT U116 ( .A(n89), .B(n80), .Z(n82) );
  GTECH_NOR2 U117 ( .A(n92), .B(n93), .Z(n89) );
  GTECH_MUX2 U118 ( .A(n125), .B(n126), .S(Mcand[1]), .Z(n124) );
  GTECH_MUX2 U119 ( .A(n126), .B(n125), .S(Mcand[1]), .Z(n122) );
  GTECH_OA21 U120 ( .A(n104), .B(n127), .C(n128), .Z(n125) );
  GTECH_OAI21 U121 ( .A(n86), .B(n100), .C(n103), .Z(n128) );
  GTECH_NOT U122 ( .A(n104), .Z(n100) );
  GTECH_OAI2N2 U123 ( .A(n127), .B(n103), .C(n86), .D(n104), .Z(n126) );
  GTECH_NOR2 U124 ( .A(n129), .B(n80), .Z(n104) );
  GTECH_NOT U125 ( .A(n92), .Z(n129) );
  GTECH_AND2 U126 ( .A(Mcand[0]), .B(n79), .Z(n86) );
  GTECH_OR_NOT U127 ( .A(n80), .B(n93), .Z(n103) );
  GTECH_OR_NOT U128 ( .A(n79), .B(Mcand[0]), .Z(n127) );
  GTECH_OR_NOT U129 ( .A(n92), .B(n130), .Z(N42) );
  GTECH_NAND3 U130 ( .A(n131), .B(n132), .C(n93), .Z(n130) );
  GTECH_OA21 U131 ( .A(n12), .B(n81), .C(n93), .Z(N41) );
  GTECH_OAI21 U132 ( .A(n90), .B(n91), .C(n133), .Z(N40) );
  GTECH_AOI21 U133 ( .A(n12), .B(n93), .C(n92), .Z(n133) );
  GTECH_NOR3 U134 ( .A(n131), .B(n13), .C(n132), .Z(n92) );
  GTECH_AOI21 U135 ( .A(n12), .B(n81), .C(n134), .Z(n93) );
  GTECH_NOT U136 ( .A(St), .Z(n91) );
  GTECH_NOT U137 ( .A(n84), .Z(n90) );
  GTECH_NOR3 U138 ( .A(n132), .B(n131), .C(n134), .Z(n84) );
  GTECH_NOT U139 ( .A(n13), .Z(n134) );
  GTECH_NOT U140 ( .A(n12), .Z(n131) );
  GTECH_NOR3 U141 ( .A(n12), .B(n13), .C(n132), .Z(Done) );
  GTECH_NOT U142 ( .A(n81), .Z(n132) );
endmodule

