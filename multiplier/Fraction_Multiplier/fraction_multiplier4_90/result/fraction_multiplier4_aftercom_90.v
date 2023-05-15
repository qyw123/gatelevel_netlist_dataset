
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n18, n19, n74, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n12) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n13) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n84) );
  GTECH_FJK1S B_reg_0_ ( .J(n74), .K(n74), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n14) );
  GTECH_FJK1S A_reg_3_ ( .J(n74), .K(n74), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n15) );
  GTECH_FJK1S A_reg_0_ ( .J(n74), .K(n74), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n82) );
  GTECH_FJK1S A_reg_1_ ( .J(n74), .K(n74), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n83) );
  GTECH_FJK1S A_reg_2_ ( .J(n74), .K(n74), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n16) );
  GTECH_FJK1S B_reg_3_ ( .J(n74), .K(n74), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n17) );
  GTECH_FJK1S B_reg_2_ ( .J(n74), .K(n74), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n18) );
  GTECH_FJK1S B_reg_1_ ( .J(n74), .K(n74), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n19) );
  GTECH_ZERO U79 ( .Z(n74) );
  GTECH_ADD_AB U80 ( .A(n85), .B(N57), .COUT(N63) );
  GTECH_AO21 U81 ( .A(Mplier[3]), .B(n86), .C(n87), .Z(N58) );
  GTECH_MUX2 U82 ( .A(n88), .B(n89), .S(n82), .Z(n87) );
  GTECH_NOR3 U83 ( .A(n90), .B(n14), .C(n91), .Z(n89) );
  GTECH_OAI21 U84 ( .A(Mcand[0]), .B(n90), .C(n85), .Z(n88) );
  GTECH_OAI21 U85 ( .A(n92), .B(n93), .C(n90), .Z(N57) );
  GTECH_OAI2N2 U86 ( .A(n17), .B(n90), .C(Mplier[2]), .D(n86), .Z(N56) );
  GTECH_OAI2N2 U87 ( .A(n18), .B(n90), .C(Mplier[1]), .D(n86), .Z(N54) );
  GTECH_OAI2N2 U88 ( .A(n19), .B(n90), .C(Mplier[0]), .D(n86), .Z(N52) );
  GTECH_MUX2 U89 ( .A(n94), .B(n95), .S(n96), .Z(N50) );
  GTECH_MUX2 U90 ( .A(n97), .B(n98), .S(n15), .Z(N48) );
  GTECH_MUX2 U91 ( .A(n99), .B(n100), .S(Mcand[3]), .Z(n98) );
  GTECH_OR_NOT U92 ( .A(n101), .B(n85), .Z(n97) );
  GTECH_MUX2 U93 ( .A(n99), .B(n100), .S(n96), .Z(n101) );
  GTECH_NOT U94 ( .A(Mcand[3]), .Z(n96) );
  GTECH_AO22 U95 ( .A(n102), .B(n103), .C(n104), .D(n105), .Z(n100) );
  GTECH_OAI22 U96 ( .A(n102), .B(n106), .C(n104), .D(n107), .Z(n99) );
  GTECH_OA21 U97 ( .A(n108), .B(n109), .C(n110), .Z(n104) );
  GTECH_AO21 U98 ( .A(n109), .B(n108), .C(n111), .Z(n110) );
  GTECH_NOT U99 ( .A(n16), .Z(n111) );
  GTECH_OA21 U100 ( .A(n112), .B(n109), .C(n113), .Z(n102) );
  GTECH_AO21 U101 ( .A(n109), .B(n112), .C(n16), .Z(n113) );
  GTECH_MUX2 U102 ( .A(n114), .B(n115), .S(n16), .Z(N46) );
  GTECH_NOT U103 ( .A(n116), .Z(n115) );
  GTECH_MUX2 U104 ( .A(n117), .B(n118), .S(Mcand[2]), .Z(n116) );
  GTECH_NAND2 U105 ( .A(n119), .B(n85), .Z(n114) );
  GTECH_MUX2 U106 ( .A(n117), .B(n118), .S(n109), .Z(n119) );
  GTECH_NOT U107 ( .A(Mcand[2]), .Z(n109) );
  GTECH_AOI22 U108 ( .A(n112), .B(n103), .C(n108), .D(n105), .Z(n118) );
  GTECH_OA22 U109 ( .A(n112), .B(n106), .C(n108), .D(n107), .Z(n117) );
  GTECH_NOT U110 ( .A(n105), .Z(n107) );
  GTECH_OA22 U111 ( .A(n120), .B(n121), .C(n122), .D(n123), .Z(n108) );
  GTECH_OAI21 U112 ( .A(Mcand[1]), .B(n83), .C(Mcand[0]), .Z(n123) );
  GTECH_OA21 U113 ( .A(n83), .B(n120), .C(n124), .Z(n112) );
  GTECH_OAI21 U114 ( .A(Mcand[1]), .B(n121), .C(n125), .Z(n124) );
  GTECH_NOT U115 ( .A(n83), .Z(n121) );
  GTECH_MUX2 U116 ( .A(n126), .B(n127), .S(n83), .Z(N44) );
  GTECH_MUX2 U117 ( .A(n128), .B(n129), .S(n120), .Z(n127) );
  GTECH_NOT U118 ( .A(Mcand[1]), .Z(n120) );
  GTECH_AND_NOT U119 ( .A(n130), .B(n91), .Z(n129) );
  GTECH_OR_NOT U120 ( .A(n131), .B(n85), .Z(n126) );
  GTECH_OR_NOT U121 ( .A(n90), .B(n14), .Z(n85) );
  GTECH_AND_NOT U122 ( .A(n132), .B(n94), .Z(n90) );
  GTECH_MUX2 U123 ( .A(n128), .B(n133), .S(Mcand[1]), .Z(n131) );
  GTECH_ADD_AB U124 ( .A(n130), .B(Mcand[0]), .COUT(n133) );
  GTECH_MUX2 U125 ( .A(n105), .B(n103), .S(n122), .Z(n130) );
  GTECH_OAI21 U126 ( .A(n125), .B(n106), .C(n134), .Z(n128) );
  GTECH_OAI21 U127 ( .A(n91), .B(n122), .C(n105), .Z(n134) );
  GTECH_AND_NOT U128 ( .A(n95), .B(n14), .Z(n105) );
  GTECH_NOT U129 ( .A(n103), .Z(n106) );
  GTECH_AND_NOT U130 ( .A(n94), .B(n14), .Z(n103) );
  GTECH_AND_NOT U131 ( .A(n122), .B(n91), .Z(n125) );
  GTECH_NOT U132 ( .A(Mcand[0]), .Z(n91) );
  GTECH_NOT U133 ( .A(n82), .Z(n122) );
  GTECH_NAND2 U134 ( .A(n132), .B(n135), .Z(N42) );
  GTECH_NAND3 U135 ( .A(n136), .B(n137), .C(n94), .Z(n135) );
  GTECH_NOT U136 ( .A(n95), .Z(n132) );
  GTECH_OA21 U137 ( .A(n12), .B(n84), .C(n94), .Z(N41) );
  GTECH_OAI21 U138 ( .A(n92), .B(n93), .C(n138), .Z(N40) );
  GTECH_AOI21 U139 ( .A(n12), .B(n94), .C(n95), .Z(n138) );
  GTECH_AND3 U140 ( .A(n12), .B(n139), .C(n84), .Z(n95) );
  GTECH_OA21 U141 ( .A(n136), .B(n137), .C(n13), .Z(n94) );
  GTECH_NOT U142 ( .A(n84), .Z(n137) );
  GTECH_NOT U143 ( .A(St), .Z(n93) );
  GTECH_NOT U144 ( .A(n86), .Z(n92) );
  GTECH_AND3 U145 ( .A(n84), .B(n12), .C(n13), .Z(n86) );
  GTECH_AND3 U146 ( .A(n136), .B(n139), .C(n84), .Z(Done) );
  GTECH_NOT U147 ( .A(n13), .Z(n139) );
  GTECH_NOT U148 ( .A(n12), .Z(n136) );
endmodule

