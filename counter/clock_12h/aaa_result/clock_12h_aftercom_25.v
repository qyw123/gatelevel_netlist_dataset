
module clock_12h ( clk, reset, ena, pm, hh, mm, ss );
  output [7:0] hh;
  output [7:0] mm;
  output [7:0] ss;
  input clk, reset, ena;
  output pm;
  wire   N22, N23, N24, N25, N26, N39, N40, N41, N42, N43, N55, N56, N57, N58,
         N59, N71, N72, N73, N74, N75, N88, N89, N90, N91, N92, N110, N112,
         N114, N115, N116, N121, N122, n4, n5, n6, n7, n8, n9, n10, n11, n79,
         n104, n105, n106, n107, n108, n109, n110, n111, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212;

  GTECH_FJK1S ss_ones_reg_0_ ( .J(n79), .K(n79), .TI(N22), .TE(N25), .CP(clk), 
        .Q(ss[0]) );
  GTECH_FJK1S ss_ones_reg_3_ ( .J(n79), .K(n79), .TI(N26), .TE(N25), .CP(clk), 
        .Q(ss[3]) );
  GTECH_FJK1S ss_ones_reg_1_ ( .J(n79), .K(n79), .TI(N23), .TE(N25), .CP(clk), 
        .Q(ss[1]) );
  GTECH_FJK1S ss_ones_reg_2_ ( .J(n79), .K(n79), .TI(N24), .TE(N25), .CP(clk), 
        .Q(ss[2]) );
  GTECH_FJK1S ss_tens_reg_0_ ( .J(n79), .K(n79), .TI(N39), .TE(N42), .CP(clk), 
        .Q(ss[4]) );
  GTECH_FJK1S ss_tens_reg_3_ ( .J(n79), .K(n79), .TI(N43), .TE(N42), .CP(clk), 
        .Q(ss[7]) );
  GTECH_FJK1S ss_tens_reg_1_ ( .J(n79), .K(n79), .TI(N40), .TE(N42), .CP(clk), 
        .Q(ss[5]) );
  GTECH_FJK1S ss_tens_reg_2_ ( .J(n79), .K(n79), .TI(N41), .TE(N42), .CP(clk), 
        .Q(ss[6]) );
  GTECH_FJK1S mm_ones_reg_0_ ( .J(n79), .K(n79), .TI(N55), .TE(N58), .CP(clk), 
        .Q(mm[0]), .QN(n4) );
  GTECH_FJK1S mm_ones_reg_3_ ( .J(n79), .K(n79), .TI(N59), .TE(N58), .CP(clk), 
        .Q(mm[3]), .QN(n109) );
  GTECH_FJK1S mm_ones_reg_1_ ( .J(n79), .K(n79), .TI(N56), .TE(N58), .CP(clk), 
        .Q(mm[1]), .QN(n111) );
  GTECH_FJK1S mm_ones_reg_2_ ( .J(n79), .K(n79), .TI(N57), .TE(N58), .CP(clk), 
        .Q(mm[2]), .QN(n110) );
  GTECH_FJK1S mm_tens_reg_0_ ( .J(n79), .K(n79), .TI(N71), .TE(N74), .CP(clk), 
        .Q(mm[4]), .QN(n108) );
  GTECH_FJK1S mm_tens_reg_3_ ( .J(n79), .K(n79), .TI(N75), .TE(N74), .CP(clk), 
        .Q(mm[7]), .QN(n106) );
  GTECH_FJK1S mm_tens_reg_1_ ( .J(n79), .K(n79), .TI(N72), .TE(N74), .CP(clk), 
        .Q(mm[5]), .QN(n5) );
  GTECH_FJK1S mm_tens_reg_2_ ( .J(n79), .K(n79), .TI(N73), .TE(N74), .CP(clk), 
        .Q(mm[6]), .QN(n107) );
  GTECH_FJK1S hh_tens_reg_0_ ( .J(n79), .K(n79), .TI(N110), .TE(N115), .CP(clk), .Q(hh[4]), .QN(n118) );
  GTECH_FJK1S hh_tens_reg_1_ ( .J(n79), .K(n79), .TI(N112), .TE(N115), .CP(clk), .Q(hh[5]), .QN(n6) );
  GTECH_FJK1S hh_tens_reg_2_ ( .J(n79), .K(n79), .TI(N114), .TE(N115), .CP(clk), .Q(hh[6]), .QN(n7) );
  GTECH_FJK1S hh_tens_reg_3_ ( .J(n79), .K(n79), .TI(N116), .TE(N115), .CP(clk), .Q(hh[7]), .QN(n8) );
  GTECH_FJK1S hh_ones_reg_0_ ( .J(n79), .K(n79), .TI(N88), .TE(N91), .CP(clk), 
        .Q(hh[0]), .QN(n105) );
  GTECH_FJK1S hh_ones_reg_1_ ( .J(n79), .K(n79), .TI(N89), .TE(N91), .CP(clk), 
        .Q(hh[1]), .QN(n9) );
  GTECH_FJK1S hh_ones_reg_2_ ( .J(n79), .K(n79), .TI(N90), .TE(N91), .CP(clk), 
        .Q(hh[2]), .QN(n104) );
  GTECH_FJK1S hh_ones_reg_3_ ( .J(n79), .K(n79), .TI(N92), .TE(N91), .CP(clk), 
        .Q(hh[3]), .QN(n10) );
  GTECH_FJK1S pm_temp_reg ( .J(n79), .K(n79), .TI(N122), .TE(N121), .CP(clk), 
        .Q(pm), .QN(n11) );
  GTECH_ZERO U127 ( .Z(n79) );
  GTECH_AND2 U128 ( .A(n119), .B(n120), .Z(N92) );
  GTECH_XOR2 U129 ( .A(n121), .B(n10), .Z(n119) );
  GTECH_OR_NOT U130 ( .A(n122), .B(n123), .Z(n121) );
  GTECH_NAND2 U131 ( .A(n124), .B(n125), .Z(N91) );
  GTECH_AND2 U132 ( .A(n126), .B(n120), .Z(N90) );
  GTECH_NOT U133 ( .A(n127), .Z(n120) );
  GTECH_XOR2 U134 ( .A(n122), .B(n104), .Z(n126) );
  GTECH_NAND2 U135 ( .A(n128), .B(n129), .Z(n122) );
  GTECH_OAI21 U136 ( .A(n130), .B(n127), .C(n124), .Z(N89) );
  GTECH_XOR2 U137 ( .A(n129), .B(n9), .Z(n130) );
  GTECH_OAI22 U138 ( .A(n125), .B(n131), .C(n129), .D(n127), .Z(N88) );
  GTECH_NAND3 U139 ( .A(n131), .B(n132), .C(n133), .Z(n127) );
  GTECH_MUX2 U140 ( .A(n134), .B(n135), .S(n106), .Z(N75) );
  GTECH_AND2 U141 ( .A(n136), .B(n137), .Z(n135) );
  GTECH_OAI21 U142 ( .A(n138), .B(n137), .C(n139), .Z(n134) );
  GTECH_NOT U143 ( .A(n140), .Z(N73) );
  GTECH_MUX2 U144 ( .A(n139), .B(n141), .S(n107), .Z(n140) );
  GTECH_OR_NOT U145 ( .A(n5), .B(n136), .Z(n141) );
  GTECH_OAI21 U146 ( .A(n5), .B(n108), .C(n142), .Z(n139) );
  GTECH_MUX2 U147 ( .A(N71), .B(n136), .S(n5), .Z(N72) );
  GTECH_NOT U148 ( .A(n143), .Z(n136) );
  GTECH_NAND2 U149 ( .A(n142), .B(n144), .Z(n143) );
  GTECH_NOT U150 ( .A(n145), .Z(N71) );
  GTECH_NAND2 U151 ( .A(n108), .B(n142), .Z(n145) );
  GTECH_NOT U152 ( .A(n138), .Z(n142) );
  GTECH_NAND3 U153 ( .A(n146), .B(n124), .C(n147), .Z(n138) );
  GTECH_MUX2 U154 ( .A(n148), .B(n149), .S(n109), .Z(N59) );
  GTECH_AND3 U155 ( .A(n150), .B(n151), .C(n152), .Z(n149) );
  GTECH_OAI21 U156 ( .A(n150), .B(n153), .C(n154), .Z(n148) );
  GTECH_NOT U157 ( .A(n155), .Z(n154) );
  GTECH_NOT U158 ( .A(n110), .Z(n150) );
  GTECH_MUX2 U159 ( .A(n155), .B(n156), .S(n110), .Z(N57) );
  GTECH_AND2 U160 ( .A(n152), .B(n151), .Z(n156) );
  GTECH_OAI21 U161 ( .A(n151), .B(n153), .C(n157), .Z(n155) );
  GTECH_NOT U162 ( .A(n111), .Z(n151) );
  GTECH_MUX2 U163 ( .A(N55), .B(n152), .S(n111), .Z(N56) );
  GTECH_NOT U164 ( .A(n158), .Z(n152) );
  GTECH_NAND2 U165 ( .A(n159), .B(n160), .Z(n158) );
  GTECH_NOT U166 ( .A(n157), .Z(N55) );
  GTECH_NAND2 U167 ( .A(n4), .B(n159), .Z(n157) );
  GTECH_NOT U168 ( .A(n153), .Z(n159) );
  GTECH_NAND2 U169 ( .A(n161), .B(n162), .Z(n153) );
  GTECH_NOT U170 ( .A(N74), .Z(n162) );
  GTECH_NAND2 U171 ( .A(n124), .B(n163), .Z(N74) );
  GTECH_MUX2 U172 ( .A(n164), .B(n165), .S(ss[7]), .Z(N43) );
  GTECH_OAI21 U173 ( .A(ss[6]), .B(n166), .C(n167), .Z(n165) );
  GTECH_AND2 U174 ( .A(n168), .B(ss[6]), .Z(n164) );
  GTECH_MUX2 U175 ( .A(n169), .B(n170), .S(ss[6]), .Z(N41) );
  GTECH_NOT U176 ( .A(n167), .Z(n170) );
  GTECH_OAI21 U177 ( .A(n171), .B(n172), .C(n173), .Z(n167) );
  GTECH_AND2 U178 ( .A(ss[5]), .B(n168), .Z(n169) );
  GTECH_MUX2 U179 ( .A(n168), .B(N39), .S(ss[5]), .Z(N40) );
  GTECH_NOT U180 ( .A(n174), .Z(n168) );
  GTECH_NAND2 U181 ( .A(n173), .B(ss[4]), .Z(n174) );
  GTECH_NOT U182 ( .A(n175), .Z(N39) );
  GTECH_NAND2 U183 ( .A(n173), .B(n171), .Z(n175) );
  GTECH_NOT U184 ( .A(ss[4]), .Z(n171) );
  GTECH_NOT U185 ( .A(n166), .Z(n173) );
  GTECH_NAND2 U186 ( .A(n176), .B(n177), .Z(n166) );
  GTECH_NOT U187 ( .A(N58), .Z(n177) );
  GTECH_NAND2 U188 ( .A(n124), .B(n178), .Z(N58) );
  GTECH_MUX2 U189 ( .A(n179), .B(n180), .S(ss[3]), .Z(N26) );
  GTECH_OAI21 U190 ( .A(ss[2]), .B(n181), .C(n182), .Z(n180) );
  GTECH_NOT U191 ( .A(n183), .Z(n182) );
  GTECH_AND2 U192 ( .A(ss[2]), .B(n184), .Z(n179) );
  GTECH_NAND2 U193 ( .A(n124), .B(n185), .Z(N25) );
  GTECH_NOT U194 ( .A(ena), .Z(n185) );
  GTECH_MUX2 U195 ( .A(n184), .B(n183), .S(ss[2]), .Z(N24) );
  GTECH_OAI21 U196 ( .A(ss[1]), .B(n181), .C(n186), .Z(n183) );
  GTECH_NOT U197 ( .A(n187), .Z(n184) );
  GTECH_NAND3 U198 ( .A(n188), .B(ss[0]), .C(ss[1]), .Z(n187) );
  GTECH_MUX2 U199 ( .A(n189), .B(N22), .S(ss[1]), .Z(N23) );
  GTECH_AND2 U200 ( .A(n188), .B(ss[0]), .Z(n189) );
  GTECH_NOT U201 ( .A(n186), .Z(N22) );
  GTECH_NAND2 U202 ( .A(n188), .B(n190), .Z(n186) );
  GTECH_NOT U203 ( .A(ss[0]), .Z(n190) );
  GTECH_NOT U204 ( .A(n181), .Z(n188) );
  GTECH_NAND2 U205 ( .A(ena), .B(n191), .Z(n181) );
  GTECH_NOT U206 ( .A(N42), .Z(n191) );
  GTECH_NAND2 U207 ( .A(n124), .B(n192), .Z(N42) );
  GTECH_AND2 U208 ( .A(n193), .B(n11), .Z(N122) );
  GTECH_NOT U209 ( .A(n194), .Z(n193) );
  GTECH_NAND2 U210 ( .A(n124), .B(n194), .Z(N121) );
  GTECH_NAND5 U211 ( .A(n133), .B(n8), .C(n7), .D(n6), .E(n195), .Z(n194) );
  GTECH_NOR5 U212 ( .A(n128), .B(n196), .C(n123), .D(n118), .E(n105), .Z(n195)
         );
  GTECH_NOT U213 ( .A(n9), .Z(n128) );
  GTECH_AND2 U214 ( .A(n197), .B(n198), .Z(N116) );
  GTECH_XNOR2 U215 ( .A(n199), .B(n8), .Z(n197) );
  GTECH_NOR2 U216 ( .A(n7), .B(n200), .Z(n199) );
  GTECH_NAND3 U217 ( .A(n132), .B(n124), .C(n131), .Z(N115) );
  GTECH_NAND5 U218 ( .A(n8), .B(n7), .C(n6), .D(n105), .E(n201), .Z(n131) );
  GTECH_NOR5 U219 ( .A(n123), .B(n196), .C(n146), .D(n9), .E(n118), .Z(n201)
         );
  GTECH_NOT U220 ( .A(n104), .Z(n123) );
  GTECH_AND2 U221 ( .A(n202), .B(n198), .Z(N114) );
  GTECH_XOR2 U222 ( .A(n200), .B(n7), .Z(n202) );
  GTECH_NAND2 U223 ( .A(n203), .B(n204), .Z(n200) );
  GTECH_NOT U224 ( .A(n6), .Z(n203) );
  GTECH_AND2 U225 ( .A(n198), .B(n205), .Z(N112) );
  GTECH_XOR2 U226 ( .A(n6), .B(n118), .Z(n205) );
  GTECH_NOT U227 ( .A(n206), .Z(n198) );
  GTECH_OAI21 U228 ( .A(n206), .B(n204), .C(n124), .Z(N110) );
  GTECH_NOT U229 ( .A(n118), .Z(n204) );
  GTECH_NAND2 U230 ( .A(n207), .B(n133), .Z(n206) );
  GTECH_NOT U231 ( .A(n125), .Z(n133) );
  GTECH_NAND2 U232 ( .A(n208), .B(n124), .Z(n125) );
  GTECH_NOT U233 ( .A(reset), .Z(n124) );
  GTECH_NOT U234 ( .A(n132), .Z(n207) );
  GTECH_NAND5 U235 ( .A(n196), .B(n129), .C(n208), .D(n9), .E(n104), .Z(n132)
         );
  GTECH_NOT U236 ( .A(n146), .Z(n208) );
  GTECH_NAND5 U237 ( .A(n137), .B(n144), .C(n147), .D(n5), .E(n106), .Z(n146)
         );
  GTECH_NOT U238 ( .A(n163), .Z(n147) );
  GTECH_NAND5 U239 ( .A(n209), .B(n160), .C(n161), .D(n111), .E(n110), .Z(n163) );
  GTECH_NOT U240 ( .A(n178), .Z(n161) );
  GTECH_NAND5 U241 ( .A(n172), .B(n210), .C(n176), .D(ss[6]), .E(ss[4]), .Z(
        n178) );
  GTECH_NOT U242 ( .A(n192), .Z(n176) );
  GTECH_NAND5 U243 ( .A(n211), .B(n212), .C(ena), .D(ss[3]), .E(ss[0]), .Z(
        n192) );
  GTECH_NOT U244 ( .A(ss[2]), .Z(n212) );
  GTECH_NOT U245 ( .A(ss[1]), .Z(n211) );
  GTECH_NOT U246 ( .A(ss[7]), .Z(n210) );
  GTECH_NOT U247 ( .A(ss[5]), .Z(n172) );
  GTECH_NOT U248 ( .A(n4), .Z(n160) );
  GTECH_NOT U249 ( .A(n109), .Z(n209) );
  GTECH_NOT U250 ( .A(n108), .Z(n144) );
  GTECH_NOT U251 ( .A(n107), .Z(n137) );
  GTECH_NOT U252 ( .A(n105), .Z(n129) );
  GTECH_NOT U253 ( .A(n10), .Z(n196) );
endmodule

