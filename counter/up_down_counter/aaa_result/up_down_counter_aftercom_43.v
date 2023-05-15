
module up_down_counter ( clk, ENABLE, UPDN, RST, VALUE );
  output [3:0] VALUE;
  input clk, ENABLE, UPDN, RST;
  wire   N27, N28, N29, N31, N55, n2, n3, n32, n29, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63;

  GTECH_FJK2S counter_reg_0_ ( .J(n29), .K(n29), .TI(N27), .TE(N55), .CP(clk), 
        .CD(n32), .Q(VALUE[0]), .QN(n35) );
  GTECH_FJK2S counter_reg_1_ ( .J(n29), .K(n29), .TI(N28), .TE(N55), .CP(clk), 
        .CD(n32), .Q(VALUE[1]), .QN(n2) );
  GTECH_FJK2S counter_reg_3_ ( .J(n29), .K(n29), .TI(N31), .TE(N55), .CP(clk), 
        .CD(n32), .Q(VALUE[3]), .QN(n3) );
  GTECH_FJK2S counter_reg_2_ ( .J(n29), .K(n29), .TI(N29), .TE(N55), .CP(clk), 
        .CD(n32), .Q(VALUE[2]), .QN(n34) );
  GTECH_ZERO U38 ( .Z(n29) );
  GTECH_NOT U39 ( .A(RST), .Z(n32) );
  GTECH_NAND2 U40 ( .A(n36), .B(n37), .Z(N55) );
  GTECH_OAI2N2 U41 ( .A(n3), .B(n38), .C(n39), .D(n40), .Z(N31) );
  GTECH_AND_NOT U42 ( .A(n41), .B(n36), .Z(n39) );
  GTECH_AOI21 U43 ( .A(n41), .B(ENABLE), .C(n42), .Z(n38) );
  GTECH_NAND2 U44 ( .A(n43), .B(n36), .Z(n42) );
  GTECH_OAI21 U45 ( .A(ENABLE), .B(n41), .C(n40), .Z(n43) );
  GTECH_OAI21 U46 ( .A(n34), .B(n44), .C(n45), .Z(n40) );
  GTECH_XOR2 U47 ( .A(n44), .B(n34), .Z(n41) );
  GTECH_OAI21 U48 ( .A(n36), .B(n46), .C(n47), .Z(N29) );
  GTECH_AOI21 U49 ( .A(n48), .B(n49), .C(n50), .Z(n47) );
  GTECH_NOT U50 ( .A(n51), .Z(n50) );
  GTECH_XOR2 U51 ( .A(n52), .B(n34), .Z(n48) );
  GTECH_XOR2 U52 ( .A(n34), .B(n53), .Z(n46) );
  GTECH_NAND2 U53 ( .A(n54), .B(n51), .Z(N28) );
  GTECH_MUX2 U54 ( .A(n36), .B(n55), .S(n44), .Z(n54) );
  GTECH_NAND2 U55 ( .A(n52), .B(n45), .Z(n44) );
  GTECH_NAND2 U56 ( .A(n51), .B(n56), .Z(N27) );
  GTECH_OAI21 U57 ( .A(n57), .B(n49), .C(n35), .Z(n56) );
  GTECH_NOT U58 ( .A(n55), .Z(n49) );
  GTECH_OR_NOT U59 ( .A(n37), .B(n58), .Z(n55) );
  GTECH_OR3 U60 ( .A(n52), .B(n59), .C(n60), .Z(n58) );
  GTECH_NAND2 U61 ( .A(n35), .B(n2), .Z(n52) );
  GTECH_NOT U62 ( .A(n36), .Z(n57) );
  GTECH_NAND2 U63 ( .A(UPDN), .B(ENABLE), .Z(n36) );
  GTECH_NAND4 U64 ( .A(n53), .B(n37), .C(n59), .D(n60), .Z(n51) );
  GTECH_NOT U65 ( .A(n34), .Z(n60) );
  GTECH_NOT U66 ( .A(n3), .Z(n59) );
  GTECH_NAND2 U67 ( .A(ENABLE), .B(n61), .Z(n37) );
  GTECH_NOT U68 ( .A(UPDN), .Z(n61) );
  GTECH_NOT U69 ( .A(n45), .Z(n53) );
  GTECH_NAND2 U70 ( .A(n62), .B(n63), .Z(n45) );
  GTECH_NOT U71 ( .A(n35), .Z(n63) );
  GTECH_NOT U72 ( .A(n2), .Z(n62) );
endmodule

