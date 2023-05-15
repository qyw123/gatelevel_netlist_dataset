
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n69, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n82) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n81) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n12) );
  GTECH_FJK1S B_reg_0_ ( .J(n69), .K(n69), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n13) );
  GTECH_FJK1S A_reg_3_ ( .J(n69), .K(n69), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n77) );
  GTECH_FJK1S A_reg_0_ ( .J(n69), .K(n69), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n80) );
  GTECH_FJK1S A_reg_1_ ( .J(n69), .K(n69), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n79) );
  GTECH_FJK1S A_reg_2_ ( .J(n69), .K(n69), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n78) );
  GTECH_FJK1S B_reg_3_ ( .J(n69), .K(n69), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]) );
  GTECH_FJK1S B_reg_2_ ( .J(n69), .K(n69), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]) );
  GTECH_FJK1S B_reg_1_ ( .J(n69), .K(n69), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]) );
  GTECH_ZERO U77 ( .Z(n69) );
  GTECH_AND_NOT U78 ( .A(N57), .B(n83), .Z(N63) );
  GTECH_NOT U79 ( .A(n84), .Z(N58) );
  GTECH_AOI222 U80 ( .A(Mplier[3]), .B(n85), .C(n86), .D(n87), .E(n88), .F(n89), .Z(n84) );
  GTECH_AO21 U81 ( .A(n90), .B(n91), .C(n83), .Z(n88) );
  GTECH_AND_NOT U82 ( .A(n90), .B(n13), .Z(n86) );
  GTECH_AO21 U83 ( .A(St), .B(n85), .C(n90), .Z(N57) );
  GTECH_AO22 U84 ( .A(Mplier[2]), .B(n85), .C(n90), .D(Product[3]), .Z(N56) );
  GTECH_AO22 U85 ( .A(Mplier[1]), .B(n85), .C(n90), .D(Product[2]), .Z(N54) );
  GTECH_AO22 U86 ( .A(Mplier[0]), .B(n85), .C(n90), .D(Product[1]), .Z(N52) );
  GTECH_MUX2 U87 ( .A(n92), .B(n93), .S(n94), .Z(N50) );
  GTECH_MUX2 U88 ( .A(n95), .B(n96), .S(n77), .Z(N48) );
  GTECH_NOT U89 ( .A(n97), .Z(n96) );
  GTECH_MUX2 U90 ( .A(n98), .B(n99), .S(Mcand[3]), .Z(n97) );
  GTECH_OR_NOT U91 ( .A(n83), .B(n100), .Z(n95) );
  GTECH_MUX2 U92 ( .A(n98), .B(n99), .S(n94), .Z(n100) );
  GTECH_NOT U93 ( .A(Mcand[3]), .Z(n94) );
  GTECH_AOI2N2 U94 ( .A(n101), .B(n102), .C(n103), .D(n104), .Z(n99) );
  GTECH_AOI2N2 U95 ( .A(n105), .B(n103), .C(n106), .D(n101), .Z(n98) );
  GTECH_ADD_ABC U96 ( .A(n107), .B(n108), .C(n78), .COUT(n101) );
  GTECH_ADD_ABC U97 ( .A(Mcand[2]), .B(n109), .C(n78), .COUT(n103) );
  GTECH_MUX2 U98 ( .A(n110), .B(n111), .S(n78), .Z(N46) );
  GTECH_MUX2 U99 ( .A(n112), .B(n113), .S(n107), .Z(n111) );
  GTECH_NOT U100 ( .A(Mcand[2]), .Z(n107) );
  GTECH_OR2 U101 ( .A(n114), .B(n83), .Z(n110) );
  GTECH_MUX2 U102 ( .A(n112), .B(n113), .S(Mcand[2]), .Z(n114) );
  GTECH_AO22 U103 ( .A(n115), .B(n102), .C(n109), .D(n105), .Z(n113) );
  GTECH_OAI22 U104 ( .A(n115), .B(n106), .C(n109), .D(n104), .Z(n112) );
  GTECH_ADD_ABC U105 ( .A(Mcand[1]), .B(n116), .C(n79), .COUT(n109) );
  GTECH_AND2 U106 ( .A(Mcand[0]), .B(n80), .Z(n116) );
  GTECH_NOT U107 ( .A(n108), .Z(n115) );
  GTECH_ADD_ABC U108 ( .A(n117), .B(n118), .C(n79), .COUT(n108) );
  GTECH_NAND2 U109 ( .A(n89), .B(Mcand[0]), .Z(n118) );
  GTECH_AO21 U110 ( .A(n83), .B(n119), .C(n120), .Z(N44) );
  GTECH_MUX2 U111 ( .A(n121), .B(n122), .S(n123), .Z(n120) );
  GTECH_XNOR2 U112 ( .A(n79), .B(n117), .Z(n123) );
  GTECH_NOT U113 ( .A(Mcand[1]), .Z(n117) );
  GTECH_AND2 U114 ( .A(n124), .B(Mcand[0]), .Z(n122) );
  GTECH_MUX2 U115 ( .A(n105), .B(n102), .S(n89), .Z(n124) );
  GTECH_OAI22 U116 ( .A(n87), .B(n104), .C(n125), .D(n106), .Z(n121) );
  GTECH_NOT U117 ( .A(n102), .Z(n106) );
  GTECH_AND_NOT U118 ( .A(n92), .B(n13), .Z(n102) );
  GTECH_AND2 U119 ( .A(n89), .B(Mcand[0]), .Z(n125) );
  GTECH_NOT U120 ( .A(n80), .Z(n89) );
  GTECH_NOT U121 ( .A(n105), .Z(n104) );
  GTECH_AND_NOT U122 ( .A(n93), .B(n13), .Z(n105) );
  GTECH_AND_NOT U123 ( .A(n80), .B(n91), .Z(n87) );
  GTECH_NOT U124 ( .A(Mcand[0]), .Z(n91) );
  GTECH_NOT U125 ( .A(n79), .Z(n119) );
  GTECH_AND2 U126 ( .A(n13), .B(n90), .Z(n83) );
  GTECH_OR2 U127 ( .A(n93), .B(n92), .Z(n90) );
  GTECH_OR_NOT U128 ( .A(n93), .B(n126), .Z(N42) );
  GTECH_NAND3 U129 ( .A(n127), .B(n128), .C(n92), .Z(n126) );
  GTECH_OA21 U130 ( .A(n81), .B(n82), .C(n92), .Z(N41) );
  GTECH_AO21 U131 ( .A(St), .B(n85), .C(n129), .Z(N40) );
  GTECH_AO21 U132 ( .A(n92), .B(n82), .C(n93), .Z(n129) );
  GTECH_AND3 U133 ( .A(n81), .B(n130), .C(n82), .Z(n93) );
  GTECH_OA21 U134 ( .A(n128), .B(n127), .C(n12), .Z(n92) );
  GTECH_NOR3 U135 ( .A(n128), .B(n127), .C(n130), .Z(n85) );
  GTECH_NOT U136 ( .A(n81), .Z(n127) );
  GTECH_AND3 U137 ( .A(n130), .B(n128), .C(n81), .Z(Done) );
  GTECH_NOT U138 ( .A(n82), .Z(n128) );
  GTECH_NOT U139 ( .A(n12), .Z(n130) );
endmodule

