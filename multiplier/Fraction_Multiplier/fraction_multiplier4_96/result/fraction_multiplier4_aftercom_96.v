
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63, n13,
         n15, n16, n17, n18, n19, n20, n74, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n83) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .QN(n84) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n85) );
  GTECH_FJK1S B_reg_0_ ( .J(n74), .K(n74), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n13) );
  GTECH_FJK1S A_reg_3_ ( .J(n74), .K(n74), .TI(N50), .TE(N63), .CP(CLK), .QN(
        n82) );
  GTECH_FJK1S A_reg_0_ ( .J(n74), .K(n74), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n15) );
  GTECH_FJK1S A_reg_1_ ( .J(n74), .K(n74), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n16) );
  GTECH_FJK1S A_reg_2_ ( .J(n74), .K(n74), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n17) );
  GTECH_FJK1S B_reg_3_ ( .J(n74), .K(n74), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n18) );
  GTECH_FJK1S B_reg_2_ ( .J(n74), .K(n74), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n19) );
  GTECH_FJK1S B_reg_1_ ( .J(n74), .K(n74), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n20) );
  GTECH_ZERO U78 ( .Z(n74) );
  GTECH_AND2 U79 ( .A(n86), .B(N57), .Z(N63) );
  GTECH_NOT U80 ( .A(n87), .Z(N58) );
  GTECH_AOI222 U81 ( .A(Mplier[3]), .B(n88), .C(n89), .D(n90), .E(n91), .F(n92), .Z(n87) );
  GTECH_OAI21 U82 ( .A(Mcand[0]), .B(n93), .C(n86), .Z(n91) );
  GTECH_NOR2 U83 ( .A(n93), .B(n13), .Z(n89) );
  GTECH_OAI21 U84 ( .A(n94), .B(n95), .C(n93), .Z(N57) );
  GTECH_OAI2N2 U85 ( .A(n18), .B(n93), .C(Mplier[2]), .D(n88), .Z(N56) );
  GTECH_OAI2N2 U86 ( .A(n19), .B(n93), .C(Mplier[1]), .D(n88), .Z(N54) );
  GTECH_OAI2N2 U87 ( .A(n20), .B(n93), .C(Mplier[0]), .D(n88), .Z(N52) );
  GTECH_MUX2 U88 ( .A(n96), .B(n97), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U89 ( .A(n98), .B(n99), .S(n82), .Z(N48) );
  GTECH_MUX2 U90 ( .A(n100), .B(n101), .S(Mcand[3]), .Z(n99) );
  GTECH_OR_NOT U91 ( .A(n102), .B(n86), .Z(n98) );
  GTECH_MUX2 U92 ( .A(n101), .B(n100), .S(Mcand[3]), .Z(n102) );
  GTECH_OAI2N2 U93 ( .A(n103), .B(n104), .C(n105), .D(n106), .Z(n100) );
  GTECH_OAI2N2 U94 ( .A(n106), .B(n107), .C(n103), .D(n108), .Z(n101) );
  GTECH_OA21 U95 ( .A(n109), .B(n110), .C(n111), .Z(n103) );
  GTECH_AO21 U96 ( .A(n110), .B(n109), .C(n17), .Z(n111) );
  GTECH_ADD_ABC U97 ( .A(Mcand[2]), .B(n112), .C(n17), .COUT(n106) );
  GTECH_MUX2 U98 ( .A(n113), .B(n114), .S(n17), .Z(N46) );
  GTECH_MUX2 U99 ( .A(n115), .B(n116), .S(Mcand[2]), .Z(n114) );
  GTECH_OR_NOT U100 ( .A(n117), .B(n86), .Z(n113) );
  GTECH_MUX2 U101 ( .A(n115), .B(n116), .S(n110), .Z(n117) );
  GTECH_NOT U102 ( .A(Mcand[2]), .Z(n110) );
  GTECH_OAI2N2 U103 ( .A(n112), .B(n107), .C(n109), .D(n108), .Z(n116) );
  GTECH_OAI2N2 U104 ( .A(n109), .B(n104), .C(n112), .D(n105), .Z(n115) );
  GTECH_NOT U105 ( .A(n107), .Z(n105) );
  GTECH_ADD_ABC U106 ( .A(Mcand[1]), .B(n118), .C(n16), .COUT(n112) );
  GTECH_AND2 U107 ( .A(Mcand[0]), .B(n15), .Z(n118) );
  GTECH_OA21 U108 ( .A(n16), .B(n119), .C(n120), .Z(n109) );
  GTECH_OR3 U109 ( .A(n15), .B(n121), .C(n122), .Z(n120) );
  GTECH_NAND2 U110 ( .A(n123), .B(n124), .Z(N44) );
  GTECH_MUX2 U111 ( .A(n125), .B(n126), .S(n16), .Z(n124) );
  GTECH_OR_NOT U112 ( .A(n119), .B(n127), .Z(n126) );
  GTECH_AND_NOT U113 ( .A(n86), .B(n128), .Z(n125) );
  GTECH_MUX2 U114 ( .A(n129), .B(n127), .S(n119), .Z(n128) );
  GTECH_OAI21 U115 ( .A(n90), .B(n107), .C(n130), .Z(n127) );
  GTECH_AO21 U116 ( .A(n92), .B(Mcand[0]), .C(n104), .Z(n130) );
  GTECH_AND_NOT U117 ( .A(Mcand[0]), .B(n92), .Z(n90) );
  GTECH_NOR2 U118 ( .A(n122), .B(n131), .Z(n129) );
  GTECH_OR_NOT U119 ( .A(n93), .B(n13), .Z(n86) );
  GTECH_NOR2 U120 ( .A(n97), .B(n96), .Z(n93) );
  GTECH_OR3 U121 ( .A(n131), .B(n122), .C(n132), .Z(n123) );
  GTECH_NOT U122 ( .A(n121), .Z(n132) );
  GTECH_AND2 U123 ( .A(n16), .B(n119), .Z(n121) );
  GTECH_NOT U124 ( .A(Mcand[1]), .Z(n119) );
  GTECH_NOT U125 ( .A(Mcand[0]), .Z(n122) );
  GTECH_MUX2 U126 ( .A(n107), .B(n104), .S(n92), .Z(n131) );
  GTECH_NOT U127 ( .A(n15), .Z(n92) );
  GTECH_NOT U128 ( .A(n108), .Z(n104) );
  GTECH_NOR2 U129 ( .A(n133), .B(n13), .Z(n108) );
  GTECH_OR_NOT U130 ( .A(n13), .B(n96), .Z(n107) );
  GTECH_OR_NOT U131 ( .A(n96), .B(n134), .Z(N42) );
  GTECH_OR3 U132 ( .A(n84), .B(n83), .C(n133), .Z(n134) );
  GTECH_NOT U133 ( .A(n97), .Z(n133) );
  GTECH_OA21 U134 ( .A(n83), .B(n84), .C(n97), .Z(N41) );
  GTECH_OAI21 U135 ( .A(n94), .B(n95), .C(n135), .Z(N40) );
  GTECH_AOI21 U136 ( .A(n83), .B(n97), .C(n96), .Z(n135) );
  GTECH_AND3 U137 ( .A(n136), .B(n83), .C(n84), .Z(n96) );
  GTECH_AOI21 U138 ( .A(n83), .B(n84), .C(n136), .Z(n97) );
  GTECH_NOT U139 ( .A(n85), .Z(n136) );
  GTECH_NOT U140 ( .A(St), .Z(n95) );
  GTECH_NOT U141 ( .A(n88), .Z(n94) );
  GTECH_AND3 U142 ( .A(n83), .B(n84), .C(n85), .Z(n88) );
  GTECH_NOR3 U143 ( .A(n83), .B(n85), .C(n137), .Z(Done) );
  GTECH_NOT U144 ( .A(n84), .Z(n137) );
endmodule

