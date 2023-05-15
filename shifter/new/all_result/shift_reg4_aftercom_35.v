
module shift_reg4 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [1:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   N5, N6, N7, N8, N9, N10, N11, N12, N33, n3, n4, n5, n6, n7, n8, n35,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59;

  GTECH_FJK2S shift_reg_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N5), .TE(N33), .CP(
        clk), .CD(n35), .Q(data_out[0]) );
  GTECH_FJK2S shift_reg_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N6), .TE(N33), .CP(
        clk), .CD(n35), .Q(data_out[1]), .QN(n3) );
  GTECH_FJK2S shift_reg_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N7), .TE(N33), .CP(
        clk), .CD(n35), .Q(data_out[2]), .QN(n4) );
  GTECH_FJK2S shift_reg_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N8), .TE(N33), .CP(
        clk), .CD(n35), .Q(data_out[3]), .QN(n5) );
  GTECH_FJK2S shift_reg_reg_4_ ( .J(1'b0), .K(1'b0), .TI(N9), .TE(N33), .CP(
        clk), .CD(n35), .Q(data_out[4]), .QN(n6) );
  GTECH_FJK2S shift_reg_reg_5_ ( .J(1'b0), .K(1'b0), .TI(N10), .TE(N33), .CP(
        clk), .CD(n35), .Q(data_out[5]), .QN(n7) );
  GTECH_FJK2S shift_reg_reg_6_ ( .J(1'b0), .K(1'b0), .TI(N11), .TE(N33), .CP(
        clk), .CD(n35), .Q(data_out[6]), .QN(n8) );
  GTECH_FJK2S shift_reg_reg_7_ ( .J(1'b0), .K(1'b0), .TI(N12), .TE(enable), 
        .CP(clk), .CD(n35), .Q(data_out[7]) );
  GTECH_NOT U38 ( .A(reset), .Z(n35) );
  GTECH_NOT U39 ( .A(n37), .Z(N9) );
  GTECH_AOI222 U40 ( .A(n38), .B(n39), .C(data_in[4]), .D(n40), .E(n41), .F(
        n42), .Z(n37) );
  GTECH_NOT U41 ( .A(n43), .Z(N8) );
  GTECH_AOI222 U42 ( .A(n38), .B(n44), .C(data_in[3]), .D(n40), .E(n41), .F(
        n45), .Z(n43) );
  GTECH_NOT U43 ( .A(n46), .Z(N7) );
  GTECH_AOI222 U44 ( .A(n38), .B(n47), .C(data_in[2]), .D(n40), .E(n41), .F(
        n39), .Z(n46) );
  GTECH_NOT U45 ( .A(n5), .Z(n39) );
  GTECH_NOT U46 ( .A(n48), .Z(N6) );
  GTECH_AOI222 U47 ( .A(n38), .B(data_out[0]), .C(data_in[1]), .D(n40), .E(n41), .F(n44), .Z(n48) );
  GTECH_NOT U48 ( .A(n4), .Z(n44) );
  GTECH_OAI2N2 U49 ( .A(n49), .B(n50), .C(n41), .D(n47), .Z(N5) );
  GTECH_NOT U50 ( .A(n3), .Z(n47) );
  GTECH_NOT U51 ( .A(data_in[0]), .Z(n50) );
  GTECH_OA21 U52 ( .A(shift_direction[1]), .B(n51), .C(enable), .Z(N33) );
  GTECH_NOT U53 ( .A(n52), .Z(N12) );
  GTECH_AOI222 U54 ( .A(n38), .B(n53), .C(n54), .D(data_in[0]), .E(data_in[7]), 
        .F(n40), .Z(n52) );
  GTECH_AND_NOT U55 ( .A(shift_direction[0]), .B(shift_direction[1]), .Z(n54)
         );
  GTECH_NOT U56 ( .A(n55), .Z(N11) );
  GTECH_AOI222 U57 ( .A(n38), .B(n42), .C(data_in[6]), .D(n40), .E(n41), .F(
        data_out[7]), .Z(n55) );
  GTECH_NOT U58 ( .A(n7), .Z(n42) );
  GTECH_NOT U59 ( .A(n56), .Z(N10) );
  GTECH_AOI222 U60 ( .A(n38), .B(n45), .C(data_in[5]), .D(n40), .E(n41), .F(
        n53), .Z(n56) );
  GTECH_NOT U61 ( .A(n8), .Z(n53) );
  GTECH_NOT U62 ( .A(n57), .Z(n41) );
  GTECH_NAND2 U63 ( .A(shift_direction[1]), .B(n51), .Z(n57) );
  GTECH_NOT U64 ( .A(n49), .Z(n40) );
  GTECH_NAND2 U65 ( .A(shift_direction[1]), .B(shift_direction[0]), .Z(n49) );
  GTECH_NOT U66 ( .A(n6), .Z(n45) );
  GTECH_NOT U67 ( .A(n58), .Z(n38) );
  GTECH_NAND2 U68 ( .A(n51), .B(n59), .Z(n58) );
  GTECH_NOT U69 ( .A(shift_direction[1]), .Z(n59) );
  GTECH_NOT U70 ( .A(shift_direction[0]), .Z(n51) );
endmodule
