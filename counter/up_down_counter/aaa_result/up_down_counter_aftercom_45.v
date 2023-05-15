
module up_down_counter ( clk, ENABLE, UPDN, RST, VALUE );
  output [3:0] VALUE;
  input clk, ENABLE, UPDN, RST;
  wire   N27, N28, N29, N31, N55, n2, n31, n28, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67;

  GTECH_FJK2S counter_reg_0_ ( .J(n28), .K(n28), .TI(N27), .TE(N55), .CP(clk), 
        .CD(n31), .Q(VALUE[0]), .QN(n35) );
  GTECH_FJK2S counter_reg_1_ ( .J(n28), .K(n28), .TI(N28), .TE(N55), .CP(clk), 
        .CD(n31), .Q(VALUE[1]), .QN(n2) );
  GTECH_FJK2S counter_reg_3_ ( .J(n28), .K(n28), .TI(N31), .TE(N55), .CP(clk), 
        .CD(n31), .Q(VALUE[3]), .QN(n33) );
  GTECH_FJK2S counter_reg_2_ ( .J(n28), .K(n28), .TI(N29), .TE(N55), .CP(clk), 
        .CD(n31), .Q(VALUE[2]), .QN(n34) );
  GTECH_ZERO U38 ( .Z(n28) );
  GTECH_NOT U39 ( .A(RST), .Z(n31) );
  GTECH_OR_NOT U40 ( .A(n36), .B(n37), .Z(N55) );
  GTECH_OAI22 U41 ( .A(n33), .B(n38), .C(n37), .D(n39), .Z(N31) );
  GTECH_OR_NOT U42 ( .A(n40), .B(n41), .Z(n39) );
  GTECH_OA21 U43 ( .A(n42), .B(n40), .C(n43), .Z(n38) );
  GTECH_AND_NOT U44 ( .A(n37), .B(n44), .Z(n43) );
  GTECH_OA21 U45 ( .A(ENABLE), .B(n45), .C(n41), .Z(n44) );
  GTECH_XOR2 U46 ( .A(n46), .B(n34), .Z(n41) );
  GTECH_NOT U47 ( .A(n45), .Z(n40) );
  GTECH_AO21 U48 ( .A(n47), .B(n48), .C(n49), .Z(n45) );
  GTECH_AO21 U49 ( .A(n50), .B(n51), .C(n52), .Z(N29) );
  GTECH_AO21 U50 ( .A(n53), .B(n54), .C(n55), .Z(n52) );
  GTECH_XOR2 U51 ( .A(n56), .B(n34), .Z(n53) );
  GTECH_XOR2 U52 ( .A(n57), .B(n34), .Z(n50) );
  GTECH_OR_NOT U53 ( .A(n55), .B(n58), .Z(N28) );
  GTECH_MUX2 U54 ( .A(n59), .B(n37), .S(n47), .Z(n58) );
  GTECH_NOT U55 ( .A(n46), .Z(n47) );
  GTECH_OR_NOT U56 ( .A(n60), .B(n57), .Z(n46) );
  GTECH_NOT U57 ( .A(n61), .Z(n55) );
  GTECH_OR_NOT U58 ( .A(n62), .B(n61), .Z(N27) );
  GTECH_NAND4 U59 ( .A(n49), .B(n63), .C(n64), .D(n48), .Z(n61) );
  GTECH_NOT U60 ( .A(n34), .Z(n48) );
  GTECH_NOT U61 ( .A(n33), .Z(n64) );
  GTECH_NOT U62 ( .A(n57), .Z(n49) );
  GTECH_OR_NOT U63 ( .A(n2), .B(n65), .Z(n57) );
  GTECH_NOT U64 ( .A(n35), .Z(n65) );
  GTECH_OA21 U65 ( .A(n51), .B(n54), .C(n35), .Z(n62) );
  GTECH_NOT U66 ( .A(n59), .Z(n54) );
  GTECH_OR_NOT U67 ( .A(n66), .B(n36), .Z(n59) );
  GTECH_NOT U68 ( .A(n63), .Z(n36) );
  GTECH_OR_NOT U69 ( .A(UPDN), .B(ENABLE), .Z(n63) );
  GTECH_AND3 U70 ( .A(n60), .B(n34), .C(n33), .Z(n66) );
  GTECH_NOT U71 ( .A(n56), .Z(n60) );
  GTECH_OR_NOT U72 ( .A(n67), .B(n35), .Z(n56) );
  GTECH_NOT U73 ( .A(n2), .Z(n67) );
  GTECH_NOT U74 ( .A(n37), .Z(n51) );
  GTECH_OR_NOT U75 ( .A(n42), .B(UPDN), .Z(n37) );
  GTECH_NOT U76 ( .A(ENABLE), .Z(n42) );
endmodule

