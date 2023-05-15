
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n77, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n12) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n13) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n85) );
  GTECH_FJK1S B_reg_0_ ( .J(n77), .K(n77), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n14) );
  GTECH_FJK1S A_reg_3_ ( .J(n77), .K(n77), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n15) );
  GTECH_FJK1S A_reg_0_ ( .J(n77), .K(n77), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n16) );
  GTECH_FJK1S A_reg_1_ ( .J(n77), .K(n77), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n17) );
  GTECH_FJK1S A_reg_2_ ( .J(n77), .K(n77), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n18) );
  GTECH_FJK1S B_reg_3_ ( .J(n77), .K(n77), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n19) );
  GTECH_FJK1S B_reg_2_ ( .J(n77), .K(n77), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n20) );
  GTECH_FJK1S B_reg_1_ ( .J(n77), .K(n77), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n21) );
  GTECH_ZERO U80 ( .Z(n77) );
  GTECH_AND2 U81 ( .A(N57), .B(n86), .Z(N63) );
  GTECH_NOT U82 ( .A(n87), .Z(N58) );
  GTECH_AOI222 U83 ( .A(Mplier[3]), .B(n88), .C(n89), .D(n90), .E(n91), .F(n92), .Z(n87) );
  GTECH_OAI21 U84 ( .A(Mcand[0]), .B(n93), .C(n86), .Z(n91) );
  GTECH_NOR2 U85 ( .A(n93), .B(n14), .Z(n89) );
  GTECH_AO21 U86 ( .A(n88), .B(St), .C(n94), .Z(N57) );
  GTECH_OAI2N2 U87 ( .A(n19), .B(n93), .C(Mplier[2]), .D(n88), .Z(N56) );
  GTECH_OAI2N2 U88 ( .A(n20), .B(n93), .C(Mplier[1]), .D(n88), .Z(N54) );
  GTECH_OAI2N2 U89 ( .A(n21), .B(n93), .C(Mplier[0]), .D(n88), .Z(N52) );
  GTECH_MUX2 U90 ( .A(n95), .B(n96), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U91 ( .A(n97), .B(n98), .S(n15), .Z(N48) );
  GTECH_MUX2 U92 ( .A(n99), .B(n100), .S(n101), .Z(n98) );
  GTECH_NOT U93 ( .A(Mcand[3]), .Z(n101) );
  GTECH_OR_NOT U94 ( .A(n102), .B(n86), .Z(n97) );
  GTECH_MUX2 U95 ( .A(n99), .B(n100), .S(Mcand[3]), .Z(n102) );
  GTECH_AO22 U96 ( .A(n103), .B(n104), .C(n105), .D(n106), .Z(n100) );
  GTECH_OAI22 U97 ( .A(n104), .B(n107), .C(n105), .D(n108), .Z(n99) );
  GTECH_OAI21 U98 ( .A(n109), .B(n110), .C(n111), .Z(n105) );
  GTECH_AO21 U99 ( .A(n110), .B(n109), .C(n18), .Z(n111) );
  GTECH_NOT U100 ( .A(Mcand[2]), .Z(n110) );
  GTECH_ADD_ABC U101 ( .A(Mcand[2]), .B(n112), .C(n18), .COUT(n104) );
  GTECH_MUX2 U102 ( .A(n113), .B(n114), .S(n18), .Z(N46) );
  GTECH_MUX2 U103 ( .A(n115), .B(n116), .S(Mcand[2]), .Z(n114) );
  GTECH_OR_NOT U104 ( .A(n117), .B(n86), .Z(n113) );
  GTECH_MUX2 U105 ( .A(n116), .B(n115), .S(Mcand[2]), .Z(n117) );
  GTECH_AO22 U106 ( .A(n118), .B(n106), .C(n112), .D(n103), .Z(n115) );
  GTECH_OAI2N2 U107 ( .A(n112), .B(n107), .C(n109), .D(n106), .Z(n116) );
  GTECH_NOT U108 ( .A(n118), .Z(n109) );
  GTECH_OAI21 U109 ( .A(n17), .B(n119), .C(n120), .Z(n118) );
  GTECH_NAND3 U110 ( .A(n121), .B(n92), .C(Mcand[0]), .Z(n120) );
  GTECH_ADD_ABC U111 ( .A(Mcand[1]), .B(n90), .C(n17), .COUT(n112) );
  GTECH_OAI21 U112 ( .A(n122), .B(n121), .C(n123), .Z(N44) );
  GTECH_MUX2 U113 ( .A(n124), .B(n125), .S(n17), .Z(n123) );
  GTECH_OR_NOT U114 ( .A(n119), .B(n126), .Z(n125) );
  GTECH_AND_NOT U115 ( .A(n86), .B(n127), .Z(n124) );
  GTECH_MUX2 U116 ( .A(n128), .B(n126), .S(n119), .Z(n127) );
  GTECH_NOT U117 ( .A(Mcand[1]), .Z(n119) );
  GTECH_OAI21 U118 ( .A(n90), .B(n107), .C(n129), .Z(n126) );
  GTECH_AO21 U119 ( .A(n92), .B(Mcand[0]), .C(n108), .Z(n129) );
  GTECH_NOT U120 ( .A(n106), .Z(n108) );
  GTECH_NAND2 U121 ( .A(n94), .B(n14), .Z(n86) );
  GTECH_NOT U122 ( .A(n93), .Z(n94) );
  GTECH_NOR2 U123 ( .A(n96), .B(n95), .Z(n93) );
  GTECH_OR_NOT U124 ( .A(Mcand[1]), .B(n17), .Z(n121) );
  GTECH_NOT U125 ( .A(n128), .Z(n122) );
  GTECH_AO21 U126 ( .A(n90), .B(n103), .C(n130), .Z(n128) );
  GTECH_AND3 U127 ( .A(Mcand[0]), .B(n92), .C(n106), .Z(n130) );
  GTECH_NOR2 U128 ( .A(n131), .B(n14), .Z(n106) );
  GTECH_NOT U129 ( .A(n107), .Z(n103) );
  GTECH_OR_NOT U130 ( .A(n14), .B(n95), .Z(n107) );
  GTECH_AND_NOT U131 ( .A(Mcand[0]), .B(n92), .Z(n90) );
  GTECH_NOT U132 ( .A(n16), .Z(n92) );
  GTECH_OR_NOT U133 ( .A(n95), .B(n132), .Z(N42) );
  GTECH_OR3 U134 ( .A(n12), .B(n85), .C(n131), .Z(n132) );
  GTECH_NOT U135 ( .A(n133), .Z(N41) );
  GTECH_AO21 U136 ( .A(n134), .B(n135), .C(n131), .Z(n133) );
  GTECH_AO21 U137 ( .A(St), .B(n88), .C(n136), .Z(N40) );
  GTECH_AO21 U138 ( .A(n12), .B(n96), .C(n95), .Z(n136) );
  GTECH_AND_NOT U139 ( .A(n137), .B(n13), .Z(n95) );
  GTECH_NOT U140 ( .A(n131), .Z(n96) );
  GTECH_OR_NOT U141 ( .A(n137), .B(n13), .Z(n131) );
  GTECH_AND2 U142 ( .A(n13), .B(n137), .Z(n88) );
  GTECH_AND_NOT U143 ( .A(n85), .B(n134), .Z(n137) );
  GTECH_NOT U144 ( .A(n12), .Z(n134) );
  GTECH_NOR3 U145 ( .A(n12), .B(n13), .C(n135), .Z(Done) );
  GTECH_NOT U146 ( .A(n85), .Z(n135) );
endmodule

