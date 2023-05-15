
module carry_ahead_adder8 ( sum, co, ci, a, b );
  output [7:0] sum;
  output [7:0] co;
  input [7:0] a;
  input [7:0] b;
  input ci;
  wire   n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32;

  GTECH_XNOR3 U33 ( .A(n17), .B(a[7]), .C(co[6]), .Z(sum[7]) );
  GTECH_NOT U34 ( .A(b[7]), .Z(n17) );
  GTECH_NOT U35 ( .A(n18), .Z(sum[6]) );
  GTECH_XNOR3 U36 ( .A(b[6]), .B(a[6]), .C(co[5]), .Z(n18) );
  GTECH_NOT U37 ( .A(n19), .Z(sum[5]) );
  GTECH_XNOR3 U38 ( .A(b[5]), .B(a[5]), .C(co[4]), .Z(n19) );
  GTECH_NOT U39 ( .A(n20), .Z(sum[4]) );
  GTECH_XNOR3 U40 ( .A(b[4]), .B(a[4]), .C(co[3]), .Z(n20) );
  GTECH_NOT U41 ( .A(n21), .Z(sum[3]) );
  GTECH_XNOR3 U42 ( .A(b[3]), .B(a[3]), .C(co[2]), .Z(n21) );
  GTECH_NOT U43 ( .A(n22), .Z(sum[2]) );
  GTECH_XNOR3 U44 ( .A(b[2]), .B(a[2]), .C(co[1]), .Z(n22) );
  GTECH_NOT U45 ( .A(n23), .Z(sum[1]) );
  GTECH_XNOR3 U46 ( .A(b[1]), .B(a[1]), .C(co[0]), .Z(n23) );
  GTECH_XNOR3 U47 ( .A(n24), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_NOT U48 ( .A(ci), .Z(n24) );
  GTECH_AO21 U49 ( .A(co[6]), .B(a[7]), .C(n25), .Z(co[7]) );
  GTECH_OA21 U50 ( .A(a[7]), .B(co[6]), .C(b[7]), .Z(n25) );
  GTECH_AO21 U51 ( .A(co[5]), .B(a[6]), .C(n26), .Z(co[6]) );
  GTECH_OA21 U52 ( .A(a[6]), .B(co[5]), .C(b[6]), .Z(n26) );
  GTECH_AO21 U53 ( .A(co[4]), .B(a[5]), .C(n27), .Z(co[5]) );
  GTECH_OA21 U54 ( .A(a[5]), .B(co[4]), .C(b[5]), .Z(n27) );
  GTECH_AO21 U55 ( .A(co[3]), .B(a[4]), .C(n28), .Z(co[4]) );
  GTECH_OA21 U56 ( .A(a[4]), .B(co[3]), .C(b[4]), .Z(n28) );
  GTECH_AO21 U57 ( .A(co[2]), .B(a[3]), .C(n29), .Z(co[3]) );
  GTECH_OA21 U58 ( .A(a[3]), .B(co[2]), .C(b[3]), .Z(n29) );
  GTECH_AO21 U59 ( .A(co[1]), .B(a[2]), .C(n30), .Z(co[2]) );
  GTECH_OA21 U60 ( .A(a[2]), .B(co[1]), .C(b[2]), .Z(n30) );
  GTECH_AO21 U61 ( .A(co[0]), .B(a[1]), .C(n31), .Z(co[1]) );
  GTECH_OA21 U62 ( .A(a[1]), .B(co[0]), .C(b[1]), .Z(n31) );
  GTECH_AO21 U63 ( .A(a[0]), .B(b[0]), .C(n32), .Z(co[0]) );
  GTECH_OA21 U64 ( .A(a[0]), .B(b[0]), .C(ci), .Z(n32) );
endmodule

