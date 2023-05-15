
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n18, n69, n77, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137;
  wire   [2:0] State;

  GTECH_FD2 State_reg_0_ ( .D(N40), .CP(CLK), .CD(n77), .Q(State[0]), .QN(n83)
         );
  GTECH_FD2 State_reg_2_ ( .D(N42), .CP(CLK), .CD(n77), .Q(State[2]), .QN(n82)
         );
  GTECH_FD2 State_reg_1_ ( .D(N41), .CP(CLK), .CD(n77), .Q(State[1]), .QN(n12)
         );
  GTECH_FJK1S B_reg_0_ ( .J(n69), .K(n69), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n13) );
  GTECH_FJK1S A_reg_3_ ( .J(n69), .K(n69), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n14) );
  GTECH_FJK1S A_reg_0_ ( .J(n69), .K(n69), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n81) );
  GTECH_FJK1S A_reg_1_ ( .J(n69), .K(n69), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n80) );
  GTECH_FJK1S A_reg_2_ ( .J(n69), .K(n69), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n15) );
  GTECH_FJK1S B_reg_3_ ( .J(n69), .K(n69), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n16) );
  GTECH_FJK1S B_reg_2_ ( .J(n69), .K(n69), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n17) );
  GTECH_FJK1S B_reg_1_ ( .J(n69), .K(n69), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n18) );
  GTECH_ONE U78 ( .Z(n77) );
  GTECH_ZERO U79 ( .Z(n69) );
  GTECH_AND2 U80 ( .A(N57), .B(n84), .Z(N63) );
  GTECH_NOT U81 ( .A(n85), .Z(N58) );
  GTECH_AOI222 U82 ( .A(Mplier[3]), .B(n86), .C(n87), .D(n88), .E(n89), .F(n90), .Z(n85) );
  GTECH_OAI21 U83 ( .A(Mcand[0]), .B(n91), .C(n84), .Z(n89) );
  GTECH_NOR2 U84 ( .A(n13), .B(n91), .Z(n87) );
  GTECH_OAI21 U85 ( .A(n92), .B(n93), .C(n91), .Z(N57) );
  GTECH_OAI2N2 U86 ( .A(n16), .B(n91), .C(Mplier[2]), .D(n86), .Z(N56) );
  GTECH_OAI2N2 U87 ( .A(n17), .B(n91), .C(Mplier[1]), .D(n86), .Z(N54) );
  GTECH_OAI2N2 U88 ( .A(n18), .B(n91), .C(Mplier[0]), .D(n86), .Z(N52) );
  GTECH_MUX2 U89 ( .A(n94), .B(n95), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U90 ( .A(n96), .B(n97), .S(n14), .Z(N48) );
  GTECH_MUX2 U91 ( .A(n98), .B(n99), .S(Mcand[3]), .Z(n97) );
  GTECH_OR_NOT U92 ( .A(n100), .B(n84), .Z(n96) );
  GTECH_MUX2 U93 ( .A(n99), .B(n98), .S(Mcand[3]), .Z(n100) );
  GTECH_OAI2N2 U94 ( .A(n101), .B(n102), .C(n103), .D(n104), .Z(n98) );
  GTECH_OAI2N2 U95 ( .A(n103), .B(n105), .C(n101), .D(n106), .Z(n99) );
  GTECH_OA21 U96 ( .A(n107), .B(n108), .C(n109), .Z(n101) );
  GTECH_AO21 U97 ( .A(n108), .B(n107), .C(n110), .Z(n109) );
  GTECH_OAI21 U98 ( .A(n111), .B(n108), .C(n112), .Z(n103) );
  GTECH_OAI21 U99 ( .A(Mcand[2]), .B(n113), .C(n110), .Z(n112) );
  GTECH_MUX2 U100 ( .A(n114), .B(n115), .S(n110), .Z(N46) );
  GTECH_NOT U101 ( .A(n15), .Z(n110) );
  GTECH_NAND2 U102 ( .A(n116), .B(n84), .Z(n115) );
  GTECH_MUX2 U103 ( .A(n117), .B(n118), .S(n108), .Z(n116) );
  GTECH_NOT U104 ( .A(Mcand[2]), .Z(n108) );
  GTECH_NOT U105 ( .A(n119), .Z(n114) );
  GTECH_MUX2 U106 ( .A(n117), .B(n118), .S(Mcand[2]), .Z(n119) );
  GTECH_AOI22 U107 ( .A(n107), .B(n106), .C(n111), .D(n104), .Z(n118) );
  GTECH_NOT U108 ( .A(n113), .Z(n111) );
  GTECH_AOI2N2 U109 ( .A(n113), .B(n104), .C(n107), .D(n102), .Z(n117) );
  GTECH_ADD_ABC U110 ( .A(n120), .B(n121), .C(n122), .COUT(n107) );
  GTECH_NAND2 U111 ( .A(n81), .B(Mcand[0]), .Z(n120) );
  GTECH_ADD_ABC U112 ( .A(Mcand[1]), .B(n123), .C(n122), .COUT(n113) );
  GTECH_NOT U113 ( .A(n80), .Z(n122) );
  GTECH_AND2 U114 ( .A(n90), .B(Mcand[0]), .Z(n123) );
  GTECH_MUX2 U115 ( .A(n124), .B(n125), .S(n80), .Z(N44) );
  GTECH_MUX2 U116 ( .A(n126), .B(n127), .S(n121), .Z(n125) );
  GTECH_OR_NOT U117 ( .A(n128), .B(n84), .Z(n124) );
  GTECH_OR_NOT U118 ( .A(n91), .B(n13), .Z(n84) );
  GTECH_AND2 U119 ( .A(n129), .B(n130), .Z(n91) );
  GTECH_MUX2 U120 ( .A(n127), .B(n126), .S(n121), .Z(n128) );
  GTECH_NOT U121 ( .A(Mcand[1]), .Z(n121) );
  GTECH_OAI2N2 U122 ( .A(n88), .B(n102), .C(n131), .D(n104), .Z(n126) );
  GTECH_NOT U123 ( .A(n105), .Z(n104) );
  GTECH_OAI2N2 U124 ( .A(n131), .B(n105), .C(n88), .D(n106), .Z(n127) );
  GTECH_NOT U125 ( .A(n102), .Z(n106) );
  GTECH_OR2 U126 ( .A(n129), .B(n13), .Z(n102) );
  GTECH_AND2 U127 ( .A(n81), .B(Mcand[0]), .Z(n88) );
  GTECH_OR2 U128 ( .A(n130), .B(n13), .Z(n105) );
  GTECH_NAND2 U129 ( .A(n90), .B(Mcand[0]), .Z(n131) );
  GTECH_NOT U130 ( .A(n81), .Z(n90) );
  GTECH_NAND2 U131 ( .A(n129), .B(n132), .Z(N42) );
  GTECH_NAND3 U132 ( .A(n133), .B(n134), .C(n95), .Z(n132) );
  GTECH_NOT U133 ( .A(n12), .Z(n133) );
  GTECH_OA21 U134 ( .A(n12), .B(n83), .C(n95), .Z(N41) );
  GTECH_NOT U135 ( .A(n130), .Z(n95) );
  GTECH_OAI21 U136 ( .A(n92), .B(n93), .C(n135), .Z(N40) );
  GTECH_OA21 U137 ( .A(n134), .B(n130), .C(n129), .Z(n135) );
  GTECH_NOT U138 ( .A(n94), .Z(n129) );
  GTECH_AND2 U139 ( .A(n136), .B(n137), .Z(n94) );
  GTECH_OR2 U140 ( .A(n136), .B(n137), .Z(n130) );
  GTECH_NOT U141 ( .A(St), .Z(n93) );
  GTECH_NOT U142 ( .A(n86), .Z(n92) );
  GTECH_AND2 U143 ( .A(n82), .B(n137), .Z(n86) );
  GTECH_AND2 U144 ( .A(n83), .B(n12), .Z(n137) );
  GTECH_AND3 U145 ( .A(n136), .B(n134), .C(n12), .Z(Done) );
  GTECH_NOT U146 ( .A(n83), .Z(n134) );
  GTECH_NOT U147 ( .A(n82), .Z(n136) );
endmodule

