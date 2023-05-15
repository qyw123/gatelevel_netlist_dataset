
module carry_ahead_adder8 ( sum, co, ci, a, b );
  output [7:0] sum;
  output [7:0] co;
  input [7:0] a;
  input [7:0] b;
  input ci;
  wire   n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46;

  GTECH_XOR3 U40 ( .A(b[7]), .B(a[7]), .C(co[6]), .Z(sum[7]) );
  GTECH_XNOR3 U41 ( .A(b[6]), .B(a[6]), .C(n24), .Z(sum[6]) );
  GTECH_XNOR3 U42 ( .A(b[5]), .B(a[5]), .C(n25), .Z(sum[5]) );
  GTECH_XNOR3 U43 ( .A(b[4]), .B(a[4]), .C(n26), .Z(sum[4]) );
  GTECH_XNOR3 U44 ( .A(b[3]), .B(a[3]), .C(n27), .Z(sum[3]) );
  GTECH_XNOR3 U45 ( .A(b[2]), .B(a[2]), .C(n28), .Z(sum[2]) );
  GTECH_XNOR3 U46 ( .A(b[1]), .B(a[1]), .C(n29), .Z(sum[1]) );
  GTECH_XNOR3 U47 ( .A(ci), .B(b[0]), .C(n30), .Z(sum[0]) );
  GTECH_AO21 U48 ( .A(co[6]), .B(a[7]), .C(n31), .Z(co[7]) );
  GTECH_NOT U49 ( .A(n32), .Z(n31) );
  GTECH_OAI21 U50 ( .A(a[7]), .B(co[6]), .C(b[7]), .Z(n32) );
  GTECH_OAI21 U51 ( .A(n24), .B(n33), .C(n34), .Z(co[6]) );
  GTECH_OAI21 U52 ( .A(a[6]), .B(co[5]), .C(b[6]), .Z(n34) );
  GTECH_NOT U53 ( .A(a[6]), .Z(n33) );
  GTECH_NOT U54 ( .A(co[5]), .Z(n24) );
  GTECH_OAI21 U55 ( .A(n25), .B(n35), .C(n36), .Z(co[5]) );
  GTECH_OAI21 U56 ( .A(a[5]), .B(co[4]), .C(b[5]), .Z(n36) );
  GTECH_NOT U57 ( .A(a[5]), .Z(n35) );
  GTECH_NOT U58 ( .A(co[4]), .Z(n25) );
  GTECH_OAI21 U59 ( .A(n26), .B(n37), .C(n38), .Z(co[4]) );
  GTECH_OAI21 U60 ( .A(a[4]), .B(co[3]), .C(b[4]), .Z(n38) );
  GTECH_NOT U61 ( .A(a[4]), .Z(n37) );
  GTECH_NOT U62 ( .A(co[3]), .Z(n26) );
  GTECH_OAI21 U63 ( .A(n27), .B(n39), .C(n40), .Z(co[3]) );
  GTECH_OAI21 U64 ( .A(a[3]), .B(co[2]), .C(b[3]), .Z(n40) );
  GTECH_NOT U65 ( .A(a[3]), .Z(n39) );
  GTECH_NOT U66 ( .A(co[2]), .Z(n27) );
  GTECH_OAI21 U67 ( .A(n28), .B(n41), .C(n42), .Z(co[2]) );
  GTECH_OAI21 U68 ( .A(a[2]), .B(co[1]), .C(b[2]), .Z(n42) );
  GTECH_NOT U69 ( .A(a[2]), .Z(n41) );
  GTECH_NOT U70 ( .A(co[1]), .Z(n28) );
  GTECH_OAI21 U71 ( .A(n29), .B(n43), .C(n44), .Z(co[1]) );
  GTECH_OAI21 U72 ( .A(a[1]), .B(co[0]), .C(b[1]), .Z(n44) );
  GTECH_NOT U73 ( .A(a[1]), .Z(n43) );
  GTECH_NOT U74 ( .A(co[0]), .Z(n29) );
  GTECH_OAI21 U75 ( .A(n30), .B(n45), .C(n46), .Z(co[0]) );
  GTECH_OAI21 U76 ( .A(a[0]), .B(b[0]), .C(ci), .Z(n46) );
  GTECH_NOT U77 ( .A(b[0]), .Z(n45) );
  GTECH_NOT U78 ( .A(a[0]), .Z(n30) );
endmodule

