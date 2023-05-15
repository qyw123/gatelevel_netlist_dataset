
module barrel_shifter8 ( in, ctrl, out );
  input [7:0] in;
  input [2:0] ctrl;
  output [7:0] out;
  wire   n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59;

  GTECH_AND3 U36 ( .A(n28), .B(n29), .C(in[7]), .Z(out[7]) );
  GTECH_AND2 U37 ( .A(n30), .B(n28), .Z(out[6]) );
  GTECH_MUX2 U38 ( .A(in[6]), .B(in[7]), .S(ctrl[0]), .Z(n30) );
  GTECH_NOT U39 ( .A(n31), .Z(out[5]) );
  GTECH_MUX2 U40 ( .A(n32), .B(n33), .S(n29), .Z(n31) );
  GTECH_NAND2 U41 ( .A(n28), .B(in[6]), .Z(n32) );
  GTECH_NOT U42 ( .A(n34), .Z(out[4]) );
  GTECH_MUX2 U43 ( .A(n33), .B(n35), .S(n29), .Z(n34) );
  GTECH_OR_NOT U44 ( .A(ctrl[2]), .B(n36), .Z(n33) );
  GTECH_MUX2 U45 ( .A(in[5]), .B(in[7]), .S(ctrl[1]), .Z(n36) );
  GTECH_NOT U46 ( .A(n37), .Z(out[3]) );
  GTECH_MUX2 U47 ( .A(n35), .B(n38), .S(n29), .Z(n37) );
  GTECH_AOI2N2 U48 ( .A(in[6]), .B(n39), .C(n40), .D(n41), .Z(n35) );
  GTECH_NOT U49 ( .A(n42), .Z(out[2]) );
  GTECH_MUX2 U50 ( .A(n38), .B(n43), .S(n29), .Z(n42) );
  GTECH_NOT U51 ( .A(ctrl[0]), .Z(n29) );
  GTECH_AOI21 U52 ( .A(n28), .B(in[3]), .C(n44), .Z(n38) );
  GTECH_AO22 U53 ( .A(n39), .B(in[5]), .C(in[7]), .D(n45), .Z(n44) );
  GTECH_NOT U54 ( .A(n46), .Z(out[1]) );
  GTECH_MUX2 U55 ( .A(n47), .B(n43), .S(ctrl[0]), .Z(n46) );
  GTECH_AOI21 U56 ( .A(n28), .B(in[2]), .C(n48), .Z(n43) );
  GTECH_AO22 U57 ( .A(n39), .B(in[4]), .C(in[6]), .D(n45), .Z(n48) );
  GTECH_NOT U58 ( .A(n49), .Z(out[0]) );
  GTECH_MUX2 U59 ( .A(n50), .B(n47), .S(ctrl[0]), .Z(n49) );
  GTECH_AND2 U60 ( .A(n51), .B(n52), .Z(n47) );
  GTECH_AOI21 U61 ( .A(n45), .B(in[5]), .C(n53), .Z(n52) );
  GTECH_NOT U62 ( .A(n54), .Z(n53) );
  GTECH_NAND3 U63 ( .A(ctrl[1]), .B(in[7]), .C(ctrl[2]), .Z(n54) );
  GTECH_NOT U64 ( .A(n55), .Z(n45) );
  GTECH_AOI22 U65 ( .A(in[1]), .B(n28), .C(n39), .D(in[3]), .Z(n51) );
  GTECH_AND2 U66 ( .A(n56), .B(n57), .Z(n50) );
  GTECH_OA21 U67 ( .A(n41), .B(n55), .C(n58), .Z(n57) );
  GTECH_NAND3 U68 ( .A(ctrl[1]), .B(in[6]), .C(ctrl[2]), .Z(n58) );
  GTECH_OR_NOT U69 ( .A(ctrl[1]), .B(ctrl[2]), .Z(n55) );
  GTECH_NOT U70 ( .A(in[4]), .Z(n41) );
  GTECH_AOI22 U71 ( .A(in[0]), .B(n28), .C(n39), .D(in[2]), .Z(n56) );
  GTECH_NOT U72 ( .A(n59), .Z(n39) );
  GTECH_OR_NOT U73 ( .A(ctrl[2]), .B(ctrl[1]), .Z(n59) );
  GTECH_NOT U74 ( .A(n40), .Z(n28) );
  GTECH_OR2 U75 ( .A(ctrl[1]), .B(ctrl[2]), .Z(n40) );
endmodule

