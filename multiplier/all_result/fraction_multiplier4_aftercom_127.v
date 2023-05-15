
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n72, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n83) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n82) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n84) );
  GTECH_FJK1S B_reg_0_ ( .J(n72), .K(n72), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n12) );
  GTECH_FJK1S A_reg_3_ ( .J(n72), .K(n72), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n13) );
  GTECH_FJK1S A_reg_0_ ( .J(n72), .K(n72), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n14) );
  GTECH_FJK1S A_reg_1_ ( .J(n72), .K(n72), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n81) );
  GTECH_FJK1S A_reg_2_ ( .J(n72), .K(n72), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n80) );
  GTECH_FJK1S B_reg_3_ ( .J(n72), .K(n72), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]) );
  GTECH_FJK1S B_reg_2_ ( .J(n72), .K(n72), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]) );
  GTECH_FJK1S B_reg_1_ ( .J(n72), .K(n72), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]) );
  GTECH_ZERO U79 ( .Z(n72) );
  GTECH_AND2 U80 ( .A(N57), .B(n85), .Z(N63) );
  GTECH_NOT U81 ( .A(n86), .Z(N58) );
  GTECH_AOI222 U82 ( .A(Mplier[3]), .B(n87), .C(n88), .D(n89), .E(n90), .F(n91), .Z(n86) );
  GTECH_OAI21 U83 ( .A(Mcand[0]), .B(n92), .C(n85), .Z(n90) );
  GTECH_AND_NOT U84 ( .A(n93), .B(n12), .Z(n88) );
  GTECH_AO21 U85 ( .A(n87), .B(St), .C(n93), .Z(N57) );
  GTECH_AO22 U86 ( .A(Mplier[2]), .B(n87), .C(n93), .D(Product[3]), .Z(N56) );
  GTECH_AO22 U87 ( .A(Mplier[1]), .B(n87), .C(n93), .D(Product[2]), .Z(N54) );
  GTECH_AO22 U88 ( .A(Mplier[0]), .B(n87), .C(n93), .D(Product[1]), .Z(N52) );
  GTECH_NOT U89 ( .A(n92), .Z(n93) );
  GTECH_MUX2 U90 ( .A(n94), .B(n95), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U91 ( .A(n96), .B(n97), .S(n13), .Z(N48) );
  GTECH_MUX2 U92 ( .A(n98), .B(n99), .S(Mcand[3]), .Z(n97) );
  GTECH_OR_NOT U93 ( .A(n100), .B(n85), .Z(n96) );
  GTECH_MUX2 U94 ( .A(n99), .B(n98), .S(Mcand[3]), .Z(n100) );
  GTECH_OAI22 U95 ( .A(n101), .B(n102), .C(n103), .D(n104), .Z(n98) );
  GTECH_AO22 U96 ( .A(n102), .B(n105), .C(n104), .D(n106), .Z(n99) );
  GTECH_AO21 U97 ( .A(n107), .B(n108), .C(n109), .Z(n104) );
  GTECH_OA21 U98 ( .A(n108), .B(n107), .C(n110), .Z(n109) );
  GTECH_NOT U99 ( .A(n80), .Z(n110) );
  GTECH_OAI21 U100 ( .A(Mcand[2]), .B(n111), .C(n112), .Z(n102) );
  GTECH_OAI21 U101 ( .A(n113), .B(n107), .C(n80), .Z(n112) );
  GTECH_MUX2 U102 ( .A(n114), .B(n115), .S(n80), .Z(N46) );
  GTECH_MUX2 U103 ( .A(n116), .B(n117), .S(n107), .Z(n115) );
  GTECH_NOT U104 ( .A(Mcand[2]), .Z(n107) );
  GTECH_OR_NOT U105 ( .A(n118), .B(n85), .Z(n114) );
  GTECH_MUX2 U106 ( .A(n116), .B(n117), .S(Mcand[2]), .Z(n118) );
  GTECH_OAI22 U107 ( .A(n108), .B(n103), .C(n113), .D(n101), .Z(n117) );
  GTECH_AO22 U108 ( .A(n108), .B(n106), .C(n113), .D(n105), .Z(n116) );
  GTECH_NOT U109 ( .A(n111), .Z(n113) );
  GTECH_ADD_ABC U110 ( .A(Mcand[1]), .B(n119), .C(n120), .COUT(n111) );
  GTECH_AND2 U111 ( .A(Mcand[0]), .B(n91), .Z(n119) );
  GTECH_ADD_ABC U112 ( .A(n121), .B(n122), .C(n120), .COUT(n108) );
  GTECH_NOT U113 ( .A(n81), .Z(n120) );
  GTECH_NAND2 U114 ( .A(n14), .B(Mcand[0]), .Z(n121) );
  GTECH_MUX2 U115 ( .A(n123), .B(n124), .S(n81), .Z(N44) );
  GTECH_MUX2 U116 ( .A(n125), .B(n126), .S(n122), .Z(n124) );
  GTECH_NOT U117 ( .A(Mcand[1]), .Z(n122) );
  GTECH_OR_NOT U118 ( .A(n127), .B(n85), .Z(n123) );
  GTECH_OR_NOT U119 ( .A(n92), .B(n12), .Z(n85) );
  GTECH_AND_NOT U120 ( .A(n128), .B(n95), .Z(n92) );
  GTECH_MUX2 U121 ( .A(n125), .B(n126), .S(Mcand[1]), .Z(n127) );
  GTECH_AO22 U122 ( .A(n129), .B(n105), .C(n89), .D(n106), .Z(n126) );
  GTECH_OAI22 U123 ( .A(n129), .B(n101), .C(n89), .D(n103), .Z(n125) );
  GTECH_NOT U124 ( .A(n106), .Z(n103) );
  GTECH_AND_NOT U125 ( .A(n94), .B(n12), .Z(n106) );
  GTECH_AND_NOT U126 ( .A(Mcand[0]), .B(n91), .Z(n89) );
  GTECH_NOT U127 ( .A(n14), .Z(n91) );
  GTECH_NOT U128 ( .A(n105), .Z(n101) );
  GTECH_AND_NOT U129 ( .A(n95), .B(n12), .Z(n105) );
  GTECH_AND_NOT U130 ( .A(Mcand[0]), .B(n14), .Z(n129) );
  GTECH_NAND2 U131 ( .A(n128), .B(n130), .Z(N42) );
  GTECH_NAND3 U132 ( .A(n131), .B(n132), .C(n95), .Z(n130) );
  GTECH_OA21 U133 ( .A(n82), .B(n83), .C(n95), .Z(N41) );
  GTECH_AO21 U134 ( .A(n87), .B(St), .C(n133), .Z(N40) );
  GTECH_AO21 U135 ( .A(n83), .B(n95), .C(n94), .Z(n133) );
  GTECH_NOT U136 ( .A(n128), .Z(n94) );
  GTECH_OR3 U137 ( .A(n131), .B(n84), .C(n132), .Z(n128) );
  GTECH_NOT U138 ( .A(n134), .Z(n95) );
  GTECH_OAI21 U139 ( .A(n131), .B(n132), .C(n84), .Z(n134) );
  GTECH_NOT U140 ( .A(n83), .Z(n132) );
  GTECH_AND3 U141 ( .A(n83), .B(n82), .C(n84), .Z(n87) );
  GTECH_NOR3 U142 ( .A(n83), .B(n84), .C(n131), .Z(Done) );
  GTECH_NOT U143 ( .A(n82), .Z(n131) );
endmodule

