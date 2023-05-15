
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n70, n78, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137;
  wire   [2:0] State;

  GTECH_FD2 State_reg_0_ ( .D(N40), .CP(CLK), .CD(n78), .Q(State[0]), .QN(n12)
         );
  GTECH_FD2 State_reg_2_ ( .D(N42), .CP(CLK), .CD(n78), .Q(State[2]), .QN(n13)
         );
  GTECH_FD2 State_reg_1_ ( .D(N41), .CP(CLK), .CD(n78), .Q(State[1]), .QN(n84)
         );
  GTECH_FJK1S B_reg_0_ ( .J(n70), .K(n70), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n14) );
  GTECH_FJK1S A_reg_3_ ( .J(n70), .K(n70), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n81) );
  GTECH_FJK1S A_reg_0_ ( .J(n70), .K(n70), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n15) );
  GTECH_FJK1S A_reg_1_ ( .J(n70), .K(n70), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n83) );
  GTECH_FJK1S A_reg_2_ ( .J(n70), .K(n70), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n82) );
  GTECH_FJK1S B_reg_3_ ( .J(n70), .K(n70), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]) );
  GTECH_FJK1S B_reg_2_ ( .J(n70), .K(n70), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]) );
  GTECH_FJK1S B_reg_1_ ( .J(n70), .K(n70), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]) );
  GTECH_ONE U79 ( .Z(n78) );
  GTECH_ZERO U80 ( .Z(n70) );
  GTECH_AND_NOT U81 ( .A(N57), .B(n85), .Z(N63) );
  GTECH_NOT U82 ( .A(n86), .Z(N58) );
  GTECH_AOI222 U83 ( .A(Mplier[3]), .B(n87), .C(n88), .D(n89), .E(n90), .F(n91), .Z(n86) );
  GTECH_OAI21 U84 ( .A(Mcand[0]), .B(n92), .C(n93), .Z(n90) );
  GTECH_AND_NOT U85 ( .A(n94), .B(n14), .Z(n88) );
  GTECH_AO21 U86 ( .A(n87), .B(St), .C(n94), .Z(N57) );
  GTECH_AO22 U87 ( .A(Mplier[2]), .B(n87), .C(n94), .D(Product[3]), .Z(N56) );
  GTECH_AO22 U88 ( .A(Mplier[1]), .B(n87), .C(n94), .D(Product[2]), .Z(N54) );
  GTECH_AO22 U89 ( .A(Mplier[0]), .B(n87), .C(n94), .D(Product[1]), .Z(N52) );
  GTECH_NOT U90 ( .A(n92), .Z(n94) );
  GTECH_MUX2 U91 ( .A(n95), .B(n96), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U92 ( .A(n97), .B(n98), .S(n81), .Z(N48) );
  GTECH_MUX2 U93 ( .A(n99), .B(n100), .S(Mcand[3]), .Z(n98) );
  GTECH_OR_NOT U94 ( .A(n101), .B(n93), .Z(n97) );
  GTECH_NOT U95 ( .A(n85), .Z(n93) );
  GTECH_MUX2 U96 ( .A(n100), .B(n99), .S(Mcand[3]), .Z(n101) );
  GTECH_AO22 U97 ( .A(n102), .B(n103), .C(n104), .D(n105), .Z(n99) );
  GTECH_OAI22 U98 ( .A(n106), .B(n102), .C(n107), .D(n104), .Z(n100) );
  GTECH_OAI21 U99 ( .A(n108), .B(n109), .C(n110), .Z(n104) );
  GTECH_AO21 U100 ( .A(n109), .B(n108), .C(n82), .Z(n110) );
  GTECH_ADD_ABC U101 ( .A(Mcand[2]), .B(n111), .C(n82), .COUT(n102) );
  GTECH_MUX2 U102 ( .A(n112), .B(n113), .S(n82), .Z(N46) );
  GTECH_NOT U103 ( .A(n114), .Z(n113) );
  GTECH_MUX2 U104 ( .A(n115), .B(n116), .S(Mcand[2]), .Z(n114) );
  GTECH_OR_NOT U105 ( .A(n85), .B(n117), .Z(n112) );
  GTECH_MUX2 U106 ( .A(n115), .B(n116), .S(n109), .Z(n117) );
  GTECH_NOT U107 ( .A(Mcand[2]), .Z(n109) );
  GTECH_AOI2N2 U108 ( .A(n108), .B(n105), .C(n111), .D(n106), .Z(n116) );
  GTECH_AOI2N2 U109 ( .A(n111), .B(n103), .C(n108), .D(n107), .Z(n115) );
  GTECH_OA21 U110 ( .A(n83), .B(n118), .C(n119), .Z(n108) );
  GTECH_NAND3 U111 ( .A(n120), .B(n91), .C(Mcand[0]), .Z(n119) );
  GTECH_ADD_ABC U112 ( .A(Mcand[1]), .B(n121), .C(n83), .COUT(n111) );
  GTECH_AND_NOT U113 ( .A(Mcand[0]), .B(n91), .Z(n121) );
  GTECH_NOT U114 ( .A(n122), .Z(N44) );
  GTECH_AOI222 U115 ( .A(n85), .B(n123), .C(n124), .D(n125), .E(n126), .F(n127), .Z(n122) );
  GTECH_AND2 U116 ( .A(n120), .B(n128), .Z(n127) );
  GTECH_NAND3 U117 ( .A(n106), .B(n91), .C(Mcand[0]), .Z(n128) );
  GTECH_NAND2 U118 ( .A(n118), .B(n83), .Z(n120) );
  GTECH_OA21 U119 ( .A(n83), .B(n118), .C(n129), .Z(n126) );
  GTECH_OAI21 U120 ( .A(n89), .B(n106), .C(n107), .Z(n129) );
  GTECH_NOT U121 ( .A(n105), .Z(n107) );
  GTECH_NOT U122 ( .A(n103), .Z(n106) );
  GTECH_AND2 U123 ( .A(Mcand[0]), .B(n15), .Z(n89) );
  GTECH_NOT U124 ( .A(Mcand[1]), .Z(n118) );
  GTECH_MUX2 U125 ( .A(n103), .B(n105), .S(n91), .Z(n125) );
  GTECH_NOT U126 ( .A(n15), .Z(n91) );
  GTECH_AND_NOT U127 ( .A(n96), .B(n14), .Z(n105) );
  GTECH_AND_NOT U128 ( .A(n95), .B(n14), .Z(n103) );
  GTECH_AND2 U129 ( .A(Mcand[0]), .B(n130), .Z(n124) );
  GTECH_XNOR2 U130 ( .A(n123), .B(Mcand[1]), .Z(n130) );
  GTECH_NOT U131 ( .A(n83), .Z(n123) );
  GTECH_AND_NOT U132 ( .A(n14), .B(n92), .Z(n85) );
  GTECH_NOR2 U133 ( .A(n95), .B(n96), .Z(n92) );
  GTECH_NAND2 U134 ( .A(n131), .B(n132), .Z(N42) );
  GTECH_OR3 U135 ( .A(n12), .B(n84), .C(n133), .Z(n132) );
  GTECH_NOT U136 ( .A(n96), .Z(n133) );
  GTECH_NOT U137 ( .A(n95), .Z(n131) );
  GTECH_OA21 U138 ( .A(n12), .B(n84), .C(n96), .Z(N41) );
  GTECH_AO21 U139 ( .A(n87), .B(St), .C(n134), .Z(N40) );
  GTECH_AO21 U140 ( .A(n12), .B(n96), .C(n95), .Z(n134) );
  GTECH_AND_NOT U141 ( .A(n135), .B(n13), .Z(n95) );
  GTECH_AND_NOT U142 ( .A(n13), .B(n135), .Z(n96) );
  GTECH_AND_NOT U143 ( .A(n135), .B(n136), .Z(n87) );
  GTECH_NOT U144 ( .A(n13), .Z(n136) );
  GTECH_AND2 U145 ( .A(n84), .B(n12), .Z(n135) );
  GTECH_NOR3 U146 ( .A(n12), .B(n13), .C(n137), .Z(Done) );
  GTECH_NOT U147 ( .A(n84), .Z(n137) );
endmodule

