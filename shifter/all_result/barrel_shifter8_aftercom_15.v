
module barrel_shifter8 ( in, ctrl, out );
  input [7:0] in;
  input [2:0] ctrl;
  output [7:0] out;
  wire   n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49;

  GTECH_NOR3 U32 ( .A(n24), .B(ctrl[0]), .C(n25), .Z(out[7]) );
  GTECH_NOT U33 ( .A(n26), .Z(n25) );
  GTECH_NOT U34 ( .A(in[7]), .Z(n24) );
  GTECH_ADD_AB U35 ( .A(n27), .B(n26), .COUT(out[6]) );
  GTECH_MUX2 U36 ( .A(in[7]), .B(in[6]), .S(n28), .Z(n27) );
  GTECH_MUX2 U37 ( .A(n29), .B(n30), .S(ctrl[0]), .Z(out[5]) );
  GTECH_ADD_AB U38 ( .A(in[6]), .B(n26), .COUT(n30) );
  GTECH_AND_NOT U39 ( .A(n31), .B(ctrl[2]), .Z(n29) );
  GTECH_NOT U40 ( .A(n32), .Z(out[4]) );
  GTECH_MUX2 U41 ( .A(n33), .B(n34), .S(ctrl[0]), .Z(n32) );
  GTECH_OR_NOT U42 ( .A(ctrl[2]), .B(n31), .Z(n34) );
  GTECH_NOT U43 ( .A(n35), .Z(out[3]) );
  GTECH_MUX2 U44 ( .A(n36), .B(n33), .S(ctrl[0]), .Z(n35) );
  GTECH_AOI22 U45 ( .A(in[6]), .B(n37), .C(n26), .D(in[4]), .Z(n33) );
  GTECH_NOT U46 ( .A(n38), .Z(out[2]) );
  GTECH_MUX2 U47 ( .A(n36), .B(n39), .S(n28), .Z(n38) );
  GTECH_NOT U48 ( .A(ctrl[0]), .Z(n28) );
  GTECH_AOI222 U49 ( .A(in[3]), .B(n26), .C(n40), .D(in[7]), .E(n37), .F(in[5]), .Z(n36) );
  GTECH_NOT U50 ( .A(n41), .Z(out[1]) );
  GTECH_MUX2 U51 ( .A(n42), .B(n39), .S(ctrl[0]), .Z(n41) );
  GTECH_AOI222 U52 ( .A(in[2]), .B(n26), .C(n40), .D(in[6]), .E(in[4]), .F(n37), .Z(n39) );
  GTECH_MUX2 U53 ( .A(n43), .B(n44), .S(ctrl[0]), .Z(out[0]) );
  GTECH_NOT U54 ( .A(n42), .Z(n44) );
  GTECH_AOI222 U55 ( .A(ctrl[2]), .B(n31), .C(in[3]), .D(n37), .E(in[1]), .F(
        n26), .Z(n42) );
  GTECH_MUX2 U56 ( .A(in[5]), .B(in[7]), .S(ctrl[1]), .Z(n31) );
  GTECH_NAND2 U57 ( .A(n45), .B(n46), .Z(n43) );
  GTECH_AOI21 U58 ( .A(in[4]), .B(n40), .C(n47), .Z(n46) );
  GTECH_NOT U59 ( .A(n48), .Z(n47) );
  GTECH_NAND3 U60 ( .A(ctrl[1]), .B(in[6]), .C(ctrl[2]), .Z(n48) );
  GTECH_AND_NOT U61 ( .A(ctrl[2]), .B(ctrl[1]), .Z(n40) );
  GTECH_AOI22 U62 ( .A(in[0]), .B(n26), .C(n37), .D(in[2]), .Z(n45) );
  GTECH_NOR2 U63 ( .A(n49), .B(ctrl[2]), .Z(n37) );
  GTECH_AND_NOT U64 ( .A(n49), .B(ctrl[2]), .Z(n26) );
  GTECH_NOT U65 ( .A(ctrl[1]), .Z(n49) );
endmodule

