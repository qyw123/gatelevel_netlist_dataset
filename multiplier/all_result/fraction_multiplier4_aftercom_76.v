
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63, n12,
         n13, n15, n16, n17, n18, n19, n73, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n84) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n83) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n12) );
  GTECH_FJK1S B_reg_0_ ( .J(n73), .K(n73), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n13) );
  GTECH_FJK1S A_reg_3_ ( .J(n73), .K(n73), .TI(N50), .TE(N63), .CP(CLK), .QN(
        n82) );
  GTECH_FJK1S A_reg_0_ ( .J(n73), .K(n73), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n81) );
  GTECH_FJK1S A_reg_1_ ( .J(n73), .K(n73), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n15) );
  GTECH_FJK1S A_reg_2_ ( .J(n73), .K(n73), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n16) );
  GTECH_FJK1S B_reg_3_ ( .J(n73), .K(n73), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n17) );
  GTECH_FJK1S B_reg_2_ ( .J(n73), .K(n73), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n18) );
  GTECH_FJK1S B_reg_1_ ( .J(n73), .K(n73), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n19) );
  GTECH_ZERO U78 ( .Z(n73) );
  GTECH_AND2 U79 ( .A(N57), .B(n85), .Z(N63) );
  GTECH_AO21 U80 ( .A(Mplier[3]), .B(n86), .C(n87), .Z(N58) );
  GTECH_MUX2 U81 ( .A(n88), .B(n89), .S(n81), .Z(n87) );
  GTECH_NOR3 U82 ( .A(n90), .B(n13), .C(n91), .Z(n89) );
  GTECH_OAI21 U83 ( .A(Mcand[0]), .B(n90), .C(n85), .Z(n88) );
  GTECH_OAI21 U84 ( .A(n92), .B(n93), .C(n90), .Z(N57) );
  GTECH_OAI2N2 U85 ( .A(n17), .B(n90), .C(Mplier[2]), .D(n86), .Z(N56) );
  GTECH_OAI2N2 U86 ( .A(n18), .B(n90), .C(Mplier[1]), .D(n86), .Z(N54) );
  GTECH_OAI2N2 U87 ( .A(n19), .B(n90), .C(Mplier[0]), .D(n86), .Z(N52) );
  GTECH_MUX2 U88 ( .A(n94), .B(n95), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U89 ( .A(n96), .B(n97), .S(n82), .Z(N48) );
  GTECH_MUX2 U90 ( .A(n98), .B(n99), .S(Mcand[3]), .Z(n97) );
  GTECH_OR_NOT U91 ( .A(n100), .B(n85), .Z(n96) );
  GTECH_MUX2 U92 ( .A(n99), .B(n98), .S(Mcand[3]), .Z(n100) );
  GTECH_OAI22 U93 ( .A(n101), .B(n102), .C(n103), .D(n104), .Z(n98) );
  GTECH_AO22 U94 ( .A(n105), .B(n101), .C(n106), .D(n103), .Z(n99) );
  GTECH_OA21 U95 ( .A(n107), .B(n108), .C(n109), .Z(n103) );
  GTECH_AO21 U96 ( .A(n108), .B(n107), .C(n16), .Z(n109) );
  GTECH_AOI21 U97 ( .A(n110), .B(Mcand[2]), .C(n111), .Z(n101) );
  GTECH_OA21 U98 ( .A(Mcand[2]), .B(n110), .C(n16), .Z(n111) );
  GTECH_MUX2 U99 ( .A(n112), .B(n113), .S(n16), .Z(N46) );
  GTECH_MUX2 U100 ( .A(n114), .B(n115), .S(n108), .Z(n113) );
  GTECH_NOT U101 ( .A(Mcand[2]), .Z(n108) );
  GTECH_OR_NOT U102 ( .A(n116), .B(n85), .Z(n112) );
  GTECH_MUX2 U103 ( .A(n114), .B(n115), .S(Mcand[2]), .Z(n116) );
  GTECH_OAI2N2 U104 ( .A(n107), .B(n104), .C(n110), .D(n105), .Z(n115) );
  GTECH_OAI2N2 U105 ( .A(n110), .B(n102), .C(n107), .D(n106), .Z(n114) );
  GTECH_OA21 U106 ( .A(n15), .B(n117), .C(n118), .Z(n107) );
  GTECH_OAI21 U107 ( .A(Mcand[1]), .B(n119), .C(n120), .Z(n118) );
  GTECH_NOT U108 ( .A(n105), .Z(n102) );
  GTECH_OAI22 U109 ( .A(n121), .B(n122), .C(n119), .D(n117), .Z(n110) );
  GTECH_OAI21 U110 ( .A(Mcand[1]), .B(n15), .C(Mcand[0]), .Z(n122) );
  GTECH_OAI21 U111 ( .A(n15), .B(n85), .C(n123), .Z(N44) );
  GTECH_MUX2 U112 ( .A(n124), .B(n125), .S(n126), .Z(n123) );
  GTECH_XOR2 U113 ( .A(n119), .B(n117), .Z(n126) );
  GTECH_NOT U114 ( .A(Mcand[1]), .Z(n117) );
  GTECH_NOT U115 ( .A(n15), .Z(n119) );
  GTECH_NAND2 U116 ( .A(Mcand[0]), .B(n127), .Z(n125) );
  GTECH_MUX2 U117 ( .A(n105), .B(n106), .S(n121), .Z(n127) );
  GTECH_OA21 U118 ( .A(n120), .B(n104), .C(n128), .Z(n124) );
  GTECH_OAI21 U119 ( .A(n91), .B(n121), .C(n105), .Z(n128) );
  GTECH_AND_NOT U120 ( .A(n94), .B(n13), .Z(n105) );
  GTECH_NOT U121 ( .A(n106), .Z(n104) );
  GTECH_AND_NOT U122 ( .A(n95), .B(n13), .Z(n106) );
  GTECH_AND_NOT U123 ( .A(n121), .B(n91), .Z(n120) );
  GTECH_NOT U124 ( .A(Mcand[0]), .Z(n91) );
  GTECH_NOT U125 ( .A(n81), .Z(n121) );
  GTECH_OR_NOT U126 ( .A(n90), .B(n13), .Z(n85) );
  GTECH_AND_NOT U127 ( .A(n129), .B(n95), .Z(n90) );
  GTECH_NAND2 U128 ( .A(n129), .B(n130), .Z(N42) );
  GTECH_NAND3 U129 ( .A(n131), .B(n132), .C(n95), .Z(n130) );
  GTECH_OA21 U130 ( .A(n83), .B(n84), .C(n95), .Z(N41) );
  GTECH_OAI21 U131 ( .A(n92), .B(n93), .C(n133), .Z(N40) );
  GTECH_AOI21 U132 ( .A(n84), .B(n95), .C(n94), .Z(n133) );
  GTECH_NOT U133 ( .A(n129), .Z(n94) );
  GTECH_OR3 U134 ( .A(n131), .B(n12), .C(n132), .Z(n129) );
  GTECH_OA21 U135 ( .A(n131), .B(n132), .C(n12), .Z(n95) );
  GTECH_NOT U136 ( .A(n84), .Z(n132) );
  GTECH_NOT U137 ( .A(St), .Z(n93) );
  GTECH_NOT U138 ( .A(n86), .Z(n92) );
  GTECH_AND3 U139 ( .A(n84), .B(n83), .C(n12), .Z(n86) );
  GTECH_NOR3 U140 ( .A(n12), .B(n84), .C(n131), .Z(Done) );
  GTECH_NOT U141 ( .A(n83), .Z(n131) );
endmodule

