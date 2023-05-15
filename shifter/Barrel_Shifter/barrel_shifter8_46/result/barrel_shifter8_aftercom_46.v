
module barrel_shifter8 ( in, ctrl, out );
  input [7:0] in;
  input [2:0] ctrl;
  output [7:0] out;
  wire   n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48;

  GTECH_NOT U32 ( .A(n24), .Z(out[7]) );
  GTECH_NAND3 U33 ( .A(in[7]), .B(n25), .C(n26), .Z(n24) );
  GTECH_AND2 U34 ( .A(n27), .B(n26), .Z(out[6]) );
  GTECH_MUX2 U35 ( .A(in[7]), .B(in[6]), .S(n25), .Z(n27) );
  GTECH_MUX2 U36 ( .A(n28), .B(n29), .S(ctrl[0]), .Z(out[5]) );
  GTECH_AND2 U37 ( .A(in[6]), .B(n26), .Z(n29) );
  GTECH_AND2 U38 ( .A(n30), .B(n31), .Z(n28) );
  GTECH_NOT U39 ( .A(n32), .Z(out[4]) );
  GTECH_MUX2 U40 ( .A(n33), .B(n34), .S(ctrl[0]), .Z(n32) );
  GTECH_NAND2 U41 ( .A(n31), .B(n30), .Z(n34) );
  GTECH_NOT U42 ( .A(n35), .Z(out[3]) );
  GTECH_MUX2 U43 ( .A(n36), .B(n33), .S(ctrl[0]), .Z(n35) );
  GTECH_AOI22 U44 ( .A(in[6]), .B(n37), .C(n26), .D(in[4]), .Z(n33) );
  GTECH_NOT U45 ( .A(n38), .Z(out[2]) );
  GTECH_MUX2 U46 ( .A(n36), .B(n39), .S(n25), .Z(n38) );
  GTECH_NOT U47 ( .A(ctrl[0]), .Z(n25) );
  GTECH_AOI222 U48 ( .A(in[3]), .B(n26), .C(n40), .D(in[7]), .E(n37), .F(in[5]), .Z(n36) );
  GTECH_NOT U49 ( .A(n41), .Z(out[1]) );
  GTECH_MUX2 U50 ( .A(n42), .B(n39), .S(ctrl[0]), .Z(n41) );
  GTECH_AOI222 U51 ( .A(in[2]), .B(n26), .C(n40), .D(in[6]), .E(in[4]), .F(n37), .Z(n39) );
  GTECH_MUX2 U52 ( .A(n43), .B(n44), .S(ctrl[0]), .Z(out[0]) );
  GTECH_NOT U53 ( .A(n42), .Z(n44) );
  GTECH_AOI222 U54 ( .A(ctrl[2]), .B(n30), .C(in[3]), .D(n37), .E(in[1]), .F(
        n26), .Z(n42) );
  GTECH_MUX2 U55 ( .A(in[5]), .B(in[7]), .S(ctrl[1]), .Z(n30) );
  GTECH_NAND2 U56 ( .A(n45), .B(n46), .Z(n43) );
  GTECH_AOI21 U57 ( .A(in[4]), .B(n40), .C(n47), .Z(n46) );
  GTECH_NOT U58 ( .A(n48), .Z(n47) );
  GTECH_NAND3 U59 ( .A(ctrl[1]), .B(in[6]), .C(ctrl[2]), .Z(n48) );
  GTECH_AND_NOT U60 ( .A(ctrl[2]), .B(ctrl[1]), .Z(n40) );
  GTECH_AOI22 U61 ( .A(in[0]), .B(n26), .C(n37), .D(in[2]), .Z(n45) );
  GTECH_AND_NOT U62 ( .A(ctrl[1]), .B(ctrl[2]), .Z(n37) );
  GTECH_AND_NOT U63 ( .A(n31), .B(ctrl[1]), .Z(n26) );
  GTECH_NOT U64 ( .A(ctrl[2]), .Z(n31) );
endmodule

