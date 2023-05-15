
module bcd_counter ( clk, reset, ena, q );
  output [3:1] ena;
  output [15:0] q;
  input clk, reset;
  wire   N10, N11, N12, N13, N22, N23, N24, N25, N26, N38, N39, N40, N41, N42,
         N54, N55, N56, N57, N58, n47, n59, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128;

  GTECH_FD2 ones_reg_0_ ( .D(N10), .CP(clk), .CD(n59), .Q(q[0]) );
  GTECH_FD2 ones_reg_2_ ( .D(N12), .CP(clk), .CD(n59), .Q(q[2]) );
  GTECH_FD2 ones_reg_1_ ( .D(N11), .CP(clk), .CD(n59), .Q(q[1]) );
  GTECH_FD2 ones_reg_3_ ( .D(N13), .CP(clk), .CD(n59), .Q(q[3]) );
  GTECH_FJK1S tens_reg_0_ ( .J(n47), .K(n47), .TI(N22), .TE(N25), .CP(clk), 
        .Q(q[4]) );
  GTECH_FJK1S tens_reg_2_ ( .J(n47), .K(n47), .TI(N24), .TE(N25), .CP(clk), 
        .Q(q[6]) );
  GTECH_FJK1S tens_reg_1_ ( .J(n47), .K(n47), .TI(N23), .TE(N25), .CP(clk), 
        .Q(q[5]) );
  GTECH_FJK1S tens_reg_3_ ( .J(n47), .K(n47), .TI(N26), .TE(N25), .CP(clk), 
        .Q(q[7]) );
  GTECH_FJK1S hundreds_reg_0_ ( .J(n47), .K(n47), .TI(N38), .TE(N41), .CP(clk), 
        .Q(q[8]) );
  GTECH_FJK1S hundreds_reg_2_ ( .J(n47), .K(n47), .TI(N40), .TE(N41), .CP(clk), 
        .Q(q[10]) );
  GTECH_FJK1S hundreds_reg_1_ ( .J(n47), .K(n47), .TI(N39), .TE(N41), .CP(clk), 
        .Q(q[9]) );
  GTECH_FJK1S hundreds_reg_3_ ( .J(n47), .K(n47), .TI(N42), .TE(N41), .CP(clk), 
        .Q(q[11]) );
  GTECH_FJK1S thousands_reg_0_ ( .J(n47), .K(n47), .TI(N54), .TE(N57), .CP(clk), .Q(q[12]) );
  GTECH_FJK1S thousands_reg_2_ ( .J(n47), .K(n47), .TI(N56), .TE(N57), .CP(clk), .Q(q[14]) );
  GTECH_FJK1S thousands_reg_1_ ( .J(n47), .K(n47), .TI(N55), .TE(N57), .CP(clk), .Q(q[13]) );
  GTECH_FJK1S thousands_reg_3_ ( .J(n47), .K(n47), .TI(N58), .TE(N57), .CP(clk), .Q(q[15]) );
  GTECH_ONE U82 ( .Z(n59) );
  GTECH_ZERO U83 ( .Z(n47) );
  GTECH_MUX2 U84 ( .A(n75), .B(n76), .S(q[15]), .Z(N58) );
  GTECH_OAI21 U85 ( .A(q[14]), .B(n77), .C(n78), .Z(n76) );
  GTECH_NOT U86 ( .A(n79), .Z(n78) );
  GTECH_AND2 U87 ( .A(q[14]), .B(n80), .Z(n75) );
  GTECH_NAND3 U88 ( .A(n81), .B(n82), .C(n77), .Z(N57) );
  GTECH_MUX2 U89 ( .A(n80), .B(n79), .S(q[14]), .Z(N56) );
  GTECH_OAI21 U90 ( .A(q[13]), .B(n77), .C(n83), .Z(n79) );
  GTECH_NOT U91 ( .A(n84), .Z(n80) );
  GTECH_NAND3 U92 ( .A(n85), .B(q[12]), .C(q[13]), .Z(n84) );
  GTECH_MUX2 U93 ( .A(n86), .B(N54), .S(q[13]), .Z(N55) );
  GTECH_AND2 U94 ( .A(n85), .B(q[12]), .Z(n86) );
  GTECH_NOT U95 ( .A(n83), .Z(N54) );
  GTECH_NAND2 U96 ( .A(n85), .B(n87), .Z(n83) );
  GTECH_NOT U97 ( .A(n77), .Z(n85) );
  GTECH_NAND3 U98 ( .A(n81), .B(n82), .C(ena[3]), .Z(n77) );
  GTECH_NOT U99 ( .A(n88), .Z(ena[3]) );
  GTECH_OR5 U100 ( .A(q[14]), .B(q[13]), .C(n88), .D(n87), .E(n89), .Z(n81) );
  GTECH_NOT U101 ( .A(q[15]), .Z(n89) );
  GTECH_NOT U102 ( .A(q[12]), .Z(n87) );
  GTECH_MUX2 U103 ( .A(n90), .B(n91), .S(q[11]), .Z(N42) );
  GTECH_OAI21 U104 ( .A(q[10]), .B(n92), .C(n93), .Z(n91) );
  GTECH_NOT U105 ( .A(n94), .Z(n93) );
  GTECH_AND2 U106 ( .A(q[10]), .B(n95), .Z(n90) );
  GTECH_NAND3 U107 ( .A(n88), .B(n82), .C(n92), .Z(N41) );
  GTECH_MUX2 U108 ( .A(n95), .B(n94), .S(q[10]), .Z(N40) );
  GTECH_OAI21 U109 ( .A(q[9]), .B(n92), .C(n96), .Z(n94) );
  GTECH_NOT U110 ( .A(n97), .Z(n95) );
  GTECH_NAND3 U111 ( .A(n98), .B(q[8]), .C(q[9]), .Z(n97) );
  GTECH_MUX2 U112 ( .A(n99), .B(N38), .S(q[9]), .Z(N39) );
  GTECH_AND2 U113 ( .A(n98), .B(q[8]), .Z(n99) );
  GTECH_NOT U114 ( .A(n96), .Z(N38) );
  GTECH_NAND2 U115 ( .A(n98), .B(n100), .Z(n96) );
  GTECH_NOT U116 ( .A(n92), .Z(n98) );
  GTECH_NAND3 U117 ( .A(n88), .B(n82), .C(ena[2]), .Z(n92) );
  GTECH_NOT U118 ( .A(n101), .Z(ena[2]) );
  GTECH_OR5 U119 ( .A(q[9]), .B(q[10]), .C(n101), .D(n102), .E(n100), .Z(n88)
         );
  GTECH_NOT U120 ( .A(q[8]), .Z(n100) );
  GTECH_NOT U121 ( .A(q[11]), .Z(n102) );
  GTECH_MUX2 U122 ( .A(n103), .B(n104), .S(q[7]), .Z(N26) );
  GTECH_OAI21 U123 ( .A(q[6]), .B(n105), .C(n106), .Z(n104) );
  GTECH_NOT U124 ( .A(n107), .Z(n106) );
  GTECH_AND2 U125 ( .A(q[6]), .B(n108), .Z(n103) );
  GTECH_NAND3 U126 ( .A(n101), .B(n82), .C(n105), .Z(N25) );
  GTECH_MUX2 U127 ( .A(n108), .B(n107), .S(q[6]), .Z(N24) );
  GTECH_OAI21 U128 ( .A(q[5]), .B(n105), .C(n109), .Z(n107) );
  GTECH_NOT U129 ( .A(n110), .Z(n108) );
  GTECH_NAND3 U130 ( .A(n111), .B(q[4]), .C(q[5]), .Z(n110) );
  GTECH_MUX2 U131 ( .A(n112), .B(N22), .S(q[5]), .Z(N23) );
  GTECH_AND2 U132 ( .A(n111), .B(q[4]), .Z(n112) );
  GTECH_NOT U133 ( .A(n109), .Z(N22) );
  GTECH_NAND2 U134 ( .A(n111), .B(n113), .Z(n109) );
  GTECH_NOT U135 ( .A(n105), .Z(n111) );
  GTECH_NAND3 U136 ( .A(n101), .B(n82), .C(ena[1]), .Z(n105) );
  GTECH_NOT U137 ( .A(n114), .Z(ena[1]) );
  GTECH_OR5 U138 ( .A(q[6]), .B(q[5]), .C(n114), .D(n113), .E(n115), .Z(n101)
         );
  GTECH_NOT U139 ( .A(q[7]), .Z(n115) );
  GTECH_NOT U140 ( .A(q[4]), .Z(n113) );
  GTECH_MUX2 U141 ( .A(n116), .B(n117), .S(q[3]), .Z(N13) );
  GTECH_OAI21 U142 ( .A(q[2]), .B(n118), .C(n119), .Z(n117) );
  GTECH_NOT U143 ( .A(n120), .Z(n119) );
  GTECH_AND2 U144 ( .A(q[2]), .B(n121), .Z(n116) );
  GTECH_MUX2 U145 ( .A(n121), .B(n120), .S(q[2]), .Z(N12) );
  GTECH_OAI21 U146 ( .A(q[1]), .B(n118), .C(n122), .Z(n120) );
  GTECH_NOT U147 ( .A(n123), .Z(n121) );
  GTECH_NAND3 U148 ( .A(n124), .B(q[0]), .C(q[1]), .Z(n123) );
  GTECH_MUX2 U149 ( .A(n125), .B(N10), .S(q[1]), .Z(N11) );
  GTECH_AND2 U150 ( .A(n124), .B(q[0]), .Z(n125) );
  GTECH_NOT U151 ( .A(n122), .Z(N10) );
  GTECH_NAND2 U152 ( .A(n124), .B(n126), .Z(n122) );
  GTECH_NOT U153 ( .A(q[0]), .Z(n126) );
  GTECH_NOT U154 ( .A(n118), .Z(n124) );
  GTECH_NAND2 U155 ( .A(n114), .B(n82), .Z(n118) );
  GTECH_NOT U156 ( .A(reset), .Z(n82) );
  GTECH_NAND4 U157 ( .A(q[3]), .B(q[0]), .C(n127), .D(n128), .Z(n114) );
  GTECH_NOT U158 ( .A(q[2]), .Z(n128) );
  GTECH_NOT U159 ( .A(q[1]), .Z(n127) );
endmodule

