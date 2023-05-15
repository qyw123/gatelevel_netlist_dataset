
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
         n131, n132, n133, n134, n135;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n12) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n13) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n80) );
  GTECH_FJK1S B_reg_0_ ( .J(n69), .K(n69), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n79) );
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
  GTECH_OAI21 U79 ( .A(Mcand[0]), .B(n88), .C(n89), .Z(n86) );
  GTECH_NOT U80 ( .A(n81), .Z(n89) );
  GTECH_AND_NOT U81 ( .A(n90), .B(n79), .Z(n84) );
  GTECH_AO21 U82 ( .A(n83), .B(St), .C(n90), .Z(N57) );
  GTECH_NOT U83 ( .A(n88), .Z(n90) );
  GTECH_OAI2N2 U84 ( .A(n16), .B(n88), .C(Mplier[2]), .D(n83), .Z(N56) );
  GTECH_OAI2N2 U85 ( .A(n17), .B(n88), .C(Mplier[1]), .D(n83), .Z(N54) );
  GTECH_OAI2N2 U86 ( .A(n18), .B(n88), .C(Mplier[0]), .D(n83), .Z(N52) );
  GTECH_OAI2N2 U87 ( .A(n91), .B(n92), .C(n92), .D(n93), .Z(N50) );
  GTECH_OAI21 U88 ( .A(n94), .B(n95), .C(n96), .Z(N48) );
  GTECH_OAI21 U89 ( .A(n81), .B(n97), .C(n95), .Z(n96) );
  GTECH_AO22 U90 ( .A(n92), .B(n98), .C(n99), .D(Mcand[3]), .Z(n97) );
  GTECH_NOT U91 ( .A(n14), .Z(n95) );
  GTECH_AOI22 U92 ( .A(n92), .B(n99), .C(n98), .D(Mcand[3]), .Z(n94) );
  GTECH_AO22 U93 ( .A(n100), .B(n101), .C(n102), .D(n103), .Z(n98) );
  GTECH_OAI22 U94 ( .A(n100), .B(n104), .C(n102), .D(n105), .Z(n99) );
  GTECH_OA21 U95 ( .A(n106), .B(n107), .C(n108), .Z(n102) );
  GTECH_AO21 U96 ( .A(n107), .B(n106), .C(n109), .Z(n108) );
  GTECH_OA21 U97 ( .A(n110), .B(n107), .C(n111), .Z(n100) );
  GTECH_AO21 U98 ( .A(n107), .B(n110), .C(n15), .Z(n111) );
  GTECH_NOT U99 ( .A(Mcand[3]), .Z(n92) );
  GTECH_OAI21 U100 ( .A(n109), .B(n112), .C(n113), .Z(N46) );
  GTECH_OAI21 U101 ( .A(n81), .B(n114), .C(n109), .Z(n113) );
  GTECH_AO22 U102 ( .A(n107), .B(n115), .C(n116), .D(Mcand[2]), .Z(n114) );
  GTECH_AOI22 U103 ( .A(n107), .B(n116), .C(n115), .D(Mcand[2]), .Z(n112) );
  GTECH_OAI2N2 U104 ( .A(n117), .B(n104), .C(n106), .D(n103), .Z(n115) );
  GTECH_NOT U105 ( .A(n118), .Z(n106) );
  GTECH_OAI2N2 U106 ( .A(n110), .B(n104), .C(n118), .D(n103), .Z(n116) );
  GTECH_ADD_ABC U107 ( .A(n119), .B(Mcand[1]), .C(n77), .COUT(n118) );
  GTECH_AND_NOT U108 ( .A(Mcand[0]), .B(n87), .Z(n119) );
  GTECH_NOT U109 ( .A(n78), .Z(n87) );
  GTECH_NOT U110 ( .A(n117), .Z(n110) );
  GTECH_ADD_ABC U111 ( .A(Mcand[1]), .B(n120), .C(n121), .COUT(n117) );
  GTECH_AND_NOT U112 ( .A(Mcand[0]), .B(n78), .Z(n120) );
  GTECH_NOT U113 ( .A(Mcand[2]), .Z(n107) );
  GTECH_NOT U114 ( .A(n15), .Z(n109) );
  GTECH_OAI21 U115 ( .A(n121), .B(n122), .C(n123), .Z(N44) );
  GTECH_OAI21 U116 ( .A(n81), .B(n124), .C(n121), .Z(n123) );
  GTECH_AO22 U117 ( .A(n125), .B(Mcand[1]), .C(n126), .D(n127), .Z(n124) );
  GTECH_AND_NOT U118 ( .A(n79), .B(n88), .Z(n81) );
  GTECH_AND_NOT U119 ( .A(n91), .B(n93), .Z(n88) );
  GTECH_AOI22 U120 ( .A(Mcand[1]), .B(n127), .C(n126), .D(n125), .Z(n122) );
  GTECH_OAI2N2 U121 ( .A(n128), .B(n104), .C(n85), .D(n103), .Z(n125) );
  GTECH_NOT U122 ( .A(Mcand[1]), .Z(n126) );
  GTECH_OA21 U123 ( .A(n103), .B(n128), .C(n129), .Z(n127) );
  GTECH_OAI21 U124 ( .A(n85), .B(n105), .C(n104), .Z(n129) );
  GTECH_NOT U125 ( .A(n101), .Z(n104) );
  GTECH_AND_NOT U126 ( .A(n130), .B(n79), .Z(n101) );
  GTECH_NOT U127 ( .A(n103), .Z(n105) );
  GTECH_AND2 U128 ( .A(Mcand[0]), .B(n78), .Z(n85) );
  GTECH_OR_NOT U129 ( .A(n78), .B(Mcand[0]), .Z(n128) );
  GTECH_AND_NOT U130 ( .A(n93), .B(n79), .Z(n103) );
  GTECH_NOT U131 ( .A(n77), .Z(n121) );
  GTECH_OR_NOT U132 ( .A(n93), .B(n131), .Z(N42) );
  GTECH_OR3 U133 ( .A(n12), .B(n80), .C(n91), .Z(n131) );
  GTECH_NOT U134 ( .A(n130), .Z(n91) );
  GTECH_OA21 U135 ( .A(n12), .B(n80), .C(n130), .Z(N41) );
  GTECH_AO21 U136 ( .A(n83), .B(St), .C(n132), .Z(N40) );
  GTECH_AO21 U137 ( .A(n12), .B(n130), .C(n93), .Z(n132) );
  GTECH_AND_NOT U138 ( .A(n133), .B(n134), .Z(n93) );
  GTECH_AND_NOT U139 ( .A(n134), .B(n133), .Z(n130) );
  GTECH_AND_NOT U140 ( .A(n13), .B(n134), .Z(n83) );
  GTECH_OR_NOT U141 ( .A(n135), .B(n80), .Z(n134) );
  GTECH_AND3 U142 ( .A(n135), .B(n133), .C(n80), .Z(Done) );
  GTECH_NOT U143 ( .A(n13), .Z(n133) );
  GTECH_NOT U144 ( .A(n12), .Z(n135) );
endmodule

