
module shift_reg4 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [1:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   N5, N6, N7, N8, N9, N10, N11, N12, N33, n26, n29, n32, n35, n38, n41,
         n42, n21, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68;

  GTECH_FJK3S shift_reg_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N5), .TE(N33), .CP(
        clk), .CD(n42), .SD(n21), .Q(data_out[0]) );
  GTECH_FJK3S shift_reg_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N6), .TE(N33), .CP(
        clk), .CD(n42), .SD(n21), .Q(data_out[1]), .QN(n41) );
  GTECH_FJK3S shift_reg_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N7), .TE(N33), .CP(
        clk), .CD(n42), .SD(n21), .Q(data_out[2]), .QN(n38) );
  GTECH_FJK3S shift_reg_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N8), .TE(N33), .CP(
        clk), .CD(n42), .SD(n21), .Q(data_out[3]), .QN(n35) );
  GTECH_FJK3S shift_reg_reg_4_ ( .J(1'b0), .K(1'b0), .TI(N9), .TE(N33), .CP(
        clk), .CD(n42), .SD(n21), .Q(data_out[4]), .QN(n32) );
  GTECH_FJK3S shift_reg_reg_5_ ( .J(1'b0), .K(1'b0), .TI(N10), .TE(N33), .CP(
        clk), .CD(n42), .SD(n21), .Q(data_out[5]), .QN(n29) );
  GTECH_FJK3S shift_reg_reg_6_ ( .J(1'b0), .K(1'b0), .TI(N11), .TE(N33), .CP(
        clk), .CD(n42), .SD(n21), .Q(data_out[6]), .QN(n26) );
  GTECH_FJK3S shift_reg_reg_7_ ( .J(1'b0), .K(1'b0), .TI(N12), .TE(enable), 
        .CP(clk), .CD(n42), .SD(n21), .Q(data_out[7]) );
  GTECH_ONE U47 ( .Z(n21) );
  GTECH_NOT U48 ( .A(reset), .Z(n42) );
  GTECH_NOT U49 ( .A(n46), .Z(N9) );
  GTECH_AOI222 U50 ( .A(n47), .B(n48), .C(data_in[4]), .D(n49), .E(n50), .F(
        n51), .Z(n46) );
  GTECH_NOT U51 ( .A(n52), .Z(N8) );
  GTECH_AOI222 U52 ( .A(n47), .B(n53), .C(data_in[3]), .D(n49), .E(n50), .F(
        n54), .Z(n52) );
  GTECH_NOT U53 ( .A(n55), .Z(N7) );
  GTECH_AOI222 U54 ( .A(n47), .B(n56), .C(data_in[2]), .D(n49), .E(n50), .F(
        n48), .Z(n55) );
  GTECH_NOT U55 ( .A(n35), .Z(n48) );
  GTECH_NOT U56 ( .A(n41), .Z(n56) );
  GTECH_NOT U57 ( .A(n57), .Z(N6) );
  GTECH_AOI222 U58 ( .A(n47), .B(data_out[0]), .C(data_in[1]), .D(n49), .E(n50), .F(n53), .Z(n57) );
  GTECH_NOT U59 ( .A(n38), .Z(n53) );
  GTECH_OAI22 U60 ( .A(n41), .B(n58), .C(n59), .D(n60), .Z(N5) );
  GTECH_NOT U61 ( .A(data_in[0]), .Z(n60) );
  GTECH_OA21 U62 ( .A(shift_direction[1]), .B(n61), .C(enable), .Z(N33) );
  GTECH_NOT U63 ( .A(n62), .Z(N12) );
  GTECH_AOI222 U64 ( .A(n47), .B(n63), .C(n64), .D(data_in[0]), .E(data_in[7]), 
        .F(n49), .Z(n62) );
  GTECH_AND2 U65 ( .A(shift_direction[0]), .B(n65), .Z(n64) );
  GTECH_NOT U66 ( .A(n66), .Z(N11) );
  GTECH_AOI222 U67 ( .A(n47), .B(n51), .C(data_in[6]), .D(n49), .E(n50), .F(
        data_out[7]), .Z(n66) );
  GTECH_NOT U68 ( .A(n29), .Z(n51) );
  GTECH_NOT U69 ( .A(n67), .Z(N10) );
  GTECH_AOI222 U70 ( .A(n47), .B(n54), .C(data_in[5]), .D(n49), .E(n50), .F(
        n63), .Z(n67) );
  GTECH_NOT U71 ( .A(n26), .Z(n63) );
  GTECH_NOT U72 ( .A(n58), .Z(n50) );
  GTECH_NAND2 U73 ( .A(shift_direction[1]), .B(n61), .Z(n58) );
  GTECH_NOT U74 ( .A(n59), .Z(n49) );
  GTECH_NAND2 U75 ( .A(shift_direction[1]), .B(shift_direction[0]), .Z(n59) );
  GTECH_NOT U76 ( .A(n32), .Z(n54) );
  GTECH_NOT U77 ( .A(n68), .Z(n47) );
  GTECH_NAND2 U78 ( .A(n61), .B(n65), .Z(n68) );
  GTECH_NOT U79 ( .A(shift_direction[1]), .Z(n65) );
  GTECH_NOT U80 ( .A(shift_direction[0]), .Z(n61) );
endmodule

