
module up_down_counter ( clk, ENABLE, UPDN, RST, VALUE );
  output [3:0] VALUE;
  input clk, ENABLE, UPDN, RST;
  wire   N27, N28, N29, N31, n31, n34, n37, n38, n29, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66;

  GTECH_FJK3S counter_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N27), .TE(ENABLE), .CP(
        clk), .CD(n38), .SD(n29), .Q(VALUE[0]), .QN(n41) );
  GTECH_FJK3S counter_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N28), .TE(ENABLE), .CP(
        clk), .CD(n38), .SD(n29), .Q(VALUE[1]), .QN(n37) );
  GTECH_FJK3S counter_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N29), .TE(ENABLE), .CP(
        clk), .CD(n38), .SD(n29), .Q(VALUE[2]), .QN(n34) );
  GTECH_FJK3S counter_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N31), .TE(ENABLE), .CP(
        clk), .CD(n38), .SD(n29), .Q(VALUE[3]), .QN(n31) );
  GTECH_ONE U42 ( .Z(n29) );
  GTECH_NOT U43 ( .A(RST), .Z(n38) );
  GTECH_OAI21 U44 ( .A(n31), .B(n42), .C(n43), .Z(N31) );
  GTECH_NAND3 U45 ( .A(n44), .B(n45), .C(n46), .Z(n43) );
  GTECH_AOI21 U46 ( .A(n44), .B(ENABLE), .C(n47), .Z(n42) );
  GTECH_NAND2 U47 ( .A(n48), .B(n49), .Z(n47) );
  GTECH_OAI21 U48 ( .A(ENABLE), .B(n44), .C(n46), .Z(n49) );
  GTECH_XOR2 U49 ( .A(n50), .B(n34), .Z(n46) );
  GTECH_OAI21 U50 ( .A(n34), .B(n50), .C(n51), .Z(n44) );
  GTECH_OAI21 U51 ( .A(n48), .B(n52), .C(n53), .Z(N29) );
  GTECH_OA21 U52 ( .A(n54), .B(n55), .C(n56), .Z(n53) );
  GTECH_XOR2 U53 ( .A(n34), .B(n57), .Z(n54) );
  GTECH_XNOR2 U54 ( .A(n34), .B(n51), .Z(n52) );
  GTECH_NAND2 U55 ( .A(n58), .B(n56), .Z(N28) );
  GTECH_MUX2 U56 ( .A(n48), .B(n55), .S(n50), .Z(n58) );
  GTECH_NAND2 U57 ( .A(n59), .B(n51), .Z(n50) );
  GTECH_NAND2 U58 ( .A(n56), .B(n60), .Z(N27) );
  GTECH_OAI21 U59 ( .A(n45), .B(n61), .C(n41), .Z(n60) );
  GTECH_NOT U60 ( .A(n55), .Z(n61) );
  GTECH_NAND3 U61 ( .A(n62), .B(n63), .C(ENABLE), .Z(n55) );
  GTECH_NOT U62 ( .A(UPDN), .Z(n63) );
  GTECH_NAND3 U63 ( .A(n57), .B(n34), .C(n31), .Z(n62) );
  GTECH_NOT U64 ( .A(n59), .Z(n57) );
  GTECH_NAND2 U65 ( .A(n41), .B(n37), .Z(n59) );
  GTECH_NOT U66 ( .A(n48), .Z(n45) );
  GTECH_NAND2 U67 ( .A(UPDN), .B(ENABLE), .Z(n48) );
  GTECH_OR4 U68 ( .A(n64), .B(n51), .C(n34), .D(n31), .Z(n56) );
  GTECH_NAND2 U69 ( .A(n65), .B(n66), .Z(n51) );
  GTECH_NOT U70 ( .A(n41), .Z(n66) );
  GTECH_NOT U71 ( .A(n37), .Z(n65) );
  GTECH_AND_NOT U72 ( .A(ENABLE), .B(UPDN), .Z(n64) );
endmodule

