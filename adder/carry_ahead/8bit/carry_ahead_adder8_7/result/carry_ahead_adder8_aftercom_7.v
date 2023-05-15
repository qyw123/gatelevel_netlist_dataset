
module carry_ahead_adder8 ( sum, co, ci, a, b );
  output [7:0] sum;
  output [7:0] co;
  input [7:0] a;
  input [7:0] b;
  input ci;
  wire   n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32;

  GTECH_XOR3 U33 ( .A(b[7]), .B(a[7]), .C(co[6]), .Z(sum[7]) );
  GTECH_XOR3 U34 ( .A(b[6]), .B(a[6]), .C(co[5]), .Z(sum[6]) );
  GTECH_XOR3 U35 ( .A(b[5]), .B(a[5]), .C(co[4]), .Z(sum[5]) );
  GTECH_XOR3 U36 ( .A(b[4]), .B(a[4]), .C(co[3]), .Z(sum[4]) );
  GTECH_XOR3 U37 ( .A(b[3]), .B(a[3]), .C(co[2]), .Z(sum[3]) );
  GTECH_XOR3 U38 ( .A(b[2]), .B(a[2]), .C(co[1]), .Z(sum[2]) );
  GTECH_XOR3 U39 ( .A(b[1]), .B(a[1]), .C(co[0]), .Z(sum[1]) );
  GTECH_XOR3 U40 ( .A(ci), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_OAI21 U41 ( .A(n17), .B(n18), .C(n19), .Z(co[7]) );
  GTECH_OAI21 U42 ( .A(a[7]), .B(co[6]), .C(b[7]), .Z(n19) );
  GTECH_NOT U43 ( .A(a[7]), .Z(n18) );
  GTECH_NOT U44 ( .A(n17), .Z(co[6]) );
  GTECH_AOI21 U45 ( .A(co[5]), .B(a[6]), .C(n20), .Z(n17) );
  GTECH_OA21 U46 ( .A(a[6]), .B(co[5]), .C(b[6]), .Z(n20) );
  GTECH_NOT U47 ( .A(n21), .Z(co[5]) );
  GTECH_AOI21 U48 ( .A(co[4]), .B(a[5]), .C(n22), .Z(n21) );
  GTECH_OA21 U49 ( .A(a[5]), .B(co[4]), .C(b[5]), .Z(n22) );
  GTECH_NOT U50 ( .A(n23), .Z(co[4]) );
  GTECH_AOI21 U51 ( .A(co[3]), .B(a[4]), .C(n24), .Z(n23) );
  GTECH_OA21 U52 ( .A(a[4]), .B(co[3]), .C(b[4]), .Z(n24) );
  GTECH_NOT U53 ( .A(n25), .Z(co[3]) );
  GTECH_AOI21 U54 ( .A(co[2]), .B(a[3]), .C(n26), .Z(n25) );
  GTECH_OA21 U55 ( .A(a[3]), .B(co[2]), .C(b[3]), .Z(n26) );
  GTECH_NOT U56 ( .A(n27), .Z(co[2]) );
  GTECH_AOI21 U57 ( .A(co[1]), .B(a[2]), .C(n28), .Z(n27) );
  GTECH_OA21 U58 ( .A(a[2]), .B(co[1]), .C(b[2]), .Z(n28) );
  GTECH_NOT U59 ( .A(n29), .Z(co[1]) );
  GTECH_AOI21 U60 ( .A(co[0]), .B(a[1]), .C(n30), .Z(n29) );
  GTECH_OA21 U61 ( .A(a[1]), .B(co[0]), .C(b[1]), .Z(n30) );
  GTECH_NOT U62 ( .A(n31), .Z(co[0]) );
  GTECH_AOI21 U63 ( .A(a[0]), .B(b[0]), .C(n32), .Z(n31) );
  GTECH_OA21 U64 ( .A(a[0]), .B(b[0]), .C(ci), .Z(n32) );
endmodule

