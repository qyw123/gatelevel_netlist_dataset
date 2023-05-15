
module bcd_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78;

  GTECH_XNOR2 U29 ( .A(n45), .B(n46), .Z(sum[7]) );
  GTECH_AND2 U30 ( .A(n47), .B(cout), .Z(n46) );
  GTECH_OAI21 U31 ( .A(n48), .B(n47), .C(n49), .Z(sum[6]) );
  GTECH_AO21 U32 ( .A(cout), .B(n50), .C(n51), .Z(n49) );
  GTECH_NOT U33 ( .A(n52), .Z(n47) );
  GTECH_NOT U34 ( .A(cout), .Z(n48) );
  GTECH_XOR2 U35 ( .A(cout), .B(n53), .Z(sum[5]) );
  GTECH_XNOR3 U36 ( .A(b[4]), .B(a[4]), .C(n54), .Z(sum[4]) );
  GTECH_XNOR2 U37 ( .A(n55), .B(n56), .Z(sum[3]) );
  GTECH_AND2 U38 ( .A(n57), .B(n58), .Z(n56) );
  GTECH_OAI21 U39 ( .A(n54), .B(n57), .C(n59), .Z(sum[2]) );
  GTECH_AO21 U40 ( .A(n58), .B(n60), .C(n61), .Z(n59) );
  GTECH_NOT U41 ( .A(n62), .Z(n57) );
  GTECH_NOT U42 ( .A(n58), .Z(n54) );
  GTECH_XOR2 U43 ( .A(n58), .B(n63), .Z(sum[1]) );
  GTECH_ADD_ABC U44 ( .A(cin), .B(b[0]), .C(a[0]), .S(sum[0]) );
  GTECH_AO21 U45 ( .A(n64), .B(a[7]), .C(n65), .Z(cout) );
  GTECH_OAI21 U46 ( .A(n52), .B(n45), .C(n66), .Z(n65) );
  GTECH_OAI21 U47 ( .A(a[7]), .B(n64), .C(b[7]), .Z(n66) );
  GTECH_XNOR3 U48 ( .A(b[7]), .B(a[7]), .C(n64), .Z(n45) );
  GTECH_AND_NOT U49 ( .A(n51), .B(n53), .Z(n52) );
  GTECH_NOT U50 ( .A(n50), .Z(n53) );
  GTECH_XNOR3 U51 ( .A(b[5]), .B(a[5]), .C(n67), .Z(n50) );
  GTECH_XNOR3 U52 ( .A(b[6]), .B(a[6]), .C(n68), .Z(n51) );
  GTECH_AO21 U53 ( .A(n68), .B(a[6]), .C(n69), .Z(n64) );
  GTECH_OA21 U54 ( .A(a[6]), .B(n68), .C(b[6]), .Z(n69) );
  GTECH_AO21 U55 ( .A(n67), .B(a[5]), .C(n70), .Z(n68) );
  GTECH_OA21 U56 ( .A(a[5]), .B(n67), .C(b[5]), .Z(n70) );
  GTECH_AO21 U57 ( .A(n58), .B(a[4]), .C(n71), .Z(n67) );
  GTECH_OA21 U58 ( .A(a[4]), .B(n58), .C(b[4]), .Z(n71) );
  GTECH_AO21 U59 ( .A(n72), .B(a[3]), .C(n73), .Z(n58) );
  GTECH_OAI21 U60 ( .A(n62), .B(n55), .C(n74), .Z(n73) );
  GTECH_OAI21 U61 ( .A(a[3]), .B(n72), .C(b[3]), .Z(n74) );
  GTECH_XNOR3 U62 ( .A(b[3]), .B(a[3]), .C(n72), .Z(n55) );
  GTECH_AND_NOT U63 ( .A(n61), .B(n63), .Z(n62) );
  GTECH_NOT U64 ( .A(n60), .Z(n63) );
  GTECH_XNOR3 U65 ( .A(b[1]), .B(a[1]), .C(n75), .Z(n60) );
  GTECH_XNOR3 U66 ( .A(b[2]), .B(a[2]), .C(n76), .Z(n61) );
  GTECH_AO21 U67 ( .A(n76), .B(a[2]), .C(n77), .Z(n72) );
  GTECH_OA21 U68 ( .A(a[2]), .B(n76), .C(b[2]), .Z(n77) );
  GTECH_AO21 U69 ( .A(n75), .B(a[1]), .C(n78), .Z(n76) );
  GTECH_OA21 U70 ( .A(a[1]), .B(n75), .C(b[1]), .Z(n78) );
  GTECH_ADD_ABC U71 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n75) );
endmodule

