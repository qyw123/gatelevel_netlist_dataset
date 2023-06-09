
module carry_ahead_adder16 ( a, b, cin, cout, sum, Gm, Pm );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout, Gm, Pm;
  wire   n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n152;

  GTECH_XOR2 U97 ( .A(n78), .B(n79), .Z(sum[9]) );
  GTECH_XNOR2 U98 ( .A(n80), .B(n81), .Z(sum[8]) );
  GTECH_XNOR2 U99 ( .A(n82), .B(n83), .Z(sum[7]) );
  GTECH_AOI21 U100 ( .A(n84), .B(n85), .C(n86), .Z(n83) );
  GTECH_XOR2 U101 ( .A(n85), .B(n84), .Z(sum[6]) );
  GTECH_OAI2N2 U102 ( .A(n87), .B(n88), .C(b[5]), .D(a[5]), .Z(n85) );
  GTECH_XNOR2 U103 ( .A(n89), .B(n87), .Z(sum[5]) );
  GTECH_AOI22 U104 ( .A(n90), .B(n91), .C(b[4]), .D(a[4]), .Z(n87) );
  GTECH_XOR2 U105 ( .A(n91), .B(n90), .Z(sum[4]) );
  GTECH_XOR2 U106 ( .A(n92), .B(n93), .Z(sum[3]) );
  GTECH_AOI21 U107 ( .A(n94), .B(n95), .C(n96), .Z(n93) );
  GTECH_XNOR2 U108 ( .A(n95), .B(n97), .Z(sum[2]) );
  GTECH_OAI21 U109 ( .A(n98), .B(n99), .C(n100), .Z(n95) );
  GTECH_XOR2 U110 ( .A(n98), .B(n99), .Z(sum[1]) );
  GTECH_NOT U111 ( .A(n101), .Z(n98) );
  GTECH_OAI21 U112 ( .A(n102), .B(n103), .C(n104), .Z(n101) );
  GTECH_NOT U113 ( .A(cin), .Z(n103) );
  GTECH_XOR2 U114 ( .A(n105), .B(n106), .Z(sum[15]) );
  GTECH_AOI21 U115 ( .A(n107), .B(n108), .C(n109), .Z(n106) );
  GTECH_XNOR2 U116 ( .A(n108), .B(n110), .Z(sum[14]) );
  GTECH_OAI21 U117 ( .A(n111), .B(n112), .C(n113), .Z(n108) );
  GTECH_XOR2 U118 ( .A(n111), .B(n112), .Z(sum[13]) );
  GTECH_NOT U119 ( .A(n114), .Z(n111) );
  GTECH_OAI21 U120 ( .A(n115), .B(n116), .C(n117), .Z(n114) );
  GTECH_XNOR2 U121 ( .A(n116), .B(cout), .Z(sum[12]) );
  GTECH_XOR2 U122 ( .A(n118), .B(n119), .Z(sum[11]) );
  GTECH_AOI21 U123 ( .A(n120), .B(n121), .C(n122), .Z(n119) );
  GTECH_XOR2 U124 ( .A(n121), .B(n120), .Z(sum[10]) );
  GTECH_OAI21 U125 ( .A(n78), .B(n79), .C(n123), .Z(n121) );
  GTECH_NOT U126 ( .A(n124), .Z(n78) );
  GTECH_OAI21 U127 ( .A(n125), .B(n80), .C(n126), .Z(n124) );
  GTECH_XNOR2 U128 ( .A(cin), .B(n102), .Z(sum[0]) );
  GTECH_NOT U129 ( .A(n115), .Z(cout) );
  GTECH_AOI21 U130 ( .A(n81), .B(n127), .C(n128), .Z(n115) );
  GTECH_NOT U131 ( .A(n125), .Z(n81) );
  GTECH_AOI21 U132 ( .A(n90), .B(n129), .C(n130), .Z(n125) );
  GTECH_AO21 U133 ( .A(n131), .B(cin), .C(n132), .Z(n90) );
  GTECH_AND3 U134 ( .A(n129), .B(n131), .C(n127), .Z(Pm) );
  GTECH_NOR5 U135 ( .A(n99), .B(n92), .C(n97), .D(n102), .E(n133), .Z(n131) );
  GTECH_NOT U136 ( .A(n134), .Z(n133) );
  GTECH_OAI21 U137 ( .A(b[0]), .B(a[0]), .C(n104), .Z(n102) );
  GTECH_AO21 U138 ( .A(n135), .B(n127), .C(n128), .Z(Gm) );
  GTECH_OAI2N2 U139 ( .A(n136), .B(n105), .C(b[15]), .D(a[15]), .Z(n128) );
  GTECH_AOI21 U140 ( .A(n107), .B(n137), .C(n109), .Z(n136) );
  GTECH_OAI21 U141 ( .A(n112), .B(n117), .C(n113), .Z(n137) );
  GTECH_NOT U142 ( .A(n110), .Z(n107) );
  GTECH_NOR4 U143 ( .A(n116), .B(n110), .C(n112), .D(n105), .Z(n127) );
  GTECH_XNOR2 U144 ( .A(a[15]), .B(b[15]), .Z(n105) );
  GTECH_OAI21 U145 ( .A(b[13]), .B(a[13]), .C(n113), .Z(n112) );
  GTECH_NAND2 U146 ( .A(b[13]), .B(a[13]), .Z(n113) );
  GTECH_OAI21 U147 ( .A(b[14]), .B(a[14]), .C(n138), .Z(n110) );
  GTECH_NOT U148 ( .A(n109), .Z(n138) );
  GTECH_AND2 U149 ( .A(a[14]), .B(b[14]), .Z(n109) );
  GTECH_OAI21 U150 ( .A(b[12]), .B(a[12]), .C(n117), .Z(n116) );
  GTECH_NAND2 U151 ( .A(b[12]), .B(a[12]), .Z(n117) );
  GTECH_AO21 U152 ( .A(n129), .B(n132), .C(n130), .Z(n135) );
  GTECH_OAI2N2 U153 ( .A(n139), .B(n118), .C(b[11]), .D(a[11]), .Z(n130) );
  GTECH_AOI21 U154 ( .A(n120), .B(n140), .C(n122), .Z(n139) );
  GTECH_OAI21 U155 ( .A(n79), .B(n126), .C(n123), .Z(n140) );
  GTECH_NOT U156 ( .A(n141), .Z(n120) );
  GTECH_NOT U157 ( .A(n142), .Z(n132) );
  GTECH_AOI222 U158 ( .A(a[7]), .B(b[7]), .C(n134), .D(n143), .E(n82), .F(n144), .Z(n142) );
  GTECH_OAI21 U159 ( .A(n145), .B(n146), .C(n147), .Z(n144) );
  GTECH_AOI22 U160 ( .A(b[5]), .B(a[5]), .C(a[4]), .D(n148), .Z(n145) );
  GTECH_AND_NOT U161 ( .A(b[4]), .B(n88), .Z(n148) );
  GTECH_NOT U162 ( .A(n89), .Z(n88) );
  GTECH_OAI2N2 U163 ( .A(n149), .B(n92), .C(b[3]), .D(a[3]), .Z(n143) );
  GTECH_XNOR2 U164 ( .A(a[3]), .B(b[3]), .Z(n92) );
  GTECH_AOI21 U165 ( .A(n94), .B(n150), .C(n96), .Z(n149) );
  GTECH_OAI21 U166 ( .A(n99), .B(n104), .C(n100), .Z(n150) );
  GTECH_NAND2 U167 ( .A(b[0]), .B(a[0]), .Z(n104) );
  GTECH_OAI21 U168 ( .A(b[1]), .B(a[1]), .C(n100), .Z(n99) );
  GTECH_NAND2 U169 ( .A(b[1]), .B(a[1]), .Z(n100) );
  GTECH_NOT U170 ( .A(n97), .Z(n94) );
  GTECH_OAI21 U171 ( .A(b[2]), .B(a[2]), .C(n151), .Z(n97) );
  GTECH_NOT U172 ( .A(n96), .Z(n151) );
  GTECH_AND2 U173 ( .A(a[2]), .B(b[2]), .Z(n96) );
  GTECH_AND4 U174 ( .A(n84), .B(n91), .C(n89), .D(n82), .Z(n134) );
  GTECH_XOR2 U175 ( .A(a[7]), .B(b[7]), .Z(n82) );
  GTECH_XOR2 U176 ( .A(a[5]), .B(b[5]), .Z(n89) );
  GTECH_XOR2 U177 ( .A(a[4]), .B(b[4]), .Z(n91) );
  GTECH_NOT U178 ( .A(n146), .Z(n84) );
  GTECH_OAI21 U179 ( .A(a[6]), .B(b[6]), .C(n147), .Z(n146) );
  GTECH_NOT U180 ( .A(n86), .Z(n147) );
  GTECH_AND2 U181 ( .A(b[6]), .B(a[6]), .Z(n86) );
  GTECH_NOR4 U182 ( .A(n80), .B(n141), .C(n79), .D(n118), .Z(n129) );
  GTECH_XNOR2 U183 ( .A(a[11]), .B(b[11]), .Z(n118) );
  GTECH_OAI21 U184 ( .A(b[9]), .B(a[9]), .C(n123), .Z(n79) );
  GTECH_NAND2 U185 ( .A(a[9]), .B(b[9]), .Z(n123) );
  GTECH_OAI21 U186 ( .A(b[10]), .B(a[10]), .C(n152), .Z(n141) );
  GTECH_NOT U187 ( .A(n122), .Z(n152) );
  GTECH_AND2 U188 ( .A(a[10]), .B(b[10]), .Z(n122) );
  GTECH_OAI21 U189 ( .A(b[8]), .B(a[8]), .C(n126), .Z(n80) );
  GTECH_NAND2 U190 ( .A(b[8]), .B(a[8]), .Z(n126) );
endmodule

