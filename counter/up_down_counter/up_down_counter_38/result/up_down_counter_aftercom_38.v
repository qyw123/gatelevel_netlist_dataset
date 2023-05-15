
module up_down_counter ( clk, ENABLE, UPDN, RST, VALUE );
  output [3:0] VALUE;
  input clk, ENABLE, UPDN, RST;
  wire   N27, N28, N29, N31, N55, n2, n3, n31, n28, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63;

  GTECH_FJK2S counter_reg_0_ ( .J(n28), .K(n28), .TI(N27), .TE(N55), .CP(clk), 
        .CD(n31), .Q(VALUE[0]), .QN(n2) );
  GTECH_FJK2S counter_reg_1_ ( .J(n28), .K(n28), .TI(N28), .TE(N55), .CP(clk), 
        .CD(n31), .Q(VALUE[1]), .QN(n3) );
  GTECH_FJK2S counter_reg_2_ ( .J(n28), .K(n28), .TI(N29), .TE(N55), .CP(clk), 
        .CD(n31), .Q(VALUE[2]), .QN(n34) );
  GTECH_FJK2S counter_reg_3_ ( .J(n28), .K(n28), .TI(N31), .TE(N55), .CP(clk), 
        .CD(n31), .Q(VALUE[3]), .QN(n33) );
  GTECH_ZERO U37 ( .Z(n28) );
  GTECH_NOT U38 ( .A(RST), .Z(n31) );
  GTECH_NAND2 U39 ( .A(n35), .B(n36), .Z(N55) );
  GTECH_OAI21 U40 ( .A(n33), .B(n37), .C(n38), .Z(N31) );
  GTECH_NAND3 U41 ( .A(n39), .B(n40), .C(n41), .Z(n38) );
  GTECH_AOI21 U42 ( .A(n39), .B(ENABLE), .C(n42), .Z(n37) );
  GTECH_NAND2 U43 ( .A(n43), .B(n36), .Z(n42) );
  GTECH_OAI21 U44 ( .A(ENABLE), .B(n39), .C(n40), .Z(n43) );
  GTECH_OAI21 U45 ( .A(n34), .B(n44), .C(n45), .Z(n40) );
  GTECH_XOR2 U46 ( .A(n44), .B(n34), .Z(n39) );
  GTECH_NAND2 U47 ( .A(n46), .B(n47), .Z(N29) );
  GTECH_OA22 U48 ( .A(n34), .B(n48), .C(n49), .D(n50), .Z(n46) );
  GTECH_OA22 U49 ( .A(n51), .B(n52), .C(n36), .D(n45), .Z(n49) );
  GTECH_NAND2 U50 ( .A(n3), .B(n2), .Z(n52) );
  GTECH_OA22 U51 ( .A(n53), .B(n51), .C(n54), .D(n36), .Z(n48) );
  GTECH_AND2 U52 ( .A(n3), .B(n2), .Z(n53) );
  GTECH_NAND2 U53 ( .A(n55), .B(n47), .Z(N28) );
  GTECH_OA22 U54 ( .A(n56), .B(n51), .C(n44), .D(n36), .Z(n55) );
  GTECH_NOT U55 ( .A(n44), .Z(n56) );
  GTECH_OAI21 U56 ( .A(n57), .B(n58), .C(n45), .Z(n44) );
  GTECH_NAND2 U57 ( .A(n47), .B(n59), .Z(N27) );
  GTECH_OAI21 U58 ( .A(n60), .B(n41), .C(n2), .Z(n59) );
  GTECH_NOT U59 ( .A(n36), .Z(n41) );
  GTECH_NAND2 U60 ( .A(UPDN), .B(ENABLE), .Z(n36) );
  GTECH_NOT U61 ( .A(n51), .Z(n60) );
  GTECH_OR_NOT U62 ( .A(n35), .B(n61), .Z(n51) );
  GTECH_NAND3 U63 ( .A(n3), .B(n33), .C(n34), .Z(n61) );
  GTECH_NAND4 U64 ( .A(n54), .B(n35), .C(n62), .D(n50), .Z(n47) );
  GTECH_NOT U65 ( .A(n34), .Z(n50) );
  GTECH_NOT U66 ( .A(n33), .Z(n62) );
  GTECH_NAND2 U67 ( .A(ENABLE), .B(n63), .Z(n35) );
  GTECH_NOT U68 ( .A(UPDN), .Z(n63) );
  GTECH_NOT U69 ( .A(n45), .Z(n54) );
  GTECH_NAND2 U70 ( .A(n58), .B(n57), .Z(n45) );
  GTECH_NOT U71 ( .A(n2), .Z(n57) );
  GTECH_NOT U72 ( .A(n3), .Z(n58) );
endmodule

