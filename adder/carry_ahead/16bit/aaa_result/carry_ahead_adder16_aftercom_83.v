
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
         n147, n148, n149, n150, n151, n152;

  GTECH_XOR2 U95 ( .A(n76), .B(n77), .Z(sum[9]) );
  GTECH_XNOR2 U96 ( .A(n78), .B(n79), .Z(sum[8]) );
  GTECH_XNOR2 U97 ( .A(n80), .B(n81), .Z(sum[7]) );
  GTECH_OAI21 U98 ( .A(n82), .B(n83), .C(n84), .Z(n80) );
  GTECH_XOR2 U99 ( .A(n83), .B(n82), .Z(sum[6]) );
  GTECH_OA21 U100 ( .A(n85), .B(n86), .C(n87), .Z(n82) );
  GTECH_XOR2 U101 ( .A(n86), .B(n85), .Z(sum[5]) );
  GTECH_OA21 U102 ( .A(n88), .B(n89), .C(n90), .Z(n85) );
  GTECH_XOR2 U103 ( .A(n89), .B(n88), .Z(sum[4]) );
  GTECH_XNOR2 U104 ( .A(n91), .B(n92), .Z(sum[3]) );
  GTECH_OAI21 U105 ( .A(n93), .B(n94), .C(n95), .Z(n91) );
  GTECH_XOR2 U106 ( .A(n94), .B(n93), .Z(sum[2]) );
  GTECH_OA21 U107 ( .A(n96), .B(n97), .C(n98), .Z(n93) );
  GTECH_XNOR2 U108 ( .A(n99), .B(n96), .Z(sum[1]) );
  GTECH_AND_NOT U109 ( .A(n100), .B(n101), .Z(n96) );
  GTECH_XNOR2 U110 ( .A(n102), .B(n103), .Z(sum[15]) );
  GTECH_OAI21 U111 ( .A(n104), .B(n105), .C(n106), .Z(n102) );
  GTECH_XOR2 U112 ( .A(n105), .B(n104), .Z(sum[14]) );
  GTECH_OA21 U113 ( .A(n107), .B(n108), .C(n109), .Z(n104) );
  GTECH_XOR2 U114 ( .A(n108), .B(n107), .Z(sum[13]) );
  GTECH_OA21 U115 ( .A(n110), .B(n111), .C(n112), .Z(n107) );
  GTECH_NOT U116 ( .A(cout), .Z(n110) );
  GTECH_XNOR2 U117 ( .A(n111), .B(cout), .Z(sum[12]) );
  GTECH_XNOR2 U118 ( .A(n113), .B(n114), .Z(sum[11]) );
  GTECH_OAI21 U119 ( .A(n115), .B(n116), .C(n117), .Z(n113) );
  GTECH_XOR2 U120 ( .A(n116), .B(n115), .Z(sum[10]) );
  GTECH_AOI21 U121 ( .A(n77), .B(n76), .C(n118), .Z(n115) );
  GTECH_OAI21 U122 ( .A(n79), .B(n119), .C(n120), .Z(n77) );
  GTECH_NOT U123 ( .A(n78), .Z(n119) );
  GTECH_NOT U124 ( .A(n121), .Z(n79) );
  GTECH_XOR2 U125 ( .A(cin), .B(n122), .Z(sum[0]) );
  GTECH_AO21 U126 ( .A(n121), .B(n123), .C(n124), .Z(cout) );
  GTECH_OAI21 U127 ( .A(n88), .B(n125), .C(n126), .Z(n121) );
  GTECH_AND2 U128 ( .A(n127), .B(n128), .Z(n88) );
  GTECH_NAND5 U129 ( .A(n129), .B(n99), .C(n130), .D(n101), .E(n131), .Z(n127)
         );
  GTECH_NOT U130 ( .A(n132), .Z(n131) );
  GTECH_AND2 U131 ( .A(cin), .B(n122), .Z(n101) );
  GTECH_NOT U132 ( .A(n92), .Z(n130) );
  GTECH_NOT U133 ( .A(n97), .Z(n99) );
  GTECH_AND4 U134 ( .A(n133), .B(n122), .C(n123), .D(n134), .Z(Pm) );
  GTECH_NOR4 U135 ( .A(n132), .B(n92), .C(n94), .D(n97), .Z(n134) );
  GTECH_OA21 U136 ( .A(b[0]), .B(a[0]), .C(n100), .Z(n122) );
  GTECH_AO21 U137 ( .A(n135), .B(n123), .C(n124), .Z(Gm) );
  GTECH_OAI21 U138 ( .A(n136), .B(n103), .C(n137), .Z(n124) );
  GTECH_OA21 U139 ( .A(n138), .B(n105), .C(n106), .Z(n136) );
  GTECH_OA21 U140 ( .A(n112), .B(n108), .C(n109), .Z(n138) );
  GTECH_NOR4 U141 ( .A(n111), .B(n103), .C(n105), .D(n108), .Z(n123) );
  GTECH_OAI21 U142 ( .A(b[13]), .B(a[13]), .C(n109), .Z(n108) );
  GTECH_NAND2 U143 ( .A(b[13]), .B(a[13]), .Z(n109) );
  GTECH_OAI21 U144 ( .A(b[14]), .B(a[14]), .C(n106), .Z(n105) );
  GTECH_NAND2 U145 ( .A(b[14]), .B(a[14]), .Z(n106) );
  GTECH_OAI21 U146 ( .A(b[15]), .B(a[15]), .C(n137), .Z(n103) );
  GTECH_NAND2 U147 ( .A(a[15]), .B(b[15]), .Z(n137) );
  GTECH_OAI21 U148 ( .A(b[12]), .B(a[12]), .C(n112), .Z(n111) );
  GTECH_NAND2 U149 ( .A(a[12]), .B(b[12]), .Z(n112) );
  GTECH_OAI21 U150 ( .A(n128), .B(n125), .C(n126), .Z(n135) );
  GTECH_OA21 U151 ( .A(n139), .B(n114), .C(n140), .Z(n126) );
  GTECH_OA21 U152 ( .A(n141), .B(n116), .C(n117), .Z(n139) );
  GTECH_NOT U153 ( .A(n142), .Z(n116) );
  GTECH_AOI21 U154 ( .A(n76), .B(n143), .C(n118), .Z(n141) );
  GTECH_AND2 U155 ( .A(a[9]), .B(b[9]), .Z(n118) );
  GTECH_NOT U156 ( .A(n133), .Z(n125) );
  GTECH_AND4 U157 ( .A(n78), .B(n144), .C(n142), .D(n76), .Z(n133) );
  GTECH_XOR2 U158 ( .A(a[9]), .B(b[9]), .Z(n76) );
  GTECH_OA21 U159 ( .A(b[10]), .B(a[10]), .C(n117), .Z(n142) );
  GTECH_NAND2 U160 ( .A(b[10]), .B(a[10]), .Z(n117) );
  GTECH_NOT U161 ( .A(n114), .Z(n144) );
  GTECH_OAI21 U162 ( .A(a[11]), .B(b[11]), .C(n140), .Z(n114) );
  GTECH_NAND2 U163 ( .A(a[11]), .B(b[11]), .Z(n140) );
  GTECH_OA21 U164 ( .A(b[8]), .B(a[8]), .C(n120), .Z(n78) );
  GTECH_NOT U165 ( .A(n143), .Z(n120) );
  GTECH_AND2 U166 ( .A(a[8]), .B(b[8]), .Z(n143) );
  GTECH_OA21 U167 ( .A(n145), .B(n132), .C(n146), .Z(n128) );
  GTECH_OA21 U168 ( .A(n147), .B(n81), .C(n148), .Z(n146) );
  GTECH_OA21 U169 ( .A(n149), .B(n83), .C(n84), .Z(n147) );
  GTECH_OA21 U170 ( .A(n86), .B(n90), .C(n87), .Z(n149) );
  GTECH_OR4 U171 ( .A(n89), .B(n81), .C(n83), .D(n86), .Z(n132) );
  GTECH_OAI21 U172 ( .A(b[5]), .B(a[5]), .C(n87), .Z(n86) );
  GTECH_NAND2 U173 ( .A(b[5]), .B(a[5]), .Z(n87) );
  GTECH_OAI21 U174 ( .A(b[6]), .B(a[6]), .C(n84), .Z(n83) );
  GTECH_NAND2 U175 ( .A(b[6]), .B(a[6]), .Z(n84) );
  GTECH_OAI21 U176 ( .A(b[7]), .B(a[7]), .C(n148), .Z(n81) );
  GTECH_NAND2 U177 ( .A(a[7]), .B(b[7]), .Z(n148) );
  GTECH_OAI21 U178 ( .A(b[4]), .B(a[4]), .C(n90), .Z(n89) );
  GTECH_NAND2 U179 ( .A(b[4]), .B(a[4]), .Z(n90) );
  GTECH_OA21 U180 ( .A(n150), .B(n92), .C(n151), .Z(n145) );
  GTECH_OAI21 U181 ( .A(a[3]), .B(b[3]), .C(n151), .Z(n92) );
  GTECH_NAND2 U182 ( .A(a[3]), .B(b[3]), .Z(n151) );
  GTECH_OA21 U183 ( .A(n152), .B(n94), .C(n95), .Z(n150) );
  GTECH_NOT U184 ( .A(n129), .Z(n94) );
  GTECH_OA21 U185 ( .A(b[2]), .B(a[2]), .C(n95), .Z(n129) );
  GTECH_NAND2 U186 ( .A(b[2]), .B(a[2]), .Z(n95) );
  GTECH_OA21 U187 ( .A(n97), .B(n100), .C(n98), .Z(n152) );
  GTECH_NAND2 U188 ( .A(a[1]), .B(b[1]), .Z(n98) );
  GTECH_NAND2 U189 ( .A(a[0]), .B(b[0]), .Z(n100) );
  GTECH_XNOR2 U190 ( .A(a[1]), .B(b[1]), .Z(n97) );
endmodule

