
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63, n12,
         n13, n15, n16, n17, n74, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n86) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n12) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n87) );
  GTECH_FJK1S B_reg_0_ ( .J(n74), .K(n74), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n13) );
  GTECH_FJK1S A_reg_3_ ( .J(n74), .K(n74), .TI(N50), .TE(N63), .CP(CLK), .QN(
        n82) );
  GTECH_FJK1S A_reg_0_ ( .J(n74), .K(n74), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n85) );
  GTECH_FJK1S A_reg_1_ ( .J(n74), .K(n74), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n84) );
  GTECH_FJK1S A_reg_2_ ( .J(n74), .K(n74), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n83) );
  GTECH_FJK1S B_reg_3_ ( .J(n74), .K(n74), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n15) );
  GTECH_FJK1S B_reg_2_ ( .J(n74), .K(n74), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n16) );
  GTECH_FJK1S B_reg_1_ ( .J(n74), .K(n74), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n17) );
  GTECH_ZERO U81 ( .Z(n74) );
  GTECH_AND_NOT U82 ( .A(N57), .B(n88), .Z(N63) );
  GTECH_NOT U83 ( .A(n89), .Z(N58) );
  GTECH_AOI222 U84 ( .A(Mplier[3]), .B(n90), .C(n91), .D(n92), .E(n93), .F(n94), .Z(n89) );
  GTECH_AO21 U85 ( .A(n95), .B(n96), .C(n88), .Z(n93) );
  GTECH_AND_NOT U86 ( .A(n96), .B(n13), .Z(n91) );
  GTECH_AO21 U87 ( .A(n90), .B(St), .C(n96), .Z(N57) );
  GTECH_NOT U88 ( .A(n97), .Z(n96) );
  GTECH_OAI2N2 U89 ( .A(n15), .B(n97), .C(Mplier[2]), .D(n90), .Z(N56) );
  GTECH_OAI2N2 U90 ( .A(n16), .B(n97), .C(Mplier[1]), .D(n90), .Z(N54) );
  GTECH_OAI2N2 U91 ( .A(n17), .B(n97), .C(Mplier[0]), .D(n90), .Z(N52) );
  GTECH_MUX2 U92 ( .A(n98), .B(n99), .S(n100), .Z(N50) );
  GTECH_MUX2 U93 ( .A(n101), .B(n102), .S(n82), .Z(N48) );
  GTECH_MUX2 U94 ( .A(n103), .B(n104), .S(Mcand[3]), .Z(n102) );
  GTECH_OR2 U95 ( .A(n88), .B(n105), .Z(n101) );
  GTECH_MUX2 U96 ( .A(n103), .B(n104), .S(n100), .Z(n105) );
  GTECH_NOT U97 ( .A(Mcand[3]), .Z(n100) );
  GTECH_OAI2N2 U98 ( .A(n106), .B(n107), .C(n108), .D(n109), .Z(n104) );
  GTECH_OAI2N2 U99 ( .A(n109), .B(n110), .C(n107), .D(n111), .Z(n103) );
  GTECH_ADD_ABC U100 ( .A(n112), .B(Mcand[2]), .C(n83), .COUT(n107) );
  GTECH_OA21 U101 ( .A(n113), .B(n114), .C(n115), .Z(n109) );
  GTECH_AO21 U102 ( .A(n114), .B(n113), .C(n83), .Z(n115) );
  GTECH_MUX2 U103 ( .A(n116), .B(n117), .S(n83), .Z(N46) );
  GTECH_NOT U104 ( .A(n118), .Z(n117) );
  GTECH_MUX2 U105 ( .A(n119), .B(n120), .S(n114), .Z(n118) );
  GTECH_OR_NOT U106 ( .A(n88), .B(n121), .Z(n116) );
  GTECH_MUX2 U107 ( .A(n120), .B(n119), .S(n114), .Z(n121) );
  GTECH_NOT U108 ( .A(Mcand[2]), .Z(n114) );
  GTECH_AOI22 U109 ( .A(n122), .B(n111), .C(n113), .D(n108), .Z(n119) );
  GTECH_OA22 U110 ( .A(n122), .B(n106), .C(n113), .D(n110), .Z(n120) );
  GTECH_OA22 U111 ( .A(n84), .B(n123), .C(n95), .D(n124), .Z(n113) );
  GTECH_OAI21 U112 ( .A(Mcand[1]), .B(n125), .C(n94), .Z(n124) );
  GTECH_NOT U113 ( .A(n112), .Z(n122) );
  GTECH_ADD_ABC U114 ( .A(Mcand[1]), .B(n126), .C(n84), .COUT(n112) );
  GTECH_AND2 U115 ( .A(Mcand[0]), .B(n85), .Z(n126) );
  GTECH_NOT U116 ( .A(n127), .Z(N44) );
  GTECH_AOI222 U117 ( .A(n88), .B(n125), .C(n128), .D(n129), .E(n130), .F(n131), .Z(n127) );
  GTECH_XOR2 U118 ( .A(Mcand[1]), .B(n125), .Z(n131) );
  GTECH_AND_NOT U119 ( .A(n132), .B(n133), .Z(n130) );
  GTECH_AND3 U120 ( .A(n106), .B(n94), .C(Mcand[0]), .Z(n133) );
  GTECH_OAI21 U121 ( .A(n92), .B(n106), .C(n110), .Z(n132) );
  GTECH_NOT U122 ( .A(n108), .Z(n110) );
  GTECH_NOT U123 ( .A(n111), .Z(n106) );
  GTECH_AND_NOT U124 ( .A(n85), .B(n95), .Z(n92) );
  GTECH_NOT U125 ( .A(Mcand[0]), .Z(n95) );
  GTECH_MUX2 U126 ( .A(n111), .B(n108), .S(n94), .Z(n129) );
  GTECH_NOT U127 ( .A(n85), .Z(n94) );
  GTECH_AND_NOT U128 ( .A(n98), .B(n13), .Z(n108) );
  GTECH_AND_NOT U129 ( .A(n99), .B(n13), .Z(n111) );
  GTECH_AND2 U130 ( .A(n134), .B(Mcand[0]), .Z(n128) );
  GTECH_XOR2 U131 ( .A(n125), .B(n123), .Z(n134) );
  GTECH_NOT U132 ( .A(Mcand[1]), .Z(n123) );
  GTECH_NOT U133 ( .A(n84), .Z(n125) );
  GTECH_AND_NOT U134 ( .A(n13), .B(n97), .Z(n88) );
  GTECH_AND_NOT U135 ( .A(n135), .B(n99), .Z(n97) );
  GTECH_OAI21 U136 ( .A(n135), .B(n136), .C(n137), .Z(N42) );
  GTECH_NOT U137 ( .A(n99), .Z(n137) );
  GTECH_OR_NOT U138 ( .A(n12), .B(n138), .Z(n136) );
  GTECH_NOT U139 ( .A(n98), .Z(n135) );
  GTECH_OA21 U140 ( .A(n12), .B(n86), .C(n98), .Z(N41) );
  GTECH_AO21 U141 ( .A(n90), .B(St), .C(n139), .Z(N40) );
  GTECH_AO21 U142 ( .A(n86), .B(n98), .C(n99), .Z(n139) );
  GTECH_AND3 U143 ( .A(n12), .B(n140), .C(n86), .Z(n99) );
  GTECH_OA21 U144 ( .A(n141), .B(n138), .C(n87), .Z(n98) );
  GTECH_NOT U145 ( .A(n12), .Z(n141) );
  GTECH_AND3 U146 ( .A(n86), .B(n12), .C(n87), .Z(n90) );
  GTECH_AND3 U147 ( .A(n138), .B(n140), .C(n12), .Z(Done) );
  GTECH_NOT U148 ( .A(n87), .Z(n140) );
  GTECH_NOT U149 ( .A(n86), .Z(n138) );
endmodule

