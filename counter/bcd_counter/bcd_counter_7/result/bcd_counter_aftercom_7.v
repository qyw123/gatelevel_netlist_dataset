
module bcd_counter ( clk, reset, ena, q );
  output [3:1] ena;
  output [15:0] q;
  input clk, reset;
  wire   N10, N11, N12, N13, N22, N23, N24, N25, N26, N38, N39, N40, N41, N42,
         N54, N55, N56, N57, N58, n47, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124;

  GTECH_FD1 ones_reg_0_ ( .D(N10), .CP(clk), .Q(q[0]) );
  GTECH_FD1 ones_reg_2_ ( .D(N12), .CP(clk), .Q(q[2]) );
  GTECH_FD1 ones_reg_1_ ( .D(N11), .CP(clk), .Q(q[1]) );
  GTECH_FD1 ones_reg_3_ ( .D(N13), .CP(clk), .Q(q[3]) );
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
  GTECH_ZERO U78 ( .Z(n47) );
  GTECH_MUX2 U79 ( .A(n71), .B(n72), .S(q[15]), .Z(N58) );
  GTECH_OAI21 U80 ( .A(q[14]), .B(n73), .C(n74), .Z(n72) );
  GTECH_NOT U81 ( .A(n75), .Z(n74) );
  GTECH_AND2 U82 ( .A(q[14]), .B(n76), .Z(n71) );
  GTECH_NAND3 U83 ( .A(n77), .B(n78), .C(n73), .Z(N57) );
  GTECH_MUX2 U84 ( .A(n76), .B(n75), .S(q[14]), .Z(N56) );
  GTECH_OAI21 U85 ( .A(q[13]), .B(n73), .C(n79), .Z(n75) );
  GTECH_NOT U86 ( .A(n80), .Z(n76) );
  GTECH_NAND3 U87 ( .A(n81), .B(q[12]), .C(q[13]), .Z(n80) );
  GTECH_MUX2 U88 ( .A(n82), .B(N54), .S(q[13]), .Z(N55) );
  GTECH_AND2 U89 ( .A(n81), .B(q[12]), .Z(n82) );
  GTECH_NOT U90 ( .A(n79), .Z(N54) );
  GTECH_NAND2 U91 ( .A(n81), .B(n83), .Z(n79) );
  GTECH_NOT U92 ( .A(n73), .Z(n81) );
  GTECH_NAND3 U93 ( .A(n77), .B(n78), .C(ena[3]), .Z(n73) );
  GTECH_NOT U94 ( .A(n84), .Z(ena[3]) );
  GTECH_OR5 U95 ( .A(q[14]), .B(q[13]), .C(n84), .D(n83), .E(n85), .Z(n77) );
  GTECH_NOT U96 ( .A(q[15]), .Z(n85) );
  GTECH_NOT U97 ( .A(q[12]), .Z(n83) );
  GTECH_MUX2 U98 ( .A(n86), .B(n87), .S(q[11]), .Z(N42) );
  GTECH_OAI21 U99 ( .A(q[10]), .B(n88), .C(n89), .Z(n87) );
  GTECH_NOT U100 ( .A(n90), .Z(n89) );
  GTECH_AND2 U101 ( .A(q[10]), .B(n91), .Z(n86) );
  GTECH_NAND3 U102 ( .A(n84), .B(n78), .C(n88), .Z(N41) );
  GTECH_MUX2 U103 ( .A(n91), .B(n90), .S(q[10]), .Z(N40) );
  GTECH_OAI21 U104 ( .A(q[9]), .B(n88), .C(n92), .Z(n90) );
  GTECH_NOT U105 ( .A(n93), .Z(n91) );
  GTECH_NAND3 U106 ( .A(n94), .B(q[8]), .C(q[9]), .Z(n93) );
  GTECH_MUX2 U107 ( .A(n95), .B(N38), .S(q[9]), .Z(N39) );
  GTECH_AND2 U108 ( .A(n94), .B(q[8]), .Z(n95) );
  GTECH_NOT U109 ( .A(n92), .Z(N38) );
  GTECH_NAND2 U110 ( .A(n94), .B(n96), .Z(n92) );
  GTECH_NOT U111 ( .A(n88), .Z(n94) );
  GTECH_NAND3 U112 ( .A(n84), .B(n78), .C(ena[2]), .Z(n88) );
  GTECH_NOT U113 ( .A(n97), .Z(ena[2]) );
  GTECH_OR5 U114 ( .A(q[9]), .B(q[10]), .C(n97), .D(n98), .E(n96), .Z(n84) );
  GTECH_NOT U115 ( .A(q[8]), .Z(n96) );
  GTECH_NOT U116 ( .A(q[11]), .Z(n98) );
  GTECH_MUX2 U117 ( .A(n99), .B(n100), .S(q[7]), .Z(N26) );
  GTECH_OAI21 U118 ( .A(q[6]), .B(n101), .C(n102), .Z(n100) );
  GTECH_NOT U119 ( .A(n103), .Z(n102) );
  GTECH_AND2 U120 ( .A(q[6]), .B(n104), .Z(n99) );
  GTECH_NAND3 U121 ( .A(n97), .B(n78), .C(n101), .Z(N25) );
  GTECH_MUX2 U122 ( .A(n104), .B(n103), .S(q[6]), .Z(N24) );
  GTECH_OAI21 U123 ( .A(q[5]), .B(n101), .C(n105), .Z(n103) );
  GTECH_NOT U124 ( .A(n106), .Z(n104) );
  GTECH_NAND3 U125 ( .A(n107), .B(q[4]), .C(q[5]), .Z(n106) );
  GTECH_MUX2 U126 ( .A(n108), .B(N22), .S(q[5]), .Z(N23) );
  GTECH_AND2 U127 ( .A(n107), .B(q[4]), .Z(n108) );
  GTECH_NOT U128 ( .A(n105), .Z(N22) );
  GTECH_NAND2 U129 ( .A(n107), .B(n109), .Z(n105) );
  GTECH_NOT U130 ( .A(n101), .Z(n107) );
  GTECH_NAND3 U131 ( .A(n97), .B(n78), .C(ena[1]), .Z(n101) );
  GTECH_NOT U132 ( .A(n110), .Z(ena[1]) );
  GTECH_OR5 U133 ( .A(q[6]), .B(q[5]), .C(n110), .D(n109), .E(n111), .Z(n97)
         );
  GTECH_NOT U134 ( .A(q[7]), .Z(n111) );
  GTECH_NOT U135 ( .A(q[4]), .Z(n109) );
  GTECH_MUX2 U136 ( .A(n112), .B(n113), .S(q[3]), .Z(N13) );
  GTECH_OAI21 U137 ( .A(q[2]), .B(n114), .C(n115), .Z(n113) );
  GTECH_NOT U138 ( .A(n116), .Z(n115) );
  GTECH_AND2 U139 ( .A(q[2]), .B(n117), .Z(n112) );
  GTECH_MUX2 U140 ( .A(n117), .B(n116), .S(q[2]), .Z(N12) );
  GTECH_OAI21 U141 ( .A(q[1]), .B(n114), .C(n118), .Z(n116) );
  GTECH_NOT U142 ( .A(n119), .Z(n117) );
  GTECH_NAND3 U143 ( .A(n120), .B(q[0]), .C(q[1]), .Z(n119) );
  GTECH_MUX2 U144 ( .A(n121), .B(N10), .S(q[1]), .Z(N11) );
  GTECH_AND2 U145 ( .A(n120), .B(q[0]), .Z(n121) );
  GTECH_NOT U146 ( .A(n118), .Z(N10) );
  GTECH_NAND2 U147 ( .A(n120), .B(n122), .Z(n118) );
  GTECH_NOT U148 ( .A(q[0]), .Z(n122) );
  GTECH_NOT U149 ( .A(n114), .Z(n120) );
  GTECH_NAND2 U150 ( .A(n110), .B(n78), .Z(n114) );
  GTECH_NOT U151 ( .A(reset), .Z(n78) );
  GTECH_NAND4 U152 ( .A(q[3]), .B(q[0]), .C(n123), .D(n124), .Z(n110) );
  GTECH_NOT U153 ( .A(q[2]), .Z(n124) );
  GTECH_NOT U154 ( .A(q[1]), .Z(n123) );
endmodule

