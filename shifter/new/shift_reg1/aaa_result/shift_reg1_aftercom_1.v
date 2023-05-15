
module shift_reg1 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [2:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   N14, N15, N16, N17, N18, N19, N20, N21, n22, n1, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71;

  GTECH_FJK3S shift_reg_reg_7_ ( .J(1'b0), .K(1'b0), .TI(N21), .TE(enable), 
        .CP(clk), .CD(n22), .SD(n1), .Q(data_out[7]) );
  GTECH_FJK3S shift_reg_reg_6_ ( .J(1'b0), .K(1'b0), .TI(N20), .TE(enable), 
        .CP(clk), .CD(n22), .SD(n1), .Q(data_out[6]) );
  GTECH_FJK3S shift_reg_reg_5_ ( .J(1'b0), .K(1'b0), .TI(N19), .TE(enable), 
        .CP(clk), .CD(n22), .SD(n1), .Q(data_out[5]) );
  GTECH_FJK3S shift_reg_reg_4_ ( .J(1'b0), .K(1'b0), .TI(N18), .TE(enable), 
        .CP(clk), .CD(n22), .SD(n1), .Q(data_out[4]) );
  GTECH_FJK3S shift_reg_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N17), .TE(enable), 
        .CP(clk), .CD(n22), .SD(n1), .Q(data_out[3]) );
  GTECH_FJK3S shift_reg_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N16), .TE(enable), 
        .CP(clk), .CD(n22), .SD(n1), .Q(data_out[2]) );
  GTECH_FJK3S shift_reg_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N15), .TE(enable), 
        .CP(clk), .CD(n22), .SD(n1), .Q(data_out[1]) );
  GTECH_FJK3S shift_reg_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N14), .TE(enable), 
        .CP(clk), .CD(n22), .SD(n1), .Q(data_out[0]) );
  GTECH_OAI22 U19 ( .A(n26), .B(n27), .C(shift_direction[2]), .D(n28), .Z(N14)
         );
  GTECH_OAI22 U20 ( .A(n27), .B(n29), .C(shift_direction[2]), .D(n30), .Z(N15)
         );
  GTECH_OAI22 U21 ( .A(n27), .B(n31), .C(shift_direction[2]), .D(n32), .Z(N16)
         );
  GTECH_OAI22 U22 ( .A(n27), .B(n33), .C(shift_direction[2]), .D(n34), .Z(N17)
         );
  GTECH_OAI22 U23 ( .A(n27), .B(n35), .C(shift_direction[2]), .D(n36), .Z(N18)
         );
  GTECH_OAI22 U24 ( .A(n27), .B(n37), .C(shift_direction[2]), .D(n38), .Z(N19)
         );
  GTECH_OAI22 U25 ( .A(n27), .B(n39), .C(shift_direction[2]), .D(n40), .Z(N20)
         );
  GTECH_OAI22 U26 ( .A(n27), .B(n41), .C(shift_direction[2]), .D(n42), .Z(N21)
         );
  GTECH_NOT U27 ( .A(data_out[6]), .Z(n43) );
  GTECH_NOT U28 ( .A(shift_direction[0]), .Z(n44) );
  GTECH_NOT U29 ( .A(data_out[5]), .Z(n45) );
  GTECH_OA22 U30 ( .A(shift_direction[0]), .B(n43), .C(n44), .D(n45), .Z(n46)
         );
  GTECH_NOT U31 ( .A(data_in[0]), .Z(n47) );
  GTECH_NOT U32 ( .A(shift_direction[1]), .Z(n48) );
  GTECH_OA22 U33 ( .A(shift_direction[1]), .B(n47), .C(n46), .D(n48), .Z(n28)
         );
  GTECH_NOT U34 ( .A(data_out[4]), .Z(n49) );
  GTECH_AOI2N2 U35 ( .A(data_out[2]), .B(shift_direction[1]), .C(
        shift_direction[1]), .D(n49), .Z(n50) );
  GTECH_NOT U36 ( .A(data_out[3]), .Z(n51) );
  GTECH_OA22 U37 ( .A(n44), .B(n51), .C(shift_direction[0]), .D(n50), .Z(n26)
         );
  GTECH_NOT U38 ( .A(shift_direction[2]), .Z(n27) );
  GTECH_NOT U39 ( .A(data_out[7]), .Z(n52) );
  GTECH_OA22 U40 ( .A(n43), .B(n44), .C(shift_direction[0]), .D(n52), .Z(n53)
         );
  GTECH_NOT U41 ( .A(data_in[1]), .Z(n54) );
  GTECH_OA22 U42 ( .A(shift_direction[1]), .B(n54), .C(n48), .D(n53), .Z(n30)
         );
  GTECH_OA22 U43 ( .A(shift_direction[1]), .B(n45), .C(n48), .D(n51), .Z(n55)
         );
  GTECH_OA22 U44 ( .A(n44), .B(n49), .C(shift_direction[0]), .D(n55), .Z(n29)
         );
  GTECH_OA22 U45 ( .A(shift_direction[0]), .B(n47), .C(n44), .D(n52), .Z(n56)
         );
  GTECH_NOT U46 ( .A(data_in[2]), .Z(n57) );
  GTECH_OA22 U47 ( .A(shift_direction[1]), .B(n57), .C(n48), .D(n56), .Z(n32)
         );
  GTECH_OA22 U48 ( .A(shift_direction[1]), .B(n43), .C(n48), .D(n49), .Z(n58)
         );
  GTECH_OA22 U49 ( .A(n44), .B(n45), .C(shift_direction[0]), .D(n58), .Z(n31)
         );
  GTECH_OA22 U50 ( .A(n44), .B(n47), .C(shift_direction[0]), .D(n54), .Z(n59)
         );
  GTECH_NOT U51 ( .A(data_in[3]), .Z(n60) );
  GTECH_OA22 U52 ( .A(shift_direction[1]), .B(n60), .C(n48), .D(n59), .Z(n34)
         );
  GTECH_OA22 U53 ( .A(shift_direction[1]), .B(n52), .C(n45), .D(n48), .Z(n61)
         );
  GTECH_OA22 U54 ( .A(n43), .B(n44), .C(shift_direction[0]), .D(n61), .Z(n33)
         );
  GTECH_OA22 U55 ( .A(n44), .B(n54), .C(shift_direction[0]), .D(n57), .Z(n62)
         );
  GTECH_NOT U56 ( .A(data_in[4]), .Z(n63) );
  GTECH_OA22 U57 ( .A(shift_direction[1]), .B(n63), .C(n48), .D(n62), .Z(n36)
         );
  GTECH_OA22 U58 ( .A(shift_direction[1]), .B(n47), .C(n43), .D(n48), .Z(n64)
         );
  GTECH_OA22 U59 ( .A(n44), .B(n52), .C(shift_direction[0]), .D(n64), .Z(n35)
         );
  GTECH_OA22 U60 ( .A(n44), .B(n57), .C(shift_direction[0]), .D(n60), .Z(n65)
         );
  GTECH_NOT U61 ( .A(data_in[5]), .Z(n66) );
  GTECH_OA22 U62 ( .A(shift_direction[1]), .B(n66), .C(n48), .D(n65), .Z(n38)
         );
  GTECH_OA22 U63 ( .A(shift_direction[1]), .B(n54), .C(n48), .D(n52), .Z(n67)
         );
  GTECH_OA22 U64 ( .A(n44), .B(n47), .C(shift_direction[0]), .D(n67), .Z(n37)
         );
  GTECH_OA22 U65 ( .A(n44), .B(n60), .C(shift_direction[0]), .D(n63), .Z(n68)
         );
  GTECH_AOI2N2 U66 ( .A(data_in[6]), .B(n48), .C(n48), .D(n68), .Z(n40) );
  GTECH_OA22 U67 ( .A(n47), .B(n48), .C(shift_direction[1]), .D(n57), .Z(n69)
         );
  GTECH_OA22 U68 ( .A(n44), .B(n54), .C(shift_direction[0]), .D(n69), .Z(n39)
         );
  GTECH_OA22 U69 ( .A(n44), .B(n63), .C(shift_direction[0]), .D(n66), .Z(n70)
         );
  GTECH_AOI2N2 U70 ( .A(data_in[7]), .B(n48), .C(n48), .D(n70), .Z(n42) );
  GTECH_OA22 U71 ( .A(n48), .B(n54), .C(shift_direction[1]), .D(n60), .Z(n71)
         );
  GTECH_OA22 U72 ( .A(n44), .B(n57), .C(shift_direction[0]), .D(n71), .Z(n41)
         );
  GTECH_ONE U73 ( .Z(n1) );
  GTECH_NOT U74 ( .A(reset), .Z(n22) );
endmodule

