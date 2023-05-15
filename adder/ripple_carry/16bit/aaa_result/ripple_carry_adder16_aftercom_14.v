
module ripple_carry_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64;

  GTECH_ADD_ABC U39 ( .A(b[9]), .B(a[9]), .C(n22), .S(sum[9]) );
  GTECH_ADD_ABC U40 ( .A(b[8]), .B(n23), .C(n24), .S(sum[8]) );
  GTECH_ADD_ABC U41 ( .A(b[7]), .B(n25), .C(n26), .S(sum[7]) );
  GTECH_ADD_ABC U42 ( .A(b[6]), .B(n27), .C(n28), .S(sum[6]) );
  GTECH_ADD_ABC U43 ( .A(b[5]), .B(n29), .C(n30), .S(sum[5]) );
  GTECH_ADD_ABC U44 ( .A(b[4]), .B(n31), .C(n32), .S(sum[4]) );
  GTECH_ADD_ABC U45 ( .A(b[3]), .B(n33), .C(n34), .S(sum[3]) );
  GTECH_ADD_ABC U46 ( .A(b[2]), .B(n35), .C(n36), .S(sum[2]) );
  GTECH_ADD_ABC U47 ( .A(b[1]), .B(a[1]), .C(n37), .S(sum[1]) );
  GTECH_XNOR3 U48 ( .A(b[15]), .B(a[15]), .C(n38), .Z(sum[15]) );
  GTECH_ADD_ABC U49 ( .A(b[14]), .B(n39), .C(n40), .S(sum[14]) );
  GTECH_ADD_ABC U50 ( .A(b[13]), .B(n41), .C(n42), .S(sum[13]) );
  GTECH_ADD_ABC U51 ( .A(b[12]), .B(n43), .C(n44), .S(sum[12]) );
  GTECH_ADD_ABC U52 ( .A(b[11]), .B(n45), .C(n46), .S(sum[11]) );
  GTECH_ADD_ABC U53 ( .A(b[10]), .B(n47), .C(n48), .S(sum[10]) );
  GTECH_ADD_ABC U54 ( .A(cin), .B(b[0]), .C(a[0]), .S(sum[0]) );
  GTECH_AO22 U55 ( .A(n49), .B(a[15]), .C(n50), .D(b[15]), .Z(cout) );
  GTECH_OR_NOT U56 ( .A(a[15]), .B(n38), .Z(n50) );
  GTECH_NOT U57 ( .A(n38), .Z(n49) );
  GTECH_AOI2N2 U58 ( .A(n51), .B(b[14]), .C(n40), .D(n39), .Z(n38) );
  GTECH_NAND2 U59 ( .A(n39), .B(n40), .Z(n51) );
  GTECH_AOI2N2 U60 ( .A(n52), .B(b[13]), .C(n42), .D(n41), .Z(n40) );
  GTECH_NAND2 U61 ( .A(n41), .B(n42), .Z(n52) );
  GTECH_AOI2N2 U62 ( .A(n53), .B(b[12]), .C(n44), .D(n43), .Z(n42) );
  GTECH_NAND2 U63 ( .A(n43), .B(n44), .Z(n53) );
  GTECH_AOI2N2 U64 ( .A(n54), .B(b[11]), .C(n46), .D(n45), .Z(n44) );
  GTECH_NAND2 U65 ( .A(n45), .B(n46), .Z(n54) );
  GTECH_AOI2N2 U66 ( .A(n55), .B(b[10]), .C(n48), .D(n47), .Z(n46) );
  GTECH_NAND2 U67 ( .A(n47), .B(n48), .Z(n55) );
  GTECH_AOI22 U68 ( .A(n22), .B(a[9]), .C(n56), .D(b[9]), .Z(n48) );
  GTECH_OR2 U69 ( .A(n22), .B(a[9]), .Z(n56) );
  GTECH_OAI2N2 U70 ( .A(n24), .B(n23), .C(n57), .D(b[8]), .Z(n22) );
  GTECH_NAND2 U71 ( .A(n23), .B(n24), .Z(n57) );
  GTECH_NOT U72 ( .A(a[8]), .Z(n23) );
  GTECH_AOI2N2 U73 ( .A(n58), .B(b[7]), .C(n26), .D(n25), .Z(n24) );
  GTECH_NAND2 U74 ( .A(n25), .B(n26), .Z(n58) );
  GTECH_AOI2N2 U75 ( .A(n59), .B(b[6]), .C(n28), .D(n27), .Z(n26) );
  GTECH_NAND2 U76 ( .A(n27), .B(n28), .Z(n59) );
  GTECH_AOI2N2 U77 ( .A(n60), .B(b[5]), .C(n30), .D(n29), .Z(n28) );
  GTECH_NAND2 U78 ( .A(n29), .B(n30), .Z(n60) );
  GTECH_AOI2N2 U79 ( .A(n61), .B(b[4]), .C(n32), .D(n31), .Z(n30) );
  GTECH_NAND2 U80 ( .A(n31), .B(n32), .Z(n61) );
  GTECH_AOI2N2 U81 ( .A(n62), .B(b[3]), .C(n34), .D(n33), .Z(n32) );
  GTECH_NAND2 U82 ( .A(n33), .B(n34), .Z(n62) );
  GTECH_AOI2N2 U83 ( .A(n63), .B(b[2]), .C(n36), .D(n35), .Z(n34) );
  GTECH_NAND2 U84 ( .A(n35), .B(n36), .Z(n63) );
  GTECH_AOI22 U85 ( .A(n64), .B(b[1]), .C(n37), .D(a[1]), .Z(n36) );
  GTECH_OR2 U86 ( .A(a[1]), .B(n37), .Z(n64) );
  GTECH_ADD_ABC U87 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n37) );
  GTECH_NOT U88 ( .A(a[2]), .Z(n35) );
  GTECH_NOT U89 ( .A(a[3]), .Z(n33) );
  GTECH_NOT U90 ( .A(a[4]), .Z(n31) );
  GTECH_NOT U91 ( .A(a[5]), .Z(n29) );
  GTECH_NOT U92 ( .A(a[6]), .Z(n27) );
  GTECH_NOT U93 ( .A(a[7]), .Z(n25) );
  GTECH_NOT U94 ( .A(a[10]), .Z(n47) );
  GTECH_NOT U95 ( .A(a[11]), .Z(n45) );
  GTECH_NOT U96 ( .A(a[12]), .Z(n43) );
  GTECH_NOT U97 ( .A(a[13]), .Z(n41) );
  GTECH_NOT U98 ( .A(a[14]), .Z(n39) );
endmodule

