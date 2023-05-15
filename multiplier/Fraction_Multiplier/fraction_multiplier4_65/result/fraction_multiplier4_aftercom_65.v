
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n18, n19, n75, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n12) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n13) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n85) );
  GTECH_FJK1S B_reg_0_ ( .J(n75), .K(n75), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n14) );
  GTECH_FJK1S A_reg_3_ ( .J(n75), .K(n75), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n15) );
  GTECH_FJK1S A_reg_0_ ( .J(n75), .K(n75), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n83) );
  GTECH_FJK1S A_reg_1_ ( .J(n75), .K(n75), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n84) );
  GTECH_FJK1S A_reg_2_ ( .J(n75), .K(n75), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n16) );
  GTECH_FJK1S B_reg_3_ ( .J(n75), .K(n75), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n17) );
  GTECH_FJK1S B_reg_2_ ( .J(n75), .K(n75), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n18) );
  GTECH_FJK1S B_reg_1_ ( .J(n75), .K(n75), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n19) );
  GTECH_ZERO U80 ( .Z(n75) );
  GTECH_AND2 U81 ( .A(N57), .B(n86), .Z(N63) );
  GTECH_NOT U82 ( .A(n87), .Z(N58) );
  GTECH_AOI222 U83 ( .A(Mplier[3]), .B(n88), .C(n89), .D(n90), .E(n91), .F(n92), .Z(n87) );
  GTECH_OAI21 U84 ( .A(Mcand[0]), .B(n93), .C(n86), .Z(n91) );
  GTECH_NOR2 U85 ( .A(n93), .B(n14), .Z(n89) );
  GTECH_OAI21 U86 ( .A(n94), .B(n95), .C(n93), .Z(N57) );
  GTECH_OAI2N2 U87 ( .A(n17), .B(n93), .C(Mplier[2]), .D(n88), .Z(N56) );
  GTECH_OAI2N2 U88 ( .A(n18), .B(n93), .C(Mplier[1]), .D(n88), .Z(N54) );
  GTECH_OAI2N2 U89 ( .A(n19), .B(n93), .C(Mplier[0]), .D(n88), .Z(N52) );
  GTECH_MUX2 U90 ( .A(n96), .B(n97), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U91 ( .A(n98), .B(n99), .S(n15), .Z(N48) );
  GTECH_MUX2 U92 ( .A(n100), .B(n101), .S(Mcand[3]), .Z(n99) );
  GTECH_OR_NOT U93 ( .A(n102), .B(n86), .Z(n98) );
  GTECH_MUX2 U94 ( .A(n101), .B(n100), .S(Mcand[3]), .Z(n102) );
  GTECH_OAI22 U95 ( .A(n103), .B(n104), .C(n105), .D(n106), .Z(n100) );
  GTECH_AO22 U96 ( .A(n107), .B(n103), .C(n108), .D(n105), .Z(n101) );
  GTECH_OA21 U97 ( .A(n109), .B(n110), .C(n111), .Z(n105) );
  GTECH_OAI21 U98 ( .A(Mcand[2]), .B(n112), .C(n16), .Z(n111) );
  GTECH_NOT U99 ( .A(n109), .Z(n112) );
  GTECH_AOI21 U100 ( .A(n113), .B(Mcand[2]), .C(n114), .Z(n103) );
  GTECH_AOI21 U101 ( .A(n110), .B(n115), .C(n16), .Z(n114) );
  GTECH_NOT U102 ( .A(n113), .Z(n115) );
  GTECH_MUX2 U103 ( .A(n116), .B(n117), .S(n16), .Z(N46) );
  GTECH_NOT U104 ( .A(n118), .Z(n117) );
  GTECH_MUX2 U105 ( .A(n119), .B(n120), .S(n110), .Z(n118) );
  GTECH_NOT U106 ( .A(Mcand[2]), .Z(n110) );
  GTECH_NAND2 U107 ( .A(n121), .B(n86), .Z(n116) );
  GTECH_MUX2 U108 ( .A(n119), .B(n120), .S(Mcand[2]), .Z(n121) );
  GTECH_AOI2N2 U109 ( .A(n113), .B(n107), .C(n109), .D(n106), .Z(n120) );
  GTECH_AOI2N2 U110 ( .A(n109), .B(n108), .C(n113), .D(n104), .Z(n119) );
  GTECH_ADD_ABC U111 ( .A(Mcand[1]), .B(n122), .C(n123), .COUT(n113) );
  GTECH_AND_NOT U112 ( .A(Mcand[0]), .B(n83), .Z(n122) );
  GTECH_ADD_ABC U113 ( .A(n124), .B(n125), .C(n123), .COUT(n109) );
  GTECH_OR_NOT U114 ( .A(n92), .B(Mcand[0]), .Z(n124) );
  GTECH_MUX2 U115 ( .A(n126), .B(n127), .S(n123), .Z(N44) );
  GTECH_NOT U116 ( .A(n84), .Z(n123) );
  GTECH_OR_NOT U117 ( .A(n128), .B(n86), .Z(n127) );
  GTECH_OR_NOT U118 ( .A(n93), .B(n14), .Z(n86) );
  GTECH_NOR2 U119 ( .A(n97), .B(n96), .Z(n93) );
  GTECH_MUX2 U120 ( .A(n129), .B(n130), .S(n125), .Z(n128) );
  GTECH_NOT U121 ( .A(Mcand[1]), .Z(n125) );
  GTECH_MUX2 U122 ( .A(n129), .B(n130), .S(Mcand[1]), .Z(n126) );
  GTECH_OAI22 U123 ( .A(n131), .B(n104), .C(n90), .D(n106), .Z(n130) );
  GTECH_NOT U124 ( .A(n107), .Z(n104) );
  GTECH_AO22 U125 ( .A(n131), .B(n107), .C(n90), .D(n108), .Z(n129) );
  GTECH_NOT U126 ( .A(n106), .Z(n108) );
  GTECH_OR_NOT U127 ( .A(n14), .B(n96), .Z(n106) );
  GTECH_AND2 U128 ( .A(Mcand[0]), .B(n83), .Z(n90) );
  GTECH_NOR2 U129 ( .A(n132), .B(n14), .Z(n107) );
  GTECH_AND2 U130 ( .A(Mcand[0]), .B(n92), .Z(n131) );
  GTECH_NOT U131 ( .A(n83), .Z(n92) );
  GTECH_OR_NOT U132 ( .A(n96), .B(n133), .Z(N42) );
  GTECH_OR3 U133 ( .A(n85), .B(n12), .C(n132), .Z(n133) );
  GTECH_AOI21 U134 ( .A(n134), .B(n135), .C(n132), .Z(N41) );
  GTECH_OAI21 U135 ( .A(n94), .B(n95), .C(n136), .Z(N40) );
  GTECH_AOI21 U136 ( .A(n12), .B(n97), .C(n96), .Z(n136) );
  GTECH_NOR3 U137 ( .A(n13), .B(n134), .C(n135), .Z(n96) );
  GTECH_NOT U138 ( .A(n132), .Z(n97) );
  GTECH_OAI21 U139 ( .A(n134), .B(n135), .C(n13), .Z(n132) );
  GTECH_NOT U140 ( .A(n12), .Z(n134) );
  GTECH_NOT U141 ( .A(St), .Z(n95) );
  GTECH_NOT U142 ( .A(n88), .Z(n94) );
  GTECH_AND3 U143 ( .A(n12), .B(n85), .C(n13), .Z(n88) );
  GTECH_NOR3 U144 ( .A(n12), .B(n13), .C(n135), .Z(Done) );
  GTECH_NOT U145 ( .A(n85), .Z(n135) );
endmodule

