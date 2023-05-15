
module ripple_carry_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47;

  GTECH_XNOR3 U33 ( .A(n24), .B(n25), .C(n26), .Z(sum[7]) );
  GTECH_NOT U34 ( .A(n27), .Z(sum[6]) );
  GTECH_XNOR3 U35 ( .A(b[6]), .B(a[6]), .C(n28), .Z(n27) );
  GTECH_NOT U36 ( .A(n29), .Z(sum[5]) );
  GTECH_XNOR3 U37 ( .A(b[5]), .B(a[5]), .C(n30), .Z(n29) );
  GTECH_NOT U38 ( .A(n31), .Z(sum[4]) );
  GTECH_XNOR3 U39 ( .A(b[4]), .B(a[4]), .C(n32), .Z(n31) );
  GTECH_NOT U40 ( .A(n33), .Z(sum[3]) );
  GTECH_XNOR3 U41 ( .A(b[3]), .B(a[3]), .C(n34), .Z(n33) );
  GTECH_NOT U42 ( .A(n35), .Z(sum[2]) );
  GTECH_XNOR3 U43 ( .A(b[2]), .B(a[2]), .C(n36), .Z(n35) );
  GTECH_XNOR3 U44 ( .A(n37), .B(a[1]), .C(n38), .Z(sum[1]) );
  GTECH_NOT U45 ( .A(b[1]), .Z(n37) );
  GTECH_NOT U46 ( .A(n39), .Z(sum[0]) );
  GTECH_XNOR3 U47 ( .A(cin), .B(b[0]), .C(a[0]), .Z(n39) );
  GTECH_OAI21 U48 ( .A(n26), .B(n25), .C(n40), .Z(cout) );
  GTECH_AO21 U49 ( .A(n25), .B(n26), .C(n24), .Z(n40) );
  GTECH_NOT U50 ( .A(b[7]), .Z(n24) );
  GTECH_NOT U51 ( .A(a[7]), .Z(n25) );
  GTECH_AOI21 U52 ( .A(n28), .B(a[6]), .C(n41), .Z(n26) );
  GTECH_OA21 U53 ( .A(a[6]), .B(n28), .C(b[6]), .Z(n41) );
  GTECH_AO21 U54 ( .A(n30), .B(a[5]), .C(n42), .Z(n28) );
  GTECH_OA21 U55 ( .A(a[5]), .B(n30), .C(b[5]), .Z(n42) );
  GTECH_AO21 U56 ( .A(n32), .B(a[4]), .C(n43), .Z(n30) );
  GTECH_OA21 U57 ( .A(a[4]), .B(n32), .C(b[4]), .Z(n43) );
  GTECH_AO21 U58 ( .A(n34), .B(a[3]), .C(n44), .Z(n32) );
  GTECH_OA21 U59 ( .A(a[3]), .B(n34), .C(b[3]), .Z(n44) );
  GTECH_AO21 U60 ( .A(n36), .B(a[2]), .C(n45), .Z(n34) );
  GTECH_OA21 U61 ( .A(a[2]), .B(n36), .C(b[2]), .Z(n45) );
  GTECH_AO21 U62 ( .A(n38), .B(a[1]), .C(n46), .Z(n36) );
  GTECH_OA21 U63 ( .A(a[1]), .B(n38), .C(b[1]), .Z(n46) );
  GTECH_AO21 U64 ( .A(a[0]), .B(b[0]), .C(n47), .Z(n38) );
  GTECH_OA21 U65 ( .A(a[0]), .B(b[0]), .C(cin), .Z(n47) );
endmodule

