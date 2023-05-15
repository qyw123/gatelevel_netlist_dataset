
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n74, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n85) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n12) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n86) );
  GTECH_FJK1S B_reg_0_ ( .J(n74), .K(n74), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n13) );
  GTECH_FJK1S A_reg_3_ ( .J(n74), .K(n74), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n14) );
  GTECH_FJK1S A_reg_0_ ( .J(n74), .K(n74), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n84) );
  GTECH_FJK1S A_reg_1_ ( .J(n74), .K(n74), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n83) );
  GTECH_FJK1S A_reg_2_ ( .J(n74), .K(n74), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n82) );
  GTECH_FJK1S B_reg_3_ ( .J(n74), .K(n74), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n15) );
  GTECH_FJK1S B_reg_2_ ( .J(n74), .K(n74), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n16) );
  GTECH_FJK1S B_reg_1_ ( .J(n74), .K(n74), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n17) );
  GTECH_ZERO U81 ( .Z(n74) );
  GTECH_AND_NOT U82 ( .A(N57), .B(n87), .Z(N63) );
  GTECH_NOT U83 ( .A(n88), .Z(N58) );
  GTECH_AOI222 U84 ( .A(Mplier[3]), .B(n89), .C(n90), .D(n91), .E(n92), .F(n93), .Z(n88) );
  GTECH_AO21 U85 ( .A(n94), .B(n95), .C(n87), .Z(n92) );
  GTECH_AND_NOT U86 ( .A(n94), .B(n13), .Z(n90) );
  GTECH_AO21 U87 ( .A(St), .B(n89), .C(n94), .Z(N57) );
  GTECH_NOT U88 ( .A(n96), .Z(n94) );
  GTECH_OAI2N2 U89 ( .A(n15), .B(n96), .C(Mplier[2]), .D(n89), .Z(N56) );
  GTECH_OAI2N2 U90 ( .A(n16), .B(n96), .C(Mplier[1]), .D(n89), .Z(N54) );
  GTECH_OAI2N2 U91 ( .A(n17), .B(n96), .C(Mplier[0]), .D(n89), .Z(N52) );
  GTECH_OAI2N2 U92 ( .A(n97), .B(n98), .C(n98), .D(n99), .Z(N50) );
  GTECH_OAI2N2 U93 ( .A(n14), .B(n100), .C(n101), .D(n14), .Z(N48) );
  GTECH_AO22 U94 ( .A(n102), .B(Mcand[3]), .C(n98), .D(n103), .Z(n101) );
  GTECH_AND_NOT U95 ( .A(n104), .B(n87), .Z(n100) );
  GTECH_AOI22 U96 ( .A(n98), .B(n102), .C(n103), .D(Mcand[3]), .Z(n104) );
  GTECH_OAI2N2 U97 ( .A(n105), .B(n106), .C(n107), .D(n108), .Z(n103) );
  GTECH_OAI2N2 U98 ( .A(n107), .B(n109), .C(n110), .D(n105), .Z(n102) );
  GTECH_OA22 U99 ( .A(n111), .B(n112), .C(n113), .D(n114), .Z(n105) );
  GTECH_AND_NOT U100 ( .A(n112), .B(n115), .Z(n113) );
  GTECH_ADD_ABC U101 ( .A(Mcand[2]), .B(n116), .C(n114), .COUT(n107) );
  GTECH_NOT U102 ( .A(Mcand[3]), .Z(n98) );
  GTECH_OAI22 U103 ( .A(n114), .B(n117), .C(n82), .D(n118), .Z(N46) );
  GTECH_AND_NOT U104 ( .A(n119), .B(n87), .Z(n118) );
  GTECH_AOI22 U105 ( .A(n120), .B(Mcand[2]), .C(n112), .D(n121), .Z(n119) );
  GTECH_AOI22 U106 ( .A(n112), .B(n120), .C(n121), .D(Mcand[2]), .Z(n117) );
  GTECH_OAI22 U107 ( .A(n116), .B(n109), .C(n115), .D(n106), .Z(n121) );
  GTECH_OAI2N2 U108 ( .A(n111), .B(n106), .C(n116), .D(n108), .Z(n120) );
  GTECH_ADD_ABC U109 ( .A(Mcand[1]), .B(n122), .C(n123), .COUT(n116) );
  GTECH_AND_NOT U110 ( .A(n93), .B(n95), .Z(n122) );
  GTECH_NOT U111 ( .A(n115), .Z(n111) );
  GTECH_ADD_ABC U112 ( .A(n124), .B(Mcand[1]), .C(n83), .COUT(n115) );
  GTECH_AND_NOT U113 ( .A(Mcand[0]), .B(n93), .Z(n124) );
  GTECH_NOT U114 ( .A(n84), .Z(n93) );
  GTECH_NOT U115 ( .A(Mcand[2]), .Z(n112) );
  GTECH_NOT U116 ( .A(n82), .Z(n114) );
  GTECH_OAI22 U117 ( .A(n123), .B(n125), .C(n83), .D(n126), .Z(N44) );
  GTECH_AND_NOT U118 ( .A(n127), .B(n87), .Z(n126) );
  GTECH_AND_NOT U119 ( .A(n13), .B(n96), .Z(n87) );
  GTECH_AND_NOT U120 ( .A(n97), .B(n99), .Z(n96) );
  GTECH_AOI22 U121 ( .A(n128), .B(Mcand[1]), .C(n129), .D(n130), .Z(n127) );
  GTECH_AOI22 U122 ( .A(n129), .B(n128), .C(n130), .D(Mcand[1]), .Z(n125) );
  GTECH_OAI2N2 U123 ( .A(n91), .B(n106), .C(n131), .D(n108), .Z(n130) );
  GTECH_NOT U124 ( .A(n110), .Z(n106) );
  GTECH_OAI2N2 U125 ( .A(n131), .B(n109), .C(n91), .D(n110), .Z(n128) );
  GTECH_AND_NOT U126 ( .A(n99), .B(n13), .Z(n110) );
  GTECH_AND_NOT U127 ( .A(n84), .B(n95), .Z(n91) );
  GTECH_NOT U128 ( .A(Mcand[0]), .Z(n95) );
  GTECH_NOT U129 ( .A(n108), .Z(n109) );
  GTECH_AND_NOT U130 ( .A(n132), .B(n13), .Z(n108) );
  GTECH_OR_NOT U131 ( .A(n84), .B(Mcand[0]), .Z(n131) );
  GTECH_NOT U132 ( .A(Mcand[1]), .Z(n129) );
  GTECH_NOT U133 ( .A(n83), .Z(n123) );
  GTECH_OR_NOT U134 ( .A(n99), .B(n133), .Z(N42) );
  GTECH_OR3 U135 ( .A(n85), .B(n86), .C(n97), .Z(n133) );
  GTECH_AOI21 U136 ( .A(n134), .B(n135), .C(n97), .Z(N41) );
  GTECH_NOT U137 ( .A(n132), .Z(n97) );
  GTECH_AO21 U138 ( .A(St), .B(n89), .C(n136), .Z(N40) );
  GTECH_AO21 U139 ( .A(n132), .B(n85), .C(n99), .Z(n136) );
  GTECH_AND3 U140 ( .A(n85), .B(n137), .C(n86), .Z(n99) );
  GTECH_OA21 U141 ( .A(n135), .B(n134), .C(n12), .Z(n132) );
  GTECH_NOR3 U142 ( .A(n135), .B(n134), .C(n137), .Z(n89) );
  GTECH_NOT U143 ( .A(n12), .Z(n137) );
  GTECH_NOT U144 ( .A(n85), .Z(n134) );
  GTECH_NOR3 U145 ( .A(n12), .B(n85), .C(n135), .Z(Done) );
  GTECH_NOT U146 ( .A(n86), .Z(n135) );
endmodule

