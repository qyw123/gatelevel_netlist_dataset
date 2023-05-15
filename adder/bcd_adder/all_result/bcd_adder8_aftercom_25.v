
module bcd_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70;

  GTECH_XOR2 U27 ( .A(n43), .B(n44), .Z(sum[7]) );
  GTECH_AND2 U28 ( .A(n45), .B(cout), .Z(n44) );
  GTECH_OAI22 U29 ( .A(n46), .B(n47), .C(n48), .D(n45), .Z(sum[6]) );
  GTECH_NOR2 U30 ( .A(n48), .B(n49), .Z(n46) );
  GTECH_XNOR2 U31 ( .A(n48), .B(n49), .Z(sum[5]) );
  GTECH_XNOR3 U32 ( .A(b[4]), .B(a[4]), .C(n50), .Z(sum[4]) );
  GTECH_XOR2 U33 ( .A(n51), .B(n52), .Z(sum[3]) );
  GTECH_AND2 U34 ( .A(n53), .B(n54), .Z(n52) );
  GTECH_OAI22 U35 ( .A(n55), .B(n56), .C(n50), .D(n53), .Z(sum[2]) );
  GTECH_AND_NOT U36 ( .A(n54), .B(n57), .Z(n55) );
  GTECH_XNOR2 U37 ( .A(n50), .B(n57), .Z(sum[1]) );
  GTECH_XOR3 U38 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_NOT U39 ( .A(n48), .Z(cout) );
  GTECH_AOI222 U40 ( .A(a[7]), .B(n58), .C(b[7]), .D(n59), .E(n43), .F(n45), 
        .Z(n48) );
  GTECH_OR_NOT U41 ( .A(n49), .B(n47), .Z(n45) );
  GTECH_XNOR3 U42 ( .A(b[6]), .B(a[6]), .C(n60), .Z(n47) );
  GTECH_XOR3 U43 ( .A(b[5]), .B(a[5]), .C(n61), .Z(n49) );
  GTECH_XOR3 U44 ( .A(b[7]), .B(a[7]), .C(n58), .Z(n43) );
  GTECH_OR2 U45 ( .A(a[7]), .B(n58), .Z(n59) );
  GTECH_AO22 U46 ( .A(n60), .B(a[6]), .C(n62), .D(b[6]), .Z(n58) );
  GTECH_OR2 U47 ( .A(n60), .B(a[6]), .Z(n62) );
  GTECH_AO22 U48 ( .A(n63), .B(b[5]), .C(n61), .D(a[5]), .Z(n60) );
  GTECH_OR2 U49 ( .A(n61), .B(a[5]), .Z(n63) );
  GTECH_AO22 U50 ( .A(n54), .B(a[4]), .C(n64), .D(b[4]), .Z(n61) );
  GTECH_OR_NOT U51 ( .A(a[4]), .B(n50), .Z(n64) );
  GTECH_NOT U52 ( .A(n50), .Z(n54) );
  GTECH_AOI222 U53 ( .A(a[3]), .B(n65), .C(b[3]), .D(n66), .E(n51), .F(n53), 
        .Z(n50) );
  GTECH_OR_NOT U54 ( .A(n57), .B(n56), .Z(n53) );
  GTECH_XNOR3 U55 ( .A(b[2]), .B(a[2]), .C(n67), .Z(n56) );
  GTECH_XOR3 U56 ( .A(b[1]), .B(a[1]), .C(n68), .Z(n57) );
  GTECH_XOR3 U57 ( .A(b[3]), .B(a[3]), .C(n65), .Z(n51) );
  GTECH_OR2 U58 ( .A(n65), .B(a[3]), .Z(n66) );
  GTECH_AO22 U59 ( .A(n69), .B(b[2]), .C(n67), .D(a[2]), .Z(n65) );
  GTECH_OR2 U60 ( .A(n67), .B(a[2]), .Z(n69) );
  GTECH_AO22 U61 ( .A(n70), .B(b[1]), .C(n68), .D(a[1]), .Z(n67) );
  GTECH_OR2 U62 ( .A(n68), .B(a[1]), .Z(n70) );
  GTECH_ADD_ABC U63 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n68) );
endmodule

