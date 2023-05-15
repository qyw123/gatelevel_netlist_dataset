
module bcd_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77;

  GTECH_XOR2 U29 ( .A(n45), .B(n46), .Z(sum[7]) );
  GTECH_AND2 U30 ( .A(n47), .B(cout), .Z(n46) );
  GTECH_OAI22 U31 ( .A(n48), .B(n49), .C(n50), .D(n47), .Z(sum[6]) );
  GTECH_AND2 U32 ( .A(n51), .B(cout), .Z(n48) );
  GTECH_XOR2 U33 ( .A(n50), .B(n51), .Z(sum[5]) );
  GTECH_XNOR3 U34 ( .A(b[4]), .B(n52), .C(n53), .Z(sum[4]) );
  GTECH_XOR2 U35 ( .A(n54), .B(n55), .Z(sum[3]) );
  GTECH_AND2 U36 ( .A(n56), .B(n53), .Z(n55) );
  GTECH_OAI22 U37 ( .A(n57), .B(n58), .C(n59), .D(n56), .Z(sum[2]) );
  GTECH_NOR2 U38 ( .A(n59), .B(n60), .Z(n57) );
  GTECH_XNOR2 U39 ( .A(n59), .B(n60), .Z(sum[1]) );
  GTECH_XOR3 U40 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_NOT U41 ( .A(n50), .Z(cout) );
  GTECH_AOI21 U42 ( .A(a[7]), .B(n61), .C(n62), .Z(n50) );
  GTECH_AO22 U43 ( .A(n63), .B(b[7]), .C(n47), .D(n45), .Z(n62) );
  GTECH_XOR3 U44 ( .A(b[7]), .B(a[7]), .C(n61), .Z(n45) );
  GTECH_NAND2 U45 ( .A(n49), .B(n51), .Z(n47) );
  GTECH_XNOR3 U46 ( .A(b[5]), .B(a[5]), .C(n64), .Z(n51) );
  GTECH_XNOR3 U47 ( .A(b[6]), .B(a[6]), .C(n65), .Z(n49) );
  GTECH_OR_NOT U48 ( .A(a[7]), .B(n66), .Z(n63) );
  GTECH_NOT U49 ( .A(n66), .Z(n61) );
  GTECH_AOI22 U50 ( .A(n65), .B(a[6]), .C(n67), .D(b[6]), .Z(n66) );
  GTECH_OR2 U51 ( .A(n65), .B(a[6]), .Z(n67) );
  GTECH_AO22 U52 ( .A(n68), .B(b[5]), .C(n64), .D(a[5]), .Z(n65) );
  GTECH_OR2 U53 ( .A(n64), .B(a[5]), .Z(n68) );
  GTECH_AO22 U54 ( .A(n53), .B(a[4]), .C(n69), .D(b[4]), .Z(n64) );
  GTECH_NAND2 U55 ( .A(n52), .B(n59), .Z(n69) );
  GTECH_NOT U56 ( .A(a[4]), .Z(n52) );
  GTECH_NOT U57 ( .A(n59), .Z(n53) );
  GTECH_AOI21 U58 ( .A(a[3]), .B(n70), .C(n71), .Z(n59) );
  GTECH_AO22 U59 ( .A(n72), .B(b[3]), .C(n56), .D(n54), .Z(n71) );
  GTECH_XOR3 U60 ( .A(b[3]), .B(a[3]), .C(n70), .Z(n54) );
  GTECH_OR_NOT U61 ( .A(n60), .B(n58), .Z(n56) );
  GTECH_XNOR3 U62 ( .A(b[2]), .B(a[2]), .C(n73), .Z(n58) );
  GTECH_XOR3 U63 ( .A(b[1]), .B(a[1]), .C(n74), .Z(n60) );
  GTECH_OR_NOT U64 ( .A(a[3]), .B(n75), .Z(n72) );
  GTECH_NOT U65 ( .A(n75), .Z(n70) );
  GTECH_AOI22 U66 ( .A(n73), .B(a[2]), .C(n76), .D(b[2]), .Z(n75) );
  GTECH_OR2 U67 ( .A(n73), .B(a[2]), .Z(n76) );
  GTECH_AO22 U68 ( .A(n77), .B(b[1]), .C(n74), .D(a[1]), .Z(n73) );
  GTECH_OR2 U69 ( .A(n74), .B(a[1]), .Z(n77) );
  GTECH_ADD_ABC U70 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n74) );
endmodule

