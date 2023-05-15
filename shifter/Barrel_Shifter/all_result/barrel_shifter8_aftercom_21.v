
module barrel_shifter8 ( in, ctrl, out );
  input [7:0] in;
  input [2:0] ctrl;
  output [7:0] out;
  wire   n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46;

  GTECH_AND3 U30 ( .A(n22), .B(n23), .C(in[7]), .Z(out[7]) );
  GTECH_AND2 U31 ( .A(n24), .B(n22), .Z(out[6]) );
  GTECH_MUX2 U32 ( .A(in[7]), .B(in[6]), .S(n23), .Z(n24) );
  GTECH_MUX2 U33 ( .A(n25), .B(n26), .S(ctrl[0]), .Z(out[5]) );
  GTECH_AND2 U34 ( .A(in[6]), .B(n22), .Z(n26) );
  GTECH_AND2 U35 ( .A(n27), .B(n28), .Z(n25) );
  GTECH_NOT U36 ( .A(n29), .Z(out[4]) );
  GTECH_MUX2 U37 ( .A(n30), .B(n31), .S(ctrl[0]), .Z(n29) );
  GTECH_NAND2 U38 ( .A(n28), .B(n27), .Z(n31) );
  GTECH_NOT U39 ( .A(n32), .Z(out[3]) );
  GTECH_MUX2 U40 ( .A(n33), .B(n30), .S(ctrl[0]), .Z(n32) );
  GTECH_NAND2 U41 ( .A(n34), .B(n28), .Z(n30) );
  GTECH_MUX2 U42 ( .A(in[6]), .B(in[4]), .S(n35), .Z(n34) );
  GTECH_NOT U43 ( .A(ctrl[1]), .Z(n35) );
  GTECH_NOT U44 ( .A(n36), .Z(out[2]) );
  GTECH_MUX2 U45 ( .A(n33), .B(n37), .S(n23), .Z(n36) );
  GTECH_NOT U46 ( .A(ctrl[0]), .Z(n23) );
  GTECH_AOI222 U47 ( .A(in[3]), .B(n22), .C(n38), .D(in[7]), .E(n39), .F(in[5]), .Z(n33) );
  GTECH_NOT U48 ( .A(n40), .Z(out[1]) );
  GTECH_MUX2 U49 ( .A(n41), .B(n37), .S(ctrl[0]), .Z(n40) );
  GTECH_AOI222 U50 ( .A(in[2]), .B(n22), .C(n38), .D(in[6]), .E(in[4]), .F(n39), .Z(n37) );
  GTECH_NOT U51 ( .A(n42), .Z(out[0]) );
  GTECH_MUX2 U52 ( .A(n43), .B(n41), .S(ctrl[0]), .Z(n42) );
  GTECH_AOI222 U53 ( .A(ctrl[2]), .B(n27), .C(in[3]), .D(n39), .E(in[1]), .F(
        n22), .Z(n41) );
  GTECH_MUX2 U54 ( .A(in[5]), .B(in[7]), .S(ctrl[1]), .Z(n27) );
  GTECH_AND_NOT U55 ( .A(n44), .B(n45), .Z(n43) );
  GTECH_AO22 U56 ( .A(in[0]), .B(n22), .C(n39), .D(in[2]), .Z(n45) );
  GTECH_AND_NOT U57 ( .A(ctrl[1]), .B(ctrl[2]), .Z(n39) );
  GTECH_AND_NOT U58 ( .A(n28), .B(ctrl[1]), .Z(n22) );
  GTECH_NOT U59 ( .A(ctrl[2]), .Z(n28) );
  GTECH_AOI21 U60 ( .A(n38), .B(in[4]), .C(n46), .Z(n44) );
  GTECH_AND3 U61 ( .A(ctrl[1]), .B(in[6]), .C(ctrl[2]), .Z(n46) );
  GTECH_AND_NOT U62 ( .A(ctrl[2]), .B(ctrl[1]), .Z(n38) );
endmodule

