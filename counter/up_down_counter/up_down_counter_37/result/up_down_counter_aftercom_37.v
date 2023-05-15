
module up_down_counter ( clk, ENABLE, UPDN, RST, VALUE );
  output [3:0] VALUE;
  input clk, ENABLE, UPDN, RST;
  wire   N27, N28, N29, N31, N55, n2, n35, n32, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68;

  GTECH_FJK2S counter_reg_0_ ( .J(n32), .K(n32), .TI(N27), .TE(N55), .CP(clk), 
        .CD(n35), .Q(VALUE[0]), .QN(n39) );
  GTECH_FJK2S counter_reg_1_ ( .J(n32), .K(n32), .TI(N28), .TE(N55), .CP(clk), 
        .CD(n35), .Q(VALUE[1]), .QN(n2) );
  GTECH_FJK2S counter_reg_2_ ( .J(n32), .K(n32), .TI(N29), .TE(N55), .CP(clk), 
        .CD(n35), .Q(VALUE[2]), .QN(n38) );
  GTECH_FJK2S counter_reg_3_ ( .J(n32), .K(n32), .TI(N31), .TE(N55), .CP(clk), 
        .CD(n35), .Q(VALUE[3]), .QN(n37) );
  GTECH_ZERO U42 ( .Z(n32) );
  GTECH_NOT U43 ( .A(RST), .Z(n35) );
  GTECH_NAND2 U44 ( .A(n40), .B(n41), .Z(N55) );
  GTECH_OAI22 U45 ( .A(n37), .B(n42), .C(n40), .D(n43), .Z(N31) );
  GTECH_NAND2 U46 ( .A(n44), .B(n45), .Z(n43) );
  GTECH_AOI21 U47 ( .A(n44), .B(ENABLE), .C(n46), .Z(n42) );
  GTECH_NAND2 U48 ( .A(n47), .B(n40), .Z(n46) );
  GTECH_NAND2 U49 ( .A(n45), .B(n48), .Z(n47) );
  GTECH_OR2 U50 ( .A(n44), .B(ENABLE), .Z(n48) );
  GTECH_AO21 U51 ( .A(n49), .B(n50), .C(n51), .Z(n45) );
  GTECH_XOR2 U52 ( .A(n52), .B(n38), .Z(n44) );
  GTECH_NAND3 U53 ( .A(n53), .B(n54), .C(n55), .Z(N29) );
  GTECH_OR_NOT U54 ( .A(n56), .B(n57), .Z(n55) );
  GTECH_XOR2 U55 ( .A(n58), .B(n38), .Z(n57) );
  GTECH_OR_NOT U56 ( .A(n40), .B(n59), .Z(n54) );
  GTECH_XOR2 U57 ( .A(n60), .B(n38), .Z(n59) );
  GTECH_NAND2 U58 ( .A(n61), .B(n53), .Z(N28) );
  GTECH_MUX2 U59 ( .A(n56), .B(n40), .S(n49), .Z(n61) );
  GTECH_NOT U60 ( .A(n52), .Z(n49) );
  GTECH_XOR2 U61 ( .A(n62), .B(n39), .Z(n52) );
  GTECH_NAND2 U62 ( .A(n53), .B(n63), .Z(N27) );
  GTECH_AO21 U63 ( .A(n40), .B(n56), .C(n64), .Z(n63) );
  GTECH_OR_NOT U64 ( .A(n41), .B(n65), .Z(n56) );
  GTECH_OR_NOT U65 ( .A(n58), .B(n66), .Z(n65) );
  GTECH_AND2 U66 ( .A(n38), .B(n37), .Z(n66) );
  GTECH_NAND2 U67 ( .A(n2), .B(n39), .Z(n58) );
  GTECH_NAND2 U68 ( .A(UPDN), .B(ENABLE), .Z(n40) );
  GTECH_NAND4 U69 ( .A(n51), .B(n41), .C(n67), .D(n50), .Z(n53) );
  GTECH_NOT U70 ( .A(n38), .Z(n50) );
  GTECH_NOT U71 ( .A(n37), .Z(n67) );
  GTECH_NAND2 U72 ( .A(ENABLE), .B(n68), .Z(n41) );
  GTECH_NOT U73 ( .A(UPDN), .Z(n68) );
  GTECH_NOT U74 ( .A(n60), .Z(n51) );
  GTECH_NAND2 U75 ( .A(n62), .B(n64), .Z(n60) );
  GTECH_NOT U76 ( .A(n39), .Z(n64) );
  GTECH_NOT U77 ( .A(n2), .Z(n62) );
endmodule

