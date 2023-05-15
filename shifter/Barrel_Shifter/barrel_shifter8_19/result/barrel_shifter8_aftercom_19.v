
module barrel_shifter8 ( in, ctrl, out );
  input [7:0] in;
  input [2:0] ctrl;
  output [7:0] out;
  wire   n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47;

  GTECH_AND3 U31 ( .A(n23), .B(n24), .C(in[7]), .Z(out[7]) );
  GTECH_ADD_AB U32 ( .A(n25), .B(n23), .COUT(out[6]) );
  GTECH_MUX2 U33 ( .A(in[6]), .B(in[7]), .S(ctrl[0]), .Z(n25) );
  GTECH_MUX2 U34 ( .A(n26), .B(n27), .S(n24), .Z(out[5]) );
  GTECH_ADD_AB U35 ( .A(n28), .B(n29), .COUT(n27) );
  GTECH_ADD_AB U36 ( .A(in[6]), .B(n23), .COUT(n26) );
  GTECH_NOT U37 ( .A(n30), .Z(out[4]) );
  GTECH_MUX2 U38 ( .A(n31), .B(n32), .S(n24), .Z(n30) );
  GTECH_OR_NOT U39 ( .A(ctrl[2]), .B(n28), .Z(n31) );
  GTECH_NOT U40 ( .A(n33), .Z(out[3]) );
  GTECH_MUX2 U41 ( .A(n32), .B(n34), .S(n24), .Z(n33) );
  GTECH_OR_NOT U42 ( .A(ctrl[2]), .B(n35), .Z(n32) );
  GTECH_MUX2 U43 ( .A(in[4]), .B(in[6]), .S(ctrl[1]), .Z(n35) );
  GTECH_NOT U44 ( .A(n36), .Z(out[2]) );
  GTECH_MUX2 U45 ( .A(n37), .B(n34), .S(ctrl[0]), .Z(n36) );
  GTECH_AOI222 U46 ( .A(in[3]), .B(n23), .C(n38), .D(in[7]), .E(n39), .F(in[5]), .Z(n34) );
  GTECH_NOT U47 ( .A(n40), .Z(out[1]) );
  GTECH_MUX2 U48 ( .A(n37), .B(n41), .S(n24), .Z(n40) );
  GTECH_AOI222 U49 ( .A(in[2]), .B(n23), .C(n38), .D(in[6]), .E(in[4]), .F(n39), .Z(n37) );
  GTECH_MUX2 U50 ( .A(n42), .B(n43), .S(n24), .Z(out[0]) );
  GTECH_NOT U51 ( .A(ctrl[0]), .Z(n24) );
  GTECH_NAND2 U52 ( .A(n44), .B(n45), .Z(n43) );
  GTECH_AOI21 U53 ( .A(n38), .B(in[4]), .C(n46), .Z(n45) );
  GTECH_AND3 U54 ( .A(ctrl[1]), .B(in[6]), .C(ctrl[2]), .Z(n46) );
  GTECH_NOR2 U55 ( .A(n29), .B(ctrl[1]), .Z(n38) );
  GTECH_NOT U56 ( .A(ctrl[2]), .Z(n29) );
  GTECH_AOI22 U57 ( .A(in[0]), .B(n23), .C(n39), .D(in[2]), .Z(n44) );
  GTECH_NOT U58 ( .A(n41), .Z(n42) );
  GTECH_AOI222 U59 ( .A(ctrl[2]), .B(n28), .C(in[3]), .D(n39), .E(in[1]), .F(
        n23), .Z(n41) );
  GTECH_NOR2 U60 ( .A(ctrl[1]), .B(ctrl[2]), .Z(n23) );
  GTECH_NOR2 U61 ( .A(n47), .B(ctrl[2]), .Z(n39) );
  GTECH_MUX2 U62 ( .A(in[7]), .B(in[5]), .S(n47), .Z(n28) );
  GTECH_NOT U63 ( .A(ctrl[1]), .Z(n47) );
endmodule

