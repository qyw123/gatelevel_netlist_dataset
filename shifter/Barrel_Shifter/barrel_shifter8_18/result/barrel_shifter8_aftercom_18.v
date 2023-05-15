
module barrel_shifter8 ( in, ctrl, out );
  input [7:0] in;
  input [2:0] ctrl;
  output [7:0] out;
  wire   n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44;

  GTECH_AND3 U30 ( .A(n22), .B(n23), .C(in[7]), .Z(out[7]) );
  GTECH_ADD_AB U31 ( .A(n24), .B(n22), .COUT(out[6]) );
  GTECH_MUX2 U32 ( .A(in[6]), .B(in[7]), .S(ctrl[0]), .Z(n24) );
  GTECH_MUX2 U33 ( .A(n25), .B(n26), .S(n23), .Z(out[5]) );
  GTECH_AND_NOT U34 ( .A(n27), .B(ctrl[2]), .Z(n26) );
  GTECH_ADD_AB U35 ( .A(in[6]), .B(n22), .COUT(n25) );
  GTECH_NOT U36 ( .A(n28), .Z(out[4]) );
  GTECH_MUX2 U37 ( .A(n29), .B(n30), .S(n23), .Z(n28) );
  GTECH_OR_NOT U38 ( .A(ctrl[2]), .B(n27), .Z(n29) );
  GTECH_NOT U39 ( .A(n31), .Z(out[3]) );
  GTECH_MUX2 U40 ( .A(n30), .B(n32), .S(n23), .Z(n31) );
  GTECH_AOI22 U41 ( .A(in[6]), .B(n33), .C(n22), .D(in[4]), .Z(n30) );
  GTECH_NOT U42 ( .A(n34), .Z(out[2]) );
  GTECH_MUX2 U43 ( .A(n35), .B(n32), .S(ctrl[0]), .Z(n34) );
  GTECH_AOI222 U44 ( .A(in[3]), .B(n22), .C(n36), .D(in[7]), .E(n33), .F(in[5]), .Z(n32) );
  GTECH_NOT U45 ( .A(n37), .Z(out[1]) );
  GTECH_MUX2 U46 ( .A(n35), .B(n38), .S(n23), .Z(n37) );
  GTECH_AOI222 U47 ( .A(in[2]), .B(n22), .C(n36), .D(in[6]), .E(in[4]), .F(n33), .Z(n35) );
  GTECH_MUX2 U48 ( .A(n39), .B(n40), .S(n23), .Z(out[0]) );
  GTECH_NOT U49 ( .A(ctrl[0]), .Z(n23) );
  GTECH_OR_NOT U50 ( .A(n41), .B(n42), .Z(n40) );
  GTECH_AOI22 U51 ( .A(in[0]), .B(n22), .C(n33), .D(in[2]), .Z(n42) );
  GTECH_AO21 U52 ( .A(in[4]), .B(n36), .C(n43), .Z(n41) );
  GTECH_AND3 U53 ( .A(ctrl[1]), .B(in[6]), .C(ctrl[2]), .Z(n43) );
  GTECH_NOR2 U54 ( .A(n44), .B(ctrl[1]), .Z(n36) );
  GTECH_NOT U55 ( .A(n38), .Z(n39) );
  GTECH_AOI222 U56 ( .A(ctrl[2]), .B(n27), .C(in[3]), .D(n33), .E(in[1]), .F(
        n22), .Z(n38) );
  GTECH_AND_NOT U57 ( .A(n44), .B(ctrl[1]), .Z(n22) );
  GTECH_ADD_AB U58 ( .A(ctrl[1]), .B(n44), .COUT(n33) );
  GTECH_NOT U59 ( .A(ctrl[2]), .Z(n44) );
  GTECH_MUX2 U60 ( .A(in[5]), .B(in[7]), .S(ctrl[1]), .Z(n27) );
endmodule

