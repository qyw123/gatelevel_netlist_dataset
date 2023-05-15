
module shift_reg3 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [15:0] data_in;
  input [1:0] shift_direction;
  output [15:0] data_out;
  input clk, reset, enable;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20, N21,
         N22, N23, N68, n25, n28, n31, n34, n37, n40, n43, n46, n49, n52, n55,
         n58, n61, n64, n67, n68, n23, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94;

  GTECH_FJK3S shift_reg_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N8), .TE(N68), .CP(
        clk), .CD(n68), .SD(n23), .Q(data_out[0]), .QN(n71) );
  GTECH_FJK3S shift_reg_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N9), .TE(N68), .CP(
        clk), .CD(n68), .SD(n23), .Q(data_out[1]), .QN(n67) );
  GTECH_FJK3S shift_reg_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N10), .TE(N68), .CP(
        clk), .CD(n68), .SD(n23), .Q(data_out[2]), .QN(n64) );
  GTECH_FJK3S shift_reg_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N11), .TE(N68), .CP(
        clk), .CD(n68), .SD(n23), .Q(data_out[3]), .QN(n61) );
  GTECH_FJK3S shift_reg_reg_4_ ( .J(1'b0), .K(1'b0), .TI(N12), .TE(N68), .CP(
        clk), .CD(n68), .SD(n23), .Q(data_out[4]), .QN(n58) );
  GTECH_FJK3S shift_reg_reg_5_ ( .J(1'b0), .K(1'b0), .TI(N13), .TE(N68), .CP(
        clk), .CD(n68), .SD(n23), .Q(data_out[5]), .QN(n55) );
  GTECH_FJK3S shift_reg_reg_6_ ( .J(1'b0), .K(1'b0), .TI(N14), .TE(N68), .CP(
        clk), .CD(n68), .SD(n23), .Q(data_out[6]), .QN(n52) );
  GTECH_FJK3S shift_reg_reg_7_ ( .J(1'b0), .K(1'b0), .TI(N15), .TE(N68), .CP(
        clk), .CD(n68), .SD(n23), .Q(data_out[7]), .QN(n49) );
  GTECH_FJK3S shift_reg_reg_8_ ( .J(1'b0), .K(1'b0), .TI(N16), .TE(N68), .CP(
        clk), .CD(n68), .SD(n23), .Q(data_out[8]), .QN(n46) );
  GTECH_FJK3S shift_reg_reg_9_ ( .J(1'b0), .K(1'b0), .TI(N17), .TE(N68), .CP(
        clk), .CD(n68), .SD(n23), .Q(data_out[9]), .QN(n43) );
  GTECH_FJK3S shift_reg_reg_10_ ( .J(1'b0), .K(1'b0), .TI(N18), .TE(N68), .CP(
        clk), .CD(n68), .SD(n23), .Q(data_out[10]), .QN(n40) );
  GTECH_FJK3S shift_reg_reg_11_ ( .J(1'b0), .K(1'b0), .TI(N19), .TE(N68), .CP(
        clk), .CD(n68), .SD(n23), .Q(data_out[11]), .QN(n37) );
  GTECH_FJK3S shift_reg_reg_12_ ( .J(1'b0), .K(1'b0), .TI(N20), .TE(N68), .CP(
        clk), .CD(n68), .SD(n23), .Q(data_out[12]), .QN(n34) );
  GTECH_FJK3S shift_reg_reg_13_ ( .J(1'b0), .K(1'b0), .TI(N21), .TE(N68), .CP(
        clk), .CD(n68), .SD(n23), .Q(data_out[13]), .QN(n31) );
  GTECH_FJK3S shift_reg_reg_14_ ( .J(1'b0), .K(1'b0), .TI(N22), .TE(N68), .CP(
        clk), .CD(n68), .SD(n23), .Q(data_out[14]), .QN(n28) );
  GTECH_FJK3S shift_reg_reg_15_ ( .J(1'b0), .K(1'b0), .TI(N23), .TE(enable), 
        .CP(clk), .CD(n68), .SD(n23), .Q(data_out[15]), .QN(n25) );
  GTECH_ONE U73 ( .Z(n23) );
  GTECH_NOT U74 ( .A(reset), .Z(n68) );
  GTECH_OAI21 U75 ( .A(n71), .B(n72), .C(n73), .Z(N9) );
  GTECH_AOI2N2 U76 ( .A(data_in[1]), .B(n74), .C(n64), .D(n75), .Z(n73) );
  GTECH_OAI22 U77 ( .A(n76), .B(n77), .C(n67), .D(n75), .Z(N8) );
  GTECH_OA21 U78 ( .A(shift_direction[1]), .B(n78), .C(enable), .Z(N68) );
  GTECH_OAI21 U79 ( .A(n28), .B(n72), .C(n79), .Z(N23) );
  GTECH_AOI2N2 U80 ( .A(data_in[15]), .B(n74), .C(n77), .D(n80), .Z(n79) );
  GTECH_NAND2 U81 ( .A(shift_direction[0]), .B(n81), .Z(n80) );
  GTECH_NOT U82 ( .A(data_in[0]), .Z(n77) );
  GTECH_OAI21 U83 ( .A(n31), .B(n72), .C(n82), .Z(N22) );
  GTECH_AOI2N2 U84 ( .A(data_in[14]), .B(n74), .C(n25), .D(n75), .Z(n82) );
  GTECH_OAI21 U85 ( .A(n34), .B(n72), .C(n83), .Z(N21) );
  GTECH_AOI2N2 U86 ( .A(data_in[13]), .B(n74), .C(n28), .D(n75), .Z(n83) );
  GTECH_OAI21 U87 ( .A(n37), .B(n72), .C(n84), .Z(N20) );
  GTECH_AOI2N2 U88 ( .A(data_in[12]), .B(n74), .C(n31), .D(n75), .Z(n84) );
  GTECH_OAI21 U89 ( .A(n40), .B(n72), .C(n85), .Z(N19) );
  GTECH_AOI2N2 U90 ( .A(data_in[11]), .B(n74), .C(n34), .D(n75), .Z(n85) );
  GTECH_OAI21 U91 ( .A(n43), .B(n72), .C(n86), .Z(N18) );
  GTECH_AOI2N2 U92 ( .A(data_in[10]), .B(n74), .C(n37), .D(n75), .Z(n86) );
  GTECH_OAI21 U93 ( .A(n46), .B(n72), .C(n87), .Z(N17) );
  GTECH_AOI2N2 U94 ( .A(data_in[9]), .B(n74), .C(n40), .D(n75), .Z(n87) );
  GTECH_OAI21 U95 ( .A(n49), .B(n72), .C(n88), .Z(N16) );
  GTECH_AOI2N2 U96 ( .A(data_in[8]), .B(n74), .C(n43), .D(n75), .Z(n88) );
  GTECH_OAI21 U97 ( .A(n52), .B(n72), .C(n89), .Z(N15) );
  GTECH_AOI2N2 U98 ( .A(data_in[7]), .B(n74), .C(n46), .D(n75), .Z(n89) );
  GTECH_OAI21 U99 ( .A(n55), .B(n72), .C(n90), .Z(N14) );
  GTECH_AOI2N2 U100 ( .A(data_in[6]), .B(n74), .C(n49), .D(n75), .Z(n90) );
  GTECH_OAI21 U101 ( .A(n58), .B(n72), .C(n91), .Z(N13) );
  GTECH_AOI2N2 U102 ( .A(data_in[5]), .B(n74), .C(n52), .D(n75), .Z(n91) );
  GTECH_OAI21 U103 ( .A(n61), .B(n72), .C(n92), .Z(N12) );
  GTECH_AOI2N2 U104 ( .A(data_in[4]), .B(n74), .C(n55), .D(n75), .Z(n92) );
  GTECH_OAI21 U105 ( .A(n64), .B(n72), .C(n93), .Z(N11) );
  GTECH_AOI2N2 U106 ( .A(data_in[3]), .B(n74), .C(n58), .D(n75), .Z(n93) );
  GTECH_OAI21 U107 ( .A(n67), .B(n72), .C(n94), .Z(N10) );
  GTECH_AOI2N2 U108 ( .A(data_in[2]), .B(n74), .C(n61), .D(n75), .Z(n94) );
  GTECH_NAND2 U109 ( .A(shift_direction[1]), .B(n78), .Z(n75) );
  GTECH_NOT U110 ( .A(n76), .Z(n74) );
  GTECH_NAND2 U111 ( .A(shift_direction[0]), .B(shift_direction[1]), .Z(n76)
         );
  GTECH_NAND2 U112 ( .A(n81), .B(n78), .Z(n72) );
  GTECH_NOT U113 ( .A(shift_direction[0]), .Z(n78) );
  GTECH_NOT U114 ( .A(shift_direction[1]), .Z(n81) );
endmodule

