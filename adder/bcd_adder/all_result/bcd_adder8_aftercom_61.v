
module bcd_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76;

  GTECH_XOR2 U31 ( .A(n47), .B(n48), .Z(sum[7]) );
  GTECH_AND_NOT U32 ( .A(n49), .B(n50), .Z(n48) );
  GTECH_OAI21 U33 ( .A(n50), .B(n49), .C(n51), .Z(sum[6]) );
  GTECH_AO21 U34 ( .A(cout), .B(n52), .C(n53), .Z(n51) );
  GTECH_XNOR2 U35 ( .A(cout), .B(n52), .Z(sum[5]) );
  GTECH_XNOR3 U36 ( .A(b[4]), .B(a[4]), .C(n54), .Z(sum[4]) );
  GTECH_XOR2 U37 ( .A(n55), .B(n56), .Z(sum[3]) );
  GTECH_AND_NOT U38 ( .A(n57), .B(n54), .Z(n56) );
  GTECH_OAI21 U39 ( .A(n54), .B(n57), .C(n58), .Z(sum[2]) );
  GTECH_AO21 U40 ( .A(n59), .B(n60), .C(n61), .Z(n58) );
  GTECH_XNOR2 U41 ( .A(n59), .B(n60), .Z(sum[1]) );
  GTECH_XOR3 U42 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_NOT U43 ( .A(n50), .Z(cout) );
  GTECH_AOI222 U44 ( .A(a[7]), .B(n62), .C(b[7]), .D(n63), .E(n47), .F(n49), 
        .Z(n50) );
  GTECH_NAND2 U45 ( .A(n53), .B(n52), .Z(n49) );
  GTECH_XNOR3 U46 ( .A(b[5]), .B(a[5]), .C(n64), .Z(n52) );
  GTECH_XNOR3 U47 ( .A(b[6]), .B(a[6]), .C(n65), .Z(n53) );
  GTECH_XOR3 U48 ( .A(b[7]), .B(a[7]), .C(n62), .Z(n47) );
  GTECH_OR_NOT U49 ( .A(a[7]), .B(n66), .Z(n63) );
  GTECH_NOT U50 ( .A(n62), .Z(n66) );
  GTECH_AO21 U51 ( .A(n65), .B(a[6]), .C(n67), .Z(n62) );
  GTECH_OA21 U52 ( .A(a[6]), .B(n65), .C(b[6]), .Z(n67) );
  GTECH_AO21 U53 ( .A(n64), .B(a[5]), .C(n68), .Z(n65) );
  GTECH_OA21 U54 ( .A(a[5]), .B(n64), .C(b[5]), .Z(n68) );
  GTECH_AO21 U55 ( .A(n59), .B(a[4]), .C(n69), .Z(n64) );
  GTECH_OA21 U56 ( .A(a[4]), .B(n59), .C(b[4]), .Z(n69) );
  GTECH_NOT U57 ( .A(n54), .Z(n59) );
  GTECH_AOI222 U58 ( .A(a[3]), .B(n70), .C(b[3]), .D(n71), .E(n55), .F(n57), 
        .Z(n54) );
  GTECH_NAND2 U59 ( .A(n61), .B(n60), .Z(n57) );
  GTECH_XNOR3 U60 ( .A(b[1]), .B(a[1]), .C(n72), .Z(n60) );
  GTECH_XNOR3 U61 ( .A(b[2]), .B(a[2]), .C(n73), .Z(n61) );
  GTECH_XNOR3 U62 ( .A(b[3]), .B(a[3]), .C(n74), .Z(n55) );
  GTECH_OR_NOT U63 ( .A(a[3]), .B(n74), .Z(n71) );
  GTECH_NOT U64 ( .A(n70), .Z(n74) );
  GTECH_AO21 U65 ( .A(n73), .B(a[2]), .C(n75), .Z(n70) );
  GTECH_OA21 U66 ( .A(a[2]), .B(n73), .C(b[2]), .Z(n75) );
  GTECH_AO21 U67 ( .A(n72), .B(a[1]), .C(n76), .Z(n73) );
  GTECH_OA21 U68 ( .A(a[1]), .B(n72), .C(b[1]), .Z(n76) );
  GTECH_ADD_ABC U69 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n72) );
endmodule

