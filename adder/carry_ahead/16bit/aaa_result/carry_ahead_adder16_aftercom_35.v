
module carry_ahead_adder16 ( a, b, cin, cout, sum, Gm, Pm );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout, Gm, Pm;
  wire   n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155;

  GTECH_XOR2 U95 ( .A(n76), .B(n77), .Z(sum[9]) );
  GTECH_XOR2 U96 ( .A(n78), .B(n79), .Z(sum[8]) );
  GTECH_XOR2 U97 ( .A(n80), .B(n81), .Z(sum[7]) );
  GTECH_AO21 U98 ( .A(n82), .B(n83), .C(n84), .Z(n81) );
  GTECH_XOR2 U99 ( .A(n83), .B(n82), .Z(sum[6]) );
  GTECH_OAI21 U100 ( .A(n85), .B(n86), .C(n87), .Z(n82) );
  GTECH_NOT U101 ( .A(n88), .Z(n85) );
  GTECH_XNOR2 U102 ( .A(n86), .B(n88), .Z(sum[5]) );
  GTECH_AO21 U103 ( .A(n89), .B(n90), .C(n91), .Z(n88) );
  GTECH_NOT U104 ( .A(n92), .Z(n91) );
  GTECH_NOT U105 ( .A(n93), .Z(n89) );
  GTECH_XNOR2 U106 ( .A(n90), .B(n93), .Z(sum[4]) );
  GTECH_XOR2 U107 ( .A(n94), .B(n95), .Z(sum[3]) );
  GTECH_OA21 U108 ( .A(n96), .B(n97), .C(n98), .Z(n95) );
  GTECH_XOR2 U109 ( .A(n96), .B(n97), .Z(sum[2]) );
  GTECH_AOI22 U110 ( .A(n99), .B(n100), .C(b[1]), .D(a[1]), .Z(n96) );
  GTECH_XOR2 U111 ( .A(n100), .B(n99), .Z(sum[1]) );
  GTECH_AO21 U112 ( .A(n101), .B(cin), .C(n102), .Z(n99) );
  GTECH_NOT U113 ( .A(n103), .Z(n102) );
  GTECH_XOR2 U114 ( .A(n104), .B(n105), .Z(sum[15]) );
  GTECH_AOI2N2 U115 ( .A(b[14]), .B(a[14]), .C(n106), .D(n107), .Z(n105) );
  GTECH_XOR2 U116 ( .A(n107), .B(n106), .Z(sum[14]) );
  GTECH_AOI22 U117 ( .A(n108), .B(n109), .C(b[13]), .D(a[13]), .Z(n106) );
  GTECH_XOR2 U118 ( .A(n109), .B(n108), .Z(sum[13]) );
  GTECH_AO22 U119 ( .A(a[12]), .B(b[12]), .C(cout), .D(n110), .Z(n108) );
  GTECH_XOR2 U120 ( .A(n110), .B(cout), .Z(sum[12]) );
  GTECH_XOR2 U121 ( .A(n111), .B(n112), .Z(sum[11]) );
  GTECH_OAI21 U122 ( .A(n113), .B(n114), .C(n115), .Z(n111) );
  GTECH_XOR2 U123 ( .A(n113), .B(n114), .Z(sum[10]) );
  GTECH_NOT U124 ( .A(n116), .Z(n113) );
  GTECH_AO22 U125 ( .A(b[9]), .B(a[9]), .C(n77), .D(n76), .Z(n116) );
  GTECH_OAI2N2 U126 ( .A(n79), .B(n78), .C(a[8]), .D(b[8]), .Z(n77) );
  GTECH_XOR2 U127 ( .A(cin), .B(n101), .Z(sum[0]) );
  GTECH_OAI21 U128 ( .A(n79), .B(n117), .C(n118), .Z(cout) );
  GTECH_OA21 U129 ( .A(n93), .B(n119), .C(n120), .Z(n79) );
  GTECH_AND2 U130 ( .A(n121), .B(n122), .Z(n93) );
  GTECH_NAND4 U131 ( .A(n101), .B(n123), .C(cin), .D(n124), .Z(n121) );
  GTECH_AND3 U132 ( .A(n125), .B(n100), .C(n126), .Z(n124) );
  GTECH_AND4 U133 ( .A(n127), .B(n101), .C(n128), .D(n129), .Z(Pm) );
  GTECH_AND4 U134 ( .A(n123), .B(n126), .C(n125), .D(n100), .Z(n129) );
  GTECH_NOT U135 ( .A(n130), .Z(n100) );
  GTECH_NOT U136 ( .A(n94), .Z(n125) );
  GTECH_OA21 U137 ( .A(a[0]), .B(b[0]), .C(n103), .Z(n101) );
  GTECH_OAI21 U138 ( .A(n131), .B(n117), .C(n118), .Z(Gm) );
  GTECH_AOI2N2 U139 ( .A(b[15]), .B(a[15]), .C(n132), .D(n104), .Z(n118) );
  GTECH_AOI2N2 U140 ( .A(b[14]), .B(a[14]), .C(n133), .D(n107), .Z(n132) );
  GTECH_OA21 U141 ( .A(n134), .B(n135), .C(n136), .Z(n133) );
  GTECH_NAND3 U142 ( .A(a[12]), .B(n109), .C(b[12]), .Z(n136) );
  GTECH_NOT U143 ( .A(a[13]), .Z(n135) );
  GTECH_NOT U144 ( .A(n128), .Z(n117) );
  GTECH_AND4 U145 ( .A(n110), .B(n137), .C(n138), .D(n109), .Z(n128) );
  GTECH_XNOR2 U146 ( .A(a[13]), .B(n134), .Z(n109) );
  GTECH_NOT U147 ( .A(b[13]), .Z(n134) );
  GTECH_NOT U148 ( .A(n107), .Z(n138) );
  GTECH_XNOR2 U149 ( .A(a[14]), .B(b[14]), .Z(n107) );
  GTECH_NOT U150 ( .A(n104), .Z(n137) );
  GTECH_XNOR2 U151 ( .A(a[15]), .B(b[15]), .Z(n104) );
  GTECH_XOR2 U152 ( .A(a[12]), .B(b[12]), .Z(n110) );
  GTECH_OA21 U153 ( .A(n122), .B(n119), .C(n120), .Z(n131) );
  GTECH_OA21 U154 ( .A(n139), .B(n140), .C(n141), .Z(n120) );
  GTECH_NOT U155 ( .A(n112), .Z(n140) );
  GTECH_OA21 U156 ( .A(n142), .B(n114), .C(n115), .Z(n139) );
  GTECH_NOT U157 ( .A(n143), .Z(n114) );
  GTECH_OA21 U158 ( .A(n144), .B(n145), .C(n146), .Z(n142) );
  GTECH_NAND3 U159 ( .A(a[8]), .B(n76), .C(b[8]), .Z(n146) );
  GTECH_NOT U160 ( .A(a[9]), .Z(n145) );
  GTECH_NOT U161 ( .A(n127), .Z(n119) );
  GTECH_AND4 U162 ( .A(n112), .B(n143), .C(n147), .D(n76), .Z(n127) );
  GTECH_XNOR2 U163 ( .A(a[9]), .B(n144), .Z(n76) );
  GTECH_NOT U164 ( .A(b[9]), .Z(n144) );
  GTECH_NOT U165 ( .A(n78), .Z(n147) );
  GTECH_XNOR2 U166 ( .A(a[8]), .B(b[8]), .Z(n78) );
  GTECH_OA21 U167 ( .A(a[10]), .B(b[10]), .C(n115), .Z(n143) );
  GTECH_NAND2 U168 ( .A(a[10]), .B(b[10]), .Z(n115) );
  GTECH_OA21 U169 ( .A(a[11]), .B(b[11]), .C(n141), .Z(n112) );
  GTECH_NAND2 U170 ( .A(a[11]), .B(b[11]), .Z(n141) );
  GTECH_AOI222 U171 ( .A(n123), .B(n148), .C(b[7]), .D(a[7]), .E(n80), .F(n149), .Z(n122) );
  GTECH_AO21 U172 ( .A(n150), .B(n83), .C(n84), .Z(n149) );
  GTECH_NOT U173 ( .A(n151), .Z(n84) );
  GTECH_NOT U174 ( .A(n152), .Z(n150) );
  GTECH_OA21 U175 ( .A(n86), .B(n92), .C(n87), .Z(n152) );
  GTECH_NOT U176 ( .A(n153), .Z(n86) );
  GTECH_OAI2N2 U177 ( .A(n154), .B(n94), .C(b[3]), .D(a[3]), .Z(n148) );
  GTECH_XNOR2 U178 ( .A(a[3]), .B(b[3]), .Z(n94) );
  GTECH_OA21 U179 ( .A(n155), .B(n97), .C(n98), .Z(n154) );
  GTECH_NOT U180 ( .A(n126), .Z(n97) );
  GTECH_OA21 U181 ( .A(b[2]), .B(a[2]), .C(n98), .Z(n126) );
  GTECH_NAND2 U182 ( .A(b[2]), .B(a[2]), .Z(n98) );
  GTECH_AOI2N2 U183 ( .A(b[1]), .B(a[1]), .C(n130), .D(n103), .Z(n155) );
  GTECH_NAND2 U184 ( .A(b[0]), .B(a[0]), .Z(n103) );
  GTECH_XNOR2 U185 ( .A(a[1]), .B(b[1]), .Z(n130) );
  GTECH_AND4 U186 ( .A(n90), .B(n83), .C(n153), .D(n80), .Z(n123) );
  GTECH_XOR2 U187 ( .A(a[7]), .B(b[7]), .Z(n80) );
  GTECH_OA21 U188 ( .A(b[5]), .B(a[5]), .C(n87), .Z(n153) );
  GTECH_NAND2 U189 ( .A(b[5]), .B(a[5]), .Z(n87) );
  GTECH_OA21 U190 ( .A(b[6]), .B(a[6]), .C(n151), .Z(n83) );
  GTECH_NAND2 U191 ( .A(b[6]), .B(a[6]), .Z(n151) );
  GTECH_OA21 U192 ( .A(b[4]), .B(a[4]), .C(n92), .Z(n90) );
  GTECH_NAND2 U193 ( .A(b[4]), .B(a[4]), .Z(n92) );
endmodule

