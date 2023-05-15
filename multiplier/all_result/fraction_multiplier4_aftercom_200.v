
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
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n79) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n80) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n12) );
  GTECH_FJK1S B_reg_0_ ( .J(n69), .K(n69), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n13) );
  GTECH_FJK1S A_reg_3_ ( .J(n69), .K(n69), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n14) );
  GTECH_FJK1S A_reg_0_ ( .J(n69), .K(n69), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n78) );
  GTECH_FJK1S A_reg_1_ ( .J(n69), .K(n69), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n77) );
  GTECH_FJK1S A_reg_2_ ( .J(n69), .K(n69), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n15) );
  GTECH_FJK1S B_reg_3_ ( .J(n69), .K(n69), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n16) );
  GTECH_FJK1S B_reg_2_ ( .J(n69), .K(n69), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n17) );
  GTECH_FJK1S B_reg_1_ ( .J(n69), .K(n69), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n18) );
  GTECH_ZERO U75 ( .Z(n69) );
  GTECH_AND_NOT U76 ( .A(N57), .B(n81), .Z(N63) );
  GTECH_NOT U77 ( .A(n82), .Z(N58) );
  GTECH_AOI222 U78 ( .A(Mplier[3]), .B(n83), .C(n84), .D(n85), .E(n86), .F(n87), .Z(n82) );
  GTECH_AO21 U79 ( .A(n88), .B(n89), .C(n81), .Z(n86) );
  GTECH_AND_NOT U80 ( .A(n89), .B(n13), .Z(n84) );
  GTECH_AO21 U81 ( .A(n83), .B(St), .C(n89), .Z(N57) );
  GTECH_OAI2N2 U82 ( .A(n16), .B(n90), .C(Mplier[2]), .D(n83), .Z(N56) );
  GTECH_OAI2N2 U83 ( .A(n17), .B(n90), .C(Mplier[1]), .D(n83), .Z(N54) );
  GTECH_OAI2N2 U84 ( .A(n18), .B(n90), .C(Mplier[0]), .D(n83), .Z(N52) );
  GTECH_MUX2 U85 ( .A(n91), .B(n92), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U86 ( .A(n93), .B(n94), .S(n14), .Z(N48) );
  GTECH_MUX2 U87 ( .A(n95), .B(n96), .S(Mcand[3]), .Z(n94) );
  GTECH_OR2 U88 ( .A(n97), .B(n81), .Z(n93) );
  GTECH_MUX2 U89 ( .A(n96), .B(n95), .S(Mcand[3]), .Z(n97) );
  GTECH_OAI2N2 U90 ( .A(n98), .B(n99), .C(n100), .D(n101), .Z(n95) );
  GTECH_OAI2N2 U91 ( .A(n100), .B(n102), .C(n98), .D(n103), .Z(n96) );
  GTECH_OA21 U92 ( .A(n104), .B(n105), .C(n106), .Z(n98) );
  GTECH_AO21 U93 ( .A(n105), .B(n104), .C(n107), .Z(n106) );
  GTECH_OAI21 U94 ( .A(n108), .B(n105), .C(n109), .Z(n100) );
  GTECH_OAI21 U95 ( .A(Mcand[2]), .B(n110), .C(n107), .Z(n109) );
  GTECH_MUX2 U96 ( .A(n111), .B(n112), .S(n107), .Z(N46) );
  GTECH_NOT U97 ( .A(n15), .Z(n107) );
  GTECH_OR_NOT U98 ( .A(n81), .B(n113), .Z(n112) );
  GTECH_MUX2 U99 ( .A(n114), .B(n115), .S(n105), .Z(n113) );
  GTECH_NOT U100 ( .A(Mcand[2]), .Z(n105) );
  GTECH_NOT U101 ( .A(n116), .Z(n111) );
  GTECH_MUX2 U102 ( .A(n114), .B(n115), .S(Mcand[2]), .Z(n116) );
  GTECH_AOI22 U103 ( .A(n104), .B(n103), .C(n108), .D(n101), .Z(n115) );
  GTECH_NOT U104 ( .A(n110), .Z(n108) );
  GTECH_AOI2N2 U105 ( .A(n110), .B(n101), .C(n104), .D(n99), .Z(n114) );
  GTECH_ADD_ABC U106 ( .A(n117), .B(n118), .C(n119), .COUT(n104) );
  GTECH_OR_NOT U107 ( .A(n88), .B(n78), .Z(n117) );
  GTECH_ADD_ABC U108 ( .A(Mcand[1]), .B(n120), .C(n119), .COUT(n110) );
  GTECH_NOT U109 ( .A(n77), .Z(n119) );
  GTECH_ADD_AB U110 ( .A(n87), .B(Mcand[0]), .COUT(n120) );
  GTECH_MUX2 U111 ( .A(n121), .B(n122), .S(n77), .Z(N44) );
  GTECH_MUX2 U112 ( .A(n123), .B(n124), .S(n118), .Z(n122) );
  GTECH_OR2 U113 ( .A(n81), .B(n125), .Z(n121) );
  GTECH_MUX2 U114 ( .A(n124), .B(n123), .S(n118), .Z(n125) );
  GTECH_NOT U115 ( .A(Mcand[1]), .Z(n118) );
  GTECH_OA21 U116 ( .A(n103), .B(n126), .C(n127), .Z(n123) );
  GTECH_OAI21 U117 ( .A(n85), .B(n99), .C(n102), .Z(n127) );
  GTECH_NOT U118 ( .A(n103), .Z(n99) );
  GTECH_OAI2N2 U119 ( .A(n126), .B(n102), .C(n85), .D(n103), .Z(n124) );
  GTECH_AND_NOT U120 ( .A(n91), .B(n13), .Z(n103) );
  GTECH_AND_NOT U121 ( .A(Mcand[0]), .B(n87), .Z(n85) );
  GTECH_NOT U122 ( .A(n101), .Z(n102) );
  GTECH_AND_NOT U123 ( .A(n92), .B(n13), .Z(n101) );
  GTECH_OR_NOT U124 ( .A(n88), .B(n87), .Z(n126) );
  GTECH_NOT U125 ( .A(n78), .Z(n87) );
  GTECH_NOT U126 ( .A(Mcand[0]), .Z(n88) );
  GTECH_AND_NOT U127 ( .A(n13), .B(n90), .Z(n81) );
  GTECH_NOT U128 ( .A(n89), .Z(n90) );
  GTECH_OR2 U129 ( .A(n91), .B(n92), .Z(n89) );
  GTECH_AO21 U130 ( .A(n92), .B(n128), .C(n91), .Z(N42) );
  GTECH_NOR2 U131 ( .A(n80), .B(n79), .Z(n128) );
  GTECH_OA21 U132 ( .A(n79), .B(n80), .C(n92), .Z(N41) );
  GTECH_AO21 U133 ( .A(n83), .B(St), .C(n129), .Z(N40) );
  GTECH_AO21 U134 ( .A(n79), .B(n92), .C(n91), .Z(n129) );
  GTECH_ADD_AB U135 ( .A(n130), .B(n131), .COUT(n91) );
  GTECH_AND_NOT U136 ( .A(n12), .B(n130), .Z(n92) );
  GTECH_AND_NOT U137 ( .A(n130), .B(n131), .Z(n83) );
  GTECH_ADD_AB U138 ( .A(n79), .B(n80), .COUT(n130) );
  GTECH_AND3 U139 ( .A(n131), .B(n132), .C(n80), .Z(Done) );
  GTECH_NOT U140 ( .A(n79), .Z(n132) );
  GTECH_NOT U141 ( .A(n12), .Z(n131) );
endmodule

