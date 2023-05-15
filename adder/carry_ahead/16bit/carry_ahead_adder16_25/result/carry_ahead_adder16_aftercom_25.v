
module carry_ahead_adder16 ( a, b, cin, cout, sum, Gm, Pm );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout, Gm, Pm;
  wire   n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158;

  GTECH_XOR2 U101 ( .A(n82), .B(n83), .Z(sum[9]) );
  GTECH_XOR2 U102 ( .A(n84), .B(n85), .Z(sum[8]) );
  GTECH_XNOR2 U103 ( .A(n86), .B(n87), .Z(sum[7]) );
  GTECH_AOI21 U104 ( .A(n88), .B(n89), .C(n90), .Z(n87) );
  GTECH_XOR2 U105 ( .A(n89), .B(n88), .Z(sum[6]) );
  GTECH_OAI2N2 U106 ( .A(n91), .B(n92), .C(b[5]), .D(a[5]), .Z(n89) );
  GTECH_XOR2 U107 ( .A(n92), .B(n91), .Z(sum[5]) );
  GTECH_AOI22 U108 ( .A(b[4]), .B(a[4]), .C(n93), .D(n94), .Z(n91) );
  GTECH_XOR2 U109 ( .A(n94), .B(n93), .Z(sum[4]) );
  GTECH_XOR2 U110 ( .A(n95), .B(n96), .Z(sum[3]) );
  GTECH_AOI21 U111 ( .A(n97), .B(n98), .C(n99), .Z(n96) );
  GTECH_XOR2 U112 ( .A(n98), .B(n97), .Z(sum[2]) );
  GTECH_OAI2N2 U113 ( .A(n100), .B(n101), .C(b[1]), .D(a[1]), .Z(n98) );
  GTECH_XOR2 U114 ( .A(n101), .B(n100), .Z(sum[1]) );
  GTECH_AOI22 U115 ( .A(n102), .B(cin), .C(a[0]), .D(b[0]), .Z(n100) );
  GTECH_XNOR2 U116 ( .A(n103), .B(n104), .Z(sum[15]) );
  GTECH_AOI21 U117 ( .A(n105), .B(n106), .C(n107), .Z(n104) );
  GTECH_XOR2 U118 ( .A(n106), .B(n105), .Z(sum[14]) );
  GTECH_AO21 U119 ( .A(n108), .B(n109), .C(n110), .Z(n106) );
  GTECH_XOR2 U120 ( .A(n109), .B(n108), .Z(sum[13]) );
  GTECH_AO21 U121 ( .A(n111), .B(cout), .C(n112), .Z(n109) );
  GTECH_XOR2 U122 ( .A(cout), .B(n111), .Z(sum[12]) );
  GTECH_XNOR2 U123 ( .A(n113), .B(n114), .Z(sum[11]) );
  GTECH_AOI21 U124 ( .A(n115), .B(n116), .C(n117), .Z(n114) );
  GTECH_XOR2 U125 ( .A(n116), .B(n115), .Z(sum[10]) );
  GTECH_AO21 U126 ( .A(n83), .B(n82), .C(n118), .Z(n116) );
  GTECH_AO21 U127 ( .A(n85), .B(n84), .C(n119), .Z(n82) );
  GTECH_XOR2 U128 ( .A(cin), .B(n102), .Z(sum[0]) );
  GTECH_AO21 U129 ( .A(n120), .B(n84), .C(n121), .Z(cout) );
  GTECH_AO21 U130 ( .A(n122), .B(n93), .C(n123), .Z(n84) );
  GTECH_AO21 U131 ( .A(cin), .B(n124), .C(n125), .Z(n93) );
  GTECH_AND3 U132 ( .A(n122), .B(n124), .C(n120), .Z(Pm) );
  GTECH_AND5 U133 ( .A(n126), .B(n127), .C(n102), .D(n128), .E(n97), .Z(n124)
         );
  GTECH_XOR2 U134 ( .A(a[0]), .B(b[0]), .Z(n102) );
  GTECH_NOT U135 ( .A(n95), .Z(n126) );
  GTECH_AO21 U136 ( .A(n120), .B(n129), .C(n121), .Z(Gm) );
  GTECH_AO22 U137 ( .A(n130), .B(n103), .C(b[15]), .D(a[15]), .Z(n121) );
  GTECH_AO21 U138 ( .A(n105), .B(n131), .C(n107), .Z(n130) );
  GTECH_AO21 U139 ( .A(n112), .B(n108), .C(n110), .Z(n131) );
  GTECH_AO21 U140 ( .A(n122), .B(n125), .C(n123), .Z(n129) );
  GTECH_AO22 U141 ( .A(n132), .B(n113), .C(b[11]), .D(a[11]), .Z(n123) );
  GTECH_AO21 U142 ( .A(n115), .B(n133), .C(n117), .Z(n132) );
  GTECH_AO21 U143 ( .A(n119), .B(n83), .C(n118), .Z(n133) );
  GTECH_NOT U144 ( .A(n134), .Z(n125) );
  GTECH_AOI222 U145 ( .A(a[7]), .B(b[7]), .C(n128), .D(n135), .E(n86), .F(n136), .Z(n134) );
  GTECH_AO21 U146 ( .A(n88), .B(n137), .C(n90), .Z(n136) );
  GTECH_AO22 U147 ( .A(a[4]), .B(n138), .C(b[5]), .D(a[5]), .Z(n137) );
  GTECH_AND_NOT U148 ( .A(b[4]), .B(n92), .Z(n138) );
  GTECH_OAI2N2 U149 ( .A(n139), .B(n95), .C(b[3]), .D(a[3]), .Z(n135) );
  GTECH_XNOR2 U150 ( .A(a[3]), .B(b[3]), .Z(n95) );
  GTECH_AOI21 U151 ( .A(n97), .B(n140), .C(n99), .Z(n139) );
  GTECH_AO22 U152 ( .A(b[0]), .B(n141), .C(b[1]), .D(a[1]), .Z(n140) );
  GTECH_AND2 U153 ( .A(a[0]), .B(n127), .Z(n141) );
  GTECH_NOT U154 ( .A(n101), .Z(n127) );
  GTECH_XNOR2 U155 ( .A(a[1]), .B(b[1]), .Z(n101) );
  GTECH_AOI21 U156 ( .A(n142), .B(n143), .C(n99), .Z(n97) );
  GTECH_AND2 U157 ( .A(a[2]), .B(b[2]), .Z(n99) );
  GTECH_NOT U158 ( .A(a[2]), .Z(n143) );
  GTECH_NOT U159 ( .A(b[2]), .Z(n142) );
  GTECH_AND4 U160 ( .A(n88), .B(n94), .C(n144), .D(n86), .Z(n128) );
  GTECH_XOR2 U161 ( .A(a[7]), .B(b[7]), .Z(n86) );
  GTECH_NOT U162 ( .A(n92), .Z(n144) );
  GTECH_XNOR2 U163 ( .A(a[5]), .B(b[5]), .Z(n92) );
  GTECH_XOR2 U164 ( .A(a[4]), .B(b[4]), .Z(n94) );
  GTECH_AOI21 U165 ( .A(n145), .B(n146), .C(n90), .Z(n88) );
  GTECH_AND2 U166 ( .A(a[6]), .B(b[6]), .Z(n90) );
  GTECH_NOT U167 ( .A(a[6]), .Z(n146) );
  GTECH_NOT U168 ( .A(b[6]), .Z(n145) );
  GTECH_AND4 U169 ( .A(n85), .B(n115), .C(n83), .D(n113), .Z(n122) );
  GTECH_XOR2 U170 ( .A(a[11]), .B(b[11]), .Z(n113) );
  GTECH_AOI21 U171 ( .A(n147), .B(n148), .C(n118), .Z(n83) );
  GTECH_AND2 U172 ( .A(a[9]), .B(b[9]), .Z(n118) );
  GTECH_NOT U173 ( .A(a[9]), .Z(n148) );
  GTECH_NOT U174 ( .A(b[9]), .Z(n147) );
  GTECH_AOI21 U175 ( .A(n149), .B(n150), .C(n117), .Z(n115) );
  GTECH_AND2 U176 ( .A(a[10]), .B(b[10]), .Z(n117) );
  GTECH_NOT U177 ( .A(a[10]), .Z(n150) );
  GTECH_NOT U178 ( .A(b[10]), .Z(n149) );
  GTECH_AOI21 U179 ( .A(n151), .B(n152), .C(n119), .Z(n85) );
  GTECH_AND2 U180 ( .A(a[8]), .B(b[8]), .Z(n119) );
  GTECH_NOT U181 ( .A(a[8]), .Z(n152) );
  GTECH_NOT U182 ( .A(b[8]), .Z(n151) );
  GTECH_AND4 U183 ( .A(n111), .B(n105), .C(n108), .D(n103), .Z(n120) );
  GTECH_XOR2 U184 ( .A(a[15]), .B(b[15]), .Z(n103) );
  GTECH_AOI21 U185 ( .A(n153), .B(n154), .C(n110), .Z(n108) );
  GTECH_AND2 U186 ( .A(a[13]), .B(b[13]), .Z(n110) );
  GTECH_NOT U187 ( .A(a[13]), .Z(n154) );
  GTECH_NOT U188 ( .A(b[13]), .Z(n153) );
  GTECH_AOI21 U189 ( .A(n155), .B(n156), .C(n107), .Z(n105) );
  GTECH_AND2 U190 ( .A(a[14]), .B(b[14]), .Z(n107) );
  GTECH_NOT U191 ( .A(a[14]), .Z(n156) );
  GTECH_NOT U192 ( .A(b[14]), .Z(n155) );
  GTECH_AOI21 U193 ( .A(n157), .B(n158), .C(n112), .Z(n111) );
  GTECH_AND2 U194 ( .A(a[12]), .B(b[12]), .Z(n112) );
  GTECH_NOT U195 ( .A(a[12]), .Z(n158) );
  GTECH_NOT U196 ( .A(b[12]), .Z(n157) );
endmodule

