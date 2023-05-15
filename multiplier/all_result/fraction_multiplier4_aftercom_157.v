
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63, n12,
         n13, n14, n16, n17, n18, n69, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n12) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n13) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n81) );
  GTECH_FJK1S B_reg_0_ ( .J(n69), .K(n69), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n14) );
  GTECH_FJK1S A_reg_3_ ( .J(n69), .K(n69), .TI(N50), .TE(N63), .CP(CLK), .QN(
        n77) );
  GTECH_FJK1S A_reg_0_ ( .J(n69), .K(n69), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n80) );
  GTECH_FJK1S A_reg_1_ ( .J(n69), .K(n69), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n79) );
  GTECH_FJK1S A_reg_2_ ( .J(n69), .K(n69), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n78) );
  GTECH_FJK1S B_reg_3_ ( .J(n69), .K(n69), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n16) );
  GTECH_FJK1S B_reg_2_ ( .J(n69), .K(n69), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n17) );
  GTECH_FJK1S B_reg_1_ ( .J(n69), .K(n69), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n18) );
  GTECH_ZERO U75 ( .Z(n69) );
  GTECH_AND2 U76 ( .A(n82), .B(N57), .Z(N63) );
  GTECH_NOT U77 ( .A(n83), .Z(N58) );
  GTECH_AOI222 U78 ( .A(Mplier[3]), .B(n84), .C(n85), .D(n86), .E(n87), .F(n88), .Z(n83) );
  GTECH_OAI21 U79 ( .A(Mcand[0]), .B(n89), .C(n82), .Z(n87) );
  GTECH_NOR2 U80 ( .A(n14), .B(n89), .Z(n85) );
  GTECH_OAI21 U81 ( .A(n90), .B(n91), .C(n89), .Z(N57) );
  GTECH_OAI2N2 U82 ( .A(n16), .B(n89), .C(Mplier[2]), .D(n84), .Z(N56) );
  GTECH_OAI2N2 U83 ( .A(n17), .B(n89), .C(Mplier[1]), .D(n84), .Z(N54) );
  GTECH_OAI2N2 U84 ( .A(n18), .B(n89), .C(Mplier[0]), .D(n84), .Z(N52) );
  GTECH_MUX2 U85 ( .A(n92), .B(n93), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U86 ( .A(n94), .B(n95), .S(n77), .Z(N48) );
  GTECH_MUX2 U87 ( .A(n96), .B(n97), .S(Mcand[3]), .Z(n95) );
  GTECH_OR_NOT U88 ( .A(n98), .B(n82), .Z(n94) );
  GTECH_MUX2 U89 ( .A(n97), .B(n96), .S(Mcand[3]), .Z(n98) );
  GTECH_AO22 U90 ( .A(n99), .B(n100), .C(n101), .D(n102), .Z(n96) );
  GTECH_OAI22 U91 ( .A(n99), .B(n103), .C(n101), .D(n104), .Z(n97) );
  GTECH_OA21 U92 ( .A(Mcand[2]), .B(n105), .C(n106), .Z(n101) );
  GTECH_AO21 U93 ( .A(n105), .B(Mcand[2]), .C(n78), .Z(n106) );
  GTECH_ADD_ABC U94 ( .A(Mcand[2]), .B(n107), .C(n108), .COUT(n99) );
  GTECH_NOT U95 ( .A(n78), .Z(n108) );
  GTECH_AOI21 U96 ( .A(n109), .B(n79), .C(n110), .Z(n107) );
  GTECH_MUX2 U97 ( .A(n111), .B(n112), .S(n78), .Z(N46) );
  GTECH_MUX2 U98 ( .A(n113), .B(n114), .S(Mcand[2]), .Z(n112) );
  GTECH_OR_NOT U99 ( .A(n115), .B(n82), .Z(n111) );
  GTECH_MUX2 U100 ( .A(n114), .B(n113), .S(Mcand[2]), .Z(n115) );
  GTECH_OAI2N2 U101 ( .A(n116), .B(n103), .C(n105), .D(n102), .Z(n113) );
  GTECH_OAI2N2 U102 ( .A(n105), .B(n104), .C(n116), .D(n100), .Z(n114) );
  GTECH_AO21 U103 ( .A(n109), .B(n79), .C(n110), .Z(n116) );
  GTECH_OA22 U104 ( .A(n80), .B(n117), .C(n79), .D(n109), .Z(n110) );
  GTECH_ADD_ABC U105 ( .A(n118), .B(Mcand[1]), .C(n79), .COUT(n105) );
  GTECH_AND2 U106 ( .A(Mcand[0]), .B(n80), .Z(n118) );
  GTECH_MUX2 U107 ( .A(n119), .B(n120), .S(n79), .Z(N44) );
  GTECH_NOT U108 ( .A(n121), .Z(n120) );
  GTECH_MUX2 U109 ( .A(n122), .B(n123), .S(n109), .Z(n121) );
  GTECH_NOT U110 ( .A(Mcand[1]), .Z(n109) );
  GTECH_NAND2 U111 ( .A(n124), .B(n82), .Z(n119) );
  GTECH_OR_NOT U112 ( .A(n89), .B(n14), .Z(n82) );
  GTECH_AND2 U113 ( .A(n125), .B(n126), .Z(n89) );
  GTECH_MUX2 U114 ( .A(n122), .B(n123), .S(Mcand[1]), .Z(n124) );
  GTECH_AOI21 U115 ( .A(n86), .B(n102), .C(n127), .Z(n123) );
  GTECH_NOR3 U116 ( .A(n80), .B(n117), .C(n103), .Z(n127) );
  GTECH_NAND2 U117 ( .A(n128), .B(n129), .Z(n122) );
  GTECH_OR3 U118 ( .A(n80), .B(n102), .C(n117), .Z(n129) );
  GTECH_NOT U119 ( .A(Mcand[0]), .Z(n117) );
  GTECH_OAI21 U120 ( .A(n86), .B(n104), .C(n103), .Z(n128) );
  GTECH_NOT U121 ( .A(n100), .Z(n103) );
  GTECH_NOR2 U122 ( .A(n126), .B(n14), .Z(n100) );
  GTECH_NOT U123 ( .A(n102), .Z(n104) );
  GTECH_NOR2 U124 ( .A(n125), .B(n14), .Z(n102) );
  GTECH_NOT U125 ( .A(n92), .Z(n125) );
  GTECH_AND_NOT U126 ( .A(Mcand[0]), .B(n88), .Z(n86) );
  GTECH_NOT U127 ( .A(n80), .Z(n88) );
  GTECH_OR_NOT U128 ( .A(n92), .B(n130), .Z(N42) );
  GTECH_OR3 U129 ( .A(n81), .B(n12), .C(n126), .Z(n130) );
  GTECH_NOT U130 ( .A(n93), .Z(n126) );
  GTECH_OA21 U131 ( .A(n12), .B(n81), .C(n93), .Z(N41) );
  GTECH_OAI21 U132 ( .A(n90), .B(n91), .C(n131), .Z(N40) );
  GTECH_AOI21 U133 ( .A(n12), .B(n93), .C(n92), .Z(n131) );
  GTECH_AND2 U134 ( .A(n132), .B(n133), .Z(n92) );
  GTECH_NOR2 U135 ( .A(n133), .B(n132), .Z(n93) );
  GTECH_NOT U136 ( .A(St), .Z(n91) );
  GTECH_NOT U137 ( .A(n84), .Z(n90) );
  GTECH_AND2 U138 ( .A(n132), .B(n13), .Z(n84) );
  GTECH_AND_NOT U139 ( .A(n81), .B(n134), .Z(n132) );
  GTECH_AND3 U140 ( .A(n134), .B(n133), .C(n81), .Z(Done) );
  GTECH_NOT U141 ( .A(n13), .Z(n133) );
  GTECH_NOT U142 ( .A(n12), .Z(n134) );
endmodule

