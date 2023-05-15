
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63, n12,
         n14, n15, n16, n17, n18, n73, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n83) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n85) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n84) );
  GTECH_FJK1S B_reg_0_ ( .J(n73), .K(n73), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n12) );
  GTECH_FJK1S A_reg_3_ ( .J(n73), .K(n73), .TI(N50), .TE(N63), .CP(CLK), .QN(
        n81) );
  GTECH_FJK1S A_reg_0_ ( .J(n73), .K(n73), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n82) );
  GTECH_FJK1S A_reg_1_ ( .J(n73), .K(n73), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n14) );
  GTECH_FJK1S A_reg_2_ ( .J(n73), .K(n73), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n15) );
  GTECH_FJK1S B_reg_3_ ( .J(n73), .K(n73), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n16) );
  GTECH_FJK1S B_reg_2_ ( .J(n73), .K(n73), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n17) );
  GTECH_FJK1S B_reg_1_ ( .J(n73), .K(n73), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n18) );
  GTECH_ZERO U79 ( .Z(n73) );
  GTECH_AND2 U80 ( .A(N57), .B(n86), .Z(N63) );
  GTECH_NOT U81 ( .A(n87), .Z(N58) );
  GTECH_AOI222 U82 ( .A(Mplier[3]), .B(n88), .C(n89), .D(n90), .E(n91), .F(n92), .Z(n87) );
  GTECH_OAI21 U83 ( .A(Mcand[0]), .B(n93), .C(n86), .Z(n91) );
  GTECH_NOR2 U84 ( .A(n93), .B(n12), .Z(n89) );
  GTECH_OAI21 U85 ( .A(n94), .B(n95), .C(n93), .Z(N57) );
  GTECH_OAI2N2 U86 ( .A(n16), .B(n93), .C(Mplier[2]), .D(n88), .Z(N56) );
  GTECH_OAI2N2 U87 ( .A(n17), .B(n93), .C(Mplier[1]), .D(n88), .Z(N54) );
  GTECH_OAI2N2 U88 ( .A(n18), .B(n93), .C(Mplier[0]), .D(n88), .Z(N52) );
  GTECH_NOT U89 ( .A(n94), .Z(n88) );
  GTECH_MUX2 U90 ( .A(n96), .B(n97), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U91 ( .A(n98), .B(n99), .S(n81), .Z(N48) );
  GTECH_MUX2 U92 ( .A(n100), .B(n101), .S(Mcand[3]), .Z(n99) );
  GTECH_OR_NOT U93 ( .A(n102), .B(n86), .Z(n98) );
  GTECH_MUX2 U94 ( .A(n101), .B(n100), .S(Mcand[3]), .Z(n102) );
  GTECH_OAI22 U95 ( .A(n103), .B(n104), .C(n105), .D(n106), .Z(n100) );
  GTECH_AO22 U96 ( .A(n107), .B(n103), .C(n108), .D(n105), .Z(n101) );
  GTECH_OA21 U97 ( .A(n109), .B(n110), .C(n111), .Z(n105) );
  GTECH_OAI21 U98 ( .A(Mcand[2]), .B(n112), .C(n15), .Z(n111) );
  GTECH_ADD_ABC U99 ( .A(n110), .B(n113), .C(n15), .COUT(n103) );
  GTECH_NOT U100 ( .A(n104), .Z(n107) );
  GTECH_MUX2 U101 ( .A(n114), .B(n115), .S(n15), .Z(N46) );
  GTECH_NOT U102 ( .A(n116), .Z(n115) );
  GTECH_MUX2 U103 ( .A(n117), .B(n118), .S(n110), .Z(n116) );
  GTECH_NOT U104 ( .A(Mcand[2]), .Z(n110) );
  GTECH_NAND2 U105 ( .A(n119), .B(n86), .Z(n114) );
  GTECH_MUX2 U106 ( .A(n117), .B(n118), .S(Mcand[2]), .Z(n119) );
  GTECH_AOI2N2 U107 ( .A(n112), .B(n108), .C(n113), .D(n104), .Z(n118) );
  GTECH_NOT U108 ( .A(n120), .Z(n113) );
  GTECH_NOT U109 ( .A(n109), .Z(n112) );
  GTECH_AOI2N2 U110 ( .A(n109), .B(n108), .C(n120), .D(n104), .Z(n117) );
  GTECH_ADD_ABC U111 ( .A(Mcand[1]), .B(n121), .C(n122), .COUT(n120) );
  GTECH_ADD_ABC U112 ( .A(n123), .B(n124), .C(n122), .COUT(n109) );
  GTECH_OR_NOT U113 ( .A(n92), .B(Mcand[0]), .Z(n123) );
  GTECH_MUX2 U114 ( .A(n125), .B(n126), .S(n122), .Z(N44) );
  GTECH_NOT U115 ( .A(n14), .Z(n122) );
  GTECH_OR_NOT U116 ( .A(n127), .B(n86), .Z(n126) );
  GTECH_OR_NOT U117 ( .A(n93), .B(n12), .Z(n86) );
  GTECH_NOR2 U118 ( .A(n96), .B(n97), .Z(n93) );
  GTECH_MUX2 U119 ( .A(n128), .B(n129), .S(n124), .Z(n127) );
  GTECH_NOT U120 ( .A(Mcand[1]), .Z(n124) );
  GTECH_MUX2 U121 ( .A(n128), .B(n129), .S(Mcand[1]), .Z(n125) );
  GTECH_OAI22 U122 ( .A(n90), .B(n106), .C(n121), .D(n104), .Z(n129) );
  GTECH_AND_NOT U123 ( .A(Mcand[0]), .B(n82), .Z(n121) );
  GTECH_AND2 U124 ( .A(Mcand[0]), .B(n82), .Z(n90) );
  GTECH_AND_NOT U125 ( .A(Mcand[0]), .B(n130), .Z(n128) );
  GTECH_MUX2 U126 ( .A(n106), .B(n104), .S(n92), .Z(n130) );
  GTECH_NOT U127 ( .A(n82), .Z(n92) );
  GTECH_OR_NOT U128 ( .A(n12), .B(n97), .Z(n104) );
  GTECH_NOT U129 ( .A(n108), .Z(n106) );
  GTECH_NOR2 U130 ( .A(n131), .B(n12), .Z(n108) );
  GTECH_NOT U131 ( .A(n96), .Z(n131) );
  GTECH_OR_NOT U132 ( .A(n96), .B(n132), .Z(N42) );
  GTECH_NAND3 U133 ( .A(n133), .B(n134), .C(n97), .Z(n132) );
  GTECH_OA21 U134 ( .A(n83), .B(n84), .C(n97), .Z(N41) );
  GTECH_OAI21 U135 ( .A(n94), .B(n95), .C(n135), .Z(N40) );
  GTECH_AOI21 U136 ( .A(n83), .B(n97), .C(n96), .Z(n135) );
  GTECH_NOR3 U137 ( .A(n133), .B(n85), .C(n134), .Z(n96) );
  GTECH_OA21 U138 ( .A(n133), .B(n134), .C(n85), .Z(n97) );
  GTECH_NOT U139 ( .A(n83), .Z(n133) );
  GTECH_NOT U140 ( .A(St), .Z(n95) );
  GTECH_NAND3 U141 ( .A(n84), .B(n83), .C(n85), .Z(n94) );
  GTECH_NOR3 U142 ( .A(n83), .B(n85), .C(n134), .Z(Done) );
  GTECH_NOT U143 ( .A(n84), .Z(n134) );
endmodule

