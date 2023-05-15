
module barrel_shifter8 ( in, ctrl, out );
  input [7:0] in;
  input [2:0] ctrl;
  output [7:0] out;
  wire   n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50;

  GTECH_AND3 U37 ( .A(n29), .B(n30), .C(in[7]), .Z(out[7]) );
  GTECH_AND2 U38 ( .A(n31), .B(n29), .Z(out[6]) );
  GTECH_MUX2 U39 ( .A(in[7]), .B(in[6]), .S(n30), .Z(n31) );
  GTECH_MUX2 U40 ( .A(n32), .B(n33), .S(n30), .Z(out[5]) );
  GTECH_AND2 U41 ( .A(n29), .B(in[6]), .Z(n32) );
  GTECH_MUX2 U42 ( .A(n33), .B(n34), .S(n30), .Z(out[4]) );
  GTECH_AND_NOT U43 ( .A(n35), .B(ctrl[2]), .Z(n33) );
  GTECH_MUX2 U44 ( .A(in[7]), .B(in[5]), .S(n36), .Z(n35) );
  GTECH_NOT U45 ( .A(ctrl[1]), .Z(n36) );
  GTECH_MUX2 U46 ( .A(n34), .B(n37), .S(n30), .Z(out[3]) );
  GTECH_AO22 U47 ( .A(in[6]), .B(n38), .C(n29), .D(in[4]), .Z(n34) );
  GTECH_MUX2 U48 ( .A(n37), .B(n39), .S(n30), .Z(out[2]) );
  GTECH_NOT U49 ( .A(ctrl[0]), .Z(n30) );
  GTECH_AO21 U50 ( .A(n29), .B(in[3]), .C(n40), .Z(n37) );
  GTECH_AO22 U51 ( .A(n38), .B(in[5]), .C(in[7]), .D(n41), .Z(n40) );
  GTECH_MUX2 U52 ( .A(n42), .B(n39), .S(ctrl[0]), .Z(out[1]) );
  GTECH_AO21 U53 ( .A(n29), .B(in[2]), .C(n43), .Z(n39) );
  GTECH_AO22 U54 ( .A(n38), .B(in[4]), .C(in[6]), .D(n41), .Z(n43) );
  GTECH_MUX2 U55 ( .A(n44), .B(n42), .S(ctrl[0]), .Z(out[0]) );
  GTECH_OR_NOT U56 ( .A(n45), .B(n46), .Z(n42) );
  GTECH_AOI22 U57 ( .A(in[1]), .B(n29), .C(n38), .D(in[3]), .Z(n46) );
  GTECH_AO21 U58 ( .A(n41), .B(in[5]), .C(n47), .Z(n45) );
  GTECH_AND3 U59 ( .A(ctrl[1]), .B(in[7]), .C(ctrl[2]), .Z(n47) );
  GTECH_OR_NOT U60 ( .A(n48), .B(n49), .Z(n44) );
  GTECH_AOI22 U61 ( .A(in[0]), .B(n29), .C(n38), .D(in[2]), .Z(n49) );
  GTECH_AND_NOT U62 ( .A(ctrl[1]), .B(ctrl[2]), .Z(n38) );
  GTECH_NOR2 U63 ( .A(ctrl[1]), .B(ctrl[2]), .Z(n29) );
  GTECH_AO21 U64 ( .A(in[4]), .B(n41), .C(n50), .Z(n48) );
  GTECH_AND3 U65 ( .A(ctrl[1]), .B(in[6]), .C(ctrl[2]), .Z(n50) );
  GTECH_AND_NOT U66 ( .A(ctrl[2]), .B(ctrl[1]), .Z(n41) );
endmodule

