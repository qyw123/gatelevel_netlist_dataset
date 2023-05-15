
module shift_reg4 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [1:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   N5, N6, N7, N8, N9, N10, N11, N12, N33, n27, n30, n33, n36, n39, n42,
         n43, n22, n23, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70;

  GTECH_FJK3S shift_reg_reg_0_ ( .J(n23), .K(n23), .TI(N5), .TE(N33), .CP(clk), 
        .CD(n43), .SD(n22), .Q(data_out[0]) );
  GTECH_FJK3S shift_reg_reg_1_ ( .J(n23), .K(n23), .TI(N6), .TE(N33), .CP(clk), 
        .CD(n43), .SD(n22), .Q(data_out[1]), .QN(n42) );
  GTECH_FJK3S shift_reg_reg_2_ ( .J(n23), .K(n23), .TI(N7), .TE(N33), .CP(clk), 
        .CD(n43), .SD(n22), .Q(data_out[2]), .QN(n39) );
  GTECH_FJK3S shift_reg_reg_3_ ( .J(n23), .K(n23), .TI(N8), .TE(N33), .CP(clk), 
        .CD(n43), .SD(n22), .Q(data_out[3]), .QN(n36) );
  GTECH_FJK3S shift_reg_reg_4_ ( .J(n23), .K(n23), .TI(N9), .TE(N33), .CP(clk), 
        .CD(n43), .SD(n22), .Q(data_out[4]), .QN(n33) );
  GTECH_FJK3S shift_reg_reg_5_ ( .J(n23), .K(n23), .TI(N10), .TE(N33), .CP(clk), .CD(n43), .SD(n22), .Q(data_out[5]), .QN(n30) );
  GTECH_FJK3S shift_reg_reg_6_ ( .J(n23), .K(n23), .TI(N11), .TE(N33), .CP(clk), .CD(n43), .SD(n22), .Q(data_out[6]), .QN(n27) );
  GTECH_FJK3S shift_reg_reg_7_ ( .J(n23), .K(n23), .TI(N12), .TE(enable), .CP(
        clk), .CD(n43), .SD(n22), .Q(data_out[7]) );
  GTECH_ZERO U48 ( .Z(n23) );
  GTECH_ONE U49 ( .Z(n22) );
  GTECH_NOT U50 ( .A(reset), .Z(n43) );
  GTECH_NOT U51 ( .A(n47), .Z(N9) );
  GTECH_AOI222 U52 ( .A(n48), .B(n49), .C(data_in[4]), .D(n50), .E(n51), .F(
        n52), .Z(n47) );
  GTECH_NOT U53 ( .A(n53), .Z(N8) );
  GTECH_AOI222 U54 ( .A(n48), .B(n54), .C(data_in[3]), .D(n50), .E(n51), .F(
        n55), .Z(n53) );
  GTECH_NOT U55 ( .A(n56), .Z(N7) );
  GTECH_AOI222 U56 ( .A(n48), .B(n57), .C(data_in[2]), .D(n50), .E(n51), .F(
        n49), .Z(n56) );
  GTECH_NOT U57 ( .A(n36), .Z(n49) );
  GTECH_NOT U58 ( .A(n42), .Z(n57) );
  GTECH_NOT U59 ( .A(n58), .Z(N6) );
  GTECH_AOI222 U60 ( .A(n48), .B(data_out[0]), .C(data_in[1]), .D(n50), .E(n51), .F(n54), .Z(n58) );
  GTECH_NOT U61 ( .A(n39), .Z(n54) );
  GTECH_OAI22 U62 ( .A(n42), .B(n59), .C(n60), .D(n61), .Z(N5) );
  GTECH_NOT U63 ( .A(data_in[0]), .Z(n61) );
  GTECH_NOT U64 ( .A(n62), .Z(N33) );
  GTECH_OAI21 U65 ( .A(shift_direction[1]), .B(n63), .C(enable), .Z(n62) );
  GTECH_NOT U66 ( .A(n64), .Z(N12) );
  GTECH_AOI222 U67 ( .A(n48), .B(n65), .C(n66), .D(data_in[0]), .E(data_in[7]), 
        .F(n50), .Z(n64) );
  GTECH_AND2 U68 ( .A(shift_direction[0]), .B(n67), .Z(n66) );
  GTECH_NOT U69 ( .A(n68), .Z(N11) );
  GTECH_AOI222 U70 ( .A(n48), .B(n52), .C(data_in[6]), .D(n50), .E(n51), .F(
        data_out[7]), .Z(n68) );
  GTECH_NOT U71 ( .A(n30), .Z(n52) );
  GTECH_NOT U72 ( .A(n69), .Z(N10) );
  GTECH_AOI222 U73 ( .A(n48), .B(n55), .C(data_in[5]), .D(n50), .E(n51), .F(
        n65), .Z(n69) );
  GTECH_NOT U74 ( .A(n27), .Z(n65) );
  GTECH_NOT U75 ( .A(n59), .Z(n51) );
  GTECH_NAND2 U76 ( .A(shift_direction[1]), .B(n63), .Z(n59) );
  GTECH_NOT U77 ( .A(n60), .Z(n50) );
  GTECH_NAND2 U78 ( .A(shift_direction[1]), .B(shift_direction[0]), .Z(n60) );
  GTECH_NOT U79 ( .A(n33), .Z(n55) );
  GTECH_NOT U80 ( .A(n70), .Z(n48) );
  GTECH_NAND2 U81 ( .A(n63), .B(n67), .Z(n70) );
  GTECH_NOT U82 ( .A(shift_direction[1]), .Z(n67) );
  GTECH_NOT U83 ( .A(shift_direction[0]), .Z(n63) );
endmodule

