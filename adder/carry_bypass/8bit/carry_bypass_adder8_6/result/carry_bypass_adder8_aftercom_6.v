
module carry_bypass_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n68, n69, n70, n71, n72, n73, n74, n75, n76, n77;

  GTECH_XOR3 U37 ( .A(b[7]), .B(a[7]), .C(n68), .Z(sum[7]) );
  GTECH_XOR3 U38 ( .A(b[6]), .B(a[6]), .C(n69), .Z(sum[6]) );
  GTECH_XOR3 U39 ( .A(b[5]), .B(a[5]), .C(n70), .Z(sum[5]) );
  GTECH_XOR3 U40 ( .A(b[4]), .B(a[4]), .C(n71), .Z(sum[4]) );
  GTECH_XOR3 U41 ( .A(b[3]), .B(a[3]), .C(n72), .Z(sum[3]) );
  GTECH_XNOR3 U42 ( .A(b[2]), .B(a[2]), .C(n73), .Z(sum[2]) );
  GTECH_OAI21 U43 ( .A(a[1]), .B(n74), .C(n75), .Z(n73) );
  GTECH_AO21 U44 ( .A(n74), .B(a[1]), .C(b[1]), .Z(n75) );
  GTECH_XOR3 U45 ( .A(b[1]), .B(a[1]), .C(n74), .Z(sum[1]) );
  GTECH_XOR3 U46 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_ADD_ABC U47 ( .A(a[7]), .B(n68), .C(b[7]), .COUT(cout) );
  GTECH_ADD_ABC U48 ( .A(a[6]), .B(n69), .C(b[6]), .COUT(n68) );
  GTECH_ADD_ABC U49 ( .A(a[5]), .B(n70), .C(b[5]), .COUT(n69) );
  GTECH_ADD_ABC U50 ( .A(a[4]), .B(n71), .C(b[4]), .COUT(n70) );
  GTECH_ADD_ABC U51 ( .A(a[3]), .B(n72), .C(b[3]), .COUT(n71) );
  GTECH_ADD_ABC U52 ( .A(a[2]), .B(n76), .C(b[2]), .COUT(n72) );
  GTECH_OA22 U53 ( .A(a[1]), .B(n74), .C(b[1]), .D(n77), .Z(n76) );
  GTECH_AND2 U54 ( .A(n74), .B(a[1]), .Z(n77) );
  GTECH_ADD_ABC U55 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n74) );
endmodule

