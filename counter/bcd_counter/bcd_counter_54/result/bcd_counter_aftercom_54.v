
module bcd_counter ( clk, reset, ena, q );
  output [3:1] ena;
  output [15:0] q;
  input clk, reset;
  wire   N10, N11, N12, N13, N22, N23, N24, N25, N26, N38, N39, N40, N41, N42,
         N54, N55, N56, N57, N58, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121;

  GTECH_FD1 ones_reg_0_ ( .D(N10), .CP(clk), .Q(q[0]) );
  GTECH_FD1 ones_reg_2_ ( .D(N12), .CP(clk), .Q(q[2]) );
  GTECH_FD1 ones_reg_3_ ( .D(N13), .CP(clk), .Q(q[3]) );
  GTECH_FD1 ones_reg_1_ ( .D(N11), .CP(clk), .Q(q[1]) );
  GTECH_FJK1S tens_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N22), .TE(N25), .CP(clk), 
        .Q(q[4]) );
  GTECH_FJK1S tens_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N24), .TE(N25), .CP(clk), 
        .Q(q[6]) );
  GTECH_FJK1S tens_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N26), .TE(N25), .CP(clk), 
        .Q(q[7]) );
  GTECH_FJK1S tens_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N23), .TE(N25), .CP(clk), 
        .Q(q[5]) );
  GTECH_FJK1S hundreds_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N38), .TE(N41), .CP(
        clk), .Q(q[8]) );
  GTECH_FJK1S hundreds_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N40), .TE(N41), .CP(
        clk), .Q(q[10]) );
  GTECH_FJK1S hundreds_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N42), .TE(N41), .CP(
        clk), .Q(q[11]) );
  GTECH_FJK1S hundreds_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N39), .TE(N41), .CP(
        clk), .Q(q[9]) );
  GTECH_FJK1S thousands_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N54), .TE(N57), .CP(
        clk), .Q(q[12]) );
  GTECH_FJK1S thousands_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N56), .TE(N57), .CP(
        clk), .Q(q[14]) );
  GTECH_FJK1S thousands_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N58), .TE(N57), .CP(
        clk), .Q(q[15]) );
  GTECH_FJK1S thousands_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N55), .TE(N57), .CP(
        clk), .Q(q[13]) );
  GTECH_MUX2 U77 ( .A(n70), .B(n71), .S(q[15]), .Z(N58) );
  GTECH_OAI21 U78 ( .A(q[14]), .B(n72), .C(n73), .Z(n71) );
  GTECH_NOT U79 ( .A(n74), .Z(n73) );
  GTECH_AND2 U80 ( .A(q[14]), .B(n75), .Z(n70) );
  GTECH_MUX2 U81 ( .A(n75), .B(n74), .S(q[14]), .Z(N56) );
  GTECH_OAI21 U82 ( .A(q[13]), .B(n72), .C(n76), .Z(n74) );
  GTECH_NOT U83 ( .A(n77), .Z(n75) );
  GTECH_NAND3 U84 ( .A(n78), .B(q[12]), .C(q[13]), .Z(n77) );
  GTECH_MUX2 U85 ( .A(n79), .B(N54), .S(q[13]), .Z(N55) );
  GTECH_AND2 U86 ( .A(n78), .B(q[12]), .Z(n79) );
  GTECH_NOT U87 ( .A(n76), .Z(N54) );
  GTECH_OR_NOT U88 ( .A(q[12]), .B(n78), .Z(n76) );
  GTECH_NOT U89 ( .A(n72), .Z(n78) );
  GTECH_NAND3 U90 ( .A(n80), .B(ena[3]), .C(n81), .Z(n72) );
  GTECH_NAND3 U91 ( .A(q[15]), .B(q[12]), .C(n82), .Z(n81) );
  GTECH_NOR2 U92 ( .A(q[13]), .B(q[14]), .Z(n82) );
  GTECH_MUX2 U93 ( .A(n83), .B(n84), .S(q[11]), .Z(N42) );
  GTECH_OAI21 U94 ( .A(q[10]), .B(n85), .C(n86), .Z(n84) );
  GTECH_NOT U95 ( .A(n87), .Z(n86) );
  GTECH_AND2 U96 ( .A(q[10]), .B(n88), .Z(n83) );
  GTECH_OR_NOT U97 ( .A(N57), .B(n85), .Z(N41) );
  GTECH_MUX2 U98 ( .A(n88), .B(n87), .S(q[10]), .Z(N40) );
  GTECH_OAI21 U99 ( .A(q[9]), .B(n85), .C(n89), .Z(n87) );
  GTECH_NOT U100 ( .A(n90), .Z(n88) );
  GTECH_NAND3 U101 ( .A(n91), .B(q[8]), .C(q[9]), .Z(n90) );
  GTECH_MUX2 U102 ( .A(n92), .B(N38), .S(q[9]), .Z(N39) );
  GTECH_AND2 U103 ( .A(n91), .B(q[8]), .Z(n92) );
  GTECH_NOT U104 ( .A(n89), .Z(N38) );
  GTECH_OR_NOT U105 ( .A(q[8]), .B(n91), .Z(n89) );
  GTECH_NOT U106 ( .A(n85), .Z(n91) );
  GTECH_OR_NOT U107 ( .A(N57), .B(ena[2]), .Z(n85) );
  GTECH_OR_NOT U108 ( .A(ena[3]), .B(n80), .Z(N57) );
  GTECH_NOT U109 ( .A(n93), .Z(ena[3]) );
  GTECH_NAND5 U110 ( .A(n94), .B(n95), .C(ena[2]), .D(q[8]), .E(q[11]), .Z(n93) );
  GTECH_NOT U111 ( .A(n96), .Z(ena[2]) );
  GTECH_NOT U112 ( .A(q[9]), .Z(n95) );
  GTECH_NOT U113 ( .A(q[10]), .Z(n94) );
  GTECH_MUX2 U114 ( .A(n97), .B(n98), .S(q[7]), .Z(N26) );
  GTECH_OAI21 U115 ( .A(q[6]), .B(n99), .C(n100), .Z(n98) );
  GTECH_NOT U116 ( .A(n101), .Z(n100) );
  GTECH_AND2 U117 ( .A(q[6]), .B(n102), .Z(n97) );
  GTECH_NAND3 U118 ( .A(n96), .B(n80), .C(n99), .Z(N25) );
  GTECH_MUX2 U119 ( .A(n102), .B(n101), .S(q[6]), .Z(N24) );
  GTECH_OAI21 U120 ( .A(q[5]), .B(n99), .C(n103), .Z(n101) );
  GTECH_NOT U121 ( .A(n104), .Z(n102) );
  GTECH_NAND3 U122 ( .A(n105), .B(q[4]), .C(q[5]), .Z(n104) );
  GTECH_MUX2 U123 ( .A(n106), .B(N22), .S(q[5]), .Z(N23) );
  GTECH_AND2 U124 ( .A(n105), .B(q[4]), .Z(n106) );
  GTECH_NOT U125 ( .A(n103), .Z(N22) );
  GTECH_OR_NOT U126 ( .A(q[4]), .B(n105), .Z(n103) );
  GTECH_NOT U127 ( .A(n99), .Z(n105) );
  GTECH_NAND3 U128 ( .A(n96), .B(n80), .C(ena[1]), .Z(n99) );
  GTECH_NOT U129 ( .A(reset), .Z(n80) );
  GTECH_NAND5 U130 ( .A(n107), .B(n108), .C(ena[1]), .D(q[7]), .E(q[4]), .Z(
        n96) );
  GTECH_NOT U131 ( .A(n109), .Z(ena[1]) );
  GTECH_NOT U132 ( .A(q[6]), .Z(n108) );
  GTECH_NOT U133 ( .A(q[5]), .Z(n107) );
  GTECH_MUX2 U134 ( .A(n110), .B(n111), .S(q[3]), .Z(N13) );
  GTECH_OAI21 U135 ( .A(q[2]), .B(n112), .C(n113), .Z(n111) );
  GTECH_NOT U136 ( .A(n114), .Z(n113) );
  GTECH_AND2 U137 ( .A(q[2]), .B(n115), .Z(n110) );
  GTECH_MUX2 U138 ( .A(n115), .B(n114), .S(q[2]), .Z(N12) );
  GTECH_OAI21 U139 ( .A(q[1]), .B(n112), .C(n116), .Z(n114) );
  GTECH_NOT U140 ( .A(n117), .Z(n115) );
  GTECH_NAND3 U141 ( .A(n118), .B(q[0]), .C(q[1]), .Z(n117) );
  GTECH_MUX2 U142 ( .A(n119), .B(N10), .S(q[1]), .Z(N11) );
  GTECH_AND2 U143 ( .A(n118), .B(q[0]), .Z(n119) );
  GTECH_NOT U144 ( .A(n116), .Z(N10) );
  GTECH_OR_NOT U145 ( .A(q[0]), .B(n118), .Z(n116) );
  GTECH_NOT U146 ( .A(n112), .Z(n118) );
  GTECH_OR_NOT U147 ( .A(reset), .B(n109), .Z(n112) );
  GTECH_NAND4 U148 ( .A(q[3]), .B(q[0]), .C(n120), .D(n121), .Z(n109) );
  GTECH_NOT U149 ( .A(q[2]), .Z(n121) );
  GTECH_NOT U150 ( .A(q[1]), .Z(n120) );
endmodule

