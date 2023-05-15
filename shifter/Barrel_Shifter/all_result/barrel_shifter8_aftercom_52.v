
module barrel_shifter8 ( in, ctrl, out );
  input [7:0] in;
  input [2:0] ctrl;
  output [7:0] out;
  wire   n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63;

  GTECH_NOR3 U36 ( .A(n28), .B(ctrl[0]), .C(n29), .Z(out[7]) );
  GTECH_AND2 U37 ( .A(n30), .B(n31), .Z(out[6]) );
  GTECH_MUX2 U38 ( .A(in[7]), .B(in[6]), .S(n32), .Z(n31) );
  GTECH_NOT U39 ( .A(n33), .Z(out[5]) );
  GTECH_MUX2 U40 ( .A(n34), .B(n35), .S(ctrl[0]), .Z(n33) );
  GTECH_OR_NOT U41 ( .A(n36), .B(n30), .Z(n35) );
  GTECH_NOT U42 ( .A(n37), .Z(out[4]) );
  GTECH_MUX2 U43 ( .A(n38), .B(n34), .S(ctrl[0]), .Z(n37) );
  GTECH_OR_NOT U44 ( .A(ctrl[2]), .B(n39), .Z(n34) );
  GTECH_MUX2 U45 ( .A(in[7]), .B(in[5]), .S(n40), .Z(n39) );
  GTECH_NOT U46 ( .A(n41), .Z(out[3]) );
  GTECH_MUX2 U47 ( .A(n42), .B(n38), .S(ctrl[0]), .Z(n41) );
  GTECH_AOI2N2 U48 ( .A(n30), .B(in[4]), .C(n36), .D(n43), .Z(n38) );
  GTECH_NOT U49 ( .A(n44), .Z(out[2]) );
  GTECH_MUX2 U50 ( .A(n45), .B(n42), .S(ctrl[0]), .Z(n44) );
  GTECH_OA21 U51 ( .A(n28), .B(n46), .C(n47), .Z(n42) );
  GTECH_OA22 U52 ( .A(n43), .B(n48), .C(n29), .D(n49), .Z(n47) );
  GTECH_NOT U53 ( .A(in[7]), .Z(n29) );
  GTECH_NOT U54 ( .A(in[3]), .Z(n46) );
  GTECH_NOT U55 ( .A(n50), .Z(out[1]) );
  GTECH_MUX2 U56 ( .A(n45), .B(n51), .S(n32), .Z(n50) );
  GTECH_OA21 U57 ( .A(n28), .B(n52), .C(n53), .Z(n45) );
  GTECH_OA22 U58 ( .A(n43), .B(n54), .C(n36), .D(n49), .Z(n53) );
  GTECH_NOT U59 ( .A(in[6]), .Z(n36) );
  GTECH_NOT U60 ( .A(n55), .Z(n43) );
  GTECH_NOT U61 ( .A(in[2]), .Z(n52) );
  GTECH_NOT U62 ( .A(n56), .Z(out[0]) );
  GTECH_MUX2 U63 ( .A(n51), .B(n57), .S(n32), .Z(n56) );
  GTECH_NOT U64 ( .A(ctrl[0]), .Z(n32) );
  GTECH_AND2 U65 ( .A(n58), .B(n59), .Z(n57) );
  GTECH_OA21 U66 ( .A(n54), .B(n49), .C(n60), .Z(n59) );
  GTECH_NAND3 U67 ( .A(ctrl[1]), .B(in[6]), .C(ctrl[2]), .Z(n60) );
  GTECH_NOT U68 ( .A(in[4]), .Z(n54) );
  GTECH_AOI22 U69 ( .A(in[0]), .B(n30), .C(n55), .D(in[2]), .Z(n58) );
  GTECH_AND2 U70 ( .A(n61), .B(n62), .Z(n51) );
  GTECH_OA21 U71 ( .A(n49), .B(n48), .C(n63), .Z(n62) );
  GTECH_NAND3 U72 ( .A(ctrl[1]), .B(in[7]), .C(ctrl[2]), .Z(n63) );
  GTECH_NOT U73 ( .A(in[5]), .Z(n48) );
  GTECH_OR_NOT U74 ( .A(ctrl[1]), .B(ctrl[2]), .Z(n49) );
  GTECH_AOI22 U75 ( .A(in[1]), .B(n30), .C(n55), .D(in[3]), .Z(n61) );
  GTECH_NOR2 U76 ( .A(n40), .B(ctrl[2]), .Z(n55) );
  GTECH_NOT U77 ( .A(ctrl[1]), .Z(n40) );
  GTECH_NOT U78 ( .A(n28), .Z(n30) );
  GTECH_OR2 U79 ( .A(ctrl[1]), .B(ctrl[2]), .Z(n28) );
endmodule

