
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n18, n73, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n84) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n83) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n12) );
  GTECH_FJK1S B_reg_0_ ( .J(n73), .K(n73), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n82) );
  GTECH_FJK1S A_reg_3_ ( .J(n73), .K(n73), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n13) );
  GTECH_FJK1S A_reg_0_ ( .J(n73), .K(n73), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n14) );
  GTECH_FJK1S A_reg_1_ ( .J(n73), .K(n73), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n81) );
  GTECH_FJK1S A_reg_2_ ( .J(n73), .K(n73), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n15) );
  GTECH_FJK1S B_reg_3_ ( .J(n73), .K(n73), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n16) );
  GTECH_FJK1S B_reg_2_ ( .J(n73), .K(n73), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n17) );
  GTECH_FJK1S B_reg_1_ ( .J(n73), .K(n73), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n18) );
  GTECH_ZERO U79 ( .Z(n73) );
  GTECH_AND2 U80 ( .A(N57), .B(n85), .Z(N63) );
  GTECH_NOT U81 ( .A(n86), .Z(N58) );
  GTECH_AOI222 U82 ( .A(Mplier[3]), .B(n87), .C(n88), .D(n89), .E(n90), .F(n91), .Z(n86) );
  GTECH_OAI21 U83 ( .A(Mcand[0]), .B(n92), .C(n85), .Z(n90) );
  GTECH_NOR2 U84 ( .A(n82), .B(n92), .Z(n88) );
  GTECH_AO21 U85 ( .A(n87), .B(St), .C(n93), .Z(N57) );
  GTECH_OAI2N2 U86 ( .A(n16), .B(n92), .C(Mplier[2]), .D(n87), .Z(N56) );
  GTECH_OAI2N2 U87 ( .A(n17), .B(n92), .C(Mplier[1]), .D(n87), .Z(N54) );
  GTECH_OAI2N2 U88 ( .A(n18), .B(n92), .C(Mplier[0]), .D(n87), .Z(N52) );
  GTECH_MUX2 U89 ( .A(n94), .B(n95), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U90 ( .A(n96), .B(n97), .S(n13), .Z(N48) );
  GTECH_MUX2 U91 ( .A(n98), .B(n99), .S(Mcand[3]), .Z(n97) );
  GTECH_OR_NOT U92 ( .A(n100), .B(n85), .Z(n96) );
  GTECH_MUX2 U93 ( .A(n99), .B(n98), .S(Mcand[3]), .Z(n100) );
  GTECH_AO22 U94 ( .A(n101), .B(n102), .C(n103), .D(n104), .Z(n98) );
  GTECH_OAI22 U95 ( .A(n101), .B(n105), .C(n103), .D(n106), .Z(n99) );
  GTECH_OAI21 U96 ( .A(n107), .B(n108), .C(n109), .Z(n103) );
  GTECH_OAI21 U97 ( .A(Mcand[2]), .B(n110), .C(n15), .Z(n109) );
  GTECH_OAI21 U98 ( .A(n111), .B(n108), .C(n112), .Z(n101) );
  GTECH_AO21 U99 ( .A(n108), .B(n111), .C(n15), .Z(n112) );
  GTECH_MUX2 U100 ( .A(n113), .B(n114), .S(n15), .Z(N46) );
  GTECH_NOT U101 ( .A(n115), .Z(n114) );
  GTECH_MUX2 U102 ( .A(n116), .B(n117), .S(n108), .Z(n115) );
  GTECH_NAND2 U103 ( .A(n118), .B(n85), .Z(n113) );
  GTECH_MUX2 U104 ( .A(n117), .B(n116), .S(n108), .Z(n118) );
  GTECH_NOT U105 ( .A(Mcand[2]), .Z(n108) );
  GTECH_AOI2N2 U106 ( .A(n111), .B(n102), .C(n110), .D(n106), .Z(n116) );
  GTECH_NOT U107 ( .A(n105), .Z(n102) );
  GTECH_OA22 U108 ( .A(n107), .B(n106), .C(n111), .D(n105), .Z(n117) );
  GTECH_OA21 U109 ( .A(n119), .B(n120), .C(n121), .Z(n111) );
  GTECH_AO21 U110 ( .A(n120), .B(n119), .C(n81), .Z(n121) );
  GTECH_NOT U111 ( .A(n110), .Z(n107) );
  GTECH_OAI21 U112 ( .A(n122), .B(n119), .C(n123), .Z(n110) );
  GTECH_OAI21 U113 ( .A(n89), .B(Mcand[1]), .C(n81), .Z(n123) );
  GTECH_MUX2 U114 ( .A(n124), .B(n125), .S(n81), .Z(N44) );
  GTECH_NOT U115 ( .A(n126), .Z(n125) );
  GTECH_MUX2 U116 ( .A(n127), .B(n128), .S(n119), .Z(n126) );
  GTECH_NAND2 U117 ( .A(n129), .B(n85), .Z(n124) );
  GTECH_NAND2 U118 ( .A(n93), .B(n82), .Z(n85) );
  GTECH_NOT U119 ( .A(n92), .Z(n93) );
  GTECH_AND2 U120 ( .A(n130), .B(n131), .Z(n92) );
  GTECH_MUX2 U121 ( .A(n128), .B(n127), .S(n119), .Z(n129) );
  GTECH_NOT U122 ( .A(Mcand[1]), .Z(n119) );
  GTECH_AOI2N2 U123 ( .A(n122), .B(n104), .C(n132), .D(n105), .Z(n127) );
  GTECH_NOT U124 ( .A(n89), .Z(n122) );
  GTECH_AOI2N2 U125 ( .A(n89), .B(n104), .C(n120), .D(n105), .Z(n128) );
  GTECH_OR2 U126 ( .A(n131), .B(n82), .Z(n105) );
  GTECH_NOT U127 ( .A(n132), .Z(n120) );
  GTECH_AND2 U128 ( .A(n91), .B(Mcand[0]), .Z(n132) );
  GTECH_NOT U129 ( .A(n14), .Z(n91) );
  GTECH_NOT U130 ( .A(n106), .Z(n104) );
  GTECH_OR2 U131 ( .A(n130), .B(n82), .Z(n106) );
  GTECH_AND2 U132 ( .A(n14), .B(Mcand[0]), .Z(n89) );
  GTECH_OR_NOT U133 ( .A(n94), .B(n133), .Z(N42) );
  GTECH_OR3 U134 ( .A(n12), .B(n84), .C(n131), .Z(n133) );
  GTECH_AOI21 U135 ( .A(n134), .B(n135), .C(n131), .Z(N41) );
  GTECH_AO21 U136 ( .A(n87), .B(St), .C(n136), .Z(N40) );
  GTECH_OAI21 U137 ( .A(n135), .B(n131), .C(n130), .Z(n136) );
  GTECH_NOT U138 ( .A(n94), .Z(n130) );
  GTECH_AND3 U139 ( .A(n12), .B(n137), .C(n84), .Z(n94) );
  GTECH_NOT U140 ( .A(n83), .Z(n137) );
  GTECH_NOT U141 ( .A(n95), .Z(n131) );
  GTECH_OA21 U142 ( .A(n134), .B(n135), .C(n83), .Z(n95) );
  GTECH_NOT U143 ( .A(n84), .Z(n135) );
  GTECH_AND3 U144 ( .A(n84), .B(n12), .C(n83), .Z(n87) );
  GTECH_NOR3 U145 ( .A(n83), .B(n84), .C(n134), .Z(Done) );
  GTECH_NOT U146 ( .A(n12), .Z(n134) );
endmodule

