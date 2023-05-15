
module bcd_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72;

  GTECH_XOR2 U29 ( .A(n45), .B(n46), .Z(sum[7]) );
  GTECH_AND_NOT U30 ( .A(n47), .B(n48), .Z(n46) );
  GTECH_OAI22 U31 ( .A(n48), .B(n47), .C(n49), .D(n50), .Z(sum[6]) );
  GTECH_AND_NOT U32 ( .A(n51), .B(n48), .Z(n49) );
  GTECH_XOR2 U33 ( .A(n48), .B(n51), .Z(sum[5]) );
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
  GTECH_NAND2 U43 ( .A(n50), .B(n51), .Z(n47) );
  GTECH_XNOR3 U44 ( .A(b[5]), .B(a[5]), .C(n62), .Z(n51) );
  GTECH_XNOR3 U45 ( .A(b[6]), .B(a[6]), .C(n63), .Z(n50) );
  GTECH_XOR3 U46 ( .A(b[7]), .B(a[7]), .C(n60), .Z(n45) );
  GTECH_OR2 U47 ( .A(a[7]), .B(n60), .Z(n61) );
  GTECH_AO22 U48 ( .A(n64), .B(b[6]), .C(n63), .D(a[6]), .Z(n60) );
  GTECH_OR2 U49 ( .A(a[6]), .B(n63), .Z(n64) );
  GTECH_AO22 U50 ( .A(n65), .B(b[5]), .C(n62), .D(a[5]), .Z(n63) );
  GTECH_OR2 U51 ( .A(a[5]), .B(n62), .Z(n65) );
  GTECH_AO22 U52 ( .A(n66), .B(b[4]), .C(n59), .D(a[4]), .Z(n62) );
  GTECH_OR2 U53 ( .A(n59), .B(a[4]), .Z(n66) );
  GTECH_NOT U54 ( .A(n52), .Z(n59) );
  GTECH_AOI222 U55 ( .A(a[3]), .B(n67), .C(b[3]), .D(n68), .E(n53), .F(n55), 
        .Z(n52) );
  GTECH_NAND2 U56 ( .A(n57), .B(n58), .Z(n55) );
  GTECH_XNOR3 U57 ( .A(b[1]), .B(a[1]), .C(n69), .Z(n58) );
  GTECH_XNOR3 U58 ( .A(b[2]), .B(a[2]), .C(n70), .Z(n57) );
  GTECH_XOR3 U59 ( .A(b[3]), .B(a[3]), .C(n67), .Z(n53) );
  GTECH_OR2 U60 ( .A(a[3]), .B(n67), .Z(n68) );
  GTECH_AO22 U61 ( .A(n71), .B(b[2]), .C(n70), .D(a[2]), .Z(n67) );
  GTECH_OR2 U62 ( .A(a[2]), .B(n70), .Z(n71) );
  GTECH_AO22 U63 ( .A(n72), .B(b[1]), .C(n69), .D(a[1]), .Z(n70) );
  GTECH_OR2 U64 ( .A(n69), .B(a[1]), .Z(n72) );
  GTECH_ADD_ABC U65 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n69) );
endmodule

