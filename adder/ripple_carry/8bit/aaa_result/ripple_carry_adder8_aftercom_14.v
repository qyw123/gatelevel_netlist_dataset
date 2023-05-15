
module ripple_carry_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34;

  GTECH_ADD_ABC U26 ( .A(b[7]), .B(a[7]), .C(n17), .S(sum[7]) );
  GTECH_XNOR3 U27 ( .A(b[6]), .B(a[6]), .C(n18), .Z(sum[6]) );
  GTECH_OAI21 U28 ( .A(a[5]), .B(n19), .C(n20), .Z(n18) );
  GTECH_ADD_ABC U29 ( .A(b[5]), .B(a[5]), .C(n19), .S(sum[5]) );
  GTECH_XNOR3 U30 ( .A(b[4]), .B(a[4]), .C(n21), .Z(sum[4]) );
  GTECH_OAI21 U31 ( .A(a[3]), .B(n22), .C(n23), .Z(n21) );
  GTECH_ADD_ABC U32 ( .A(b[3]), .B(a[3]), .C(n22), .S(sum[3]) );
  GTECH_XNOR3 U33 ( .A(b[2]), .B(a[2]), .C(n24), .Z(sum[2]) );
  GTECH_OAI21 U34 ( .A(a[1]), .B(n25), .C(n26), .Z(n24) );
  GTECH_ADD_ABC U35 ( .A(b[1]), .B(a[1]), .C(n25), .S(sum[1]) );
  GTECH_ADD_ABC U36 ( .A(cin), .B(b[0]), .C(a[0]), .S(sum[0]) );
  GTECH_NOT U37 ( .A(n27), .Z(cout) );
  GTECH_AOI21 U38 ( .A(n17), .B(a[7]), .C(n28), .Z(n27) );
  GTECH_OA21 U39 ( .A(a[7]), .B(n17), .C(b[7]), .Z(n28) );
  GTECH_ADD_ABC U40 ( .A(n29), .B(a[6]), .C(b[6]), .COUT(n17) );
  GTECH_OA21 U41 ( .A(a[5]), .B(n19), .C(n20), .Z(n29) );
  GTECH_NOT U42 ( .A(n30), .Z(n20) );
  GTECH_AOI21 U43 ( .A(n19), .B(a[5]), .C(b[5]), .Z(n30) );
  GTECH_ADD_ABC U44 ( .A(n31), .B(a[4]), .C(b[4]), .COUT(n19) );
  GTECH_OA21 U45 ( .A(a[3]), .B(n22), .C(n23), .Z(n31) );
  GTECH_NOT U46 ( .A(n32), .Z(n23) );
  GTECH_AOI21 U47 ( .A(n22), .B(a[3]), .C(b[3]), .Z(n32) );
  GTECH_ADD_ABC U48 ( .A(n33), .B(a[2]), .C(b[2]), .COUT(n22) );
  GTECH_OA21 U49 ( .A(a[1]), .B(n25), .C(n26), .Z(n33) );
  GTECH_NOT U50 ( .A(n34), .Z(n26) );
  GTECH_AOI21 U51 ( .A(n25), .B(a[1]), .C(b[1]), .Z(n34) );
  GTECH_ADD_ABC U52 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n25) );
endmodule

