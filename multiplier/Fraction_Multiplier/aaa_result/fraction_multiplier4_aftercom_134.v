
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n18, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n12) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n13) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n81) );
  GTECH_FJK1S B_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n80) );
  GTECH_FJK1S A_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n14) );
  GTECH_FJK1S A_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n79) );
  GTECH_FJK1S A_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n78) );
  GTECH_FJK1S A_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n15) );
  GTECH_FJK1S B_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n16) );
  GTECH_FJK1S B_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n17) );
  GTECH_FJK1S B_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n18) );
  GTECH_AND_NOT U76 ( .A(N57), .B(n82), .Z(N63) );
  GTECH_NOT U77 ( .A(n83), .Z(N58) );
  GTECH_AOI222 U78 ( .A(Mplier[3]), .B(n84), .C(n85), .D(n86), .E(n87), .F(n88), .Z(n83) );
  GTECH_OAI21 U79 ( .A(Mcand[0]), .B(n89), .C(n90), .Z(n87) );
  GTECH_NOT U80 ( .A(n82), .Z(n90) );
  GTECH_AND_NOT U81 ( .A(n91), .B(n80), .Z(n85) );
  GTECH_AO21 U82 ( .A(n84), .B(St), .C(n91), .Z(N57) );
  GTECH_NOT U83 ( .A(n89), .Z(n91) );
  GTECH_OAI2N2 U84 ( .A(n16), .B(n89), .C(Mplier[2]), .D(n84), .Z(N56) );
  GTECH_OAI2N2 U85 ( .A(n17), .B(n89), .C(Mplier[1]), .D(n84), .Z(N54) );
  GTECH_OAI2N2 U86 ( .A(n18), .B(n89), .C(Mplier[0]), .D(n84), .Z(N52) );
  GTECH_OAI2N2 U87 ( .A(n92), .B(n93), .C(n93), .D(n94), .Z(N50) );
  GTECH_OAI21 U88 ( .A(n95), .B(n96), .C(n97), .Z(N48) );
  GTECH_OAI21 U89 ( .A(n82), .B(n98), .C(n96), .Z(n97) );
  GTECH_AO22 U90 ( .A(n93), .B(n99), .C(n100), .D(Mcand[3]), .Z(n98) );
  GTECH_NOT U91 ( .A(n14), .Z(n96) );
  GTECH_AOI22 U92 ( .A(n93), .B(n100), .C(n99), .D(Mcand[3]), .Z(n95) );
  GTECH_AO22 U93 ( .A(n101), .B(n102), .C(n103), .D(n104), .Z(n99) );
  GTECH_OAI22 U94 ( .A(n101), .B(n105), .C(n103), .D(n106), .Z(n100) );
  GTECH_OA21 U95 ( .A(n107), .B(n108), .C(n109), .Z(n103) );
  GTECH_AO21 U96 ( .A(n108), .B(n107), .C(n110), .Z(n109) );
  GTECH_OA21 U97 ( .A(n111), .B(n108), .C(n112), .Z(n101) );
  GTECH_AO21 U98 ( .A(n108), .B(n111), .C(n15), .Z(n112) );
  GTECH_NOT U99 ( .A(Mcand[3]), .Z(n93) );
  GTECH_OAI21 U100 ( .A(n110), .B(n113), .C(n114), .Z(N46) );
  GTECH_OAI21 U101 ( .A(n82), .B(n115), .C(n110), .Z(n114) );
  GTECH_AO22 U102 ( .A(n108), .B(n116), .C(n117), .D(Mcand[2]), .Z(n115) );
  GTECH_AOI22 U103 ( .A(n108), .B(n117), .C(n116), .D(Mcand[2]), .Z(n113) );
  GTECH_OAI2N2 U104 ( .A(n118), .B(n105), .C(n107), .D(n104), .Z(n116) );
  GTECH_NOT U105 ( .A(n119), .Z(n107) );
  GTECH_OAI2N2 U106 ( .A(n111), .B(n105), .C(n119), .D(n104), .Z(n117) );
  GTECH_ADD_ABC U107 ( .A(n120), .B(Mcand[1]), .C(n78), .COUT(n119) );
  GTECH_AND_NOT U108 ( .A(Mcand[0]), .B(n88), .Z(n120) );
  GTECH_NOT U109 ( .A(n79), .Z(n88) );
  GTECH_NOT U110 ( .A(n118), .Z(n111) );
  GTECH_ADD_ABC U111 ( .A(Mcand[1]), .B(n121), .C(n122), .COUT(n118) );
  GTECH_AND_NOT U112 ( .A(Mcand[0]), .B(n79), .Z(n121) );
  GTECH_NOT U113 ( .A(Mcand[2]), .Z(n108) );
  GTECH_NOT U114 ( .A(n15), .Z(n110) );
  GTECH_OAI21 U115 ( .A(n122), .B(n123), .C(n124), .Z(N44) );
  GTECH_OAI21 U116 ( .A(n82), .B(n125), .C(n122), .Z(n124) );
  GTECH_AO22 U117 ( .A(n126), .B(Mcand[1]), .C(n127), .D(n128), .Z(n125) );
  GTECH_AND_NOT U118 ( .A(n80), .B(n89), .Z(n82) );
  GTECH_AND_NOT U119 ( .A(n92), .B(n94), .Z(n89) );
  GTECH_AOI22 U120 ( .A(Mcand[1]), .B(n128), .C(n127), .D(n126), .Z(n123) );
  GTECH_OAI2N2 U121 ( .A(n129), .B(n105), .C(n86), .D(n104), .Z(n126) );
  GTECH_NOT U122 ( .A(Mcand[1]), .Z(n127) );
  GTECH_OA21 U123 ( .A(n104), .B(n129), .C(n130), .Z(n128) );
  GTECH_OAI21 U124 ( .A(n86), .B(n106), .C(n105), .Z(n130) );
  GTECH_NOT U125 ( .A(n102), .Z(n105) );
  GTECH_AND_NOT U126 ( .A(n131), .B(n80), .Z(n102) );
  GTECH_NOT U127 ( .A(n104), .Z(n106) );
  GTECH_AND2 U128 ( .A(Mcand[0]), .B(n79), .Z(n86) );
  GTECH_OR_NOT U129 ( .A(n79), .B(Mcand[0]), .Z(n129) );
  GTECH_AND_NOT U130 ( .A(n94), .B(n80), .Z(n104) );
  GTECH_NOT U131 ( .A(n78), .Z(n122) );
  GTECH_OR_NOT U132 ( .A(n94), .B(n132), .Z(N42) );
  GTECH_OR3 U133 ( .A(n12), .B(n81), .C(n92), .Z(n132) );
  GTECH_AOI21 U134 ( .A(n133), .B(n134), .C(n92), .Z(N41) );
  GTECH_NOT U135 ( .A(n131), .Z(n92) );
  GTECH_AO21 U136 ( .A(n84), .B(St), .C(n135), .Z(N40) );
  GTECH_AO21 U137 ( .A(n12), .B(n131), .C(n94), .Z(n135) );
  GTECH_AND3 U138 ( .A(n12), .B(n136), .C(n81), .Z(n94) );
  GTECH_NOT U139 ( .A(n13), .Z(n136) );
  GTECH_OA21 U140 ( .A(n133), .B(n134), .C(n13), .Z(n131) );
  GTECH_NOT U141 ( .A(n12), .Z(n133) );
  GTECH_AND3 U142 ( .A(n81), .B(n12), .C(n13), .Z(n84) );
  GTECH_NOR3 U143 ( .A(n12), .B(n13), .C(n134), .Z(Done) );
  GTECH_NOT U144 ( .A(n81), .Z(n134) );
endmodule

