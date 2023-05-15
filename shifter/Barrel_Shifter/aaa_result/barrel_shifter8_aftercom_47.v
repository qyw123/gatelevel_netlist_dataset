
module barrel_shifter8 ( in, ctrl, out );
  input [7:0] in;
  input [2:0] ctrl;
  output [7:0] out;
  wire   n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46;

  GTECH_AND3 U33 ( .A(n25), .B(n26), .C(in[7]), .Z(out[7]) );
  GTECH_AND2 U34 ( .A(n27), .B(n25), .Z(out[6]) );
  GTECH_OA22 U35 ( .A(in[6]), .B(ctrl[0]), .C(in[7]), .D(n26), .Z(n27) );
  GTECH_OAI21 U36 ( .A(ctrl[0]), .B(n28), .C(n29), .Z(out[5]) );
  GTECH_NAND3 U37 ( .A(in[6]), .B(n25), .C(ctrl[0]), .Z(n29) );
  GTECH_OAI2N2 U38 ( .A(n26), .B(n28), .C(n26), .D(n30), .Z(out[4]) );
  GTECH_OR_NOT U39 ( .A(ctrl[2]), .B(n31), .Z(n28) );
  GTECH_OA22 U40 ( .A(in[5]), .B(ctrl[1]), .C(in[7]), .D(n32), .Z(n31) );
  GTECH_AO22 U41 ( .A(n26), .B(n33), .C(n30), .D(ctrl[0]), .Z(out[3]) );
  GTECH_AO22 U42 ( .A(in[6]), .B(n34), .C(n25), .D(in[4]), .Z(n30) );
  GTECH_AO22 U43 ( .A(n26), .B(n35), .C(n33), .D(ctrl[0]), .Z(out[2]) );
  GTECH_AO21 U44 ( .A(n25), .B(in[3]), .C(n36), .Z(n33) );
  GTECH_AO22 U45 ( .A(n34), .B(in[5]), .C(in[7]), .D(n37), .Z(n36) );
  GTECH_OAI2N2 U46 ( .A(ctrl[0]), .B(n38), .C(n35), .D(ctrl[0]), .Z(out[1]) );
  GTECH_AO21 U47 ( .A(n25), .B(in[2]), .C(n39), .Z(n35) );
  GTECH_AO22 U48 ( .A(n34), .B(in[4]), .C(in[6]), .D(n37), .Z(n39) );
  GTECH_OAI21 U49 ( .A(n38), .B(n26), .C(n40), .Z(out[0]) );
  GTECH_OAI21 U50 ( .A(n41), .B(n42), .C(n26), .Z(n40) );
  GTECH_AO22 U51 ( .A(n34), .B(in[2]), .C(in[0]), .D(n25), .Z(n42) );
  GTECH_AO21 U52 ( .A(in[4]), .B(n37), .C(n43), .Z(n41) );
  GTECH_AND3 U53 ( .A(ctrl[1]), .B(in[6]), .C(ctrl[2]), .Z(n43) );
  GTECH_NOT U54 ( .A(ctrl[0]), .Z(n26) );
  GTECH_AND2 U55 ( .A(n44), .B(n45), .Z(n38) );
  GTECH_AOI21 U56 ( .A(n37), .B(in[5]), .C(n46), .Z(n45) );
  GTECH_AND3 U57 ( .A(ctrl[1]), .B(in[7]), .C(ctrl[2]), .Z(n46) );
  GTECH_AND_NOT U58 ( .A(ctrl[2]), .B(ctrl[1]), .Z(n37) );
  GTECH_AOI22 U59 ( .A(in[1]), .B(n25), .C(n34), .D(in[3]), .Z(n44) );
  GTECH_NOR2 U60 ( .A(n32), .B(ctrl[2]), .Z(n34) );
  GTECH_AND_NOT U61 ( .A(n32), .B(ctrl[2]), .Z(n25) );
  GTECH_NOT U62 ( .A(ctrl[1]), .Z(n32) );
endmodule

