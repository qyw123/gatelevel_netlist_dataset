
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

  GTECH_FD2 State_reg_0_ ( .D(N40), .CP(CLK), .CD(n77), .Q(State[0]), .QN(n12)
         );
  GTECH_FD2 State_reg_2_ ( .D(N42), .CP(CLK), .CD(n77), .Q(State[2]), .QN(n13)
         );
  GTECH_FD2 State_reg_1_ ( .D(N41), .CP(CLK), .CD(n77), .Q(State[1]), .QN(n83)
         );
  GTECH_FJK1S B_reg_0_ ( .J(n69), .K(n69), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n82) );
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
  GTECH_AND2 U80 ( .A(n84), .B(N57), .Z(N63) );
  GTECH_NOT U81 ( .A(n85), .Z(N58) );
  GTECH_AOI222 U82 ( .A(Mplier[3]), .B(n86), .C(n87), .D(n88), .E(n89), .F(n90), .Z(n85) );
  GTECH_OAI21 U83 ( .A(Mcand[0]), .B(n91), .C(n84), .Z(n89) );
  GTECH_NOR2 U84 ( .A(n91), .B(n82), .Z(n87) );
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
  GTECH_NOT U98 ( .A(n15), .Z(n110) );
  GTECH_OAI21 U99 ( .A(n111), .B(n108), .C(n112), .Z(n103) );
  GTECH_AO21 U100 ( .A(n108), .B(n111), .C(n15), .Z(n112) );
  GTECH_MUX2 U101 ( .A(n113), .B(n114), .S(n15), .Z(N46) );
  GTECH_NOT U102 ( .A(n115), .Z(n114) );
  GTECH_MUX2 U103 ( .A(n116), .B(n117), .S(n108), .Z(n115) );
  GTECH_NOT U104 ( .A(Mcand[2]), .Z(n108) );
  GTECH_NAND2 U105 ( .A(n118), .B(n84), .Z(n113) );
  GTECH_MUX2 U106 ( .A(n116), .B(n117), .S(Mcand[2]), .Z(n118) );
  GTECH_OA22 U107 ( .A(n111), .B(n105), .C(n107), .D(n102), .Z(n117) );
  GTECH_NOT U108 ( .A(n119), .Z(n111) );
  GTECH_AOI2N2 U109 ( .A(n107), .B(n106), .C(n119), .D(n105), .Z(n116) );
  GTECH_ADD_ABC U110 ( .A(Mcand[1]), .B(n120), .C(n121), .COUT(n119) );
  GTECH_AND_NOT U111 ( .A(Mcand[0]), .B(n81), .Z(n120) );
  GTECH_ADD_ABC U112 ( .A(n122), .B(n123), .C(n121), .COUT(n107) );
  GTECH_NOT U113 ( .A(Mcand[1]), .Z(n123) );
  GTECH_OR_NOT U114 ( .A(n90), .B(Mcand[0]), .Z(n122) );
  GTECH_NOT U115 ( .A(n81), .Z(n90) );
  GTECH_MUX2 U116 ( .A(n124), .B(n125), .S(n121), .Z(N44) );
  GTECH_NOT U117 ( .A(n80), .Z(n121) );
  GTECH_OR_NOT U118 ( .A(n126), .B(n84), .Z(n125) );
  GTECH_OR_NOT U119 ( .A(n91), .B(n82), .Z(n84) );
  GTECH_AND2 U120 ( .A(n127), .B(n128), .Z(n91) );
  GTECH_MUX2 U121 ( .A(n129), .B(n130), .S(Mcand[1]), .Z(n126) );
  GTECH_MUX2 U122 ( .A(n130), .B(n129), .S(Mcand[1]), .Z(n124) );
  GTECH_OA21 U123 ( .A(n106), .B(n131), .C(n132), .Z(n129) );
  GTECH_OAI21 U124 ( .A(n88), .B(n102), .C(n105), .Z(n132) );
  GTECH_NOT U125 ( .A(n106), .Z(n102) );
  GTECH_OAI2N2 U126 ( .A(n131), .B(n105), .C(n88), .D(n106), .Z(n130) );
  GTECH_NOR2 U127 ( .A(n128), .B(n82), .Z(n106) );
  GTECH_AND2 U128 ( .A(Mcand[0]), .B(n81), .Z(n88) );
  GTECH_NOT U129 ( .A(n104), .Z(n105) );
  GTECH_AND_NOT U130 ( .A(n95), .B(n82), .Z(n104) );
  GTECH_OR_NOT U131 ( .A(n81), .B(Mcand[0]), .Z(n131) );
  GTECH_OR_NOT U132 ( .A(n94), .B(n133), .Z(N42) );
  GTECH_OR3 U133 ( .A(n12), .B(n83), .C(n127), .Z(n133) );
  GTECH_OA21 U134 ( .A(n12), .B(n83), .C(n95), .Z(N41) );
  GTECH_OAI21 U135 ( .A(n92), .B(n93), .C(n134), .Z(N40) );
  GTECH_OA21 U136 ( .A(n135), .B(n127), .C(n128), .Z(n134) );
  GTECH_NOT U137 ( .A(n94), .Z(n128) );
  GTECH_AND2 U138 ( .A(n136), .B(n137), .Z(n94) );
  GTECH_NOT U139 ( .A(n95), .Z(n127) );
  GTECH_NOR2 U140 ( .A(n137), .B(n136), .Z(n95) );
  GTECH_NOT U141 ( .A(St), .Z(n93) );
  GTECH_NOT U142 ( .A(n86), .Z(n92) );
  GTECH_AND_NOT U143 ( .A(n136), .B(n137), .Z(n86) );
  GTECH_AND2 U144 ( .A(n83), .B(n12), .Z(n136) );
  GTECH_AND3 U145 ( .A(n135), .B(n137), .C(n83), .Z(Done) );
  GTECH_NOT U146 ( .A(n13), .Z(n137) );
  GTECH_NOT U147 ( .A(n12), .Z(n135) );
endmodule

