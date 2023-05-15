
module up_down_counter ( clk, ENABLE, UPDN, RST, VALUE );
  output [3:0] VALUE;
  input clk, ENABLE, UPDN, RST;
  wire   N27, N28, N29, N31, n3, n4, n34, n31, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63;

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
  GTECH_OAI2N2 U40 ( .A(n36), .B(n38), .C(n39), .D(n40), .Z(N31) );
  GTECH_AND_NOT U41 ( .A(n41), .B(n42), .Z(n39) );
  GTECH_AOI21 U42 ( .A(n41), .B(ENABLE), .C(n43), .Z(n38) );
  GTECH_OR_NOT U43 ( .A(n44), .B(n42), .Z(n43) );
  GTECH_OA21 U44 ( .A(ENABLE), .B(n41), .C(n40), .Z(n44) );
  GTECH_XNOR2 U45 ( .A(n37), .B(n45), .Z(n40) );
  GTECH_OAI21 U46 ( .A(n37), .B(n46), .C(n47), .Z(n41) );
  GTECH_OAI21 U47 ( .A(n42), .B(n48), .C(n49), .Z(N29) );
  GTECH_OA21 U48 ( .A(n50), .B(n51), .C(n52), .Z(n49) );
  GTECH_XNOR2 U49 ( .A(n37), .B(n53), .Z(n51) );
  GTECH_XNOR2 U50 ( .A(n37), .B(n47), .Z(n48) );
  GTECH_OR_NOT U51 ( .A(n54), .B(n55), .Z(N28) );
  GTECH_MUX2 U52 ( .A(n50), .B(n42), .S(n45), .Z(n55) );
  GTECH_NOT U53 ( .A(n46), .Z(n45) );
  GTECH_OR_NOT U54 ( .A(n56), .B(n53), .Z(n46) );
  GTECH_NOT U55 ( .A(n52), .Z(n54) );
  GTECH_OAI21 U56 ( .A(n57), .B(n58), .C(n52), .Z(N27) );
  GTECH_OR3 U57 ( .A(n37), .B(n59), .C(n36), .Z(n52) );
  GTECH_OAI21 U58 ( .A(n60), .B(UPDN), .C(n56), .Z(n59) );
  GTECH_NOT U59 ( .A(n47), .Z(n56) );
  GTECH_OR_NOT U60 ( .A(n4), .B(n58), .Z(n47) );
  GTECH_AND2 U61 ( .A(n50), .B(n42), .Z(n57) );
  GTECH_OR_NOT U62 ( .A(n60), .B(UPDN), .Z(n42) );
  GTECH_NOT U63 ( .A(ENABLE), .Z(n60) );
  GTECH_NAND3 U64 ( .A(n61), .B(n62), .C(ENABLE), .Z(n50) );
  GTECH_NOT U65 ( .A(UPDN), .Z(n62) );
  GTECH_NAND3 U66 ( .A(n63), .B(n37), .C(n36), .Z(n61) );
  GTECH_NOT U67 ( .A(n53), .Z(n63) );
  GTECH_OR_NOT U68 ( .A(n58), .B(n4), .Z(n53) );
  GTECH_NOT U69 ( .A(n3), .Z(n58) );
endmodule

