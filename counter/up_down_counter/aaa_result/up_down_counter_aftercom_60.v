
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
  GTECH_FJK2S counter_reg_2_ ( .J(n29), .K(n29), .TI(N29), .TE(N55), .CP(clk), 
        .CD(n32), .Q(VALUE[2]), .QN(n35) );
  GTECH_FJK2S counter_reg_3_ ( .J(n29), .K(n29), .TI(N31), .TE(N55), .CP(clk), 
        .CD(n32), .Q(VALUE[3]), .QN(n34) );
  GTECH_ZERO U39 ( .Z(n29) );
  GTECH_NOT U40 ( .A(RST), .Z(n32) );
  GTECH_NAND2 U41 ( .A(n37), .B(n38), .Z(N55) );
  GTECH_OAI22 U42 ( .A(n34), .B(n39), .C(n37), .D(n40), .Z(N31) );
  GTECH_NAND2 U43 ( .A(n41), .B(n42), .Z(n40) );
  GTECH_OA21 U44 ( .A(n43), .B(n44), .C(n45), .Z(n39) );
  GTECH_AND_NOT U45 ( .A(n37), .B(n46), .Z(n45) );
  GTECH_OA21 U46 ( .A(ENABLE), .B(n42), .C(n41), .Z(n46) );
  GTECH_XNOR2 U47 ( .A(n35), .B(n47), .Z(n41) );
  GTECH_NOT U48 ( .A(n42), .Z(n44) );
  GTECH_AO21 U49 ( .A(n47), .B(n48), .C(n49), .Z(n42) );
  GTECH_NOT U50 ( .A(ENABLE), .Z(n43) );
  GTECH_NAND2 U51 ( .A(n50), .B(n51), .Z(N29) );
  GTECH_MUX2 U52 ( .A(n52), .B(n53), .S(n35), .Z(n51) );
  GTECH_OR_NOT U53 ( .A(n37), .B(n49), .Z(n53) );
  GTECH_OA21 U54 ( .A(n37), .B(n49), .C(n54), .Z(n52) );
  GTECH_AO21 U55 ( .A(n36), .B(n2), .C(n55), .Z(n54) );
  GTECH_OA21 U56 ( .A(n55), .B(n56), .C(n57), .Z(n50) );
  GTECH_NAND2 U57 ( .A(n58), .B(n57), .Z(N28) );
  GTECH_MUX2 U58 ( .A(n55), .B(n37), .S(n47), .Z(n58) );
  GTECH_NOT U59 ( .A(n59), .Z(n47) );
  GTECH_AO21 U60 ( .A(n36), .B(n2), .C(n49), .Z(n59) );
  GTECH_NAND2 U61 ( .A(n57), .B(n60), .Z(N27) );
  GTECH_AO21 U62 ( .A(n37), .B(n55), .C(n61), .Z(n60) );
  GTECH_AO21 U63 ( .A(n34), .B(n62), .C(n38), .Z(n55) );
  GTECH_NOT U64 ( .A(n56), .Z(n62) );
  GTECH_NAND3 U65 ( .A(n36), .B(n2), .C(n35), .Z(n56) );
  GTECH_NAND2 U66 ( .A(UPDN), .B(ENABLE), .Z(n37) );
  GTECH_NAND4 U67 ( .A(n49), .B(n38), .C(n63), .D(n48), .Z(n57) );
  GTECH_NOT U68 ( .A(n35), .Z(n48) );
  GTECH_NOT U69 ( .A(n34), .Z(n63) );
  GTECH_NAND2 U70 ( .A(ENABLE), .B(n64), .Z(n38) );
  GTECH_NOT U71 ( .A(UPDN), .Z(n64) );
  GTECH_NOT U72 ( .A(n65), .Z(n49) );
  GTECH_NAND2 U73 ( .A(n61), .B(n66), .Z(n65) );
  GTECH_NOT U74 ( .A(n2), .Z(n66) );
  GTECH_NOT U75 ( .A(n36), .Z(n61) );
endmodule

