
module clock_12h ( clk, reset, ena, pm, hh, mm, ss );
  output [7:0] hh;
  output [7:0] mm;
  output [7:0] ss;
  input clk, reset, ena;
  output pm;
  wire   N22, N23, N24, N25, N26, N39, N40, N41, N42, N43, N55, N56, N57, N58,
         N59, N71, N72, N73, N74, N75, N88, N89, N90, N91, N92, N110, N112,
         N114, N115, N116, N121, N122, n5, n6, n7, n8, n9, n10, n11, n12, n84,
         n109, n110, n111, n112, n113, n114, n115, n116, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206;

  GTECH_FJK1S ss_ones_reg_0_ ( .J(n84), .K(n84), .TI(N22), .TE(N25), .CP(clk), 
        .Q(ss[0]) );
  GTECH_FJK1S ss_ones_reg_3_ ( .J(n84), .K(n84), .TI(N26), .TE(N25), .CP(clk), 
        .Q(ss[3]) );
  GTECH_FJK1S ss_ones_reg_1_ ( .J(n84), .K(n84), .TI(N23), .TE(N25), .CP(clk), 
        .Q(ss[1]) );
  GTECH_FJK1S ss_ones_reg_2_ ( .J(n84), .K(n84), .TI(N24), .TE(N25), .CP(clk), 
        .Q(ss[2]) );
  GTECH_FJK1S ss_tens_reg_0_ ( .J(n84), .K(n84), .TI(N39), .TE(N42), .CP(clk), 
        .Q(ss[4]) );
  GTECH_FJK1S ss_tens_reg_2_ ( .J(n84), .K(n84), .TI(N41), .TE(N42), .CP(clk), 
        .Q(ss[6]) );
  GTECH_FJK1S ss_tens_reg_3_ ( .J(n84), .K(n84), .TI(N43), .TE(N42), .CP(clk), 
        .Q(ss[7]) );
  GTECH_FJK1S ss_tens_reg_1_ ( .J(n84), .K(n84), .TI(N40), .TE(N42), .CP(clk), 
        .Q(ss[5]) );
  GTECH_FJK1S mm_ones_reg_0_ ( .J(n84), .K(n84), .TI(N55), .TE(N58), .CP(clk), 
        .Q(mm[0]), .QN(n5) );
  GTECH_FJK1S mm_ones_reg_3_ ( .J(n84), .K(n84), .TI(N59), .TE(N58), .CP(clk), 
        .Q(mm[3]), .QN(n114) );
  GTECH_FJK1S mm_ones_reg_1_ ( .J(n84), .K(n84), .TI(N56), .TE(N58), .CP(clk), 
        .Q(mm[1]), .QN(n116) );
  GTECH_FJK1S mm_ones_reg_2_ ( .J(n84), .K(n84), .TI(N57), .TE(N58), .CP(clk), 
        .Q(mm[2]), .QN(n115) );
  GTECH_FJK1S mm_tens_reg_0_ ( .J(n84), .K(n84), .TI(N71), .TE(N74), .CP(clk), 
        .Q(mm[4]), .QN(n113) );
  GTECH_FJK1S mm_tens_reg_2_ ( .J(n84), .K(n84), .TI(N73), .TE(N74), .CP(clk), 
        .Q(mm[6]), .QN(n112) );
  GTECH_FJK1S mm_tens_reg_3_ ( .J(n84), .K(n84), .TI(N75), .TE(N74), .CP(clk), 
        .Q(mm[7]), .QN(n6) );
  GTECH_FJK1S mm_tens_reg_1_ ( .J(n84), .K(n84), .TI(N72), .TE(N74), .CP(clk), 
        .Q(mm[5]), .QN(n7) );
  GTECH_FJK1S hh_tens_reg_0_ ( .J(n84), .K(n84), .TI(N110), .TE(N115), .CP(clk), .Q(hh[4]), .QN(n122) );
  GTECH_FJK1S hh_tens_reg_1_ ( .J(n84), .K(n84), .TI(N112), .TE(N115), .CP(clk), .Q(hh[5]), .QN(n8) );
  GTECH_FJK1S hh_tens_reg_2_ ( .J(n84), .K(n84), .TI(N114), .TE(N115), .CP(clk), .Q(hh[6]), .QN(n9) );
  GTECH_FJK1S hh_tens_reg_3_ ( .J(n84), .K(n84), .TI(N116), .TE(N115), .CP(clk), .Q(hh[7]), .QN(n10) );
  GTECH_FJK1S hh_ones_reg_0_ ( .J(n84), .K(n84), .TI(N88), .TE(N91), .CP(clk), 
        .Q(hh[0]), .QN(n11) );
  GTECH_FJK1S hh_ones_reg_1_ ( .J(n84), .K(n84), .TI(N89), .TE(N91), .CP(clk), 
        .Q(hh[1]), .QN(n111) );
  GTECH_FJK1S hh_ones_reg_2_ ( .J(n84), .K(n84), .TI(N90), .TE(N91), .CP(clk), 
        .Q(hh[2]), .QN(n110) );
  GTECH_FJK1S hh_ones_reg_3_ ( .J(n84), .K(n84), .TI(N92), .TE(N91), .CP(clk), 
        .Q(hh[3]), .QN(n109) );
  GTECH_FJK1S pm_temp_reg ( .J(n84), .K(n84), .TI(N122), .TE(N121), .CP(clk), 
        .Q(pm), .QN(n12) );
  GTECH_ZERO U131 ( .Z(n84) );
  GTECH_AND2 U132 ( .A(n123), .B(n124), .Z(N92) );
  GTECH_XOR2 U133 ( .A(n125), .B(n109), .Z(n123) );
  GTECH_OR2 U134 ( .A(n110), .B(n126), .Z(n125) );
  GTECH_OR2 U135 ( .A(n127), .B(reset), .Z(N91) );
  GTECH_AND2 U136 ( .A(n128), .B(n124), .Z(N90) );
  GTECH_NOT U137 ( .A(n129), .Z(n124) );
  GTECH_XOR2 U138 ( .A(n126), .B(n110), .Z(n128) );
  GTECH_OR2 U139 ( .A(n11), .B(n111), .Z(n126) );
  GTECH_OAI21 U140 ( .A(n130), .B(n129), .C(n131), .Z(N89) );
  GTECH_XOR2 U141 ( .A(n132), .B(n111), .Z(n130) );
  GTECH_OAI22 U142 ( .A(n133), .B(n134), .C(n132), .D(n129), .Z(N88) );
  GTECH_NAND3 U143 ( .A(n134), .B(n135), .C(n127), .Z(n129) );
  GTECH_MUX2 U144 ( .A(n136), .B(n137), .S(n6), .Z(N75) );
  GTECH_AND2 U145 ( .A(n138), .B(n139), .Z(n137) );
  GTECH_OAI21 U146 ( .A(n140), .B(n139), .C(n141), .Z(n136) );
  GTECH_NOT U147 ( .A(n142), .Z(N73) );
  GTECH_MUX2 U148 ( .A(n141), .B(n143), .S(n112), .Z(n142) );
  GTECH_OR2 U149 ( .A(n7), .B(n144), .Z(n143) );
  GTECH_OAI21 U150 ( .A(n7), .B(n113), .C(n145), .Z(n141) );
  GTECH_NOT U151 ( .A(n140), .Z(n145) );
  GTECH_MUX2 U152 ( .A(N71), .B(n138), .S(n7), .Z(N72) );
  GTECH_NOT U153 ( .A(n144), .Z(n138) );
  GTECH_OR2 U154 ( .A(n113), .B(n140), .Z(n144) );
  GTECH_NOT U155 ( .A(n146), .Z(N71) );
  GTECH_OR2 U156 ( .A(n140), .B(n147), .Z(n146) );
  GTECH_NAND3 U157 ( .A(n148), .B(n131), .C(n149), .Z(n140) );
  GTECH_MUX2 U158 ( .A(n150), .B(n151), .S(n114), .Z(N59) );
  GTECH_AND2 U159 ( .A(n152), .B(n153), .Z(n151) );
  GTECH_OAI21 U160 ( .A(n153), .B(n154), .C(n155), .Z(n150) );
  GTECH_NOT U161 ( .A(n156), .Z(n155) );
  GTECH_NOT U162 ( .A(n115), .Z(n153) );
  GTECH_MUX2 U163 ( .A(n156), .B(n152), .S(n115), .Z(N57) );
  GTECH_NOT U164 ( .A(n157), .Z(n152) );
  GTECH_NAND3 U165 ( .A(n158), .B(n159), .C(n160), .Z(n157) );
  GTECH_OAI21 U166 ( .A(n158), .B(n154), .C(n161), .Z(n156) );
  GTECH_NOT U167 ( .A(n116), .Z(n158) );
  GTECH_MUX2 U168 ( .A(N55), .B(n162), .S(n116), .Z(N56) );
  GTECH_AND2 U169 ( .A(n160), .B(n159), .Z(n162) );
  GTECH_NOT U170 ( .A(n154), .Z(n160) );
  GTECH_NOT U171 ( .A(n161), .Z(N55) );
  GTECH_OR2 U172 ( .A(n154), .B(n159), .Z(n161) );
  GTECH_OR2 U173 ( .A(N74), .B(n163), .Z(n154) );
  GTECH_OR2 U174 ( .A(n149), .B(reset), .Z(N74) );
  GTECH_MUX2 U175 ( .A(n164), .B(n165), .S(ss[7]), .Z(N43) );
  GTECH_OAI21 U176 ( .A(ss[6]), .B(n166), .C(n167), .Z(n165) );
  GTECH_NOT U177 ( .A(n168), .Z(n167) );
  GTECH_AND2 U178 ( .A(n169), .B(ss[6]), .Z(n164) );
  GTECH_MUX2 U179 ( .A(n170), .B(n168), .S(ss[6]), .Z(N41) );
  GTECH_OAI21 U180 ( .A(ss[5]), .B(n166), .C(n171), .Z(n168) );
  GTECH_AND2 U181 ( .A(ss[5]), .B(n169), .Z(n170) );
  GTECH_MUX2 U182 ( .A(n169), .B(N39), .S(ss[5]), .Z(N40) );
  GTECH_NOT U183 ( .A(n172), .Z(n169) );
  GTECH_OR2 U184 ( .A(n173), .B(n166), .Z(n172) );
  GTECH_NOT U185 ( .A(ss[4]), .Z(n173) );
  GTECH_NOT U186 ( .A(n171), .Z(N39) );
  GTECH_OR2 U187 ( .A(ss[4]), .B(n166), .Z(n171) );
  GTECH_OR2 U188 ( .A(N58), .B(n174), .Z(n166) );
  GTECH_OR2 U189 ( .A(n175), .B(reset), .Z(N58) );
  GTECH_MUX2 U190 ( .A(n176), .B(n177), .S(ss[3]), .Z(N26) );
  GTECH_OAI21 U191 ( .A(ss[2]), .B(n178), .C(n179), .Z(n177) );
  GTECH_NOT U192 ( .A(n180), .Z(n179) );
  GTECH_AND2 U193 ( .A(ss[2]), .B(n181), .Z(n176) );
  GTECH_OR2 U194 ( .A(ena), .B(reset), .Z(N25) );
  GTECH_MUX2 U195 ( .A(n181), .B(n180), .S(ss[2]), .Z(N24) );
  GTECH_OAI21 U196 ( .A(ss[1]), .B(n178), .C(n182), .Z(n180) );
  GTECH_NOT U197 ( .A(n183), .Z(n181) );
  GTECH_NAND3 U198 ( .A(n184), .B(ss[0]), .C(ss[1]), .Z(n183) );
  GTECH_MUX2 U199 ( .A(n185), .B(N22), .S(ss[1]), .Z(N23) );
  GTECH_AND2 U200 ( .A(n184), .B(ss[0]), .Z(n185) );
  GTECH_NOT U201 ( .A(n178), .Z(n184) );
  GTECH_NOT U202 ( .A(n182), .Z(N22) );
  GTECH_OR2 U203 ( .A(ss[0]), .B(n178), .Z(n182) );
  GTECH_OR2 U204 ( .A(N42), .B(n186), .Z(n178) );
  GTECH_NOT U205 ( .A(ena), .Z(n186) );
  GTECH_OR2 U206 ( .A(n187), .B(reset), .Z(N42) );
  GTECH_AND2 U207 ( .A(n188), .B(n12), .Z(N122) );
  GTECH_OR2 U208 ( .A(n188), .B(reset), .Z(N121) );
  GTECH_AND5 U209 ( .A(n109), .B(n189), .C(n8), .D(n127), .E(n9), .Z(n188) );
  GTECH_NOT U210 ( .A(n133), .Z(n127) );
  GTECH_AND5 U211 ( .A(n10), .B(n111), .C(n110), .D(n132), .E(n190), .Z(n189)
         );
  GTECH_AND2 U212 ( .A(n191), .B(n192), .Z(N116) );
  GTECH_XOR2 U213 ( .A(n193), .B(n10), .Z(n191) );
  GTECH_OR2 U214 ( .A(n9), .B(n194), .Z(n193) );
  GTECH_NAND3 U215 ( .A(n135), .B(n131), .C(n134), .Z(N115) );
  GTECH_NAND8 U216 ( .A(n190), .B(n195), .C(n196), .D(n10), .E(n109), .F(n11), 
        .G(n9), .H(n8), .Z(n134) );
  GTECH_AND_NOT U217 ( .A(n110), .B(n111), .Z(n196) );
  GTECH_AND2 U218 ( .A(n197), .B(n192), .Z(N114) );
  GTECH_XOR2 U219 ( .A(n194), .B(n9), .Z(n197) );
  GTECH_OR2 U220 ( .A(n122), .B(n8), .Z(n194) );
  GTECH_AND2 U221 ( .A(n192), .B(n198), .Z(N112) );
  GTECH_XOR2 U222 ( .A(n8), .B(n122), .Z(n198) );
  GTECH_NOT U223 ( .A(n199), .Z(n192) );
  GTECH_OAI21 U224 ( .A(n199), .B(n190), .C(n131), .Z(N110) );
  GTECH_NOT U225 ( .A(reset), .Z(n131) );
  GTECH_NOT U226 ( .A(n122), .Z(n190) );
  GTECH_OR2 U227 ( .A(n133), .B(n135), .Z(n199) );
  GTECH_NAND5 U228 ( .A(n200), .B(n132), .C(n195), .D(n111), .E(n110), .Z(n135) );
  GTECH_NOT U229 ( .A(n148), .Z(n195) );
  GTECH_NOT U230 ( .A(n11), .Z(n132) );
  GTECH_NOT U231 ( .A(n109), .Z(n200) );
  GTECH_OR2 U232 ( .A(reset), .B(n148), .Z(n133) );
  GTECH_NAND5 U233 ( .A(n139), .B(n147), .C(n149), .D(n7), .E(n6), .Z(n148) );
  GTECH_NOT U234 ( .A(n201), .Z(n149) );
  GTECH_NAND5 U235 ( .A(n202), .B(n159), .C(n175), .D(n116), .E(n115), .Z(n201) );
  GTECH_NOT U236 ( .A(n163), .Z(n175) );
  GTECH_NAND5 U237 ( .A(n203), .B(n204), .C(n187), .D(ss[6]), .E(ss[4]), .Z(
        n163) );
  GTECH_NOT U238 ( .A(n174), .Z(n187) );
  GTECH_NAND5 U239 ( .A(n205), .B(n206), .C(ena), .D(ss[3]), .E(ss[0]), .Z(
        n174) );
  GTECH_NOT U240 ( .A(ss[2]), .Z(n206) );
  GTECH_NOT U241 ( .A(ss[1]), .Z(n205) );
  GTECH_NOT U242 ( .A(ss[7]), .Z(n204) );
  GTECH_NOT U243 ( .A(ss[5]), .Z(n203) );
  GTECH_NOT U244 ( .A(n5), .Z(n159) );
  GTECH_NOT U245 ( .A(n114), .Z(n202) );
  GTECH_NOT U246 ( .A(n113), .Z(n147) );
  GTECH_NOT U247 ( .A(n112), .Z(n139) );
endmodule

