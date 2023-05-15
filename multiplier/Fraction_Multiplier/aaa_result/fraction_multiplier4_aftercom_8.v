
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n70, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n12) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n13) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n81) );
  GTECH_FJK1S B_reg_0_ ( .J(n70), .K(n70), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n14) );
  GTECH_FJK1S A_reg_3_ ( .J(n70), .K(n70), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n78) );
  GTECH_FJK1S A_reg_0_ ( .J(n70), .K(n70), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n15) );
  GTECH_FJK1S A_reg_1_ ( .J(n70), .K(n70), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n80) );
  GTECH_FJK1S A_reg_2_ ( .J(n70), .K(n70), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n79) );
  GTECH_FJK1S B_reg_3_ ( .J(n70), .K(n70), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]) );
  GTECH_FJK1S B_reg_2_ ( .J(n70), .K(n70), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]) );
  GTECH_FJK1S B_reg_1_ ( .J(n70), .K(n70), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]) );
  GTECH_ZERO U76 ( .Z(n70) );
  GTECH_AND_NOT U77 ( .A(N57), .B(n82), .Z(N63) );
  GTECH_NOT U78 ( .A(n83), .Z(N58) );
  GTECH_AOI222 U79 ( .A(Mplier[3]), .B(n84), .C(n85), .D(n86), .E(n87), .F(n88), .Z(n83) );
  GTECH_OAI21 U80 ( .A(Mcand[0]), .B(n89), .C(n90), .Z(n87) );
  GTECH_AND_NOT U81 ( .A(n91), .B(n14), .Z(n85) );
  GTECH_AO21 U82 ( .A(n84), .B(St), .C(n91), .Z(N57) );
  GTECH_AO22 U83 ( .A(Mplier[2]), .B(n84), .C(n91), .D(Product[3]), .Z(N56) );
  GTECH_AO22 U84 ( .A(Mplier[1]), .B(n84), .C(n91), .D(Product[2]), .Z(N54) );
  GTECH_AO22 U85 ( .A(Mplier[0]), .B(n84), .C(n91), .D(Product[1]), .Z(N52) );
  GTECH_NOT U86 ( .A(n89), .Z(n91) );
  GTECH_MUX2 U87 ( .A(n92), .B(n93), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U88 ( .A(n94), .B(n95), .S(n78), .Z(N48) );
  GTECH_MUX2 U89 ( .A(n96), .B(n97), .S(Mcand[3]), .Z(n95) );
  GTECH_OR_NOT U90 ( .A(n98), .B(n90), .Z(n94) );
  GTECH_NOT U91 ( .A(n82), .Z(n90) );
  GTECH_MUX2 U92 ( .A(n97), .B(n96), .S(Mcand[3]), .Z(n98) );
  GTECH_AO22 U93 ( .A(n99), .B(n100), .C(n101), .D(n102), .Z(n96) );
  GTECH_OAI22 U94 ( .A(n103), .B(n99), .C(n104), .D(n101), .Z(n97) );
  GTECH_OAI21 U95 ( .A(n105), .B(n106), .C(n107), .Z(n101) );
  GTECH_AO21 U96 ( .A(n106), .B(n105), .C(n79), .Z(n107) );
  GTECH_ADD_ABC U97 ( .A(Mcand[2]), .B(n108), .C(n79), .COUT(n99) );
  GTECH_MUX2 U98 ( .A(n109), .B(n110), .S(n79), .Z(N46) );
  GTECH_NOT U99 ( .A(n111), .Z(n110) );
  GTECH_MUX2 U100 ( .A(n112), .B(n113), .S(Mcand[2]), .Z(n111) );
  GTECH_OR_NOT U101 ( .A(n82), .B(n114), .Z(n109) );
  GTECH_MUX2 U102 ( .A(n112), .B(n113), .S(n106), .Z(n114) );
  GTECH_NOT U103 ( .A(Mcand[2]), .Z(n106) );
  GTECH_AOI2N2 U104 ( .A(n105), .B(n102), .C(n108), .D(n103), .Z(n113) );
  GTECH_AOI2N2 U105 ( .A(n108), .B(n100), .C(n105), .D(n104), .Z(n112) );
  GTECH_OA21 U106 ( .A(n80), .B(n115), .C(n116), .Z(n105) );
  GTECH_NAND3 U107 ( .A(n117), .B(n88), .C(Mcand[0]), .Z(n116) );
  GTECH_ADD_ABC U108 ( .A(Mcand[1]), .B(n118), .C(n80), .COUT(n108) );
  GTECH_AND_NOT U109 ( .A(Mcand[0]), .B(n88), .Z(n118) );
  GTECH_NOT U110 ( .A(n119), .Z(N44) );
  GTECH_AOI222 U111 ( .A(n82), .B(n120), .C(n121), .D(n122), .E(n123), .F(n124), .Z(n119) );
  GTECH_AND2 U112 ( .A(n117), .B(n125), .Z(n124) );
  GTECH_NAND3 U113 ( .A(n103), .B(n88), .C(Mcand[0]), .Z(n125) );
  GTECH_NAND2 U114 ( .A(n115), .B(n80), .Z(n117) );
  GTECH_OA21 U115 ( .A(n80), .B(n115), .C(n126), .Z(n123) );
  GTECH_OAI21 U116 ( .A(n86), .B(n103), .C(n104), .Z(n126) );
  GTECH_NOT U117 ( .A(n102), .Z(n104) );
  GTECH_NOT U118 ( .A(n100), .Z(n103) );
  GTECH_AND2 U119 ( .A(Mcand[0]), .B(n15), .Z(n86) );
  GTECH_NOT U120 ( .A(Mcand[1]), .Z(n115) );
  GTECH_MUX2 U121 ( .A(n100), .B(n102), .S(n88), .Z(n122) );
  GTECH_NOT U122 ( .A(n15), .Z(n88) );
  GTECH_AND_NOT U123 ( .A(n93), .B(n14), .Z(n102) );
  GTECH_AND_NOT U124 ( .A(n92), .B(n14), .Z(n100) );
  GTECH_AND2 U125 ( .A(Mcand[0]), .B(n127), .Z(n121) );
  GTECH_XNOR2 U126 ( .A(n120), .B(Mcand[1]), .Z(n127) );
  GTECH_NOT U127 ( .A(n80), .Z(n120) );
  GTECH_AND_NOT U128 ( .A(n14), .B(n89), .Z(n82) );
  GTECH_NOR2 U129 ( .A(n92), .B(n93), .Z(n89) );
  GTECH_NAND2 U130 ( .A(n128), .B(n129), .Z(N42) );
  GTECH_OR3 U131 ( .A(n12), .B(n81), .C(n130), .Z(n129) );
  GTECH_NOT U132 ( .A(n93), .Z(n130) );
  GTECH_NOT U133 ( .A(n92), .Z(n128) );
  GTECH_OA21 U134 ( .A(n12), .B(n81), .C(n93), .Z(N41) );
  GTECH_AO21 U135 ( .A(n84), .B(St), .C(n131), .Z(N40) );
  GTECH_AO21 U136 ( .A(n12), .B(n93), .C(n92), .Z(n131) );
  GTECH_AND_NOT U137 ( .A(n132), .B(n13), .Z(n92) );
  GTECH_AND_NOT U138 ( .A(n13), .B(n132), .Z(n93) );
  GTECH_AND_NOT U139 ( .A(n132), .B(n133), .Z(n84) );
  GTECH_NOT U140 ( .A(n13), .Z(n133) );
  GTECH_AND2 U141 ( .A(n81), .B(n12), .Z(n132) );
  GTECH_NOR3 U142 ( .A(n12), .B(n13), .C(n134), .Z(Done) );
  GTECH_NOT U143 ( .A(n81), .Z(n134) );
endmodule

