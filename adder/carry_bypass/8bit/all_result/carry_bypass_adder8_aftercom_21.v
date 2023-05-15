
module carry_bypass_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74;

  GTECH_ADD_ABC U26 ( .A(b[7]), .B(a[7]), .C(n57), .S(sum[7]) );
  GTECH_XNOR3 U27 ( .A(b[6]), .B(a[6]), .C(n58), .Z(sum[6]) );
  GTECH_OAI21 U28 ( .A(a[5]), .B(n59), .C(n60), .Z(n58) );
  GTECH_ADD_ABC U29 ( .A(b[5]), .B(a[5]), .C(n59), .S(sum[5]) );
  GTECH_XNOR3 U30 ( .A(b[4]), .B(a[4]), .C(n61), .Z(sum[4]) );
  GTECH_OAI21 U31 ( .A(a[3]), .B(n62), .C(n63), .Z(n61) );
  GTECH_ADD_ABC U32 ( .A(b[3]), .B(a[3]), .C(n62), .S(sum[3]) );
  GTECH_XNOR3 U33 ( .A(b[2]), .B(a[2]), .C(n64), .Z(sum[2]) );
  GTECH_OAI21 U34 ( .A(a[1]), .B(n65), .C(n66), .Z(n64) );
  GTECH_ADD_ABC U35 ( .A(b[1]), .B(a[1]), .C(n65), .S(sum[1]) );
  GTECH_ADD_ABC U36 ( .A(cin), .B(b[0]), .C(a[0]), .S(sum[0]) );
  GTECH_NOT U37 ( .A(n67), .Z(cout) );
  GTECH_AOI21 U38 ( .A(n57), .B(a[7]), .C(n68), .Z(n67) );
  GTECH_OA21 U39 ( .A(a[7]), .B(n57), .C(b[7]), .Z(n68) );
  GTECH_ADD_ABC U40 ( .A(n69), .B(a[6]), .C(b[6]), .COUT(n57) );
  GTECH_OA21 U41 ( .A(a[5]), .B(n59), .C(n60), .Z(n69) );
  GTECH_NOT U42 ( .A(n70), .Z(n60) );
  GTECH_AOI21 U43 ( .A(n59), .B(a[5]), .C(b[5]), .Z(n70) );
  GTECH_ADD_ABC U44 ( .A(n71), .B(a[4]), .C(b[4]), .COUT(n59) );
  GTECH_OA21 U45 ( .A(a[3]), .B(n62), .C(n63), .Z(n71) );
  GTECH_NOT U46 ( .A(n72), .Z(n63) );
  GTECH_AOI21 U47 ( .A(n62), .B(a[3]), .C(b[3]), .Z(n72) );
  GTECH_ADD_ABC U48 ( .A(n73), .B(a[2]), .C(b[2]), .COUT(n62) );
  GTECH_OA21 U49 ( .A(a[1]), .B(n65), .C(n66), .Z(n73) );
  GTECH_NOT U50 ( .A(n74), .Z(n66) );
  GTECH_AOI21 U51 ( .A(n65), .B(a[1]), .C(b[1]), .Z(n74) );
  GTECH_ADD_ABC U52 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n65) );
endmodule

