
module carry_bypass_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168;

  GTECH_XOR2 U70 ( .A(n133), .B(n134), .Z(sum[9]) );
  GTECH_XOR2 U71 ( .A(n135), .B(n136), .Z(sum[8]) );
  GTECH_XOR2 U72 ( .A(n137), .B(n138), .Z(sum[7]) );
  GTECH_XOR2 U73 ( .A(n139), .B(n140), .Z(sum[6]) );
  GTECH_XOR2 U74 ( .A(n141), .B(n142), .Z(sum[5]) );
  GTECH_XOR2 U75 ( .A(n143), .B(n144), .Z(sum[4]) );
  GTECH_XOR3 U76 ( .A(b[3]), .B(a[3]), .C(n145), .Z(sum[3]) );
  GTECH_XOR3 U77 ( .A(b[2]), .B(a[2]), .C(n146), .Z(sum[2]) );
  GTECH_XOR3 U78 ( .A(b[1]), .B(a[1]), .C(n147), .Z(sum[1]) );
  GTECH_XOR3 U79 ( .A(b[15]), .B(a[15]), .C(n148), .Z(sum[15]) );
  GTECH_XOR3 U80 ( .A(b[14]), .B(a[14]), .C(n149), .Z(sum[14]) );
  GTECH_XOR3 U81 ( .A(b[13]), .B(a[13]), .C(n150), .Z(sum[13]) );
  GTECH_XOR3 U82 ( .A(b[12]), .B(a[12]), .C(n151), .Z(sum[12]) );
  GTECH_XOR2 U83 ( .A(n152), .B(n153), .Z(sum[11]) );
  GTECH_XOR2 U84 ( .A(n154), .B(n155), .Z(sum[10]) );
  GTECH_XOR3 U85 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_ADD_ABC U86 ( .A(a[15]), .B(n148), .C(b[15]), .COUT(cout) );
  GTECH_ADD_ABC U87 ( .A(a[14]), .B(n149), .C(b[14]), .COUT(n148) );
  GTECH_ADD_ABC U88 ( .A(a[13]), .B(n150), .C(b[13]), .COUT(n149) );
  GTECH_ADD_ABC U89 ( .A(a[12]), .B(n151), .C(b[12]), .COUT(n150) );
  GTECH_MUX2 U90 ( .A(n136), .B(n156), .S(n157), .Z(n151) );
  GTECH_NAND4 U91 ( .A(n154), .B(n152), .C(n135), .D(n133), .Z(n157) );
  GTECH_XOR2 U92 ( .A(a[9]), .B(b[9]), .Z(n133) );
  GTECH_XOR2 U93 ( .A(a[8]), .B(b[8]), .Z(n135) );
  GTECH_XOR2 U94 ( .A(a[11]), .B(b[11]), .Z(n152) );
  GTECH_XOR2 U95 ( .A(a[10]), .B(b[10]), .Z(n154) );
  GTECH_AO21 U96 ( .A(n153), .B(a[11]), .C(n158), .Z(n156) );
  GTECH_OA21 U97 ( .A(a[11]), .B(n153), .C(b[11]), .Z(n158) );
  GTECH_AO21 U98 ( .A(n155), .B(a[10]), .C(n159), .Z(n153) );
  GTECH_OA21 U99 ( .A(a[10]), .B(n155), .C(b[10]), .Z(n159) );
  GTECH_AO21 U100 ( .A(n134), .B(a[9]), .C(n160), .Z(n155) );
  GTECH_OA21 U101 ( .A(a[9]), .B(n134), .C(b[9]), .Z(n160) );
  GTECH_AO21 U102 ( .A(n136), .B(a[8]), .C(n161), .Z(n134) );
  GTECH_OA21 U103 ( .A(a[8]), .B(n136), .C(b[8]), .Z(n161) );
  GTECH_MUX2 U104 ( .A(n162), .B(n144), .S(n163), .Z(n136) );
  GTECH_AND4 U105 ( .A(n143), .B(n141), .C(n139), .D(n137), .Z(n163) );
  GTECH_XOR2 U106 ( .A(a[7]), .B(b[7]), .Z(n137) );
  GTECH_XOR2 U107 ( .A(a[6]), .B(b[6]), .Z(n139) );
  GTECH_XOR2 U108 ( .A(a[5]), .B(b[5]), .Z(n141) );
  GTECH_XOR2 U109 ( .A(a[4]), .B(b[4]), .Z(n143) );
  GTECH_OA21 U110 ( .A(a[7]), .B(n138), .C(n164), .Z(n162) );
  GTECH_AO21 U111 ( .A(n138), .B(a[7]), .C(b[7]), .Z(n164) );
  GTECH_AO21 U112 ( .A(n140), .B(a[6]), .C(n165), .Z(n138) );
  GTECH_OA21 U113 ( .A(a[6]), .B(n140), .C(b[6]), .Z(n165) );
  GTECH_AO21 U114 ( .A(n142), .B(a[5]), .C(n166), .Z(n140) );
  GTECH_OA21 U115 ( .A(a[5]), .B(n142), .C(b[5]), .Z(n166) );
  GTECH_AO21 U116 ( .A(n144), .B(a[4]), .C(n167), .Z(n142) );
  GTECH_OA21 U117 ( .A(a[4]), .B(n144), .C(b[4]), .Z(n167) );
  GTECH_ADD_ABC U118 ( .A(n145), .B(a[3]), .C(b[3]), .COUT(n144) );
  GTECH_ADD_ABC U119 ( .A(a[2]), .B(n146), .C(b[2]), .COUT(n145) );
  GTECH_OA21 U120 ( .A(a[1]), .B(n147), .C(n168), .Z(n146) );
  GTECH_AO21 U121 ( .A(n147), .B(a[1]), .C(b[1]), .Z(n168) );
  GTECH_ADD_ABC U122 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n147) );
endmodule

