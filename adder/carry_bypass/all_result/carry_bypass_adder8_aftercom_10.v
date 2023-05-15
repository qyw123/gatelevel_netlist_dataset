
module carry_bypass_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70;

  GTECH_XNOR3 U20 ( .A(b[7]), .B(a[7]), .C(n51), .Z(sum[7]) );
  GTECH_ADD_ABC U21 ( .A(b[6]), .B(n52), .C(n53), .S(sum[6]) );
  GTECH_ADD_ABC U22 ( .A(b[5]), .B(n54), .C(n55), .S(sum[5]) );
  GTECH_ADD_ABC U23 ( .A(b[4]), .B(n56), .C(n57), .S(sum[4]) );
  GTECH_ADD_ABC U24 ( .A(b[3]), .B(n58), .C(n59), .S(sum[3]) );
  GTECH_ADD_ABC U25 ( .A(b[2]), .B(n60), .C(n61), .S(sum[2]) );
  GTECH_ADD_ABC U26 ( .A(b[1]), .B(a[1]), .C(n62), .S(sum[1]) );
  GTECH_ADD_ABC U27 ( .A(cin), .B(b[0]), .C(a[0]), .S(sum[0]) );
  GTECH_AO22 U28 ( .A(n63), .B(a[7]), .C(n64), .D(b[7]), .Z(cout) );
  GTECH_OR_NOT U29 ( .A(a[7]), .B(n51), .Z(n64) );
  GTECH_NOT U30 ( .A(n51), .Z(n63) );
  GTECH_AOI2N2 U31 ( .A(n65), .B(b[6]), .C(n53), .D(n52), .Z(n51) );
  GTECH_NAND2 U32 ( .A(n52), .B(n53), .Z(n65) );
  GTECH_AOI2N2 U33 ( .A(n66), .B(b[5]), .C(n55), .D(n54), .Z(n53) );
  GTECH_NAND2 U34 ( .A(n54), .B(n55), .Z(n66) );
  GTECH_AOI2N2 U35 ( .A(n67), .B(b[4]), .C(n57), .D(n56), .Z(n55) );
  GTECH_NAND2 U36 ( .A(n56), .B(n57), .Z(n67) );
  GTECH_AOI2N2 U37 ( .A(n68), .B(b[3]), .C(n59), .D(n58), .Z(n57) );
  GTECH_NAND2 U38 ( .A(n58), .B(n59), .Z(n68) );
  GTECH_AOI2N2 U39 ( .A(n69), .B(b[2]), .C(n61), .D(n60), .Z(n59) );
  GTECH_NAND2 U40 ( .A(n60), .B(n61), .Z(n69) );
  GTECH_AOI22 U41 ( .A(n70), .B(b[1]), .C(n62), .D(a[1]), .Z(n61) );
  GTECH_OR2 U42 ( .A(a[1]), .B(n62), .Z(n70) );
  GTECH_ADD_ABC U43 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n62) );
  GTECH_NOT U44 ( .A(a[2]), .Z(n60) );
  GTECH_NOT U45 ( .A(a[3]), .Z(n58) );
  GTECH_NOT U46 ( .A(a[4]), .Z(n56) );
  GTECH_NOT U47 ( .A(a[5]), .Z(n54) );
  GTECH_NOT U48 ( .A(a[6]), .Z(n52) );
endmodule

