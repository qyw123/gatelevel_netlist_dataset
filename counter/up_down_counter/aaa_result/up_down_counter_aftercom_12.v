
module up_down_counter ( clk, ENABLE, UPDN, RST, VALUE );
  output [3:0] VALUE;
  input clk, ENABLE, UPDN, RST;
  wire   N27, N28, N29, N31, n3, n4, n34, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62;

  GTECH_FJK2S counter_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N27), .TE(ENABLE), .CP(
        clk), .CD(n34), .Q(VALUE[0]), .QN(n3) );
  GTECH_FJK2S counter_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N28), .TE(ENABLE), .CP(
        clk), .CD(n34), .Q(VALUE[1]), .QN(n4) );
  GTECH_FJK2S counter_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N29), .TE(ENABLE), .CP(
        clk), .CD(n34), .Q(VALUE[2]), .QN(n37) );
  GTECH_FJK2S counter_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N31), .TE(ENABLE), .CP(
        clk), .CD(n34), .Q(VALUE[3]), .QN(n36) );
  GTECH_NOT U38 ( .A(RST), .Z(n34) );
  GTECH_OAI21 U39 ( .A(n36), .B(n38), .C(n39), .Z(N31) );
  GTECH_NAND3 U40 ( .A(n40), .B(n41), .C(n42), .Z(n39) );
  GTECH_AOI21 U41 ( .A(n40), .B(ENABLE), .C(n43), .Z(n38) );
  GTECH_NAND2 U42 ( .A(n44), .B(n45), .Z(n43) );
  GTECH_OAI21 U43 ( .A(ENABLE), .B(n40), .C(n42), .Z(n45) );
  GTECH_XOR2 U44 ( .A(n46), .B(n37), .Z(n42) );
  GTECH_OAI21 U45 ( .A(n37), .B(n46), .C(n47), .Z(n40) );
  GTECH_OAI21 U46 ( .A(n44), .B(n48), .C(n49), .Z(N29) );
  GTECH_OA21 U47 ( .A(n50), .B(n51), .C(n52), .Z(n49) );
  GTECH_XOR2 U48 ( .A(n37), .B(n53), .Z(n50) );
  GTECH_XNOR2 U49 ( .A(n37), .B(n47), .Z(n48) );
  GTECH_NAND2 U50 ( .A(n54), .B(n52), .Z(N28) );
  GTECH_MUX2 U51 ( .A(n44), .B(n51), .S(n46), .Z(n54) );
  GTECH_NAND2 U52 ( .A(n55), .B(n47), .Z(n46) );
  GTECH_NAND2 U53 ( .A(n52), .B(n56), .Z(N27) );
  GTECH_OAI21 U54 ( .A(n41), .B(n57), .C(n3), .Z(n56) );
  GTECH_NOT U55 ( .A(n51), .Z(n57) );
  GTECH_NAND3 U56 ( .A(n58), .B(n59), .C(ENABLE), .Z(n51) );
  GTECH_NOT U57 ( .A(UPDN), .Z(n59) );
  GTECH_NAND3 U58 ( .A(n53), .B(n37), .C(n36), .Z(n58) );
  GTECH_NOT U59 ( .A(n55), .Z(n53) );
  GTECH_NAND2 U60 ( .A(n4), .B(n3), .Z(n55) );
  GTECH_NOT U61 ( .A(n44), .Z(n41) );
  GTECH_NAND2 U62 ( .A(UPDN), .B(ENABLE), .Z(n44) );
  GTECH_OR4 U63 ( .A(n60), .B(n47), .C(n37), .D(n36), .Z(n52) );
  GTECH_NAND2 U64 ( .A(n61), .B(n62), .Z(n47) );
  GTECH_NOT U65 ( .A(n4), .Z(n62) );
  GTECH_NOT U66 ( .A(n3), .Z(n61) );
  GTECH_AND_NOT U67 ( .A(ENABLE), .B(UPDN), .Z(n60) );
endmodule

