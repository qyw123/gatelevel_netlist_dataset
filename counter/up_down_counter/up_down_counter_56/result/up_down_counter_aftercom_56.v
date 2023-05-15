
module up_down_counter ( clk, ENABLE, UPDN, RST, VALUE );
  output [3:0] VALUE;
  input clk, ENABLE, UPDN, RST;
  wire   N27, N28, N29, N31, N55, n2, n3, n34, n31, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66;

  GTECH_FJK2S counter_reg_0_ ( .J(n31), .K(n31), .TI(N27), .TE(N55), .CP(clk), 
        .CD(n34), .Q(VALUE[0]), .QN(n2) );
  GTECH_FJK2S counter_reg_1_ ( .J(n31), .K(n31), .TI(N28), .TE(N55), .CP(clk), 
        .CD(n34), .Q(VALUE[1]), .QN(n3) );
  GTECH_FJK2S counter_reg_2_ ( .J(n31), .K(n31), .TI(N29), .TE(N55), .CP(clk), 
        .CD(n34), .Q(VALUE[2]), .QN(n37) );
  GTECH_FJK2S counter_reg_3_ ( .J(n31), .K(n31), .TI(N31), .TE(N55), .CP(clk), 
        .CD(n34), .Q(VALUE[3]), .QN(n36) );
  GTECH_ZERO U40 ( .Z(n31) );
  GTECH_NOT U41 ( .A(RST), .Z(n34) );
  GTECH_NAND2 U42 ( .A(n38), .B(n39), .Z(N55) );
  GTECH_OAI21 U43 ( .A(n36), .B(n40), .C(n41), .Z(N31) );
  GTECH_NAND3 U44 ( .A(n42), .B(n43), .C(n44), .Z(n41) );
  GTECH_AOI21 U45 ( .A(n42), .B(ENABLE), .C(n45), .Z(n40) );
  GTECH_NAND2 U46 ( .A(n38), .B(n46), .Z(n45) );
  GTECH_OAI21 U47 ( .A(ENABLE), .B(n42), .C(n44), .Z(n46) );
  GTECH_XOR2 U48 ( .A(n47), .B(n37), .Z(n44) );
  GTECH_OAI21 U49 ( .A(n37), .B(n47), .C(n48), .Z(n42) );
  GTECH_NAND2 U50 ( .A(n49), .B(n50), .Z(N29) );
  GTECH_MUX2 U51 ( .A(n51), .B(n52), .S(n37), .Z(n50) );
  GTECH_NAND2 U52 ( .A(n53), .B(n43), .Z(n52) );
  GTECH_OA21 U53 ( .A(n53), .B(n38), .C(n54), .Z(n51) );
  GTECH_OAI21 U54 ( .A(n55), .B(n56), .C(n57), .Z(n54) );
  GTECH_OA21 U55 ( .A(n58), .B(n59), .C(n60), .Z(n49) );
  GTECH_NAND2 U56 ( .A(n61), .B(n60), .Z(N28) );
  GTECH_MUX2 U57 ( .A(n38), .B(n59), .S(n47), .Z(n61) );
  GTECH_XOR2 U58 ( .A(n56), .B(n3), .Z(n47) );
  GTECH_NAND2 U59 ( .A(n60), .B(n62), .Z(N27) );
  GTECH_OAI21 U60 ( .A(n43), .B(n57), .C(n2), .Z(n62) );
  GTECH_NOT U61 ( .A(n59), .Z(n57) );
  GTECH_OAI21 U62 ( .A(n58), .B(n63), .C(n64), .Z(n59) );
  GTECH_NOT U63 ( .A(n39), .Z(n64) );
  GTECH_NAND3 U64 ( .A(n2), .B(n3), .C(n37), .Z(n58) );
  GTECH_NOT U65 ( .A(n38), .Z(n43) );
  GTECH_NAND2 U66 ( .A(UPDN), .B(ENABLE), .Z(n38) );
  GTECH_NAND4 U67 ( .A(n53), .B(n39), .C(n63), .D(n65), .Z(n60) );
  GTECH_NOT U68 ( .A(n37), .Z(n65) );
  GTECH_NOT U69 ( .A(n36), .Z(n63) );
  GTECH_NAND2 U70 ( .A(ENABLE), .B(n66), .Z(n39) );
  GTECH_NOT U71 ( .A(UPDN), .Z(n66) );
  GTECH_NOT U72 ( .A(n48), .Z(n53) );
  GTECH_NAND2 U73 ( .A(n56), .B(n55), .Z(n48) );
  GTECH_NOT U74 ( .A(n3), .Z(n55) );
  GTECH_NOT U75 ( .A(n2), .Z(n56) );
endmodule

