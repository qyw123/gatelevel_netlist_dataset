
module lfsr ( i_Clk, i_Enable, i_Seed_DV, i_Seed_Data, o_LFSR_Data, 
        o_LFSR_Done );
  input [2:0] i_Seed_Data;
  output [2:0] o_LFSR_Data;
  input i_Clk, i_Enable, i_Seed_DV;
  output o_LFSR_Done;
  wire   N4, N5, N6, n14, n19, n20, n21, n22, n23;

  GTECH_FJK1S r_LFSR_reg_1_ ( .J(n14), .K(n14), .TI(N4), .TE(i_Enable), .CP(
        i_Clk), .Q(o_LFSR_Data[0]) );
  GTECH_FJK1S r_LFSR_reg_2_ ( .J(n14), .K(n14), .TI(N5), .TE(i_Enable), .CP(
        i_Clk), .Q(o_LFSR_Data[1]) );
  GTECH_FJK1S r_LFSR_reg_3_ ( .J(n14), .K(n14), .TI(N6), .TE(i_Enable), .CP(
        i_Clk), .Q(o_LFSR_Data[2]) );
  GTECH_ZERO U16 ( .Z(n14) );
  GTECH_NOR3 U17 ( .A(n19), .B(n20), .C(n21), .Z(o_LFSR_Done) );
  GTECH_XOR2 U18 ( .A(i_Seed_Data[1]), .B(o_LFSR_Data[1]), .Z(n21) );
  GTECH_XOR2 U19 ( .A(i_Seed_Data[2]), .B(o_LFSR_Data[2]), .Z(n20) );
  GTECH_XOR2 U20 ( .A(i_Seed_Data[0]), .B(o_LFSR_Data[0]), .Z(n19) );
  GTECH_MUX2 U21 ( .A(o_LFSR_Data[1]), .B(i_Seed_Data[2]), .S(i_Seed_DV), .Z(
        N6) );
  GTECH_MUX2 U22 ( .A(o_LFSR_Data[0]), .B(i_Seed_Data[1]), .S(i_Seed_DV), .Z(
        N5) );
  GTECH_MUX2 U23 ( .A(n22), .B(i_Seed_Data[0]), .S(i_Seed_DV), .Z(N4) );
  GTECH_NOT U24 ( .A(n23), .Z(n22) );
  GTECH_XOR2 U25 ( .A(o_LFSR_Data[1]), .B(o_LFSR_Data[2]), .Z(n23) );
endmodule

