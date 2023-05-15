
module carry_bypass_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172;

  GTECH_XOR2 U74 ( .A(n137), .B(n138), .Z(sum[9]) );
  GTECH_XOR2 U75 ( .A(n139), .B(n140), .Z(sum[8]) );
  GTECH_XOR2 U76 ( .A(n141), .B(n142), .Z(sum[7]) );
  GTECH_XOR2 U77 ( .A(n143), .B(n144), .Z(sum[6]) );
  GTECH_XOR2 U78 ( .A(n145), .B(n146), .Z(sum[5]) );
  GTECH_XOR2 U79 ( .A(n147), .B(n148), .Z(sum[4]) );
  GTECH_XOR3 U80 ( .A(b[3]), .B(a[3]), .C(n149), .Z(sum[3]) );
  GTECH_XOR3 U81 ( .A(b[2]), .B(a[2]), .C(n150), .Z(sum[2]) );
  GTECH_XOR3 U82 ( .A(b[1]), .B(a[1]), .C(n151), .Z(sum[1]) );
  GTECH_XOR3 U83 ( .A(b[15]), .B(a[15]), .C(n152), .Z(sum[15]) );
  GTECH_XOR3 U84 ( .A(b[14]), .B(a[14]), .C(n153), .Z(sum[14]) );
  GTECH_XOR3 U85 ( .A(b[13]), .B(a[13]), .C(n154), .Z(sum[13]) );
  GTECH_XOR3 U86 ( .A(b[12]), .B(a[12]), .C(n155), .Z(sum[12]) );
  GTECH_XOR2 U87 ( .A(n156), .B(n157), .Z(sum[11]) );
  GTECH_XOR2 U88 ( .A(n158), .B(n159), .Z(sum[10]) );
  GTECH_XOR3 U89 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_ADD_ABC U90 ( .A(a[15]), .B(n152), .C(b[15]), .COUT(cout) );
  GTECH_ADD_ABC U91 ( .A(a[14]), .B(n153), .C(b[14]), .COUT(n152) );
  GTECH_ADD_ABC U92 ( .A(a[13]), .B(n154), .C(b[13]), .COUT(n153) );
  GTECH_ADD_ABC U93 ( .A(a[12]), .B(n155), .C(b[12]), .COUT(n154) );
  GTECH_MUX2 U94 ( .A(n160), .B(n140), .S(n161), .Z(n155) );
  GTECH_AND4 U95 ( .A(n158), .B(n156), .C(n139), .D(n137), .Z(n161) );
  GTECH_XOR2 U96 ( .A(a[9]), .B(b[9]), .Z(n137) );
  GTECH_XOR2 U97 ( .A(a[8]), .B(b[8]), .Z(n139) );
  GTECH_XOR2 U98 ( .A(a[11]), .B(b[11]), .Z(n156) );
  GTECH_XOR2 U99 ( .A(a[10]), .B(b[10]), .Z(n158) );
  GTECH_AO21 U100 ( .A(n157), .B(a[11]), .C(n162), .Z(n160) );
  GTECH_OA21 U101 ( .A(a[11]), .B(n157), .C(b[11]), .Z(n162) );
  GTECH_AO21 U102 ( .A(n159), .B(a[10]), .C(n163), .Z(n157) );
  GTECH_OA21 U103 ( .A(a[10]), .B(n159), .C(b[10]), .Z(n163) );
  GTECH_AO21 U104 ( .A(n138), .B(a[9]), .C(n164), .Z(n159) );
  GTECH_OA21 U105 ( .A(a[9]), .B(n138), .C(b[9]), .Z(n164) );
  GTECH_AO21 U106 ( .A(n140), .B(a[8]), .C(n165), .Z(n138) );
  GTECH_OA21 U107 ( .A(a[8]), .B(n140), .C(b[8]), .Z(n165) );
  GTECH_MUX2 U108 ( .A(n166), .B(n148), .S(n167), .Z(n140) );
  GTECH_AND4 U109 ( .A(n147), .B(n145), .C(n143), .D(n141), .Z(n167) );
  GTECH_XOR2 U110 ( .A(a[7]), .B(b[7]), .Z(n141) );
  GTECH_XOR2 U111 ( .A(a[6]), .B(b[6]), .Z(n143) );
  GTECH_XOR2 U112 ( .A(a[5]), .B(b[5]), .Z(n145) );
  GTECH_XOR2 U113 ( .A(a[4]), .B(b[4]), .Z(n147) );
  GTECH_OA21 U114 ( .A(a[7]), .B(n142), .C(n168), .Z(n166) );
  GTECH_AO21 U115 ( .A(n142), .B(a[7]), .C(b[7]), .Z(n168) );
  GTECH_AO21 U116 ( .A(n144), .B(a[6]), .C(n169), .Z(n142) );
  GTECH_OA21 U117 ( .A(a[6]), .B(n144), .C(b[6]), .Z(n169) );
  GTECH_AO21 U118 ( .A(n146), .B(a[5]), .C(n170), .Z(n144) );
  GTECH_OA21 U119 ( .A(a[5]), .B(n146), .C(b[5]), .Z(n170) );
  GTECH_AO21 U120 ( .A(n148), .B(a[4]), .C(n171), .Z(n146) );
  GTECH_OA21 U121 ( .A(a[4]), .B(n148), .C(b[4]), .Z(n171) );
  GTECH_ADD_ABC U122 ( .A(n149), .B(a[3]), .C(b[3]), .COUT(n148) );
  GTECH_ADD_ABC U123 ( .A(a[2]), .B(n150), .C(b[2]), .COUT(n149) );
  GTECH_OA21 U124 ( .A(a[1]), .B(n151), .C(n172), .Z(n150) );
  GTECH_AO21 U125 ( .A(n151), .B(a[1]), .C(b[1]), .Z(n172) );
  GTECH_ADD_ABC U126 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n151) );
endmodule

