
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n18, n73, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n12) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n13) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n84) );
  GTECH_FJK1S B_reg_0_ ( .J(n73), .K(n73), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n83) );
  GTECH_FJK1S A_reg_3_ ( .J(n73), .K(n73), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n14) );
  GTECH_FJK1S A_reg_0_ ( .J(n73), .K(n73), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n82) );
  GTECH_FJK1S A_reg_1_ ( .J(n73), .K(n73), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n81) );
  GTECH_FJK1S A_reg_2_ ( .J(n73), .K(n73), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n15) );
  GTECH_FJK1S B_reg_3_ ( .J(n73), .K(n73), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n16) );
  GTECH_FJK1S B_reg_2_ ( .J(n73), .K(n73), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n17) );
  GTECH_FJK1S B_reg_1_ ( .J(n73), .K(n73), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n18) );
  GTECH_ZERO U79 ( .Z(n73) );
  GTECH_AND2 U80 ( .A(N57), .B(n85), .Z(N63) );
  GTECH_NOT U81 ( .A(n86), .Z(N58) );
  GTECH_AOI222 U82 ( .A(Mplier[3]), .B(n87), .C(n88), .D(n89), .E(n90), .F(n91), .Z(n86) );
  GTECH_OAI21 U83 ( .A(Mcand[0]), .B(n92), .C(n85), .Z(n90) );
  GTECH_NOR2 U84 ( .A(n92), .B(n83), .Z(n88) );
  GTECH_OAI21 U85 ( .A(n93), .B(n94), .C(n92), .Z(N57) );
  GTECH_OAI2N2 U86 ( .A(n16), .B(n92), .C(Mplier[2]), .D(n87), .Z(N56) );
  GTECH_OAI2N2 U87 ( .A(n17), .B(n92), .C(Mplier[1]), .D(n87), .Z(N54) );
  GTECH_OAI2N2 U88 ( .A(n18), .B(n92), .C(Mplier[0]), .D(n87), .Z(N52) );
  GTECH_MUX2 U89 ( .A(n95), .B(n96), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U90 ( .A(n97), .B(n98), .S(n14), .Z(N48) );
  GTECH_MUX2 U91 ( .A(n99), .B(n100), .S(n101), .Z(n98) );
  GTECH_NOT U92 ( .A(Mcand[3]), .Z(n101) );
  GTECH_OR_NOT U93 ( .A(n102), .B(n85), .Z(n97) );
  GTECH_MUX2 U94 ( .A(n99), .B(n100), .S(Mcand[3]), .Z(n102) );
  GTECH_OAI22 U95 ( .A(n103), .B(n104), .C(n105), .D(n106), .Z(n100) );
  GTECH_AO22 U96 ( .A(n107), .B(n103), .C(n108), .D(n105), .Z(n99) );
  GTECH_OA21 U97 ( .A(n109), .B(n110), .C(n111), .Z(n105) );
  GTECH_OAI21 U98 ( .A(Mcand[2]), .B(n112), .C(n15), .Z(n111) );
  GTECH_AOI21 U99 ( .A(n113), .B(Mcand[2]), .C(n114), .Z(n103) );
  GTECH_OA21 U100 ( .A(Mcand[2]), .B(n113), .C(n115), .Z(n114) );
  GTECH_NOT U101 ( .A(n15), .Z(n115) );
  GTECH_MUX2 U102 ( .A(n116), .B(n117), .S(n15), .Z(N46) );
  GTECH_NOT U103 ( .A(n118), .Z(n117) );
  GTECH_MUX2 U104 ( .A(n119), .B(n120), .S(n110), .Z(n118) );
  GTECH_NOT U105 ( .A(Mcand[2]), .Z(n110) );
  GTECH_NAND2 U106 ( .A(n121), .B(n85), .Z(n116) );
  GTECH_MUX2 U107 ( .A(n119), .B(n120), .S(Mcand[2]), .Z(n121) );
  GTECH_AOI2N2 U108 ( .A(n113), .B(n107), .C(n109), .D(n106), .Z(n120) );
  GTECH_OA22 U109 ( .A(n112), .B(n106), .C(n113), .D(n104), .Z(n119) );
  GTECH_ADD_ABC U110 ( .A(Mcand[1]), .B(n122), .C(n123), .COUT(n113) );
  GTECH_AND_NOT U111 ( .A(Mcand[0]), .B(n82), .Z(n122) );
  GTECH_NOT U112 ( .A(n109), .Z(n112) );
  GTECH_ADD_ABC U113 ( .A(n124), .B(n125), .C(n123), .COUT(n109) );
  GTECH_OR_NOT U114 ( .A(n91), .B(Mcand[0]), .Z(n124) );
  GTECH_NOT U115 ( .A(n82), .Z(n91) );
  GTECH_MUX2 U116 ( .A(n126), .B(n127), .S(n123), .Z(N44) );
  GTECH_NOT U117 ( .A(n81), .Z(n123) );
  GTECH_OR_NOT U118 ( .A(n128), .B(n85), .Z(n127) );
  GTECH_OR_NOT U119 ( .A(n92), .B(n83), .Z(n85) );
  GTECH_AND2 U120 ( .A(n129), .B(n130), .Z(n92) );
  GTECH_MUX2 U121 ( .A(n131), .B(n132), .S(n125), .Z(n128) );
  GTECH_NOT U122 ( .A(Mcand[1]), .Z(n125) );
  GTECH_MUX2 U123 ( .A(n131), .B(n132), .S(Mcand[1]), .Z(n126) );
  GTECH_OAI2N2 U124 ( .A(n89), .B(n106), .C(n133), .D(n107), .Z(n132) );
  GTECH_NOT U125 ( .A(n108), .Z(n106) );
  GTECH_OAI2N2 U126 ( .A(n133), .B(n104), .C(n89), .D(n108), .Z(n131) );
  GTECH_NOR2 U127 ( .A(n130), .B(n83), .Z(n108) );
  GTECH_AND2 U128 ( .A(Mcand[0]), .B(n82), .Z(n89) );
  GTECH_NOT U129 ( .A(n107), .Z(n104) );
  GTECH_AND_NOT U130 ( .A(n96), .B(n83), .Z(n107) );
  GTECH_OR_NOT U131 ( .A(n82), .B(Mcand[0]), .Z(n133) );
  GTECH_OR_NOT U132 ( .A(n95), .B(n134), .Z(N42) );
  GTECH_OR3 U133 ( .A(n12), .B(n84), .C(n129), .Z(n134) );
  GTECH_OA21 U134 ( .A(n12), .B(n84), .C(n96), .Z(N41) );
  GTECH_OAI21 U135 ( .A(n93), .B(n94), .C(n135), .Z(N40) );
  GTECH_OA21 U136 ( .A(n136), .B(n129), .C(n130), .Z(n135) );
  GTECH_NOT U137 ( .A(n95), .Z(n130) );
  GTECH_AND2 U138 ( .A(n137), .B(n138), .Z(n95) );
  GTECH_NOT U139 ( .A(n96), .Z(n129) );
  GTECH_NOR2 U140 ( .A(n138), .B(n137), .Z(n96) );
  GTECH_NOT U141 ( .A(St), .Z(n94) );
  GTECH_NOT U142 ( .A(n87), .Z(n93) );
  GTECH_AND2 U143 ( .A(n137), .B(n13), .Z(n87) );
  GTECH_AND2 U144 ( .A(n84), .B(n12), .Z(n137) );
  GTECH_AND3 U145 ( .A(n136), .B(n138), .C(n84), .Z(Done) );
  GTECH_NOT U146 ( .A(n13), .Z(n138) );
  GTECH_NOT U147 ( .A(n12), .Z(n136) );
endmodule

