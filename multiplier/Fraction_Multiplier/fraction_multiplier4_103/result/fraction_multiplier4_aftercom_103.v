
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
         n123, n124, n125, n126, n127, n128, n129, n130;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n84) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n83) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n12) );
  GTECH_FJK1S B_reg_0_ ( .J(n73), .K(n73), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n13) );
  GTECH_FJK1S A_reg_3_ ( .J(n73), .K(n73), .TI(N50), .TE(N63), .CP(CLK), .QN(
        n81) );
  GTECH_FJK1S A_reg_0_ ( .J(n73), .K(n73), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n82) );
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
  GTECH_NOT U83 ( .A(Mcand[0]), .Z(n92) );
  GTECH_AND_NOT U84 ( .A(n93), .B(n13), .Z(n88) );
  GTECH_AO21 U85 ( .A(n87), .B(St), .C(n93), .Z(N57) );
  GTECH_NOT U86 ( .A(n94), .Z(n93) );
  GTECH_OAI2N2 U87 ( .A(n17), .B(n94), .C(Mplier[2]), .D(n87), .Z(N56) );
  GTECH_OAI2N2 U88 ( .A(n18), .B(n94), .C(Mplier[1]), .D(n87), .Z(N54) );
  GTECH_OAI2N2 U89 ( .A(n19), .B(n94), .C(Mplier[0]), .D(n87), .Z(N52) );
  GTECH_MUX2 U90 ( .A(n95), .B(n96), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U91 ( .A(n97), .B(n98), .S(n81), .Z(N48) );
  GTECH_MUX2 U92 ( .A(n99), .B(n100), .S(Mcand[3]), .Z(n98) );
  GTECH_OR2 U93 ( .A(n101), .B(n85), .Z(n97) );
  GTECH_MUX2 U94 ( .A(n100), .B(n99), .S(Mcand[3]), .Z(n101) );
  GTECH_AO22 U95 ( .A(n102), .B(n103), .C(n104), .D(n105), .Z(n99) );
  GTECH_OAI22 U96 ( .A(n106), .B(n102), .C(n107), .D(n104), .Z(n100) );
  GTECH_AO21 U97 ( .A(n108), .B(Mcand[2]), .C(n109), .Z(n104) );
  GTECH_OA21 U98 ( .A(Mcand[2]), .B(n108), .C(n16), .Z(n109) );
  GTECH_ADD_ABC U99 ( .A(Mcand[2]), .B(n110), .C(n111), .COUT(n102) );
  GTECH_MUX2 U100 ( .A(n112), .B(n113), .S(n111), .Z(N46) );
  GTECH_NOT U101 ( .A(n16), .Z(n111) );
  GTECH_OR2 U102 ( .A(n114), .B(n85), .Z(n113) );
  GTECH_MUX2 U103 ( .A(n115), .B(n116), .S(Mcand[2]), .Z(n114) );
  GTECH_MUX2 U104 ( .A(n116), .B(n115), .S(Mcand[2]), .Z(n112) );
  GTECH_OAI22 U105 ( .A(n108), .B(n107), .C(n110), .D(n106), .Z(n115) );
  GTECH_NOT U106 ( .A(n103), .Z(n106) );
  GTECH_NOT U107 ( .A(n105), .Z(n107) );
  GTECH_AO22 U108 ( .A(n108), .B(n105), .C(n110), .D(n103), .Z(n116) );
  GTECH_ADD_ABC U109 ( .A(Mcand[1]), .B(n117), .C(n118), .COUT(n110) );
  GTECH_ADD_ABC U110 ( .A(n119), .B(Mcand[1]), .C(n15), .COUT(n108) );
  GTECH_AND_NOT U111 ( .A(Mcand[0]), .B(n91), .Z(n119) );
  GTECH_NOT U112 ( .A(n82), .Z(n91) );
  GTECH_NOT U113 ( .A(n120), .Z(N44) );
  GTECH_AOI222 U114 ( .A(n85), .B(n118), .C(n121), .D(n103), .E(n122), .F(n105), .Z(n120) );
  GTECH_AND_NOT U115 ( .A(n95), .B(n13), .Z(n105) );
  GTECH_XNOR2 U116 ( .A(n123), .B(n89), .Z(n122) );
  GTECH_AND2 U117 ( .A(Mcand[0]), .B(n82), .Z(n89) );
  GTECH_AND_NOT U118 ( .A(n96), .B(n13), .Z(n103) );
  GTECH_XNOR2 U119 ( .A(n123), .B(n117), .Z(n121) );
  GTECH_AND_NOT U120 ( .A(Mcand[0]), .B(n82), .Z(n117) );
  GTECH_XNOR2 U121 ( .A(Mcand[1]), .B(n118), .Z(n123) );
  GTECH_NOT U122 ( .A(n15), .Z(n118) );
  GTECH_AND_NOT U123 ( .A(n13), .B(n94), .Z(n85) );
  GTECH_AND_NOT U124 ( .A(n124), .B(n95), .Z(n94) );
  GTECH_NAND2 U125 ( .A(n125), .B(n126), .Z(N42) );
  GTECH_NOT U126 ( .A(n95), .Z(n126) );
  GTECH_OR3 U127 ( .A(n83), .B(n84), .C(n124), .Z(n125) );
  GTECH_AOI21 U128 ( .A(n127), .B(n128), .C(n124), .Z(N41) );
  GTECH_NOT U129 ( .A(n96), .Z(n124) );
  GTECH_AO21 U130 ( .A(n87), .B(St), .C(n129), .Z(N40) );
  GTECH_AO21 U131 ( .A(n84), .B(n96), .C(n95), .Z(n129) );
  GTECH_AND3 U132 ( .A(n83), .B(n130), .C(n84), .Z(n95) );
  GTECH_NOT U133 ( .A(n12), .Z(n130) );
  GTECH_OA21 U134 ( .A(n127), .B(n128), .C(n12), .Z(n96) );
  GTECH_NOT U135 ( .A(n84), .Z(n128) );
  GTECH_AND3 U136 ( .A(n84), .B(n83), .C(n12), .Z(n87) );
  GTECH_NOR3 U137 ( .A(n12), .B(n84), .C(n127), .Z(Done) );
  GTECH_NOT U138 ( .A(n83), .Z(n127) );
endmodule

