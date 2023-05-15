
module up_down_counter ( clk, ENABLE, UPDN, RST, VALUE );
  output [3:0] VALUE;
  input clk, ENABLE, UPDN, RST;
  wire   N27, N28, N29, N31, N55, n32, n35, n38, n39, n30, n31, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70;

  GTECH_FJK3S counter_reg_0_ ( .J(n31), .K(n31), .TI(N27), .TE(N55), .CP(clk), 
        .CD(n39), .SD(n30), .Q(VALUE[0]), .QN(n42) );
  GTECH_FJK3S counter_reg_1_ ( .J(n31), .K(n31), .TI(N28), .TE(N55), .CP(clk), 
        .CD(n39), .SD(n30), .Q(VALUE[1]), .QN(n38) );
  GTECH_FJK3S counter_reg_2_ ( .J(n31), .K(n31), .TI(N29), .TE(N55), .CP(clk), 
        .CD(n39), .SD(n30), .Q(VALUE[2]), .QN(n35) );
  GTECH_FJK3S counter_reg_3_ ( .J(n31), .K(n31), .TI(N31), .TE(N55), .CP(clk), 
        .CD(n39), .SD(n30), .Q(VALUE[3]), .QN(n32) );
  GTECH_ZERO U45 ( .Z(n31) );
  GTECH_ONE U46 ( .Z(n30) );
  GTECH_NOT U47 ( .A(RST), .Z(n39) );
  GTECH_OR_NOT U48 ( .A(n43), .B(n44), .Z(N55) );
  GTECH_OAI2N2 U49 ( .A(n32), .B(n45), .C(n46), .D(n47), .Z(N31) );
  GTECH_AND_NOT U50 ( .A(n48), .B(n44), .Z(n46) );
  GTECH_AOI21 U51 ( .A(n48), .B(ENABLE), .C(n49), .Z(n45) );
  GTECH_OR_NOT U52 ( .A(n50), .B(n44), .Z(n49) );
  GTECH_OA21 U53 ( .A(ENABLE), .B(n48), .C(n47), .Z(n50) );
  GTECH_XOR2 U54 ( .A(n51), .B(n35), .Z(n47) );
  GTECH_OAI21 U55 ( .A(n35), .B(n51), .C(n52), .Z(n48) );
  GTECH_OAI21 U56 ( .A(n53), .B(n54), .C(n55), .Z(N29) );
  GTECH_OA21 U57 ( .A(n44), .B(n56), .C(n57), .Z(n55) );
  GTECH_XOR2 U58 ( .A(n35), .B(n58), .Z(n56) );
  GTECH_XOR2 U59 ( .A(n35), .B(n59), .Z(n54) );
  GTECH_NOT U60 ( .A(n60), .Z(N28) );
  GTECH_AND2 U61 ( .A(n57), .B(n61), .Z(n60) );
  GTECH_MUX2 U62 ( .A(n44), .B(n53), .S(n51), .Z(n61) );
  GTECH_XOR2 U63 ( .A(n62), .B(n42), .Z(n51) );
  GTECH_OAI21 U64 ( .A(n63), .B(n64), .C(n57), .Z(N27) );
  GTECH_NAND4 U65 ( .A(n58), .B(n65), .C(n66), .D(n67), .Z(n57) );
  GTECH_NOT U66 ( .A(n52), .Z(n58) );
  GTECH_OR_NOT U67 ( .A(n42), .B(n62), .Z(n52) );
  GTECH_NOT U68 ( .A(n38), .Z(n62) );
  GTECH_AND2 U69 ( .A(n44), .B(n53), .Z(n63) );
  GTECH_OAI21 U70 ( .A(n66), .B(n68), .C(n43), .Z(n53) );
  GTECH_NOT U71 ( .A(n65), .Z(n43) );
  GTECH_OR_NOT U72 ( .A(UPDN), .B(ENABLE), .Z(n65) );
  GTECH_OR_NOT U73 ( .A(n67), .B(n59), .Z(n68) );
  GTECH_NOT U74 ( .A(n69), .Z(n59) );
  GTECH_OR_NOT U75 ( .A(n64), .B(n38), .Z(n69) );
  GTECH_NOT U76 ( .A(n42), .Z(n64) );
  GTECH_NOT U77 ( .A(n35), .Z(n67) );
  GTECH_NOT U78 ( .A(n32), .Z(n66) );
  GTECH_OR_NOT U79 ( .A(n70), .B(UPDN), .Z(n44) );
  GTECH_NOT U80 ( .A(ENABLE), .Z(n70) );
endmodule

