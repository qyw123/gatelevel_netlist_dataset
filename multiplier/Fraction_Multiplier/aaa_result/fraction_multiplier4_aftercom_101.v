
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63, n12,
         n14, n16, n17, n18, n19, n20, n21, n74, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n84) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n12) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .QN(n83) );
  GTECH_FJK1S B_reg_0_ ( .J(n74), .K(n74), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n14) );
  GTECH_FJK1S A_reg_3_ ( .J(n74), .K(n74), .TI(N50), .TE(N63), .CP(CLK), .QN(
        n82) );
  GTECH_FJK1S A_reg_0_ ( .J(n74), .K(n74), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n16) );
  GTECH_FJK1S A_reg_1_ ( .J(n74), .K(n74), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n17) );
  GTECH_FJK1S A_reg_2_ ( .J(n74), .K(n74), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n18) );
  GTECH_FJK1S B_reg_3_ ( .J(n74), .K(n74), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n19) );
  GTECH_FJK1S B_reg_2_ ( .J(n74), .K(n74), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n20) );
  GTECH_FJK1S B_reg_1_ ( .J(n74), .K(n74), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n21) );
  GTECH_ZERO U77 ( .Z(n74) );
  GTECH_AND_NOT U78 ( .A(N57), .B(n85), .Z(N63) );
  GTECH_NOT U79 ( .A(n86), .Z(N58) );
  GTECH_AOI222 U80 ( .A(Mplier[3]), .B(n87), .C(n88), .D(n89), .E(n90), .F(n91), .Z(n86) );
  GTECH_AO21 U81 ( .A(n92), .B(n93), .C(n85), .Z(n90) );
  GTECH_AND_NOT U82 ( .A(n93), .B(n14), .Z(n88) );
  GTECH_AO21 U83 ( .A(n87), .B(St), .C(n93), .Z(N57) );
  GTECH_NOT U84 ( .A(n94), .Z(n93) );
  GTECH_OAI2N2 U85 ( .A(n19), .B(n94), .C(Mplier[2]), .D(n87), .Z(N56) );
  GTECH_OAI2N2 U86 ( .A(n20), .B(n94), .C(Mplier[1]), .D(n87), .Z(N54) );
  GTECH_OAI2N2 U87 ( .A(n21), .B(n94), .C(Mplier[0]), .D(n87), .Z(N52) );
  GTECH_MUX2 U88 ( .A(n95), .B(n96), .S(n97), .Z(N50) );
  GTECH_MUX2 U89 ( .A(n98), .B(n99), .S(n82), .Z(N48) );
  GTECH_MUX2 U90 ( .A(n100), .B(n101), .S(Mcand[3]), .Z(n99) );
  GTECH_OR2 U91 ( .A(n102), .B(n85), .Z(n98) );
  GTECH_MUX2 U92 ( .A(n100), .B(n101), .S(n97), .Z(n102) );
  GTECH_NOT U93 ( .A(Mcand[3]), .Z(n97) );
  GTECH_OAI22 U94 ( .A(n103), .B(n104), .C(n105), .D(n106), .Z(n101) );
  GTECH_AO22 U95 ( .A(n104), .B(n107), .C(n105), .D(n108), .Z(n100) );
  GTECH_ADD_ABC U96 ( .A(Mcand[2]), .B(n109), .C(n18), .COUT(n105) );
  GTECH_OAI21 U97 ( .A(n110), .B(n111), .C(n112), .Z(n104) );
  GTECH_AO21 U98 ( .A(n111), .B(n110), .C(n18), .Z(n112) );
  GTECH_MUX2 U99 ( .A(n113), .B(n114), .S(n18), .Z(N46) );
  GTECH_NOT U100 ( .A(n115), .Z(n114) );
  GTECH_MUX2 U101 ( .A(n116), .B(n117), .S(Mcand[2]), .Z(n115) );
  GTECH_OR_NOT U102 ( .A(n85), .B(n118), .Z(n113) );
  GTECH_MUX2 U103 ( .A(n116), .B(n117), .S(n111), .Z(n118) );
  GTECH_NOT U104 ( .A(Mcand[2]), .Z(n111) );
  GTECH_AOI2N2 U105 ( .A(n110), .B(n107), .C(n109), .D(n106), .Z(n117) );
  GTECH_AOI2N2 U106 ( .A(n109), .B(n108), .C(n110), .D(n103), .Z(n116) );
  GTECH_OA21 U107 ( .A(n17), .B(n119), .C(n120), .Z(n110) );
  GTECH_OR3 U108 ( .A(n121), .B(n16), .C(n92), .Z(n120) );
  GTECH_ADD_ABC U109 ( .A(Mcand[1]), .B(n122), .C(n17), .COUT(n109) );
  GTECH_AND_NOT U110 ( .A(n16), .B(n92), .Z(n122) );
  GTECH_AO21 U111 ( .A(n121), .B(n123), .C(n124), .Z(N44) );
  GTECH_NOT U112 ( .A(n125), .Z(n124) );
  GTECH_MUX2 U113 ( .A(n126), .B(n127), .S(n17), .Z(n125) );
  GTECH_OR_NOT U114 ( .A(n119), .B(n128), .Z(n127) );
  GTECH_NOR2 U115 ( .A(n85), .B(n129), .Z(n126) );
  GTECH_MUX2 U116 ( .A(n128), .B(n123), .S(Mcand[1]), .Z(n129) );
  GTECH_OAI21 U117 ( .A(n89), .B(n106), .C(n130), .Z(n128) );
  GTECH_AO21 U118 ( .A(n91), .B(Mcand[0]), .C(n103), .Z(n130) );
  GTECH_AND_NOT U119 ( .A(Mcand[0]), .B(n91), .Z(n89) );
  GTECH_AND_NOT U120 ( .A(n14), .B(n94), .Z(n85) );
  GTECH_AND_NOT U121 ( .A(n131), .B(n96), .Z(n94) );
  GTECH_NOT U122 ( .A(n95), .Z(n131) );
  GTECH_NOR2 U123 ( .A(n92), .B(n132), .Z(n123) );
  GTECH_MUX2 U124 ( .A(n106), .B(n103), .S(n91), .Z(n132) );
  GTECH_NOT U125 ( .A(n16), .Z(n91) );
  GTECH_NOT U126 ( .A(n107), .Z(n103) );
  GTECH_AND_NOT U127 ( .A(n95), .B(n14), .Z(n107) );
  GTECH_NOT U128 ( .A(n108), .Z(n106) );
  GTECH_AND_NOT U129 ( .A(n96), .B(n14), .Z(n108) );
  GTECH_NOT U130 ( .A(Mcand[0]), .Z(n92) );
  GTECH_AND2 U131 ( .A(n17), .B(n119), .Z(n121) );
  GTECH_NOT U132 ( .A(Mcand[1]), .Z(n119) );
  GTECH_AO21 U133 ( .A(n95), .B(n133), .C(n96), .Z(N42) );
  GTECH_NOR2 U134 ( .A(n83), .B(n84), .Z(n133) );
  GTECH_OA21 U135 ( .A(n83), .B(n84), .C(n95), .Z(N41) );
  GTECH_AO21 U136 ( .A(n87), .B(St), .C(n134), .Z(N40) );
  GTECH_AO21 U137 ( .A(n84), .B(n95), .C(n96), .Z(n134) );
  GTECH_AND_NOT U138 ( .A(n135), .B(n12), .Z(n96) );
  GTECH_AND_NOT U139 ( .A(n12), .B(n135), .Z(n95) );
  GTECH_AND2 U140 ( .A(n12), .B(n135), .Z(n87) );
  GTECH_AND2 U141 ( .A(n84), .B(n83), .Z(n135) );
  GTECH_NOR3 U142 ( .A(n12), .B(n84), .C(n136), .Z(Done) );
  GTECH_NOT U143 ( .A(n83), .Z(n136) );
endmodule

