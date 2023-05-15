
module shift_reg1 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [2:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   N14, N15, N16, N17, N18, N19, N20, N21, n15, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49;

  GTECH_FJK2S shift_reg_reg_7_ ( .J(1'b0), .K(1'b0), .TI(N21), .TE(enable), 
        .CP(clk), .CD(n15), .Q(data_out[7]) );
  GTECH_FJK2S shift_reg_reg_6_ ( .J(1'b0), .K(1'b0), .TI(N20), .TE(enable), 
        .CP(clk), .CD(n15), .Q(data_out[6]) );
  GTECH_FJK2S shift_reg_reg_5_ ( .J(1'b0), .K(1'b0), .TI(N19), .TE(enable), 
        .CP(clk), .CD(n15), .Q(data_out[5]) );
  GTECH_FJK2S shift_reg_reg_4_ ( .J(1'b0), .K(1'b0), .TI(N18), .TE(enable), 
        .CP(clk), .CD(n15), .Q(data_out[4]) );
  GTECH_FJK2S shift_reg_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N17), .TE(enable), 
        .CP(clk), .CD(n15), .Q(data_out[3]) );
  GTECH_FJK2S shift_reg_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N16), .TE(enable), 
        .CP(clk), .CD(n15), .Q(data_out[2]) );
  GTECH_FJK2S shift_reg_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N15), .TE(enable), 
        .CP(clk), .CD(n15), .Q(data_out[1]) );
  GTECH_FJK2S shift_reg_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N14), .TE(enable), 
        .CP(clk), .CD(n15), .Q(data_out[0]) );
  GTECH_MUX2 U11 ( .A(data_out[4]), .B(data_out[2]), .S(shift_direction[1]), 
        .Z(n18) );
  GTECH_MUX2 U12 ( .A(n18), .B(data_out[3]), .S(shift_direction[0]), .Z(n19)
         );
  GTECH_MUX2 U13 ( .A(data_out[6]), .B(data_out[5]), .S(shift_direction[0]), 
        .Z(n20) );
  GTECH_MUX2 U14 ( .A(data_in[0]), .B(n20), .S(shift_direction[1]), .Z(n21) );
  GTECH_MUX2 U15 ( .A(n21), .B(n19), .S(shift_direction[2]), .Z(N14) );
  GTECH_MUX2 U16 ( .A(data_out[5]), .B(data_out[3]), .S(shift_direction[1]), 
        .Z(n22) );
  GTECH_MUX2 U17 ( .A(n22), .B(data_out[4]), .S(shift_direction[0]), .Z(n23)
         );
  GTECH_MUX2 U18 ( .A(data_out[7]), .B(data_out[6]), .S(shift_direction[0]), 
        .Z(n24) );
  GTECH_MUX2 U19 ( .A(data_in[1]), .B(n24), .S(shift_direction[1]), .Z(n25) );
  GTECH_MUX2 U20 ( .A(n25), .B(n23), .S(shift_direction[2]), .Z(N15) );
  GTECH_MUX2 U21 ( .A(data_out[6]), .B(data_out[4]), .S(shift_direction[1]), 
        .Z(n26) );
  GTECH_MUX2 U22 ( .A(n26), .B(data_out[5]), .S(shift_direction[0]), .Z(n27)
         );
  GTECH_MUX2 U23 ( .A(data_in[0]), .B(data_out[7]), .S(shift_direction[0]), 
        .Z(n28) );
  GTECH_MUX2 U24 ( .A(data_in[2]), .B(n28), .S(shift_direction[1]), .Z(n29) );
  GTECH_MUX2 U25 ( .A(n29), .B(n27), .S(shift_direction[2]), .Z(N16) );
  GTECH_MUX2 U26 ( .A(data_out[7]), .B(data_out[5]), .S(shift_direction[1]), 
        .Z(n30) );
  GTECH_MUX2 U27 ( .A(n30), .B(data_out[6]), .S(shift_direction[0]), .Z(n31)
         );
  GTECH_MUX2 U28 ( .A(data_in[1]), .B(data_in[0]), .S(shift_direction[0]), .Z(
        n32) );
  GTECH_MUX2 U29 ( .A(data_in[3]), .B(n32), .S(shift_direction[1]), .Z(n33) );
  GTECH_MUX2 U30 ( .A(n33), .B(n31), .S(shift_direction[2]), .Z(N17) );
  GTECH_MUX2 U31 ( .A(data_in[0]), .B(data_out[6]), .S(shift_direction[1]), 
        .Z(n34) );
  GTECH_MUX2 U32 ( .A(n34), .B(data_out[7]), .S(shift_direction[0]), .Z(n35)
         );
  GTECH_MUX2 U33 ( .A(data_in[2]), .B(data_in[1]), .S(shift_direction[0]), .Z(
        n36) );
  GTECH_MUX2 U34 ( .A(data_in[4]), .B(n36), .S(shift_direction[1]), .Z(n37) );
  GTECH_MUX2 U35 ( .A(n37), .B(n35), .S(shift_direction[2]), .Z(N18) );
  GTECH_MUX2 U36 ( .A(data_in[1]), .B(data_out[7]), .S(shift_direction[1]), 
        .Z(n38) );
  GTECH_MUX2 U37 ( .A(n38), .B(data_in[0]), .S(shift_direction[0]), .Z(n39) );
  GTECH_MUX2 U38 ( .A(data_in[3]), .B(data_in[2]), .S(shift_direction[0]), .Z(
        n40) );
  GTECH_MUX2 U39 ( .A(data_in[5]), .B(n40), .S(shift_direction[1]), .Z(n41) );
  GTECH_MUX2 U40 ( .A(n41), .B(n39), .S(shift_direction[2]), .Z(N19) );
  GTECH_MUX2 U41 ( .A(data_in[2]), .B(data_in[0]), .S(shift_direction[1]), .Z(
        n42) );
  GTECH_MUX2 U42 ( .A(n42), .B(data_in[1]), .S(shift_direction[0]), .Z(n43) );
  GTECH_MUX2 U43 ( .A(data_in[4]), .B(data_in[3]), .S(shift_direction[0]), .Z(
        n44) );
  GTECH_MUX2 U44 ( .A(data_in[6]), .B(n44), .S(shift_direction[1]), .Z(n45) );
  GTECH_MUX2 U45 ( .A(n45), .B(n43), .S(shift_direction[2]), .Z(N20) );
  GTECH_MUX2 U46 ( .A(data_in[3]), .B(data_in[1]), .S(shift_direction[1]), .Z(
        n46) );
  GTECH_MUX2 U47 ( .A(n46), .B(data_in[2]), .S(shift_direction[0]), .Z(n47) );
  GTECH_MUX2 U48 ( .A(data_in[5]), .B(data_in[4]), .S(shift_direction[0]), .Z(
        n48) );
  GTECH_MUX2 U49 ( .A(data_in[7]), .B(n48), .S(shift_direction[1]), .Z(n49) );
  GTECH_MUX2 U50 ( .A(n49), .B(n47), .S(shift_direction[2]), .Z(N21) );
  GTECH_NOT U51 ( .A(reset), .Z(n15) );
endmodule

