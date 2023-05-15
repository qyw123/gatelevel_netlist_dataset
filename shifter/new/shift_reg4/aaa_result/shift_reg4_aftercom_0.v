
module shift_reg4 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [1:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   N5, N6, N7, N8, N9, N10, N11, N12, N33, n3, n4, n5, n6, n7, n8, n36,
         n29, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60;

  GTECH_FJK2S shift_reg_reg_0_ ( .J(n29), .K(n29), .TI(N5), .TE(N33), .CP(clk), 
        .CD(n36), .Q(data_out[0]) );
  GTECH_FJK2S shift_reg_reg_1_ ( .J(n29), .K(n29), .TI(N6), .TE(N33), .CP(clk), 
        .CD(n36), .Q(data_out[1]), .QN(n3) );
  GTECH_FJK2S shift_reg_reg_2_ ( .J(n29), .K(n29), .TI(N7), .TE(N33), .CP(clk), 
        .CD(n36), .Q(data_out[2]), .QN(n4) );
  GTECH_FJK2S shift_reg_reg_3_ ( .J(n29), .K(n29), .TI(N8), .TE(N33), .CP(clk), 
        .CD(n36), .Q(data_out[3]), .QN(n5) );
  GTECH_FJK2S shift_reg_reg_4_ ( .J(n29), .K(n29), .TI(N9), .TE(N33), .CP(clk), 
        .CD(n36), .Q(data_out[4]), .QN(n6) );
  GTECH_FJK2S shift_reg_reg_5_ ( .J(n29), .K(n29), .TI(N10), .TE(N33), .CP(clk), .CD(n36), .Q(data_out[5]), .QN(n7) );
  GTECH_FJK2S shift_reg_reg_6_ ( .J(n29), .K(n29), .TI(N11), .TE(N33), .CP(clk), .CD(n36), .Q(data_out[6]), .QN(n8) );
  GTECH_FJK2S shift_reg_reg_7_ ( .J(n29), .K(n29), .TI(N12), .TE(enable), .CP(
        clk), .CD(n36), .Q(data_out[7]) );
  GTECH_ZERO U39 ( .Z(n29) );
  GTECH_NOT U40 ( .A(reset), .Z(n36) );
  GTECH_NOT U41 ( .A(n38), .Z(N9) );
  GTECH_AOI222 U42 ( .A(n39), .B(n40), .C(data_in[4]), .D(n41), .E(n42), .F(
        n43), .Z(n38) );
  GTECH_NOT U43 ( .A(n44), .Z(N8) );
  GTECH_AOI222 U44 ( .A(n39), .B(n45), .C(data_in[3]), .D(n41), .E(n42), .F(
        n46), .Z(n44) );
  GTECH_NOT U45 ( .A(n47), .Z(N7) );
  GTECH_AOI222 U46 ( .A(n39), .B(n48), .C(data_in[2]), .D(n41), .E(n42), .F(
        n40), .Z(n47) );
  GTECH_NOT U47 ( .A(n5), .Z(n40) );
  GTECH_NOT U48 ( .A(n3), .Z(n48) );
  GTECH_NOT U49 ( .A(n49), .Z(N6) );
  GTECH_AOI222 U50 ( .A(n39), .B(data_out[0]), .C(data_in[1]), .D(n41), .E(n42), .F(n45), .Z(n49) );
  GTECH_NOT U51 ( .A(n4), .Z(n45) );
  GTECH_OAI22 U52 ( .A(n3), .B(n50), .C(n51), .D(n52), .Z(N5) );
  GTECH_NOT U53 ( .A(data_in[0]), .Z(n52) );
  GTECH_OA21 U54 ( .A(shift_direction[1]), .B(n53), .C(enable), .Z(N33) );
  GTECH_NOT U55 ( .A(n54), .Z(N12) );
  GTECH_AOI222 U56 ( .A(n39), .B(n55), .C(n56), .D(data_in[0]), .E(data_in[7]), 
        .F(n41), .Z(n54) );
  GTECH_AND2 U57 ( .A(shift_direction[0]), .B(n57), .Z(n56) );
  GTECH_NOT U58 ( .A(n58), .Z(N11) );
  GTECH_AOI222 U59 ( .A(n39), .B(n43), .C(data_in[6]), .D(n41), .E(n42), .F(
        data_out[7]), .Z(n58) );
  GTECH_NOT U60 ( .A(n7), .Z(n43) );
  GTECH_NOT U61 ( .A(n59), .Z(N10) );
  GTECH_AOI222 U62 ( .A(n39), .B(n46), .C(data_in[5]), .D(n41), .E(n42), .F(
        n55), .Z(n59) );
  GTECH_NOT U63 ( .A(n8), .Z(n55) );
  GTECH_NOT U64 ( .A(n50), .Z(n42) );
  GTECH_NAND2 U65 ( .A(shift_direction[1]), .B(n53), .Z(n50) );
  GTECH_NOT U66 ( .A(n51), .Z(n41) );
  GTECH_NAND2 U67 ( .A(shift_direction[1]), .B(shift_direction[0]), .Z(n51) );
  GTECH_NOT U68 ( .A(n6), .Z(n46) );
  GTECH_NOT U69 ( .A(n60), .Z(n39) );
  GTECH_NAND2 U70 ( .A(n53), .B(n57), .Z(n60) );
  GTECH_NOT U71 ( .A(shift_direction[1]), .Z(n57) );
  GTECH_NOT U72 ( .A(shift_direction[0]), .Z(n53) );
endmodule

