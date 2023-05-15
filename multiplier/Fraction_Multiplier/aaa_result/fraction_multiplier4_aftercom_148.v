
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n81) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n82) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n83) );
  GTECH_FJK1S B_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n12) );
  GTECH_FJK1S A_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n13) );
  GTECH_FJK1S A_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n79) );
  GTECH_FJK1S A_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n80) );
  GTECH_FJK1S A_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n78) );
  GTECH_FJK1S B_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n14) );
  GTECH_FJK1S B_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n15) );
  GTECH_FJK1S B_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n16) );
  GTECH_AND_NOT U78 ( .A(N57), .B(n84), .Z(N63) );
  GTECH_NOT U79 ( .A(n85), .Z(N58) );
  GTECH_AOI222 U80 ( .A(Mplier[3]), .B(n86), .C(n87), .D(n88), .E(n89), .F(n90), .Z(n85) );
  GTECH_OAI21 U81 ( .A(Mcand[0]), .B(n91), .C(n92), .Z(n89) );
  GTECH_NOR2 U82 ( .A(n91), .B(n12), .Z(n87) );
  GTECH_AO21 U83 ( .A(n86), .B(St), .C(n93), .Z(N57) );
  GTECH_OAI2N2 U84 ( .A(n14), .B(n91), .C(Mplier[2]), .D(n86), .Z(N56) );
  GTECH_OAI2N2 U85 ( .A(n15), .B(n91), .C(Mplier[1]), .D(n86), .Z(N54) );
  GTECH_OAI2N2 U86 ( .A(n16), .B(n91), .C(Mplier[0]), .D(n86), .Z(N52) );
  GTECH_MUX2 U87 ( .A(n94), .B(n95), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U88 ( .A(n96), .B(n97), .S(n13), .Z(N48) );
  GTECH_MUX2 U89 ( .A(n98), .B(n99), .S(n100), .Z(n97) );
  GTECH_NOT U90 ( .A(Mcand[3]), .Z(n100) );
  GTECH_OR_NOT U91 ( .A(n101), .B(n92), .Z(n96) );
  GTECH_NOT U92 ( .A(n84), .Z(n92) );
  GTECH_MUX2 U93 ( .A(n98), .B(n99), .S(Mcand[3]), .Z(n101) );
  GTECH_OAI2N2 U94 ( .A(n102), .B(n103), .C(n104), .D(n105), .Z(n99) );
  GTECH_OAI2N2 U95 ( .A(n104), .B(n106), .C(n103), .D(n107), .Z(n98) );
  GTECH_OAI21 U96 ( .A(Mcand[2]), .B(n108), .C(n109), .Z(n103) );
  GTECH_AO21 U97 ( .A(n108), .B(Mcand[2]), .C(n110), .Z(n109) );
  GTECH_NOT U98 ( .A(n78), .Z(n110) );
  GTECH_ADD_ABC U99 ( .A(n111), .B(Mcand[2]), .C(n78), .COUT(n104) );
  GTECH_AOI21 U100 ( .A(n112), .B(n113), .C(n114), .Z(n111) );
  GTECH_MUX2 U101 ( .A(n115), .B(n116), .S(n78), .Z(N46) );
  GTECH_NOT U102 ( .A(n117), .Z(n116) );
  GTECH_MUX2 U103 ( .A(n118), .B(n119), .S(Mcand[2]), .Z(n117) );
  GTECH_OR_NOT U104 ( .A(n84), .B(n120), .Z(n115) );
  GTECH_MUX2 U105 ( .A(n119), .B(n118), .S(Mcand[2]), .Z(n120) );
  GTECH_AOI2N2 U106 ( .A(n108), .B(n107), .C(n121), .D(n106), .Z(n118) );
  GTECH_AOI2N2 U107 ( .A(n121), .B(n105), .C(n108), .D(n102), .Z(n119) );
  GTECH_ADD_ABC U108 ( .A(Mcand[1]), .B(n122), .C(n123), .COUT(n108) );
  GTECH_AND_NOT U109 ( .A(Mcand[0]), .B(n79), .Z(n122) );
  GTECH_AO21 U110 ( .A(n113), .B(n112), .C(n114), .Z(n121) );
  GTECH_NOT U111 ( .A(n88), .Z(n113) );
  GTECH_OR_NOT U112 ( .A(n124), .B(n125), .Z(N44) );
  GTECH_MUX2 U113 ( .A(n126), .B(n127), .S(n123), .Z(n125) );
  GTECH_AOI21 U114 ( .A(Mcand[1]), .B(n128), .C(n84), .Z(n127) );
  GTECH_AND2 U115 ( .A(n12), .B(n93), .Z(n84) );
  GTECH_NOT U116 ( .A(n91), .Z(n93) );
  GTECH_NOR2 U117 ( .A(n95), .B(n94), .Z(n91) );
  GTECH_OR_NOT U118 ( .A(Mcand[1]), .B(n128), .Z(n126) );
  GTECH_OAI2N2 U119 ( .A(n129), .B(n102), .C(n88), .D(n105), .Z(n128) );
  GTECH_NOT U120 ( .A(n106), .Z(n105) );
  GTECH_AOI222 U121 ( .A(n112), .B(n130), .C(n131), .D(n106), .E(n88), .F(n102), .Z(n124) );
  GTECH_AND_NOT U122 ( .A(Mcand[0]), .B(n90), .Z(n88) );
  GTECH_NOT U123 ( .A(n79), .Z(n90) );
  GTECH_OR_NOT U124 ( .A(n12), .B(n94), .Z(n106) );
  GTECH_OR_NOT U125 ( .A(n102), .B(n129), .Z(n131) );
  GTECH_OR_NOT U126 ( .A(n79), .B(Mcand[0]), .Z(n129) );
  GTECH_NOT U127 ( .A(n107), .Z(n102) );
  GTECH_NOR2 U128 ( .A(n132), .B(n12), .Z(n107) );
  GTECH_NOT U129 ( .A(n114), .Z(n130) );
  GTECH_NOR2 U130 ( .A(n80), .B(Mcand[1]), .Z(n114) );
  GTECH_OR_NOT U131 ( .A(n123), .B(Mcand[1]), .Z(n112) );
  GTECH_NOT U132 ( .A(n80), .Z(n123) );
  GTECH_OR_NOT U133 ( .A(n94), .B(n133), .Z(N42) );
  GTECH_OR3 U134 ( .A(n81), .B(n83), .C(n132), .Z(n133) );
  GTECH_AOI21 U135 ( .A(n134), .B(n135), .C(n132), .Z(N41) );
  GTECH_AO21 U136 ( .A(n86), .B(St), .C(n136), .Z(N40) );
  GTECH_AO21 U137 ( .A(n95), .B(n81), .C(n94), .Z(n136) );
  GTECH_AND_NOT U138 ( .A(n137), .B(n82), .Z(n94) );
  GTECH_NOT U139 ( .A(n132), .Z(n95) );
  GTECH_OR_NOT U140 ( .A(n137), .B(n82), .Z(n132) );
  GTECH_AND2 U141 ( .A(n82), .B(n137), .Z(n86) );
  GTECH_AND_NOT U142 ( .A(n83), .B(n135), .Z(n137) );
  GTECH_NOT U143 ( .A(n81), .Z(n135) );
  GTECH_NOR3 U144 ( .A(n81), .B(n82), .C(n134), .Z(Done) );
  GTECH_NOT U145 ( .A(n83), .Z(n134) );
endmodule

