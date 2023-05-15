
module bcd_counter ( clk, reset, ena, q );
  output [3:1] ena;
  output [15:0] q;
  input clk, reset;
  wire   N10, N11, N12, N13, N22, N23, N24, N25, N26, N38, N39, N40, N41, N42,
         N54, N55, N56, N57, N58, n48, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123;

  GTECH_FD1 ones_reg_0_ ( .D(N10), .CP(clk), .Q(q[0]) );
  GTECH_FD1 ones_reg_2_ ( .D(N12), .CP(clk), .Q(q[2]) );
  GTECH_FD1 ones_reg_3_ ( .D(N13), .CP(clk), .Q(q[3]) );
  GTECH_FD1 ones_reg_1_ ( .D(N11), .CP(clk), .Q(q[1]) );
  GTECH_FJK1S tens_reg_0_ ( .J(n48), .K(n48), .TI(N22), .TE(N25), .CP(clk), 
        .Q(q[4]) );
  GTECH_FJK1S tens_reg_2_ ( .J(n48), .K(n48), .TI(N24), .TE(N25), .CP(clk), 
        .Q(q[6]) );
  GTECH_FJK1S tens_reg_3_ ( .J(n48), .K(n48), .TI(N26), .TE(N25), .CP(clk), 
        .Q(q[7]) );
  GTECH_FJK1S tens_reg_1_ ( .J(n48), .K(n48), .TI(N23), .TE(N25), .CP(clk), 
        .Q(q[5]) );
  GTECH_FJK1S hundreds_reg_0_ ( .J(n48), .K(n48), .TI(N38), .TE(N41), .CP(clk), 
        .Q(q[8]) );
  GTECH_FJK1S hundreds_reg_2_ ( .J(n48), .K(n48), .TI(N40), .TE(N41), .CP(clk), 
        .Q(q[10]) );
  GTECH_FJK1S hundreds_reg_3_ ( .J(n48), .K(n48), .TI(N42), .TE(N41), .CP(clk), 
        .Q(q[11]) );
  GTECH_FJK1S hundreds_reg_1_ ( .J(n48), .K(n48), .TI(N39), .TE(N41), .CP(clk), 
        .Q(q[9]) );
  GTECH_FJK1S thousands_reg_0_ ( .J(n48), .K(n48), .TI(N54), .TE(N57), .CP(clk), .Q(q[12]) );
  GTECH_FJK1S thousands_reg_2_ ( .J(n48), .K(n48), .TI(N56), .TE(N57), .CP(clk), .Q(q[14]) );
  GTECH_FJK1S thousands_reg_3_ ( .J(n48), .K(n48), .TI(N58), .TE(N57), .CP(clk), .Q(q[15]) );
  GTECH_FJK1S thousands_reg_1_ ( .J(n48), .K(n48), .TI(N55), .TE(N57), .CP(clk), .Q(q[13]) );
  GTECH_ZERO U79 ( .Z(n48) );
  GTECH_MUX2 U80 ( .A(n72), .B(n73), .S(q[15]), .Z(N58) );
  GTECH_OAI21 U81 ( .A(q[14]), .B(n74), .C(n75), .Z(n73) );
  GTECH_NOT U82 ( .A(n76), .Z(n75) );
  GTECH_AND2 U83 ( .A(q[14]), .B(n77), .Z(n72) );
  GTECH_MUX2 U84 ( .A(n77), .B(n76), .S(q[14]), .Z(N56) );
  GTECH_OAI21 U85 ( .A(q[13]), .B(n74), .C(n78), .Z(n76) );
  GTECH_NOT U86 ( .A(n79), .Z(n77) );
  GTECH_NAND3 U87 ( .A(n80), .B(q[12]), .C(q[13]), .Z(n79) );
  GTECH_MUX2 U88 ( .A(n81), .B(N54), .S(q[13]), .Z(N55) );
  GTECH_AND2 U89 ( .A(n80), .B(q[12]), .Z(n81) );
  GTECH_NOT U90 ( .A(n78), .Z(N54) );
  GTECH_OR_NOT U91 ( .A(q[12]), .B(n80), .Z(n78) );
  GTECH_NOT U92 ( .A(n74), .Z(n80) );
  GTECH_NAND3 U93 ( .A(n82), .B(ena[3]), .C(n83), .Z(n74) );
  GTECH_NAND3 U94 ( .A(q[12]), .B(q[15]), .C(n84), .Z(n83) );
  GTECH_NOR2 U95 ( .A(q[14]), .B(q[13]), .Z(n84) );
  GTECH_MUX2 U96 ( .A(n85), .B(n86), .S(q[11]), .Z(N42) );
  GTECH_OAI21 U97 ( .A(q[10]), .B(n87), .C(n88), .Z(n86) );
  GTECH_NOT U98 ( .A(n89), .Z(n88) );
  GTECH_AND2 U99 ( .A(q[10]), .B(n90), .Z(n85) );
  GTECH_OR_NOT U100 ( .A(N57), .B(n87), .Z(N41) );
  GTECH_MUX2 U101 ( .A(n90), .B(n89), .S(q[10]), .Z(N40) );
  GTECH_OAI21 U102 ( .A(q[9]), .B(n87), .C(n91), .Z(n89) );
  GTECH_NOT U103 ( .A(n92), .Z(n90) );
  GTECH_NAND3 U104 ( .A(n93), .B(q[8]), .C(q[9]), .Z(n92) );
  GTECH_MUX2 U105 ( .A(n94), .B(N38), .S(q[9]), .Z(N39) );
  GTECH_AND2 U106 ( .A(n93), .B(q[8]), .Z(n94) );
  GTECH_NOT U107 ( .A(n91), .Z(N38) );
  GTECH_OR_NOT U108 ( .A(q[8]), .B(n93), .Z(n91) );
  GTECH_NOT U109 ( .A(n87), .Z(n93) );
  GTECH_OR_NOT U110 ( .A(N57), .B(ena[2]), .Z(n87) );
  GTECH_OR_NOT U111 ( .A(ena[3]), .B(n82), .Z(N57) );
  GTECH_NOT U112 ( .A(n95), .Z(ena[3]) );
  GTECH_NAND5 U113 ( .A(n96), .B(n97), .C(ena[2]), .D(q[8]), .E(q[11]), .Z(n95) );
  GTECH_NOT U114 ( .A(n98), .Z(ena[2]) );
  GTECH_NOT U115 ( .A(q[9]), .Z(n97) );
  GTECH_NOT U116 ( .A(q[10]), .Z(n96) );
  GTECH_MUX2 U117 ( .A(n99), .B(n100), .S(q[7]), .Z(N26) );
  GTECH_OAI21 U118 ( .A(q[6]), .B(n101), .C(n102), .Z(n100) );
  GTECH_NOT U119 ( .A(n103), .Z(n102) );
  GTECH_AND2 U120 ( .A(q[6]), .B(n104), .Z(n99) );
  GTECH_NAND3 U121 ( .A(n98), .B(n82), .C(n101), .Z(N25) );
  GTECH_MUX2 U122 ( .A(n104), .B(n103), .S(q[6]), .Z(N24) );
  GTECH_OAI21 U123 ( .A(q[5]), .B(n101), .C(n105), .Z(n103) );
  GTECH_NOT U124 ( .A(n106), .Z(n104) );
  GTECH_NAND3 U125 ( .A(n107), .B(q[4]), .C(q[5]), .Z(n106) );
  GTECH_MUX2 U126 ( .A(n108), .B(N22), .S(q[5]), .Z(N23) );
  GTECH_AND2 U127 ( .A(n107), .B(q[4]), .Z(n108) );
  GTECH_NOT U128 ( .A(n105), .Z(N22) );
  GTECH_OR_NOT U129 ( .A(q[4]), .B(n107), .Z(n105) );
  GTECH_NOT U130 ( .A(n101), .Z(n107) );
  GTECH_NAND3 U131 ( .A(n98), .B(n82), .C(ena[1]), .Z(n101) );
  GTECH_NOT U132 ( .A(reset), .Z(n82) );
  GTECH_NAND5 U133 ( .A(n109), .B(n110), .C(ena[1]), .D(q[7]), .E(q[4]), .Z(
        n98) );
  GTECH_NOT U134 ( .A(n111), .Z(ena[1]) );
  GTECH_NOT U135 ( .A(q[6]), .Z(n110) );
  GTECH_NOT U136 ( .A(q[5]), .Z(n109) );
  GTECH_MUX2 U137 ( .A(n112), .B(n113), .S(q[3]), .Z(N13) );
  GTECH_OAI21 U138 ( .A(q[2]), .B(n114), .C(n115), .Z(n113) );
  GTECH_NOT U139 ( .A(n116), .Z(n115) );
  GTECH_AND2 U140 ( .A(q[2]), .B(n117), .Z(n112) );
  GTECH_MUX2 U141 ( .A(n117), .B(n116), .S(q[2]), .Z(N12) );
  GTECH_OAI21 U142 ( .A(q[1]), .B(n114), .C(n118), .Z(n116) );
  GTECH_NOT U143 ( .A(n119), .Z(n117) );
  GTECH_NAND3 U144 ( .A(n120), .B(q[0]), .C(q[1]), .Z(n119) );
  GTECH_MUX2 U145 ( .A(n121), .B(N10), .S(q[1]), .Z(N11) );
  GTECH_AND2 U146 ( .A(n120), .B(q[0]), .Z(n121) );
  GTECH_NOT U147 ( .A(n118), .Z(N10) );
  GTECH_OR_NOT U148 ( .A(q[0]), .B(n120), .Z(n118) );
  GTECH_NOT U149 ( .A(n114), .Z(n120) );
  GTECH_OR_NOT U150 ( .A(reset), .B(n111), .Z(n114) );
  GTECH_OR4 U151 ( .A(n122), .B(n123), .C(q[2]), .D(q[1]), .Z(n111) );
  GTECH_NOT U152 ( .A(q[3]), .Z(n123) );
  GTECH_NOT U153 ( .A(q[0]), .Z(n122) );
endmodule

