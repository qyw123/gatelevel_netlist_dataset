
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
         n134, n135, n136, n137, n138, n139, n140;
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
  GTECH_AND_NOT U80 ( .A(N57), .B(n85), .Z(N63) );
  GTECH_AO21 U81 ( .A(Mplier[3]), .B(n86), .C(n87), .Z(N58) );
  GTECH_OAI21 U82 ( .A(n82), .B(n88), .C(n89), .Z(n87) );
  GTECH_OR4 U83 ( .A(n90), .B(n14), .C(n91), .D(n92), .Z(n89) );
  GTECH_AOI21 U84 ( .A(n91), .B(n93), .C(n85), .Z(n88) );
  GTECH_AO21 U85 ( .A(n86), .B(St), .C(n93), .Z(N57) );
  GTECH_OAI2N2 U86 ( .A(n17), .B(n90), .C(Mplier[2]), .D(n86), .Z(N56) );
  GTECH_OAI2N2 U87 ( .A(n18), .B(n90), .C(Mplier[1]), .D(n86), .Z(N54) );
  GTECH_OAI2N2 U88 ( .A(n19), .B(n90), .C(Mplier[0]), .D(n86), .Z(N52) );
  GTECH_AO22 U89 ( .A(n94), .B(Mcand[3]), .C(n95), .D(n96), .Z(N50) );
  GTECH_OAI21 U90 ( .A(n97), .B(n98), .C(n99), .Z(N48) );
  GTECH_OAI21 U91 ( .A(n85), .B(n100), .C(n98), .Z(n99) );
  GTECH_AO22 U92 ( .A(n95), .B(n101), .C(n102), .D(Mcand[3]), .Z(n100) );
  GTECH_NOT U93 ( .A(n15), .Z(n98) );
  GTECH_AOI22 U94 ( .A(n95), .B(n102), .C(n101), .D(Mcand[3]), .Z(n97) );
  GTECH_AO22 U95 ( .A(n103), .B(n104), .C(n105), .D(n106), .Z(n101) );
  GTECH_OAI22 U96 ( .A(n103), .B(n107), .C(n105), .D(n108), .Z(n102) );
  GTECH_OA21 U97 ( .A(n109), .B(n110), .C(n111), .Z(n105) );
  GTECH_OAI21 U98 ( .A(Mcand[2]), .B(n112), .C(n16), .Z(n111) );
  GTECH_OA21 U99 ( .A(n113), .B(n110), .C(n114), .Z(n103) );
  GTECH_OAI21 U100 ( .A(Mcand[2]), .B(n115), .C(n116), .Z(n114) );
  GTECH_NOT U101 ( .A(Mcand[3]), .Z(n95) );
  GTECH_OAI21 U102 ( .A(n116), .B(n117), .C(n118), .Z(N46) );
  GTECH_OAI21 U103 ( .A(n85), .B(n119), .C(n116), .Z(n118) );
  GTECH_AO22 U104 ( .A(n110), .B(n120), .C(n121), .D(Mcand[2]), .Z(n119) );
  GTECH_AOI22 U105 ( .A(n110), .B(n121), .C(n120), .D(Mcand[2]), .Z(n117) );
  GTECH_OAI2N2 U106 ( .A(n112), .B(n108), .C(n113), .D(n104), .Z(n120) );
  GTECH_NOT U107 ( .A(n109), .Z(n112) );
  GTECH_OAI2N2 U108 ( .A(n109), .B(n108), .C(n115), .D(n104), .Z(n121) );
  GTECH_NOT U109 ( .A(n113), .Z(n115) );
  GTECH_OA21 U110 ( .A(n83), .B(n122), .C(n123), .Z(n113) );
  GTECH_OAI21 U111 ( .A(Mcand[1]), .B(n124), .C(n125), .Z(n123) );
  GTECH_AOI2N2 U112 ( .A(Mcand[1]), .B(n83), .C(n92), .D(n126), .Z(n109) );
  GTECH_OAI21 U113 ( .A(Mcand[1]), .B(n83), .C(Mcand[0]), .Z(n126) );
  GTECH_NOT U114 ( .A(Mcand[2]), .Z(n110) );
  GTECH_NOT U115 ( .A(n16), .Z(n116) );
  GTECH_OAI21 U116 ( .A(n124), .B(n127), .C(n128), .Z(N44) );
  GTECH_OAI21 U117 ( .A(n85), .B(n129), .C(n124), .Z(n128) );
  GTECH_OAI21 U118 ( .A(Mcand[1]), .B(n130), .C(n131), .Z(n129) );
  GTECH_OR3 U119 ( .A(n91), .B(n132), .C(n122), .Z(n131) );
  GTECH_AND2 U120 ( .A(n14), .B(n93), .Z(n85) );
  GTECH_NOT U121 ( .A(n90), .Z(n93) );
  GTECH_NOR2 U122 ( .A(n94), .B(n96), .Z(n90) );
  GTECH_OA21 U123 ( .A(n130), .B(n122), .C(n133), .Z(n127) );
  GTECH_OR3 U124 ( .A(n91), .B(n132), .C(Mcand[1]), .Z(n133) );
  GTECH_AOI2N2 U125 ( .A(n82), .B(n106), .C(n82), .D(n107), .Z(n132) );
  GTECH_NOT U126 ( .A(Mcand[1]), .Z(n122) );
  GTECH_OA21 U127 ( .A(n125), .B(n107), .C(n134), .Z(n130) );
  GTECH_OAI21 U128 ( .A(n91), .B(n92), .C(n106), .Z(n134) );
  GTECH_NOT U129 ( .A(n108), .Z(n106) );
  GTECH_OR_NOT U130 ( .A(n14), .B(n96), .Z(n108) );
  GTECH_NOT U131 ( .A(n104), .Z(n107) );
  GTECH_NOR2 U132 ( .A(n135), .B(n14), .Z(n104) );
  GTECH_NOT U133 ( .A(n94), .Z(n135) );
  GTECH_AND_NOT U134 ( .A(n92), .B(n91), .Z(n125) );
  GTECH_NOT U135 ( .A(Mcand[0]), .Z(n91) );
  GTECH_NOT U136 ( .A(n82), .Z(n92) );
  GTECH_NOT U137 ( .A(n83), .Z(n124) );
  GTECH_OR_NOT U138 ( .A(n96), .B(n136), .Z(N42) );
  GTECH_NAND3 U139 ( .A(n137), .B(n138), .C(n94), .Z(n136) );
  GTECH_OA21 U140 ( .A(n12), .B(n84), .C(n94), .Z(N41) );
  GTECH_AO21 U141 ( .A(n86), .B(St), .C(n139), .Z(N40) );
  GTECH_AO21 U142 ( .A(n12), .B(n94), .C(n96), .Z(n139) );
  GTECH_NOR3 U143 ( .A(n137), .B(n13), .C(n138), .Z(n96) );
  GTECH_AOI21 U144 ( .A(n12), .B(n84), .C(n140), .Z(n94) );
  GTECH_NOR3 U145 ( .A(n138), .B(n137), .C(n140), .Z(n86) );
  GTECH_NOT U146 ( .A(n84), .Z(n138) );
  GTECH_AND3 U147 ( .A(n137), .B(n140), .C(n84), .Z(Done) );
  GTECH_NOT U148 ( .A(n13), .Z(n140) );
  GTECH_NOT U149 ( .A(n12), .Z(n137) );
endmodule

