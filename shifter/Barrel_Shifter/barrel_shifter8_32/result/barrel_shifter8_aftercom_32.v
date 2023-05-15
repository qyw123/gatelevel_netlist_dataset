
module barrel_shifter8 ( in, ctrl, out );
  input [7:0] in;
  input [2:0] ctrl;
  output [7:0] out;
  wire   n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63;

  GTECH_AND3 U38 ( .A(n30), .B(n31), .C(in[7]), .Z(out[7]) );
  GTECH_AND2 U39 ( .A(n30), .B(n32), .Z(out[6]) );
  GTECH_MUX2 U40 ( .A(in[7]), .B(in[6]), .S(n31), .Z(n32) );
  GTECH_NOT U41 ( .A(n33), .Z(out[5]) );
  GTECH_MUX2 U42 ( .A(n34), .B(n35), .S(ctrl[0]), .Z(n33) );
  GTECH_OR_NOT U43 ( .A(n36), .B(n30), .Z(n35) );
  GTECH_NOT U44 ( .A(n37), .Z(out[4]) );
  GTECH_MUX2 U45 ( .A(n38), .B(n34), .S(ctrl[0]), .Z(n37) );
  GTECH_OR_NOT U46 ( .A(ctrl[2]), .B(n39), .Z(n34) );
  GTECH_MUX2 U47 ( .A(in[7]), .B(in[5]), .S(n40), .Z(n39) );
  GTECH_NOT U48 ( .A(n41), .Z(out[3]) );
  GTECH_MUX2 U49 ( .A(n42), .B(n38), .S(ctrl[0]), .Z(n41) );
  GTECH_AOI2N2 U50 ( .A(n30), .B(in[4]), .C(n36), .D(n43), .Z(n38) );
  GTECH_NOT U51 ( .A(n44), .Z(out[2]) );
  GTECH_MUX2 U52 ( .A(n45), .B(n42), .S(ctrl[0]), .Z(n44) );
  GTECH_OA21 U53 ( .A(n43), .B(n46), .C(n47), .Z(n42) );
  GTECH_AOI2N2 U54 ( .A(n30), .B(in[3]), .C(n48), .D(n49), .Z(n47) );
  GTECH_NOT U55 ( .A(n50), .Z(out[1]) );
  GTECH_MUX2 U56 ( .A(n45), .B(n51), .S(n31), .Z(n50) );
  GTECH_OA21 U57 ( .A(n52), .B(n43), .C(n53), .Z(n45) );
  GTECH_AOI2N2 U58 ( .A(n30), .B(in[2]), .C(n36), .D(n49), .Z(n53) );
  GTECH_NOT U59 ( .A(n54), .Z(n43) );
  GTECH_NOT U60 ( .A(n55), .Z(out[0]) );
  GTECH_MUX2 U61 ( .A(n51), .B(n56), .S(n31), .Z(n55) );
  GTECH_NOT U62 ( .A(ctrl[0]), .Z(n31) );
  GTECH_AND_NOT U63 ( .A(n57), .B(n58), .Z(n56) );
  GTECH_AO22 U64 ( .A(in[0]), .B(n30), .C(n54), .D(in[2]), .Z(n58) );
  GTECH_OA21 U65 ( .A(n52), .B(n49), .C(n59), .Z(n57) );
  GTECH_OR3 U66 ( .A(n40), .B(n36), .C(n60), .Z(n59) );
  GTECH_NOT U67 ( .A(in[6]), .Z(n36) );
  GTECH_NOT U68 ( .A(in[4]), .Z(n52) );
  GTECH_AND_NOT U69 ( .A(n61), .B(n62), .Z(n51) );
  GTECH_AO22 U70 ( .A(in[1]), .B(n30), .C(n54), .D(in[3]), .Z(n62) );
  GTECH_NOR2 U71 ( .A(ctrl[2]), .B(n40), .Z(n54) );
  GTECH_AND2 U72 ( .A(n40), .B(n60), .Z(n30) );
  GTECH_OA21 U73 ( .A(n49), .B(n46), .C(n63), .Z(n61) );
  GTECH_OR3 U74 ( .A(n40), .B(n48), .C(n60), .Z(n63) );
  GTECH_NOT U75 ( .A(in[7]), .Z(n48) );
  GTECH_NOT U76 ( .A(in[5]), .Z(n46) );
  GTECH_OR_NOT U77 ( .A(n60), .B(n40), .Z(n49) );
  GTECH_NOT U78 ( .A(ctrl[1]), .Z(n40) );
  GTECH_NOT U79 ( .A(ctrl[2]), .Z(n60) );
endmodule

