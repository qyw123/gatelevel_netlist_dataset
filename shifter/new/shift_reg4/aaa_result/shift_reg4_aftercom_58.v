
module shift_reg4 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [1:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   N5, N6, N7, N8, N9, N10, N11, N12, N33, n2, n3, n4, n5, n6, n7, n8,
         n9, n30, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47;

  GTECH_FJK2S shift_reg_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N5), .TE(N33), .CP(
        clk), .CD(n30), .Q(data_out[0]), .QN(n2) );
  GTECH_FJK2S shift_reg_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N6), .TE(N33), .CP(
        clk), .CD(n30), .Q(data_out[1]), .QN(n3) );
  GTECH_FJK2S shift_reg_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N7), .TE(N33), .CP(
        clk), .CD(n30), .Q(data_out[2]), .QN(n4) );
  GTECH_FJK2S shift_reg_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N8), .TE(N33), .CP(
        clk), .CD(n30), .Q(data_out[3]), .QN(n5) );
  GTECH_FJK2S shift_reg_reg_4_ ( .J(1'b0), .K(1'b0), .TI(N9), .TE(N33), .CP(
        clk), .CD(n30), .Q(data_out[4]), .QN(n6) );
  GTECH_FJK2S shift_reg_reg_5_ ( .J(1'b0), .K(1'b0), .TI(N10), .TE(N33), .CP(
        clk), .CD(n30), .Q(data_out[5]), .QN(n7) );
  GTECH_FJK2S shift_reg_reg_6_ ( .J(1'b0), .K(1'b0), .TI(N11), .TE(N33), .CP(
        clk), .CD(n30), .Q(data_out[6]), .QN(n8) );
  GTECH_FJK2S shift_reg_reg_7_ ( .J(1'b0), .K(1'b0), .TI(N12), .TE(enable), 
        .CP(clk), .CD(n30), .Q(data_out[7]), .QN(n9) );
  GTECH_NOT U33 ( .A(reset), .Z(n30) );
  GTECH_OAI21 U34 ( .A(n5), .B(n32), .C(n33), .Z(N9) );
  GTECH_AOI2N2 U35 ( .A(data_in[4]), .B(n34), .C(n7), .D(n35), .Z(n33) );
  GTECH_OAI21 U36 ( .A(n4), .B(n32), .C(n36), .Z(N8) );
  GTECH_AOI2N2 U37 ( .A(data_in[3]), .B(n34), .C(n6), .D(n35), .Z(n36) );
  GTECH_OAI21 U38 ( .A(n3), .B(n32), .C(n37), .Z(N7) );
  GTECH_AOI2N2 U39 ( .A(data_in[2]), .B(n34), .C(n5), .D(n35), .Z(n37) );
  GTECH_OAI21 U40 ( .A(n2), .B(n32), .C(n38), .Z(N6) );
  GTECH_AOI2N2 U41 ( .A(data_in[1]), .B(n34), .C(n4), .D(n35), .Z(n38) );
  GTECH_OAI22 U42 ( .A(n39), .B(n40), .C(n3), .D(n35), .Z(N5) );
  GTECH_NOT U43 ( .A(n41), .Z(N33) );
  GTECH_OAI21 U44 ( .A(shift_direction[1]), .B(n42), .C(enable), .Z(n41) );
  GTECH_OAI21 U45 ( .A(n8), .B(n32), .C(n43), .Z(N12) );
  GTECH_AOI2N2 U46 ( .A(data_in[7]), .B(n34), .C(n40), .D(n44), .Z(n43) );
  GTECH_NAND2 U47 ( .A(shift_direction[0]), .B(n45), .Z(n44) );
  GTECH_NOT U48 ( .A(data_in[0]), .Z(n40) );
  GTECH_OAI21 U49 ( .A(n7), .B(n32), .C(n46), .Z(N11) );
  GTECH_AOI2N2 U50 ( .A(data_in[6]), .B(n34), .C(n9), .D(n35), .Z(n46) );
  GTECH_OAI21 U51 ( .A(n6), .B(n32), .C(n47), .Z(N10) );
  GTECH_AOI2N2 U52 ( .A(data_in[5]), .B(n34), .C(n8), .D(n35), .Z(n47) );
  GTECH_NAND2 U53 ( .A(shift_direction[1]), .B(n42), .Z(n35) );
  GTECH_NOT U54 ( .A(n39), .Z(n34) );
  GTECH_NAND2 U55 ( .A(shift_direction[0]), .B(shift_direction[1]), .Z(n39) );
  GTECH_NAND2 U56 ( .A(n45), .B(n42), .Z(n32) );
  GTECH_NOT U57 ( .A(shift_direction[0]), .Z(n42) );
  GTECH_NOT U58 ( .A(shift_direction[1]), .Z(n45) );
endmodule

