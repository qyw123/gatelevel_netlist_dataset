
module shift_reg4 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [1:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   N5, N6, N7, N8, N9, N10, N11, N12, N33, n17, n20, n23, n26, n29, n32,
         n35, n36, n15, n16, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55;

  GTECH_FJK3S shift_reg_reg_0_ ( .J(n16), .K(n16), .TI(N5), .TE(N33), .CP(clk), 
        .CD(n36), .SD(n15), .Q(data_out[0]), .QN(n39) );
  GTECH_FJK3S shift_reg_reg_1_ ( .J(n16), .K(n16), .TI(N6), .TE(N33), .CP(clk), 
        .CD(n36), .SD(n15), .Q(data_out[1]), .QN(n35) );
  GTECH_FJK3S shift_reg_reg_2_ ( .J(n16), .K(n16), .TI(N7), .TE(N33), .CP(clk), 
        .CD(n36), .SD(n15), .Q(data_out[2]), .QN(n32) );
  GTECH_FJK3S shift_reg_reg_3_ ( .J(n16), .K(n16), .TI(N8), .TE(N33), .CP(clk), 
        .CD(n36), .SD(n15), .Q(data_out[3]), .QN(n29) );
  GTECH_FJK3S shift_reg_reg_4_ ( .J(n16), .K(n16), .TI(N9), .TE(N33), .CP(clk), 
        .CD(n36), .SD(n15), .Q(data_out[4]), .QN(n26) );
  GTECH_FJK3S shift_reg_reg_5_ ( .J(n16), .K(n16), .TI(N10), .TE(N33), .CP(clk), .CD(n36), .SD(n15), .Q(data_out[5]), .QN(n23) );
  GTECH_FJK3S shift_reg_reg_6_ ( .J(n16), .K(n16), .TI(N11), .TE(N33), .CP(clk), .CD(n36), .SD(n15), .Q(data_out[6]), .QN(n20) );
  GTECH_FJK3S shift_reg_reg_7_ ( .J(n16), .K(n16), .TI(N12), .TE(enable), .CP(
        clk), .CD(n36), .SD(n15), .Q(data_out[7]), .QN(n17) );
  GTECH_ZERO U41 ( .Z(n16) );
  GTECH_ONE U42 ( .Z(n15) );
  GTECH_NOT U43 ( .A(reset), .Z(n36) );
  GTECH_OAI21 U44 ( .A(n29), .B(n40), .C(n41), .Z(N9) );
  GTECH_AOI2N2 U45 ( .A(data_in[4]), .B(n42), .C(n23), .D(n43), .Z(n41) );
  GTECH_OAI21 U46 ( .A(n32), .B(n40), .C(n44), .Z(N8) );
  GTECH_AOI2N2 U47 ( .A(data_in[3]), .B(n42), .C(n26), .D(n43), .Z(n44) );
  GTECH_OAI21 U48 ( .A(n35), .B(n40), .C(n45), .Z(N7) );
  GTECH_AOI2N2 U49 ( .A(data_in[2]), .B(n42), .C(n29), .D(n43), .Z(n45) );
  GTECH_OAI21 U50 ( .A(n39), .B(n40), .C(n46), .Z(N6) );
  GTECH_AOI2N2 U51 ( .A(data_in[1]), .B(n42), .C(n32), .D(n43), .Z(n46) );
  GTECH_OAI22 U52 ( .A(n47), .B(n48), .C(n35), .D(n43), .Z(N5) );
  GTECH_NOT U53 ( .A(n49), .Z(N33) );
  GTECH_OAI21 U54 ( .A(shift_direction[1]), .B(n50), .C(enable), .Z(n49) );
  GTECH_OAI21 U55 ( .A(n20), .B(n40), .C(n51), .Z(N12) );
  GTECH_AOI2N2 U56 ( .A(data_in[7]), .B(n42), .C(n48), .D(n52), .Z(n51) );
  GTECH_NAND2 U57 ( .A(shift_direction[0]), .B(n53), .Z(n52) );
  GTECH_NOT U58 ( .A(data_in[0]), .Z(n48) );
  GTECH_OAI21 U59 ( .A(n23), .B(n40), .C(n54), .Z(N11) );
  GTECH_AOI2N2 U60 ( .A(data_in[6]), .B(n42), .C(n17), .D(n43), .Z(n54) );
  GTECH_OAI21 U61 ( .A(n26), .B(n40), .C(n55), .Z(N10) );
  GTECH_AOI2N2 U62 ( .A(data_in[5]), .B(n42), .C(n20), .D(n43), .Z(n55) );
  GTECH_NAND2 U63 ( .A(shift_direction[1]), .B(n50), .Z(n43) );
  GTECH_NOT U64 ( .A(n47), .Z(n42) );
  GTECH_NAND2 U65 ( .A(shift_direction[0]), .B(shift_direction[1]), .Z(n47) );
  GTECH_NAND2 U66 ( .A(n53), .B(n50), .Z(n40) );
  GTECH_NOT U67 ( .A(shift_direction[0]), .Z(n50) );
  GTECH_NOT U68 ( .A(shift_direction[1]), .Z(n53) );
endmodule

