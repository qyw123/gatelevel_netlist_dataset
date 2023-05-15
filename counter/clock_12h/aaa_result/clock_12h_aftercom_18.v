
module clock_12h ( clk, reset, ena, pm, hh, mm, ss );
  output [7:0] hh;
  output [7:0] mm;
  output [7:0] ss;
  input clk, reset, ena;
  output pm;
  wire   N22, N23, N24, N25, N26, N39, N40, N41, N42, N43, N55, N56, N57, N58,
         N59, N71, N72, N73, N74, N75, N88, N89, N90, N91, N92, N110, N112,
         N114, N115, N116, N121, N122, n4, n5, n6, n7, n8, n9, n10, n84, n109,
         n110, n111, n112, n113, n114, n115, n116, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203;

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
  GTECH_FJK1S ss_tens_reg_3_ ( .J(n84), .K(n84), .TI(N43), .TE(N42), .CP(clk), 
        .Q(ss[7]) );
  GTECH_FJK1S ss_tens_reg_1_ ( .J(n84), .K(n84), .TI(N40), .TE(N42), .CP(clk), 
        .Q(ss[5]) );
  GTECH_FJK1S ss_tens_reg_2_ ( .J(n84), .K(n84), .TI(N41), .TE(N42), .CP(clk), 
        .Q(ss[6]) );
  GTECH_FJK1S mm_ones_reg_0_ ( .J(n84), .K(n84), .TI(N55), .TE(N58), .CP(clk), 
        .Q(mm[0]), .QN(n4) );
  GTECH_FJK1S mm_ones_reg_3_ ( .J(n84), .K(n84), .TI(N59), .TE(N58), .CP(clk), 
        .Q(mm[3]), .QN(n114) );
  GTECH_FJK1S mm_ones_reg_1_ ( .J(n84), .K(n84), .TI(N56), .TE(N58), .CP(clk), 
        .Q(mm[1]), .QN(n116) );
  GTECH_FJK1S mm_ones_reg_2_ ( .J(n84), .K(n84), .TI(N57), .TE(N58), .CP(clk), 
        .Q(mm[2]), .QN(n115) );
  GTECH_FJK1S mm_tens_reg_0_ ( .J(n84), .K(n84), .TI(N71), .TE(N74), .CP(clk), 
        .Q(mm[4]), .QN(n5) );
  GTECH_FJK1S mm_tens_reg_3_ ( .J(n84), .K(n84), .TI(N75), .TE(N74), .CP(clk), 
        .Q(mm[7]), .QN(n111) );
  GTECH_FJK1S mm_tens_reg_1_ ( .J(n84), .K(n84), .TI(N72), .TE(N74), .CP(clk), 
        .Q(mm[5]), .QN(n113) );
  GTECH_FJK1S mm_tens_reg_2_ ( .J(n84), .K(n84), .TI(N73), .TE(N74), .CP(clk), 
        .Q(mm[6]), .QN(n112) );
  GTECH_FJK1S hh_tens_reg_0_ ( .J(n84), .K(n84), .TI(N110), .TE(N115), .CP(clk), .Q(hh[4]), .QN(n6) );
  GTECH_FJK1S hh_tens_reg_2_ ( .J(n84), .K(n84), .TI(N114), .TE(N115), .CP(clk), .Q(hh[6]), .QN(n7) );
  GTECH_FJK1S hh_tens_reg_3_ ( .J(n84), .K(n84), .TI(N116), .TE(N115), .CP(clk), .Q(hh[7]), .QN(n8) );
  GTECH_FJK1S hh_ones_reg_0_ ( .J(n84), .K(n84), .TI(N88), .TE(N91), .CP(clk), 
        .Q(hh[0]), .QN(n123) );
  GTECH_FJK1S hh_ones_reg_1_ ( .J(n84), .K(n84), .TI(N89), .TE(N91), .CP(clk), 
        .Q(hh[1]), .QN(n110) );
  GTECH_FJK1S hh_ones_reg_2_ ( .J(n84), .K(n84), .TI(N90), .TE(N91), .CP(clk), 
        .Q(hh[2]), .QN(n109) );
  GTECH_FJK1S hh_ones_reg_3_ ( .J(n84), .K(n84), .TI(N92), .TE(N91), .CP(clk), 
        .Q(hh[3]), .QN(n9) );
  GTECH_FJK1S hh_tens_reg_1_ ( .J(n84), .K(n84), .TI(N112), .TE(N115), .CP(clk), .Q(hh[5]), .QN(n10) );
  GTECH_FJK1S pm_temp_reg ( .J(n84), .K(n84), .TI(N122), .TE(N121), .CP(clk), 
        .Q(pm) );
  GTECH_ZERO U132 ( .Z(n84) );
  GTECH_AND_NOT U133 ( .A(n124), .B(n125), .Z(N92) );
  GTECH_XNOR2 U134 ( .A(n126), .B(n9), .Z(n124) );
  GTECH_NOR2 U135 ( .A(n109), .B(n127), .Z(n126) );
  GTECH_NAND2 U136 ( .A(n128), .B(n129), .Z(N91) );
  GTECH_AND_NOT U137 ( .A(n130), .B(n125), .Z(N90) );
  GTECH_XOR2 U138 ( .A(n127), .B(n109), .Z(n130) );
  GTECH_NAND2 U139 ( .A(n131), .B(n132), .Z(n127) );
  GTECH_OAI21 U140 ( .A(n133), .B(n125), .C(n128), .Z(N89) );
  GTECH_XOR2 U141 ( .A(n132), .B(n123), .Z(n133) );
  GTECH_OAI22 U142 ( .A(n129), .B(n134), .C(n131), .D(n125), .Z(N88) );
  GTECH_NAND3 U143 ( .A(n135), .B(n134), .C(n136), .Z(n125) );
  GTECH_AND_NOT U144 ( .A(n137), .B(n138), .Z(N75) );
  GTECH_OAI21 U145 ( .A(n111), .B(n139), .C(n140), .Z(n137) );
  GTECH_NOR2 U146 ( .A(n141), .B(n112), .Z(n139) );
  GTECH_AND_NOT U147 ( .A(n142), .B(n138), .Z(N73) );
  GTECH_XOR2 U148 ( .A(n141), .B(n112), .Z(n142) );
  GTECH_AND_NOT U149 ( .A(n143), .B(n138), .Z(N72) );
  GTECH_OA21 U150 ( .A(n144), .B(n145), .C(n141), .Z(n143) );
  GTECH_NAND2 U151 ( .A(n144), .B(n145), .Z(n141) );
  GTECH_NOT U152 ( .A(n113), .Z(n144) );
  GTECH_AND_NOT U153 ( .A(n5), .B(n138), .Z(N71) );
  GTECH_NAND3 U154 ( .A(n146), .B(n128), .C(n147), .Z(n138) );
  GTECH_AND_NOT U155 ( .A(n148), .B(n149), .Z(N59) );
  GTECH_XNOR2 U156 ( .A(n150), .B(n114), .Z(n148) );
  GTECH_NOR2 U157 ( .A(n115), .B(n151), .Z(n150) );
  GTECH_AND_NOT U158 ( .A(n152), .B(n149), .Z(N57) );
  GTECH_XOR2 U159 ( .A(n151), .B(n115), .Z(n152) );
  GTECH_AND_NOT U160 ( .A(n153), .B(n149), .Z(N56) );
  GTECH_OA21 U161 ( .A(n154), .B(n155), .C(n151), .Z(n153) );
  GTECH_NAND2 U162 ( .A(n154), .B(n155), .Z(n151) );
  GTECH_NOT U163 ( .A(n116), .Z(n154) );
  GTECH_AND_NOT U164 ( .A(n4), .B(n149), .Z(N55) );
  GTECH_NAND2 U165 ( .A(n156), .B(n157), .Z(n149) );
  GTECH_NOT U166 ( .A(N74), .Z(n157) );
  GTECH_NAND2 U167 ( .A(n128), .B(n158), .Z(N74) );
  GTECH_NOR2 U168 ( .A(n159), .B(n160), .Z(N43) );
  GTECH_MUX2 U169 ( .A(n161), .B(n162), .S(ss[7]), .Z(n160) );
  GTECH_AND_NOT U170 ( .A(ss[6]), .B(n163), .Z(n162) );
  GTECH_NAND2 U171 ( .A(ss[6]), .B(ss[4]), .Z(n161) );
  GTECH_AND_NOT U172 ( .A(n164), .B(n165), .Z(N41) );
  GTECH_XOR2 U173 ( .A(n163), .B(ss[6]), .Z(n165) );
  GTECH_AND_NOT U174 ( .A(n166), .B(n159), .Z(N40) );
  GTECH_OA21 U175 ( .A(ss[4]), .B(ss[5]), .C(n163), .Z(n166) );
  GTECH_NAND2 U176 ( .A(ss[5]), .B(ss[4]), .Z(n163) );
  GTECH_AND_NOT U177 ( .A(n164), .B(ss[4]), .Z(N39) );
  GTECH_NOT U178 ( .A(n159), .Z(n164) );
  GTECH_NAND2 U179 ( .A(n167), .B(n168), .Z(n159) );
  GTECH_NOT U180 ( .A(N58), .Z(n168) );
  GTECH_NAND2 U181 ( .A(n128), .B(n169), .Z(N58) );
  GTECH_OAI22 U182 ( .A(n170), .B(n171), .C(n172), .D(n173), .Z(N26) );
  GTECH_MUX2 U183 ( .A(n170), .B(n174), .S(ss[2]), .Z(n173) );
  GTECH_OR_NOT U184 ( .A(n175), .B(n170), .Z(n174) );
  GTECH_NOT U185 ( .A(ss[3]), .Z(n170) );
  GTECH_NAND2 U186 ( .A(n128), .B(n176), .Z(N25) );
  GTECH_NOT U187 ( .A(ena), .Z(n176) );
  GTECH_MUX2 U188 ( .A(n177), .B(n178), .S(ss[2]), .Z(N24) );
  GTECH_AND_NOT U189 ( .A(n179), .B(n175), .Z(n177) );
  GTECH_OA21 U190 ( .A(ss[0]), .B(ss[1]), .C(n178), .Z(N23) );
  GTECH_NOT U191 ( .A(n171), .Z(n178) );
  GTECH_NAND2 U192 ( .A(n179), .B(n175), .Z(n171) );
  GTECH_NAND2 U193 ( .A(ss[1]), .B(ss[0]), .Z(n175) );
  GTECH_AND_NOT U194 ( .A(n179), .B(ss[0]), .Z(N22) );
  GTECH_NOT U195 ( .A(n172), .Z(n179) );
  GTECH_NAND2 U196 ( .A(ena), .B(n180), .Z(n172) );
  GTECH_NOT U197 ( .A(N42), .Z(n180) );
  GTECH_NAND2 U198 ( .A(n128), .B(n181), .Z(N42) );
  GTECH_AND_NOT U199 ( .A(n182), .B(pm), .Z(N122) );
  GTECH_NOT U200 ( .A(n183), .Z(n182) );
  GTECH_NAND2 U201 ( .A(n128), .B(n183), .Z(N121) );
  GTECH_NAND4 U202 ( .A(n136), .B(n110), .C(n184), .D(n131), .Z(n183) );
  GTECH_AND_NOT U203 ( .A(n185), .B(n186), .Z(N116) );
  GTECH_XNOR2 U204 ( .A(n187), .B(n8), .Z(n185) );
  GTECH_NOR2 U205 ( .A(n7), .B(n188), .Z(n187) );
  GTECH_NAND3 U206 ( .A(n134), .B(n128), .C(n135), .Z(N115) );
  GTECH_NAND4 U207 ( .A(n123), .B(n184), .C(n189), .D(n132), .Z(n134) );
  GTECH_NOT U208 ( .A(n110), .Z(n132) );
  GTECH_AND3 U209 ( .A(n8), .B(n7), .C(n190), .Z(n184) );
  GTECH_AND4 U210 ( .A(n191), .B(n109), .C(n10), .D(n9), .Z(n190) );
  GTECH_AND_NOT U211 ( .A(n192), .B(n186), .Z(N114) );
  GTECH_XOR2 U212 ( .A(n188), .B(n7), .Z(n192) );
  GTECH_AND_NOT U213 ( .A(n193), .B(n186), .Z(N112) );
  GTECH_OA21 U214 ( .A(n194), .B(n191), .C(n188), .Z(n193) );
  GTECH_NAND2 U215 ( .A(n194), .B(n191), .Z(n188) );
  GTECH_NOT U216 ( .A(n10), .Z(n194) );
  GTECH_OAI21 U217 ( .A(n186), .B(n191), .C(n128), .Z(N110) );
  GTECH_NOT U218 ( .A(n6), .Z(n191) );
  GTECH_NAND2 U219 ( .A(n195), .B(n136), .Z(n186) );
  GTECH_NOT U220 ( .A(n129), .Z(n136) );
  GTECH_NAND2 U221 ( .A(n189), .B(n128), .Z(n129) );
  GTECH_NOT U222 ( .A(reset), .Z(n128) );
  GTECH_NOT U223 ( .A(n135), .Z(n195) );
  GTECH_NAND5 U224 ( .A(n131), .B(n196), .C(n189), .D(n110), .E(n109), .Z(n135) );
  GTECH_NOT U225 ( .A(n146), .Z(n189) );
  GTECH_NAND3 U226 ( .A(n147), .B(n197), .C(n113), .Z(n146) );
  GTECH_NOT U227 ( .A(n140), .Z(n197) );
  GTECH_NAND3 U228 ( .A(n198), .B(n145), .C(n111), .Z(n140) );
  GTECH_NOT U229 ( .A(n5), .Z(n145) );
  GTECH_NOT U230 ( .A(n112), .Z(n198) );
  GTECH_NOT U231 ( .A(n158), .Z(n147) );
  GTECH_NAND5 U232 ( .A(n199), .B(n155), .C(n156), .D(n116), .E(n115), .Z(n158) );
  GTECH_NOT U233 ( .A(n169), .Z(n156) );
  GTECH_NAND5 U234 ( .A(n200), .B(n201), .C(n167), .D(ss[6]), .E(ss[4]), .Z(
        n169) );
  GTECH_NOT U235 ( .A(n181), .Z(n167) );
  GTECH_NAND5 U236 ( .A(n202), .B(n203), .C(ena), .D(ss[3]), .E(ss[0]), .Z(
        n181) );
  GTECH_NOT U237 ( .A(ss[2]), .Z(n203) );
  GTECH_NOT U238 ( .A(ss[1]), .Z(n202) );
  GTECH_NOT U239 ( .A(ss[7]), .Z(n201) );
  GTECH_NOT U240 ( .A(ss[5]), .Z(n200) );
  GTECH_NOT U241 ( .A(n4), .Z(n155) );
  GTECH_NOT U242 ( .A(n114), .Z(n199) );
  GTECH_NOT U243 ( .A(n9), .Z(n196) );
  GTECH_NOT U244 ( .A(n123), .Z(n131) );
endmodule

