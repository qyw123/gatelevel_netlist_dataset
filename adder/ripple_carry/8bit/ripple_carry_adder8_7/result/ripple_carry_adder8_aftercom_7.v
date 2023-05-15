
module ripple_carry_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n28, n29, n30, n31, n32, n33, n34, n35, n36, n37;

  GTECH_XOR3 U37 ( .A(b[7]), .B(a[7]), .C(n28), .Z(sum[7]) );
  GTECH_XOR3 U38 ( .A(b[6]), .B(a[6]), .C(n29), .Z(sum[6]) );
  GTECH_XOR3 U39 ( .A(b[5]), .B(a[5]), .C(n30), .Z(sum[5]) );
  GTECH_XOR3 U40 ( .A(b[4]), .B(a[4]), .C(n31), .Z(sum[4]) );
  GTECH_XOR3 U41 ( .A(b[3]), .B(a[3]), .C(n32), .Z(sum[3]) );
  GTECH_XNOR3 U42 ( .A(b[2]), .B(a[2]), .C(n33), .Z(sum[2]) );
  GTECH_OAI21 U43 ( .A(a[1]), .B(n34), .C(n35), .Z(n33) );
  GTECH_AO21 U44 ( .A(n34), .B(a[1]), .C(b[1]), .Z(n35) );
  GTECH_XOR3 U45 ( .A(b[1]), .B(a[1]), .C(n34), .Z(sum[1]) );
  GTECH_XOR3 U46 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_ADD_ABC U47 ( .A(a[7]), .B(n28), .C(b[7]), .COUT(cout) );
  GTECH_ADD_ABC U48 ( .A(a[6]), .B(n29), .C(b[6]), .COUT(n28) );
  GTECH_ADD_ABC U49 ( .A(a[5]), .B(n30), .C(b[5]), .COUT(n29) );
  GTECH_ADD_ABC U50 ( .A(a[4]), .B(n31), .C(b[4]), .COUT(n30) );
  GTECH_ADD_ABC U51 ( .A(a[3]), .B(n32), .C(b[3]), .COUT(n31) );
  GTECH_ADD_ABC U52 ( .A(a[2]), .B(n36), .C(b[2]), .COUT(n32) );
  GTECH_OA22 U53 ( .A(a[1]), .B(n34), .C(b[1]), .D(n37), .Z(n36) );
  GTECH_AND2 U54 ( .A(n34), .B(a[1]), .Z(n37) );
  GTECH_ADD_ABC U55 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n34) );
endmodule

