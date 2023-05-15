
module shift_reg3 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [15:0] data_in;
  input [1:0] shift_direction;
  output [15:0] data_out;
  input clk, reset, enable;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20, N21,
         N22, N23, N68, n25, n28, n31, n34, n37, n40, n43, n46, n49, n52, n55,
         n58, n61, n64, n67, n68, n23, n24, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94;

  GTECH_FJK3S shift_reg_reg_0_ ( .J(n24), .K(n24), .TI(N8), .TE(N68), .CP(clk), 
        .CD(n68), .SD(n23), .Q(data_out[0]), .QN(n71) );
  GTECH_FJK3S shift_reg_reg_1_ ( .J(n24), .K(n24), .TI(N9), .TE(N68), .CP(clk), 
        .CD(n68), .SD(n23), .Q(data_out[1]), .QN(n67) );
  GTECH_FJK3S shift_reg_reg_2_ ( .J(n24), .K(n24), .TI(N10), .TE(N68), .CP(clk), .CD(n68), .SD(n23), .Q(data_out[2]), .QN(n64) );
  GTECH_FJK3S shift_reg_reg_3_ ( .J(n24), .K(n24), .TI(N11), .TE(N68), .CP(clk), .CD(n68), .SD(n23), .Q(data_out[3]), .QN(n61) );
  GTECH_FJK3S shift_reg_reg_4_ ( .J(n24), .K(n24), .TI(N12), .TE(N68), .CP(clk), .CD(n68), .SD(n23), .Q(data_out[4]), .QN(n58) );
  GTECH_FJK3S shift_reg_reg_5_ ( .J(n24), .K(n24), .TI(N13), .TE(N68), .CP(clk), .CD(n68), .SD(n23), .Q(data_out[5]), .QN(n55) );
  GTECH_FJK3S shift_reg_reg_6_ ( .J(n24), .K(n24), .TI(N14), .TE(N68), .CP(clk), .CD(n68), .SD(n23), .Q(data_out[6]), .QN(n52) );
  GTECH_FJK3S shift_reg_reg_7_ ( .J(n24), .K(n24), .TI(N15), .TE(N68), .CP(clk), .CD(n68), .SD(n23), .Q(data_out[7]), .QN(n49) );
  GTECH_FJK3S shift_reg_reg_8_ ( .J(n24), .K(n24), .TI(N16), .TE(N68), .CP(clk), .CD(n68), .SD(n23), .Q(data_out[8]), .QN(n46) );
  GTECH_FJK3S shift_reg_reg_9_ ( .J(n24), .K(n24), .TI(N17), .TE(N68), .CP(clk), .CD(n68), .SD(n23), .Q(data_out[9]), .QN(n43) );
  GTECH_FJK3S shift_reg_reg_10_ ( .J(n24), .K(n24), .TI(N18), .TE(N68), .CP(
        clk), .CD(n68), .SD(n23), .Q(data_out[10]), .QN(n40) );
  GTECH_FJK3S shift_reg_reg_11_ ( .J(n24), .K(n24), .TI(N19), .TE(N68), .CP(
        clk), .CD(n68), .SD(n23), .Q(data_out[11]), .QN(n37) );
  GTECH_FJK3S shift_reg_reg_12_ ( .J(n24), .K(n24), .TI(N20), .TE(N68), .CP(
        clk), .CD(n68), .SD(n23), .Q(data_out[12]), .QN(n34) );
  GTECH_FJK3S shift_reg_reg_13_ ( .J(n24), .K(n24), .TI(N21), .TE(N68), .CP(
        clk), .CD(n68), .SD(n23), .Q(data_out[13]), .QN(n31) );
  GTECH_FJK3S shift_reg_reg_14_ ( .J(n24), .K(n24), .TI(N22), .TE(N68), .CP(
        clk), .CD(n68), .SD(n23), .Q(data_out[14]), .QN(n28) );
  GTECH_FJK3S shift_reg_reg_15_ ( .J(n24), .K(n24), .TI(N23), .TE(enable), 
        .CP(clk), .CD(n68), .SD(n23), .Q(data_out[15]), .QN(n25) );
  GTECH_ZERO U73 ( .Z(n24) );
  GTECH_ONE U74 ( .Z(n23) );
  GTECH_NOT U75 ( .A(reset), .Z(n68) );
  GTECH_OAI21 U76 ( .A(n71), .B(n72), .C(n73), .Z(N9) );
  GTECH_AOI2N2 U77 ( .A(data_in[1]), .B(n74), .C(n64), .D(n75), .Z(n73) );
  GTECH_OAI22 U78 ( .A(n76), .B(n77), .C(n67), .D(n75), .Z(N8) );
  GTECH_OA21 U79 ( .A(shift_direction[1]), .B(n78), .C(enable), .Z(N68) );
  GTECH_OAI21 U80 ( .A(n28), .B(n72), .C(n79), .Z(N23) );
  GTECH_AOI2N2 U81 ( .A(data_in[15]), .B(n74), .C(n77), .D(n80), .Z(n79) );
  GTECH_NAND2 U82 ( .A(shift_direction[0]), .B(n81), .Z(n80) );
  GTECH_NOT U83 ( .A(data_in[0]), .Z(n77) );
  GTECH_OAI21 U84 ( .A(n31), .B(n72), .C(n82), .Z(N22) );
  GTECH_AOI2N2 U85 ( .A(data_in[14]), .B(n74), .C(n25), .D(n75), .Z(n82) );
  GTECH_OAI21 U86 ( .A(n34), .B(n72), .C(n83), .Z(N21) );
  GTECH_AOI2N2 U87 ( .A(data_in[13]), .B(n74), .C(n28), .D(n75), .Z(n83) );
  GTECH_OAI21 U88 ( .A(n37), .B(n72), .C(n84), .Z(N20) );
  GTECH_AOI2N2 U89 ( .A(data_in[12]), .B(n74), .C(n31), .D(n75), .Z(n84) );
  GTECH_OAI21 U90 ( .A(n40), .B(n72), .C(n85), .Z(N19) );
  GTECH_AOI2N2 U91 ( .A(data_in[11]), .B(n74), .C(n34), .D(n75), .Z(n85) );
  GTECH_OAI21 U92 ( .A(n43), .B(n72), .C(n86), .Z(N18) );
  GTECH_AOI2N2 U93 ( .A(data_in[10]), .B(n74), .C(n37), .D(n75), .Z(n86) );
  GTECH_OAI21 U94 ( .A(n46), .B(n72), .C(n87), .Z(N17) );
  GTECH_AOI2N2 U95 ( .A(data_in[9]), .B(n74), .C(n40), .D(n75), .Z(n87) );
  GTECH_OAI21 U96 ( .A(n49), .B(n72), .C(n88), .Z(N16) );
  GTECH_AOI2N2 U97 ( .A(data_in[8]), .B(n74), .C(n43), .D(n75), .Z(n88) );
  GTECH_OAI21 U98 ( .A(n52), .B(n72), .C(n89), .Z(N15) );
  GTECH_AOI2N2 U99 ( .A(data_in[7]), .B(n74), .C(n46), .D(n75), .Z(n89) );
  GTECH_OAI21 U100 ( .A(n55), .B(n72), .C(n90), .Z(N14) );
  GTECH_AOI2N2 U101 ( .A(data_in[6]), .B(n74), .C(n49), .D(n75), .Z(n90) );
  GTECH_OAI21 U102 ( .A(n58), .B(n72), .C(n91), .Z(N13) );
  GTECH_AOI2N2 U103 ( .A(data_in[5]), .B(n74), .C(n52), .D(n75), .Z(n91) );
  GTECH_OAI21 U104 ( .A(n61), .B(n72), .C(n92), .Z(N12) );
  GTECH_AOI2N2 U105 ( .A(data_in[4]), .B(n74), .C(n55), .D(n75), .Z(n92) );
  GTECH_OAI21 U106 ( .A(n64), .B(n72), .C(n93), .Z(N11) );
  GTECH_AOI2N2 U107 ( .A(data_in[3]), .B(n74), .C(n58), .D(n75), .Z(n93) );
  GTECH_OAI21 U108 ( .A(n67), .B(n72), .C(n94), .Z(N10) );
  GTECH_AOI2N2 U109 ( .A(data_in[2]), .B(n74), .C(n61), .D(n75), .Z(n94) );
  GTECH_NAND2 U110 ( .A(shift_direction[1]), .B(n78), .Z(n75) );
  GTECH_NOT U111 ( .A(n76), .Z(n74) );
  GTECH_NAND2 U112 ( .A(shift_direction[0]), .B(shift_direction[1]), .Z(n76)
         );
  GTECH_NAND2 U113 ( .A(n81), .B(n78), .Z(n72) );
  GTECH_NOT U114 ( .A(shift_direction[0]), .Z(n78) );
  GTECH_NOT U115 ( .A(shift_direction[1]), .Z(n81) );
endmodule

