
module lfsr ( i_Clk, i_Enable, i_Seed_DV, i_Seed_Data, o_LFSR_Data, 
        o_LFSR_Done );
  input [2:0] i_Seed_Data;
  output [2:0] o_LFSR_Data;
  input i_Clk, i_Enable, i_Seed_DV;
  output o_LFSR_Done;
  wire   N4, N5, N6, n13, n18, n19, n20, n21;

  GTECH_FJK1S r_LFSR_reg_1_ ( .J(n13), .K(n13), .TI(N4), .TE(i_Enable), .CP(
        i_Clk), .Q(o_LFSR_Data[0]) );
  GTECH_FJK1S r_LFSR_reg_2_ ( .J(n13), .K(n13), .TI(N5), .TE(i_Enable), .CP(
        i_Clk), .Q(o_LFSR_Data[1]) );
  GTECH_FJK1S r_LFSR_reg_3_ ( .J(n13), .K(n13), .TI(N6), .TE(i_Enable), .CP(
        i_Clk), .Q(o_LFSR_Data[2]) );
  GTECH_ZERO U15 ( .Z(n13) );
  GTECH_AND3 U16 ( .A(n18), .B(n19), .C(n20), .Z(o_LFSR_Done) );
  GTECH_XNOR2 U17 ( .A(i_Seed_Data[1]), .B(o_LFSR_Data[1]), .Z(n20) );
  GTECH_XNOR2 U18 ( .A(i_Seed_Data[2]), .B(o_LFSR_Data[2]), .Z(n19) );
  GTECH_XNOR2 U19 ( .A(i_Seed_Data[0]), .B(o_LFSR_Data[0]), .Z(n18) );
  GTECH_MUX2 U20 ( .A(o_LFSR_Data[1]), .B(i_Seed_Data[2]), .S(i_Seed_DV), .Z(
        N6) );
  GTECH_MUX2 U21 ( .A(o_LFSR_Data[0]), .B(i_Seed_Data[1]), .S(i_Seed_DV), .Z(
        N5) );
  GTECH_MUX2 U22 ( .A(n21), .B(i_Seed_Data[0]), .S(i_Seed_DV), .Z(N4) );
  GTECH_XNOR2 U23 ( .A(o_LFSR_Data[1]), .B(o_LFSR_Data[2]), .Z(n21) );
endmodule

