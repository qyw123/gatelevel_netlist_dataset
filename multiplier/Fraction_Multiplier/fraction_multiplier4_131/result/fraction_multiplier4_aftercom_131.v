
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n71, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n12) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n13) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n82) );
  GTECH_FJK1S B_reg_0_ ( .J(n71), .K(n71), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n14) );
  GTECH_FJK1S A_reg_3_ ( .J(n71), .K(n71), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n79) );
  GTECH_FJK1S A_reg_0_ ( .J(n71), .K(n71), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n15) );
  GTECH_FJK1S A_reg_1_ ( .J(n71), .K(n71), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n81) );
  GTECH_FJK1S A_reg_2_ ( .J(n71), .K(n71), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n80) );
  GTECH_FJK1S B_reg_3_ ( .J(n71), .K(n71), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]) );
  GTECH_FJK1S B_reg_2_ ( .J(n71), .K(n71), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]) );
  GTECH_FJK1S B_reg_1_ ( .J(n71), .K(n71), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]) );
  GTECH_ZERO U77 ( .Z(n71) );
  GTECH_AND2 U78 ( .A(N57), .B(n83), .Z(N63) );
  GTECH_NOT U79 ( .A(n84), .Z(N58) );
  GTECH_AOI222 U80 ( .A(Mplier[3]), .B(n85), .C(n86), .D(n87), .E(n88), .F(n89), .Z(n84) );
  GTECH_OAI21 U81 ( .A(Mcand[0]), .B(n90), .C(n83), .Z(n88) );
  GTECH_NOR2 U82 ( .A(n14), .B(n90), .Z(n86) );
  GTECH_AO21 U83 ( .A(n85), .B(St), .C(n91), .Z(N57) );
  GTECH_AO22 U84 ( .A(Mplier[2]), .B(n85), .C(n91), .D(Product[3]), .Z(N56) );
  GTECH_AO22 U85 ( .A(Mplier[1]), .B(n85), .C(n91), .D(Product[2]), .Z(N54) );
  GTECH_AO22 U86 ( .A(Mplier[0]), .B(n85), .C(n91), .D(Product[1]), .Z(N52) );
  GTECH_NOT U87 ( .A(n90), .Z(n91) );
  GTECH_MUX2 U88 ( .A(n92), .B(n93), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U89 ( .A(n94), .B(n95), .S(n79), .Z(N48) );
  GTECH_MUX2 U90 ( .A(n96), .B(n97), .S(Mcand[3]), .Z(n95) );
  GTECH_OR2 U91 ( .A(n98), .B(n99), .Z(n94) );
  GTECH_MUX2 U92 ( .A(n97), .B(n96), .S(Mcand[3]), .Z(n98) );
  GTECH_AO22 U93 ( .A(n100), .B(n101), .C(n102), .D(n103), .Z(n96) );
  GTECH_OAI22 U94 ( .A(n104), .B(n100), .C(n105), .D(n102), .Z(n97) );
  GTECH_OAI21 U95 ( .A(n106), .B(n107), .C(n108), .Z(n102) );
  GTECH_AO21 U96 ( .A(n107), .B(n106), .C(n80), .Z(n108) );
  GTECH_ADD_ABC U97 ( .A(Mcand[2]), .B(n109), .C(n80), .COUT(n100) );
  GTECH_MUX2 U98 ( .A(n110), .B(n111), .S(n80), .Z(N46) );
  GTECH_NOT U99 ( .A(n112), .Z(n111) );
  GTECH_MUX2 U100 ( .A(n113), .B(n114), .S(n107), .Z(n112) );
  GTECH_NOT U101 ( .A(Mcand[2]), .Z(n107) );
  GTECH_NAND2 U102 ( .A(n83), .B(n115), .Z(n110) );
  GTECH_MUX2 U103 ( .A(n113), .B(n114), .S(Mcand[2]), .Z(n115) );
  GTECH_AOI2N2 U104 ( .A(n109), .B(n101), .C(n106), .D(n105), .Z(n114) );
  GTECH_AOI2N2 U105 ( .A(n106), .B(n103), .C(n109), .D(n104), .Z(n113) );
  GTECH_NOT U106 ( .A(n101), .Z(n104) );
  GTECH_ADD_ABC U107 ( .A(Mcand[1]), .B(n116), .C(n81), .COUT(n109) );
  GTECH_AND2 U108 ( .A(Mcand[0]), .B(n15), .Z(n116) );
  GTECH_OA21 U109 ( .A(n81), .B(n117), .C(n118), .Z(n106) );
  GTECH_NAND3 U110 ( .A(n119), .B(n89), .C(Mcand[0]), .Z(n118) );
  GTECH_NOT U111 ( .A(n120), .Z(N44) );
  GTECH_AOI222 U112 ( .A(n99), .B(n121), .C(n122), .D(n123), .E(n124), .F(n125), .Z(n120) );
  GTECH_OA21 U113 ( .A(n101), .B(n126), .C(n119), .Z(n125) );
  GTECH_NAND2 U114 ( .A(n81), .B(n117), .Z(n119) );
  GTECH_OA21 U115 ( .A(n15), .B(n127), .C(n103), .Z(n126) );
  GTECH_AOI2N2 U116 ( .A(n105), .B(n87), .C(n81), .D(n117), .Z(n124) );
  GTECH_NOT U117 ( .A(Mcand[1]), .Z(n117) );
  GTECH_NOR2 U118 ( .A(n89), .B(n127), .Z(n87) );
  GTECH_NOT U119 ( .A(Mcand[0]), .Z(n127) );
  GTECH_NOT U120 ( .A(n15), .Z(n89) );
  GTECH_NOT U121 ( .A(n103), .Z(n105) );
  GTECH_MUX2 U122 ( .A(n103), .B(n101), .S(n15), .Z(n123) );
  GTECH_NOR2 U123 ( .A(n128), .B(n14), .Z(n101) );
  GTECH_NOR2 U124 ( .A(n129), .B(n14), .Z(n103) );
  GTECH_NOT U125 ( .A(n93), .Z(n129) );
  GTECH_AND2 U126 ( .A(Mcand[0]), .B(n130), .Z(n122) );
  GTECH_XOR2 U127 ( .A(n81), .B(Mcand[1]), .Z(n130) );
  GTECH_NOT U128 ( .A(n81), .Z(n121) );
  GTECH_NOT U129 ( .A(n83), .Z(n99) );
  GTECH_OR_NOT U130 ( .A(n90), .B(n14), .Z(n83) );
  GTECH_NOR2 U131 ( .A(n92), .B(n93), .Z(n90) );
  GTECH_NAND2 U132 ( .A(n128), .B(n131), .Z(N42) );
  GTECH_NAND3 U133 ( .A(n132), .B(n133), .C(n93), .Z(n131) );
  GTECH_NOT U134 ( .A(n92), .Z(n128) );
  GTECH_OA21 U135 ( .A(n12), .B(n82), .C(n93), .Z(N41) );
  GTECH_AO21 U136 ( .A(n85), .B(St), .C(n134), .Z(N40) );
  GTECH_AO21 U137 ( .A(n12), .B(n93), .C(n92), .Z(n134) );
  GTECH_NOR3 U138 ( .A(n132), .B(n13), .C(n133), .Z(n92) );
  GTECH_AOI21 U139 ( .A(n12), .B(n82), .C(n135), .Z(n93) );
  GTECH_NOR3 U140 ( .A(n133), .B(n132), .C(n135), .Z(n85) );
  GTECH_NOT U141 ( .A(n82), .Z(n133) );
  GTECH_AND3 U142 ( .A(n132), .B(n135), .C(n82), .Z(Done) );
  GTECH_NOT U143 ( .A(n13), .Z(n135) );
  GTECH_NOT U144 ( .A(n12), .Z(n132) );
endmodule

