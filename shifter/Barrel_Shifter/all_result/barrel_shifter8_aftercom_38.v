
module barrel_shifter8 ( in, ctrl, out );
  input [7:0] in;
  input [2:0] ctrl;
  output [7:0] out;
  wire   n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64;

  GTECH_NOR3 U36 ( .A(n28), .B(ctrl[0]), .C(n29), .Z(out[7]) );
  GTECH_AND_NOT U37 ( .A(n30), .B(n28), .Z(out[6]) );
  GTECH_MUX2 U38 ( .A(in[7]), .B(in[6]), .S(n31), .Z(n30) );
  GTECH_NOT U39 ( .A(n32), .Z(out[5]) );
  GTECH_MUX2 U40 ( .A(n33), .B(n34), .S(ctrl[0]), .Z(n32) );
  GTECH_OR_NOT U41 ( .A(n28), .B(in[6]), .Z(n34) );
  GTECH_NOT U42 ( .A(n35), .Z(out[4]) );
  GTECH_MUX2 U43 ( .A(n36), .B(n33), .S(ctrl[0]), .Z(n35) );
  GTECH_OR_NOT U44 ( .A(ctrl[2]), .B(n37), .Z(n33) );
  GTECH_MUX2 U45 ( .A(in[7]), .B(in[5]), .S(n38), .Z(n37) );
  GTECH_NOT U46 ( .A(n39), .Z(out[3]) );
  GTECH_MUX2 U47 ( .A(n40), .B(n36), .S(ctrl[0]), .Z(n39) );
  GTECH_AOI2N2 U48 ( .A(n41), .B(in[4]), .C(n42), .D(n43), .Z(n36) );
  GTECH_NOT U49 ( .A(n44), .Z(out[2]) );
  GTECH_MUX2 U50 ( .A(n45), .B(n40), .S(ctrl[0]), .Z(n44) );
  GTECH_OA21 U51 ( .A(n28), .B(n46), .C(n47), .Z(n40) );
  GTECH_OA22 U52 ( .A(n43), .B(n48), .C(n29), .D(n49), .Z(n47) );
  GTECH_NOT U53 ( .A(in[3]), .Z(n46) );
  GTECH_NOT U54 ( .A(n50), .Z(out[1]) );
  GTECH_MUX2 U55 ( .A(n45), .B(n51), .S(n31), .Z(n50) );
  GTECH_OA21 U56 ( .A(n28), .B(n52), .C(n53), .Z(n45) );
  GTECH_OA22 U57 ( .A(n43), .B(n54), .C(n42), .D(n49), .Z(n53) );
  GTECH_NOT U58 ( .A(n55), .Z(n43) );
  GTECH_NOT U59 ( .A(in[2]), .Z(n52) );
  GTECH_NOT U60 ( .A(n41), .Z(n28) );
  GTECH_NOT U61 ( .A(n56), .Z(out[0]) );
  GTECH_MUX2 U62 ( .A(n51), .B(n57), .S(n31), .Z(n56) );
  GTECH_NOT U63 ( .A(ctrl[0]), .Z(n31) );
  GTECH_AND2 U64 ( .A(n58), .B(n59), .Z(n57) );
  GTECH_OA21 U65 ( .A(n54), .B(n49), .C(n60), .Z(n59) );
  GTECH_OR3 U66 ( .A(n38), .B(n42), .C(n61), .Z(n60) );
  GTECH_NOT U67 ( .A(in[6]), .Z(n42) );
  GTECH_NOT U68 ( .A(in[4]), .Z(n54) );
  GTECH_AOI22 U69 ( .A(in[0]), .B(n41), .C(n55), .D(in[2]), .Z(n58) );
  GTECH_AND2 U70 ( .A(n62), .B(n63), .Z(n51) );
  GTECH_OA21 U71 ( .A(n49), .B(n48), .C(n64), .Z(n63) );
  GTECH_OR3 U72 ( .A(n38), .B(n29), .C(n61), .Z(n64) );
  GTECH_NOT U73 ( .A(in[7]), .Z(n29) );
  GTECH_NOT U74 ( .A(in[5]), .Z(n48) );
  GTECH_OR_NOT U75 ( .A(n61), .B(n38), .Z(n49) );
  GTECH_AOI22 U76 ( .A(in[1]), .B(n41), .C(n55), .D(in[3]), .Z(n62) );
  GTECH_NOR2 U77 ( .A(ctrl[2]), .B(n38), .Z(n55) );
  GTECH_NOT U78 ( .A(ctrl[1]), .Z(n38) );
  GTECH_AND_NOT U79 ( .A(n61), .B(ctrl[1]), .Z(n41) );
  GTECH_NOT U80 ( .A(ctrl[2]), .Z(n61) );
endmodule

