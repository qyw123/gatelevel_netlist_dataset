
module up_down_counter ( clk, ENABLE, UPDN, RST, VALUE );
  output [3:0] VALUE;
  input clk, ENABLE, UPDN, RST;
  wire   N27, N28, N29, N31, n3, n4, n34, n31, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62;

  GTECH_FJK2S counter_reg_0_ ( .J(n31), .K(n31), .TI(N27), .TE(ENABLE), .CP(
        clk), .CD(n34), .Q(VALUE[0]), .QN(n3) );
  GTECH_FJK2S counter_reg_1_ ( .J(n31), .K(n31), .TI(N28), .TE(ENABLE), .CP(
        clk), .CD(n34), .Q(VALUE[1]), .QN(n4) );
  GTECH_FJK2S counter_reg_2_ ( .J(n31), .K(n31), .TI(N29), .TE(ENABLE), .CP(
        clk), .CD(n34), .Q(VALUE[2]), .QN(n37) );
  GTECH_FJK2S counter_reg_3_ ( .J(n31), .K(n31), .TI(N31), .TE(ENABLE), .CP(
        clk), .CD(n34), .Q(VALUE[3]), .QN(n36) );
  GTECH_ZERO U38 ( .Z(n31) );
  GTECH_NOT U39 ( .A(RST), .Z(n34) );
  GTECH_OAI21 U40 ( .A(n36), .B(n38), .C(n39), .Z(N31) );
  GTECH_NAND3 U41 ( .A(n40), .B(n41), .C(n42), .Z(n39) );
  GTECH_NOT U42 ( .A(n43), .Z(n41) );
  GTECH_AOI21 U43 ( .A(n40), .B(ENABLE), .C(n44), .Z(n38) );
  GTECH_NAND2 U44 ( .A(n43), .B(n45), .Z(n44) );
  GTECH_OAI21 U45 ( .A(ENABLE), .B(n40), .C(n42), .Z(n45) );
  GTECH_XNOR2 U46 ( .A(n37), .B(n46), .Z(n42) );
  GTECH_OAI21 U47 ( .A(n37), .B(n47), .C(n48), .Z(n40) );
  GTECH_OAI21 U48 ( .A(n43), .B(n49), .C(n50), .Z(N29) );
  GTECH_OA21 U49 ( .A(n51), .B(n52), .C(n53), .Z(n50) );
  GTECH_XNOR2 U50 ( .A(n37), .B(n54), .Z(n52) );
  GTECH_XNOR2 U51 ( .A(n37), .B(n48), .Z(n49) );
  GTECH_NAND2 U52 ( .A(n55), .B(n53), .Z(N28) );
  GTECH_NOT U53 ( .A(n56), .Z(n53) );
  GTECH_MUX2 U54 ( .A(n51), .B(n43), .S(n46), .Z(n55) );
  GTECH_NOT U55 ( .A(n47), .Z(n46) );
  GTECH_NAND2 U56 ( .A(n54), .B(n48), .Z(n47) );
  GTECH_AO21 U57 ( .A(n3), .B(n57), .C(n56), .Z(N27) );
  GTECH_NOR4 U58 ( .A(n36), .B(n37), .C(n48), .D(n58), .Z(n56) );
  GTECH_AND_NOT U59 ( .A(ENABLE), .B(UPDN), .Z(n58) );
  GTECH_NAND2 U60 ( .A(n59), .B(n60), .Z(n48) );
  GTECH_NOT U61 ( .A(n4), .Z(n60) );
  GTECH_NOT U62 ( .A(n3), .Z(n59) );
  GTECH_NAND2 U63 ( .A(n51), .B(n43), .Z(n57) );
  GTECH_NAND2 U64 ( .A(UPDN), .B(ENABLE), .Z(n43) );
  GTECH_OAI21 U65 ( .A(n54), .B(n61), .C(n62), .Z(n51) );
  GTECH_AND_NOT U66 ( .A(ENABLE), .B(UPDN), .Z(n62) );
  GTECH_NAND2 U67 ( .A(n37), .B(n36), .Z(n61) );
  GTECH_NAND2 U68 ( .A(n4), .B(n3), .Z(n54) );
endmodule

