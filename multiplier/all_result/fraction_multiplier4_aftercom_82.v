
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63, n12,
         n13, n14, n16, n17, n18, n73, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n12) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n13) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n85) );
  GTECH_FJK1S B_reg_0_ ( .J(n73), .K(n73), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n14) );
  GTECH_FJK1S A_reg_3_ ( .J(n73), .K(n73), .TI(N50), .TE(N63), .CP(CLK), .QN(
        n82) );
  GTECH_FJK1S A_reg_0_ ( .J(n73), .K(n73), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n81) );
  GTECH_FJK1S A_reg_1_ ( .J(n73), .K(n73), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n84) );
  GTECH_FJK1S A_reg_2_ ( .J(n73), .K(n73), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n83) );
  GTECH_FJK1S B_reg_3_ ( .J(n73), .K(n73), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n16) );
  GTECH_FJK1S B_reg_2_ ( .J(n73), .K(n73), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n17) );
  GTECH_FJK1S B_reg_1_ ( .J(n73), .K(n73), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n18) );
  GTECH_ZERO U79 ( .Z(n73) );
  GTECH_AND2 U80 ( .A(n86), .B(N57), .Z(N63) );
  GTECH_AO21 U81 ( .A(Mplier[3]), .B(n87), .C(n88), .Z(N58) );
  GTECH_MUX2 U82 ( .A(n89), .B(n90), .S(n81), .Z(n88) );
  GTECH_NOR3 U83 ( .A(n91), .B(n14), .C(n92), .Z(n90) );
  GTECH_OAI21 U84 ( .A(Mcand[0]), .B(n91), .C(n86), .Z(n89) );
  GTECH_OAI21 U85 ( .A(n93), .B(n94), .C(n91), .Z(N57) );
  GTECH_OAI2N2 U86 ( .A(n16), .B(n91), .C(Mplier[2]), .D(n87), .Z(N56) );
  GTECH_OAI2N2 U87 ( .A(n17), .B(n91), .C(Mplier[1]), .D(n87), .Z(N54) );
  GTECH_OAI2N2 U88 ( .A(n18), .B(n91), .C(Mplier[0]), .D(n87), .Z(N52) );
  GTECH_MUX2 U89 ( .A(n95), .B(n96), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U90 ( .A(n97), .B(n98), .S(n82), .Z(N48) );
  GTECH_MUX2 U91 ( .A(n99), .B(n100), .S(Mcand[3]), .Z(n98) );
  GTECH_OR_NOT U92 ( .A(n101), .B(n86), .Z(n97) );
  GTECH_MUX2 U93 ( .A(n100), .B(n99), .S(Mcand[3]), .Z(n101) );
  GTECH_OAI22 U94 ( .A(n102), .B(n103), .C(n104), .D(n105), .Z(n99) );
  GTECH_AO22 U95 ( .A(n102), .B(n106), .C(n104), .D(n107), .Z(n100) );
  GTECH_OAI21 U96 ( .A(Mcand[2]), .B(n108), .C(n109), .Z(n104) );
  GTECH_AO21 U97 ( .A(n108), .B(Mcand[2]), .C(n83), .Z(n109) );
  GTECH_OAI21 U98 ( .A(Mcand[2]), .B(n110), .C(n111), .Z(n102) );
  GTECH_AO21 U99 ( .A(n110), .B(Mcand[2]), .C(n112), .Z(n111) );
  GTECH_MUX2 U100 ( .A(n113), .B(n114), .S(n112), .Z(N46) );
  GTECH_NOT U101 ( .A(n83), .Z(n112) );
  GTECH_NAND2 U102 ( .A(n115), .B(n86), .Z(n114) );
  GTECH_MUX2 U103 ( .A(n116), .B(n117), .S(n118), .Z(n115) );
  GTECH_NOT U104 ( .A(Mcand[2]), .Z(n118) );
  GTECH_NOT U105 ( .A(n119), .Z(n113) );
  GTECH_MUX2 U106 ( .A(n116), .B(n117), .S(Mcand[2]), .Z(n119) );
  GTECH_OA22 U107 ( .A(n110), .B(n103), .C(n108), .D(n105), .Z(n117) );
  GTECH_AOI22 U108 ( .A(n110), .B(n106), .C(n108), .D(n107), .Z(n116) );
  GTECH_AO22 U109 ( .A(Mcand[1]), .B(n84), .C(n81), .D(n120), .Z(n108) );
  GTECH_OA21 U110 ( .A(Mcand[1]), .B(n84), .C(Mcand[0]), .Z(n120) );
  GTECH_OAI21 U111 ( .A(n84), .B(n121), .C(n122), .Z(n110) );
  GTECH_OR3 U112 ( .A(n123), .B(n81), .C(n92), .Z(n122) );
  GTECH_NOT U113 ( .A(Mcand[1]), .Z(n121) );
  GTECH_NAND2 U114 ( .A(n124), .B(n125), .Z(N44) );
  GTECH_MUX2 U115 ( .A(n126), .B(n127), .S(n84), .Z(n125) );
  GTECH_NAND2 U116 ( .A(Mcand[1]), .B(n128), .Z(n127) );
  GTECH_AND_NOT U117 ( .A(n86), .B(n129), .Z(n126) );
  GTECH_MUX2 U118 ( .A(n128), .B(n130), .S(Mcand[1]), .Z(n129) );
  GTECH_AND2 U119 ( .A(n131), .B(Mcand[0]), .Z(n130) );
  GTECH_NAND2 U120 ( .A(n132), .B(n133), .Z(n128) );
  GTECH_OAI21 U121 ( .A(n106), .B(n107), .C(n92), .Z(n133) );
  GTECH_NOT U122 ( .A(Mcand[0]), .Z(n92) );
  GTECH_MUX2 U123 ( .A(n105), .B(n103), .S(n81), .Z(n132) );
  GTECH_NOT U124 ( .A(n106), .Z(n103) );
  GTECH_NOT U125 ( .A(n107), .Z(n105) );
  GTECH_OR_NOT U126 ( .A(n91), .B(n14), .Z(n86) );
  GTECH_AND_NOT U127 ( .A(n134), .B(n96), .Z(n91) );
  GTECH_NAND3 U128 ( .A(Mcand[0]), .B(n131), .C(n123), .Z(n124) );
  GTECH_AND_NOT U129 ( .A(n84), .B(Mcand[1]), .Z(n123) );
  GTECH_MUX2 U130 ( .A(n106), .B(n107), .S(n81), .Z(n131) );
  GTECH_AND_NOT U131 ( .A(n95), .B(n14), .Z(n107) );
  GTECH_AND_NOT U132 ( .A(n96), .B(n14), .Z(n106) );
  GTECH_NAND2 U133 ( .A(n134), .B(n135), .Z(N42) );
  GTECH_NAND3 U134 ( .A(n136), .B(n137), .C(n96), .Z(n135) );
  GTECH_NOT U135 ( .A(n95), .Z(n134) );
  GTECH_OA21 U136 ( .A(n12), .B(n85), .C(n96), .Z(N41) );
  GTECH_OAI21 U137 ( .A(n93), .B(n94), .C(n138), .Z(N40) );
  GTECH_AOI21 U138 ( .A(n12), .B(n96), .C(n95), .Z(n138) );
  GTECH_AND3 U139 ( .A(n12), .B(n139), .C(n85), .Z(n95) );
  GTECH_OA21 U140 ( .A(n136), .B(n137), .C(n13), .Z(n96) );
  GTECH_NOT U141 ( .A(n85), .Z(n137) );
  GTECH_NOT U142 ( .A(St), .Z(n94) );
  GTECH_NOT U143 ( .A(n87), .Z(n93) );
  GTECH_AND3 U144 ( .A(n85), .B(n12), .C(n13), .Z(n87) );
  GTECH_AND3 U145 ( .A(n136), .B(n139), .C(n85), .Z(Done) );
  GTECH_NOT U146 ( .A(n13), .Z(n139) );
  GTECH_NOT U147 ( .A(n12), .Z(n136) );
endmodule

