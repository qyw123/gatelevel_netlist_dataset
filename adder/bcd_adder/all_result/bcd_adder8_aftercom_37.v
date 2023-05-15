
module bcd_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75;

  GTECH_ADD_AB U29 ( .A(n45), .B(n46), .S(sum[7]) );
  GTECH_AND2 U30 ( .A(n47), .B(cout), .Z(n45) );
  GTECH_OAI21 U31 ( .A(n48), .B(n47), .C(n49), .Z(sum[6]) );
  GTECH_AO21 U32 ( .A(cout), .B(n50), .C(n51), .Z(n49) );
  GTECH_XNOR2 U33 ( .A(cout), .B(n50), .Z(sum[5]) );
  GTECH_XNOR3 U34 ( .A(b[4]), .B(a[4]), .C(n52), .Z(sum[4]) );
  GTECH_ADD_AB U35 ( .A(n53), .B(n54), .S(sum[3]) );
  GTECH_AND2 U36 ( .A(n55), .B(n56), .Z(n53) );
  GTECH_OAI21 U37 ( .A(n52), .B(n55), .C(n57), .Z(sum[2]) );
  GTECH_AO21 U38 ( .A(n56), .B(n58), .C(n59), .Z(n57) );
  GTECH_XNOR2 U39 ( .A(n56), .B(n58), .Z(sum[1]) );
  GTECH_ADD_ABC U40 ( .A(cin), .B(b[0]), .C(a[0]), .S(sum[0]) );
  GTECH_NOT U41 ( .A(n48), .Z(cout) );
  GTECH_AOI222 U42 ( .A(a[7]), .B(n60), .C(b[7]), .D(n61), .E(n46), .F(n47), 
        .Z(n48) );
  GTECH_NAND2 U43 ( .A(n51), .B(n50), .Z(n47) );
  GTECH_XNOR3 U44 ( .A(b[5]), .B(a[5]), .C(n62), .Z(n50) );
  GTECH_XNOR3 U45 ( .A(b[6]), .B(a[6]), .C(n63), .Z(n51) );
  GTECH_XNOR3 U46 ( .A(b[7]), .B(a[7]), .C(n64), .Z(n46) );
  GTECH_OR2 U47 ( .A(a[7]), .B(n60), .Z(n61) );
  GTECH_NOT U48 ( .A(n64), .Z(n60) );
  GTECH_AOI21 U49 ( .A(n63), .B(a[6]), .C(n65), .Z(n64) );
  GTECH_OA21 U50 ( .A(a[6]), .B(n63), .C(b[6]), .Z(n65) );
  GTECH_AO21 U51 ( .A(n62), .B(a[5]), .C(n66), .Z(n63) );
  GTECH_OA21 U52 ( .A(a[5]), .B(n62), .C(b[5]), .Z(n66) );
  GTECH_AO21 U53 ( .A(n56), .B(a[4]), .C(n67), .Z(n62) );
  GTECH_NOT U54 ( .A(n68), .Z(n67) );
  GTECH_OAI21 U55 ( .A(a[4]), .B(n56), .C(b[4]), .Z(n68) );
  GTECH_NOT U56 ( .A(n52), .Z(n56) );
  GTECH_AOI222 U57 ( .A(a[3]), .B(n69), .C(b[3]), .D(n70), .E(n54), .F(n55), 
        .Z(n52) );
  GTECH_NAND2 U58 ( .A(n59), .B(n58), .Z(n55) );
  GTECH_XNOR3 U59 ( .A(b[1]), .B(a[1]), .C(n71), .Z(n58) );
  GTECH_XNOR3 U60 ( .A(b[2]), .B(a[2]), .C(n72), .Z(n59) );
  GTECH_XNOR3 U61 ( .A(b[3]), .B(a[3]), .C(n73), .Z(n54) );
  GTECH_OR2 U62 ( .A(a[3]), .B(n69), .Z(n70) );
  GTECH_NOT U63 ( .A(n73), .Z(n69) );
  GTECH_AOI21 U64 ( .A(n72), .B(a[2]), .C(n74), .Z(n73) );
  GTECH_OA21 U65 ( .A(a[2]), .B(n72), .C(b[2]), .Z(n74) );
  GTECH_AO21 U66 ( .A(n71), .B(a[1]), .C(n75), .Z(n72) );
  GTECH_OA21 U67 ( .A(a[1]), .B(n71), .C(b[1]), .Z(n75) );
  GTECH_ADD_ABC U68 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n71) );
endmodule
