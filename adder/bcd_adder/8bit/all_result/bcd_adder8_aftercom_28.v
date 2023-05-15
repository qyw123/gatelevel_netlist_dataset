
module bcd_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80;

  GTECH_ADD_AB U31 ( .A(n47), .B(n48), .S(sum[7]) );
  GTECH_AND_NOT U32 ( .A(n49), .B(n50), .Z(n47) );
  GTECH_OAI21 U33 ( .A(n50), .B(n49), .C(n51), .Z(sum[6]) );
  GTECH_OAI21 U34 ( .A(n50), .B(n52), .C(n53), .Z(n51) );
  GTECH_ADD_AB U35 ( .A(n50), .B(n54), .S(sum[5]) );
  GTECH_XOR3 U36 ( .A(b[4]), .B(n55), .C(n56), .Z(sum[4]) );
  GTECH_ADD_AB U37 ( .A(n57), .B(n58), .S(sum[3]) );
  GTECH_AND_NOT U38 ( .A(n59), .B(n56), .Z(n57) );
  GTECH_OAI21 U39 ( .A(n56), .B(n59), .C(n60), .Z(sum[2]) );
  GTECH_AO21 U40 ( .A(n61), .B(n62), .C(n63), .Z(n60) );
  GTECH_ADD_AB U41 ( .A(n56), .B(n62), .S(sum[1]) );
  GTECH_XOR3 U42 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_NOT U43 ( .A(n50), .Z(cout) );
  GTECH_AOI222 U44 ( .A(a[7]), .B(n64), .C(b[7]), .D(n65), .E(n48), .F(n49), 
        .Z(n50) );
  GTECH_OR_NOT U45 ( .A(n53), .B(n54), .Z(n49) );
  GTECH_NOT U46 ( .A(n52), .Z(n54) );
  GTECH_XOR3 U47 ( .A(b[5]), .B(a[5]), .C(n66), .Z(n52) );
  GTECH_XOR3 U48 ( .A(b[6]), .B(a[6]), .C(n67), .Z(n53) );
  GTECH_XOR3 U49 ( .A(b[7]), .B(a[7]), .C(n64), .Z(n48) );
  GTECH_OR2 U50 ( .A(a[7]), .B(n64), .Z(n65) );
  GTECH_AO21 U51 ( .A(n67), .B(a[6]), .C(n68), .Z(n64) );
  GTECH_NOT U52 ( .A(n69), .Z(n68) );
  GTECH_OAI21 U53 ( .A(a[6]), .B(n67), .C(b[6]), .Z(n69) );
  GTECH_AO21 U54 ( .A(n66), .B(a[5]), .C(n70), .Z(n67) );
  GTECH_NOT U55 ( .A(n71), .Z(n70) );
  GTECH_OAI21 U56 ( .A(a[5]), .B(n66), .C(b[5]), .Z(n71) );
  GTECH_OAI21 U57 ( .A(n56), .B(n55), .C(n72), .Z(n66) );
  GTECH_OAI21 U58 ( .A(a[4]), .B(n61), .C(b[4]), .Z(n72) );
  GTECH_NOT U59 ( .A(n56), .Z(n61) );
  GTECH_NOT U60 ( .A(a[4]), .Z(n55) );
  GTECH_AOI222 U61 ( .A(a[3]), .B(n73), .C(b[3]), .D(n74), .E(n58), .F(n59), 
        .Z(n56) );
  GTECH_NAND2 U62 ( .A(n62), .B(n63), .Z(n59) );
  GTECH_XNOR3 U63 ( .A(b[2]), .B(a[2]), .C(n75), .Z(n63) );
  GTECH_XNOR3 U64 ( .A(b[1]), .B(a[1]), .C(n76), .Z(n62) );
  GTECH_XOR3 U65 ( .A(b[3]), .B(a[3]), .C(n73), .Z(n58) );
  GTECH_OR2 U66 ( .A(a[3]), .B(n73), .Z(n74) );
  GTECH_AO21 U67 ( .A(n75), .B(a[2]), .C(n77), .Z(n73) );
  GTECH_NOT U68 ( .A(n78), .Z(n77) );
  GTECH_OAI21 U69 ( .A(a[2]), .B(n75), .C(b[2]), .Z(n78) );
  GTECH_AO21 U70 ( .A(n76), .B(a[1]), .C(n79), .Z(n75) );
  GTECH_NOT U71 ( .A(n80), .Z(n79) );
  GTECH_OAI21 U72 ( .A(a[1]), .B(n76), .C(b[1]), .Z(n80) );
  GTECH_ADD_ABC U73 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n76) );
endmodule

