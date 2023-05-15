
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
  GTECH_OR2 U38 ( .A(n25), .B(n32), .Z(n31) );
  GTECH_NOT U39 ( .A(n33), .Z(out[4]) );
  GTECH_MUX2 U40 ( .A(n34), .B(n30), .S(ctrl[0]), .Z(n33) );
  GTECH_NAND2 U41 ( .A(n35), .B(n36), .Z(n30) );
  GTECH_MUX2 U42 ( .A(in[7]), .B(in[5]), .S(n37), .Z(n35) );
  GTECH_NOT U43 ( .A(n38), .Z(out[3]) );
  GTECH_MUX2 U44 ( .A(n39), .B(n34), .S(ctrl[0]), .Z(n38) );
  GTECH_AOI2N2 U45 ( .A(n40), .B(in[4]), .C(n32), .D(n41), .Z(n34) );
  GTECH_NOT U46 ( .A(n42), .Z(out[2]) );
  GTECH_MUX2 U47 ( .A(n43), .B(n39), .S(ctrl[0]), .Z(n42) );
  GTECH_OA21 U48 ( .A(n25), .B(n44), .C(n45), .Z(n39) );
  GTECH_OA22 U49 ( .A(n41), .B(n46), .C(n26), .D(n47), .Z(n45) );
  GTECH_NOT U50 ( .A(in[3]), .Z(n44) );
  GTECH_NOT U51 ( .A(n48), .Z(out[1]) );
  GTECH_MUX2 U52 ( .A(n43), .B(n49), .S(n28), .Z(n48) );
  GTECH_OA21 U53 ( .A(n25), .B(n50), .C(n51), .Z(n43) );
  GTECH_OA22 U54 ( .A(n41), .B(n52), .C(n32), .D(n47), .Z(n51) );
  GTECH_NOT U55 ( .A(n53), .Z(n41) );
  GTECH_NOT U56 ( .A(in[2]), .Z(n50) );
  GTECH_NOT U57 ( .A(n40), .Z(n25) );
  GTECH_NOT U58 ( .A(n54), .Z(out[0]) );
  GTECH_MUX2 U59 ( .A(n49), .B(n55), .S(n28), .Z(n54) );
  GTECH_NOT U60 ( .A(ctrl[0]), .Z(n28) );
  GTECH_AND2 U61 ( .A(n56), .B(n57), .Z(n55) );
  GTECH_OA21 U62 ( .A(n52), .B(n47), .C(n58), .Z(n57) );
  GTECH_OR3 U63 ( .A(n37), .B(n32), .C(n36), .Z(n58) );
  GTECH_NOT U64 ( .A(in[6]), .Z(n32) );
  GTECH_NOT U65 ( .A(in[4]), .Z(n52) );
  GTECH_AOI22 U66 ( .A(in[0]), .B(n40), .C(n53), .D(in[2]), .Z(n56) );
  GTECH_AND2 U67 ( .A(n59), .B(n60), .Z(n49) );
  GTECH_OA21 U68 ( .A(n47), .B(n46), .C(n61), .Z(n60) );
  GTECH_OR3 U69 ( .A(n37), .B(n26), .C(n36), .Z(n61) );
  GTECH_NOT U70 ( .A(in[7]), .Z(n26) );
  GTECH_NOT U71 ( .A(in[5]), .Z(n46) );
  GTECH_OR2 U72 ( .A(n36), .B(ctrl[1]), .Z(n47) );
  GTECH_AOI22 U73 ( .A(in[1]), .B(n40), .C(n53), .D(in[3]), .Z(n59) );
  GTECH_AND_NOT U74 ( .A(n36), .B(n37), .Z(n53) );
  GTECH_NOT U75 ( .A(ctrl[1]), .Z(n37) );
  GTECH_AND_NOT U76 ( .A(n36), .B(ctrl[1]), .Z(n40) );
  GTECH_NOT U77 ( .A(ctrl[2]), .Z(n36) );
endmodule

