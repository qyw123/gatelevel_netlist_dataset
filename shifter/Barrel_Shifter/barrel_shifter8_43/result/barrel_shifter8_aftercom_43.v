
module barrel_shifter8 ( in, ctrl, out );
  input [7:0] in;
  input [2:0] ctrl;
  output [7:0] out;
  wire   n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68;

  GTECH_NOR3 U40 ( .A(n32), .B(ctrl[0]), .C(n33), .Z(out[7]) );
  GTECH_AND_NOT U41 ( .A(n34), .B(n33), .Z(out[6]) );
  GTECH_MUX2 U42 ( .A(in[7]), .B(in[6]), .S(n35), .Z(n34) );
  GTECH_NOT U43 ( .A(n36), .Z(out[5]) );
  GTECH_MUX2 U44 ( .A(n37), .B(n38), .S(ctrl[0]), .Z(n36) );
  GTECH_OR_NOT U45 ( .A(n33), .B(in[6]), .Z(n38) );
  GTECH_NOT U46 ( .A(n39), .Z(out[4]) );
  GTECH_MUX2 U47 ( .A(n40), .B(n37), .S(ctrl[0]), .Z(n39) );
  GTECH_OR_NOT U48 ( .A(ctrl[2]), .B(n41), .Z(n37) );
  GTECH_MUX2 U49 ( .A(in[7]), .B(in[5]), .S(n42), .Z(n41) );
  GTECH_NOT U50 ( .A(n43), .Z(out[3]) );
  GTECH_MUX2 U51 ( .A(n44), .B(n40), .S(ctrl[0]), .Z(n43) );
  GTECH_AOI2N2 U52 ( .A(n45), .B(in[4]), .C(n46), .D(n47), .Z(n40) );
  GTECH_NOT U53 ( .A(n48), .Z(out[2]) );
  GTECH_MUX2 U54 ( .A(n49), .B(n44), .S(ctrl[0]), .Z(n48) );
  GTECH_OA21 U55 ( .A(n33), .B(n50), .C(n51), .Z(n44) );
  GTECH_OA22 U56 ( .A(n47), .B(n52), .C(n32), .D(n53), .Z(n51) );
  GTECH_NOT U57 ( .A(in[3]), .Z(n50) );
  GTECH_NOT U58 ( .A(n54), .Z(out[1]) );
  GTECH_MUX2 U59 ( .A(n49), .B(n55), .S(n35), .Z(n54) );
  GTECH_OA21 U60 ( .A(n33), .B(n56), .C(n57), .Z(n49) );
  GTECH_OA22 U61 ( .A(n47), .B(n58), .C(n46), .D(n53), .Z(n57) );
  GTECH_NOT U62 ( .A(n59), .Z(n47) );
  GTECH_NOT U63 ( .A(in[2]), .Z(n56) );
  GTECH_NOT U64 ( .A(n45), .Z(n33) );
  GTECH_NOT U65 ( .A(n60), .Z(out[0]) );
  GTECH_MUX2 U66 ( .A(n55), .B(n61), .S(n35), .Z(n60) );
  GTECH_NOT U67 ( .A(ctrl[0]), .Z(n35) );
  GTECH_AND2 U68 ( .A(n62), .B(n63), .Z(n61) );
  GTECH_OA21 U69 ( .A(n58), .B(n53), .C(n64), .Z(n63) );
  GTECH_OR3 U70 ( .A(n42), .B(n46), .C(n65), .Z(n64) );
  GTECH_NOT U71 ( .A(in[6]), .Z(n46) );
  GTECH_NOT U72 ( .A(in[4]), .Z(n58) );
  GTECH_AOI22 U73 ( .A(in[0]), .B(n45), .C(n59), .D(in[2]), .Z(n62) );
  GTECH_AND2 U74 ( .A(n66), .B(n67), .Z(n55) );
  GTECH_OA21 U75 ( .A(n53), .B(n52), .C(n68), .Z(n67) );
  GTECH_OR3 U76 ( .A(n42), .B(n32), .C(n65), .Z(n68) );
  GTECH_NOT U77 ( .A(in[7]), .Z(n32) );
  GTECH_NOT U78 ( .A(in[5]), .Z(n52) );
  GTECH_OR_NOT U79 ( .A(n65), .B(n42), .Z(n53) );
  GTECH_AOI22 U80 ( .A(in[1]), .B(n45), .C(n59), .D(in[3]), .Z(n66) );
  GTECH_NOR2 U81 ( .A(ctrl[2]), .B(n42), .Z(n59) );
  GTECH_NOT U82 ( .A(ctrl[1]), .Z(n42) );
  GTECH_AND_NOT U83 ( .A(n65), .B(ctrl[1]), .Z(n45) );
  GTECH_NOT U84 ( .A(ctrl[2]), .Z(n65) );
endmodule

