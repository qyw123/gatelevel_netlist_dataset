
module carry_ahead_adder8 ( sum, co, ci, a, b );
  output [7:0] sum;
  output [7:0] co;
  input [7:0] a;
  input [7:0] b;
  input ci;
  wire   n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28;

  GTECH_ADD_ABC U31 ( .A(b[7]), .B(a[7]), .C(co[6]), .S(sum[7]) );
  GTECH_ADD_ABC U32 ( .A(b[6]), .B(a[6]), .C(co[5]), .S(sum[6]) );
  GTECH_ADD_ABC U33 ( .A(b[5]), .B(a[5]), .C(co[4]), .S(sum[5]) );
  GTECH_ADD_ABC U34 ( .A(b[4]), .B(a[4]), .C(co[3]), .S(sum[4]) );
  GTECH_ADD_ABC U35 ( .A(b[3]), .B(a[3]), .C(co[2]), .S(sum[3]) );
  GTECH_ADD_ABC U36 ( .A(b[2]), .B(a[2]), .C(co[1]), .S(sum[2]) );
  GTECH_ADD_ABC U37 ( .A(b[1]), .B(a[1]), .C(co[0]), .S(sum[1]) );
  GTECH_ADD_ABC U38 ( .A(ci), .B(b[0]), .C(a[0]), .S(sum[0]) );
  GTECH_AO21 U39 ( .A(co[6]), .B(a[7]), .C(n15), .Z(co[7]) );
  GTECH_NOT U40 ( .A(n16), .Z(n15) );
  GTECH_OAI21 U41 ( .A(a[7]), .B(co[6]), .C(b[7]), .Z(n16) );
  GTECH_AO21 U42 ( .A(co[5]), .B(a[6]), .C(n17), .Z(co[6]) );
  GTECH_NOT U43 ( .A(n18), .Z(n17) );
  GTECH_OAI21 U44 ( .A(a[6]), .B(co[5]), .C(b[6]), .Z(n18) );
  GTECH_AO21 U45 ( .A(co[4]), .B(a[5]), .C(n19), .Z(co[5]) );
  GTECH_NOT U46 ( .A(n20), .Z(n19) );
  GTECH_OAI21 U47 ( .A(a[5]), .B(co[4]), .C(b[5]), .Z(n20) );
  GTECH_AO21 U48 ( .A(co[3]), .B(a[4]), .C(n21), .Z(co[4]) );
  GTECH_NOT U49 ( .A(n22), .Z(n21) );
  GTECH_OAI21 U50 ( .A(a[4]), .B(co[3]), .C(b[4]), .Z(n22) );
  GTECH_AO21 U51 ( .A(co[2]), .B(a[3]), .C(n23), .Z(co[3]) );
  GTECH_NOT U52 ( .A(n24), .Z(n23) );
  GTECH_OAI21 U53 ( .A(a[3]), .B(co[2]), .C(b[3]), .Z(n24) );
  GTECH_AO21 U54 ( .A(co[1]), .B(a[2]), .C(n25), .Z(co[2]) );
  GTECH_NOT U55 ( .A(n26), .Z(n25) );
  GTECH_OAI21 U56 ( .A(a[2]), .B(co[1]), .C(b[2]), .Z(n26) );
  GTECH_AO21 U57 ( .A(co[0]), .B(a[1]), .C(n27), .Z(co[1]) );
  GTECH_NOT U58 ( .A(n28), .Z(n27) );
  GTECH_OAI21 U59 ( .A(a[1]), .B(co[0]), .C(b[1]), .Z(n28) );
  GTECH_ADD_ABC U60 ( .A(a[0]), .B(b[0]), .C(ci), .COUT(co[0]) );
endmodule

