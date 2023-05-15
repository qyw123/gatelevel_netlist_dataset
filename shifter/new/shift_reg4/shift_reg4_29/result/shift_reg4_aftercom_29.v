
module shift_reg4 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [1:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   N5, N6, N7, N8, N9, N10, N11, N12, N33, n16, n19, n22, n25, n28, n31,
         n34, n35, n14, n15, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53;

  GTECH_FJK3S shift_reg_reg_0_ ( .J(n15), .K(n15), .TI(N5), .TE(N33), .CP(clk), 
        .CD(n35), .SD(n14), .Q(data_out[0]), .QN(n38) );
  GTECH_FJK3S shift_reg_reg_1_ ( .J(n15), .K(n15), .TI(N6), .TE(N33), .CP(clk), 
        .CD(n35), .SD(n14), .Q(data_out[1]), .QN(n34) );
  GTECH_FJK3S shift_reg_reg_2_ ( .J(n15), .K(n15), .TI(N7), .TE(N33), .CP(clk), 
        .CD(n35), .SD(n14), .Q(data_out[2]), .QN(n31) );
  GTECH_FJK3S shift_reg_reg_3_ ( .J(n15), .K(n15), .TI(N8), .TE(N33), .CP(clk), 
        .CD(n35), .SD(n14), .Q(data_out[3]), .QN(n28) );
  GTECH_FJK3S shift_reg_reg_4_ ( .J(n15), .K(n15), .TI(N9), .TE(N33), .CP(clk), 
        .CD(n35), .SD(n14), .Q(data_out[4]), .QN(n25) );
  GTECH_FJK3S shift_reg_reg_5_ ( .J(n15), .K(n15), .TI(N10), .TE(N33), .CP(clk), .CD(n35), .SD(n14), .Q(data_out[5]), .QN(n22) );
  GTECH_FJK3S shift_reg_reg_6_ ( .J(n15), .K(n15), .TI(N11), .TE(N33), .CP(clk), .CD(n35), .SD(n14), .Q(data_out[6]), .QN(n19) );
  GTECH_FJK3S shift_reg_reg_7_ ( .J(n15), .K(n15), .TI(N12), .TE(enable), .CP(
        clk), .CD(n35), .SD(n14), .Q(data_out[7]), .QN(n16) );
  GTECH_ZERO U40 ( .Z(n15) );
  GTECH_ONE U41 ( .Z(n14) );
  GTECH_NOT U42 ( .A(reset), .Z(n35) );
  GTECH_OAI21 U43 ( .A(n28), .B(n39), .C(n40), .Z(N9) );
  GTECH_AOI2N2 U44 ( .A(data_in[4]), .B(n41), .C(n22), .D(n42), .Z(n40) );
  GTECH_OAI21 U45 ( .A(n31), .B(n39), .C(n43), .Z(N8) );
  GTECH_AOI2N2 U46 ( .A(data_in[3]), .B(n41), .C(n25), .D(n42), .Z(n43) );
  GTECH_OAI21 U47 ( .A(n34), .B(n39), .C(n44), .Z(N7) );
  GTECH_AOI2N2 U48 ( .A(data_in[2]), .B(n41), .C(n28), .D(n42), .Z(n44) );
  GTECH_OAI21 U49 ( .A(n38), .B(n39), .C(n45), .Z(N6) );
  GTECH_AOI2N2 U50 ( .A(data_in[1]), .B(n41), .C(n31), .D(n42), .Z(n45) );
  GTECH_OAI22 U51 ( .A(n46), .B(n47), .C(n34), .D(n42), .Z(N5) );
  GTECH_OA21 U52 ( .A(shift_direction[1]), .B(n48), .C(enable), .Z(N33) );
  GTECH_OAI21 U53 ( .A(n19), .B(n39), .C(n49), .Z(N12) );
  GTECH_AOI2N2 U54 ( .A(data_in[7]), .B(n41), .C(n47), .D(n50), .Z(n49) );
  GTECH_NAND2 U55 ( .A(shift_direction[0]), .B(n51), .Z(n50) );
  GTECH_NOT U56 ( .A(data_in[0]), .Z(n47) );
  GTECH_OAI21 U57 ( .A(n22), .B(n39), .C(n52), .Z(N11) );
  GTECH_AOI2N2 U58 ( .A(data_in[6]), .B(n41), .C(n16), .D(n42), .Z(n52) );
  GTECH_OAI21 U59 ( .A(n25), .B(n39), .C(n53), .Z(N10) );
  GTECH_AOI2N2 U60 ( .A(data_in[5]), .B(n41), .C(n19), .D(n42), .Z(n53) );
  GTECH_NAND2 U61 ( .A(shift_direction[1]), .B(n48), .Z(n42) );
  GTECH_NOT U62 ( .A(n46), .Z(n41) );
  GTECH_NAND2 U63 ( .A(shift_direction[0]), .B(shift_direction[1]), .Z(n46) );
  GTECH_NAND2 U64 ( .A(n51), .B(n48), .Z(n39) );
  GTECH_NOT U65 ( .A(shift_direction[0]), .Z(n48) );
  GTECH_NOT U66 ( .A(shift_direction[1]), .Z(n51) );
endmodule

