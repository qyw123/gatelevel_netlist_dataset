
module bcd_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76;

  GTECH_XNOR2 U29 ( .A(n45), .B(n46), .Z(sum[7]) );
  GTECH_AND2 U30 ( .A(n47), .B(cout), .Z(n45) );
  GTECH_OAI21 U31 ( .A(n48), .B(n47), .C(n49), .Z(sum[6]) );
  GTECH_OAI21 U32 ( .A(n48), .B(n50), .C(n51), .Z(n49) );
  GTECH_NOT U33 ( .A(n52), .Z(n47) );
  GTECH_XNOR2 U34 ( .A(n48), .B(n50), .Z(sum[5]) );
  GTECH_NOT U35 ( .A(cout), .Z(n48) );
  GTECH_XOR3 U36 ( .A(b[4]), .B(a[4]), .C(n53), .Z(sum[4]) );
  GTECH_XNOR2 U37 ( .A(n54), .B(n55), .Z(sum[3]) );
  GTECH_AND2 U38 ( .A(n56), .B(n53), .Z(n54) );
  GTECH_OAI21 U39 ( .A(n57), .B(n56), .C(n58), .Z(sum[2]) );
  GTECH_OAI21 U40 ( .A(n57), .B(n59), .C(n60), .Z(n58) );
  GTECH_NOT U41 ( .A(n61), .Z(n56) );
  GTECH_XNOR2 U42 ( .A(n57), .B(n59), .Z(sum[1]) );
  GTECH_NOT U43 ( .A(n53), .Z(n57) );
  GTECH_XOR3 U44 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_AO21 U45 ( .A(n62), .B(a[7]), .C(n63), .Z(cout) );
  GTECH_OAI21 U46 ( .A(n52), .B(n46), .C(n64), .Z(n63) );
  GTECH_OAI21 U47 ( .A(a[7]), .B(n62), .C(b[7]), .Z(n64) );
  GTECH_XNOR3 U48 ( .A(b[7]), .B(a[7]), .C(n62), .Z(n46) );
  GTECH_NOR2 U49 ( .A(n50), .B(n51), .Z(n52) );
  GTECH_XOR3 U50 ( .A(b[6]), .B(a[6]), .C(n65), .Z(n51) );
  GTECH_XOR3 U51 ( .A(b[5]), .B(a[5]), .C(n66), .Z(n50) );
  GTECH_AO21 U52 ( .A(n65), .B(a[6]), .C(n67), .Z(n62) );
  GTECH_OA21 U53 ( .A(a[6]), .B(n65), .C(b[6]), .Z(n67) );
  GTECH_AO21 U54 ( .A(n66), .B(a[5]), .C(n68), .Z(n65) );
  GTECH_OA21 U55 ( .A(a[5]), .B(n66), .C(b[5]), .Z(n68) );
  GTECH_AO21 U56 ( .A(n53), .B(a[4]), .C(n69), .Z(n66) );
  GTECH_OA21 U57 ( .A(a[4]), .B(n53), .C(b[4]), .Z(n69) );
  GTECH_AO21 U58 ( .A(n70), .B(a[3]), .C(n71), .Z(n53) );
  GTECH_OAI21 U59 ( .A(n61), .B(n55), .C(n72), .Z(n71) );
  GTECH_OAI21 U60 ( .A(a[3]), .B(n70), .C(b[3]), .Z(n72) );
  GTECH_XNOR3 U61 ( .A(b[3]), .B(a[3]), .C(n70), .Z(n55) );
  GTECH_NOR2 U62 ( .A(n59), .B(n60), .Z(n61) );
  GTECH_XOR3 U63 ( .A(b[2]), .B(a[2]), .C(n73), .Z(n60) );
  GTECH_XOR3 U64 ( .A(b[1]), .B(a[1]), .C(n74), .Z(n59) );
  GTECH_AO21 U65 ( .A(n73), .B(a[2]), .C(n75), .Z(n70) );
  GTECH_OA21 U66 ( .A(a[2]), .B(n73), .C(b[2]), .Z(n75) );
  GTECH_AO21 U67 ( .A(n74), .B(a[1]), .C(n76), .Z(n73) );
  GTECH_OA21 U68 ( .A(a[1]), .B(n74), .C(b[1]), .Z(n76) );
  GTECH_ADD_ABC U69 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n74) );
endmodule

