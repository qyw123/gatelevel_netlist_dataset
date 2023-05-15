
module bcd_counter ( clk, reset, ena, q );
  output [3:1] ena;
  output [15:0] q;
  input clk, reset;
  wire   N10, N11, N12, N13, N22, N23, N24, N25, N26, N38, N39, N40, N41, N42,
         N54, N55, N56, N57, N58, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127;

  GTECH_FD1 ones_reg_0_ ( .D(N10), .CP(clk), .Q(q[0]) );
  GTECH_FD1 ones_reg_2_ ( .D(N12), .CP(clk), .Q(q[2]) );
  GTECH_FD1 ones_reg_1_ ( .D(N11), .CP(clk), .Q(q[1]) );
  GTECH_FD1 ones_reg_3_ ( .D(N13), .CP(clk), .Q(q[3]) );
  GTECH_FJK1S tens_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N22), .TE(N25), .CP(clk), 
        .Q(q[4]) );
  GTECH_FJK1S tens_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N24), .TE(N25), .CP(clk), 
        .Q(q[6]) );
  GTECH_FJK1S tens_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N23), .TE(N25), .CP(clk), 
        .Q(q[5]) );
  GTECH_FJK1S tens_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N26), .TE(N25), .CP(clk), 
        .Q(q[7]) );
  GTECH_FJK1S hundreds_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N38), .TE(N41), .CP(
        clk), .Q(q[8]) );
  GTECH_FJK1S hundreds_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N40), .TE(N41), .CP(
        clk), .Q(q[10]) );
  GTECH_FJK1S hundreds_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N39), .TE(N41), .CP(
        clk), .Q(q[9]) );
  GTECH_FJK1S hundreds_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N42), .TE(N41), .CP(
        clk), .Q(q[11]) );
  GTECH_FJK1S thousands_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N54), .TE(N57), .CP(
        clk), .Q(q[12]) );
  GTECH_FJK1S thousands_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N56), .TE(N57), .CP(
        clk), .Q(q[14]) );
  GTECH_FJK1S thousands_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N55), .TE(N57), .CP(
        clk), .Q(q[13]) );
  GTECH_FJK1S thousands_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N58), .TE(N57), .CP(
        clk), .Q(q[15]) );
  GTECH_OAI2N2 U78 ( .A(n71), .B(n72), .C(n73), .D(q[14]), .Z(N58) );
  GTECH_AND_NOT U79 ( .A(n72), .B(n74), .Z(n73) );
  GTECH_NOT U80 ( .A(q[15]), .Z(n72) );
  GTECH_OA21 U81 ( .A(n75), .B(q[14]), .C(n76), .Z(n71) );
  GTECH_NAND3 U82 ( .A(n77), .B(n78), .C(n75), .Z(N57) );
  GTECH_OAI22 U83 ( .A(n76), .B(n79), .C(q[14]), .D(n74), .Z(N56) );
  GTECH_NAND3 U84 ( .A(n80), .B(q[12]), .C(q[13]), .Z(n74) );
  GTECH_NOT U85 ( .A(n81), .Z(n76) );
  GTECH_OAI21 U86 ( .A(q[13]), .B(n75), .C(n82), .Z(n81) );
  GTECH_OAI21 U87 ( .A(n83), .B(n82), .C(n84), .Z(N55) );
  GTECH_NAND3 U88 ( .A(n80), .B(q[12]), .C(n83), .Z(n84) );
  GTECH_NOT U89 ( .A(n82), .Z(N54) );
  GTECH_NAND2 U90 ( .A(n80), .B(n85), .Z(n82) );
  GTECH_NOT U91 ( .A(q[12]), .Z(n85) );
  GTECH_NOT U92 ( .A(n75), .Z(n80) );
  GTECH_NAND3 U93 ( .A(n77), .B(n78), .C(ena[3]), .Z(n75) );
  GTECH_NAND5 U94 ( .A(n83), .B(n79), .C(ena[3]), .D(q[15]), .E(q[12]), .Z(n77) );
  GTECH_NOT U95 ( .A(n86), .Z(ena[3]) );
  GTECH_NOT U96 ( .A(q[14]), .Z(n79) );
  GTECH_NOT U97 ( .A(q[13]), .Z(n83) );
  GTECH_OAI2N2 U98 ( .A(n87), .B(n88), .C(n89), .D(q[10]), .Z(N42) );
  GTECH_AND_NOT U99 ( .A(n88), .B(n90), .Z(n89) );
  GTECH_NOT U100 ( .A(q[11]), .Z(n88) );
  GTECH_OA21 U101 ( .A(n91), .B(q[10]), .C(n92), .Z(n87) );
  GTECH_NAND3 U102 ( .A(n91), .B(n78), .C(n86), .Z(N41) );
  GTECH_OAI22 U103 ( .A(n92), .B(n93), .C(q[10]), .D(n90), .Z(N40) );
  GTECH_NAND3 U104 ( .A(n94), .B(q[8]), .C(q[9]), .Z(n90) );
  GTECH_NOT U105 ( .A(n95), .Z(n92) );
  GTECH_OAI21 U106 ( .A(q[9]), .B(n91), .C(n96), .Z(n95) );
  GTECH_OAI21 U107 ( .A(n97), .B(n96), .C(n98), .Z(N39) );
  GTECH_NAND3 U108 ( .A(n94), .B(q[8]), .C(n97), .Z(n98) );
  GTECH_NOT U109 ( .A(n96), .Z(N38) );
  GTECH_NAND2 U110 ( .A(n94), .B(n99), .Z(n96) );
  GTECH_NOT U111 ( .A(q[8]), .Z(n99) );
  GTECH_NOT U112 ( .A(n91), .Z(n94) );
  GTECH_NAND3 U113 ( .A(n86), .B(n78), .C(ena[2]), .Z(n91) );
  GTECH_NAND5 U114 ( .A(n93), .B(n97), .C(ena[2]), .D(q[8]), .E(q[11]), .Z(n86) );
  GTECH_NOT U115 ( .A(n100), .Z(ena[2]) );
  GTECH_NOT U116 ( .A(q[9]), .Z(n97) );
  GTECH_NOT U117 ( .A(q[10]), .Z(n93) );
  GTECH_OAI2N2 U118 ( .A(n101), .B(n102), .C(n103), .D(q[6]), .Z(N26) );
  GTECH_AND_NOT U119 ( .A(n102), .B(n104), .Z(n103) );
  GTECH_NOT U120 ( .A(q[7]), .Z(n102) );
  GTECH_OA21 U121 ( .A(n105), .B(q[6]), .C(n106), .Z(n101) );
  GTECH_NAND3 U122 ( .A(n105), .B(n78), .C(n100), .Z(N25) );
  GTECH_OAI22 U123 ( .A(n106), .B(n107), .C(q[6]), .D(n104), .Z(N24) );
  GTECH_NAND3 U124 ( .A(n108), .B(q[4]), .C(q[5]), .Z(n104) );
  GTECH_NOT U125 ( .A(n109), .Z(n106) );
  GTECH_OAI21 U126 ( .A(q[5]), .B(n105), .C(n110), .Z(n109) );
  GTECH_OAI21 U127 ( .A(n111), .B(n110), .C(n112), .Z(N23) );
  GTECH_NAND3 U128 ( .A(n108), .B(q[4]), .C(n111), .Z(n112) );
  GTECH_NOT U129 ( .A(n110), .Z(N22) );
  GTECH_NAND2 U130 ( .A(n108), .B(n113), .Z(n110) );
  GTECH_NOT U131 ( .A(q[4]), .Z(n113) );
  GTECH_NOT U132 ( .A(n105), .Z(n108) );
  GTECH_NAND3 U133 ( .A(n100), .B(n78), .C(ena[1]), .Z(n105) );
  GTECH_NAND5 U134 ( .A(n111), .B(n107), .C(ena[1]), .D(q[7]), .E(q[4]), .Z(
        n100) );
  GTECH_NOT U135 ( .A(n114), .Z(ena[1]) );
  GTECH_NOT U136 ( .A(q[6]), .Z(n107) );
  GTECH_NOT U137 ( .A(q[5]), .Z(n111) );
  GTECH_OAI2N2 U138 ( .A(n115), .B(n116), .C(n117), .D(q[2]), .Z(N13) );
  GTECH_AND_NOT U139 ( .A(n116), .B(n118), .Z(n117) );
  GTECH_NOT U140 ( .A(q[3]), .Z(n116) );
  GTECH_OA21 U141 ( .A(n119), .B(q[2]), .C(n120), .Z(n115) );
  GTECH_OAI22 U142 ( .A(n120), .B(n121), .C(q[2]), .D(n118), .Z(N12) );
  GTECH_NAND3 U143 ( .A(n122), .B(q[0]), .C(q[1]), .Z(n118) );
  GTECH_NOT U144 ( .A(n123), .Z(n120) );
  GTECH_OAI21 U145 ( .A(q[1]), .B(n119), .C(n124), .Z(n123) );
  GTECH_OAI21 U146 ( .A(n125), .B(n124), .C(n126), .Z(N11) );
  GTECH_NAND3 U147 ( .A(n122), .B(q[0]), .C(n125), .Z(n126) );
  GTECH_NOT U148 ( .A(n124), .Z(N10) );
  GTECH_NAND2 U149 ( .A(n122), .B(n127), .Z(n124) );
  GTECH_NOT U150 ( .A(q[0]), .Z(n127) );
  GTECH_NOT U151 ( .A(n119), .Z(n122) );
  GTECH_NAND2 U152 ( .A(n114), .B(n78), .Z(n119) );
  GTECH_NOT U153 ( .A(reset), .Z(n78) );
  GTECH_NAND4 U154 ( .A(q[3]), .B(q[0]), .C(n125), .D(n121), .Z(n114) );
  GTECH_NOT U155 ( .A(q[2]), .Z(n121) );
  GTECH_NOT U156 ( .A(q[1]), .Z(n125) );
endmodule

