
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n73, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n12) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n13) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n82) );
  GTECH_FJK1S B_reg_0_ ( .J(n73), .K(n73), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n14) );
  GTECH_FJK1S A_reg_3_ ( .J(n73), .K(n73), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n15) );
  GTECH_FJK1S A_reg_0_ ( .J(n73), .K(n73), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n16) );
  GTECH_FJK1S A_reg_1_ ( .J(n73), .K(n73), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n17) );
  GTECH_FJK1S A_reg_2_ ( .J(n73), .K(n73), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n81) );
  GTECH_FJK1S B_reg_3_ ( .J(n73), .K(n73), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n18) );
  GTECH_FJK1S B_reg_2_ ( .J(n73), .K(n73), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n19) );
  GTECH_FJK1S B_reg_1_ ( .J(n73), .K(n73), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n20) );
  GTECH_ZERO U77 ( .Z(n73) );
  GTECH_ADD_AB U78 ( .A(n83), .B(N57), .COUT(N63) );
  GTECH_NOT U79 ( .A(n84), .Z(N58) );
  GTECH_AOI222 U80 ( .A(Mplier[3]), .B(n85), .C(n86), .D(n87), .E(n88), .F(n89), .Z(n84) );
  GTECH_NOT U81 ( .A(n16), .Z(n89) );
  GTECH_OAI21 U82 ( .A(Mcand[0]), .B(n90), .C(n83), .Z(n88) );
  GTECH_AND_NOT U83 ( .A(n91), .B(n14), .Z(n86) );
  GTECH_AO21 U84 ( .A(n85), .B(St), .C(n91), .Z(N57) );
  GTECH_OAI2N2 U85 ( .A(n18), .B(n90), .C(Mplier[2]), .D(n85), .Z(N56) );
  GTECH_OAI2N2 U86 ( .A(n19), .B(n90), .C(Mplier[1]), .D(n85), .Z(N54) );
  GTECH_OAI2N2 U87 ( .A(n20), .B(n90), .C(Mplier[0]), .D(n85), .Z(N52) );
  GTECH_MUX2 U88 ( .A(n92), .B(n93), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U89 ( .A(n94), .B(n95), .S(n15), .Z(N48) );
  GTECH_NOT U90 ( .A(n96), .Z(n95) );
  GTECH_MUX2 U91 ( .A(n97), .B(n98), .S(Mcand[3]), .Z(n96) );
  GTECH_NAND2 U92 ( .A(n99), .B(n83), .Z(n94) );
  GTECH_MUX2 U93 ( .A(n98), .B(n97), .S(Mcand[3]), .Z(n99) );
  GTECH_AOI2N2 U94 ( .A(n100), .B(n101), .C(n102), .D(n103), .Z(n97) );
  GTECH_AOI2N2 U95 ( .A(n102), .B(n104), .C(n100), .D(n105), .Z(n98) );
  GTECH_OAI21 U96 ( .A(n106), .B(n107), .C(n108), .Z(n100) );
  GTECH_OAI21 U97 ( .A(Mcand[2]), .B(n109), .C(n81), .Z(n108) );
  GTECH_OA21 U98 ( .A(n110), .B(n107), .C(n111), .Z(n102) );
  GTECH_AO21 U99 ( .A(n107), .B(n110), .C(n81), .Z(n111) );
  GTECH_MUX2 U100 ( .A(n112), .B(n113), .S(n81), .Z(N46) );
  GTECH_MUX2 U101 ( .A(n114), .B(n115), .S(n107), .Z(n113) );
  GTECH_OR_NOT U102 ( .A(n116), .B(n83), .Z(n112) );
  GTECH_MUX2 U103 ( .A(n115), .B(n114), .S(n107), .Z(n116) );
  GTECH_NOT U104 ( .A(Mcand[2]), .Z(n107) );
  GTECH_OAI2N2 U105 ( .A(n109), .B(n105), .C(n110), .D(n104), .Z(n114) );
  GTECH_OAI22 U106 ( .A(n110), .B(n103), .C(n106), .D(n105), .Z(n115) );
  GTECH_NOT U107 ( .A(n109), .Z(n106) );
  GTECH_OAI21 U108 ( .A(n117), .B(n118), .C(n119), .Z(n109) );
  GTECH_OAI21 U109 ( .A(n87), .B(Mcand[1]), .C(n17), .Z(n119) );
  GTECH_NOT U110 ( .A(n104), .Z(n103) );
  GTECH_OA21 U111 ( .A(n118), .B(n120), .C(n121), .Z(n110) );
  GTECH_AO21 U112 ( .A(n120), .B(n118), .C(n17), .Z(n121) );
  GTECH_MUX2 U113 ( .A(n122), .B(n123), .S(n17), .Z(N44) );
  GTECH_MUX2 U114 ( .A(n124), .B(n125), .S(n118), .Z(n123) );
  GTECH_OR_NOT U115 ( .A(n126), .B(n83), .Z(n122) );
  GTECH_NAND2 U116 ( .A(n91), .B(n14), .Z(n83) );
  GTECH_NOT U117 ( .A(n90), .Z(n91) );
  GTECH_AND_NOT U118 ( .A(n127), .B(n92), .Z(n90) );
  GTECH_MUX2 U119 ( .A(n125), .B(n124), .S(n118), .Z(n126) );
  GTECH_NOT U120 ( .A(Mcand[1]), .Z(n118) );
  GTECH_OAI2N2 U121 ( .A(n87), .B(n105), .C(n120), .D(n104), .Z(n124) );
  GTECH_NOT U122 ( .A(n128), .Z(n120) );
  GTECH_OAI2N2 U123 ( .A(n117), .B(n105), .C(n128), .D(n104), .Z(n125) );
  GTECH_AND_NOT U124 ( .A(n93), .B(n14), .Z(n104) );
  GTECH_AND_NOT U125 ( .A(Mcand[0]), .B(n16), .Z(n128) );
  GTECH_NOT U126 ( .A(n101), .Z(n105) );
  GTECH_AND_NOT U127 ( .A(n92), .B(n14), .Z(n101) );
  GTECH_NOT U128 ( .A(n87), .Z(n117) );
  GTECH_ADD_AB U129 ( .A(Mcand[0]), .B(n16), .COUT(n87) );
  GTECH_OR_NOT U130 ( .A(n92), .B(n129), .Z(N42) );
  GTECH_OR3 U131 ( .A(n12), .B(n82), .C(n127), .Z(n129) );
  GTECH_AOI21 U132 ( .A(n130), .B(n131), .C(n127), .Z(N41) );
  GTECH_NOT U133 ( .A(n93), .Z(n127) );
  GTECH_AO21 U134 ( .A(n85), .B(St), .C(n132), .Z(N40) );
  GTECH_AO21 U135 ( .A(n12), .B(n93), .C(n92), .Z(n132) );
  GTECH_AND3 U136 ( .A(n12), .B(n133), .C(n82), .Z(n92) );
  GTECH_NOT U137 ( .A(n13), .Z(n133) );
  GTECH_OA21 U138 ( .A(n130), .B(n131), .C(n13), .Z(n93) );
  GTECH_NOT U139 ( .A(n12), .Z(n130) );
  GTECH_AND3 U140 ( .A(n82), .B(n12), .C(n13), .Z(n85) );
  GTECH_NOR3 U141 ( .A(n12), .B(n13), .C(n131), .Z(Done) );
  GTECH_NOT U142 ( .A(n82), .Z(n131) );
endmodule

