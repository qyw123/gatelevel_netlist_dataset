
module up_down_counter ( clk, ENABLE, UPDN, RST, VALUE );
  output [3:0] VALUE;
  input clk, ENABLE, UPDN, RST;
  wire   N27, N28, N29, N31, N55, n2, n3, n28, n25, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60;

  GTECH_FJK2S counter_reg_0_ ( .J(n25), .K(n25), .TI(N27), .TE(N55), .CP(clk), 
        .CD(n28), .Q(VALUE[0]), .QN(n2) );
  GTECH_FJK2S counter_reg_1_ ( .J(n25), .K(n25), .TI(N28), .TE(N55), .CP(clk), 
        .CD(n28), .Q(VALUE[1]), .QN(n3) );
  GTECH_FJK2S counter_reg_2_ ( .J(n25), .K(n25), .TI(N29), .TE(N55), .CP(clk), 
        .CD(n28), .Q(VALUE[2]), .QN(n31) );
  GTECH_FJK2S counter_reg_3_ ( .J(n25), .K(n25), .TI(N31), .TE(N55), .CP(clk), 
        .CD(n28), .Q(VALUE[3]), .QN(n30) );
  GTECH_ZERO U34 ( .Z(n25) );
  GTECH_NOT U35 ( .A(RST), .Z(n28) );
  GTECH_NAND2 U36 ( .A(n32), .B(n33), .Z(N55) );
  GTECH_OAI21 U37 ( .A(n30), .B(n34), .C(n35), .Z(N31) );
  GTECH_NAND3 U38 ( .A(n36), .B(n37), .C(n38), .Z(n35) );
  GTECH_AOI21 U39 ( .A(n36), .B(ENABLE), .C(n39), .Z(n34) );
  GTECH_NAND2 U40 ( .A(n40), .B(n33), .Z(n39) );
  GTECH_OAI21 U41 ( .A(ENABLE), .B(n36), .C(n37), .Z(n40) );
  GTECH_OAI21 U42 ( .A(n31), .B(n41), .C(n42), .Z(n37) );
  GTECH_XNOR2 U43 ( .A(n31), .B(n43), .Z(n36) );
  GTECH_OAI21 U44 ( .A(n44), .B(n45), .C(n46), .Z(N29) );
  GTECH_AOI21 U45 ( .A(n47), .B(n38), .C(n48), .Z(n46) );
  GTECH_NOT U46 ( .A(n49), .Z(n48) );
  GTECH_XNOR2 U47 ( .A(n31), .B(n50), .Z(n47) );
  GTECH_XNOR2 U48 ( .A(n31), .B(n51), .Z(n45) );
  GTECH_NAND2 U49 ( .A(n3), .B(n2), .Z(n51) );
  GTECH_NAND2 U50 ( .A(n52), .B(n49), .Z(N28) );
  GTECH_MUX2 U51 ( .A(n44), .B(n33), .S(n43), .Z(n52) );
  GTECH_NOT U52 ( .A(n41), .Z(n43) );
  GTECH_OAI21 U53 ( .A(n53), .B(n54), .C(n42), .Z(n41) );
  GTECH_NAND2 U54 ( .A(n49), .B(n55), .Z(N27) );
  GTECH_OAI21 U55 ( .A(n56), .B(n38), .C(n2), .Z(n55) );
  GTECH_NOT U56 ( .A(n33), .Z(n38) );
  GTECH_NAND2 U57 ( .A(UPDN), .B(ENABLE), .Z(n33) );
  GTECH_NOT U58 ( .A(n44), .Z(n56) );
  GTECH_OR_NOT U59 ( .A(n32), .B(n57), .Z(n44) );
  GTECH_NAND3 U60 ( .A(n3), .B(n30), .C(n31), .Z(n57) );
  GTECH_NAND4 U61 ( .A(n50), .B(n32), .C(n58), .D(n59), .Z(n49) );
  GTECH_NOT U62 ( .A(n31), .Z(n59) );
  GTECH_NOT U63 ( .A(n30), .Z(n58) );
  GTECH_NAND2 U64 ( .A(ENABLE), .B(n60), .Z(n32) );
  GTECH_NOT U65 ( .A(UPDN), .Z(n60) );
  GTECH_NOT U66 ( .A(n42), .Z(n50) );
  GTECH_NAND2 U67 ( .A(n54), .B(n53), .Z(n42) );
  GTECH_NOT U68 ( .A(n2), .Z(n53) );
  GTECH_NOT U69 ( .A(n3), .Z(n54) );
endmodule

