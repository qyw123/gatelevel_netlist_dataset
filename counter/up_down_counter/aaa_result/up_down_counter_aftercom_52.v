
module up_down_counter ( clk, ENABLE, UPDN, RST, VALUE );
  output [3:0] VALUE;
  input clk, ENABLE, UPDN, RST;
  wire   N27, N28, N29, N31, N55, n2, n32, n29, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66;

  GTECH_FJK2S counter_reg_0_ ( .J(n29), .K(n29), .TI(N27), .TE(N55), .CP(clk), 
        .CD(n32), .Q(VALUE[0]), .QN(n36) );
  GTECH_FJK2S counter_reg_1_ ( .J(n29), .K(n29), .TI(N28), .TE(N55), .CP(clk), 
        .CD(n32), .Q(VALUE[1]), .QN(n2) );
  GTECH_FJK2S counter_reg_3_ ( .J(n29), .K(n29), .TI(N31), .TE(N55), .CP(clk), 
        .CD(n32), .Q(VALUE[3]), .QN(n34) );
  GTECH_FJK2S counter_reg_2_ ( .J(n29), .K(n29), .TI(N29), .TE(N55), .CP(clk), 
        .CD(n32), .Q(VALUE[2]), .QN(n35) );
  GTECH_ZERO U39 ( .Z(n29) );
  GTECH_NOT U40 ( .A(RST), .Z(n32) );
  GTECH_NAND2 U41 ( .A(n37), .B(n38), .Z(N55) );
  GTECH_OAI22 U42 ( .A(n34), .B(n39), .C(n37), .D(n40), .Z(N31) );
  GTECH_NAND2 U43 ( .A(n41), .B(n42), .Z(n40) );
  GTECH_OA21 U44 ( .A(n43), .B(n44), .C(n45), .Z(n39) );
  GTECH_AND_NOT U45 ( .A(n37), .B(n46), .Z(n45) );
  GTECH_OA21 U46 ( .A(ENABLE), .B(n42), .C(n41), .Z(n46) );
  GTECH_XOR2 U47 ( .A(n47), .B(n35), .Z(n41) );
  GTECH_NOT U48 ( .A(n42), .Z(n44) );
  GTECH_AO21 U49 ( .A(n48), .B(n49), .C(n50), .Z(n42) );
  GTECH_NOT U50 ( .A(ENABLE), .Z(n43) );
  GTECH_NOT U51 ( .A(n51), .Z(N29) );
  GTECH_OA21 U52 ( .A(n52), .B(n53), .C(n54), .Z(n51) );
  GTECH_OA21 U53 ( .A(n37), .B(n55), .C(n56), .Z(n54) );
  GTECH_XNOR2 U54 ( .A(n57), .B(n35), .Z(n55) );
  GTECH_XNOR2 U55 ( .A(n58), .B(n35), .Z(n53) );
  GTECH_NAND2 U56 ( .A(n59), .B(n56), .Z(N28) );
  GTECH_MUX2 U57 ( .A(n52), .B(n37), .S(n48), .Z(n59) );
  GTECH_NOT U58 ( .A(n47), .Z(n48) );
  GTECH_NAND2 U59 ( .A(n58), .B(n57), .Z(n47) );
  GTECH_NAND2 U60 ( .A(n56), .B(n60), .Z(N27) );
  GTECH_AO21 U61 ( .A(n37), .B(n52), .C(n61), .Z(n60) );
  GTECH_OR_NOT U62 ( .A(n38), .B(n62), .Z(n52) );
  GTECH_OR_NOT U63 ( .A(n58), .B(n63), .Z(n62) );
  GTECH_AND2 U64 ( .A(n35), .B(n34), .Z(n63) );
  GTECH_NAND2 U65 ( .A(n36), .B(n2), .Z(n58) );
  GTECH_NAND2 U66 ( .A(UPDN), .B(ENABLE), .Z(n37) );
  GTECH_NAND4 U67 ( .A(n50), .B(n38), .C(n64), .D(n49), .Z(n56) );
  GTECH_NOT U68 ( .A(n35), .Z(n49) );
  GTECH_NOT U69 ( .A(n34), .Z(n64) );
  GTECH_NAND2 U70 ( .A(ENABLE), .B(n65), .Z(n38) );
  GTECH_NOT U71 ( .A(UPDN), .Z(n65) );
  GTECH_NOT U72 ( .A(n57), .Z(n50) );
  GTECH_NAND2 U73 ( .A(n66), .B(n61), .Z(n57) );
  GTECH_NOT U74 ( .A(n36), .Z(n61) );
  GTECH_NOT U75 ( .A(n2), .Z(n66) );
endmodule

