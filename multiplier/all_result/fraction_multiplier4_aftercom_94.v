
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63, n12,
         n14, n15, n16, n17, n18, n19, n73, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n82) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n84) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n83) );
  GTECH_FJK1S B_reg_0_ ( .J(n73), .K(n73), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n12) );
  GTECH_FJK1S A_reg_3_ ( .J(n73), .K(n73), .TI(N50), .TE(N63), .CP(CLK), .QN(
        n81) );
  GTECH_FJK1S A_reg_0_ ( .J(n73), .K(n73), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n14) );
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
  GTECH_AND_NOT U79 ( .A(N57), .B(n85), .Z(N63) );
  GTECH_NOT U80 ( .A(n86), .Z(N58) );
  GTECH_AOI222 U81 ( .A(Mplier[3]), .B(n87), .C(n88), .D(n89), .E(n90), .F(n91), .Z(n86) );
  GTECH_AO21 U82 ( .A(n92), .B(n93), .C(n85), .Z(n90) );
  GTECH_AND_NOT U83 ( .A(n93), .B(n12), .Z(n88) );
  GTECH_AO21 U84 ( .A(n87), .B(St), .C(n93), .Z(N57) );
  GTECH_NOT U85 ( .A(n94), .Z(n93) );
  GTECH_OAI2N2 U86 ( .A(n17), .B(n94), .C(Mplier[2]), .D(n87), .Z(N56) );
  GTECH_OAI2N2 U87 ( .A(n18), .B(n94), .C(Mplier[1]), .D(n87), .Z(N54) );
  GTECH_OAI2N2 U88 ( .A(n19), .B(n94), .C(Mplier[0]), .D(n87), .Z(N52) );
  GTECH_OAI2N2 U89 ( .A(n95), .B(n96), .C(n96), .D(n97), .Z(N50) );
  GTECH_OAI21 U90 ( .A(n98), .B(n99), .C(n100), .Z(N48) );
  GTECH_OAI21 U91 ( .A(n85), .B(n101), .C(n99), .Z(n100) );
  GTECH_AO22 U92 ( .A(n102), .B(Mcand[3]), .C(n96), .D(n103), .Z(n101) );
  GTECH_NOT U93 ( .A(n81), .Z(n99) );
  GTECH_AOI22 U94 ( .A(n102), .B(n96), .C(n103), .D(Mcand[3]), .Z(n98) );
  GTECH_OAI22 U95 ( .A(n104), .B(n105), .C(n106), .D(n107), .Z(n103) );
  GTECH_NOT U96 ( .A(n108), .Z(n106) );
  GTECH_NOT U97 ( .A(Mcand[3]), .Z(n96) );
  GTECH_AO22 U98 ( .A(n104), .B(n109), .C(n107), .D(n108), .Z(n102) );
  GTECH_OAI21 U99 ( .A(n110), .B(n111), .C(n112), .Z(n107) );
  GTECH_AO21 U100 ( .A(n111), .B(n110), .C(n16), .Z(n112) );
  GTECH_ADD_ABC U101 ( .A(Mcand[2]), .B(n113), .C(n16), .COUT(n104) );
  GTECH_OAI21 U102 ( .A(n114), .B(n115), .C(n116), .Z(N46) );
  GTECH_OAI21 U103 ( .A(n85), .B(n117), .C(n115), .Z(n116) );
  GTECH_OAI2N2 U104 ( .A(n118), .B(n111), .C(n111), .D(n119), .Z(n117) );
  GTECH_NOT U105 ( .A(Mcand[2]), .Z(n111) );
  GTECH_NOT U106 ( .A(n16), .Z(n115) );
  GTECH_AOI2N2 U107 ( .A(n119), .B(Mcand[2]), .C(n118), .D(Mcand[2]), .Z(n114)
         );
  GTECH_AOI22 U108 ( .A(n113), .B(n109), .C(n120), .D(n108), .Z(n118) );
  GTECH_OAI2N2 U109 ( .A(n113), .B(n105), .C(n110), .D(n108), .Z(n119) );
  GTECH_NOT U110 ( .A(n120), .Z(n110) );
  GTECH_OAI21 U111 ( .A(n15), .B(n121), .C(n122), .Z(n120) );
  GTECH_NAND3 U112 ( .A(n123), .B(n91), .C(Mcand[0]), .Z(n122) );
  GTECH_ADD_ABC U113 ( .A(Mcand[1]), .B(n89), .C(n15), .COUT(n113) );
  GTECH_NAND3 U114 ( .A(n124), .B(n125), .C(n126), .Z(N44) );
  GTECH_OR3 U115 ( .A(n92), .B(n127), .C(n123), .Z(n126) );
  GTECH_OR_NOT U116 ( .A(Mcand[1]), .B(n15), .Z(n123) );
  GTECH_OAI21 U117 ( .A(n85), .B(n128), .C(n129), .Z(n125) );
  GTECH_OAI21 U118 ( .A(Mcand[1]), .B(n130), .C(n131), .Z(n128) );
  GTECH_OR3 U119 ( .A(n92), .B(n127), .C(n121), .Z(n131) );
  GTECH_AOI2N2 U120 ( .A(n91), .B(n108), .C(n91), .D(n105), .Z(n127) );
  GTECH_AND_NOT U121 ( .A(n12), .B(n94), .Z(n85) );
  GTECH_AND_NOT U122 ( .A(n95), .B(n97), .Z(n94) );
  GTECH_OR3 U123 ( .A(n121), .B(n130), .C(n129), .Z(n124) );
  GTECH_NOT U124 ( .A(n15), .Z(n129) );
  GTECH_OA21 U125 ( .A(n89), .B(n105), .C(n132), .Z(n130) );
  GTECH_OAI21 U126 ( .A(n14), .B(n92), .C(n108), .Z(n132) );
  GTECH_AND_NOT U127 ( .A(n133), .B(n12), .Z(n108) );
  GTECH_NOT U128 ( .A(Mcand[0]), .Z(n92) );
  GTECH_NOT U129 ( .A(n109), .Z(n105) );
  GTECH_AND_NOT U130 ( .A(n97), .B(n12), .Z(n109) );
  GTECH_AND_NOT U131 ( .A(Mcand[0]), .B(n91), .Z(n89) );
  GTECH_NOT U132 ( .A(n14), .Z(n91) );
  GTECH_NOT U133 ( .A(Mcand[1]), .Z(n121) );
  GTECH_OR_NOT U134 ( .A(n97), .B(n134), .Z(N42) );
  GTECH_OR3 U135 ( .A(n82), .B(n83), .C(n95), .Z(n134) );
  GTECH_AOI21 U136 ( .A(n135), .B(n136), .C(n95), .Z(N41) );
  GTECH_NOT U137 ( .A(n133), .Z(n95) );
  GTECH_AO21 U138 ( .A(n87), .B(St), .C(n137), .Z(N40) );
  GTECH_AO21 U139 ( .A(n82), .B(n133), .C(n97), .Z(n137) );
  GTECH_AND3 U140 ( .A(n82), .B(n138), .C(n83), .Z(n97) );
  GTECH_NOT U141 ( .A(n84), .Z(n138) );
  GTECH_OA21 U142 ( .A(n135), .B(n136), .C(n84), .Z(n133) );
  GTECH_NOT U143 ( .A(n82), .Z(n135) );
  GTECH_AND3 U144 ( .A(n83), .B(n82), .C(n84), .Z(n87) );
  GTECH_NOR3 U145 ( .A(n82), .B(n84), .C(n136), .Z(Done) );
  GTECH_NOT U146 ( .A(n83), .Z(n136) );
endmodule

