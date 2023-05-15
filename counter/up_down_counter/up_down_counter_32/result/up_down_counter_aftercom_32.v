
module up_down_counter ( clk, ENABLE, UPDN, RST, VALUE );
  output [3:0] VALUE;
  input clk, ENABLE, UPDN, RST;
  wire   N27, N28, N29, N31, n30, n33, n36, n37, n28, n29, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68;

  GTECH_FJK3S counter_reg_0_ ( .J(n29), .K(n29), .TI(N27), .TE(ENABLE), .CP(
        clk), .CD(n37), .SD(n28), .Q(VALUE[0]), .QN(n40) );
  GTECH_FJK3S counter_reg_1_ ( .J(n29), .K(n29), .TI(N28), .TE(ENABLE), .CP(
        clk), .CD(n37), .SD(n28), .Q(VALUE[1]), .QN(n36) );
  GTECH_FJK3S counter_reg_2_ ( .J(n29), .K(n29), .TI(N29), .TE(ENABLE), .CP(
        clk), .CD(n37), .SD(n28), .Q(VALUE[2]), .QN(n33) );
  GTECH_FJK3S counter_reg_3_ ( .J(n29), .K(n29), .TI(N31), .TE(ENABLE), .CP(
        clk), .CD(n37), .SD(n28), .Q(VALUE[3]), .QN(n30) );
  GTECH_ZERO U43 ( .Z(n29) );
  GTECH_ONE U44 ( .Z(n28) );
  GTECH_NOT U45 ( .A(RST), .Z(n37) );
  GTECH_OAI21 U46 ( .A(n30), .B(n41), .C(n42), .Z(N31) );
  GTECH_NAND3 U47 ( .A(n43), .B(n44), .C(n45), .Z(n42) );
  GTECH_AOI21 U48 ( .A(n43), .B(ENABLE), .C(n46), .Z(n41) );
  GTECH_NAND2 U49 ( .A(n47), .B(n48), .Z(n46) );
  GTECH_OAI21 U50 ( .A(ENABLE), .B(n43), .C(n45), .Z(n48) );
  GTECH_XOR2 U51 ( .A(n49), .B(n33), .Z(n45) );
  GTECH_OAI21 U52 ( .A(n33), .B(n49), .C(n50), .Z(n43) );
  GTECH_NAND2 U53 ( .A(n51), .B(n52), .Z(N29) );
  GTECH_MUX2 U54 ( .A(n53), .B(n54), .S(n33), .Z(n52) );
  GTECH_NAND2 U55 ( .A(n55), .B(n44), .Z(n54) );
  GTECH_OA21 U56 ( .A(n55), .B(n47), .C(n56), .Z(n53) );
  GTECH_OAI21 U57 ( .A(n57), .B(n58), .C(n59), .Z(n56) );
  GTECH_NOT U58 ( .A(n50), .Z(n55) );
  GTECH_OA21 U59 ( .A(n60), .B(n61), .C(n62), .Z(n51) );
  GTECH_NAND2 U60 ( .A(n63), .B(n62), .Z(N28) );
  GTECH_MUX2 U61 ( .A(n47), .B(n61), .S(n49), .Z(n63) );
  GTECH_XOR2 U62 ( .A(n58), .B(n40), .Z(n49) );
  GTECH_NAND2 U63 ( .A(n62), .B(n64), .Z(N27) );
  GTECH_OAI21 U64 ( .A(n44), .B(n59), .C(n40), .Z(n64) );
  GTECH_NOT U65 ( .A(n61), .Z(n59) );
  GTECH_NAND2 U66 ( .A(n65), .B(ENABLE), .Z(n61) );
  GTECH_OA21 U67 ( .A(n60), .B(n66), .C(n67), .Z(n65) );
  GTECH_NOT U68 ( .A(UPDN), .Z(n67) );
  GTECH_NOT U69 ( .A(n30), .Z(n66) );
  GTECH_NAND3 U70 ( .A(n36), .B(n40), .C(n33), .Z(n60) );
  GTECH_NOT U71 ( .A(n47), .Z(n44) );
  GTECH_NAND2 U72 ( .A(UPDN), .B(ENABLE), .Z(n47) );
  GTECH_OR4 U73 ( .A(n68), .B(n50), .C(n33), .D(n30), .Z(n62) );
  GTECH_NAND2 U74 ( .A(n58), .B(n57), .Z(n50) );
  GTECH_NOT U75 ( .A(n40), .Z(n57) );
  GTECH_NOT U76 ( .A(n36), .Z(n58) );
  GTECH_AND_NOT U77 ( .A(ENABLE), .B(UPDN), .Z(n68) );
endmodule

