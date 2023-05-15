
module barrel_shifter8 ( in, ctrl, out );
  input [7:0] in;
  input [2:0] ctrl;
  output [7:0] out;
  wire   n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43;

  GTECH_AND3 U29 ( .A(n21), .B(n22), .C(in[7]), .Z(out[7]) );
  GTECH_AND2 U30 ( .A(n23), .B(n21), .Z(out[6]) );
  GTECH_MUX2 U31 ( .A(in[6]), .B(in[7]), .S(ctrl[0]), .Z(n23) );
  GTECH_MUX2 U32 ( .A(n24), .B(n25), .S(n22), .Z(out[5]) );
  GTECH_AND2 U33 ( .A(n26), .B(n27), .Z(n25) );
  GTECH_AND2 U34 ( .A(in[6]), .B(n21), .Z(n24) );
  GTECH_NOT U35 ( .A(n28), .Z(out[4]) );
  GTECH_MUX2 U36 ( .A(n29), .B(n30), .S(n22), .Z(n28) );
  GTECH_NAND2 U37 ( .A(n27), .B(n26), .Z(n29) );
  GTECH_NOT U38 ( .A(n31), .Z(out[3]) );
  GTECH_MUX2 U39 ( .A(n30), .B(n32), .S(n22), .Z(n31) );
  GTECH_AOI22 U40 ( .A(in[6]), .B(n33), .C(n21), .D(in[4]), .Z(n30) );
  GTECH_NOT U41 ( .A(n34), .Z(out[2]) );
  GTECH_MUX2 U42 ( .A(n35), .B(n32), .S(ctrl[0]), .Z(n34) );
  GTECH_AOI222 U43 ( .A(in[3]), .B(n21), .C(n36), .D(in[7]), .E(n33), .F(in[5]), .Z(n32) );
  GTECH_NOT U44 ( .A(n37), .Z(out[1]) );
  GTECH_MUX2 U45 ( .A(n35), .B(n38), .S(n22), .Z(n37) );
  GTECH_AOI222 U46 ( .A(in[2]), .B(n21), .C(n36), .D(in[6]), .E(in[4]), .F(n33), .Z(n35) );
  GTECH_MUX2 U47 ( .A(n39), .B(n40), .S(n22), .Z(out[0]) );
  GTECH_NOT U48 ( .A(ctrl[0]), .Z(n22) );
  GTECH_NAND2 U49 ( .A(n41), .B(n42), .Z(n40) );
  GTECH_AOI21 U50 ( .A(in[4]), .B(n36), .C(n43), .Z(n42) );
  GTECH_AND3 U51 ( .A(ctrl[1]), .B(in[6]), .C(ctrl[2]), .Z(n43) );
  GTECH_AND_NOT U52 ( .A(ctrl[2]), .B(ctrl[1]), .Z(n36) );
  GTECH_AOI22 U53 ( .A(in[0]), .B(n21), .C(n33), .D(in[2]), .Z(n41) );
  GTECH_NOT U54 ( .A(n38), .Z(n39) );
  GTECH_AOI222 U55 ( .A(ctrl[2]), .B(n26), .C(in[3]), .D(n33), .E(in[1]), .F(
        n21), .Z(n38) );
  GTECH_AND_NOT U56 ( .A(n27), .B(ctrl[1]), .Z(n21) );
  GTECH_AND2 U57 ( .A(ctrl[1]), .B(n27), .Z(n33) );
  GTECH_NOT U58 ( .A(ctrl[2]), .Z(n27) );
  GTECH_MUX2 U59 ( .A(in[5]), .B(in[7]), .S(ctrl[1]), .Z(n26) );
endmodule

