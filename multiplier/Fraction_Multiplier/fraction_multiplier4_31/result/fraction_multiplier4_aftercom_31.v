
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
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n86) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n12) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n87) );
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
  GTECH_AND_NOT U83 ( .A(N57), .B(n88), .Z(N63) );
  GTECH_NOT U84 ( .A(n89), .Z(N58) );
  GTECH_AOI222 U85 ( .A(Mplier[3]), .B(n90), .C(n91), .D(n92), .E(n93), .F(n94), .Z(n89) );
  GTECH_AO21 U86 ( .A(n95), .B(n96), .C(n88), .Z(n93) );
  GTECH_NOR2 U87 ( .A(n97), .B(n13), .Z(n91) );
  GTECH_AO21 U88 ( .A(St), .B(n90), .C(n95), .Z(N57) );
  GTECH_OAI2N2 U89 ( .A(n15), .B(n97), .C(Mplier[2]), .D(n90), .Z(N56) );
  GTECH_OAI2N2 U90 ( .A(n16), .B(n97), .C(Mplier[1]), .D(n90), .Z(N54) );
  GTECH_OAI2N2 U91 ( .A(n17), .B(n97), .C(Mplier[0]), .D(n90), .Z(N52) );
  GTECH_NOT U92 ( .A(n95), .Z(n97) );
  GTECH_MUX2 U93 ( .A(n98), .B(n99), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U94 ( .A(n100), .B(n101), .S(n14), .Z(N48) );
  GTECH_MUX2 U95 ( .A(n102), .B(n103), .S(Mcand[3]), .Z(n101) );
  GTECH_OR2 U96 ( .A(n104), .B(n88), .Z(n100) );
  GTECH_MUX2 U97 ( .A(n103), .B(n102), .S(Mcand[3]), .Z(n104) );
  GTECH_OAI22 U98 ( .A(n105), .B(n106), .C(n107), .D(n108), .Z(n102) );
  GTECH_AO22 U99 ( .A(n105), .B(n109), .C(n107), .D(n110), .Z(n103) );
  GTECH_AOI22 U100 ( .A(n111), .B(Mcand[2]), .C(n112), .D(n83), .Z(n107) );
  GTECH_OR_NOT U101 ( .A(Mcand[2]), .B(n113), .Z(n112) );
  GTECH_ADD_ABC U102 ( .A(n114), .B(n115), .C(n83), .COUT(n105) );
  GTECH_NOT U103 ( .A(Mcand[2]), .Z(n114) );
  GTECH_MUX2 U104 ( .A(n116), .B(n117), .S(n83), .Z(N46) );
  GTECH_NOT U105 ( .A(n118), .Z(n117) );
  GTECH_MUX2 U106 ( .A(n119), .B(n120), .S(Mcand[2]), .Z(n118) );
  GTECH_OR_NOT U107 ( .A(n88), .B(n121), .Z(n116) );
  GTECH_MUX2 U108 ( .A(n120), .B(n119), .S(Mcand[2]), .Z(n121) );
  GTECH_AOI22 U109 ( .A(n122), .B(n109), .C(n111), .D(n110), .Z(n119) );
  GTECH_NOT U110 ( .A(n113), .Z(n111) );
  GTECH_AOI22 U111 ( .A(n115), .B(n109), .C(n113), .D(n110), .Z(n120) );
  GTECH_ADD_ABC U112 ( .A(n123), .B(n124), .C(n125), .COUT(n113) );
  GTECH_OR_NOT U113 ( .A(n96), .B(n85), .Z(n123) );
  GTECH_NOT U114 ( .A(n122), .Z(n115) );
  GTECH_ADD_ABC U115 ( .A(Mcand[1]), .B(n126), .C(n125), .COUT(n122) );
  GTECH_AND_NOT U116 ( .A(n94), .B(n96), .Z(n126) );
  GTECH_NOT U117 ( .A(n85), .Z(n94) );
  GTECH_MUX2 U118 ( .A(n127), .B(n128), .S(n125), .Z(N44) );
  GTECH_NOT U119 ( .A(n84), .Z(n125) );
  GTECH_OR2 U120 ( .A(n129), .B(n88), .Z(n128) );
  GTECH_AND2 U121 ( .A(n13), .B(n95), .Z(n88) );
  GTECH_OR2 U122 ( .A(n98), .B(n99), .Z(n95) );
  GTECH_MUX2 U123 ( .A(n130), .B(n131), .S(n124), .Z(n129) );
  GTECH_NOT U124 ( .A(Mcand[1]), .Z(n124) );
  GTECH_MUX2 U125 ( .A(n130), .B(n131), .S(Mcand[1]), .Z(n127) );
  GTECH_OAI2N2 U126 ( .A(n92), .B(n108), .C(n132), .D(n109), .Z(n131) );
  GTECH_NOT U127 ( .A(n106), .Z(n109) );
  GTECH_OAI2N2 U128 ( .A(n132), .B(n106), .C(n92), .D(n110), .Z(n130) );
  GTECH_NOT U129 ( .A(n108), .Z(n110) );
  GTECH_OR_NOT U130 ( .A(n13), .B(n98), .Z(n108) );
  GTECH_AND_NOT U131 ( .A(n85), .B(n96), .Z(n92) );
  GTECH_NOT U132 ( .A(Mcand[0]), .Z(n96) );
  GTECH_OR_NOT U133 ( .A(n13), .B(n99), .Z(n106) );
  GTECH_OR_NOT U134 ( .A(n85), .B(Mcand[0]), .Z(n132) );
  GTECH_OR_NOT U135 ( .A(n98), .B(n133), .Z(N42) );
  GTECH_NAND3 U136 ( .A(n134), .B(n135), .C(n99), .Z(n133) );
  GTECH_OA21 U137 ( .A(n86), .B(n87), .C(n99), .Z(N41) );
  GTECH_AO21 U138 ( .A(St), .B(n90), .C(n136), .Z(N40) );
  GTECH_AO21 U139 ( .A(n99), .B(n86), .C(n98), .Z(n136) );
  GTECH_NOR3 U140 ( .A(n134), .B(n12), .C(n135), .Z(n98) );
  GTECH_NOT U141 ( .A(n86), .Z(n134) );
  GTECH_AOI21 U142 ( .A(n87), .B(n86), .C(n137), .Z(n99) );
  GTECH_NOT U143 ( .A(n12), .Z(n137) );
  GTECH_AND3 U144 ( .A(n87), .B(n86), .C(n12), .Z(n90) );
  GTECH_NOR3 U145 ( .A(n12), .B(n86), .C(n135), .Z(Done) );
  GTECH_NOT U146 ( .A(n87), .Z(n135) );
endmodule

