
module ripple_carry_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73;

  GTECH_XOR3 U55 ( .A(b[9]), .B(a[9]), .C(n38), .Z(sum[9]) );
  GTECH_XOR3 U56 ( .A(b[8]), .B(n39), .C(n40), .Z(sum[8]) );
  GTECH_XOR3 U57 ( .A(b[7]), .B(n41), .C(n42), .Z(sum[7]) );
  GTECH_XOR3 U58 ( .A(b[6]), .B(n43), .C(n44), .Z(sum[6]) );
  GTECH_XOR3 U59 ( .A(b[5]), .B(n45), .C(n46), .Z(sum[5]) );
  GTECH_XOR3 U60 ( .A(b[4]), .B(n47), .C(n48), .Z(sum[4]) );
  GTECH_XOR3 U61 ( .A(b[3]), .B(n49), .C(n50), .Z(sum[3]) );
  GTECH_XOR3 U62 ( .A(b[2]), .B(n51), .C(n52), .Z(sum[2]) );
  GTECH_XOR3 U63 ( .A(b[1]), .B(a[1]), .C(n53), .Z(sum[1]) );
  GTECH_XOR3 U64 ( .A(b[15]), .B(a[15]), .C(n54), .Z(sum[15]) );
  GTECH_XOR3 U65 ( .A(b[14]), .B(a[14]), .C(n55), .Z(sum[14]) );
  GTECH_XOR3 U66 ( .A(b[13]), .B(a[13]), .C(n56), .Z(sum[13]) );
  GTECH_XOR3 U67 ( .A(b[12]), .B(a[12]), .C(n57), .Z(sum[12]) );
  GTECH_XOR3 U68 ( .A(b[11]), .B(a[11]), .C(n58), .Z(sum[11]) );
  GTECH_OA22 U69 ( .A(a[10]), .B(n59), .C(b[10]), .D(n60), .Z(n58) );
  GTECH_AND2 U70 ( .A(a[10]), .B(n59), .Z(n60) );
  GTECH_XOR3 U71 ( .A(b[10]), .B(a[10]), .C(n59), .Z(sum[10]) );
  GTECH_XOR3 U72 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_AO22 U73 ( .A(n61), .B(b[15]), .C(n54), .D(a[15]), .Z(cout) );
  GTECH_OR2 U74 ( .A(n54), .B(a[15]), .Z(n61) );
  GTECH_ADD_ABC U75 ( .A(n55), .B(a[14]), .C(b[14]), .COUT(n54) );
  GTECH_ADD_ABC U76 ( .A(a[13]), .B(n56), .C(b[13]), .COUT(n55) );
  GTECH_ADD_ABC U77 ( .A(a[12]), .B(n57), .C(b[12]), .COUT(n56) );
  GTECH_ADD_ABC U78 ( .A(a[11]), .B(n62), .C(b[11]), .COUT(n57) );
  GTECH_OA21 U79 ( .A(a[10]), .B(n59), .C(n63), .Z(n62) );
  GTECH_AO21 U80 ( .A(a[10]), .B(n59), .C(b[10]), .Z(n63) );
  GTECH_NOT U81 ( .A(n64), .Z(n59) );
  GTECH_AOI22 U82 ( .A(n65), .B(b[9]), .C(n38), .D(a[9]), .Z(n64) );
  GTECH_OR2 U83 ( .A(n38), .B(a[9]), .Z(n65) );
  GTECH_OAI2N2 U84 ( .A(n40), .B(n39), .C(n66), .D(b[8]), .Z(n38) );
  GTECH_NAND2 U85 ( .A(n39), .B(n40), .Z(n66) );
  GTECH_NOT U86 ( .A(a[8]), .Z(n39) );
  GTECH_AOI2N2 U87 ( .A(n67), .B(b[7]), .C(n42), .D(n41), .Z(n40) );
  GTECH_NAND2 U88 ( .A(n41), .B(n42), .Z(n67) );
  GTECH_AOI2N2 U89 ( .A(n68), .B(b[6]), .C(n44), .D(n43), .Z(n42) );
  GTECH_NAND2 U90 ( .A(n43), .B(n44), .Z(n68) );
  GTECH_AOI2N2 U91 ( .A(n69), .B(b[5]), .C(n46), .D(n45), .Z(n44) );
  GTECH_NAND2 U92 ( .A(n45), .B(n46), .Z(n69) );
  GTECH_AOI2N2 U93 ( .A(n70), .B(b[4]), .C(n48), .D(n47), .Z(n46) );
  GTECH_NAND2 U94 ( .A(n47), .B(n48), .Z(n70) );
  GTECH_AOI2N2 U95 ( .A(n71), .B(b[3]), .C(n50), .D(n49), .Z(n48) );
  GTECH_NAND2 U96 ( .A(n49), .B(n50), .Z(n71) );
  GTECH_AOI2N2 U97 ( .A(n72), .B(b[2]), .C(n52), .D(n51), .Z(n50) );
  GTECH_NAND2 U98 ( .A(n51), .B(n52), .Z(n72) );
  GTECH_AOI22 U99 ( .A(n53), .B(a[1]), .C(n73), .D(b[1]), .Z(n52) );
  GTECH_OR2 U100 ( .A(n53), .B(a[1]), .Z(n73) );
  GTECH_ADD_ABC U101 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n53) );
  GTECH_NOT U102 ( .A(a[2]), .Z(n51) );
  GTECH_NOT U103 ( .A(a[3]), .Z(n49) );
  GTECH_NOT U104 ( .A(a[4]), .Z(n47) );
  GTECH_NOT U105 ( .A(a[5]), .Z(n45) );
  GTECH_NOT U106 ( .A(a[6]), .Z(n43) );
  GTECH_NOT U107 ( .A(a[7]), .Z(n41) );
endmodule

