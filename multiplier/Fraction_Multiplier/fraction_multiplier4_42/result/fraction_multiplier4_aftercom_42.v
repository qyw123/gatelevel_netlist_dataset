
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n18, n69, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n79) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n80) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n12) );
  GTECH_FJK1S B_reg_0_ ( .J(n69), .K(n69), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n13) );
  GTECH_FJK1S A_reg_3_ ( .J(n69), .K(n69), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n14) );
  GTECH_FJK1S A_reg_0_ ( .J(n69), .K(n69), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n77) );
  GTECH_FJK1S A_reg_1_ ( .J(n69), .K(n69), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n15) );
  GTECH_FJK1S A_reg_2_ ( .J(n69), .K(n69), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n78) );
  GTECH_FJK1S B_reg_3_ ( .J(n69), .K(n69), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n16) );
  GTECH_FJK1S B_reg_2_ ( .J(n69), .K(n69), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n17) );
  GTECH_FJK1S B_reg_1_ ( .J(n69), .K(n69), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n18) );
  GTECH_ZERO U75 ( .Z(n69) );
  GTECH_AND2 U76 ( .A(n81), .B(N57), .Z(N63) );
  GTECH_AO21 U77 ( .A(Mplier[3]), .B(n82), .C(n83), .Z(N58) );
  GTECH_OAI21 U78 ( .A(n77), .B(n84), .C(n85), .Z(n83) );
  GTECH_OR3 U79 ( .A(n86), .B(n13), .C(n87), .Z(n85) );
  GTECH_OA21 U80 ( .A(Mcand[0]), .B(n86), .C(n81), .Z(n84) );
  GTECH_OAI21 U81 ( .A(n88), .B(n89), .C(n86), .Z(N57) );
  GTECH_OAI2N2 U82 ( .A(n16), .B(n86), .C(Mplier[2]), .D(n82), .Z(N56) );
  GTECH_OAI2N2 U83 ( .A(n17), .B(n86), .C(Mplier[1]), .D(n82), .Z(N54) );
  GTECH_OAI2N2 U84 ( .A(n18), .B(n86), .C(Mplier[0]), .D(n82), .Z(N52) );
  GTECH_MUX2 U85 ( .A(n90), .B(n91), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U86 ( .A(n92), .B(n93), .S(n14), .Z(N48) );
  GTECH_NOT U87 ( .A(n94), .Z(n93) );
  GTECH_MUX2 U88 ( .A(n95), .B(n96), .S(Mcand[3]), .Z(n94) );
  GTECH_NAND2 U89 ( .A(n97), .B(n81), .Z(n92) );
  GTECH_MUX2 U90 ( .A(n96), .B(n95), .S(Mcand[3]), .Z(n97) );
  GTECH_OA22 U91 ( .A(n98), .B(n99), .C(n100), .D(n101), .Z(n95) );
  GTECH_NOT U92 ( .A(n102), .Z(n98) );
  GTECH_AOI2N2 U93 ( .A(n100), .B(n103), .C(n102), .D(n99), .Z(n96) );
  GTECH_OAI21 U94 ( .A(n104), .B(n105), .C(n106), .Z(n102) );
  GTECH_OAI21 U95 ( .A(Mcand[2]), .B(n107), .C(n78), .Z(n106) );
  GTECH_OA21 U96 ( .A(n108), .B(n105), .C(n109), .Z(n100) );
  GTECH_AO21 U97 ( .A(n105), .B(n108), .C(n78), .Z(n109) );
  GTECH_NOT U98 ( .A(Mcand[2]), .Z(n105) );
  GTECH_MUX2 U99 ( .A(n110), .B(n111), .S(n78), .Z(N46) );
  GTECH_MUX2 U100 ( .A(n112), .B(n113), .S(Mcand[2]), .Z(n111) );
  GTECH_OR_NOT U101 ( .A(n114), .B(n81), .Z(n110) );
  GTECH_MUX2 U102 ( .A(n113), .B(n112), .S(Mcand[2]), .Z(n114) );
  GTECH_OAI22 U103 ( .A(n108), .B(n101), .C(n104), .D(n99), .Z(n112) );
  GTECH_OAI2N2 U104 ( .A(n107), .B(n99), .C(n108), .D(n103), .Z(n113) );
  GTECH_OA21 U105 ( .A(n115), .B(n116), .C(n117), .Z(n108) );
  GTECH_AO21 U106 ( .A(n116), .B(n115), .C(n15), .Z(n117) );
  GTECH_NOT U107 ( .A(n104), .Z(n107) );
  GTECH_OA21 U108 ( .A(n87), .B(n115), .C(n118), .Z(n104) );
  GTECH_OAI21 U109 ( .A(n119), .B(Mcand[1]), .C(n15), .Z(n118) );
  GTECH_NOT U110 ( .A(Mcand[1]), .Z(n115) );
  GTECH_MUX2 U111 ( .A(n120), .B(n121), .S(n15), .Z(N44) );
  GTECH_MUX2 U112 ( .A(n122), .B(n123), .S(Mcand[1]), .Z(n121) );
  GTECH_OR_NOT U113 ( .A(n124), .B(n81), .Z(n120) );
  GTECH_OR_NOT U114 ( .A(n86), .B(n13), .Z(n81) );
  GTECH_NOR2 U115 ( .A(n91), .B(n90), .Z(n86) );
  GTECH_MUX2 U116 ( .A(n123), .B(n122), .S(Mcand[1]), .Z(n124) );
  GTECH_OAI22 U117 ( .A(n116), .B(n101), .C(n87), .D(n99), .Z(n122) );
  GTECH_NOT U118 ( .A(n119), .Z(n87) );
  GTECH_NOT U119 ( .A(n103), .Z(n101) );
  GTECH_OAI2N2 U120 ( .A(n119), .B(n99), .C(n116), .D(n103), .Z(n123) );
  GTECH_NOR2 U121 ( .A(n125), .B(n13), .Z(n103) );
  GTECH_NOT U122 ( .A(n91), .Z(n125) );
  GTECH_OR_NOT U123 ( .A(n77), .B(Mcand[0]), .Z(n116) );
  GTECH_OR_NOT U124 ( .A(n13), .B(n90), .Z(n99) );
  GTECH_AND2 U125 ( .A(n77), .B(Mcand[0]), .Z(n119) );
  GTECH_OR_NOT U126 ( .A(n90), .B(n126), .Z(N42) );
  GTECH_NAND3 U127 ( .A(n127), .B(n128), .C(n91), .Z(n126) );
  GTECH_OA21 U128 ( .A(n12), .B(n79), .C(n91), .Z(N41) );
  GTECH_OAI21 U129 ( .A(n88), .B(n89), .C(n129), .Z(N40) );
  GTECH_AOI21 U130 ( .A(n79), .B(n91), .C(n90), .Z(n129) );
  GTECH_NOR3 U131 ( .A(n127), .B(n80), .C(n128), .Z(n90) );
  GTECH_AOI21 U132 ( .A(n12), .B(n79), .C(n130), .Z(n91) );
  GTECH_NOT U133 ( .A(St), .Z(n89) );
  GTECH_NOT U134 ( .A(n82), .Z(n88) );
  GTECH_NOR3 U135 ( .A(n128), .B(n127), .C(n130), .Z(n82) );
  GTECH_NOT U136 ( .A(n12), .Z(n127) );
  GTECH_AND3 U137 ( .A(n128), .B(n130), .C(n12), .Z(Done) );
  GTECH_NOT U138 ( .A(n80), .Z(n130) );
  GTECH_NOT U139 ( .A(n79), .Z(n128) );
endmodule

