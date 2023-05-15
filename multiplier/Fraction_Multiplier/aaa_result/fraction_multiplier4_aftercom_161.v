
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n14, n15, n16, n17, n18, n19, n73, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n84) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n12) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .QN(n83) );
  GTECH_FJK1S B_reg_0_ ( .J(n73), .K(n73), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n14) );
  GTECH_FJK1S A_reg_3_ ( .J(n73), .K(n73), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n15) );
  GTECH_FJK1S A_reg_0_ ( .J(n73), .K(n73), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n82) );
  GTECH_FJK1S A_reg_1_ ( .J(n73), .K(n73), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n81) );
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
  GTECH_NOT U80 ( .A(n86), .Z(N58) );
  GTECH_AOI222 U81 ( .A(Mplier[3]), .B(n87), .C(n88), .D(n89), .E(n90), .F(n91), .Z(n86) );
  GTECH_OAI21 U82 ( .A(Mcand[0]), .B(n92), .C(n85), .Z(n90) );
  GTECH_AND_NOT U83 ( .A(n93), .B(n14), .Z(n88) );
  GTECH_AO21 U84 ( .A(n87), .B(St), .C(n93), .Z(N57) );
  GTECH_OAI2N2 U85 ( .A(n17), .B(n92), .C(Mplier[2]), .D(n87), .Z(N56) );
  GTECH_OAI2N2 U86 ( .A(n18), .B(n92), .C(Mplier[1]), .D(n87), .Z(N54) );
  GTECH_OAI2N2 U87 ( .A(n19), .B(n92), .C(Mplier[0]), .D(n87), .Z(N52) );
  GTECH_MUX2 U88 ( .A(n94), .B(n95), .S(n96), .Z(N50) );
  GTECH_MUX2 U89 ( .A(n97), .B(n98), .S(n15), .Z(N48) );
  GTECH_MUX2 U90 ( .A(n99), .B(n100), .S(Mcand[3]), .Z(n98) );
  GTECH_OR2 U91 ( .A(n101), .B(n102), .Z(n97) );
  GTECH_MUX2 U92 ( .A(n99), .B(n100), .S(n96), .Z(n101) );
  GTECH_NOT U93 ( .A(Mcand[3]), .Z(n96) );
  GTECH_OAI22 U94 ( .A(n103), .B(n104), .C(n105), .D(n106), .Z(n100) );
  GTECH_AO22 U95 ( .A(n107), .B(n103), .C(n108), .D(n105), .Z(n99) );
  GTECH_OA21 U96 ( .A(Mcand[2]), .B(n109), .C(n110), .Z(n105) );
  GTECH_AO21 U97 ( .A(n109), .B(Mcand[2]), .C(n111), .Z(n110) );
  GTECH_ADD_ABC U98 ( .A(Mcand[2]), .B(n112), .C(n16), .COUT(n103) );
  GTECH_MUX2 U99 ( .A(n113), .B(n114), .S(n111), .Z(N46) );
  GTECH_NOT U100 ( .A(n16), .Z(n111) );
  GTECH_OR_NOT U101 ( .A(n102), .B(n115), .Z(n114) );
  GTECH_MUX2 U102 ( .A(n116), .B(n117), .S(Mcand[2]), .Z(n115) );
  GTECH_NOT U103 ( .A(n118), .Z(n113) );
  GTECH_MUX2 U104 ( .A(n117), .B(n116), .S(Mcand[2]), .Z(n118) );
  GTECH_OA22 U105 ( .A(n109), .B(n106), .C(n112), .D(n104), .Z(n116) );
  GTECH_AOI22 U106 ( .A(n112), .B(n107), .C(n109), .D(n108), .Z(n117) );
  GTECH_ADD_ABC U107 ( .A(n119), .B(Mcand[1]), .C(n120), .COUT(n109) );
  GTECH_NOT U108 ( .A(n81), .Z(n120) );
  GTECH_ADD_ABC U109 ( .A(Mcand[1]), .B(n89), .C(n81), .COUT(n112) );
  GTECH_OAI21 U110 ( .A(n81), .B(n85), .C(n121), .Z(N44) );
  GTECH_MUX2 U111 ( .A(n122), .B(n123), .S(n124), .Z(n121) );
  GTECH_XOR2 U112 ( .A(n81), .B(Mcand[1]), .Z(n124) );
  GTECH_OR_NOT U113 ( .A(n125), .B(Mcand[0]), .Z(n123) );
  GTECH_MUX2 U114 ( .A(n104), .B(n106), .S(n91), .Z(n125) );
  GTECH_OA22 U115 ( .A(n119), .B(n106), .C(n89), .D(n104), .Z(n122) );
  GTECH_NOT U116 ( .A(n107), .Z(n104) );
  GTECH_AND_NOT U117 ( .A(n95), .B(n14), .Z(n107) );
  GTECH_AND_NOT U118 ( .A(Mcand[0]), .B(n91), .Z(n89) );
  GTECH_NOT U119 ( .A(n108), .Z(n106) );
  GTECH_AND_NOT U120 ( .A(n94), .B(n14), .Z(n108) );
  GTECH_AND2 U121 ( .A(Mcand[0]), .B(n91), .Z(n119) );
  GTECH_NOT U122 ( .A(n82), .Z(n91) );
  GTECH_NOT U123 ( .A(n102), .Z(n85) );
  GTECH_AND_NOT U124 ( .A(n14), .B(n92), .Z(n102) );
  GTECH_NOT U125 ( .A(n93), .Z(n92) );
  GTECH_OR2 U126 ( .A(n94), .B(n95), .Z(n93) );
  GTECH_AO21 U127 ( .A(n94), .B(n126), .C(n95), .Z(N42) );
  GTECH_NOR2 U128 ( .A(n84), .B(n83), .Z(n126) );
  GTECH_OA21 U129 ( .A(n83), .B(n84), .C(n94), .Z(N41) );
  GTECH_AO21 U130 ( .A(n87), .B(St), .C(n127), .Z(N40) );
  GTECH_AO21 U131 ( .A(n84), .B(n94), .C(n95), .Z(n127) );
  GTECH_AND2 U132 ( .A(n128), .B(n129), .Z(n95) );
  GTECH_AND_NOT U133 ( .A(n12), .B(n128), .Z(n94) );
  GTECH_AND_NOT U134 ( .A(n128), .B(n129), .Z(n87) );
  GTECH_AND_NOT U135 ( .A(n83), .B(n130), .Z(n128) );
  GTECH_AND3 U136 ( .A(n129), .B(n130), .C(n83), .Z(Done) );
  GTECH_NOT U137 ( .A(n84), .Z(n130) );
  GTECH_NOT U138 ( .A(n12), .Z(n129) );
endmodule

