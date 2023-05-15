
module up_down_counter ( clk, ENABLE, UPDN, RST, VALUE );
  output [3:0] VALUE;
  input clk, ENABLE, UPDN, RST;
  wire   N27, N28, N29, N31, N55, n2, n3, n4, n32, n29, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62;

  GTECH_FJK2S counter_reg_0_ ( .J(n29), .K(n29), .TI(N27), .TE(N55), .CP(clk), 
        .CD(n32), .Q(VALUE[0]), .QN(n2) );
  GTECH_FJK2S counter_reg_1_ ( .J(n29), .K(n29), .TI(N28), .TE(N55), .CP(clk), 
        .CD(n32), .Q(VALUE[1]), .QN(n3) );
  GTECH_FJK2S counter_reg_2_ ( .J(n29), .K(n29), .TI(N29), .TE(N55), .CP(clk), 
        .CD(n32), .Q(VALUE[2]), .QN(n4) );
  GTECH_FJK2S counter_reg_3_ ( .J(n29), .K(n29), .TI(N31), .TE(N55), .CP(clk), 
        .CD(n32), .Q(VALUE[3]), .QN(n34) );
  GTECH_ZERO U37 ( .Z(n29) );
  GTECH_NOT U38 ( .A(RST), .Z(n32) );
  GTECH_NAND2 U39 ( .A(n35), .B(n36), .Z(N55) );
  GTECH_OAI21 U40 ( .A(n34), .B(n37), .C(n38), .Z(N31) );
  GTECH_NAND3 U41 ( .A(n39), .B(n40), .C(n41), .Z(n38) );
  GTECH_AND3 U42 ( .A(n42), .B(n35), .C(n43), .Z(n37) );
  GTECH_NAND2 U43 ( .A(n39), .B(ENABLE), .Z(n43) );
  GTECH_OAI21 U44 ( .A(ENABLE), .B(n39), .C(n40), .Z(n42) );
  GTECH_OAI21 U45 ( .A(n4), .B(n44), .C(n45), .Z(n40) );
  GTECH_XOR2 U46 ( .A(n44), .B(n4), .Z(n39) );
  GTECH_AO21 U47 ( .A(n46), .B(n41), .C(n47), .Z(N29) );
  GTECH_OAI21 U48 ( .A(n48), .B(n49), .C(n50), .Z(n47) );
  GTECH_XOR2 U49 ( .A(n4), .B(n51), .Z(n49) );
  GTECH_XOR2 U50 ( .A(n45), .B(n4), .Z(n46) );
  GTECH_NAND2 U51 ( .A(n52), .B(n50), .Z(N28) );
  GTECH_MUX2 U52 ( .A(n35), .B(n48), .S(n44), .Z(n52) );
  GTECH_NAND2 U53 ( .A(n45), .B(n53), .Z(n44) );
  GTECH_NAND2 U54 ( .A(n50), .B(n54), .Z(N27) );
  GTECH_OAI21 U55 ( .A(n41), .B(n55), .C(n2), .Z(n54) );
  GTECH_NOT U56 ( .A(n48), .Z(n55) );
  GTECH_OR_NOT U57 ( .A(n36), .B(n56), .Z(n48) );
  GTECH_NAND3 U58 ( .A(n4), .B(n34), .C(n51), .Z(n56) );
  GTECH_NOT U59 ( .A(n53), .Z(n51) );
  GTECH_NAND2 U60 ( .A(n3), .B(n2), .Z(n53) );
  GTECH_NOT U61 ( .A(n35), .Z(n41) );
  GTECH_NAND2 U62 ( .A(UPDN), .B(ENABLE), .Z(n35) );
  GTECH_NAND4 U63 ( .A(n57), .B(n36), .C(n58), .D(n59), .Z(n50) );
  GTECH_NOT U64 ( .A(n4), .Z(n59) );
  GTECH_NOT U65 ( .A(n34), .Z(n58) );
  GTECH_NAND2 U66 ( .A(ENABLE), .B(n60), .Z(n36) );
  GTECH_NOT U67 ( .A(UPDN), .Z(n60) );
  GTECH_NOT U68 ( .A(n45), .Z(n57) );
  GTECH_NAND2 U69 ( .A(n61), .B(n62), .Z(n45) );
  GTECH_NOT U70 ( .A(n2), .Z(n62) );
  GTECH_NOT U71 ( .A(n3), .Z(n61) );
endmodule

