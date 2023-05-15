
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n69, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n12) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n80) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n81) );
  GTECH_FJK1S B_reg_0_ ( .J(n69), .K(n69), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n78) );
  GTECH_FJK1S A_reg_3_ ( .J(n69), .K(n69), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n13) );
  GTECH_FJK1S A_reg_0_ ( .J(n69), .K(n69), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n77) );
  GTECH_FJK1S B_reg_3_ ( .J(n69), .K(n69), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n14) );
  GTECH_FJK1S B_reg_2_ ( .J(n69), .K(n69), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n15) );
  GTECH_FJK1S B_reg_1_ ( .J(n69), .K(n69), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n16) );
  GTECH_FJK1S A_reg_1_ ( .J(n69), .K(n69), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n79) );
  GTECH_FJK1S A_reg_2_ ( .J(n69), .K(n69), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n17) );
  GTECH_ZERO U76 ( .Z(n69) );
  GTECH_AND2 U77 ( .A(N57), .B(n82), .Z(N63) );
  GTECH_AO21 U78 ( .A(Mplier[3]), .B(n83), .C(n84), .Z(N58) );
  GTECH_OAI21 U79 ( .A(n77), .B(n85), .C(n86), .Z(n84) );
  GTECH_OR3 U80 ( .A(n78), .B(n87), .C(n88), .Z(n86) );
  GTECH_OA21 U81 ( .A(Mcand[0]), .B(n87), .C(n82), .Z(n85) );
  GTECH_OAI21 U82 ( .A(n89), .B(n90), .C(n87), .Z(N57) );
  GTECH_OAI2N2 U83 ( .A(n14), .B(n87), .C(Mplier[2]), .D(n83), .Z(N56) );
  GTECH_OAI2N2 U84 ( .A(n15), .B(n87), .C(Mplier[1]), .D(n83), .Z(N54) );
  GTECH_OAI2N2 U85 ( .A(n16), .B(n87), .C(Mplier[0]), .D(n83), .Z(N52) );
  GTECH_MUX2 U86 ( .A(n91), .B(n92), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U87 ( .A(n93), .B(n94), .S(n13), .Z(N48) );
  GTECH_MUX2 U88 ( .A(n95), .B(n96), .S(Mcand[3]), .Z(n94) );
  GTECH_OR_NOT U89 ( .A(n97), .B(n82), .Z(n93) );
  GTECH_MUX2 U90 ( .A(n96), .B(n95), .S(Mcand[3]), .Z(n97) );
  GTECH_OAI22 U91 ( .A(n98), .B(n99), .C(n100), .D(n101), .Z(n95) );
  GTECH_AO22 U92 ( .A(n98), .B(n102), .C(n100), .D(n103), .Z(n96) );
  GTECH_OA21 U93 ( .A(n104), .B(n105), .C(n106), .Z(n100) );
  GTECH_OAI21 U94 ( .A(Mcand[2]), .B(n107), .C(n17), .Z(n106) );
  GTECH_OA21 U95 ( .A(n108), .B(n105), .C(n109), .Z(n98) );
  GTECH_AO21 U96 ( .A(n105), .B(n108), .C(n17), .Z(n109) );
  GTECH_NOT U97 ( .A(Mcand[2]), .Z(n105) );
  GTECH_MUX2 U98 ( .A(n110), .B(n111), .S(n17), .Z(N46) );
  GTECH_NOT U99 ( .A(n112), .Z(n111) );
  GTECH_MUX2 U100 ( .A(n113), .B(n114), .S(Mcand[2]), .Z(n112) );
  GTECH_NAND2 U101 ( .A(n115), .B(n82), .Z(n110) );
  GTECH_MUX2 U102 ( .A(n114), .B(n113), .S(Mcand[2]), .Z(n115) );
  GTECH_AOI2N2 U103 ( .A(n107), .B(n103), .C(n108), .D(n99), .Z(n113) );
  GTECH_NOT U104 ( .A(n116), .Z(n108) );
  GTECH_AOI2N2 U105 ( .A(n104), .B(n103), .C(n116), .D(n99), .Z(n114) );
  GTECH_ADD_ABC U106 ( .A(Mcand[1]), .B(n117), .C(n118), .COUT(n116) );
  GTECH_AND_NOT U107 ( .A(Mcand[0]), .B(n77), .Z(n117) );
  GTECH_NOT U108 ( .A(n107), .Z(n104) );
  GTECH_ADD_ABC U109 ( .A(n119), .B(Mcand[1]), .C(n79), .COUT(n107) );
  GTECH_AND2 U110 ( .A(Mcand[0]), .B(n77), .Z(n119) );
  GTECH_MUX2 U111 ( .A(n120), .B(n121), .S(n118), .Z(N44) );
  GTECH_NOT U112 ( .A(n79), .Z(n118) );
  GTECH_NAND2 U113 ( .A(n122), .B(n82), .Z(n121) );
  GTECH_OR_NOT U114 ( .A(n87), .B(n78), .Z(n82) );
  GTECH_AND_NOT U115 ( .A(n123), .B(n91), .Z(n87) );
  GTECH_MUX2 U116 ( .A(n124), .B(n125), .S(Mcand[1]), .Z(n122) );
  GTECH_NOT U117 ( .A(n126), .Z(n120) );
  GTECH_MUX2 U118 ( .A(n125), .B(n124), .S(Mcand[1]), .Z(n126) );
  GTECH_OAI21 U119 ( .A(n103), .B(n127), .C(n128), .Z(n124) );
  GTECH_AO21 U120 ( .A(n88), .B(n103), .C(n102), .Z(n128) );
  GTECH_NOT U121 ( .A(n101), .Z(n103) );
  GTECH_OA22 U122 ( .A(n88), .B(n101), .C(n127), .D(n99), .Z(n125) );
  GTECH_NOT U123 ( .A(n102), .Z(n99) );
  GTECH_NOR2 U124 ( .A(n123), .B(n78), .Z(n102) );
  GTECH_OR_NOT U125 ( .A(n77), .B(Mcand[0]), .Z(n127) );
  GTECH_OR_NOT U126 ( .A(n78), .B(n91), .Z(n101) );
  GTECH_NAND2 U127 ( .A(Mcand[0]), .B(n77), .Z(n88) );
  GTECH_OR_NOT U128 ( .A(n91), .B(n129), .Z(N42) );
  GTECH_OR3 U129 ( .A(n81), .B(n12), .C(n123), .Z(n129) );
  GTECH_NOT U130 ( .A(n92), .Z(n123) );
  GTECH_OA21 U131 ( .A(n12), .B(n81), .C(n92), .Z(N41) );
  GTECH_OAI21 U132 ( .A(n89), .B(n90), .C(n130), .Z(N40) );
  GTECH_AOI21 U133 ( .A(n12), .B(n92), .C(n91), .Z(n130) );
  GTECH_AND3 U134 ( .A(n131), .B(n12), .C(n81), .Z(n91) );
  GTECH_AOI21 U135 ( .A(n12), .B(n81), .C(n131), .Z(n92) );
  GTECH_NOT U136 ( .A(St), .Z(n90) );
  GTECH_NOT U137 ( .A(n83), .Z(n89) );
  GTECH_AND3 U138 ( .A(n12), .B(n81), .C(n80), .Z(n83) );
  GTECH_AND3 U139 ( .A(n132), .B(n131), .C(n81), .Z(Done) );
  GTECH_NOT U140 ( .A(n80), .Z(n131) );
  GTECH_NOT U141 ( .A(n12), .Z(n132) );
endmodule

