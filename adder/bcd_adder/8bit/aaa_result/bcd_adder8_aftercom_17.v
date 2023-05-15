
module bcd_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80;

  GTECH_XOR2 U29 ( .A(n45), .B(n46), .Z(sum[7]) );
  GTECH_AND_NOT U30 ( .A(n47), .B(n48), .Z(n46) );
  GTECH_AO21 U31 ( .A(cout), .B(n49), .C(n50), .Z(sum[6]) );
  GTECH_AOI21 U32 ( .A(cout), .B(n51), .C(n52), .Z(n50) );
  GTECH_XOR2 U33 ( .A(n48), .B(n51), .Z(sum[5]) );
  GTECH_XOR3 U34 ( .A(b[4]), .B(n53), .C(n54), .Z(sum[4]) );
  GTECH_XOR2 U35 ( .A(n55), .B(n56), .Z(sum[3]) );
  GTECH_AND_NOT U36 ( .A(n57), .B(n58), .Z(n56) );
  GTECH_AO21 U37 ( .A(n57), .B(n58), .C(n59), .Z(sum[2]) );
  GTECH_AOI21 U38 ( .A(n57), .B(n60), .C(n61), .Z(n59) );
  GTECH_XOR2 U39 ( .A(n54), .B(n60), .Z(sum[1]) );
  GTECH_XOR3 U40 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_NOT U41 ( .A(n48), .Z(cout) );
  GTECH_AOI222 U42 ( .A(a[7]), .B(n62), .C(b[7]), .D(n63), .E(n45), .F(n47), 
        .Z(n48) );
  GTECH_NOT U43 ( .A(n49), .Z(n47) );
  GTECH_AND2 U44 ( .A(n51), .B(n52), .Z(n49) );
  GTECH_XNOR3 U45 ( .A(b[6]), .B(a[6]), .C(n64), .Z(n52) );
  GTECH_XNOR3 U46 ( .A(b[5]), .B(a[5]), .C(n65), .Z(n51) );
  GTECH_XOR3 U47 ( .A(b[7]), .B(a[7]), .C(n62), .Z(n45) );
  GTECH_OR2 U48 ( .A(a[7]), .B(n62), .Z(n63) );
  GTECH_AO21 U49 ( .A(n64), .B(a[6]), .C(n66), .Z(n62) );
  GTECH_NOT U50 ( .A(n67), .Z(n66) );
  GTECH_OAI21 U51 ( .A(a[6]), .B(n64), .C(b[6]), .Z(n67) );
  GTECH_NOT U52 ( .A(n68), .Z(n64) );
  GTECH_AOI21 U53 ( .A(n65), .B(a[5]), .C(n69), .Z(n68) );
  GTECH_NOT U54 ( .A(n70), .Z(n69) );
  GTECH_OAI21 U55 ( .A(a[5]), .B(n65), .C(b[5]), .Z(n70) );
  GTECH_OAI21 U56 ( .A(n54), .B(n53), .C(n71), .Z(n65) );
  GTECH_OAI21 U57 ( .A(a[4]), .B(n57), .C(b[4]), .Z(n71) );
  GTECH_NOT U58 ( .A(n54), .Z(n57) );
  GTECH_NOT U59 ( .A(a[4]), .Z(n53) );
  GTECH_AOI222 U60 ( .A(a[3]), .B(n72), .C(b[3]), .D(n73), .E(n55), .F(n74), 
        .Z(n54) );
  GTECH_NOT U61 ( .A(n58), .Z(n74) );
  GTECH_AND2 U62 ( .A(n60), .B(n61), .Z(n58) );
  GTECH_XNOR3 U63 ( .A(b[2]), .B(a[2]), .C(n75), .Z(n61) );
  GTECH_XNOR3 U64 ( .A(b[1]), .B(a[1]), .C(n76), .Z(n60) );
  GTECH_XOR3 U65 ( .A(b[3]), .B(a[3]), .C(n72), .Z(n55) );
  GTECH_OR2 U66 ( .A(n72), .B(a[3]), .Z(n73) );
  GTECH_AO21 U67 ( .A(n75), .B(a[2]), .C(n77), .Z(n72) );
  GTECH_NOT U68 ( .A(n78), .Z(n77) );
  GTECH_OAI21 U69 ( .A(a[2]), .B(n75), .C(b[2]), .Z(n78) );
  GTECH_AO21 U70 ( .A(n76), .B(a[1]), .C(n79), .Z(n75) );
  GTECH_NOT U71 ( .A(n80), .Z(n79) );
  GTECH_OAI21 U72 ( .A(a[1]), .B(n76), .C(b[1]), .Z(n80) );
  GTECH_ADD_ABC U73 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n76) );
endmodule

