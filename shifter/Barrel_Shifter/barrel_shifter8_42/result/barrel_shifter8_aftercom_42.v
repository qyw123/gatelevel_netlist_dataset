
module barrel_shifter8 ( in, ctrl, out );
  input [7:0] in;
  input [2:0] ctrl;
  output [7:0] out;
  wire   n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44;

  GTECH_NOT U32 ( .A(n24), .Z(out[7]) );
  GTECH_NAND3 U33 ( .A(in[7]), .B(n25), .C(n26), .Z(n24) );
  GTECH_AND2 U34 ( .A(n26), .B(n27), .Z(out[6]) );
  GTECH_OA22 U35 ( .A(in[6]), .B(ctrl[0]), .C(in[7]), .D(n25), .Z(n27) );
  GTECH_NAND2 U36 ( .A(n28), .B(n29), .Z(out[5]) );
  GTECH_NAND3 U37 ( .A(n30), .B(n31), .C(n25), .Z(n29) );
  GTECH_NAND3 U38 ( .A(in[6]), .B(n26), .C(ctrl[0]), .Z(n28) );
  GTECH_OAI21 U39 ( .A(ctrl[0]), .B(n32), .C(n33), .Z(out[4]) );
  GTECH_NAND3 U40 ( .A(n30), .B(n31), .C(ctrl[0]), .Z(n33) );
  GTECH_OAI22 U41 ( .A(n32), .B(n25), .C(ctrl[0]), .D(n34), .Z(out[3]) );
  GTECH_AOI22 U42 ( .A(n26), .B(in[4]), .C(in[6]), .D(n35), .Z(n32) );
  GTECH_OAI22 U43 ( .A(n34), .B(n25), .C(ctrl[0]), .D(n36), .Z(out[2]) );
  GTECH_AOI222 U44 ( .A(in[3]), .B(n26), .C(n37), .D(in[7]), .E(n35), .F(in[5]), .Z(n34) );
  GTECH_OAI22 U45 ( .A(ctrl[0]), .B(n38), .C(n36), .D(n25), .Z(out[1]) );
  GTECH_AOI222 U46 ( .A(in[2]), .B(n26), .C(n37), .D(in[6]), .E(in[4]), .F(n35), .Z(n36) );
  GTECH_OAI21 U47 ( .A(n38), .B(n25), .C(n39), .Z(out[0]) );
  GTECH_OAI21 U48 ( .A(n40), .B(n41), .C(n25), .Z(n39) );
  GTECH_AO22 U49 ( .A(n35), .B(in[2]), .C(in[0]), .D(n26), .Z(n41) );
  GTECH_AO21 U50 ( .A(in[4]), .B(n37), .C(n42), .Z(n40) );
  GTECH_NOT U51 ( .A(n43), .Z(n42) );
  GTECH_NAND3 U52 ( .A(ctrl[1]), .B(in[6]), .C(ctrl[2]), .Z(n43) );
  GTECH_AND_NOT U53 ( .A(n44), .B(n31), .Z(n37) );
  GTECH_NOT U54 ( .A(ctrl[0]), .Z(n25) );
  GTECH_AOI222 U55 ( .A(ctrl[2]), .B(n30), .C(in[3]), .D(n35), .E(in[1]), .F(
        n26), .Z(n38) );
  GTECH_AND2 U56 ( .A(n44), .B(n31), .Z(n26) );
  GTECH_AND2 U57 ( .A(ctrl[1]), .B(n31), .Z(n35) );
  GTECH_NOT U58 ( .A(ctrl[2]), .Z(n31) );
  GTECH_AO22 U59 ( .A(in[7]), .B(ctrl[1]), .C(n44), .D(in[5]), .Z(n30) );
  GTECH_NOT U60 ( .A(ctrl[1]), .Z(n44) );
endmodule

