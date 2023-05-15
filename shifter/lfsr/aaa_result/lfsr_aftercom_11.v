
module lfsr ( i_Clk, i_Enable, i_Seed_DV, i_Seed_Data, o_LFSR_Data, 
        o_LFSR_Done );
  input [2:0] i_Seed_Data;
  output [2:0] o_LFSR_Data;
  input i_Clk, i_Enable, i_Seed_DV;
  output o_LFSR_Done;
  wire   N4, N5, N6, n13, n21, n22, n23, n24;

  GTECH_FJK2S r_LFSR_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N4), .TE(i_Enable), .CP(
        i_Clk), .CD(n13), .Q(o_LFSR_Data[0]) );
  GTECH_FJK2S r_LFSR_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N5), .TE(i_Enable), .CP(
        i_Clk), .CD(n13), .Q(o_LFSR_Data[1]) );
  GTECH_FJK2S r_LFSR_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N6), .TE(i_Enable), .CP(
        i_Clk), .CD(n13), .Q(o_LFSR_Data[2]) );
  GTECH_ONE U18 ( .Z(n13) );
  GTECH_AND3 U19 ( .A(n21), .B(n22), .C(n23), .Z(o_LFSR_Done) );
  GTECH_XNOR2 U20 ( .A(i_Seed_Data[1]), .B(o_LFSR_Data[1]), .Z(n23) );
  GTECH_XNOR2 U21 ( .A(i_Seed_Data[2]), .B(o_LFSR_Data[2]), .Z(n22) );
  GTECH_XNOR2 U22 ( .A(i_Seed_Data[0]), .B(o_LFSR_Data[0]), .Z(n21) );
  GTECH_MUX2 U23 ( .A(o_LFSR_Data[1]), .B(i_Seed_Data[2]), .S(i_Seed_DV), .Z(
        N6) );
  GTECH_MUX2 U24 ( .A(o_LFSR_Data[0]), .B(i_Seed_Data[1]), .S(i_Seed_DV), .Z(
        N5) );
  GTECH_MUX2 U25 ( .A(n24), .B(i_Seed_Data[0]), .S(i_Seed_DV), .Z(N4) );
  GTECH_XNOR2 U26 ( .A(o_LFSR_Data[1]), .B(o_LFSR_Data[2]), .Z(n24) );
endmodule

