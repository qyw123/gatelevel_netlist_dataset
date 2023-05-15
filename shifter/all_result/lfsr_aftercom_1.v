
module lfsr ( i_Clk, i_Enable, i_Seed_DV, i_Seed_Data, o_LFSR_Data, 
        o_LFSR_Done );
  input [2:0] i_Seed_Data;
  output [2:0] o_LFSR_Data;
  input i_Clk, i_Enable, i_Seed_DV;
  output o_LFSR_Done;
  wire   N4, N5, N6, n14, n18, n19, n20, n21, n22, n23;

  GTECH_FJK1S r_LFSR_reg_1_ ( .J(n14), .K(n14), .TI(N4), .TE(i_Enable), .CP(
        i_Clk), .Q(o_LFSR_Data[0]) );
  GTECH_FJK1S r_LFSR_reg_2_ ( .J(n14), .K(n14), .TI(N5), .TE(i_Enable), .CP(
        i_Clk), .Q(o_LFSR_Data[1]) );
  GTECH_FJK1S r_LFSR_reg_3_ ( .J(n14), .K(n14), .TI(N6), .TE(i_Enable), .CP(
        i_Clk), .Q(o_LFSR_Data[2]) );
  GTECH_ZERO U15 ( .Z(n14) );
  GTECH_NOR3 U16 ( .A(n18), .B(n19), .C(n20), .Z(o_LFSR_Done) );
  GTECH_XOR2 U17 ( .A(o_LFSR_Data[1]), .B(i_Seed_Data[1]), .Z(n20) );
  GTECH_XOR2 U18 ( .A(o_LFSR_Data[0]), .B(i_Seed_Data[0]), .Z(n19) );
  GTECH_XOR2 U19 ( .A(o_LFSR_Data[2]), .B(i_Seed_Data[2]), .Z(n18) );
  GTECH_OAI2N2 U20 ( .A(i_Seed_DV), .B(n21), .C(i_Seed_DV), .D(i_Seed_Data[2]), 
        .Z(N6) );
  GTECH_AO22 U21 ( .A(n22), .B(o_LFSR_Data[0]), .C(i_Seed_DV), .D(
        i_Seed_Data[1]), .Z(N5) );
  GTECH_NOT U22 ( .A(i_Seed_DV), .Z(n22) );
  GTECH_OAI2N2 U23 ( .A(i_Seed_DV), .B(n23), .C(i_Seed_DV), .D(i_Seed_Data[0]), 
        .Z(N4) );
  GTECH_XNOR2 U24 ( .A(o_LFSR_Data[2]), .B(n21), .Z(n23) );
  GTECH_NOT U25 ( .A(o_LFSR_Data[1]), .Z(n21) );
endmodule

