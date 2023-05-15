
module ripple_carry_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49;

  GTECH_XOR3 U34 ( .A(b[7]), .B(n25), .C(n26), .Z(sum[7]) );
  GTECH_XOR3 U35 ( .A(b[6]), .B(a[6]), .C(n27), .Z(sum[6]) );
  GTECH_XOR3 U36 ( .A(b[5]), .B(n28), .C(n29), .Z(sum[5]) );
  GTECH_XOR3 U37 ( .A(b[4]), .B(a[4]), .C(n30), .Z(sum[4]) );
  GTECH_XOR3 U38 ( .A(b[3]), .B(a[3]), .C(n31), .Z(sum[3]) );
  GTECH_XOR3 U39 ( .A(b[2]), .B(a[2]), .C(n32), .Z(sum[2]) );
  GTECH_AOI21 U40 ( .A(n33), .B(n34), .C(n35), .Z(n32) );
  GTECH_AOI21 U41 ( .A(n36), .B(a[1]), .C(b[1]), .Z(n35) );
  GTECH_XNOR3 U42 ( .A(b[1]), .B(a[1]), .C(n34), .Z(sum[1]) );
  GTECH_NOT U43 ( .A(n36), .Z(n34) );
  GTECH_XOR3 U44 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_OAI21 U45 ( .A(n26), .B(n25), .C(n37), .Z(cout) );
  GTECH_OAI21 U46 ( .A(a[7]), .B(n38), .C(b[7]), .Z(n37) );
  GTECH_NOT U47 ( .A(n26), .Z(n38) );
  GTECH_NOT U48 ( .A(a[7]), .Z(n25) );
  GTECH_AOI21 U49 ( .A(n27), .B(a[6]), .C(n39), .Z(n26) );
  GTECH_NOT U50 ( .A(n40), .Z(n39) );
  GTECH_OAI21 U51 ( .A(a[6]), .B(n27), .C(b[6]), .Z(n40) );
  GTECH_OAI21 U52 ( .A(n29), .B(n28), .C(n41), .Z(n27) );
  GTECH_OAI21 U53 ( .A(a[5]), .B(n42), .C(b[5]), .Z(n41) );
  GTECH_NOT U54 ( .A(n29), .Z(n42) );
  GTECH_NOT U55 ( .A(a[5]), .Z(n28) );
  GTECH_AOI21 U56 ( .A(n30), .B(a[4]), .C(n43), .Z(n29) );
  GTECH_NOT U57 ( .A(n44), .Z(n43) );
  GTECH_OAI21 U58 ( .A(a[4]), .B(n30), .C(b[4]), .Z(n44) );
  GTECH_NOT U59 ( .A(n45), .Z(n30) );
  GTECH_AOI21 U60 ( .A(n31), .B(a[3]), .C(n46), .Z(n45) );
  GTECH_NOT U61 ( .A(n47), .Z(n46) );
  GTECH_OAI21 U62 ( .A(a[3]), .B(n31), .C(b[3]), .Z(n47) );
  GTECH_ADD_ABC U63 ( .A(n48), .B(a[2]), .C(b[2]), .COUT(n31) );
  GTECH_OA22 U64 ( .A(a[1]), .B(n36), .C(b[1]), .D(n49), .Z(n48) );
  GTECH_AND_NOT U65 ( .A(n36), .B(n33), .Z(n49) );
  GTECH_NOT U66 ( .A(a[1]), .Z(n33) );
  GTECH_ADD_ABC U67 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n36) );
endmodule

