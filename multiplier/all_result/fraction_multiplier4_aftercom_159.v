
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n18, n70, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n80) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n81) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n12) );
  GTECH_FJK1S B_reg_0_ ( .J(n70), .K(n70), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n13) );
  GTECH_FJK1S A_reg_3_ ( .J(n70), .K(n70), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n14) );
  GTECH_FJK1S A_reg_0_ ( .J(n70), .K(n70), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n79) );
  GTECH_FJK1S A_reg_1_ ( .J(n70), .K(n70), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n78) );
  GTECH_FJK1S A_reg_2_ ( .J(n70), .K(n70), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n15) );
  GTECH_FJK1S B_reg_3_ ( .J(n70), .K(n70), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n16) );
  GTECH_FJK1S B_reg_2_ ( .J(n70), .K(n70), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n17) );
  GTECH_FJK1S B_reg_1_ ( .J(n70), .K(n70), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n18) );
  GTECH_ZERO U76 ( .Z(n70) );
  GTECH_AND2 U77 ( .A(n82), .B(N57), .Z(N63) );
  GTECH_NOT U78 ( .A(n83), .Z(N58) );
  GTECH_AOI222 U79 ( .A(Mplier[3]), .B(n84), .C(n85), .D(n86), .E(n87), .F(n88), .Z(n83) );
  GTECH_OAI21 U80 ( .A(Mcand[0]), .B(n89), .C(n82), .Z(n87) );
  GTECH_NOR2 U81 ( .A(n89), .B(n13), .Z(n85) );
  GTECH_OAI21 U82 ( .A(n90), .B(n91), .C(n89), .Z(N57) );
  GTECH_OAI2N2 U83 ( .A(n16), .B(n89), .C(Mplier[2]), .D(n84), .Z(N56) );
  GTECH_OAI2N2 U84 ( .A(n17), .B(n89), .C(Mplier[1]), .D(n84), .Z(N54) );
  GTECH_OAI2N2 U85 ( .A(n18), .B(n89), .C(Mplier[0]), .D(n84), .Z(N52) );
  GTECH_MUX2 U86 ( .A(n92), .B(n93), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U87 ( .A(n94), .B(n95), .S(n14), .Z(N48) );
  GTECH_MUX2 U88 ( .A(n96), .B(n97), .S(n98), .Z(n95) );
  GTECH_NOT U89 ( .A(Mcand[3]), .Z(n98) );
  GTECH_OR_NOT U90 ( .A(n99), .B(n82), .Z(n94) );
  GTECH_MUX2 U91 ( .A(n96), .B(n97), .S(Mcand[3]), .Z(n99) );
  GTECH_OAI22 U92 ( .A(n100), .B(n101), .C(n102), .D(n103), .Z(n97) );
  GTECH_AO22 U93 ( .A(n100), .B(n104), .C(n102), .D(n105), .Z(n96) );
  GTECH_OA21 U94 ( .A(n106), .B(n107), .C(n108), .Z(n102) );
  GTECH_AO21 U95 ( .A(n107), .B(n106), .C(n109), .Z(n108) );
  GTECH_AOI21 U96 ( .A(n110), .B(Mcand[2]), .C(n111), .Z(n100) );
  GTECH_OA21 U97 ( .A(Mcand[2]), .B(n110), .C(n109), .Z(n111) );
  GTECH_NOT U98 ( .A(n15), .Z(n109) );
  GTECH_MUX2 U99 ( .A(n112), .B(n113), .S(n15), .Z(N46) );
  GTECH_NOT U100 ( .A(n114), .Z(n113) );
  GTECH_MUX2 U101 ( .A(n115), .B(n116), .S(n107), .Z(n114) );
  GTECH_NOT U102 ( .A(Mcand[2]), .Z(n107) );
  GTECH_NAND2 U103 ( .A(n117), .B(n82), .Z(n112) );
  GTECH_MUX2 U104 ( .A(n115), .B(n116), .S(Mcand[2]), .Z(n117) );
  GTECH_AOI2N2 U105 ( .A(n110), .B(n104), .C(n106), .D(n103), .Z(n116) );
  GTECH_AOI2N2 U106 ( .A(n106), .B(n105), .C(n110), .D(n101), .Z(n115) );
  GTECH_ADD_ABC U107 ( .A(Mcand[1]), .B(n118), .C(n119), .COUT(n110) );
  GTECH_AND_NOT U108 ( .A(Mcand[0]), .B(n79), .Z(n118) );
  GTECH_ADD_ABC U109 ( .A(n120), .B(n121), .C(n119), .COUT(n106) );
  GTECH_OR_NOT U110 ( .A(n88), .B(Mcand[0]), .Z(n120) );
  GTECH_MUX2 U111 ( .A(n122), .B(n123), .S(n119), .Z(N44) );
  GTECH_NOT U112 ( .A(n78), .Z(n119) );
  GTECH_OR_NOT U113 ( .A(n124), .B(n82), .Z(n123) );
  GTECH_OR_NOT U114 ( .A(n89), .B(n13), .Z(n82) );
  GTECH_AND2 U115 ( .A(n125), .B(n126), .Z(n89) );
  GTECH_MUX2 U116 ( .A(n127), .B(n128), .S(n121), .Z(n124) );
  GTECH_NOT U117 ( .A(Mcand[1]), .Z(n121) );
  GTECH_MUX2 U118 ( .A(n127), .B(n128), .S(Mcand[1]), .Z(n122) );
  GTECH_AOI21 U119 ( .A(n103), .B(n129), .C(n130), .Z(n128) );
  GTECH_OA21 U120 ( .A(n86), .B(n103), .C(n101), .Z(n130) );
  GTECH_NOT U121 ( .A(n104), .Z(n101) );
  GTECH_NOT U122 ( .A(n105), .Z(n103) );
  GTECH_AO22 U123 ( .A(n86), .B(n105), .C(n129), .D(n104), .Z(n127) );
  GTECH_NOR2 U124 ( .A(n125), .B(n13), .Z(n104) );
  GTECH_AND2 U125 ( .A(Mcand[0]), .B(n88), .Z(n129) );
  GTECH_NOT U126 ( .A(n79), .Z(n88) );
  GTECH_NOR2 U127 ( .A(n126), .B(n13), .Z(n105) );
  GTECH_NOT U128 ( .A(n92), .Z(n126) );
  GTECH_AND2 U129 ( .A(Mcand[0]), .B(n79), .Z(n86) );
  GTECH_OR_NOT U130 ( .A(n92), .B(n131), .Z(N42) );
  GTECH_OR3 U131 ( .A(n81), .B(n80), .C(n125), .Z(n131) );
  GTECH_AOI21 U132 ( .A(n132), .B(n133), .C(n125), .Z(N41) );
  GTECH_NOT U133 ( .A(n93), .Z(n125) );
  GTECH_OAI21 U134 ( .A(n90), .B(n91), .C(n134), .Z(N40) );
  GTECH_AOI21 U135 ( .A(n80), .B(n93), .C(n92), .Z(n134) );
  GTECH_AND3 U136 ( .A(n135), .B(n80), .C(n81), .Z(n92) );
  GTECH_OA21 U137 ( .A(n132), .B(n133), .C(n12), .Z(n93) );
  GTECH_NOT U138 ( .A(n81), .Z(n133) );
  GTECH_NOT U139 ( .A(St), .Z(n91) );
  GTECH_NOT U140 ( .A(n84), .Z(n90) );
  GTECH_AND3 U141 ( .A(n80), .B(n81), .C(n12), .Z(n84) );
  GTECH_AND3 U142 ( .A(n135), .B(n132), .C(n81), .Z(Done) );
  GTECH_NOT U143 ( .A(n80), .Z(n132) );
  GTECH_NOT U144 ( .A(n12), .Z(n135) );
endmodule

