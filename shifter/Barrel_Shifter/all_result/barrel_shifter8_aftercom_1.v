
module barrel_shifter8 ( in, ctrl, out );
  input [7:0] in;
  input [2:0] ctrl;
  output [7:0] out;
  wire   n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46;

  GTECH_AND3 U30 ( .A(n22), .B(n23), .C(in[7]), .Z(out[7]) );
  GTECH_AND2 U31 ( .A(n22), .B(n24), .Z(out[6]) );
  GTECH_MUX2 U32 ( .A(in[6]), .B(in[7]), .S(ctrl[0]), .Z(n24) );
  GTECH_MUX2 U33 ( .A(n25), .B(n26), .S(n23), .Z(out[5]) );
  GTECH_AND2 U34 ( .A(n27), .B(n28), .Z(n26) );
  GTECH_AND2 U35 ( .A(n22), .B(in[6]), .Z(n25) );
  GTECH_NOT U36 ( .A(n29), .Z(out[4]) );
  GTECH_MUX2 U37 ( .A(n30), .B(n31), .S(n23), .Z(n29) );
  GTECH_OR_NOT U38 ( .A(ctrl[2]), .B(n28), .Z(n30) );
  GTECH_NOT U39 ( .A(n32), .Z(out[3]) );
  GTECH_MUX2 U40 ( .A(n31), .B(n33), .S(n23), .Z(n32) );
  GTECH_OR_NOT U41 ( .A(ctrl[2]), .B(n34), .Z(n31) );
  GTECH_MUX2 U42 ( .A(in[4]), .B(in[6]), .S(ctrl[1]), .Z(n34) );
  GTECH_NOT U43 ( .A(n35), .Z(out[2]) );
  GTECH_MUX2 U44 ( .A(n36), .B(n33), .S(ctrl[0]), .Z(n35) );
  GTECH_AOI222 U45 ( .A(in[3]), .B(n22), .C(n37), .D(in[7]), .E(n38), .F(in[5]), .Z(n33) );
  GTECH_NOT U46 ( .A(n39), .Z(out[1]) );
  GTECH_MUX2 U47 ( .A(n36), .B(n40), .S(n23), .Z(n39) );
  GTECH_AOI222 U48 ( .A(in[2]), .B(n22), .C(n37), .D(in[6]), .E(in[4]), .F(n38), .Z(n36) );
  GTECH_MUX2 U49 ( .A(n41), .B(n42), .S(n23), .Z(out[0]) );
  GTECH_NOT U50 ( .A(ctrl[0]), .Z(n23) );
  GTECH_NAND2 U51 ( .A(n43), .B(n44), .Z(n42) );
  GTECH_AOI21 U52 ( .A(n37), .B(in[4]), .C(n45), .Z(n44) );
  GTECH_AND3 U53 ( .A(ctrl[1]), .B(in[6]), .C(ctrl[2]), .Z(n45) );
  GTECH_AND2 U54 ( .A(ctrl[2]), .B(n46), .Z(n37) );
  GTECH_AOI22 U55 ( .A(in[0]), .B(n22), .C(n38), .D(in[2]), .Z(n43) );
  GTECH_NOT U56 ( .A(n40), .Z(n41) );
  GTECH_AOI222 U57 ( .A(ctrl[2]), .B(n28), .C(in[3]), .D(n38), .E(in[1]), .F(
        n22), .Z(n40) );
  GTECH_AND2 U58 ( .A(n46), .B(n27), .Z(n22) );
  GTECH_AND2 U59 ( .A(ctrl[1]), .B(n27), .Z(n38) );
  GTECH_NOT U60 ( .A(ctrl[2]), .Z(n27) );
  GTECH_MUX2 U61 ( .A(in[7]), .B(in[5]), .S(n46), .Z(n28) );
  GTECH_NOT U62 ( .A(ctrl[1]), .Z(n46) );
endmodule

