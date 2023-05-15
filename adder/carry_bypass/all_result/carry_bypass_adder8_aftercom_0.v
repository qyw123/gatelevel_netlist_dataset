
module carry_bypass_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78;

  GTECH_XNOR3 U17 ( .A(b[7]), .B(a[7]), .C(n48), .Z(sum[7]) );
  GTECH_XNOR3 U18 ( .A(b[6]), .B(a[6]), .C(n49), .Z(sum[6]) );
  GTECH_XNOR3 U19 ( .A(b[5]), .B(a[5]), .C(n50), .Z(sum[5]) );
  GTECH_XNOR3 U20 ( .A(b[4]), .B(a[4]), .C(n51), .Z(sum[4]) );
  GTECH_XNOR3 U21 ( .A(b[3]), .B(a[3]), .C(n52), .Z(sum[3]) );
  GTECH_XNOR3 U22 ( .A(b[2]), .B(a[2]), .C(n53), .Z(sum[2]) );
  GTECH_XNOR3 U23 ( .A(b[1]), .B(a[1]), .C(n54), .Z(sum[1]) );
  GTECH_XOR3 U24 ( .A(cin), .B(n55), .C(n56), .Z(sum[0]) );
  GTECH_AO21 U25 ( .A(n57), .B(a[7]), .C(n58), .Z(cout) );
  GTECH_NOT U26 ( .A(n59), .Z(n58) );
  GTECH_OAI21 U27 ( .A(a[7]), .B(n57), .C(b[7]), .Z(n59) );
  GTECH_NOT U28 ( .A(n48), .Z(n57) );
  GTECH_OA21 U29 ( .A(n49), .B(n60), .C(n61), .Z(n48) );
  GTECH_AO21 U30 ( .A(n60), .B(n49), .C(n62), .Z(n61) );
  GTECH_NOT U31 ( .A(b[6]), .Z(n62) );
  GTECH_NOT U32 ( .A(a[6]), .Z(n60) );
  GTECH_OA21 U33 ( .A(n50), .B(n63), .C(n64), .Z(n49) );
  GTECH_AO21 U34 ( .A(n63), .B(n50), .C(n65), .Z(n64) );
  GTECH_NOT U35 ( .A(b[5]), .Z(n65) );
  GTECH_NOT U36 ( .A(a[5]), .Z(n63) );
  GTECH_OA21 U37 ( .A(n51), .B(n66), .C(n67), .Z(n50) );
  GTECH_AO21 U38 ( .A(n66), .B(n51), .C(n68), .Z(n67) );
  GTECH_NOT U39 ( .A(b[4]), .Z(n68) );
  GTECH_NOT U40 ( .A(a[4]), .Z(n66) );
  GTECH_OA21 U41 ( .A(n52), .B(n69), .C(n70), .Z(n51) );
  GTECH_AO21 U42 ( .A(n69), .B(n52), .C(n71), .Z(n70) );
  GTECH_NOT U43 ( .A(b[3]), .Z(n71) );
  GTECH_NOT U44 ( .A(a[3]), .Z(n69) );
  GTECH_OA21 U45 ( .A(n53), .B(n72), .C(n73), .Z(n52) );
  GTECH_AO21 U46 ( .A(n72), .B(n53), .C(n74), .Z(n73) );
  GTECH_NOT U47 ( .A(b[2]), .Z(n74) );
  GTECH_NOT U48 ( .A(a[2]), .Z(n72) );
  GTECH_OA21 U49 ( .A(n54), .B(n75), .C(n76), .Z(n53) );
  GTECH_AO21 U50 ( .A(n75), .B(n54), .C(n77), .Z(n76) );
  GTECH_NOT U51 ( .A(b[1]), .Z(n77) );
  GTECH_NOT U52 ( .A(a[1]), .Z(n75) );
  GTECH_ADD_ABC U53 ( .A(n56), .B(n55), .C(n78), .COUT(n54) );
  GTECH_NOT U54 ( .A(cin), .Z(n78) );
  GTECH_NOT U55 ( .A(b[0]), .Z(n55) );
  GTECH_NOT U56 ( .A(a[0]), .Z(n56) );
endmodule

