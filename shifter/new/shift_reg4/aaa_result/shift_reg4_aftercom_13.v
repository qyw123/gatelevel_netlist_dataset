
module shift_reg4 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [1:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   N5, N6, N7, N8, N9, N10, N11, N12, N33, n2, n22, n15, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44;

  GTECH_FJK2S shift_reg_reg_0_ ( .J(n15), .K(n15), .TI(N5), .TE(N33), .CP(clk), 
        .CD(n22), .Q(data_out[0]), .QN(n27) );
  GTECH_FJK2S shift_reg_reg_1_ ( .J(n15), .K(n15), .TI(N6), .TE(N33), .CP(clk), 
        .CD(n22), .Q(data_out[1]), .QN(n26) );
  GTECH_FJK2S shift_reg_reg_2_ ( .J(n15), .K(n15), .TI(N7), .TE(N33), .CP(clk), 
        .CD(n22), .Q(data_out[2]), .QN(n25) );
  GTECH_FJK2S shift_reg_reg_3_ ( .J(n15), .K(n15), .TI(N8), .TE(N33), .CP(clk), 
        .CD(n22), .Q(data_out[3]), .QN(n24) );
  GTECH_FJK2S shift_reg_reg_4_ ( .J(n15), .K(n15), .TI(N9), .TE(N33), .CP(clk), 
        .CD(n22), .Q(data_out[4]), .QN(n30) );
  GTECH_FJK2S shift_reg_reg_5_ ( .J(n15), .K(n15), .TI(N10), .TE(N33), .CP(clk), .CD(n22), .Q(data_out[5]), .QN(n29) );
  GTECH_FJK2S shift_reg_reg_6_ ( .J(n15), .K(n15), .TI(N11), .TE(N33), .CP(clk), .CD(n22), .Q(data_out[6]), .QN(n28) );
  GTECH_FJK2S shift_reg_reg_7_ ( .J(n15), .K(n15), .TI(N12), .TE(enable), .CP(
        clk), .CD(n22), .Q(data_out[7]), .QN(n2) );
  GTECH_ZERO U32 ( .Z(n15) );
  GTECH_NOT U33 ( .A(reset), .Z(n22) );
  GTECH_OAI21 U34 ( .A(n24), .B(n31), .C(n32), .Z(N9) );
  GTECH_AOI2N2 U35 ( .A(data_in[4]), .B(n33), .C(n29), .D(n34), .Z(n32) );
  GTECH_OAI21 U36 ( .A(n25), .B(n31), .C(n35), .Z(N8) );
  GTECH_AOI2N2 U37 ( .A(data_in[3]), .B(n33), .C(n30), .D(n34), .Z(n35) );
  GTECH_OAI21 U38 ( .A(n26), .B(n31), .C(n36), .Z(N7) );
  GTECH_AOI2N2 U39 ( .A(data_in[2]), .B(n33), .C(n24), .D(n34), .Z(n36) );
  GTECH_OAI21 U40 ( .A(n27), .B(n31), .C(n37), .Z(N6) );
  GTECH_AOI2N2 U41 ( .A(data_in[1]), .B(n33), .C(n25), .D(n34), .Z(n37) );
  GTECH_OAI2N2 U42 ( .A(n26), .B(n34), .C(data_in[0]), .D(n33), .Z(N5) );
  GTECH_OA21 U43 ( .A(shift_direction[1]), .B(n38), .C(enable), .Z(N33) );
  GTECH_OAI21 U44 ( .A(n28), .B(n31), .C(n39), .Z(N12) );
  GTECH_AOI22 U45 ( .A(data_in[0]), .B(n40), .C(data_in[7]), .D(n33), .Z(n39)
         );
  GTECH_AND2 U46 ( .A(shift_direction[0]), .B(n41), .Z(n40) );
  GTECH_OAI21 U47 ( .A(n29), .B(n31), .C(n42), .Z(N11) );
  GTECH_AOI2N2 U48 ( .A(data_in[6]), .B(n33), .C(n2), .D(n34), .Z(n42) );
  GTECH_OAI21 U49 ( .A(n30), .B(n31), .C(n43), .Z(N10) );
  GTECH_AOI2N2 U50 ( .A(data_in[5]), .B(n33), .C(n28), .D(n34), .Z(n43) );
  GTECH_NAND2 U51 ( .A(shift_direction[1]), .B(n38), .Z(n34) );
  GTECH_NOT U52 ( .A(n44), .Z(n33) );
  GTECH_NAND2 U53 ( .A(shift_direction[0]), .B(shift_direction[1]), .Z(n44) );
  GTECH_NAND2 U54 ( .A(n41), .B(n38), .Z(n31) );
  GTECH_NOT U55 ( .A(shift_direction[0]), .Z(n38) );
  GTECH_NOT U56 ( .A(shift_direction[1]), .Z(n41) );
endmodule

