
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n18, n74, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n12) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n13) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n85) );
  GTECH_FJK1S B_reg_0_ ( .J(n74), .K(n74), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n14) );
  GTECH_FJK1S A_reg_3_ ( .J(n74), .K(n74), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n15) );
  GTECH_FJK1S A_reg_0_ ( .J(n74), .K(n74), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n84) );
  GTECH_FJK1S A_reg_1_ ( .J(n74), .K(n74), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n83) );
  GTECH_FJK1S A_reg_2_ ( .J(n74), .K(n74), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n82) );
  GTECH_FJK1S B_reg_3_ ( .J(n74), .K(n74), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n16) );
  GTECH_FJK1S B_reg_2_ ( .J(n74), .K(n74), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n17) );
  GTECH_FJK1S B_reg_1_ ( .J(n74), .K(n74), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n18) );
  GTECH_ZERO U80 ( .Z(n74) );
  GTECH_AND2 U81 ( .A(n86), .B(N57), .Z(N63) );
  GTECH_NOT U82 ( .A(n87), .Z(N58) );
  GTECH_AOI222 U83 ( .A(Mplier[3]), .B(n88), .C(n89), .D(n90), .E(n91), .F(n92), .Z(n87) );
  GTECH_OAI21 U84 ( .A(Mcand[0]), .B(n93), .C(n86), .Z(n91) );
  GTECH_NOR2 U85 ( .A(n93), .B(n14), .Z(n89) );
  GTECH_OAI21 U86 ( .A(n94), .B(n95), .C(n93), .Z(N57) );
  GTECH_OAI2N2 U87 ( .A(n16), .B(n93), .C(Mplier[2]), .D(n88), .Z(N56) );
  GTECH_OAI2N2 U88 ( .A(n17), .B(n93), .C(Mplier[1]), .D(n88), .Z(N54) );
  GTECH_OAI2N2 U89 ( .A(n18), .B(n93), .C(Mplier[0]), .D(n88), .Z(N52) );
  GTECH_MUX2 U90 ( .A(n96), .B(n97), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U91 ( .A(n98), .B(n99), .S(n15), .Z(N48) );
  GTECH_MUX2 U92 ( .A(n100), .B(n101), .S(Mcand[3]), .Z(n99) );
  GTECH_OR_NOT U93 ( .A(n102), .B(n86), .Z(n98) );
  GTECH_MUX2 U94 ( .A(n101), .B(n100), .S(Mcand[3]), .Z(n102) );
  GTECH_OAI22 U95 ( .A(n103), .B(n104), .C(n105), .D(n106), .Z(n100) );
  GTECH_AO22 U96 ( .A(n105), .B(n107), .C(n104), .D(n108), .Z(n101) );
  GTECH_OAI21 U97 ( .A(Mcand[2]), .B(n109), .C(n110), .Z(n104) );
  GTECH_AO21 U98 ( .A(n109), .B(Mcand[2]), .C(n82), .Z(n110) );
  GTECH_NOT U99 ( .A(n106), .Z(n107) );
  GTECH_OA21 U100 ( .A(n111), .B(n112), .C(n113), .Z(n105) );
  GTECH_AO21 U101 ( .A(n112), .B(n111), .C(n82), .Z(n113) );
  GTECH_MUX2 U102 ( .A(n114), .B(n115), .S(n82), .Z(N46) );
  GTECH_MUX2 U103 ( .A(n116), .B(n117), .S(Mcand[2]), .Z(n115) );
  GTECH_OR_NOT U104 ( .A(n118), .B(n86), .Z(n114) );
  GTECH_MUX2 U105 ( .A(n116), .B(n117), .S(n112), .Z(n118) );
  GTECH_NOT U106 ( .A(Mcand[2]), .Z(n112) );
  GTECH_OAI22 U107 ( .A(n109), .B(n103), .C(n119), .D(n106), .Z(n117) );
  GTECH_NOT U108 ( .A(n111), .Z(n119) );
  GTECH_OAI2N2 U109 ( .A(n111), .B(n106), .C(n109), .D(n108), .Z(n116) );
  GTECH_ADD_ABC U110 ( .A(n120), .B(Mcand[1]), .C(n83), .COUT(n109) );
  GTECH_AND_NOT U111 ( .A(Mcand[0]), .B(n92), .Z(n120) );
  GTECH_OA21 U112 ( .A(n83), .B(n121), .C(n122), .Z(n111) );
  GTECH_OR3 U113 ( .A(n123), .B(n84), .C(n124), .Z(n122) );
  GTECH_AO21 U114 ( .A(n125), .B(n123), .C(n126), .Z(N44) );
  GTECH_NOT U115 ( .A(n127), .Z(n126) );
  GTECH_MUX2 U116 ( .A(n128), .B(n129), .S(n83), .Z(n127) );
  GTECH_OR_NOT U117 ( .A(n121), .B(n130), .Z(n129) );
  GTECH_AND_NOT U118 ( .A(n86), .B(n131), .Z(n128) );
  GTECH_MUX2 U119 ( .A(n125), .B(n130), .S(n121), .Z(n131) );
  GTECH_OAI21 U120 ( .A(n90), .B(n103), .C(n132), .Z(n130) );
  GTECH_AO21 U121 ( .A(n92), .B(Mcand[0]), .C(n106), .Z(n132) );
  GTECH_NOT U122 ( .A(n84), .Z(n92) );
  GTECH_NOT U123 ( .A(n108), .Z(n103) );
  GTECH_OR_NOT U124 ( .A(n93), .B(n14), .Z(n86) );
  GTECH_NOR2 U125 ( .A(n96), .B(n97), .Z(n93) );
  GTECH_AND2 U126 ( .A(n83), .B(n121), .Z(n123) );
  GTECH_NOT U127 ( .A(Mcand[1]), .Z(n121) );
  GTECH_AO21 U128 ( .A(n90), .B(n108), .C(n133), .Z(n125) );
  GTECH_NOR3 U129 ( .A(n124), .B(n84), .C(n106), .Z(n133) );
  GTECH_OR_NOT U130 ( .A(n14), .B(n97), .Z(n106) );
  GTECH_NOR2 U131 ( .A(n134), .B(n14), .Z(n108) );
  GTECH_NOT U132 ( .A(n96), .Z(n134) );
  GTECH_AND_NOT U133 ( .A(n84), .B(n124), .Z(n90) );
  GTECH_NOT U134 ( .A(Mcand[0]), .Z(n124) );
  GTECH_OR_NOT U135 ( .A(n96), .B(n135), .Z(N42) );
  GTECH_NAND3 U136 ( .A(n136), .B(n137), .C(n97), .Z(n135) );
  GTECH_OA21 U137 ( .A(n12), .B(n85), .C(n97), .Z(N41) );
  GTECH_OAI21 U138 ( .A(n94), .B(n95), .C(n138), .Z(N40) );
  GTECH_AOI21 U139 ( .A(n12), .B(n97), .C(n96), .Z(n138) );
  GTECH_NOR3 U140 ( .A(n136), .B(n13), .C(n137), .Z(n96) );
  GTECH_AOI21 U141 ( .A(n12), .B(n85), .C(n139), .Z(n97) );
  GTECH_NOT U142 ( .A(St), .Z(n95) );
  GTECH_NOT U143 ( .A(n88), .Z(n94) );
  GTECH_NOR3 U144 ( .A(n137), .B(n136), .C(n139), .Z(n88) );
  GTECH_NOT U145 ( .A(n13), .Z(n139) );
  GTECH_NOT U146 ( .A(n12), .Z(n136) );
  GTECH_NOR3 U147 ( .A(n12), .B(n13), .C(n137), .Z(Done) );
  GTECH_NOT U148 ( .A(n85), .Z(n137) );
endmodule

