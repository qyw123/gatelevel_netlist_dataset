
module bcd_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81;

  GTECH_XOR2 U29 ( .A(n45), .B(n46), .Z(sum[7]) );
  GTECH_AND_NOT U30 ( .A(n47), .B(n48), .Z(n46) );
  GTECH_OAI22 U31 ( .A(n48), .B(n47), .C(n49), .D(n50), .Z(sum[6]) );
  GTECH_AND_NOT U32 ( .A(n51), .B(n48), .Z(n49) );
  GTECH_XNOR2 U33 ( .A(cout), .B(n51), .Z(sum[5]) );
  GTECH_XNOR3 U34 ( .A(b[4]), .B(a[4]), .C(n52), .Z(sum[4]) );
  GTECH_XOR2 U35 ( .A(n53), .B(n54), .Z(sum[3]) );
  GTECH_AND_NOT U36 ( .A(n55), .B(n52), .Z(n54) );
  GTECH_OAI22 U37 ( .A(n52), .B(n55), .C(n56), .D(n57), .Z(sum[2]) );
  GTECH_AND_NOT U38 ( .A(n58), .B(n52), .Z(n56) );
  GTECH_XNOR2 U39 ( .A(n59), .B(n58), .Z(sum[1]) );
  GTECH_XOR3 U40 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_NOT U41 ( .A(n48), .Z(cout) );
  GTECH_AOI222 U42 ( .A(a[7]), .B(n60), .C(b[7]), .D(n61), .E(n45), .F(n47), 
        .Z(n48) );
  GTECH_NAND2 U43 ( .A(n51), .B(n50), .Z(n47) );
  GTECH_XNOR3 U44 ( .A(b[6]), .B(a[6]), .C(n62), .Z(n50) );
  GTECH_XNOR3 U45 ( .A(b[5]), .B(a[5]), .C(n63), .Z(n51) );
  GTECH_XOR3 U46 ( .A(b[7]), .B(a[7]), .C(n60), .Z(n45) );
  GTECH_OR_NOT U47 ( .A(a[7]), .B(n64), .Z(n61) );
  GTECH_NOT U48 ( .A(n64), .Z(n60) );
  GTECH_AOI22 U49 ( .A(n62), .B(a[6]), .C(n65), .D(b[6]), .Z(n64) );
  GTECH_NOT U50 ( .A(n66), .Z(n65) );
  GTECH_NOR2 U51 ( .A(n62), .B(a[6]), .Z(n66) );
  GTECH_OAI2N2 U52 ( .A(n67), .B(n68), .C(n63), .D(a[5]), .Z(n62) );
  GTECH_NOT U53 ( .A(b[5]), .Z(n68) );
  GTECH_NOR2 U54 ( .A(n63), .B(a[5]), .Z(n67) );
  GTECH_AO22 U55 ( .A(n59), .B(a[4]), .C(n69), .D(b[4]), .Z(n63) );
  GTECH_OR_NOT U56 ( .A(a[4]), .B(n52), .Z(n69) );
  GTECH_NOT U57 ( .A(n52), .Z(n59) );
  GTECH_AOI222 U58 ( .A(a[3]), .B(n70), .C(b[3]), .D(n71), .E(n53), .F(n55), 
        .Z(n52) );
  GTECH_NAND2 U59 ( .A(n58), .B(n57), .Z(n55) );
  GTECH_XOR3 U60 ( .A(n72), .B(n73), .C(n74), .Z(n57) );
  GTECH_XOR3 U61 ( .A(b[1]), .B(a[1]), .C(n75), .Z(n58) );
  GTECH_XOR3 U62 ( .A(b[3]), .B(a[3]), .C(n70), .Z(n53) );
  GTECH_OR_NOT U63 ( .A(a[3]), .B(n76), .Z(n71) );
  GTECH_NOT U64 ( .A(n76), .Z(n70) );
  GTECH_OA22 U65 ( .A(n74), .B(n73), .C(n77), .D(n72), .Z(n76) );
  GTECH_NOT U66 ( .A(b[2]), .Z(n72) );
  GTECH_AND_NOT U67 ( .A(n74), .B(a[2]), .Z(n77) );
  GTECH_NOT U68 ( .A(a[2]), .Z(n73) );
  GTECH_AOI2N2 U69 ( .A(n78), .B(b[1]), .C(n75), .D(n79), .Z(n74) );
  GTECH_NOT U70 ( .A(a[1]), .Z(n79) );
  GTECH_NOT U71 ( .A(n80), .Z(n78) );
  GTECH_AND_NOT U72 ( .A(n75), .B(a[1]), .Z(n80) );
  GTECH_NOT U73 ( .A(n81), .Z(n75) );
  GTECH_ADD_ABC U74 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n81) );
endmodule

