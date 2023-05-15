
module bcd_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80;

  GTECH_XNOR2 U29 ( .A(n45), .B(n46), .Z(sum[7]) );
  GTECH_AND_NOT U30 ( .A(cout), .B(n47), .Z(n46) );
  GTECH_AO21 U31 ( .A(cout), .B(n47), .C(n48), .Z(sum[6]) );
  GTECH_AOI21 U32 ( .A(cout), .B(n49), .C(n50), .Z(n48) );
  GTECH_XNOR2 U33 ( .A(cout), .B(n49), .Z(sum[5]) );
  GTECH_XNOR3 U34 ( .A(b[4]), .B(a[4]), .C(n51), .Z(sum[4]) );
  GTECH_XOR2 U35 ( .A(n52), .B(n53), .Z(sum[3]) );
  GTECH_AND2 U36 ( .A(n54), .B(n55), .Z(n53) );
  GTECH_OAI21 U37 ( .A(n51), .B(n54), .C(n56), .Z(sum[2]) );
  GTECH_OAI21 U38 ( .A(n51), .B(n57), .C(n58), .Z(n56) );
  GTECH_NOT U39 ( .A(n55), .Z(n51) );
  GTECH_XOR2 U40 ( .A(n55), .B(n57), .Z(sum[1]) );
  GTECH_XOR3 U41 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_OAI21 U42 ( .A(n59), .B(n60), .C(n61), .Z(cout) );
  GTECH_AOI2N2 U43 ( .A(n62), .B(b[7]), .C(n47), .D(n45), .Z(n61) );
  GTECH_XNOR3 U44 ( .A(b[7]), .B(n60), .C(n59), .Z(n45) );
  GTECH_AND2 U45 ( .A(n50), .B(n49), .Z(n47) );
  GTECH_XNOR3 U46 ( .A(b[5]), .B(a[5]), .C(n63), .Z(n49) );
  GTECH_XNOR3 U47 ( .A(b[6]), .B(a[6]), .C(n64), .Z(n50) );
  GTECH_NAND2 U48 ( .A(n60), .B(n59), .Z(n62) );
  GTECH_NOT U49 ( .A(a[7]), .Z(n60) );
  GTECH_AOI21 U50 ( .A(n64), .B(a[6]), .C(n65), .Z(n59) );
  GTECH_NOT U51 ( .A(n66), .Z(n65) );
  GTECH_OAI21 U52 ( .A(a[6]), .B(n64), .C(b[6]), .Z(n66) );
  GTECH_AO21 U53 ( .A(n63), .B(a[5]), .C(n67), .Z(n64) );
  GTECH_NOT U54 ( .A(n68), .Z(n67) );
  GTECH_OAI21 U55 ( .A(a[5]), .B(n63), .C(b[5]), .Z(n68) );
  GTECH_AO21 U56 ( .A(n55), .B(a[4]), .C(n69), .Z(n63) );
  GTECH_NOT U57 ( .A(n70), .Z(n69) );
  GTECH_OAI21 U58 ( .A(a[4]), .B(n55), .C(b[4]), .Z(n70) );
  GTECH_OAI21 U59 ( .A(n71), .B(n72), .C(n73), .Z(n55) );
  GTECH_AOI22 U60 ( .A(n54), .B(n52), .C(n74), .D(b[3]), .Z(n73) );
  GTECH_NAND2 U61 ( .A(n72), .B(n71), .Z(n74) );
  GTECH_XNOR3 U62 ( .A(b[3]), .B(a[3]), .C(n71), .Z(n52) );
  GTECH_OR2 U63 ( .A(n57), .B(n58), .Z(n54) );
  GTECH_XOR3 U64 ( .A(b[2]), .B(a[2]), .C(n75), .Z(n58) );
  GTECH_XOR3 U65 ( .A(b[1]), .B(a[1]), .C(n76), .Z(n57) );
  GTECH_NOT U66 ( .A(a[3]), .Z(n72) );
  GTECH_AOI21 U67 ( .A(n75), .B(a[2]), .C(n77), .Z(n71) );
  GTECH_NOT U68 ( .A(n78), .Z(n77) );
  GTECH_OAI21 U69 ( .A(a[2]), .B(n75), .C(b[2]), .Z(n78) );
  GTECH_AO21 U70 ( .A(n76), .B(a[1]), .C(n79), .Z(n75) );
  GTECH_NOT U71 ( .A(n80), .Z(n79) );
  GTECH_OAI21 U72 ( .A(a[1]), .B(n76), .C(b[1]), .Z(n80) );
  GTECH_ADD_ABC U73 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n76) );
endmodule

