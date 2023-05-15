
module lfsr ( i_Clk, i_Enable, i_Seed_DV, i_Seed_Data, o_LFSR_Data, 
        o_LFSR_Done );
  input [2:0] i_Seed_Data;
  output [2:0] o_LFSR_Data;
  input i_Clk, i_Enable, i_Seed_DV;
  output o_LFSR_Done;
  wire   N4, N5, N6, n13, n14, n21, n22, n23, n24, n25, n26;

  GTECH_FJK2S r_LFSR_reg_1_ ( .J(n14), .K(n14), .TI(N4), .TE(i_Enable), .CP(
        i_Clk), .CD(n13), .Q(o_LFSR_Data[0]) );
  GTECH_FJK2S r_LFSR_reg_2_ ( .J(n14), .K(n14), .TI(N5), .TE(i_Enable), .CP(
        i_Clk), .CD(n13), .Q(o_LFSR_Data[1]) );
  GTECH_FJK2S r_LFSR_reg_3_ ( .J(n14), .K(n14), .TI(N6), .TE(i_Enable), .CP(
        i_Clk), .CD(n13), .Q(o_LFSR_Data[2]) );
  GTECH_ZERO U18 ( .Z(n14) );
  GTECH_ONE U19 ( .Z(n13) );
  GTECH_AND3 U20 ( .A(n21), .B(n22), .C(n23), .Z(o_LFSR_Done) );
  GTECH_XOR2 U21 ( .A(i_Seed_Data[1]), .B(n24), .Z(n23) );
  GTECH_XNOR2 U22 ( .A(i_Seed_Data[2]), .B(o_LFSR_Data[2]), .Z(n22) );
  GTECH_XOR2 U23 ( .A(i_Seed_Data[0]), .B(n25), .Z(n21) );
  GTECH_OAI2N2 U24 ( .A(i_Seed_DV), .B(n24), .C(i_Seed_DV), .D(i_Seed_Data[2]), 
        .Z(N6) );
  GTECH_NOT U25 ( .A(o_LFSR_Data[1]), .Z(n24) );
  GTECH_OAI2N2 U26 ( .A(i_Seed_DV), .B(n25), .C(i_Seed_DV), .D(i_Seed_Data[1]), 
        .Z(N5) );
  GTECH_NOT U27 ( .A(o_LFSR_Data[0]), .Z(n25) );
  GTECH_OAI2N2 U28 ( .A(i_Seed_DV), .B(n26), .C(i_Seed_DV), .D(i_Seed_Data[0]), 
        .Z(N4) );
  GTECH_XOR2 U29 ( .A(o_LFSR_Data[2]), .B(o_LFSR_Data[1]), .Z(n26) );
endmodule

