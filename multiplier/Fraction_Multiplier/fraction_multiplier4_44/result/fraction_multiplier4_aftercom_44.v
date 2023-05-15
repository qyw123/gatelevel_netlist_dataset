
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n73, n81, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136;
  wire   [2:0] State;

  GTECH_FD2 State_reg_0_ ( .D(N40), .CP(CLK), .CD(n81), .Q(State[0]), .QN(n12)
         );
  GTECH_FD2 State_reg_2_ ( .D(N42), .CP(CLK), .CD(n81), .Q(State[2]), .QN(n13)
         );
  GTECH_FD2 State_reg_1_ ( .D(N41), .CP(CLK), .CD(n81), .Q(State[1]), .QN(n85)
         );
  GTECH_FJK1S B_reg_0_ ( .J(n73), .K(n73), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n14) );
  GTECH_FJK1S A_reg_3_ ( .J(n73), .K(n73), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n15) );
  GTECH_FJK1S A_reg_0_ ( .J(n73), .K(n73), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n16) );
  GTECH_FJK1S A_reg_1_ ( .J(n73), .K(n73), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n17) );
  GTECH_FJK1S A_reg_2_ ( .J(n73), .K(n73), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n84) );
  GTECH_FJK1S B_reg_3_ ( .J(n73), .K(n73), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n18) );
  GTECH_FJK1S B_reg_2_ ( .J(n73), .K(n73), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n19) );
  GTECH_FJK1S B_reg_1_ ( .J(n73), .K(n73), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n20) );
  GTECH_ONE U80 ( .Z(n81) );
  GTECH_ZERO U81 ( .Z(n73) );
  GTECH_AND2 U82 ( .A(n86), .B(N57), .Z(N63) );
  GTECH_NOT U83 ( .A(n87), .Z(N58) );
  GTECH_AOI222 U84 ( .A(Mplier[3]), .B(n88), .C(n89), .D(n90), .E(n91), .F(n92), .Z(n87) );
  GTECH_NOT U85 ( .A(n16), .Z(n92) );
  GTECH_OAI21 U86 ( .A(Mcand[0]), .B(n93), .C(n86), .Z(n91) );
  GTECH_AND_NOT U87 ( .A(n94), .B(n14), .Z(n89) );
  GTECH_AO21 U88 ( .A(n88), .B(St), .C(n94), .Z(N57) );
  GTECH_OAI2N2 U89 ( .A(n18), .B(n93), .C(Mplier[2]), .D(n88), .Z(N56) );
  GTECH_OAI2N2 U90 ( .A(n19), .B(n93), .C(Mplier[1]), .D(n88), .Z(N54) );
  GTECH_OAI2N2 U91 ( .A(n20), .B(n93), .C(Mplier[0]), .D(n88), .Z(N52) );
  GTECH_MUX2 U92 ( .A(n95), .B(n96), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U93 ( .A(n97), .B(n98), .S(n15), .Z(N48) );
  GTECH_NOT U94 ( .A(n99), .Z(n98) );
  GTECH_MUX2 U95 ( .A(n100), .B(n101), .S(Mcand[3]), .Z(n99) );
  GTECH_NAND2 U96 ( .A(n102), .B(n86), .Z(n97) );
  GTECH_MUX2 U97 ( .A(n101), .B(n100), .S(Mcand[3]), .Z(n102) );
  GTECH_AOI2N2 U98 ( .A(n103), .B(n104), .C(n105), .D(n106), .Z(n100) );
  GTECH_AOI2N2 U99 ( .A(n105), .B(n107), .C(n103), .D(n108), .Z(n101) );
  GTECH_OAI21 U100 ( .A(n109), .B(n110), .C(n111), .Z(n103) );
  GTECH_OAI21 U101 ( .A(Mcand[2]), .B(n112), .C(n84), .Z(n111) );
  GTECH_OA21 U102 ( .A(n113), .B(n110), .C(n114), .Z(n105) );
  GTECH_AO21 U103 ( .A(n110), .B(n113), .C(n84), .Z(n114) );
  GTECH_MUX2 U104 ( .A(n115), .B(n116), .S(n84), .Z(N46) );
  GTECH_MUX2 U105 ( .A(n117), .B(n118), .S(n110), .Z(n116) );
  GTECH_OR_NOT U106 ( .A(n119), .B(n86), .Z(n115) );
  GTECH_MUX2 U107 ( .A(n118), .B(n117), .S(n110), .Z(n119) );
  GTECH_NOT U108 ( .A(Mcand[2]), .Z(n110) );
  GTECH_OAI2N2 U109 ( .A(n112), .B(n108), .C(n113), .D(n107), .Z(n117) );
  GTECH_OAI22 U110 ( .A(n113), .B(n106), .C(n109), .D(n108), .Z(n118) );
  GTECH_NOT U111 ( .A(n112), .Z(n109) );
  GTECH_OAI21 U112 ( .A(n120), .B(n121), .C(n122), .Z(n112) );
  GTECH_OAI21 U113 ( .A(n90), .B(Mcand[1]), .C(n17), .Z(n122) );
  GTECH_NOT U114 ( .A(n107), .Z(n106) );
  GTECH_OA21 U115 ( .A(n121), .B(n123), .C(n124), .Z(n113) );
  GTECH_AO21 U116 ( .A(n123), .B(n121), .C(n17), .Z(n124) );
  GTECH_MUX2 U117 ( .A(n125), .B(n126), .S(n17), .Z(N44) );
  GTECH_MUX2 U118 ( .A(n127), .B(n128), .S(n121), .Z(n126) );
  GTECH_OR_NOT U119 ( .A(n129), .B(n86), .Z(n125) );
  GTECH_NAND2 U120 ( .A(n94), .B(n14), .Z(n86) );
  GTECH_NOT U121 ( .A(n93), .Z(n94) );
  GTECH_AND_NOT U122 ( .A(n130), .B(n95), .Z(n93) );
  GTECH_MUX2 U123 ( .A(n128), .B(n127), .S(n121), .Z(n129) );
  GTECH_NOT U124 ( .A(Mcand[1]), .Z(n121) );
  GTECH_OAI2N2 U125 ( .A(n90), .B(n108), .C(n123), .D(n107), .Z(n127) );
  GTECH_NOT U126 ( .A(n131), .Z(n123) );
  GTECH_OAI2N2 U127 ( .A(n120), .B(n108), .C(n131), .D(n107), .Z(n128) );
  GTECH_AND_NOT U128 ( .A(n96), .B(n14), .Z(n107) );
  GTECH_AND_NOT U129 ( .A(Mcand[0]), .B(n16), .Z(n131) );
  GTECH_NOT U130 ( .A(n104), .Z(n108) );
  GTECH_AND_NOT U131 ( .A(n95), .B(n14), .Z(n104) );
  GTECH_NOT U132 ( .A(n90), .Z(n120) );
  GTECH_AND2 U133 ( .A(Mcand[0]), .B(n16), .Z(n90) );
  GTECH_OR_NOT U134 ( .A(n95), .B(n132), .Z(N42) );
  GTECH_OR3 U135 ( .A(n12), .B(n85), .C(n130), .Z(n132) );
  GTECH_AOI21 U136 ( .A(n133), .B(n134), .C(n130), .Z(N41) );
  GTECH_NOT U137 ( .A(n96), .Z(n130) );
  GTECH_AO21 U138 ( .A(n88), .B(St), .C(n135), .Z(N40) );
  GTECH_AO21 U139 ( .A(n12), .B(n96), .C(n95), .Z(n135) );
  GTECH_AND3 U140 ( .A(n12), .B(n136), .C(n85), .Z(n95) );
  GTECH_NOT U141 ( .A(n13), .Z(n136) );
  GTECH_OA21 U142 ( .A(n133), .B(n134), .C(n13), .Z(n96) );
  GTECH_NOT U143 ( .A(n12), .Z(n133) );
  GTECH_AND3 U144 ( .A(n85), .B(n12), .C(n13), .Z(n88) );
  GTECH_NOR3 U145 ( .A(n12), .B(n13), .C(n134), .Z(Done) );
  GTECH_NOT U146 ( .A(n85), .Z(n134) );
endmodule

