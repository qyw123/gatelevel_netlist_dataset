
module bcd_counter ( clk, reset, ena, q );
  output [3:1] ena;
  output [15:0] q;
  input clk, reset;
  wire   N10, N11, N12, N13, N22, N23, N24, N25, N26, N38, N39, N40, N41, N42,
         N54, N55, N56, N57, N58, n46, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114;

  GTECH_FD1 ones_reg_0_ ( .D(N10), .CP(clk), .Q(q[0]) );
  GTECH_FD1 ones_reg_2_ ( .D(N12), .CP(clk), .Q(q[2]) );
  GTECH_FD1 ones_reg_1_ ( .D(N11), .CP(clk), .Q(q[1]) );
  GTECH_FD1 ones_reg_3_ ( .D(N13), .CP(clk), .Q(q[3]) );
  GTECH_FJK1S tens_reg_0_ ( .J(n46), .K(n46), .TI(N22), .TE(N25), .CP(clk), 
        .Q(q[4]) );
  GTECH_FJK1S tens_reg_2_ ( .J(n46), .K(n46), .TI(N24), .TE(N25), .CP(clk), 
        .Q(q[6]) );
  GTECH_FJK1S tens_reg_1_ ( .J(n46), .K(n46), .TI(N23), .TE(N25), .CP(clk), 
        .Q(q[5]) );
  GTECH_FJK1S tens_reg_3_ ( .J(n46), .K(n46), .TI(N26), .TE(N25), .CP(clk), 
        .Q(q[7]) );
  GTECH_FJK1S hundreds_reg_0_ ( .J(n46), .K(n46), .TI(N38), .TE(N41), .CP(clk), 
        .Q(q[8]) );
  GTECH_FJK1S hundreds_reg_2_ ( .J(n46), .K(n46), .TI(N40), .TE(N41), .CP(clk), 
        .Q(q[10]) );
  GTECH_FJK1S hundreds_reg_1_ ( .J(n46), .K(n46), .TI(N39), .TE(N41), .CP(clk), 
        .Q(q[9]) );
  GTECH_FJK1S hundreds_reg_3_ ( .J(n46), .K(n46), .TI(N42), .TE(N41), .CP(clk), 
        .Q(q[11]) );
  GTECH_FJK1S thousands_reg_0_ ( .J(n46), .K(n46), .TI(N54), .TE(N57), .CP(clk), .Q(q[12]) );
  GTECH_FJK1S thousands_reg_2_ ( .J(n46), .K(n46), .TI(N56), .TE(N57), .CP(clk), .Q(q[14]) );
  GTECH_FJK1S thousands_reg_1_ ( .J(n46), .K(n46), .TI(N55), .TE(N57), .CP(clk), .Q(q[13]) );
  GTECH_FJK1S thousands_reg_3_ ( .J(n46), .K(n46), .TI(N58), .TE(N57), .CP(clk), .Q(q[15]) );
  GTECH_ZERO U73 ( .Z(n46) );
  GTECH_MUX2 U74 ( .A(n66), .B(n67), .S(q[15]), .Z(N58) );
  GTECH_AO21 U75 ( .A(n68), .B(n69), .C(n70), .Z(n67) );
  GTECH_AND2 U76 ( .A(q[14]), .B(n71), .Z(n66) );
  GTECH_NAND3 U77 ( .A(n72), .B(n73), .C(n74), .Z(N57) );
  GTECH_MUX2 U78 ( .A(n71), .B(n70), .S(q[14]), .Z(N56) );
  GTECH_AO21 U79 ( .A(n68), .B(n75), .C(N54), .Z(n70) );
  GTECH_NOT U80 ( .A(n76), .Z(n71) );
  GTECH_NAND3 U81 ( .A(n68), .B(q[12]), .C(q[13]), .Z(n76) );
  GTECH_MUX2 U82 ( .A(n77), .B(N54), .S(q[13]), .Z(N55) );
  GTECH_AND2 U83 ( .A(n68), .B(q[12]), .Z(n77) );
  GTECH_NOT U84 ( .A(n78), .Z(N54) );
  GTECH_OR_NOT U85 ( .A(q[12]), .B(n68), .Z(n78) );
  GTECH_NOT U86 ( .A(n72), .Z(n68) );
  GTECH_NAND3 U87 ( .A(n74), .B(n73), .C(ena[3]), .Z(n72) );
  GTECH_NAND5 U88 ( .A(n75), .B(n69), .C(ena[3]), .D(q[15]), .E(q[12]), .Z(n74) );
  GTECH_NOT U89 ( .A(n79), .Z(ena[3]) );
  GTECH_NOT U90 ( .A(q[14]), .Z(n69) );
  GTECH_NOT U91 ( .A(q[13]), .Z(n75) );
  GTECH_MUX2 U92 ( .A(n80), .B(n81), .S(q[11]), .Z(N42) );
  GTECH_AO21 U93 ( .A(n82), .B(n83), .C(n84), .Z(n81) );
  GTECH_AND2 U94 ( .A(q[10]), .B(n85), .Z(n80) );
  GTECH_NAND3 U95 ( .A(n79), .B(n73), .C(n86), .Z(N41) );
  GTECH_MUX2 U96 ( .A(n85), .B(n84), .S(q[10]), .Z(N40) );
  GTECH_AO21 U97 ( .A(n82), .B(n87), .C(N38), .Z(n84) );
  GTECH_NOT U98 ( .A(n88), .Z(n85) );
  GTECH_NAND3 U99 ( .A(n82), .B(q[8]), .C(q[9]), .Z(n88) );
  GTECH_MUX2 U100 ( .A(n89), .B(N38), .S(q[9]), .Z(N39) );
  GTECH_AND2 U101 ( .A(n82), .B(q[8]), .Z(n89) );
  GTECH_NOT U102 ( .A(n90), .Z(N38) );
  GTECH_OR_NOT U103 ( .A(q[8]), .B(n82), .Z(n90) );
  GTECH_NOT U104 ( .A(n86), .Z(n82) );
  GTECH_NAND3 U105 ( .A(n79), .B(n73), .C(ena[2]), .Z(n86) );
  GTECH_NAND5 U106 ( .A(n83), .B(n87), .C(ena[2]), .D(q[8]), .E(q[11]), .Z(n79) );
  GTECH_NOT U107 ( .A(n91), .Z(ena[2]) );
  GTECH_NOT U108 ( .A(q[9]), .Z(n87) );
  GTECH_NOT U109 ( .A(q[10]), .Z(n83) );
  GTECH_MUX2 U110 ( .A(n92), .B(n93), .S(q[7]), .Z(N26) );
  GTECH_AO21 U111 ( .A(n94), .B(n95), .C(n96), .Z(n93) );
  GTECH_AND2 U112 ( .A(q[6]), .B(n97), .Z(n92) );
  GTECH_NAND3 U113 ( .A(n98), .B(n73), .C(n91), .Z(N25) );
  GTECH_MUX2 U114 ( .A(n97), .B(n96), .S(q[6]), .Z(N24) );
  GTECH_AO21 U115 ( .A(n94), .B(n99), .C(N22), .Z(n96) );
  GTECH_NOT U116 ( .A(n100), .Z(n97) );
  GTECH_NAND3 U117 ( .A(n94), .B(q[4]), .C(q[5]), .Z(n100) );
  GTECH_MUX2 U118 ( .A(n101), .B(N22), .S(q[5]), .Z(N23) );
  GTECH_AND2 U119 ( .A(n94), .B(q[4]), .Z(n101) );
  GTECH_NOT U120 ( .A(n102), .Z(N22) );
  GTECH_OR_NOT U121 ( .A(q[4]), .B(n94), .Z(n102) );
  GTECH_NOT U122 ( .A(n98), .Z(n94) );
  GTECH_NAND3 U123 ( .A(n91), .B(n73), .C(ena[1]), .Z(n98) );
  GTECH_NOT U124 ( .A(reset), .Z(n73) );
  GTECH_NAND5 U125 ( .A(n99), .B(n95), .C(ena[1]), .D(q[7]), .E(q[4]), .Z(n91)
         );
  GTECH_NOT U126 ( .A(n103), .Z(ena[1]) );
  GTECH_NOT U127 ( .A(q[6]), .Z(n95) );
  GTECH_NOT U128 ( .A(q[5]), .Z(n99) );
  GTECH_MUX2 U129 ( .A(n104), .B(n105), .S(q[3]), .Z(N13) );
  GTECH_AO21 U130 ( .A(n106), .B(n107), .C(n108), .Z(n105) );
  GTECH_AND2 U131 ( .A(q[2]), .B(n109), .Z(n104) );
  GTECH_MUX2 U132 ( .A(n109), .B(n108), .S(q[2]), .Z(N12) );
  GTECH_AO21 U133 ( .A(n106), .B(n110), .C(N10), .Z(n108) );
  GTECH_NOT U134 ( .A(n111), .Z(n109) );
  GTECH_NAND3 U135 ( .A(n106), .B(q[0]), .C(q[1]), .Z(n111) );
  GTECH_MUX2 U136 ( .A(n112), .B(N10), .S(q[1]), .Z(N11) );
  GTECH_AND2 U137 ( .A(n106), .B(q[0]), .Z(n112) );
  GTECH_NOT U138 ( .A(n113), .Z(N10) );
  GTECH_OR_NOT U139 ( .A(q[0]), .B(n106), .Z(n113) );
  GTECH_NOT U140 ( .A(n114), .Z(n106) );
  GTECH_OR_NOT U141 ( .A(reset), .B(n103), .Z(n114) );
  GTECH_NAND4 U142 ( .A(q[3]), .B(q[0]), .C(n110), .D(n107), .Z(n103) );
  GTECH_NOT U143 ( .A(q[2]), .Z(n107) );
  GTECH_NOT U144 ( .A(q[1]), .Z(n110) );
endmodule

