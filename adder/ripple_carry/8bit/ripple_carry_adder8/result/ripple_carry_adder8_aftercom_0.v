
module ripple_carry_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38;

  GTECH_XNOR3 U17 ( .A(b[7]), .B(a[7]), .C(n8), .Z(sum[7]) );
  GTECH_XNOR3 U18 ( .A(b[6]), .B(a[6]), .C(n9), .Z(sum[6]) );
  GTECH_XNOR3 U19 ( .A(b[5]), .B(a[5]), .C(n10), .Z(sum[5]) );
  GTECH_XNOR3 U20 ( .A(b[4]), .B(a[4]), .C(n11), .Z(sum[4]) );
  GTECH_XNOR3 U21 ( .A(b[3]), .B(a[3]), .C(n12), .Z(sum[3]) );
  GTECH_XNOR3 U22 ( .A(b[2]), .B(a[2]), .C(n13), .Z(sum[2]) );
  GTECH_XNOR3 U23 ( .A(b[1]), .B(a[1]), .C(n14), .Z(sum[1]) );
  GTECH_XOR3 U24 ( .A(cin), .B(n15), .C(n16), .Z(sum[0]) );
  GTECH_AO21 U25 ( .A(n17), .B(a[7]), .C(n18), .Z(cout) );
  GTECH_NOT U26 ( .A(n19), .Z(n18) );
  GTECH_OAI21 U27 ( .A(a[7]), .B(n17), .C(b[7]), .Z(n19) );
  GTECH_NOT U28 ( .A(n8), .Z(n17) );
  GTECH_OA21 U29 ( .A(n9), .B(n20), .C(n21), .Z(n8) );
  GTECH_AO21 U30 ( .A(n20), .B(n9), .C(n22), .Z(n21) );
  GTECH_NOT U31 ( .A(b[6]), .Z(n22) );
  GTECH_NOT U32 ( .A(a[6]), .Z(n20) );
  GTECH_OA21 U33 ( .A(n10), .B(n23), .C(n24), .Z(n9) );
  GTECH_AO21 U34 ( .A(n23), .B(n10), .C(n25), .Z(n24) );
  GTECH_NOT U35 ( .A(b[5]), .Z(n25) );
  GTECH_NOT U36 ( .A(a[5]), .Z(n23) );
  GTECH_OA21 U37 ( .A(n11), .B(n26), .C(n27), .Z(n10) );
  GTECH_AO21 U38 ( .A(n26), .B(n11), .C(n28), .Z(n27) );
  GTECH_NOT U39 ( .A(b[4]), .Z(n28) );
  GTECH_NOT U40 ( .A(a[4]), .Z(n26) );
  GTECH_OA21 U41 ( .A(n12), .B(n29), .C(n30), .Z(n11) );
  GTECH_AO21 U42 ( .A(n29), .B(n12), .C(n31), .Z(n30) );
  GTECH_NOT U43 ( .A(b[3]), .Z(n31) );
  GTECH_NOT U44 ( .A(a[3]), .Z(n29) );
  GTECH_OA21 U45 ( .A(n13), .B(n32), .C(n33), .Z(n12) );
  GTECH_AO21 U46 ( .A(n32), .B(n13), .C(n34), .Z(n33) );
  GTECH_NOT U47 ( .A(b[2]), .Z(n34) );
  GTECH_NOT U48 ( .A(a[2]), .Z(n32) );
  GTECH_OA21 U49 ( .A(n14), .B(n35), .C(n36), .Z(n13) );
  GTECH_AO21 U50 ( .A(n35), .B(n14), .C(n37), .Z(n36) );
  GTECH_NOT U51 ( .A(b[1]), .Z(n37) );
  GTECH_NOT U52 ( .A(a[1]), .Z(n35) );
  GTECH_ADD_ABC U53 ( .A(n16), .B(n15), .C(n38), .COUT(n14) );
  GTECH_NOT U54 ( .A(cin), .Z(n38) );
  GTECH_NOT U55 ( .A(b[0]), .Z(n15) );
  GTECH_NOT U56 ( .A(a[0]), .Z(n16) );
endmodule

