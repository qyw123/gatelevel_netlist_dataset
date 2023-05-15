
module ripple_carry_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30;

  GTECH_XNOR3 U20 ( .A(b[7]), .B(a[7]), .C(n11), .Z(sum[7]) );
  GTECH_ADD_ABC U21 ( .A(b[6]), .B(n12), .C(n13), .S(sum[6]) );
  GTECH_ADD_ABC U22 ( .A(b[5]), .B(n14), .C(n15), .S(sum[5]) );
  GTECH_ADD_ABC U23 ( .A(b[4]), .B(n16), .C(n17), .S(sum[4]) );
  GTECH_ADD_ABC U24 ( .A(b[3]), .B(n18), .C(n19), .S(sum[3]) );
  GTECH_ADD_ABC U25 ( .A(b[2]), .B(n20), .C(n21), .S(sum[2]) );
  GTECH_ADD_ABC U26 ( .A(b[1]), .B(a[1]), .C(n22), .S(sum[1]) );
  GTECH_ADD_ABC U27 ( .A(cin), .B(b[0]), .C(a[0]), .S(sum[0]) );
  GTECH_AO22 U28 ( .A(n23), .B(a[7]), .C(n24), .D(b[7]), .Z(cout) );
  GTECH_OR_NOT U29 ( .A(a[7]), .B(n11), .Z(n24) );
  GTECH_NOT U30 ( .A(n11), .Z(n23) );
  GTECH_AOI2N2 U31 ( .A(n25), .B(b[6]), .C(n13), .D(n12), .Z(n11) );
  GTECH_NAND2 U32 ( .A(n12), .B(n13), .Z(n25) );
  GTECH_AOI2N2 U33 ( .A(n26), .B(b[5]), .C(n15), .D(n14), .Z(n13) );
  GTECH_NAND2 U34 ( .A(n14), .B(n15), .Z(n26) );
  GTECH_AOI2N2 U35 ( .A(n27), .B(b[4]), .C(n17), .D(n16), .Z(n15) );
  GTECH_NAND2 U36 ( .A(n16), .B(n17), .Z(n27) );
  GTECH_AOI2N2 U37 ( .A(n28), .B(b[3]), .C(n19), .D(n18), .Z(n17) );
  GTECH_NAND2 U38 ( .A(n18), .B(n19), .Z(n28) );
  GTECH_AOI2N2 U39 ( .A(n29), .B(b[2]), .C(n21), .D(n20), .Z(n19) );
  GTECH_NAND2 U40 ( .A(n20), .B(n21), .Z(n29) );
  GTECH_AOI22 U41 ( .A(n30), .B(b[1]), .C(n22), .D(a[1]), .Z(n21) );
  GTECH_OR2 U42 ( .A(a[1]), .B(n22), .Z(n30) );
  GTECH_ADD_ABC U43 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n22) );
  GTECH_NOT U44 ( .A(a[2]), .Z(n20) );
  GTECH_NOT U45 ( .A(a[3]), .Z(n18) );
  GTECH_NOT U46 ( .A(a[4]), .Z(n16) );
  GTECH_NOT U47 ( .A(a[5]), .Z(n14) );
  GTECH_NOT U48 ( .A(a[6]), .Z(n12) );
endmodule

