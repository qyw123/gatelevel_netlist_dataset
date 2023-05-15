
module ripple_carry_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54;

  GTECH_XOR3 U37 ( .A(b[7]), .B(n28), .C(n29), .Z(sum[7]) );
  GTECH_XOR3 U38 ( .A(b[6]), .B(a[6]), .C(n30), .Z(sum[6]) );
  GTECH_XNOR3 U39 ( .A(b[5]), .B(a[5]), .C(n31), .Z(sum[5]) );
  GTECH_XOR3 U40 ( .A(b[4]), .B(a[4]), .C(n32), .Z(sum[4]) );
  GTECH_XOR3 U41 ( .A(b[3]), .B(n33), .C(n34), .Z(sum[3]) );
  GTECH_XOR3 U42 ( .A(b[2]), .B(a[2]), .C(n35), .Z(sum[2]) );
  GTECH_XOR3 U43 ( .A(b[1]), .B(n36), .C(n37), .Z(sum[1]) );
  GTECH_XOR3 U44 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_OAI21 U45 ( .A(n29), .B(n28), .C(n38), .Z(cout) );
  GTECH_OAI21 U46 ( .A(a[7]), .B(n39), .C(b[7]), .Z(n38) );
  GTECH_NOT U47 ( .A(a[7]), .Z(n28) );
  GTECH_NOT U48 ( .A(n39), .Z(n29) );
  GTECH_AO21 U49 ( .A(n30), .B(a[6]), .C(n40), .Z(n39) );
  GTECH_NOT U50 ( .A(n41), .Z(n40) );
  GTECH_OAI21 U51 ( .A(n30), .B(a[6]), .C(b[6]), .Z(n41) );
  GTECH_AOI21 U52 ( .A(n42), .B(n31), .C(n43), .Z(n30) );
  GTECH_AOI21 U53 ( .A(n44), .B(a[5]), .C(b[5]), .Z(n43) );
  GTECH_NOT U54 ( .A(n44), .Z(n31) );
  GTECH_AO21 U55 ( .A(n32), .B(a[4]), .C(n45), .Z(n44) );
  GTECH_NOT U56 ( .A(n46), .Z(n45) );
  GTECH_OAI21 U57 ( .A(a[4]), .B(n32), .C(b[4]), .Z(n46) );
  GTECH_OAI21 U58 ( .A(n34), .B(n33), .C(n47), .Z(n32) );
  GTECH_AO21 U59 ( .A(n33), .B(n34), .C(n48), .Z(n47) );
  GTECH_NOT U60 ( .A(b[3]), .Z(n48) );
  GTECH_NOT U61 ( .A(a[3]), .Z(n33) );
  GTECH_AOI21 U62 ( .A(n35), .B(a[2]), .C(n49), .Z(n34) );
  GTECH_NOT U63 ( .A(n50), .Z(n49) );
  GTECH_OAI21 U64 ( .A(a[2]), .B(n35), .C(b[2]), .Z(n50) );
  GTECH_OAI21 U65 ( .A(n37), .B(n36), .C(n51), .Z(n35) );
  GTECH_AO21 U66 ( .A(n36), .B(n37), .C(n52), .Z(n51) );
  GTECH_NOT U67 ( .A(b[1]), .Z(n52) );
  GTECH_NOT U68 ( .A(a[1]), .Z(n36) );
  GTECH_AOI21 U69 ( .A(a[0]), .B(b[0]), .C(n53), .Z(n37) );
  GTECH_NOT U70 ( .A(n54), .Z(n53) );
  GTECH_OAI21 U71 ( .A(a[0]), .B(b[0]), .C(cin), .Z(n54) );
  GTECH_NOT U72 ( .A(a[5]), .Z(n42) );
endmodule

