
module shift_reg1 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [2:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   N14, N15, N16, N17, N18, N19, N20, N21, n11, n1, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58;

  GTECH_FJK2S shift_reg_reg_7_ ( .J(n1), .K(n1), .TI(N21), .TE(enable), .CP(
        clk), .CD(n11), .Q(data_out[7]), .QN(n39) );
  GTECH_FJK2S shift_reg_reg_6_ ( .J(n1), .K(n1), .TI(N20), .TE(enable), .CP(
        clk), .CD(n11), .Q(data_out[6]), .QN(n30) );
  GTECH_FJK2S shift_reg_reg_5_ ( .J(n1), .K(n1), .TI(N19), .TE(enable), .CP(
        clk), .CD(n11), .Q(data_out[5]), .QN(n32) );
  GTECH_FJK2S shift_reg_reg_4_ ( .J(n1), .K(n1), .TI(N18), .TE(enable), .CP(
        clk), .CD(n11), .Q(data_out[4]), .QN(n36) );
  GTECH_FJK2S shift_reg_reg_3_ ( .J(n1), .K(n1), .TI(N17), .TE(enable), .CP(
        clk), .CD(n11), .Q(data_out[3]), .QN(n38) );
  GTECH_FJK2S shift_reg_reg_2_ ( .J(n1), .K(n1), .TI(N16), .TE(enable), .CP(
        clk), .CD(n11), .Q(data_out[2]) );
  GTECH_FJK2S shift_reg_reg_1_ ( .J(n1), .K(n1), .TI(N15), .TE(enable), .CP(
        clk), .CD(n11), .Q(data_out[1]) );
  GTECH_FJK2S shift_reg_reg_0_ ( .J(n1), .K(n1), .TI(N14), .TE(enable), .CP(
        clk), .CD(n11), .Q(data_out[0]) );
  GTECH_OAI22 U11 ( .A(n13), .B(n14), .C(shift_direction[2]), .D(n15), .Z(N14)
         );
  GTECH_OAI22 U12 ( .A(n14), .B(n16), .C(shift_direction[2]), .D(n17), .Z(N15)
         );
  GTECH_OAI22 U13 ( .A(n14), .B(n18), .C(shift_direction[2]), .D(n19), .Z(N16)
         );
  GTECH_OAI22 U14 ( .A(n14), .B(n20), .C(shift_direction[2]), .D(n21), .Z(N17)
         );
  GTECH_OAI22 U15 ( .A(n14), .B(n22), .C(shift_direction[2]), .D(n23), .Z(N18)
         );
  GTECH_OAI22 U16 ( .A(n14), .B(n24), .C(shift_direction[2]), .D(n25), .Z(N19)
         );
  GTECH_OAI22 U17 ( .A(n14), .B(n26), .C(shift_direction[2]), .D(n27), .Z(N20)
         );
  GTECH_OAI22 U18 ( .A(n14), .B(n28), .C(shift_direction[2]), .D(n29), .Z(N21)
         );
  GTECH_NOT U19 ( .A(shift_direction[0]), .Z(n31) );
  GTECH_OA22 U20 ( .A(shift_direction[0]), .B(n30), .C(n31), .D(n32), .Z(n33)
         );
  GTECH_NOT U21 ( .A(data_in[0]), .Z(n34) );
  GTECH_NOT U22 ( .A(shift_direction[1]), .Z(n35) );
  GTECH_OA22 U23 ( .A(shift_direction[1]), .B(n34), .C(n33), .D(n35), .Z(n15)
         );
  GTECH_AOI2N2 U24 ( .A(data_out[2]), .B(shift_direction[1]), .C(
        shift_direction[1]), .D(n36), .Z(n37) );
  GTECH_OA22 U25 ( .A(n31), .B(n38), .C(shift_direction[0]), .D(n37), .Z(n13)
         );
  GTECH_NOT U26 ( .A(shift_direction[2]), .Z(n14) );
  GTECH_OA22 U27 ( .A(n30), .B(n31), .C(shift_direction[0]), .D(n39), .Z(n40)
         );
  GTECH_NOT U28 ( .A(data_in[1]), .Z(n41) );
  GTECH_OA22 U29 ( .A(shift_direction[1]), .B(n41), .C(n35), .D(n40), .Z(n17)
         );
  GTECH_OA22 U30 ( .A(shift_direction[1]), .B(n32), .C(n35), .D(n38), .Z(n42)
         );
  GTECH_OA22 U31 ( .A(n31), .B(n36), .C(shift_direction[0]), .D(n42), .Z(n16)
         );
  GTECH_OA22 U32 ( .A(shift_direction[0]), .B(n34), .C(n31), .D(n39), .Z(n43)
         );
  GTECH_NOT U33 ( .A(data_in[2]), .Z(n44) );
  GTECH_OA22 U34 ( .A(shift_direction[1]), .B(n44), .C(n35), .D(n43), .Z(n19)
         );
  GTECH_OA22 U35 ( .A(shift_direction[1]), .B(n30), .C(n35), .D(n36), .Z(n45)
         );
  GTECH_OA22 U36 ( .A(n31), .B(n32), .C(shift_direction[0]), .D(n45), .Z(n18)
         );
  GTECH_OA22 U37 ( .A(n31), .B(n34), .C(shift_direction[0]), .D(n41), .Z(n46)
         );
  GTECH_NOT U38 ( .A(data_in[3]), .Z(n47) );
  GTECH_OA22 U39 ( .A(shift_direction[1]), .B(n47), .C(n35), .D(n46), .Z(n21)
         );
  GTECH_OA22 U40 ( .A(shift_direction[1]), .B(n39), .C(n32), .D(n35), .Z(n48)
         );
  GTECH_OA22 U41 ( .A(n30), .B(n31), .C(shift_direction[0]), .D(n48), .Z(n20)
         );
  GTECH_OA22 U42 ( .A(n31), .B(n41), .C(shift_direction[0]), .D(n44), .Z(n49)
         );
  GTECH_NOT U43 ( .A(data_in[4]), .Z(n50) );
  GTECH_OA22 U44 ( .A(shift_direction[1]), .B(n50), .C(n35), .D(n49), .Z(n23)
         );
  GTECH_OA22 U45 ( .A(shift_direction[1]), .B(n34), .C(n30), .D(n35), .Z(n51)
         );
  GTECH_OA22 U46 ( .A(n31), .B(n39), .C(shift_direction[0]), .D(n51), .Z(n22)
         );
  GTECH_OA22 U47 ( .A(n31), .B(n44), .C(shift_direction[0]), .D(n47), .Z(n52)
         );
  GTECH_NOT U48 ( .A(data_in[5]), .Z(n53) );
  GTECH_OA22 U49 ( .A(shift_direction[1]), .B(n53), .C(n35), .D(n52), .Z(n25)
         );
  GTECH_OA22 U50 ( .A(shift_direction[1]), .B(n41), .C(n35), .D(n39), .Z(n54)
         );
  GTECH_OA22 U51 ( .A(n31), .B(n34), .C(shift_direction[0]), .D(n54), .Z(n24)
         );
  GTECH_OA22 U52 ( .A(n31), .B(n47), .C(shift_direction[0]), .D(n50), .Z(n55)
         );
  GTECH_AOI2N2 U53 ( .A(data_in[6]), .B(n35), .C(n35), .D(n55), .Z(n27) );
  GTECH_OA22 U54 ( .A(n34), .B(n35), .C(shift_direction[1]), .D(n44), .Z(n56)
         );
  GTECH_OA22 U55 ( .A(n31), .B(n41), .C(shift_direction[0]), .D(n56), .Z(n26)
         );
  GTECH_OA22 U56 ( .A(n31), .B(n50), .C(shift_direction[0]), .D(n53), .Z(n57)
         );
  GTECH_AOI2N2 U57 ( .A(data_in[7]), .B(n35), .C(n35), .D(n57), .Z(n29) );
  GTECH_OA22 U58 ( .A(n35), .B(n41), .C(shift_direction[1]), .D(n47), .Z(n58)
         );
  GTECH_OA22 U59 ( .A(n31), .B(n44), .C(shift_direction[0]), .D(n58), .Z(n28)
         );
  GTECH_ZERO U60 ( .Z(n1) );
  GTECH_NOT U61 ( .A(reset), .Z(n11) );
endmodule

