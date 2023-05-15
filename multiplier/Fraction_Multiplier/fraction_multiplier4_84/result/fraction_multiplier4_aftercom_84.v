
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
         n134, n135, n136, n137;
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
  GTECH_AND2 U81 ( .A(n86), .B(N57), .Z(N63) );
  GTECH_AO21 U82 ( .A(Mplier[3]), .B(n87), .C(n88), .Z(N58) );
  GTECH_OAI21 U83 ( .A(n83), .B(n89), .C(n90), .Z(n88) );
  GTECH_OR3 U84 ( .A(n91), .B(n14), .C(n92), .Z(n90) );
  GTECH_OA21 U85 ( .A(Mcand[0]), .B(n91), .C(n86), .Z(n89) );
  GTECH_OAI21 U86 ( .A(n93), .B(n94), .C(n91), .Z(N57) );
  GTECH_OAI2N2 U87 ( .A(n17), .B(n91), .C(Mplier[2]), .D(n87), .Z(N56) );
  GTECH_OAI2N2 U88 ( .A(n18), .B(n91), .C(Mplier[1]), .D(n87), .Z(N54) );
  GTECH_OAI2N2 U89 ( .A(n19), .B(n91), .C(Mplier[0]), .D(n87), .Z(N52) );
  GTECH_MUX2 U90 ( .A(n95), .B(n96), .S(n97), .Z(N50) );
  GTECH_MUX2 U91 ( .A(n98), .B(n99), .S(n15), .Z(N48) );
  GTECH_MUX2 U92 ( .A(n100), .B(n101), .S(Mcand[3]), .Z(n99) );
  GTECH_OR_NOT U93 ( .A(n102), .B(n86), .Z(n98) );
  GTECH_MUX2 U94 ( .A(n100), .B(n101), .S(n97), .Z(n102) );
  GTECH_NOT U95 ( .A(Mcand[3]), .Z(n97) );
  GTECH_AO22 U96 ( .A(n103), .B(n104), .C(n105), .D(n106), .Z(n101) );
  GTECH_OAI22 U97 ( .A(n107), .B(n103), .C(n105), .D(n108), .Z(n100) );
  GTECH_AOI21 U98 ( .A(n109), .B(Mcand[2]), .C(n110), .Z(n105) );
  GTECH_OA21 U99 ( .A(Mcand[2]), .B(n109), .C(n111), .Z(n110) );
  GTECH_ADD_ABC U100 ( .A(n112), .B(n113), .C(n111), .COUT(n103) );
  GTECH_NOT U101 ( .A(n16), .Z(n111) );
  GTECH_MUX2 U102 ( .A(n114), .B(n115), .S(n16), .Z(N46) );
  GTECH_MUX2 U103 ( .A(n116), .B(n117), .S(n112), .Z(n115) );
  GTECH_NOT U104 ( .A(Mcand[2]), .Z(n112) );
  GTECH_OR_NOT U105 ( .A(n118), .B(n86), .Z(n114) );
  GTECH_MUX2 U106 ( .A(n116), .B(n117), .S(Mcand[2]), .Z(n118) );
  GTECH_OAI2N2 U107 ( .A(n113), .B(n107), .C(n109), .D(n106), .Z(n117) );
  GTECH_NOT U108 ( .A(n104), .Z(n107) );
  GTECH_OAI2N2 U109 ( .A(n109), .B(n108), .C(n113), .D(n104), .Z(n116) );
  GTECH_ADD_ABC U110 ( .A(n119), .B(n92), .C(n120), .COUT(n113) );
  GTECH_NAND2 U111 ( .A(Mcand[0]), .B(n83), .Z(n92) );
  GTECH_ADD_ABC U112 ( .A(n121), .B(Mcand[1]), .C(n120), .COUT(n109) );
  GTECH_NOT U113 ( .A(n84), .Z(n120) );
  GTECH_MUX2 U114 ( .A(n122), .B(n123), .S(n84), .Z(N44) );
  GTECH_MUX2 U115 ( .A(n124), .B(n125), .S(n119), .Z(n123) );
  GTECH_NOT U116 ( .A(Mcand[1]), .Z(n119) );
  GTECH_AND_NOT U117 ( .A(n126), .B(n127), .Z(n125) );
  GTECH_OR_NOT U118 ( .A(n128), .B(n86), .Z(n122) );
  GTECH_OR_NOT U119 ( .A(n91), .B(n14), .Z(n86) );
  GTECH_AND_NOT U120 ( .A(n129), .B(n95), .Z(n91) );
  GTECH_MUX2 U121 ( .A(n124), .B(n130), .S(Mcand[1]), .Z(n128) );
  GTECH_AND2 U122 ( .A(n126), .B(Mcand[0]), .Z(n130) );
  GTECH_MUX2 U123 ( .A(n104), .B(n106), .S(n131), .Z(n126) );
  GTECH_OAI21 U124 ( .A(n121), .B(n108), .C(n132), .Z(n124) );
  GTECH_OAI21 U125 ( .A(n127), .B(n131), .C(n104), .Z(n132) );
  GTECH_AND_NOT U126 ( .A(n96), .B(n14), .Z(n104) );
  GTECH_NOT U127 ( .A(Mcand[0]), .Z(n127) );
  GTECH_NOT U128 ( .A(n106), .Z(n108) );
  GTECH_AND_NOT U129 ( .A(n95), .B(n14), .Z(n106) );
  GTECH_AND2 U130 ( .A(n131), .B(Mcand[0]), .Z(n121) );
  GTECH_NOT U131 ( .A(n83), .Z(n131) );
  GTECH_NAND2 U132 ( .A(n129), .B(n133), .Z(N42) );
  GTECH_OR3 U133 ( .A(n12), .B(n85), .C(n134), .Z(n133) );
  GTECH_OA21 U134 ( .A(n12), .B(n85), .C(n95), .Z(N41) );
  GTECH_OAI21 U135 ( .A(n93), .B(n94), .C(n135), .Z(N40) );
  GTECH_OA21 U136 ( .A(n136), .B(n134), .C(n129), .Z(n135) );
  GTECH_NOT U137 ( .A(n96), .Z(n129) );
  GTECH_AND3 U138 ( .A(n12), .B(n137), .C(n85), .Z(n96) );
  GTECH_NOT U139 ( .A(n95), .Z(n134) );
  GTECH_AOI21 U140 ( .A(n12), .B(n85), .C(n137), .Z(n95) );
  GTECH_NOT U141 ( .A(St), .Z(n94) );
  GTECH_NOT U142 ( .A(n87), .Z(n93) );
  GTECH_AND3 U143 ( .A(n85), .B(n12), .C(n13), .Z(n87) );
  GTECH_AND3 U144 ( .A(n136), .B(n137), .C(n85), .Z(Done) );
  GTECH_NOT U145 ( .A(n13), .Z(n137) );
  GTECH_NOT U146 ( .A(n12), .Z(n136) );
endmodule

