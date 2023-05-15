
module barrel_shifter8 ( in, ctrl, out );
  input [7:0] in;
  input [2:0] ctrl;
  output [7:0] out;
  wire   n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61;

  GTECH_NOR3 U33 ( .A(n25), .B(ctrl[0]), .C(n26), .Z(out[7]) );
  GTECH_AND_NOT U34 ( .A(n27), .B(n25), .Z(out[6]) );
  GTECH_MUX2 U35 ( .A(in[7]), .B(in[6]), .S(n28), .Z(n27) );
  GTECH_NOT U36 ( .A(n29), .Z(out[5]) );
  GTECH_MUX2 U37 ( .A(n30), .B(n31), .S(ctrl[0]), .Z(n29) );
  GTECH_OR_NOT U38 ( .A(n25), .B(in[6]), .Z(n31) );
  GTECH_NOT U39 ( .A(n32), .Z(out[4]) );
  GTECH_MUX2 U40 ( .A(n33), .B(n30), .S(ctrl[0]), .Z(n32) );
  GTECH_OR_NOT U41 ( .A(ctrl[2]), .B(n34), .Z(n30) );
  GTECH_MUX2 U42 ( .A(in[7]), .B(in[5]), .S(n35), .Z(n34) );
  GTECH_NOT U43 ( .A(n36), .Z(out[3]) );
  GTECH_MUX2 U44 ( .A(n37), .B(n33), .S(ctrl[0]), .Z(n36) );
  GTECH_AOI2N2 U45 ( .A(n38), .B(in[4]), .C(n39), .D(n40), .Z(n33) );
  GTECH_NOT U46 ( .A(n41), .Z(out[2]) );
  GTECH_MUX2 U47 ( .A(n42), .B(n37), .S(ctrl[0]), .Z(n41) );
  GTECH_OA21 U48 ( .A(n25), .B(n43), .C(n44), .Z(n37) );
  GTECH_OA22 U49 ( .A(n40), .B(n45), .C(n26), .D(n46), .Z(n44) );
  GTECH_NOT U50 ( .A(in[3]), .Z(n43) );
  GTECH_NOT U51 ( .A(n47), .Z(out[1]) );
  GTECH_MUX2 U52 ( .A(n42), .B(n48), .S(n28), .Z(n47) );
  GTECH_OA21 U53 ( .A(n25), .B(n49), .C(n50), .Z(n42) );
  GTECH_OA22 U54 ( .A(n40), .B(n51), .C(n39), .D(n46), .Z(n50) );
  GTECH_NOT U55 ( .A(n52), .Z(n40) );
  GTECH_NOT U56 ( .A(in[2]), .Z(n49) );
  GTECH_NOT U57 ( .A(n38), .Z(n25) );
  GTECH_NOT U58 ( .A(n53), .Z(out[0]) );
  GTECH_MUX2 U59 ( .A(n48), .B(n54), .S(n28), .Z(n53) );
  GTECH_NOT U60 ( .A(ctrl[0]), .Z(n28) );
  GTECH_AND2 U61 ( .A(n55), .B(n56), .Z(n54) );
  GTECH_OA21 U62 ( .A(n51), .B(n46), .C(n57), .Z(n56) );
  GTECH_OR3 U63 ( .A(n35), .B(n39), .C(n58), .Z(n57) );
  GTECH_NOT U64 ( .A(in[6]), .Z(n39) );
  GTECH_NOT U65 ( .A(in[4]), .Z(n51) );
  GTECH_AOI22 U66 ( .A(in[0]), .B(n38), .C(n52), .D(in[2]), .Z(n55) );
  GTECH_AND2 U67 ( .A(n59), .B(n60), .Z(n48) );
  GTECH_OA21 U68 ( .A(n46), .B(n45), .C(n61), .Z(n60) );
  GTECH_OR3 U69 ( .A(n35), .B(n26), .C(n58), .Z(n61) );
  GTECH_NOT U70 ( .A(in[7]), .Z(n26) );
  GTECH_NOT U71 ( .A(in[5]), .Z(n45) );
  GTECH_OR_NOT U72 ( .A(n58), .B(n35), .Z(n46) );
  GTECH_AOI22 U73 ( .A(in[1]), .B(n38), .C(n52), .D(in[3]), .Z(n59) );
  GTECH_NOR2 U74 ( .A(ctrl[2]), .B(n35), .Z(n52) );
  GTECH_NOT U75 ( .A(ctrl[1]), .Z(n35) );
  GTECH_AND_NOT U76 ( .A(n58), .B(ctrl[1]), .Z(n38) );
  GTECH_NOT U77 ( .A(ctrl[2]), .Z(n58) );
endmodule

