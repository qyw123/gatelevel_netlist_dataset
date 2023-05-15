
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63, n12,
         n13, n15, n16, n17, n70, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n12) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n13) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n83) );
  GTECH_FJK1S B_reg_0_ ( .J(n70), .K(n70), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n82) );
  GTECH_FJK1S A_reg_3_ ( .J(n70), .K(n70), .TI(N50), .TE(N63), .CP(CLK), .QN(
        n78) );
  GTECH_FJK1S A_reg_0_ ( .J(n70), .K(n70), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n81) );
  GTECH_FJK1S A_reg_1_ ( .J(n70), .K(n70), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n80) );
  GTECH_FJK1S A_reg_2_ ( .J(n70), .K(n70), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n79) );
  GTECH_FJK1S B_reg_3_ ( .J(n70), .K(n70), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n15) );
  GTECH_FJK1S B_reg_2_ ( .J(n70), .K(n70), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n16) );
  GTECH_FJK1S B_reg_1_ ( .J(n70), .K(n70), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n17) );
  GTECH_ZERO U77 ( .Z(n70) );
  GTECH_AND2 U78 ( .A(N57), .B(n84), .Z(N63) );
  GTECH_NOT U79 ( .A(n85), .Z(N58) );
  GTECH_AOI222 U80 ( .A(Mplier[3]), .B(n86), .C(n87), .D(n88), .E(n89), .F(n90), .Z(n85) );
  GTECH_OAI21 U81 ( .A(Mcand[0]), .B(n91), .C(n84), .Z(n89) );
  GTECH_AND_NOT U82 ( .A(n92), .B(n82), .Z(n87) );
  GTECH_AO21 U83 ( .A(n86), .B(St), .C(n92), .Z(N57) );
  GTECH_NOT U84 ( .A(n91), .Z(n92) );
  GTECH_OAI2N2 U85 ( .A(n15), .B(n91), .C(Mplier[2]), .D(n86), .Z(N56) );
  GTECH_OAI2N2 U86 ( .A(n16), .B(n91), .C(Mplier[1]), .D(n86), .Z(N54) );
  GTECH_OAI2N2 U87 ( .A(n17), .B(n91), .C(Mplier[0]), .D(n86), .Z(N52) );
  GTECH_MUX2 U88 ( .A(n93), .B(n94), .S(n95), .Z(N50) );
  GTECH_MUX2 U89 ( .A(n96), .B(n97), .S(n78), .Z(N48) );
  GTECH_MUX2 U90 ( .A(n98), .B(n99), .S(Mcand[3]), .Z(n97) );
  GTECH_OR_NOT U91 ( .A(n100), .B(n84), .Z(n96) );
  GTECH_MUX2 U92 ( .A(n98), .B(n99), .S(n95), .Z(n100) );
  GTECH_NOT U93 ( .A(Mcand[3]), .Z(n95) );
  GTECH_AO22 U94 ( .A(n101), .B(n102), .C(n103), .D(n104), .Z(n99) );
  GTECH_OAI22 U95 ( .A(n101), .B(n105), .C(n103), .D(n106), .Z(n98) );
  GTECH_OA21 U96 ( .A(n107), .B(n108), .C(n109), .Z(n103) );
  GTECH_OAI21 U97 ( .A(Mcand[2]), .B(n110), .C(n79), .Z(n109) );
  GTECH_OA21 U98 ( .A(n111), .B(n108), .C(n112), .Z(n101) );
  GTECH_AO21 U99 ( .A(n108), .B(n111), .C(n79), .Z(n112) );
  GTECH_MUX2 U100 ( .A(n113), .B(n114), .S(n79), .Z(N46) );
  GTECH_NOT U101 ( .A(n115), .Z(n114) );
  GTECH_MUX2 U102 ( .A(n116), .B(n117), .S(Mcand[2]), .Z(n115) );
  GTECH_NAND2 U103 ( .A(n118), .B(n84), .Z(n113) );
  GTECH_MUX2 U104 ( .A(n116), .B(n117), .S(n108), .Z(n118) );
  GTECH_NOT U105 ( .A(Mcand[2]), .Z(n108) );
  GTECH_AOI22 U106 ( .A(n111), .B(n102), .C(n107), .D(n104), .Z(n117) );
  GTECH_OA22 U107 ( .A(n111), .B(n105), .C(n107), .D(n106), .Z(n116) );
  GTECH_NOT U108 ( .A(n110), .Z(n107) );
  GTECH_ADD_ABC U109 ( .A(n88), .B(Mcand[1]), .C(n80), .COUT(n110) );
  GTECH_OA21 U110 ( .A(n80), .B(n119), .C(n120), .Z(n111) );
  GTECH_NAND3 U111 ( .A(n121), .B(n90), .C(Mcand[0]), .Z(n120) );
  GTECH_NOT U112 ( .A(Mcand[1]), .Z(n119) );
  GTECH_OAI21 U113 ( .A(n122), .B(n121), .C(n123), .Z(N44) );
  GTECH_MUX2 U114 ( .A(n124), .B(n125), .S(n80), .Z(n123) );
  GTECH_NAND2 U115 ( .A(Mcand[1]), .B(n126), .Z(n125) );
  GTECH_AND_NOT U116 ( .A(n84), .B(n127), .Z(n124) );
  GTECH_MUX2 U117 ( .A(n126), .B(n128), .S(Mcand[1]), .Z(n127) );
  GTECH_OAI21 U118 ( .A(n88), .B(n106), .C(n129), .Z(n126) );
  GTECH_AO21 U119 ( .A(n90), .B(Mcand[0]), .C(n105), .Z(n129) );
  GTECH_NOT U120 ( .A(n104), .Z(n106) );
  GTECH_OR_NOT U121 ( .A(n91), .B(n82), .Z(n84) );
  GTECH_AND_NOT U122 ( .A(n130), .B(n93), .Z(n91) );
  GTECH_NOT U123 ( .A(n131), .Z(n121) );
  GTECH_AND_NOT U124 ( .A(n80), .B(Mcand[1]), .Z(n131) );
  GTECH_NOT U125 ( .A(n128), .Z(n122) );
  GTECH_AO21 U126 ( .A(n88), .B(n104), .C(n132), .Z(n128) );
  GTECH_AND3 U127 ( .A(Mcand[0]), .B(n90), .C(n102), .Z(n132) );
  GTECH_NOT U128 ( .A(n105), .Z(n102) );
  GTECH_OR_NOT U129 ( .A(n82), .B(n93), .Z(n105) );
  GTECH_NOT U130 ( .A(n81), .Z(n90) );
  GTECH_AND_NOT U131 ( .A(n94), .B(n82), .Z(n104) );
  GTECH_AND2 U132 ( .A(Mcand[0]), .B(n81), .Z(n88) );
  GTECH_NAND2 U133 ( .A(n130), .B(n133), .Z(N42) );
  GTECH_OR3 U134 ( .A(n12), .B(n83), .C(n134), .Z(n133) );
  GTECH_OA21 U135 ( .A(n12), .B(n83), .C(n93), .Z(N41) );
  GTECH_AO21 U136 ( .A(n86), .B(St), .C(n135), .Z(N40) );
  GTECH_OAI21 U137 ( .A(n136), .B(n134), .C(n130), .Z(n135) );
  GTECH_NOT U138 ( .A(n94), .Z(n130) );
  GTECH_AND_NOT U139 ( .A(n137), .B(n13), .Z(n94) );
  GTECH_NOT U140 ( .A(n93), .Z(n134) );
  GTECH_AND_NOT U141 ( .A(n13), .B(n137), .Z(n93) );
  GTECH_AND_NOT U142 ( .A(n137), .B(n138), .Z(n86) );
  GTECH_AND_NOT U143 ( .A(n83), .B(n136), .Z(n137) );
  GTECH_AND3 U144 ( .A(n136), .B(n138), .C(n83), .Z(Done) );
  GTECH_NOT U145 ( .A(n13), .Z(n138) );
  GTECH_NOT U146 ( .A(n12), .Z(n136) );
endmodule

