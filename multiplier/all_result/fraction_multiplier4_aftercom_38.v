
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n75, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n86) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n87) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n12) );
  GTECH_FJK1S B_reg_0_ ( .J(n75), .K(n75), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n13) );
  GTECH_FJK1S A_reg_3_ ( .J(n75), .K(n75), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n14) );
  GTECH_FJK1S A_reg_0_ ( .J(n75), .K(n75), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n85) );
  GTECH_FJK1S A_reg_1_ ( .J(n75), .K(n75), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n84) );
  GTECH_FJK1S A_reg_2_ ( .J(n75), .K(n75), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n83) );
  GTECH_FJK1S B_reg_3_ ( .J(n75), .K(n75), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n15) );
  GTECH_FJK1S B_reg_2_ ( .J(n75), .K(n75), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n16) );
  GTECH_FJK1S B_reg_1_ ( .J(n75), .K(n75), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n17) );
  GTECH_ZERO U82 ( .Z(n75) );
  GTECH_AND2 U83 ( .A(n88), .B(N57), .Z(N63) );
  GTECH_NOT U84 ( .A(n89), .Z(N58) );
  GTECH_AOI222 U85 ( .A(Mplier[3]), .B(n90), .C(n91), .D(n92), .E(n93), .F(n94), .Z(n89) );
  GTECH_NOT U86 ( .A(n95), .Z(n93) );
  GTECH_OA21 U87 ( .A(n96), .B(Mcand[0]), .C(n88), .Z(n95) );
  GTECH_NOR2 U88 ( .A(n13), .B(n96), .Z(n91) );
  GTECH_AO21 U89 ( .A(St), .B(n90), .C(n97), .Z(N57) );
  GTECH_OAI2N2 U90 ( .A(n15), .B(n96), .C(Mplier[2]), .D(n90), .Z(N56) );
  GTECH_OAI2N2 U91 ( .A(n16), .B(n96), .C(Mplier[1]), .D(n90), .Z(N54) );
  GTECH_OAI2N2 U92 ( .A(n17), .B(n96), .C(Mplier[0]), .D(n90), .Z(N52) );
  GTECH_MUX2 U93 ( .A(n98), .B(n99), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U94 ( .A(n100), .B(n101), .S(n14), .Z(N48) );
  GTECH_MUX2 U95 ( .A(n102), .B(n103), .S(Mcand[3]), .Z(n101) );
  GTECH_OR_NOT U96 ( .A(n104), .B(n88), .Z(n100) );
  GTECH_MUX2 U97 ( .A(n103), .B(n102), .S(Mcand[3]), .Z(n104) );
  GTECH_OAI2N2 U98 ( .A(n105), .B(n106), .C(n107), .D(n108), .Z(n102) );
  GTECH_OAI2N2 U99 ( .A(n109), .B(n107), .C(n105), .D(n110), .Z(n103) );
  GTECH_ADD_ABC U100 ( .A(n111), .B(n112), .C(n83), .COUT(n105) );
  GTECH_OAI2N2 U101 ( .A(n113), .B(n111), .C(n114), .D(n83), .Z(n107) );
  GTECH_OR_NOT U102 ( .A(Mcand[2]), .B(n113), .Z(n114) );
  GTECH_MUX2 U103 ( .A(n115), .B(n116), .S(n83), .Z(N46) );
  GTECH_MUX2 U104 ( .A(n117), .B(n118), .S(Mcand[2]), .Z(n116) );
  GTECH_OR_NOT U105 ( .A(n119), .B(n88), .Z(n115) );
  GTECH_MUX2 U106 ( .A(n117), .B(n118), .S(n111), .Z(n119) );
  GTECH_NOT U107 ( .A(Mcand[2]), .Z(n111) );
  GTECH_AO22 U108 ( .A(n112), .B(n110), .C(n113), .D(n108), .Z(n118) );
  GTECH_OAI22 U109 ( .A(n113), .B(n109), .C(n112), .D(n106), .Z(n117) );
  GTECH_ADD_ABC U110 ( .A(n120), .B(n121), .C(n84), .COUT(n112) );
  GTECH_OR_NOT U111 ( .A(n85), .B(Mcand[0]), .Z(n121) );
  GTECH_ADD_ABC U112 ( .A(n122), .B(n120), .C(n123), .COUT(n113) );
  GTECH_OR_NOT U113 ( .A(n94), .B(Mcand[0]), .Z(n122) );
  GTECH_MUX2 U114 ( .A(n124), .B(n125), .S(n123), .Z(N44) );
  GTECH_NOT U115 ( .A(n84), .Z(n123) );
  GTECH_OR_NOT U116 ( .A(n126), .B(n88), .Z(n125) );
  GTECH_OR_NOT U117 ( .A(n96), .B(n13), .Z(n88) );
  GTECH_NOT U118 ( .A(n97), .Z(n96) );
  GTECH_OR2 U119 ( .A(n99), .B(n98), .Z(n97) );
  GTECH_MUX2 U120 ( .A(n127), .B(n128), .S(n120), .Z(n126) );
  GTECH_NOT U121 ( .A(Mcand[1]), .Z(n120) );
  GTECH_MUX2 U122 ( .A(n127), .B(n128), .S(Mcand[1]), .Z(n124) );
  GTECH_OAI22 U123 ( .A(n92), .B(n109), .C(n129), .D(n106), .Z(n128) );
  GTECH_AO22 U124 ( .A(n92), .B(n108), .C(n129), .D(n110), .Z(n127) );
  GTECH_NOT U125 ( .A(n106), .Z(n110) );
  GTECH_OR_NOT U126 ( .A(n13), .B(n99), .Z(n106) );
  GTECH_NOR2 U127 ( .A(n130), .B(n85), .Z(n129) );
  GTECH_NOT U128 ( .A(n109), .Z(n108) );
  GTECH_OR_NOT U129 ( .A(n13), .B(n98), .Z(n109) );
  GTECH_NOR2 U130 ( .A(n94), .B(n130), .Z(n92) );
  GTECH_NOT U131 ( .A(Mcand[0]), .Z(n130) );
  GTECH_NOT U132 ( .A(n85), .Z(n94) );
  GTECH_OR_NOT U133 ( .A(n98), .B(n131), .Z(N42) );
  GTECH_NAND3 U134 ( .A(n132), .B(n133), .C(n99), .Z(n131) );
  GTECH_OA21 U135 ( .A(n12), .B(n86), .C(n99), .Z(N41) );
  GTECH_AO21 U136 ( .A(St), .B(n90), .C(n134), .Z(N40) );
  GTECH_AO21 U137 ( .A(n99), .B(n86), .C(n98), .Z(n134) );
  GTECH_NOR3 U138 ( .A(n132), .B(n87), .C(n133), .Z(n98) );
  GTECH_NOT U139 ( .A(n86), .Z(n133) );
  GTECH_AOI21 U140 ( .A(n86), .B(n12), .C(n135), .Z(n99) );
  GTECH_NOT U141 ( .A(n87), .Z(n135) );
  GTECH_AND3 U142 ( .A(n86), .B(n12), .C(n87), .Z(n90) );
  GTECH_NOR3 U143 ( .A(n86), .B(n87), .C(n132), .Z(Done) );
  GTECH_NOT U144 ( .A(n12), .Z(n132) );
endmodule

