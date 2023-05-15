
module bcd_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75;

  GTECH_XNOR2 U29 ( .A(n45), .B(n46), .Z(sum[7]) );
  GTECH_AND_NOT U30 ( .A(cout), .B(n47), .Z(n46) );
  GTECH_OAI2N2 U31 ( .A(n48), .B(n49), .C(n47), .D(cout), .Z(sum[6]) );
  GTECH_AND_NOT U32 ( .A(cout), .B(n50), .Z(n48) );
  GTECH_XOR2 U33 ( .A(n50), .B(cout), .Z(sum[5]) );
  GTECH_XOR3 U34 ( .A(b[4]), .B(n51), .C(n52), .Z(sum[4]) );
  GTECH_XOR2 U35 ( .A(n53), .B(n54), .Z(sum[3]) );
  GTECH_AND_NOT U36 ( .A(n55), .B(n52), .Z(n54) );
  GTECH_OAI22 U37 ( .A(n55), .B(n52), .C(n56), .D(n57), .Z(sum[2]) );
  GTECH_NOR2 U38 ( .A(n58), .B(n52), .Z(n56) );
  GTECH_XNOR2 U39 ( .A(n58), .B(n52), .Z(sum[1]) );
  GTECH_XOR3 U40 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_AOI22 U41 ( .A(n47), .B(n59), .C(n45), .D(n59), .Z(cout) );
  GTECH_XNOR3 U42 ( .A(b[7]), .B(a[7]), .C(n60), .Z(n45) );
  GTECH_AOI22 U43 ( .A(n61), .B(b[7]), .C(n60), .D(a[7]), .Z(n59) );
  GTECH_OR2 U44 ( .A(a[7]), .B(n60), .Z(n61) );
  GTECH_AO22 U45 ( .A(n62), .B(b[6]), .C(n63), .D(a[6]), .Z(n60) );
  GTECH_OR2 U46 ( .A(a[6]), .B(n63), .Z(n62) );
  GTECH_AND_NOT U47 ( .A(n49), .B(n50), .Z(n47) );
  GTECH_XNOR3 U48 ( .A(b[5]), .B(a[5]), .C(n64), .Z(n50) );
  GTECH_XNOR3 U49 ( .A(b[6]), .B(a[6]), .C(n63), .Z(n49) );
  GTECH_OAI2N2 U50 ( .A(n64), .B(n65), .C(n66), .D(b[5]), .Z(n63) );
  GTECH_OR_NOT U51 ( .A(a[5]), .B(n64), .Z(n66) );
  GTECH_NOT U52 ( .A(a[5]), .Z(n65) );
  GTECH_ADD_ABC U53 ( .A(n52), .B(n51), .C(n67), .COUT(n64) );
  GTECH_NOT U54 ( .A(b[4]), .Z(n67) );
  GTECH_NOT U55 ( .A(a[4]), .Z(n51) );
  GTECH_OAI22 U56 ( .A(n55), .B(n68), .C(n53), .D(n68), .Z(n52) );
  GTECH_XOR3 U57 ( .A(b[3]), .B(a[3]), .C(n69), .Z(n53) );
  GTECH_AO22 U58 ( .A(n69), .B(a[3]), .C(n70), .D(b[3]), .Z(n68) );
  GTECH_OR_NOT U59 ( .A(a[3]), .B(n71), .Z(n70) );
  GTECH_NOT U60 ( .A(n71), .Z(n69) );
  GTECH_AOI22 U61 ( .A(n72), .B(b[2]), .C(n73), .D(a[2]), .Z(n71) );
  GTECH_OR2 U62 ( .A(a[2]), .B(n73), .Z(n72) );
  GTECH_OR_NOT U63 ( .A(n58), .B(n57), .Z(n55) );
  GTECH_XNOR3 U64 ( .A(b[2]), .B(a[2]), .C(n73), .Z(n57) );
  GTECH_AO22 U65 ( .A(n74), .B(a[1]), .C(n75), .D(b[1]), .Z(n73) );
  GTECH_OR2 U66 ( .A(n74), .B(a[1]), .Z(n75) );
  GTECH_XOR3 U67 ( .A(b[1]), .B(a[1]), .C(n74), .Z(n58) );
  GTECH_ADD_ABC U68 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n74) );
endmodule

