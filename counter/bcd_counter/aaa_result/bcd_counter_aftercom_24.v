
module bcd_counter ( clk, reset, ena, q );
  output [3:1] ena;
  output [15:0] q;
  input clk, reset;
  wire   N10, N11, N12, N13, N22, N23, N24, N25, N26, N38, N39, N40, N41, N42,
         N54, N55, N56, N57, N58, n50, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128;

  GTECH_FD1 ones_reg_0_ ( .D(N10), .CP(clk), .Q(q[0]) );
  GTECH_FD1 ones_reg_2_ ( .D(N12), .CP(clk), .Q(q[2]) );
  GTECH_FD1 ones_reg_1_ ( .D(N11), .CP(clk), .Q(q[1]) );
  GTECH_FD1 ones_reg_3_ ( .D(N13), .CP(clk), .Q(q[3]) );
  GTECH_FJK1S tens_reg_0_ ( .J(n50), .K(n50), .TI(N22), .TE(N25), .CP(clk), 
        .Q(q[4]) );
  GTECH_FJK1S tens_reg_2_ ( .J(n50), .K(n50), .TI(N24), .TE(N25), .CP(clk), 
        .Q(q[6]) );
  GTECH_FJK1S tens_reg_1_ ( .J(n50), .K(n50), .TI(N23), .TE(N25), .CP(clk), 
        .Q(q[5]) );
  GTECH_FJK1S tens_reg_3_ ( .J(n50), .K(n50), .TI(N26), .TE(N25), .CP(clk), 
        .Q(q[7]) );
  GTECH_FJK1S hundreds_reg_0_ ( .J(n50), .K(n50), .TI(N38), .TE(N41), .CP(clk), 
        .Q(q[8]) );
  GTECH_FJK1S hundreds_reg_2_ ( .J(n50), .K(n50), .TI(N40), .TE(N41), .CP(clk), 
        .Q(q[10]) );
  GTECH_FJK1S hundreds_reg_1_ ( .J(n50), .K(n50), .TI(N39), .TE(N41), .CP(clk), 
        .Q(q[9]) );
  GTECH_FJK1S hundreds_reg_3_ ( .J(n50), .K(n50), .TI(N42), .TE(N41), .CP(clk), 
        .Q(q[11]) );
  GTECH_FJK1S thousands_reg_0_ ( .J(n50), .K(n50), .TI(N54), .TE(N57), .CP(clk), .Q(q[12]) );
  GTECH_FJK1S thousands_reg_2_ ( .J(n50), .K(n50), .TI(N56), .TE(N57), .CP(clk), .Q(q[14]) );
  GTECH_FJK1S thousands_reg_1_ ( .J(n50), .K(n50), .TI(N55), .TE(N57), .CP(clk), .Q(q[13]) );
  GTECH_FJK1S thousands_reg_3_ ( .J(n50), .K(n50), .TI(N58), .TE(N57), .CP(clk), .Q(q[15]) );
  GTECH_ZERO U81 ( .Z(n50) );
  GTECH_MUX2 U82 ( .A(n74), .B(n75), .S(q[15]), .Z(N58) );
  GTECH_AO21 U83 ( .A(n76), .B(n77), .C(n78), .Z(n75) );
  GTECH_AND2 U84 ( .A(q[14]), .B(n79), .Z(n74) );
  GTECH_MUX2 U85 ( .A(n79), .B(n78), .S(q[14]), .Z(N56) );
  GTECH_AO21 U86 ( .A(n76), .B(n80), .C(N54), .Z(n78) );
  GTECH_NOT U87 ( .A(n81), .Z(n79) );
  GTECH_NAND3 U88 ( .A(n76), .B(q[12]), .C(q[13]), .Z(n81) );
  GTECH_MUX2 U89 ( .A(n82), .B(N54), .S(q[13]), .Z(N55) );
  GTECH_AND2 U90 ( .A(n76), .B(q[12]), .Z(n82) );
  GTECH_NOT U91 ( .A(n83), .Z(N54) );
  GTECH_NAND2 U92 ( .A(n76), .B(n84), .Z(n83) );
  GTECH_NOT U93 ( .A(q[12]), .Z(n84) );
  GTECH_AND3 U94 ( .A(n85), .B(ena[3]), .C(n86), .Z(n76) );
  GTECH_NAND4 U95 ( .A(q[15]), .B(q[12]), .C(n80), .D(n77), .Z(n86) );
  GTECH_NOT U96 ( .A(q[14]), .Z(n77) );
  GTECH_NOT U97 ( .A(q[13]), .Z(n80) );
  GTECH_NOT U98 ( .A(n87), .Z(ena[3]) );
  GTECH_MUX2 U99 ( .A(n88), .B(n89), .S(q[11]), .Z(N42) );
  GTECH_AO21 U100 ( .A(n90), .B(n91), .C(n92), .Z(n89) );
  GTECH_NOT U101 ( .A(q[10]), .Z(n91) );
  GTECH_AND2 U102 ( .A(q[10]), .B(n93), .Z(n88) );
  GTECH_NAND2 U103 ( .A(n94), .B(n95), .Z(N41) );
  GTECH_MUX2 U104 ( .A(n93), .B(n92), .S(q[10]), .Z(N40) );
  GTECH_AO21 U105 ( .A(n90), .B(n96), .C(N38), .Z(n92) );
  GTECH_NOT U106 ( .A(q[9]), .Z(n96) );
  GTECH_NOT U107 ( .A(n97), .Z(n93) );
  GTECH_NAND3 U108 ( .A(n90), .B(q[8]), .C(q[9]), .Z(n97) );
  GTECH_MUX2 U109 ( .A(n98), .B(N38), .S(q[9]), .Z(N39) );
  GTECH_AND2 U110 ( .A(n90), .B(q[8]), .Z(n98) );
  GTECH_NOT U111 ( .A(n99), .Z(N38) );
  GTECH_NAND2 U112 ( .A(n90), .B(n100), .Z(n99) );
  GTECH_NOT U113 ( .A(n94), .Z(n90) );
  GTECH_NAND2 U114 ( .A(ena[2]), .B(n95), .Z(n94) );
  GTECH_NOT U115 ( .A(N57), .Z(n95) );
  GTECH_NAND2 U116 ( .A(n85), .B(n87), .Z(N57) );
  GTECH_OR5 U117 ( .A(q[9]), .B(q[10]), .C(n101), .D(n102), .E(n100), .Z(n87)
         );
  GTECH_NOT U118 ( .A(q[8]), .Z(n100) );
  GTECH_NOT U119 ( .A(q[11]), .Z(n102) );
  GTECH_NOT U120 ( .A(n101), .Z(ena[2]) );
  GTECH_MUX2 U121 ( .A(n103), .B(n104), .S(q[7]), .Z(N26) );
  GTECH_AO21 U122 ( .A(n105), .B(n106), .C(n107), .Z(n104) );
  GTECH_NOT U123 ( .A(q[6]), .Z(n106) );
  GTECH_AND2 U124 ( .A(q[6]), .B(n108), .Z(n103) );
  GTECH_NAND3 U125 ( .A(n101), .B(n85), .C(n109), .Z(N25) );
  GTECH_MUX2 U126 ( .A(n108), .B(n107), .S(q[6]), .Z(N24) );
  GTECH_AO21 U127 ( .A(n105), .B(n110), .C(N22), .Z(n107) );
  GTECH_NOT U128 ( .A(q[5]), .Z(n110) );
  GTECH_NOT U129 ( .A(n111), .Z(n108) );
  GTECH_NAND3 U130 ( .A(n105), .B(q[4]), .C(q[5]), .Z(n111) );
  GTECH_MUX2 U131 ( .A(n112), .B(N22), .S(q[5]), .Z(N23) );
  GTECH_AND2 U132 ( .A(n105), .B(q[4]), .Z(n112) );
  GTECH_NOT U133 ( .A(n113), .Z(N22) );
  GTECH_NAND2 U134 ( .A(n105), .B(n114), .Z(n113) );
  GTECH_NOT U135 ( .A(n109), .Z(n105) );
  GTECH_NAND3 U136 ( .A(n101), .B(n85), .C(ena[1]), .Z(n109) );
  GTECH_NOT U137 ( .A(n115), .Z(ena[1]) );
  GTECH_OR5 U138 ( .A(q[6]), .B(q[5]), .C(n115), .D(n114), .E(n116), .Z(n101)
         );
  GTECH_NOT U139 ( .A(q[7]), .Z(n116) );
  GTECH_NOT U140 ( .A(q[4]), .Z(n114) );
  GTECH_MUX2 U141 ( .A(n117), .B(n118), .S(q[3]), .Z(N13) );
  GTECH_AO21 U142 ( .A(n119), .B(n120), .C(n121), .Z(n118) );
  GTECH_AND2 U143 ( .A(q[2]), .B(n122), .Z(n117) );
  GTECH_MUX2 U144 ( .A(n122), .B(n121), .S(q[2]), .Z(N12) );
  GTECH_AO21 U145 ( .A(n119), .B(n123), .C(N10), .Z(n121) );
  GTECH_NOT U146 ( .A(n124), .Z(n122) );
  GTECH_NAND3 U147 ( .A(n119), .B(q[0]), .C(q[1]), .Z(n124) );
  GTECH_MUX2 U148 ( .A(n125), .B(N10), .S(q[1]), .Z(N11) );
  GTECH_AND2 U149 ( .A(n119), .B(q[0]), .Z(n125) );
  GTECH_NOT U150 ( .A(n126), .Z(N10) );
  GTECH_NAND2 U151 ( .A(n119), .B(n127), .Z(n126) );
  GTECH_NOT U152 ( .A(q[0]), .Z(n127) );
  GTECH_NOT U153 ( .A(n128), .Z(n119) );
  GTECH_NAND2 U154 ( .A(n115), .B(n85), .Z(n128) );
  GTECH_NOT U155 ( .A(reset), .Z(n85) );
  GTECH_NAND4 U156 ( .A(q[3]), .B(q[0]), .C(n123), .D(n120), .Z(n115) );
  GTECH_NOT U157 ( .A(q[2]), .Z(n120) );
  GTECH_NOT U158 ( .A(q[1]), .Z(n123) );
endmodule

