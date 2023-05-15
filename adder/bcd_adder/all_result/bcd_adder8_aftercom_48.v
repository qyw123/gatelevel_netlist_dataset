
module bcd_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81;

  GTECH_XOR2 U33 ( .A(n49), .B(n50), .Z(sum[7]) );
  GTECH_AND_NOT U34 ( .A(n51), .B(n52), .Z(n50) );
  GTECH_OAI21 U35 ( .A(n52), .B(n51), .C(n53), .Z(sum[6]) );
  GTECH_AO21 U36 ( .A(cout), .B(n54), .C(n55), .Z(n53) );
  GTECH_XNOR2 U37 ( .A(cout), .B(n54), .Z(sum[5]) );
  GTECH_XNOR3 U38 ( .A(b[4]), .B(a[4]), .C(n56), .Z(sum[4]) );
  GTECH_XOR2 U39 ( .A(n57), .B(n58), .Z(sum[3]) );
  GTECH_AND_NOT U40 ( .A(n59), .B(n56), .Z(n58) );
  GTECH_OAI21 U41 ( .A(n56), .B(n59), .C(n60), .Z(sum[2]) );
  GTECH_AO21 U42 ( .A(n61), .B(n62), .C(n63), .Z(n60) );
  GTECH_XNOR2 U43 ( .A(n61), .B(n62), .Z(sum[1]) );
  GTECH_XOR3 U44 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_NOT U45 ( .A(n52), .Z(cout) );
  GTECH_AOI222 U46 ( .A(a[7]), .B(n64), .C(b[7]), .D(n65), .E(n49), .F(n51), 
        .Z(n52) );
  GTECH_NAND2 U47 ( .A(n55), .B(n54), .Z(n51) );
  GTECH_XNOR3 U48 ( .A(b[5]), .B(a[5]), .C(n66), .Z(n54) );
  GTECH_XNOR3 U49 ( .A(b[6]), .B(a[6]), .C(n67), .Z(n55) );
  GTECH_XOR3 U50 ( .A(b[7]), .B(a[7]), .C(n64), .Z(n49) );
  GTECH_OR2 U51 ( .A(a[7]), .B(n64), .Z(n65) );
  GTECH_AO21 U52 ( .A(n67), .B(a[6]), .C(n68), .Z(n64) );
  GTECH_NOT U53 ( .A(n69), .Z(n68) );
  GTECH_OAI21 U54 ( .A(a[6]), .B(n67), .C(b[6]), .Z(n69) );
  GTECH_AO21 U55 ( .A(n66), .B(a[5]), .C(n70), .Z(n67) );
  GTECH_NOT U56 ( .A(n71), .Z(n70) );
  GTECH_OAI21 U57 ( .A(a[5]), .B(n66), .C(b[5]), .Z(n71) );
  GTECH_OAI21 U58 ( .A(n56), .B(n72), .C(n73), .Z(n66) );
  GTECH_OAI21 U59 ( .A(a[4]), .B(n61), .C(b[4]), .Z(n73) );
  GTECH_NOT U60 ( .A(n56), .Z(n61) );
  GTECH_NOT U61 ( .A(a[4]), .Z(n72) );
  GTECH_AOI222 U62 ( .A(a[3]), .B(n74), .C(b[3]), .D(n75), .E(n57), .F(n59), 
        .Z(n56) );
  GTECH_NAND2 U63 ( .A(n63), .B(n62), .Z(n59) );
  GTECH_XNOR3 U64 ( .A(b[1]), .B(a[1]), .C(n76), .Z(n62) );
  GTECH_XNOR3 U65 ( .A(b[2]), .B(a[2]), .C(n77), .Z(n63) );
  GTECH_XOR3 U66 ( .A(b[3]), .B(a[3]), .C(n74), .Z(n57) );
  GTECH_OR2 U67 ( .A(n74), .B(a[3]), .Z(n75) );
  GTECH_AO21 U68 ( .A(n77), .B(a[2]), .C(n78), .Z(n74) );
  GTECH_NOT U69 ( .A(n79), .Z(n78) );
  GTECH_OAI21 U70 ( .A(a[2]), .B(n77), .C(b[2]), .Z(n79) );
  GTECH_AO21 U71 ( .A(n76), .B(a[1]), .C(n80), .Z(n77) );
  GTECH_NOT U72 ( .A(n81), .Z(n80) );
  GTECH_OAI21 U73 ( .A(a[1]), .B(n76), .C(b[1]), .Z(n81) );
  GTECH_ADD_ABC U74 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n76) );
endmodule

