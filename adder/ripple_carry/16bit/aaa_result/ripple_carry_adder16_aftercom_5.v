
module ripple_carry_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62;

  GTECH_XOR3 U35 ( .A(b[9]), .B(a[9]), .C(n18), .Z(sum[9]) );
  GTECH_XOR3 U36 ( .A(b[8]), .B(a[8]), .C(n19), .Z(sum[8]) );
  GTECH_XOR3 U37 ( .A(b[7]), .B(a[7]), .C(n20), .Z(sum[7]) );
  GTECH_XOR3 U38 ( .A(b[6]), .B(a[6]), .C(n21), .Z(sum[6]) );
  GTECH_XOR3 U39 ( .A(b[5]), .B(a[5]), .C(n22), .Z(sum[5]) );
  GTECH_XOR3 U40 ( .A(b[4]), .B(a[4]), .C(n23), .Z(sum[4]) );
  GTECH_XOR3 U41 ( .A(b[3]), .B(a[3]), .C(n24), .Z(sum[3]) );
  GTECH_XOR3 U42 ( .A(b[2]), .B(a[2]), .C(n25), .Z(sum[2]) );
  GTECH_XOR3 U43 ( .A(b[1]), .B(a[1]), .C(n26), .Z(sum[1]) );
  GTECH_XOR3 U44 ( .A(b[15]), .B(n27), .C(n28), .Z(sum[15]) );
  GTECH_XOR3 U45 ( .A(b[14]), .B(a[14]), .C(n29), .Z(sum[14]) );
  GTECH_XOR3 U46 ( .A(b[13]), .B(a[13]), .C(n30), .Z(sum[13]) );
  GTECH_XOR3 U47 ( .A(b[12]), .B(a[12]), .C(n31), .Z(sum[12]) );
  GTECH_XOR3 U48 ( .A(b[11]), .B(a[11]), .C(n32), .Z(sum[11]) );
  GTECH_XOR3 U49 ( .A(b[10]), .B(a[10]), .C(n33), .Z(sum[10]) );
  GTECH_XOR3 U50 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_OAI21 U51 ( .A(n28), .B(n27), .C(n34), .Z(cout) );
  GTECH_OAI21 U52 ( .A(a[15]), .B(n35), .C(b[15]), .Z(n34) );
  GTECH_NOT U53 ( .A(n28), .Z(n35) );
  GTECH_NOT U54 ( .A(a[15]), .Z(n27) );
  GTECH_AOI21 U55 ( .A(n29), .B(a[14]), .C(n36), .Z(n28) );
  GTECH_OA21 U56 ( .A(a[14]), .B(n29), .C(b[14]), .Z(n36) );
  GTECH_NOT U57 ( .A(n37), .Z(n29) );
  GTECH_AOI21 U58 ( .A(n30), .B(a[13]), .C(n38), .Z(n37) );
  GTECH_OA21 U59 ( .A(a[13]), .B(n30), .C(b[13]), .Z(n38) );
  GTECH_NOT U60 ( .A(n39), .Z(n30) );
  GTECH_AOI21 U61 ( .A(n31), .B(a[12]), .C(n40), .Z(n39) );
  GTECH_OA21 U62 ( .A(a[12]), .B(n31), .C(b[12]), .Z(n40) );
  GTECH_NOT U63 ( .A(n41), .Z(n31) );
  GTECH_AOI21 U64 ( .A(n32), .B(a[11]), .C(n42), .Z(n41) );
  GTECH_OA21 U65 ( .A(a[11]), .B(n32), .C(b[11]), .Z(n42) );
  GTECH_NOT U66 ( .A(n43), .Z(n32) );
  GTECH_AOI21 U67 ( .A(n33), .B(a[10]), .C(n44), .Z(n43) );
  GTECH_OA21 U68 ( .A(a[10]), .B(n33), .C(b[10]), .Z(n44) );
  GTECH_NOT U69 ( .A(n45), .Z(n33) );
  GTECH_AOI21 U70 ( .A(n18), .B(a[9]), .C(n46), .Z(n45) );
  GTECH_OA21 U71 ( .A(a[9]), .B(n18), .C(b[9]), .Z(n46) );
  GTECH_NOT U72 ( .A(n47), .Z(n18) );
  GTECH_AOI21 U73 ( .A(n19), .B(a[8]), .C(n48), .Z(n47) );
  GTECH_OA21 U74 ( .A(a[8]), .B(n19), .C(b[8]), .Z(n48) );
  GTECH_NOT U75 ( .A(n49), .Z(n19) );
  GTECH_AOI21 U76 ( .A(n20), .B(a[7]), .C(n50), .Z(n49) );
  GTECH_OA21 U77 ( .A(a[7]), .B(n20), .C(b[7]), .Z(n50) );
  GTECH_NOT U78 ( .A(n51), .Z(n20) );
  GTECH_AOI21 U79 ( .A(n21), .B(a[6]), .C(n52), .Z(n51) );
  GTECH_OA21 U80 ( .A(a[6]), .B(n21), .C(b[6]), .Z(n52) );
  GTECH_NOT U81 ( .A(n53), .Z(n21) );
  GTECH_AOI21 U82 ( .A(n22), .B(a[5]), .C(n54), .Z(n53) );
  GTECH_OA21 U83 ( .A(a[5]), .B(n22), .C(b[5]), .Z(n54) );
  GTECH_NOT U84 ( .A(n55), .Z(n22) );
  GTECH_AOI21 U85 ( .A(n23), .B(a[4]), .C(n56), .Z(n55) );
  GTECH_OA21 U86 ( .A(a[4]), .B(n23), .C(b[4]), .Z(n56) );
  GTECH_NOT U87 ( .A(n57), .Z(n23) );
  GTECH_AOI21 U88 ( .A(n24), .B(a[3]), .C(n58), .Z(n57) );
  GTECH_OA21 U89 ( .A(a[3]), .B(n24), .C(b[3]), .Z(n58) );
  GTECH_NOT U90 ( .A(n59), .Z(n24) );
  GTECH_AOI21 U91 ( .A(n25), .B(a[2]), .C(n60), .Z(n59) );
  GTECH_OA21 U92 ( .A(a[2]), .B(n25), .C(b[2]), .Z(n60) );
  GTECH_NOT U93 ( .A(n61), .Z(n25) );
  GTECH_AOI21 U94 ( .A(n26), .B(a[1]), .C(n62), .Z(n61) );
  GTECH_OA21 U95 ( .A(a[1]), .B(n26), .C(b[1]), .Z(n62) );
  GTECH_ADD_ABC U96 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n26) );
endmodule

