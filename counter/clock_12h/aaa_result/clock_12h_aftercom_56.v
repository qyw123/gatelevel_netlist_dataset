
module clock_12h ( clk, reset, ena, pm, hh, mm, ss );
  output [7:0] hh;
  output [7:0] mm;
  output [7:0] ss;
  input clk, reset, ena;
  output pm;
  wire   N22, N23, N24, N25, N26, N39, N40, N41, N42, N43, N55, N56, N57, N58,
         N59, N71, N72, N73, N74, N75, N88, N89, N90, N91, N92, N110, N112,
         N114, N115, N116, N121, N122, n4, n5, n6, n7, n8, n9, n10, n11, n79,
         n104, n105, n106, n107, n108, n109, n110, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209;

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
  GTECH_FJK1S ss_tens_reg_2_ ( .J(n79), .K(n79), .TI(N41), .TE(N42), .CP(clk), 
        .Q(ss[6]) );
  GTECH_FJK1S ss_tens_reg_3_ ( .J(n79), .K(n79), .TI(N43), .TE(N42), .CP(clk), 
        .Q(ss[7]) );
  GTECH_FJK1S ss_tens_reg_1_ ( .J(n79), .K(n79), .TI(N40), .TE(N42), .CP(clk), 
        .Q(ss[5]) );
  GTECH_FJK1S mm_ones_reg_0_ ( .J(n79), .K(n79), .TI(N55), .TE(N58), .CP(clk), 
        .Q(mm[0]), .QN(n4) );
  GTECH_FJK1S mm_ones_reg_3_ ( .J(n79), .K(n79), .TI(N59), .TE(N58), .CP(clk), 
        .Q(mm[3]), .QN(n108) );
  GTECH_FJK1S mm_ones_reg_1_ ( .J(n79), .K(n79), .TI(N56), .TE(N58), .CP(clk), 
        .Q(mm[1]), .QN(n110) );
  GTECH_FJK1S mm_ones_reg_2_ ( .J(n79), .K(n79), .TI(N57), .TE(N58), .CP(clk), 
        .Q(mm[2]), .QN(n109) );
  GTECH_FJK1S mm_tens_reg_0_ ( .J(n79), .K(n79), .TI(N71), .TE(N74), .CP(clk), 
        .Q(mm[4]), .QN(n107) );
  GTECH_FJK1S mm_tens_reg_2_ ( .J(n79), .K(n79), .TI(N73), .TE(N74), .CP(clk), 
        .Q(mm[6]), .QN(n105) );
  GTECH_FJK1S mm_tens_reg_3_ ( .J(n79), .K(n79), .TI(N75), .TE(N74), .CP(clk), 
        .Q(mm[7]), .QN(n5) );
  GTECH_FJK1S mm_tens_reg_1_ ( .J(n79), .K(n79), .TI(N72), .TE(N74), .CP(clk), 
        .Q(mm[5]), .QN(n106) );
  GTECH_FJK1S hh_tens_reg_0_ ( .J(n79), .K(n79), .TI(N110), .TE(N115), .CP(clk), .Q(hh[4]), .QN(n117) );
  GTECH_FJK1S hh_tens_reg_1_ ( .J(n79), .K(n79), .TI(N112), .TE(N115), .CP(clk), .Q(hh[5]), .QN(n6) );
  GTECH_FJK1S hh_tens_reg_2_ ( .J(n79), .K(n79), .TI(N114), .TE(N115), .CP(clk), .Q(hh[6]), .QN(n7) );
  GTECH_FJK1S hh_tens_reg_3_ ( .J(n79), .K(n79), .TI(N116), .TE(N115), .CP(clk), .Q(hh[7]), .QN(n8) );
  GTECH_FJK1S hh_ones_reg_0_ ( .J(n79), .K(n79), .TI(N88), .TE(N91), .CP(clk), 
        .Q(hh[0]), .QN(n104) );
  GTECH_FJK1S hh_ones_reg_1_ ( .J(n79), .K(n79), .TI(N89), .TE(N91), .CP(clk), 
        .Q(hh[1]), .QN(n9) );
  GTECH_FJK1S hh_ones_reg_2_ ( .J(n79), .K(n79), .TI(N90), .TE(N91), .CP(clk), 
        .Q(hh[2]), .QN(n118) );
  GTECH_FJK1S hh_ones_reg_3_ ( .J(n79), .K(n79), .TI(N92), .TE(N91), .CP(clk), 
        .Q(hh[3]), .QN(n10) );
  GTECH_FJK1S pm_temp_reg ( .J(n79), .K(n79), .TI(N122), .TE(N121), .CP(clk), 
        .Q(pm), .QN(n11) );
  GTECH_ZERO U127 ( .Z(n79) );
  GTECH_AND2 U128 ( .A(n119), .B(n120), .Z(N92) );
  GTECH_XOR2 U129 ( .A(n121), .B(n10), .Z(n119) );
  GTECH_OR2 U130 ( .A(n122), .B(n118), .Z(n121) );
  GTECH_OR_NOT U131 ( .A(n123), .B(n124), .Z(N91) );
  GTECH_NOT U132 ( .A(n125), .Z(n123) );
  GTECH_AND2 U133 ( .A(n126), .B(n120), .Z(N90) );
  GTECH_NOT U134 ( .A(n127), .Z(n120) );
  GTECH_XOR2 U135 ( .A(n122), .B(n118), .Z(n126) );
  GTECH_OR_NOT U136 ( .A(n104), .B(n128), .Z(n122) );
  GTECH_OAI21 U137 ( .A(n129), .B(n127), .C(n124), .Z(N89) );
  GTECH_OA21 U138 ( .A(n9), .B(n130), .C(n131), .Z(n129) );
  GTECH_OAI22 U139 ( .A(n125), .B(n132), .C(n130), .D(n127), .Z(N88) );
  GTECH_OR3 U140 ( .A(n133), .B(n134), .C(n125), .Z(n127) );
  GTECH_NOT U141 ( .A(n104), .Z(n130) );
  GTECH_OAI22 U142 ( .A(n5), .B(n135), .C(n136), .D(n137), .Z(N75) );
  GTECH_OA21 U143 ( .A(n5), .B(n138), .C(n139), .Z(n136) );
  GTECH_NOT U144 ( .A(n105), .Z(n138) );
  GTECH_MUX2 U145 ( .A(n140), .B(n141), .S(n105), .Z(N73) );
  GTECH_AND3 U146 ( .A(n142), .B(n143), .C(n144), .Z(n141) );
  GTECH_NOT U147 ( .A(n135), .Z(n140) );
  GTECH_OAI21 U148 ( .A(n107), .B(n106), .C(n144), .Z(n135) );
  GTECH_MUX2 U149 ( .A(N71), .B(n145), .S(n106), .Z(N72) );
  GTECH_AND2 U150 ( .A(n144), .B(n143), .Z(n145) );
  GTECH_NOT U151 ( .A(n107), .Z(n143) );
  GTECH_NOT U152 ( .A(n137), .Z(n144) );
  GTECH_NOT U153 ( .A(n146), .Z(N71) );
  GTECH_OR_NOT U154 ( .A(n137), .B(n107), .Z(n146) );
  GTECH_OR3 U155 ( .A(reset), .B(n147), .C(n148), .Z(n137) );
  GTECH_MUX2 U156 ( .A(n149), .B(n150), .S(n108), .Z(N59) );
  GTECH_AND2 U157 ( .A(n151), .B(n152), .Z(n150) );
  GTECH_OAI21 U158 ( .A(n152), .B(n153), .C(n154), .Z(n149) );
  GTECH_NOT U159 ( .A(n155), .Z(n154) );
  GTECH_NOT U160 ( .A(n109), .Z(n152) );
  GTECH_MUX2 U161 ( .A(n155), .B(n151), .S(n109), .Z(N57) );
  GTECH_NOT U162 ( .A(n156), .Z(n151) );
  GTECH_OR3 U163 ( .A(n4), .B(n110), .C(n153), .Z(n156) );
  GTECH_OAI21 U164 ( .A(n157), .B(n153), .C(n158), .Z(n155) );
  GTECH_NOT U165 ( .A(n110), .Z(n157) );
  GTECH_MUX2 U166 ( .A(N55), .B(n159), .S(n110), .Z(N56) );
  GTECH_AND_NOT U167 ( .A(n160), .B(n153), .Z(n159) );
  GTECH_NOT U168 ( .A(n158), .Z(N55) );
  GTECH_OR_NOT U169 ( .A(n153), .B(n4), .Z(n158) );
  GTECH_OR_NOT U170 ( .A(N74), .B(n161), .Z(n153) );
  GTECH_OR_NOT U171 ( .A(n162), .B(n124), .Z(N74) );
  GTECH_NOT U172 ( .A(n148), .Z(n162) );
  GTECH_OAI2N2 U173 ( .A(n163), .B(n164), .C(n165), .D(ss[7]), .Z(N43) );
  GTECH_OA21 U174 ( .A(n166), .B(ss[6]), .C(n167), .Z(n163) );
  GTECH_NOT U175 ( .A(ss[7]), .Z(n166) );
  GTECH_MUX2 U176 ( .A(n168), .B(n165), .S(ss[6]), .Z(N41) );
  GTECH_OAI21 U177 ( .A(ss[5]), .B(n164), .C(n169), .Z(n165) );
  GTECH_AND3 U178 ( .A(n170), .B(ss[4]), .C(ss[5]), .Z(n168) );
  GTECH_MUX2 U179 ( .A(n171), .B(N39), .S(ss[5]), .Z(N40) );
  GTECH_AND2 U180 ( .A(n170), .B(ss[4]), .Z(n171) );
  GTECH_NOT U181 ( .A(n169), .Z(N39) );
  GTECH_OR_NOT U182 ( .A(ss[4]), .B(n170), .Z(n169) );
  GTECH_NOT U183 ( .A(n164), .Z(n170) );
  GTECH_OR_NOT U184 ( .A(N58), .B(n172), .Z(n164) );
  GTECH_OR_NOT U185 ( .A(n161), .B(n124), .Z(N58) );
  GTECH_MUX2 U186 ( .A(n173), .B(n174), .S(ss[3]), .Z(N26) );
  GTECH_OAI21 U187 ( .A(ss[2]), .B(n175), .C(n176), .Z(n174) );
  GTECH_NOT U188 ( .A(n177), .Z(n176) );
  GTECH_AND2 U189 ( .A(ss[2]), .B(n178), .Z(n173) );
  GTECH_OR_NOT U190 ( .A(ena), .B(n124), .Z(N25) );
  GTECH_MUX2 U191 ( .A(n178), .B(n177), .S(ss[2]), .Z(N24) );
  GTECH_OAI21 U192 ( .A(ss[1]), .B(n175), .C(n179), .Z(n177) );
  GTECH_NOT U193 ( .A(n180), .Z(n178) );
  GTECH_OR3 U194 ( .A(n181), .B(n175), .C(n182), .Z(n180) );
  GTECH_NOT U195 ( .A(ss[0]), .Z(n181) );
  GTECH_MUX2 U196 ( .A(n183), .B(N22), .S(ss[1]), .Z(N23) );
  GTECH_AND2 U197 ( .A(n184), .B(ss[0]), .Z(n183) );
  GTECH_NOT U198 ( .A(n179), .Z(N22) );
  GTECH_OR_NOT U199 ( .A(ss[0]), .B(n184), .Z(n179) );
  GTECH_NOT U200 ( .A(n175), .Z(n184) );
  GTECH_OR_NOT U201 ( .A(N42), .B(ena), .Z(n175) );
  GTECH_OR_NOT U202 ( .A(n172), .B(n124), .Z(N42) );
  GTECH_NOT U203 ( .A(n185), .Z(n172) );
  GTECH_AND2 U204 ( .A(n186), .B(n11), .Z(N122) );
  GTECH_OR_NOT U205 ( .A(n186), .B(n124), .Z(N121) );
  GTECH_NOT U206 ( .A(n187), .Z(n186) );
  GTECH_OR3 U207 ( .A(n131), .B(n188), .C(n125), .Z(n187) );
  GTECH_AND2 U208 ( .A(n189), .B(n190), .Z(N116) );
  GTECH_XOR2 U209 ( .A(n191), .B(n8), .Z(n189) );
  GTECH_OR2 U210 ( .A(n192), .B(n7), .Z(n191) );
  GTECH_OR3 U211 ( .A(reset), .B(n133), .C(n134), .Z(N115) );
  GTECH_NOT U212 ( .A(n132), .Z(n134) );
  GTECH_NAND4 U213 ( .A(n104), .B(n193), .C(n147), .D(n128), .Z(n132) );
  GTECH_NOT U214 ( .A(n9), .Z(n128) );
  GTECH_NOT U215 ( .A(n188), .Z(n193) );
  GTECH_NAND4 U216 ( .A(n7), .B(n6), .C(n8), .D(n194), .Z(n188) );
  GTECH_AND3 U217 ( .A(n118), .B(n195), .C(n10), .Z(n194) );
  GTECH_AND2 U218 ( .A(n196), .B(n190), .Z(N114) );
  GTECH_XOR2 U219 ( .A(n192), .B(n7), .Z(n196) );
  GTECH_OR_NOT U220 ( .A(n117), .B(n197), .Z(n192) );
  GTECH_NOT U221 ( .A(n6), .Z(n197) );
  GTECH_AND2 U222 ( .A(n190), .B(n198), .Z(N112) );
  GTECH_XOR2 U223 ( .A(n6), .B(n117), .Z(n198) );
  GTECH_NOT U224 ( .A(n199), .Z(n190) );
  GTECH_OAI21 U225 ( .A(n199), .B(n195), .C(n124), .Z(N110) );
  GTECH_NOT U226 ( .A(reset), .Z(n124) );
  GTECH_NOT U227 ( .A(n117), .Z(n195) );
  GTECH_OR_NOT U228 ( .A(n125), .B(n133), .Z(n199) );
  GTECH_NOT U229 ( .A(n200), .Z(n133) );
  GTECH_NAND4 U230 ( .A(n118), .B(n201), .C(n147), .D(n202), .Z(n200) );
  GTECH_NOT U231 ( .A(n10), .Z(n202) );
  GTECH_NOT U232 ( .A(n131), .Z(n201) );
  GTECH_OR_NOT U233 ( .A(n104), .B(n9), .Z(n131) );
  GTECH_OR_NOT U234 ( .A(reset), .B(n147), .Z(n125) );
  GTECH_NOT U235 ( .A(n203), .Z(n147) );
  GTECH_OR3 U236 ( .A(n139), .B(n148), .C(n142), .Z(n203) );
  GTECH_NOT U237 ( .A(n106), .Z(n142) );
  GTECH_NAND5 U238 ( .A(n204), .B(n160), .C(n161), .D(n110), .E(n109), .Z(n148) );
  GTECH_NOT U239 ( .A(n205), .Z(n161) );
  GTECH_OR3 U240 ( .A(ss[5]), .B(n167), .C(n185), .Z(n205) );
  GTECH_NAND5 U241 ( .A(n182), .B(n206), .C(ena), .D(ss[3]), .E(ss[0]), .Z(
        n185) );
  GTECH_NOT U242 ( .A(ss[2]), .Z(n206) );
  GTECH_NOT U243 ( .A(ss[1]), .Z(n182) );
  GTECH_OR3 U244 ( .A(ss[7]), .B(n207), .C(n208), .Z(n167) );
  GTECH_NOT U245 ( .A(ss[6]), .Z(n208) );
  GTECH_NOT U246 ( .A(ss[4]), .Z(n207) );
  GTECH_NOT U247 ( .A(n4), .Z(n160) );
  GTECH_NOT U248 ( .A(n108), .Z(n204) );
  GTECH_OR3 U249 ( .A(n107), .B(n105), .C(n209), .Z(n139) );
  GTECH_NOT U250 ( .A(n5), .Z(n209) );
endmodule

