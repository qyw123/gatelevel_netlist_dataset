
module up_down_counter ( clk, ENABLE, UPDN, RST, VALUE );
  output [3:0] VALUE;
  input clk, ENABLE, UPDN, RST;
  wire   N27, N28, N29, N31, N55, n2, n3, n32, n29, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65;

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
  GTECH_OAI22 U41 ( .A(n3), .B(n38), .C(n36), .D(n39), .Z(N31) );
  GTECH_NAND2 U42 ( .A(n40), .B(n41), .Z(n39) );
  GTECH_OA21 U43 ( .A(n42), .B(n43), .C(n44), .Z(n38) );
  GTECH_AND_NOT U44 ( .A(n36), .B(n45), .Z(n44) );
  GTECH_OA21 U45 ( .A(ENABLE), .B(n41), .C(n40), .Z(n45) );
  GTECH_XOR2 U46 ( .A(n46), .B(n34), .Z(n40) );
  GTECH_NOT U47 ( .A(n41), .Z(n43) );
  GTECH_AO21 U48 ( .A(n47), .B(n48), .C(n49), .Z(n41) );
  GTECH_NOT U49 ( .A(ENABLE), .Z(n42) );
  GTECH_NOT U50 ( .A(n50), .Z(N29) );
  GTECH_OA21 U51 ( .A(n51), .B(n52), .C(n53), .Z(n50) );
  GTECH_OA21 U52 ( .A(n36), .B(n54), .C(n55), .Z(n53) );
  GTECH_XNOR2 U53 ( .A(n56), .B(n34), .Z(n54) );
  GTECH_XNOR2 U54 ( .A(n57), .B(n34), .Z(n52) );
  GTECH_NAND2 U55 ( .A(n58), .B(n55), .Z(N28) );
  GTECH_MUX2 U56 ( .A(n51), .B(n36), .S(n47), .Z(n58) );
  GTECH_NOT U57 ( .A(n46), .Z(n47) );
  GTECH_NAND2 U58 ( .A(n57), .B(n56), .Z(n46) );
  GTECH_NAND2 U59 ( .A(n55), .B(n59), .Z(N27) );
  GTECH_AO21 U60 ( .A(n36), .B(n51), .C(n60), .Z(n59) );
  GTECH_OR_NOT U61 ( .A(n37), .B(n61), .Z(n51) );
  GTECH_OR_NOT U62 ( .A(n57), .B(n62), .Z(n61) );
  GTECH_AND2 U63 ( .A(n34), .B(n3), .Z(n62) );
  GTECH_NAND2 U64 ( .A(n35), .B(n2), .Z(n57) );
  GTECH_NAND2 U65 ( .A(UPDN), .B(ENABLE), .Z(n36) );
  GTECH_NAND4 U66 ( .A(n49), .B(n37), .C(n63), .D(n48), .Z(n55) );
  GTECH_NOT U67 ( .A(n34), .Z(n48) );
  GTECH_NOT U68 ( .A(n3), .Z(n63) );
  GTECH_NAND2 U69 ( .A(ENABLE), .B(n64), .Z(n37) );
  GTECH_NOT U70 ( .A(UPDN), .Z(n64) );
  GTECH_NOT U71 ( .A(n56), .Z(n49) );
  GTECH_NAND2 U72 ( .A(n60), .B(n65), .Z(n56) );
  GTECH_NOT U73 ( .A(n2), .Z(n65) );
  GTECH_NOT U74 ( .A(n35), .Z(n60) );
endmodule

