
module up_down_counter ( clk, ENABLE, UPDN, RST, VALUE );
  output [3:0] VALUE;
  input clk, ENABLE, UPDN, RST;
  wire   N27, N28, N29, N31, N55, n2, n31, n28, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64;

  GTECH_FJK2S counter_reg_0_ ( .J(n28), .K(n28), .TI(N27), .TE(N55), .CP(clk), 
        .CD(n31), .Q(VALUE[0]), .QN(n35) );
  GTECH_FJK2S counter_reg_1_ ( .J(n28), .K(n28), .TI(N28), .TE(N55), .CP(clk), 
        .CD(n31), .Q(VALUE[1]), .QN(n2) );
  GTECH_FJK2S counter_reg_2_ ( .J(n28), .K(n28), .TI(N29), .TE(N55), .CP(clk), 
        .CD(n31), .Q(VALUE[2]), .QN(n34) );
  GTECH_FJK2S counter_reg_3_ ( .J(n28), .K(n28), .TI(N31), .TE(N55), .CP(clk), 
        .CD(n31), .Q(VALUE[3]), .QN(n33) );
  GTECH_ZERO U38 ( .Z(n28) );
  GTECH_NOT U39 ( .A(RST), .Z(n31) );
  GTECH_NAND2 U40 ( .A(n36), .B(n37), .Z(N55) );
  GTECH_OAI21 U41 ( .A(n33), .B(n38), .C(n39), .Z(N31) );
  GTECH_NAND3 U42 ( .A(n40), .B(n41), .C(n42), .Z(n39) );
  GTECH_AOI21 U43 ( .A(n40), .B(ENABLE), .C(n43), .Z(n38) );
  GTECH_NAND2 U44 ( .A(n44), .B(n36), .Z(n43) );
  GTECH_OAI21 U45 ( .A(ENABLE), .B(n40), .C(n41), .Z(n44) );
  GTECH_OAI21 U46 ( .A(n34), .B(n45), .C(n46), .Z(n41) );
  GTECH_XOR2 U47 ( .A(n45), .B(n34), .Z(n40) );
  GTECH_OAI21 U48 ( .A(n36), .B(n47), .C(n48), .Z(N29) );
  GTECH_AOI21 U49 ( .A(n49), .B(n50), .C(n51), .Z(n48) );
  GTECH_NOT U50 ( .A(n52), .Z(n51) );
  GTECH_XOR2 U51 ( .A(n53), .B(n34), .Z(n49) );
  GTECH_XOR2 U52 ( .A(n34), .B(n54), .Z(n47) );
  GTECH_NAND2 U53 ( .A(n55), .B(n52), .Z(N28) );
  GTECH_MUX2 U54 ( .A(n36), .B(n56), .S(n45), .Z(n55) );
  GTECH_XOR2 U55 ( .A(n57), .B(n35), .Z(n45) );
  GTECH_NAND2 U56 ( .A(n52), .B(n58), .Z(N27) );
  GTECH_OAI21 U57 ( .A(n42), .B(n50), .C(n35), .Z(n58) );
  GTECH_NOT U58 ( .A(n56), .Z(n50) );
  GTECH_OAI21 U59 ( .A(n53), .B(n59), .C(n60), .Z(n56) );
  GTECH_NOT U60 ( .A(n37), .Z(n60) );
  GTECH_NAND2 U61 ( .A(n34), .B(n33), .Z(n59) );
  GTECH_NAND2 U62 ( .A(n2), .B(n35), .Z(n53) );
  GTECH_NOT U63 ( .A(n36), .Z(n42) );
  GTECH_NAND2 U64 ( .A(UPDN), .B(ENABLE), .Z(n36) );
  GTECH_NAND4 U65 ( .A(n54), .B(n37), .C(n61), .D(n62), .Z(n52) );
  GTECH_NOT U66 ( .A(n34), .Z(n62) );
  GTECH_NOT U67 ( .A(n33), .Z(n61) );
  GTECH_NAND2 U68 ( .A(ENABLE), .B(n63), .Z(n37) );
  GTECH_NOT U69 ( .A(UPDN), .Z(n63) );
  GTECH_NOT U70 ( .A(n46), .Z(n54) );
  GTECH_NAND2 U71 ( .A(n64), .B(n57), .Z(n46) );
  GTECH_NOT U72 ( .A(n2), .Z(n57) );
  GTECH_NOT U73 ( .A(n35), .Z(n64) );
endmodule

