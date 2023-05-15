
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n14, n15, n71, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n83) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n12) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .QN(n82) );
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
  GTECH_AND_NOT U78 ( .A(N57), .B(n84), .Z(N63) );
  GTECH_NOT U79 ( .A(n85), .Z(N58) );
  GTECH_AOI222 U80 ( .A(Mplier[3]), .B(n86), .C(n87), .D(n88), .E(n89), .F(n90), .Z(n85) );
  GTECH_NOT U81 ( .A(n15), .Z(n90) );
  GTECH_AO21 U82 ( .A(n91), .B(n92), .C(n84), .Z(n89) );
  GTECH_AND_NOT U83 ( .A(n92), .B(n14), .Z(n87) );
  GTECH_AO21 U84 ( .A(n86), .B(St), .C(n92), .Z(N57) );
  GTECH_AO22 U85 ( .A(Mplier[2]), .B(n86), .C(n92), .D(Product[3]), .Z(N56) );
  GTECH_AO22 U86 ( .A(Mplier[1]), .B(n86), .C(n92), .D(Product[2]), .Z(N54) );
  GTECH_AO22 U87 ( .A(Mplier[0]), .B(n86), .C(n92), .D(Product[1]), .Z(N52) );
  GTECH_MUX2 U88 ( .A(n93), .B(n94), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U89 ( .A(n95), .B(n96), .S(n79), .Z(N48) );
  GTECH_MUX2 U90 ( .A(n97), .B(n98), .S(n99), .Z(n96) );
  GTECH_NOT U91 ( .A(Mcand[3]), .Z(n99) );
  GTECH_OR2 U92 ( .A(n84), .B(n100), .Z(n95) );
  GTECH_MUX2 U93 ( .A(n97), .B(n98), .S(Mcand[3]), .Z(n100) );
  GTECH_OAI22 U94 ( .A(n101), .B(n102), .C(n103), .D(n104), .Z(n98) );
  GTECH_AO22 U95 ( .A(n101), .B(n105), .C(n106), .D(n103), .Z(n97) );
  GTECH_OA21 U96 ( .A(n107), .B(n108), .C(n109), .Z(n103) );
  GTECH_AO21 U97 ( .A(n108), .B(n107), .C(n80), .Z(n109) );
  GTECH_ADD_ABC U98 ( .A(n108), .B(n110), .C(n111), .COUT(n101) );
  GTECH_NOT U99 ( .A(Mcand[2]), .Z(n108) );
  GTECH_MUX2 U100 ( .A(n112), .B(n113), .S(n111), .Z(N46) );
  GTECH_NOT U101 ( .A(n80), .Z(n111) );
  GTECH_OR_NOT U102 ( .A(n84), .B(n114), .Z(n113) );
  GTECH_MUX2 U103 ( .A(n115), .B(n116), .S(Mcand[2]), .Z(n114) );
  GTECH_NOT U104 ( .A(n117), .Z(n112) );
  GTECH_MUX2 U105 ( .A(n116), .B(n115), .S(Mcand[2]), .Z(n117) );
  GTECH_AOI22 U106 ( .A(n110), .B(n105), .C(n107), .D(n106), .Z(n115) );
  GTECH_OA22 U107 ( .A(n110), .B(n102), .C(n107), .D(n104), .Z(n116) );
  GTECH_AOI2N2 U108 ( .A(n118), .B(Mcand[1]), .C(n91), .D(n119), .Z(n107) );
  GTECH_AO21 U109 ( .A(n120), .B(n81), .C(n15), .Z(n119) );
  GTECH_ADD_ABC U110 ( .A(n120), .B(n121), .C(n118), .COUT(n110) );
  GTECH_OR_NOT U111 ( .A(n91), .B(n15), .Z(n121) );
  GTECH_NOT U112 ( .A(n122), .Z(N44) );
  GTECH_AOI222 U113 ( .A(n84), .B(n118), .C(n123), .D(n124), .E(n125), .F(n126), .Z(n122) );
  GTECH_XNOR2 U114 ( .A(n120), .B(n118), .Z(n126) );
  GTECH_AND_NOT U115 ( .A(n127), .B(n128), .Z(n125) );
  GTECH_NOR3 U116 ( .A(n105), .B(n15), .C(n91), .Z(n128) );
  GTECH_OAI21 U117 ( .A(n88), .B(n102), .C(n104), .Z(n127) );
  GTECH_NOT U118 ( .A(n106), .Z(n104) );
  GTECH_NOT U119 ( .A(n105), .Z(n102) );
  GTECH_AND2 U120 ( .A(n15), .B(Mcand[0]), .Z(n88) );
  GTECH_MUX2 U121 ( .A(n106), .B(n105), .S(n15), .Z(n124) );
  GTECH_NOR2 U122 ( .A(n129), .B(n14), .Z(n105) );
  GTECH_NOR2 U123 ( .A(n130), .B(n14), .Z(n106) );
  GTECH_AND_NOT U124 ( .A(n131), .B(n91), .Z(n123) );
  GTECH_NOT U125 ( .A(Mcand[0]), .Z(n91) );
  GTECH_XNOR2 U126 ( .A(n81), .B(n120), .Z(n131) );
  GTECH_NOT U127 ( .A(Mcand[1]), .Z(n120) );
  GTECH_NOT U128 ( .A(n81), .Z(n118) );
  GTECH_AND2 U129 ( .A(n14), .B(n92), .Z(n84) );
  GTECH_OR_NOT U130 ( .A(n94), .B(n129), .Z(n92) );
  GTECH_OAI21 U131 ( .A(n130), .B(n132), .C(n129), .Z(N42) );
  GTECH_OR_NOT U132 ( .A(n83), .B(n133), .Z(n132) );
  GTECH_AOI21 U133 ( .A(n133), .B(n134), .C(n130), .Z(N41) );
  GTECH_AO21 U134 ( .A(n86), .B(St), .C(n135), .Z(N40) );
  GTECH_OAI21 U135 ( .A(n134), .B(n130), .C(n129), .Z(n135) );
  GTECH_NOT U136 ( .A(n93), .Z(n129) );
  GTECH_NOR3 U137 ( .A(n133), .B(n12), .C(n134), .Z(n93) );
  GTECH_NOT U138 ( .A(n94), .Z(n130) );
  GTECH_AOI21 U139 ( .A(n82), .B(n83), .C(n136), .Z(n94) );
  GTECH_NOR3 U140 ( .A(n134), .B(n133), .C(n136), .Z(n86) );
  GTECH_NOT U141 ( .A(n12), .Z(n136) );
  GTECH_NOT U142 ( .A(n83), .Z(n134) );
  GTECH_NOR3 U143 ( .A(n12), .B(n83), .C(n133), .Z(Done) );
  GTECH_NOT U144 ( .A(n82), .Z(n133) );
endmodule

