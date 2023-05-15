
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n73, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n86) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n85) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n87) );
  GTECH_FJK1S B_reg_0_ ( .J(n73), .K(n73), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n12) );
  GTECH_FJK1S A_reg_3_ ( .J(n73), .K(n73), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n81) );
  GTECH_FJK1S A_reg_0_ ( .J(n73), .K(n73), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n83) );
  GTECH_FJK1S A_reg_1_ ( .J(n73), .K(n73), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n84) );
  GTECH_FJK1S A_reg_2_ ( .J(n73), .K(n73), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n82) );
  GTECH_FJK1S B_reg_3_ ( .J(n73), .K(n73), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]) );
  GTECH_FJK1S B_reg_2_ ( .J(n73), .K(n73), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]) );
  GTECH_FJK1S B_reg_1_ ( .J(n73), .K(n73), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]) );
  GTECH_ZERO U82 ( .Z(n73) );
  GTECH_AND2 U83 ( .A(n88), .B(N57), .Z(N63) );
  GTECH_NOT U84 ( .A(n89), .Z(N58) );
  GTECH_AOI222 U85 ( .A(Mplier[3]), .B(n90), .C(n91), .D(n92), .E(n93), .F(n94), .Z(n89) );
  GTECH_OAI21 U86 ( .A(Mcand[0]), .B(n95), .C(n88), .Z(n93) );
  GTECH_NOT U87 ( .A(n96), .Z(n95) );
  GTECH_AND2 U88 ( .A(n97), .B(n96), .Z(n91) );
  GTECH_AO21 U89 ( .A(n90), .B(St), .C(n96), .Z(N57) );
  GTECH_AO22 U90 ( .A(Mplier[2]), .B(n90), .C(n96), .D(Product[3]), .Z(N56) );
  GTECH_AO22 U91 ( .A(Mplier[1]), .B(n90), .C(n96), .D(Product[2]), .Z(N54) );
  GTECH_AO22 U92 ( .A(Mplier[0]), .B(n90), .C(n96), .D(Product[1]), .Z(N52) );
  GTECH_MUX2 U93 ( .A(n98), .B(n99), .S(n100), .Z(N50) );
  GTECH_MUX2 U94 ( .A(n101), .B(n102), .S(n81), .Z(N48) );
  GTECH_MUX2 U95 ( .A(n103), .B(n104), .S(Mcand[3]), .Z(n102) );
  GTECH_OR_NOT U96 ( .A(n105), .B(n88), .Z(n101) );
  GTECH_MUX2 U97 ( .A(n103), .B(n104), .S(n100), .Z(n105) );
  GTECH_NOT U98 ( .A(Mcand[3]), .Z(n100) );
  GTECH_OAI22 U99 ( .A(n106), .B(n107), .C(n108), .D(n109), .Z(n104) );
  GTECH_AO22 U100 ( .A(n110), .B(n106), .C(n111), .D(n108), .Z(n103) );
  GTECH_OA21 U101 ( .A(Mcand[2]), .B(n112), .C(n113), .Z(n108) );
  GTECH_AO21 U102 ( .A(n112), .B(Mcand[2]), .C(n114), .Z(n113) );
  GTECH_ADD_ABC U103 ( .A(Mcand[2]), .B(n115), .C(n82), .COUT(n106) );
  GTECH_MUX2 U104 ( .A(n116), .B(n117), .S(n114), .Z(N46) );
  GTECH_NOT U105 ( .A(n82), .Z(n114) );
  GTECH_NAND2 U106 ( .A(n118), .B(n88), .Z(n117) );
  GTECH_MUX2 U107 ( .A(n119), .B(n120), .S(Mcand[2]), .Z(n118) );
  GTECH_NOT U108 ( .A(n121), .Z(n116) );
  GTECH_MUX2 U109 ( .A(n120), .B(n119), .S(Mcand[2]), .Z(n121) );
  GTECH_OA22 U110 ( .A(n112), .B(n109), .C(n115), .D(n107), .Z(n119) );
  GTECH_AOI22 U111 ( .A(n115), .B(n110), .C(n112), .D(n111), .Z(n120) );
  GTECH_ADD_ABC U112 ( .A(n122), .B(Mcand[1]), .C(n123), .COUT(n112) );
  GTECH_NOT U113 ( .A(n84), .Z(n123) );
  GTECH_AND2 U114 ( .A(Mcand[0]), .B(n94), .Z(n122) );
  GTECH_ADD_ABC U115 ( .A(Mcand[1]), .B(n124), .C(n84), .COUT(n115) );
  GTECH_AND2 U116 ( .A(Mcand[0]), .B(n83), .Z(n124) );
  GTECH_MUX2 U117 ( .A(n125), .B(n126), .S(n84), .Z(N44) );
  GTECH_NOT U118 ( .A(n127), .Z(n126) );
  GTECH_MUX2 U119 ( .A(n128), .B(n129), .S(Mcand[1]), .Z(n127) );
  GTECH_NAND2 U120 ( .A(n88), .B(n130), .Z(n125) );
  GTECH_MUX2 U121 ( .A(n129), .B(n128), .S(Mcand[1]), .Z(n130) );
  GTECH_OR_NOT U122 ( .A(n131), .B(Mcand[0]), .Z(n128) );
  GTECH_MUX2 U123 ( .A(n109), .B(n107), .S(n83), .Z(n131) );
  GTECH_OAI21 U124 ( .A(n110), .B(n132), .C(n133), .Z(n129) );
  GTECH_OAI21 U125 ( .A(n92), .B(n107), .C(n109), .Z(n133) );
  GTECH_NOT U126 ( .A(n111), .Z(n109) );
  GTECH_AND2 U127 ( .A(n98), .B(n97), .Z(n111) );
  GTECH_NOT U128 ( .A(n110), .Z(n107) );
  GTECH_AND_NOT U129 ( .A(Mcand[0]), .B(n94), .Z(n92) );
  GTECH_NAND2 U130 ( .A(n94), .B(Mcand[0]), .Z(n132) );
  GTECH_NOT U131 ( .A(n83), .Z(n94) );
  GTECH_AND_NOT U132 ( .A(n99), .B(n12), .Z(n110) );
  GTECH_OR_NOT U133 ( .A(n97), .B(n96), .Z(n88) );
  GTECH_OR2 U134 ( .A(n98), .B(n99), .Z(n96) );
  GTECH_NOT U135 ( .A(n12), .Z(n97) );
  GTECH_OR_NOT U136 ( .A(n99), .B(n134), .Z(N42) );
  GTECH_NAND3 U137 ( .A(n135), .B(n136), .C(n98), .Z(n134) );
  GTECH_OA21 U138 ( .A(n85), .B(n86), .C(n98), .Z(N41) );
  GTECH_AO21 U139 ( .A(n90), .B(St), .C(n137), .Z(N40) );
  GTECH_AO21 U140 ( .A(n86), .B(n98), .C(n99), .Z(n137) );
  GTECH_AND3 U141 ( .A(n85), .B(n138), .C(n86), .Z(n99) );
  GTECH_OA21 U142 ( .A(n135), .B(n136), .C(n87), .Z(n98) );
  GTECH_NOT U143 ( .A(n85), .Z(n135) );
  GTECH_AND3 U144 ( .A(n86), .B(n85), .C(n87), .Z(n90) );
  GTECH_AND3 U145 ( .A(n136), .B(n138), .C(n85), .Z(Done) );
  GTECH_NOT U146 ( .A(n87), .Z(n138) );
  GTECH_NOT U147 ( .A(n86), .Z(n136) );
endmodule

