
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n14, n15, n16, n17, n18, n19, n70, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n81) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n12) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .QN(n80) );
  GTECH_FJK1S B_reg_0_ ( .J(n70), .K(n70), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n14) );
  GTECH_FJK1S A_reg_3_ ( .J(n70), .K(n70), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n15) );
  GTECH_FJK1S A_reg_0_ ( .J(n70), .K(n70), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n79) );
  GTECH_FJK1S A_reg_1_ ( .J(n70), .K(n70), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n78) );
  GTECH_FJK1S A_reg_2_ ( .J(n70), .K(n70), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n16) );
  GTECH_FJK1S B_reg_3_ ( .J(n70), .K(n70), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n17) );
  GTECH_FJK1S B_reg_2_ ( .J(n70), .K(n70), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n18) );
  GTECH_FJK1S B_reg_1_ ( .J(n70), .K(n70), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n19) );
  GTECH_ZERO U75 ( .Z(n70) );
  GTECH_AND_NOT U76 ( .A(N57), .B(n82), .Z(N63) );
  GTECH_NOT U77 ( .A(n83), .Z(N58) );
  GTECH_AOI222 U78 ( .A(Mplier[3]), .B(n84), .C(n85), .D(n86), .E(n87), .F(n88), .Z(n83) );
  GTECH_AO21 U79 ( .A(n89), .B(n90), .C(n82), .Z(n87) );
  GTECH_AND_NOT U80 ( .A(n90), .B(n14), .Z(n85) );
  GTECH_AO21 U81 ( .A(n84), .B(St), .C(n90), .Z(N57) );
  GTECH_OAI2N2 U82 ( .A(n17), .B(n91), .C(Mplier[2]), .D(n84), .Z(N56) );
  GTECH_OAI2N2 U83 ( .A(n18), .B(n91), .C(Mplier[1]), .D(n84), .Z(N54) );
  GTECH_OAI2N2 U84 ( .A(n19), .B(n91), .C(Mplier[0]), .D(n84), .Z(N52) );
  GTECH_MUX2 U85 ( .A(n92), .B(n93), .S(n94), .Z(N50) );
  GTECH_MUX2 U86 ( .A(n95), .B(n96), .S(n15), .Z(N48) );
  GTECH_MUX2 U87 ( .A(n97), .B(n98), .S(Mcand[3]), .Z(n96) );
  GTECH_OR2 U88 ( .A(n82), .B(n99), .Z(n95) );
  GTECH_MUX2 U89 ( .A(n97), .B(n98), .S(n94), .Z(n99) );
  GTECH_NOT U90 ( .A(Mcand[3]), .Z(n94) );
  GTECH_AO22 U91 ( .A(n100), .B(n101), .C(n102), .D(n103), .Z(n98) );
  GTECH_OAI22 U92 ( .A(n100), .B(n104), .C(n102), .D(n105), .Z(n97) );
  GTECH_OA21 U93 ( .A(n106), .B(n107), .C(n108), .Z(n102) );
  GTECH_OAI21 U94 ( .A(Mcand[2]), .B(n109), .C(n16), .Z(n108) );
  GTECH_NOT U95 ( .A(n106), .Z(n109) );
  GTECH_OA21 U96 ( .A(n110), .B(n107), .C(n111), .Z(n100) );
  GTECH_AO21 U97 ( .A(n107), .B(n110), .C(n16), .Z(n111) );
  GTECH_MUX2 U98 ( .A(n112), .B(n113), .S(n16), .Z(N46) );
  GTECH_NOT U99 ( .A(n114), .Z(n113) );
  GTECH_MUX2 U100 ( .A(n115), .B(n116), .S(Mcand[2]), .Z(n114) );
  GTECH_OR_NOT U101 ( .A(n82), .B(n117), .Z(n112) );
  GTECH_MUX2 U102 ( .A(n115), .B(n116), .S(n107), .Z(n117) );
  GTECH_NOT U103 ( .A(Mcand[2]), .Z(n107) );
  GTECH_AOI22 U104 ( .A(n110), .B(n101), .C(n106), .D(n103), .Z(n116) );
  GTECH_OA22 U105 ( .A(n106), .B(n105), .C(n110), .D(n104), .Z(n115) );
  GTECH_OA21 U106 ( .A(n78), .B(n118), .C(n119), .Z(n110) );
  GTECH_OR3 U107 ( .A(n120), .B(n79), .C(n89), .Z(n119) );
  GTECH_NOT U108 ( .A(Mcand[0]), .Z(n89) );
  GTECH_AOI22 U109 ( .A(Mcand[1]), .B(n78), .C(n121), .D(n86), .Z(n106) );
  GTECH_NOT U110 ( .A(n122), .Z(N44) );
  GTECH_AOI222 U111 ( .A(n82), .B(n123), .C(n124), .D(n125), .E(n126), .F(n127), .Z(n122) );
  GTECH_AND_NOT U112 ( .A(n128), .B(n120), .Z(n127) );
  GTECH_AND_NOT U113 ( .A(n78), .B(Mcand[1]), .Z(n120) );
  GTECH_NAND3 U114 ( .A(n105), .B(n88), .C(Mcand[0]), .Z(n128) );
  GTECH_OA21 U115 ( .A(n78), .B(n118), .C(n129), .Z(n126) );
  GTECH_OAI21 U116 ( .A(n86), .B(n105), .C(n104), .Z(n129) );
  GTECH_NOT U117 ( .A(n101), .Z(n104) );
  GTECH_NOT U118 ( .A(n103), .Z(n105) );
  GTECH_AND_NOT U119 ( .A(Mcand[0]), .B(n88), .Z(n86) );
  GTECH_OA21 U120 ( .A(n118), .B(n123), .C(n121), .Z(n125) );
  GTECH_OR_NOT U121 ( .A(n78), .B(n118), .Z(n121) );
  GTECH_NOT U122 ( .A(Mcand[1]), .Z(n118) );
  GTECH_AND2 U123 ( .A(n130), .B(Mcand[0]), .Z(n124) );
  GTECH_MUX2 U124 ( .A(n103), .B(n101), .S(n88), .Z(n130) );
  GTECH_NOT U125 ( .A(n79), .Z(n88) );
  GTECH_AND_NOT U126 ( .A(n92), .B(n14), .Z(n101) );
  GTECH_AND_NOT U127 ( .A(n93), .B(n14), .Z(n103) );
  GTECH_NOT U128 ( .A(n78), .Z(n123) );
  GTECH_AND_NOT U129 ( .A(n14), .B(n91), .Z(n82) );
  GTECH_NOT U130 ( .A(n90), .Z(n91) );
  GTECH_OR2 U131 ( .A(n92), .B(n93), .Z(n90) );
  GTECH_AO21 U132 ( .A(n92), .B(n131), .C(n93), .Z(N42) );
  GTECH_NOR2 U133 ( .A(n81), .B(n80), .Z(n131) );
  GTECH_OA21 U134 ( .A(n80), .B(n81), .C(n92), .Z(N41) );
  GTECH_AO21 U135 ( .A(n84), .B(St), .C(n132), .Z(N40) );
  GTECH_AO21 U136 ( .A(n81), .B(n92), .C(n93), .Z(n132) );
  GTECH_AND2 U137 ( .A(n133), .B(n134), .Z(n93) );
  GTECH_AND_NOT U138 ( .A(n12), .B(n133), .Z(n92) );
  GTECH_AND_NOT U139 ( .A(n133), .B(n134), .Z(n84) );
  GTECH_AND_NOT U140 ( .A(n80), .B(n135), .Z(n133) );
  GTECH_AND3 U141 ( .A(n134), .B(n135), .C(n80), .Z(Done) );
  GTECH_NOT U142 ( .A(n81), .Z(n135) );
  GTECH_NOT U143 ( .A(n12), .Z(n134) );
endmodule

