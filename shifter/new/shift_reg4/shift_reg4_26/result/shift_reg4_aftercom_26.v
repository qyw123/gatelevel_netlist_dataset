
module shift_reg4 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [1:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   N5, N6, N7, N8, N9, N10, N11, N12, N33, n25, n28, n31, n34, n37, n40,
         n41, n20, n21, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67;

  GTECH_FJK3S shift_reg_reg_0_ ( .J(n21), .K(n21), .TI(N5), .TE(N33), .CP(clk), 
        .CD(n41), .SD(n20), .Q(data_out[0]) );
  GTECH_FJK3S shift_reg_reg_1_ ( .J(n21), .K(n21), .TI(N6), .TE(N33), .CP(clk), 
        .CD(n41), .SD(n20), .Q(data_out[1]), .QN(n40) );
  GTECH_FJK3S shift_reg_reg_2_ ( .J(n21), .K(n21), .TI(N7), .TE(N33), .CP(clk), 
        .CD(n41), .SD(n20), .Q(data_out[2]), .QN(n37) );
  GTECH_FJK3S shift_reg_reg_3_ ( .J(n21), .K(n21), .TI(N8), .TE(N33), .CP(clk), 
        .CD(n41), .SD(n20), .Q(data_out[3]), .QN(n34) );
  GTECH_FJK3S shift_reg_reg_4_ ( .J(n21), .K(n21), .TI(N9), .TE(N33), .CP(clk), 
        .CD(n41), .SD(n20), .Q(data_out[4]), .QN(n31) );
  GTECH_FJK3S shift_reg_reg_5_ ( .J(n21), .K(n21), .TI(N10), .TE(N33), .CP(clk), .CD(n41), .SD(n20), .Q(data_out[5]), .QN(n28) );
  GTECH_FJK3S shift_reg_reg_6_ ( .J(n21), .K(n21), .TI(N11), .TE(N33), .CP(clk), .CD(n41), .SD(n20), .Q(data_out[6]), .QN(n25) );
  GTECH_FJK3S shift_reg_reg_7_ ( .J(n21), .K(n21), .TI(N12), .TE(enable), .CP(
        clk), .CD(n41), .SD(n20), .Q(data_out[7]) );
  GTECH_ZERO U46 ( .Z(n21) );
  GTECH_ONE U47 ( .Z(n20) );
  GTECH_NOT U48 ( .A(reset), .Z(n41) );
  GTECH_NOT U49 ( .A(n45), .Z(N9) );
  GTECH_AOI222 U50 ( .A(n46), .B(n47), .C(data_in[4]), .D(n48), .E(n49), .F(
        n50), .Z(n45) );
  GTECH_NOT U51 ( .A(n51), .Z(N8) );
  GTECH_AOI222 U52 ( .A(n46), .B(n52), .C(data_in[3]), .D(n48), .E(n49), .F(
        n53), .Z(n51) );
  GTECH_NOT U53 ( .A(n54), .Z(N7) );
  GTECH_AOI222 U54 ( .A(n46), .B(n55), .C(data_in[2]), .D(n48), .E(n49), .F(
        n47), .Z(n54) );
  GTECH_NOT U55 ( .A(n34), .Z(n47) );
  GTECH_NOT U56 ( .A(n40), .Z(n55) );
  GTECH_NOT U57 ( .A(n56), .Z(N6) );
  GTECH_AOI222 U58 ( .A(n46), .B(data_out[0]), .C(data_in[1]), .D(n48), .E(n49), .F(n52), .Z(n56) );
  GTECH_NOT U59 ( .A(n37), .Z(n52) );
  GTECH_OAI22 U60 ( .A(n40), .B(n57), .C(n58), .D(n59), .Z(N5) );
  GTECH_NOT U61 ( .A(data_in[0]), .Z(n59) );
  GTECH_OA21 U62 ( .A(shift_direction[1]), .B(n60), .C(enable), .Z(N33) );
  GTECH_NOT U63 ( .A(n61), .Z(N12) );
  GTECH_AOI222 U64 ( .A(n46), .B(n62), .C(n63), .D(data_in[0]), .E(data_in[7]), 
        .F(n48), .Z(n61) );
  GTECH_AND_NOT U65 ( .A(shift_direction[0]), .B(shift_direction[1]), .Z(n63)
         );
  GTECH_NOT U66 ( .A(n64), .Z(N11) );
  GTECH_AOI222 U67 ( .A(n46), .B(n50), .C(data_in[6]), .D(n48), .E(n49), .F(
        data_out[7]), .Z(n64) );
  GTECH_NOT U68 ( .A(n28), .Z(n50) );
  GTECH_NOT U69 ( .A(n65), .Z(N10) );
  GTECH_AOI222 U70 ( .A(n46), .B(n53), .C(data_in[5]), .D(n48), .E(n49), .F(
        n62), .Z(n65) );
  GTECH_NOT U71 ( .A(n25), .Z(n62) );
  GTECH_NOT U72 ( .A(n57), .Z(n49) );
  GTECH_NAND2 U73 ( .A(shift_direction[1]), .B(n60), .Z(n57) );
  GTECH_NOT U74 ( .A(n58), .Z(n48) );
  GTECH_NAND2 U75 ( .A(shift_direction[1]), .B(shift_direction[0]), .Z(n58) );
  GTECH_NOT U76 ( .A(n31), .Z(n53) );
  GTECH_NOT U77 ( .A(n66), .Z(n46) );
  GTECH_NAND2 U78 ( .A(n60), .B(n67), .Z(n66) );
  GTECH_NOT U79 ( .A(shift_direction[1]), .Z(n67) );
  GTECH_NOT U80 ( .A(shift_direction[0]), .Z(n60) );
endmodule

