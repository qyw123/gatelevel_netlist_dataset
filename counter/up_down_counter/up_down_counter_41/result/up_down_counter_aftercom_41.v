
module up_down_counter ( clk, ENABLE, UPDN, RST, VALUE );
  output [3:0] VALUE;
  input clk, ENABLE, UPDN, RST;
  wire   N27, N28, N29, N31, N55, n2, n3, n29, n26, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60;

  GTECH_FJK2S counter_reg_0_ ( .J(n26), .K(n26), .TI(N27), .TE(N55), .CP(clk), 
        .CD(n29), .Q(VALUE[0]), .QN(n2) );
  GTECH_FJK2S counter_reg_1_ ( .J(n26), .K(n26), .TI(N28), .TE(N55), .CP(clk), 
        .CD(n29), .Q(VALUE[1]), .QN(n3) );
  GTECH_FJK2S counter_reg_2_ ( .J(n26), .K(n26), .TI(N29), .TE(N55), .CP(clk), 
        .CD(n29), .Q(VALUE[2]), .QN(n32) );
  GTECH_FJK2S counter_reg_3_ ( .J(n26), .K(n26), .TI(N31), .TE(N55), .CP(clk), 
        .CD(n29), .Q(VALUE[3]), .QN(n31) );
  GTECH_ZERO U35 ( .Z(n26) );
  GTECH_NOT U36 ( .A(RST), .Z(n29) );
  GTECH_NAND2 U37 ( .A(n33), .B(n34), .Z(N55) );
  GTECH_OAI21 U38 ( .A(n31), .B(n35), .C(n36), .Z(N31) );
  GTECH_NAND3 U39 ( .A(n37), .B(n38), .C(n39), .Z(n36) );
  GTECH_AOI21 U40 ( .A(n37), .B(ENABLE), .C(n40), .Z(n35) );
  GTECH_NAND2 U41 ( .A(n41), .B(n34), .Z(n40) );
  GTECH_OAI21 U42 ( .A(ENABLE), .B(n37), .C(n38), .Z(n41) );
  GTECH_OAI21 U43 ( .A(n32), .B(n42), .C(n43), .Z(n38) );
  GTECH_XOR2 U44 ( .A(n42), .B(n32), .Z(n37) );
  GTECH_OAI21 U45 ( .A(n44), .B(n45), .C(n46), .Z(N29) );
  GTECH_AOI21 U46 ( .A(n47), .B(n39), .C(n48), .Z(n46) );
  GTECH_NOT U47 ( .A(n49), .Z(n48) );
  GTECH_XOR2 U48 ( .A(n43), .B(n32), .Z(n47) );
  GTECH_XOR2 U49 ( .A(n32), .B(n50), .Z(n45) );
  GTECH_AND2 U50 ( .A(n2), .B(n3), .Z(n50) );
  GTECH_NAND2 U51 ( .A(n51), .B(n49), .Z(N28) );
  GTECH_MUX2 U52 ( .A(n34), .B(n44), .S(n42), .Z(n51) );
  GTECH_XOR2 U53 ( .A(n52), .B(n3), .Z(n42) );
  GTECH_NAND2 U54 ( .A(n49), .B(n53), .Z(N27) );
  GTECH_OAI21 U55 ( .A(n54), .B(n39), .C(n2), .Z(n53) );
  GTECH_NOT U56 ( .A(n34), .Z(n39) );
  GTECH_NAND2 U57 ( .A(UPDN), .B(ENABLE), .Z(n34) );
  GTECH_NOT U58 ( .A(n44), .Z(n54) );
  GTECH_OR_NOT U59 ( .A(n33), .B(n55), .Z(n44) );
  GTECH_NAND3 U60 ( .A(n3), .B(n31), .C(n32), .Z(n55) );
  GTECH_NAND4 U61 ( .A(n56), .B(n33), .C(n57), .D(n58), .Z(n49) );
  GTECH_NOT U62 ( .A(n32), .Z(n58) );
  GTECH_NOT U63 ( .A(n31), .Z(n57) );
  GTECH_NAND2 U64 ( .A(ENABLE), .B(n59), .Z(n33) );
  GTECH_NOT U65 ( .A(UPDN), .Z(n59) );
  GTECH_NOT U66 ( .A(n43), .Z(n56) );
  GTECH_NAND2 U67 ( .A(n60), .B(n52), .Z(n43) );
  GTECH_NOT U68 ( .A(n2), .Z(n52) );
  GTECH_NOT U69 ( .A(n3), .Z(n60) );
endmodule

