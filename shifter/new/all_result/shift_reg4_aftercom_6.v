
module shift_reg4 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [1:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   N5, N6, N7, N8, N9, N10, N11, N12, N33, n3, n4, n5, n6, n7, n8, n37,
         n30, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62;

  GTECH_FJK2S shift_reg_reg_0_ ( .J(n30), .K(n30), .TI(N5), .TE(N33), .CP(clk), 
        .CD(n37), .Q(data_out[0]) );
  GTECH_FJK2S shift_reg_reg_1_ ( .J(n30), .K(n30), .TI(N6), .TE(N33), .CP(clk), 
        .CD(n37), .Q(data_out[1]), .QN(n3) );
  GTECH_FJK2S shift_reg_reg_2_ ( .J(n30), .K(n30), .TI(N7), .TE(N33), .CP(clk), 
        .CD(n37), .Q(data_out[2]), .QN(n4) );
  GTECH_FJK2S shift_reg_reg_3_ ( .J(n30), .K(n30), .TI(N8), .TE(N33), .CP(clk), 
        .CD(n37), .Q(data_out[3]), .QN(n5) );
  GTECH_FJK2S shift_reg_reg_4_ ( .J(n30), .K(n30), .TI(N9), .TE(N33), .CP(clk), 
        .CD(n37), .Q(data_out[4]), .QN(n6) );
  GTECH_FJK2S shift_reg_reg_5_ ( .J(n30), .K(n30), .TI(N10), .TE(N33), .CP(clk), .CD(n37), .Q(data_out[5]), .QN(n7) );
  GTECH_FJK2S shift_reg_reg_6_ ( .J(n30), .K(n30), .TI(N11), .TE(N33), .CP(clk), .CD(n37), .Q(data_out[6]), .QN(n8) );
  GTECH_FJK2S shift_reg_reg_7_ ( .J(n30), .K(n30), .TI(N12), .TE(enable), .CP(
        clk), .CD(n37), .Q(data_out[7]) );
  GTECH_ZERO U40 ( .Z(n30) );
  GTECH_NOT U41 ( .A(reset), .Z(n37) );
  GTECH_NOT U42 ( .A(n39), .Z(N9) );
  GTECH_AOI222 U43 ( .A(n40), .B(n41), .C(data_in[4]), .D(n42), .E(n43), .F(
        n44), .Z(n39) );
  GTECH_NOT U44 ( .A(n45), .Z(N8) );
  GTECH_AOI222 U45 ( .A(n40), .B(n46), .C(data_in[3]), .D(n42), .E(n43), .F(
        n47), .Z(n45) );
  GTECH_NOT U46 ( .A(n48), .Z(N7) );
  GTECH_AOI222 U47 ( .A(n40), .B(n49), .C(data_in[2]), .D(n42), .E(n43), .F(
        n41), .Z(n48) );
  GTECH_NOT U48 ( .A(n5), .Z(n41) );
  GTECH_NOT U49 ( .A(n3), .Z(n49) );
  GTECH_NOT U50 ( .A(n50), .Z(N6) );
  GTECH_AOI222 U51 ( .A(n40), .B(data_out[0]), .C(data_in[1]), .D(n42), .E(n43), .F(n46), .Z(n50) );
  GTECH_NOT U52 ( .A(n4), .Z(n46) );
  GTECH_OAI22 U53 ( .A(n3), .B(n51), .C(n52), .D(n53), .Z(N5) );
  GTECH_NOT U54 ( .A(data_in[0]), .Z(n53) );
  GTECH_NOT U55 ( .A(n54), .Z(N33) );
  GTECH_OAI21 U56 ( .A(shift_direction[1]), .B(n55), .C(enable), .Z(n54) );
  GTECH_NOT U57 ( .A(n56), .Z(N12) );
  GTECH_AOI222 U58 ( .A(n40), .B(n57), .C(n58), .D(data_in[0]), .E(data_in[7]), 
        .F(n42), .Z(n56) );
  GTECH_AND2 U59 ( .A(shift_direction[0]), .B(n59), .Z(n58) );
  GTECH_NOT U60 ( .A(n60), .Z(N11) );
  GTECH_AOI222 U61 ( .A(n40), .B(n44), .C(data_in[6]), .D(n42), .E(n43), .F(
        data_out[7]), .Z(n60) );
  GTECH_NOT U62 ( .A(n7), .Z(n44) );
  GTECH_NOT U63 ( .A(n61), .Z(N10) );
  GTECH_AOI222 U64 ( .A(n40), .B(n47), .C(data_in[5]), .D(n42), .E(n43), .F(
        n57), .Z(n61) );
  GTECH_NOT U65 ( .A(n8), .Z(n57) );
  GTECH_NOT U66 ( .A(n51), .Z(n43) );
  GTECH_NAND2 U67 ( .A(shift_direction[1]), .B(n55), .Z(n51) );
  GTECH_NOT U68 ( .A(n52), .Z(n42) );
  GTECH_NAND2 U69 ( .A(shift_direction[1]), .B(shift_direction[0]), .Z(n52) );
  GTECH_NOT U70 ( .A(n6), .Z(n47) );
  GTECH_NOT U71 ( .A(n62), .Z(n40) );
  GTECH_NAND2 U72 ( .A(n55), .B(n59), .Z(n62) );
  GTECH_NOT U73 ( .A(shift_direction[1]), .Z(n59) );
  GTECH_NOT U74 ( .A(shift_direction[0]), .Z(n55) );
endmodule

