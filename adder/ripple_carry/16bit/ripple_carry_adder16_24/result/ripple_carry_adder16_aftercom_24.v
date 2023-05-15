
module ripple_carry_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67;

  GTECH_XOR3 U40 ( .A(b[9]), .B(a[9]), .C(n23), .Z(sum[9]) );
  GTECH_XOR3 U41 ( .A(b[8]), .B(a[8]), .C(n24), .Z(sum[8]) );
  GTECH_XOR3 U42 ( .A(b[7]), .B(n25), .C(n26), .Z(sum[7]) );
  GTECH_XOR3 U43 ( .A(b[6]), .B(a[6]), .C(n27), .Z(sum[6]) );
  GTECH_XOR3 U44 ( .A(b[5]), .B(a[5]), .C(n28), .Z(sum[5]) );
  GTECH_XOR3 U45 ( .A(b[4]), .B(a[4]), .C(n29), .Z(sum[4]) );
  GTECH_XOR3 U46 ( .A(b[3]), .B(a[3]), .C(n30), .Z(sum[3]) );
  GTECH_XOR3 U47 ( .A(b[2]), .B(a[2]), .C(n31), .Z(sum[2]) );
  GTECH_XOR3 U48 ( .A(b[1]), .B(a[1]), .C(n32), .Z(sum[1]) );
  GTECH_XOR3 U49 ( .A(b[15]), .B(a[15]), .C(n33), .Z(sum[15]) );
  GTECH_XOR3 U50 ( .A(b[14]), .B(a[14]), .C(n34), .Z(sum[14]) );
  GTECH_XOR3 U51 ( .A(b[13]), .B(n35), .C(n36), .Z(sum[13]) );
  GTECH_XOR3 U52 ( .A(b[12]), .B(a[12]), .C(n37), .Z(sum[12]) );
  GTECH_XOR3 U53 ( .A(b[11]), .B(a[11]), .C(n38), .Z(sum[11]) );
  GTECH_XOR3 U54 ( .A(b[10]), .B(a[10]), .C(n39), .Z(sum[10]) );
  GTECH_XOR3 U55 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_OAI21 U56 ( .A(n40), .B(n41), .C(n42), .Z(cout) );
  GTECH_OAI21 U57 ( .A(a[15]), .B(n33), .C(b[15]), .Z(n42) );
  GTECH_NOT U58 ( .A(n40), .Z(n33) );
  GTECH_NOT U59 ( .A(a[15]), .Z(n41) );
  GTECH_AOI21 U60 ( .A(n34), .B(a[14]), .C(n43), .Z(n40) );
  GTECH_OA21 U61 ( .A(a[14]), .B(n34), .C(b[14]), .Z(n43) );
  GTECH_OAI21 U62 ( .A(n36), .B(n35), .C(n44), .Z(n34) );
  GTECH_OAI21 U63 ( .A(a[13]), .B(n45), .C(b[13]), .Z(n44) );
  GTECH_NOT U64 ( .A(n36), .Z(n45) );
  GTECH_NOT U65 ( .A(a[13]), .Z(n35) );
  GTECH_AOI21 U66 ( .A(n37), .B(a[12]), .C(n46), .Z(n36) );
  GTECH_OA21 U67 ( .A(a[12]), .B(n37), .C(b[12]), .Z(n46) );
  GTECH_NOT U68 ( .A(n47), .Z(n37) );
  GTECH_AOI21 U69 ( .A(n38), .B(a[11]), .C(n48), .Z(n47) );
  GTECH_OA21 U70 ( .A(a[11]), .B(n38), .C(b[11]), .Z(n48) );
  GTECH_NOT U71 ( .A(n49), .Z(n38) );
  GTECH_AOI21 U72 ( .A(n39), .B(a[10]), .C(n50), .Z(n49) );
  GTECH_OA21 U73 ( .A(a[10]), .B(n39), .C(b[10]), .Z(n50) );
  GTECH_NOT U74 ( .A(n51), .Z(n39) );
  GTECH_AOI21 U75 ( .A(n23), .B(a[9]), .C(n52), .Z(n51) );
  GTECH_OA21 U76 ( .A(a[9]), .B(n23), .C(b[9]), .Z(n52) );
  GTECH_NOT U77 ( .A(n53), .Z(n23) );
  GTECH_AOI21 U78 ( .A(n24), .B(a[8]), .C(n54), .Z(n53) );
  GTECH_OA21 U79 ( .A(a[8]), .B(n24), .C(b[8]), .Z(n54) );
  GTECH_OAI21 U80 ( .A(n26), .B(n25), .C(n55), .Z(n24) );
  GTECH_OAI21 U81 ( .A(a[7]), .B(n56), .C(b[7]), .Z(n55) );
  GTECH_NOT U82 ( .A(n26), .Z(n56) );
  GTECH_NOT U83 ( .A(a[7]), .Z(n25) );
  GTECH_AOI21 U84 ( .A(n27), .B(a[6]), .C(n57), .Z(n26) );
  GTECH_OA21 U85 ( .A(a[6]), .B(n27), .C(b[6]), .Z(n57) );
  GTECH_NOT U86 ( .A(n58), .Z(n27) );
  GTECH_AOI21 U87 ( .A(n28), .B(a[5]), .C(n59), .Z(n58) );
  GTECH_OA21 U88 ( .A(a[5]), .B(n28), .C(b[5]), .Z(n59) );
  GTECH_NOT U89 ( .A(n60), .Z(n28) );
  GTECH_AOI21 U90 ( .A(n29), .B(a[4]), .C(n61), .Z(n60) );
  GTECH_OA21 U91 ( .A(a[4]), .B(n29), .C(b[4]), .Z(n61) );
  GTECH_NOT U92 ( .A(n62), .Z(n29) );
  GTECH_AOI21 U93 ( .A(n30), .B(a[3]), .C(n63), .Z(n62) );
  GTECH_OA21 U94 ( .A(a[3]), .B(n30), .C(b[3]), .Z(n63) );
  GTECH_NOT U95 ( .A(n64), .Z(n30) );
  GTECH_AOI21 U96 ( .A(n31), .B(a[2]), .C(n65), .Z(n64) );
  GTECH_OA21 U97 ( .A(a[2]), .B(n31), .C(b[2]), .Z(n65) );
  GTECH_NOT U98 ( .A(n66), .Z(n31) );
  GTECH_AOI21 U99 ( .A(n32), .B(a[1]), .C(n67), .Z(n66) );
  GTECH_OA21 U100 ( .A(a[1]), .B(n32), .C(b[1]), .Z(n67) );
  GTECH_ADD_ABC U101 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n32) );
endmodule

