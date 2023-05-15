
module bcd_counter ( clk, reset, ena, q );
  output [3:1] ena;
  output [15:0] q;
  input clk, reset;
  wire   N10, N11, N12, N13, N22, N23, N24, N25, N26, N38, N39, N40, N41, N42,
         N54, N55, N56, N57, N58, n46, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122;

  GTECH_FD1 ones_reg_0_ ( .D(N10), .CP(clk), .Q(q[0]) );
  GTECH_FD1 ones_reg_2_ ( .D(N12), .CP(clk), .Q(q[2]) );
  GTECH_FD1 ones_reg_3_ ( .D(N13), .CP(clk), .Q(q[3]) );
  GTECH_FD1 ones_reg_1_ ( .D(N11), .CP(clk), .Q(q[1]) );
  GTECH_FJK1S tens_reg_0_ ( .J(n46), .K(n46), .TI(N22), .TE(N25), .CP(clk), 
        .Q(q[4]) );
  GTECH_FJK1S tens_reg_2_ ( .J(n46), .K(n46), .TI(N24), .TE(N25), .CP(clk), 
        .Q(q[6]) );
  GTECH_FJK1S tens_reg_3_ ( .J(n46), .K(n46), .TI(N26), .TE(N25), .CP(clk), 
        .Q(q[7]) );
  GTECH_FJK1S tens_reg_1_ ( .J(n46), .K(n46), .TI(N23), .TE(N25), .CP(clk), 
        .Q(q[5]) );
  GTECH_FJK1S hundreds_reg_0_ ( .J(n46), .K(n46), .TI(N38), .TE(N41), .CP(clk), 
        .Q(q[8]) );
  GTECH_FJK1S hundreds_reg_2_ ( .J(n46), .K(n46), .TI(N40), .TE(N41), .CP(clk), 
        .Q(q[10]) );
  GTECH_FJK1S hundreds_reg_3_ ( .J(n46), .K(n46), .TI(N42), .TE(N41), .CP(clk), 
        .Q(q[11]) );
  GTECH_FJK1S hundreds_reg_1_ ( .J(n46), .K(n46), .TI(N39), .TE(N41), .CP(clk), 
        .Q(q[9]) );
  GTECH_FJK1S thousands_reg_0_ ( .J(n46), .K(n46), .TI(N54), .TE(N57), .CP(clk), .Q(q[12]) );
  GTECH_FJK1S thousands_reg_2_ ( .J(n46), .K(n46), .TI(N56), .TE(N57), .CP(clk), .Q(q[14]) );
  GTECH_FJK1S thousands_reg_3_ ( .J(n46), .K(n46), .TI(N58), .TE(N57), .CP(clk), .Q(q[15]) );
  GTECH_FJK1S thousands_reg_1_ ( .J(n46), .K(n46), .TI(N55), .TE(N57), .CP(clk), .Q(q[13]) );
  GTECH_ZERO U77 ( .Z(n46) );
  GTECH_OAI2N2 U78 ( .A(n70), .B(n71), .C(n72), .D(q[14]), .Z(N58) );
  GTECH_AND_NOT U79 ( .A(n71), .B(n73), .Z(n72) );
  GTECH_NOT U80 ( .A(q[15]), .Z(n71) );
  GTECH_OA21 U81 ( .A(n74), .B(q[14]), .C(n75), .Z(n70) );
  GTECH_OAI22 U82 ( .A(n75), .B(n76), .C(q[14]), .D(n73), .Z(N56) );
  GTECH_NAND3 U83 ( .A(n77), .B(q[12]), .C(q[13]), .Z(n73) );
  GTECH_NOT U84 ( .A(n78), .Z(n75) );
  GTECH_OAI21 U85 ( .A(q[13]), .B(n74), .C(n79), .Z(n78) );
  GTECH_OAI21 U86 ( .A(n80), .B(n79), .C(n81), .Z(N55) );
  GTECH_NAND3 U87 ( .A(n77), .B(q[12]), .C(n80), .Z(n81) );
  GTECH_NOT U88 ( .A(n79), .Z(N54) );
  GTECH_OR_NOT U89 ( .A(q[12]), .B(n77), .Z(n79) );
  GTECH_NOT U90 ( .A(n74), .Z(n77) );
  GTECH_NAND3 U91 ( .A(n82), .B(n83), .C(ena[3]), .Z(n74) );
  GTECH_NAND4 U92 ( .A(q[15]), .B(q[12]), .C(n80), .D(n76), .Z(n82) );
  GTECH_NOT U93 ( .A(q[14]), .Z(n76) );
  GTECH_NOT U94 ( .A(q[13]), .Z(n80) );
  GTECH_OAI2N2 U95 ( .A(n84), .B(n85), .C(n86), .D(q[10]), .Z(N42) );
  GTECH_AND_NOT U96 ( .A(n85), .B(n87), .Z(n86) );
  GTECH_NOT U97 ( .A(q[11]), .Z(n85) );
  GTECH_OA21 U98 ( .A(n88), .B(q[10]), .C(n89), .Z(n84) );
  GTECH_OR_NOT U99 ( .A(N57), .B(n88), .Z(N41) );
  GTECH_OAI22 U100 ( .A(n89), .B(n90), .C(q[10]), .D(n87), .Z(N40) );
  GTECH_NAND3 U101 ( .A(n91), .B(q[8]), .C(q[9]), .Z(n87) );
  GTECH_NOT U102 ( .A(n92), .Z(n89) );
  GTECH_OAI21 U103 ( .A(q[9]), .B(n88), .C(n93), .Z(n92) );
  GTECH_OAI21 U104 ( .A(n94), .B(n93), .C(n95), .Z(N39) );
  GTECH_NAND3 U105 ( .A(n91), .B(q[8]), .C(n94), .Z(n95) );
  GTECH_NOT U106 ( .A(n93), .Z(N38) );
  GTECH_OR_NOT U107 ( .A(q[8]), .B(n91), .Z(n93) );
  GTECH_NOT U108 ( .A(n88), .Z(n91) );
  GTECH_OR_NOT U109 ( .A(N57), .B(ena[2]), .Z(n88) );
  GTECH_OR_NOT U110 ( .A(ena[3]), .B(n83), .Z(N57) );
  GTECH_NOT U111 ( .A(n96), .Z(ena[3]) );
  GTECH_NAND5 U112 ( .A(n90), .B(n94), .C(ena[2]), .D(q[8]), .E(q[11]), .Z(n96) );
  GTECH_NOT U113 ( .A(n97), .Z(ena[2]) );
  GTECH_NOT U114 ( .A(q[9]), .Z(n94) );
  GTECH_NOT U115 ( .A(q[10]), .Z(n90) );
  GTECH_OAI2N2 U116 ( .A(n98), .B(n99), .C(n100), .D(q[6]), .Z(N26) );
  GTECH_AND_NOT U117 ( .A(n99), .B(n101), .Z(n100) );
  GTECH_NOT U118 ( .A(q[7]), .Z(n99) );
  GTECH_OA21 U119 ( .A(n102), .B(q[6]), .C(n103), .Z(n98) );
  GTECH_NAND3 U120 ( .A(n97), .B(n83), .C(n102), .Z(N25) );
  GTECH_OAI22 U121 ( .A(n103), .B(n104), .C(q[6]), .D(n101), .Z(N24) );
  GTECH_NAND3 U122 ( .A(n105), .B(q[4]), .C(q[5]), .Z(n101) );
  GTECH_NOT U123 ( .A(n106), .Z(n103) );
  GTECH_OAI21 U124 ( .A(q[5]), .B(n102), .C(n107), .Z(n106) );
  GTECH_OAI21 U125 ( .A(n108), .B(n107), .C(n109), .Z(N23) );
  GTECH_NAND3 U126 ( .A(n105), .B(q[4]), .C(n108), .Z(n109) );
  GTECH_NOT U127 ( .A(n107), .Z(N22) );
  GTECH_OR_NOT U128 ( .A(q[4]), .B(n105), .Z(n107) );
  GTECH_NOT U129 ( .A(n102), .Z(n105) );
  GTECH_NAND3 U130 ( .A(n97), .B(n83), .C(ena[1]), .Z(n102) );
  GTECH_NOT U131 ( .A(reset), .Z(n83) );
  GTECH_NAND5 U132 ( .A(n108), .B(n104), .C(ena[1]), .D(q[7]), .E(q[4]), .Z(
        n97) );
  GTECH_NOT U133 ( .A(n110), .Z(ena[1]) );
  GTECH_NOT U134 ( .A(q[6]), .Z(n104) );
  GTECH_NOT U135 ( .A(q[5]), .Z(n108) );
  GTECH_OAI2N2 U136 ( .A(n111), .B(n112), .C(n113), .D(q[2]), .Z(N13) );
  GTECH_AND_NOT U137 ( .A(n112), .B(n114), .Z(n113) );
  GTECH_NOT U138 ( .A(q[3]), .Z(n112) );
  GTECH_OA21 U139 ( .A(n115), .B(q[2]), .C(n116), .Z(n111) );
  GTECH_OAI22 U140 ( .A(n116), .B(n117), .C(q[2]), .D(n114), .Z(N12) );
  GTECH_NAND3 U141 ( .A(n118), .B(q[0]), .C(q[1]), .Z(n114) );
  GTECH_NOT U142 ( .A(n119), .Z(n116) );
  GTECH_OAI21 U143 ( .A(q[1]), .B(n115), .C(n120), .Z(n119) );
  GTECH_OAI21 U144 ( .A(n121), .B(n120), .C(n122), .Z(N11) );
  GTECH_NAND3 U145 ( .A(n118), .B(q[0]), .C(n121), .Z(n122) );
  GTECH_NOT U146 ( .A(n120), .Z(N10) );
  GTECH_OR_NOT U147 ( .A(q[0]), .B(n118), .Z(n120) );
  GTECH_NOT U148 ( .A(n115), .Z(n118) );
  GTECH_OR_NOT U149 ( .A(reset), .B(n110), .Z(n115) );
  GTECH_NAND4 U150 ( .A(q[3]), .B(q[0]), .C(n121), .D(n117), .Z(n110) );
  GTECH_NOT U151 ( .A(q[2]), .Z(n117) );
  GTECH_NOT U152 ( .A(q[1]), .Z(n121) );
endmodule

