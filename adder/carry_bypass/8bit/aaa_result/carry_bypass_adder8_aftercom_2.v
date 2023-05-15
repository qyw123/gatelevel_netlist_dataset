
module carry_bypass_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74;

  GTECH_XOR3 U27 ( .A(b[7]), .B(a[7]), .C(n58), .Z(sum[7]) );
  GTECH_XOR3 U28 ( .A(b[6]), .B(a[6]), .C(n59), .Z(sum[6]) );
  GTECH_OA22 U29 ( .A(a[5]), .B(n60), .C(b[5]), .D(n61), .Z(n59) );
  GTECH_AND_NOT U30 ( .A(n60), .B(n62), .Z(n61) );
  GTECH_XNOR3 U31 ( .A(b[5]), .B(n62), .C(n60), .Z(sum[5]) );
  GTECH_XOR3 U32 ( .A(b[4]), .B(a[4]), .C(n63), .Z(sum[4]) );
  GTECH_XOR3 U33 ( .A(b[3]), .B(a[3]), .C(n64), .Z(sum[3]) );
  GTECH_XOR3 U34 ( .A(b[2]), .B(a[2]), .C(n65), .Z(sum[2]) );
  GTECH_XOR3 U35 ( .A(b[1]), .B(a[1]), .C(n66), .Z(sum[1]) );
  GTECH_XOR3 U36 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_AO22 U37 ( .A(n58), .B(a[7]), .C(n67), .D(b[7]), .Z(cout) );
  GTECH_OR2 U38 ( .A(n58), .B(a[7]), .Z(n67) );
  GTECH_ADD_ABC U39 ( .A(n68), .B(a[6]), .C(b[6]), .COUT(n58) );
  GTECH_AOI21 U40 ( .A(n62), .B(n69), .C(n70), .Z(n68) );
  GTECH_AOI21 U41 ( .A(a[5]), .B(n60), .C(b[5]), .Z(n70) );
  GTECH_NOT U42 ( .A(n60), .Z(n69) );
  GTECH_AO22 U43 ( .A(n71), .B(b[4]), .C(n63), .D(a[4]), .Z(n60) );
  GTECH_OR2 U44 ( .A(a[4]), .B(n63), .Z(n71) );
  GTECH_AO22 U45 ( .A(n72), .B(b[3]), .C(n64), .D(a[3]), .Z(n63) );
  GTECH_OR2 U46 ( .A(a[3]), .B(n64), .Z(n72) );
  GTECH_AO22 U47 ( .A(n73), .B(b[2]), .C(n65), .D(a[2]), .Z(n64) );
  GTECH_OR2 U48 ( .A(a[2]), .B(n65), .Z(n73) );
  GTECH_AO22 U49 ( .A(n74), .B(b[1]), .C(n66), .D(a[1]), .Z(n65) );
  GTECH_OR2 U50 ( .A(n66), .B(a[1]), .Z(n74) );
  GTECH_ADD_ABC U51 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n66) );
  GTECH_NOT U52 ( .A(a[5]), .Z(n62) );
endmodule

