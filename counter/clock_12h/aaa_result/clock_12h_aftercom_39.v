
module clock_12h ( clk, reset, ena, pm, hh, mm, ss );
  output [7:0] hh;
  output [7:0] mm;
  output [7:0] ss;
  input clk, reset, ena;
  output pm;
  wire   N22, N23, N24, N25, N26, N39, N40, N41, N42, N43, N55, N56, N57, N58,
         N59, N71, N72, N73, N74, N75, N88, N89, N90, N91, N92, N110, N112,
         N114, N115, N116, N121, N122, n3, n4, n5, n6, n7, n8, n82, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209;

  GTECH_FJK1S ss_ones_reg_0_ ( .J(n82), .K(n82), .TI(N22), .TE(N25), .CP(clk), 
        .Q(ss[0]) );
  GTECH_FJK1S ss_ones_reg_3_ ( .J(n82), .K(n82), .TI(N26), .TE(N25), .CP(clk), 
        .Q(ss[3]) );
  GTECH_FJK1S ss_ones_reg_1_ ( .J(n82), .K(n82), .TI(N23), .TE(N25), .CP(clk), 
        .Q(ss[1]) );
  GTECH_FJK1S ss_ones_reg_2_ ( .J(n82), .K(n82), .TI(N24), .TE(N25), .CP(clk), 
        .Q(ss[2]) );
  GTECH_FJK1S ss_tens_reg_0_ ( .J(n82), .K(n82), .TI(N39), .TE(N42), .CP(clk), 
        .Q(ss[4]) );
  GTECH_FJK1S ss_tens_reg_3_ ( .J(n82), .K(n82), .TI(N43), .TE(N42), .CP(clk), 
        .Q(ss[7]) );
  GTECH_FJK1S ss_tens_reg_1_ ( .J(n82), .K(n82), .TI(N40), .TE(N42), .CP(clk), 
        .Q(ss[5]) );
  GTECH_FJK1S ss_tens_reg_2_ ( .J(n82), .K(n82), .TI(N41), .TE(N42), .CP(clk), 
        .Q(ss[6]) );
  GTECH_FJK1S mm_ones_reg_0_ ( .J(n82), .K(n82), .TI(N55), .TE(N58), .CP(clk), 
        .Q(mm[0]), .QN(n3) );
  GTECH_FJK1S mm_ones_reg_3_ ( .J(n82), .K(n82), .TI(N59), .TE(N58), .CP(clk), 
        .Q(mm[3]), .QN(n114) );
  GTECH_FJK1S mm_ones_reg_1_ ( .J(n82), .K(n82), .TI(N56), .TE(N58), .CP(clk), 
        .Q(mm[1]), .QN(n116) );
  GTECH_FJK1S mm_ones_reg_2_ ( .J(n82), .K(n82), .TI(N57), .TE(N58), .CP(clk), 
        .Q(mm[2]), .QN(n115) );
  GTECH_FJK1S mm_tens_reg_0_ ( .J(n82), .K(n82), .TI(N71), .TE(N74), .CP(clk), 
        .Q(mm[4]), .QN(n113) );
  GTECH_FJK1S mm_tens_reg_3_ ( .J(n82), .K(n82), .TI(N75), .TE(N74), .CP(clk), 
        .Q(mm[7]), .QN(n110) );
  GTECH_FJK1S mm_tens_reg_1_ ( .J(n82), .K(n82), .TI(N72), .TE(N74), .CP(clk), 
        .Q(mm[5]), .QN(n112) );
  GTECH_FJK1S mm_tens_reg_2_ ( .J(n82), .K(n82), .TI(N73), .TE(N74), .CP(clk), 
        .Q(mm[6]), .QN(n111) );
  GTECH_FJK1S hh_tens_reg_0_ ( .J(n82), .K(n82), .TI(N110), .TE(N115), .CP(clk), .Q(hh[4]), .QN(n4) );
  GTECH_FJK1S hh_tens_reg_2_ ( .J(n82), .K(n82), .TI(N114), .TE(N115), .CP(clk), .Q(hh[6]), .QN(n5) );
  GTECH_FJK1S hh_tens_reg_3_ ( .J(n82), .K(n82), .TI(N116), .TE(N115), .CP(clk), .Q(hh[7]), .QN(n6) );
  GTECH_FJK1S hh_ones_reg_0_ ( .J(n82), .K(n82), .TI(N88), .TE(N91), .CP(clk), 
        .Q(hh[0]), .QN(n108) );
  GTECH_FJK1S hh_ones_reg_1_ ( .J(n82), .K(n82), .TI(N89), .TE(N91), .CP(clk), 
        .Q(hh[1]), .QN(n109) );
  GTECH_FJK1S hh_ones_reg_2_ ( .J(n82), .K(n82), .TI(N90), .TE(N91), .CP(clk), 
        .Q(hh[2]), .QN(n107) );
  GTECH_FJK1S hh_ones_reg_3_ ( .J(n82), .K(n82), .TI(N92), .TE(N91), .CP(clk), 
        .Q(hh[3]), .QN(n7) );
  GTECH_FJK1S hh_tens_reg_1_ ( .J(n82), .K(n82), .TI(N112), .TE(N115), .CP(clk), .Q(hh[5]), .QN(n8) );
  GTECH_FJK1S pm_temp_reg ( .J(n82), .K(n82), .TI(N122), .TE(N121), .CP(clk), 
        .Q(pm) );
  GTECH_ZERO U132 ( .Z(n82) );
  GTECH_AND_NOT U133 ( .A(n124), .B(n125), .Z(N92) );
  GTECH_XOR2 U134 ( .A(n126), .B(n7), .Z(n124) );
  GTECH_OR2 U135 ( .A(n107), .B(n127), .Z(n126) );
  GTECH_NAND2 U136 ( .A(n128), .B(n129), .Z(N91) );
  GTECH_AND_NOT U137 ( .A(n130), .B(n125), .Z(N90) );
  GTECH_XOR2 U138 ( .A(n127), .B(n107), .Z(n130) );
  GTECH_NAND2 U139 ( .A(n131), .B(n132), .Z(n127) );
  GTECH_OAI21 U140 ( .A(n133), .B(n125), .C(n128), .Z(N89) );
  GTECH_XOR2 U141 ( .A(n132), .B(n109), .Z(n133) );
  GTECH_OAI2N2 U142 ( .A(n132), .B(n125), .C(n134), .D(n135), .Z(N88) );
  GTECH_NOT U143 ( .A(n136), .Z(n134) );
  GTECH_NAND3 U144 ( .A(n137), .B(n136), .C(n135), .Z(n125) );
  GTECH_AND_NOT U145 ( .A(n138), .B(n139), .Z(N75) );
  GTECH_OAI21 U146 ( .A(n110), .B(n140), .C(n141), .Z(n138) );
  GTECH_NOR2 U147 ( .A(n142), .B(n111), .Z(n140) );
  GTECH_AND_NOT U148 ( .A(n143), .B(n139), .Z(N73) );
  GTECH_XOR2 U149 ( .A(n142), .B(n111), .Z(n143) );
  GTECH_AND_NOT U150 ( .A(n144), .B(n139), .Z(N72) );
  GTECH_OA21 U151 ( .A(n145), .B(n146), .C(n142), .Z(n144) );
  GTECH_NAND2 U152 ( .A(n145), .B(n146), .Z(n142) );
  GTECH_NOT U153 ( .A(n112), .Z(n145) );
  GTECH_AND_NOT U154 ( .A(n113), .B(n139), .Z(N71) );
  GTECH_NAND3 U155 ( .A(n147), .B(n128), .C(n148), .Z(n139) );
  GTECH_OAI2N2 U156 ( .A(n149), .B(n150), .C(n151), .D(n152), .Z(N59) );
  GTECH_MUX2 U157 ( .A(n153), .B(n154), .S(n114), .Z(n150) );
  GTECH_OR_NOT U158 ( .A(n155), .B(n153), .Z(n154) );
  GTECH_NOT U159 ( .A(n115), .Z(n153) );
  GTECH_MUX2 U160 ( .A(n151), .B(n156), .S(n115), .Z(N57) );
  GTECH_AND_NOT U161 ( .A(n157), .B(n155), .Z(n156) );
  GTECH_OA21 U162 ( .A(n158), .B(n159), .C(n151), .Z(N56) );
  GTECH_NOT U163 ( .A(n160), .Z(n151) );
  GTECH_NAND2 U164 ( .A(n157), .B(n155), .Z(n160) );
  GTECH_NAND2 U165 ( .A(n158), .B(n159), .Z(n155) );
  GTECH_NOT U166 ( .A(n149), .Z(n157) );
  GTECH_NOT U167 ( .A(n116), .Z(n158) );
  GTECH_AND_NOT U168 ( .A(n3), .B(n149), .Z(N55) );
  GTECH_NAND2 U169 ( .A(n161), .B(n162), .Z(n149) );
  GTECH_NOT U170 ( .A(N74), .Z(n162) );
  GTECH_NAND2 U171 ( .A(n128), .B(n163), .Z(N74) );
  GTECH_NOR2 U172 ( .A(n164), .B(n165), .Z(N43) );
  GTECH_MUX2 U173 ( .A(n166), .B(n167), .S(ss[7]), .Z(n165) );
  GTECH_AND_NOT U174 ( .A(ss[6]), .B(n168), .Z(n167) );
  GTECH_NAND2 U175 ( .A(ss[6]), .B(ss[4]), .Z(n166) );
  GTECH_AND_NOT U176 ( .A(n169), .B(n170), .Z(N41) );
  GTECH_XOR2 U177 ( .A(n168), .B(ss[6]), .Z(n170) );
  GTECH_AND_NOT U178 ( .A(n171), .B(n164), .Z(N40) );
  GTECH_OA21 U179 ( .A(ss[4]), .B(ss[5]), .C(n168), .Z(n171) );
  GTECH_NAND2 U180 ( .A(ss[5]), .B(ss[4]), .Z(n168) );
  GTECH_AND_NOT U181 ( .A(n169), .B(ss[4]), .Z(N39) );
  GTECH_NOT U182 ( .A(n164), .Z(n169) );
  GTECH_NAND2 U183 ( .A(n172), .B(n173), .Z(n164) );
  GTECH_NOT U184 ( .A(N58), .Z(n173) );
  GTECH_NAND2 U185 ( .A(n128), .B(n174), .Z(N58) );
  GTECH_OAI2N2 U186 ( .A(n175), .B(n176), .C(n177), .D(ss[3]), .Z(N26) );
  GTECH_MUX2 U187 ( .A(n178), .B(n179), .S(ss[2]), .Z(n176) );
  GTECH_OR_NOT U188 ( .A(n180), .B(n178), .Z(n179) );
  GTECH_NOT U189 ( .A(ss[3]), .Z(n178) );
  GTECH_NAND2 U190 ( .A(n128), .B(n181), .Z(N25) );
  GTECH_NOT U191 ( .A(ena), .Z(n181) );
  GTECH_MUX2 U192 ( .A(n182), .B(n177), .S(ss[2]), .Z(N24) );
  GTECH_AND_NOT U193 ( .A(n183), .B(n180), .Z(n182) );
  GTECH_OA21 U194 ( .A(ss[0]), .B(ss[1]), .C(n177), .Z(N23) );
  GTECH_NOT U195 ( .A(n184), .Z(n177) );
  GTECH_NAND2 U196 ( .A(n183), .B(n180), .Z(n184) );
  GTECH_NAND2 U197 ( .A(ss[1]), .B(ss[0]), .Z(n180) );
  GTECH_AND_NOT U198 ( .A(n183), .B(ss[0]), .Z(N22) );
  GTECH_NOT U199 ( .A(n175), .Z(n183) );
  GTECH_NAND2 U200 ( .A(ena), .B(n185), .Z(n175) );
  GTECH_NOT U201 ( .A(N42), .Z(n185) );
  GTECH_NAND2 U202 ( .A(n128), .B(n186), .Z(N42) );
  GTECH_AND_NOT U203 ( .A(n187), .B(pm), .Z(N122) );
  GTECH_NOT U204 ( .A(n188), .Z(n187) );
  GTECH_NAND2 U205 ( .A(n128), .B(n188), .Z(N121) );
  GTECH_NAND4 U206 ( .A(n189), .B(n8), .C(n135), .D(n190), .Z(n188) );
  GTECH_AND4 U207 ( .A(n7), .B(n6), .C(n5), .D(n191), .Z(n190) );
  GTECH_AND_NOT U208 ( .A(n192), .B(n193), .Z(N116) );
  GTECH_XOR2 U209 ( .A(n194), .B(n6), .Z(n192) );
  GTECH_OR2 U210 ( .A(n5), .B(n195), .Z(n194) );
  GTECH_NAND3 U211 ( .A(n136), .B(n128), .C(n137), .Z(N115) );
  GTECH_NAND5 U212 ( .A(n8), .B(n7), .C(n6), .D(n5), .E(n196), .Z(n136) );
  GTECH_AND5 U213 ( .A(n131), .B(n191), .C(n197), .D(n108), .E(n107), .Z(n196)
         );
  GTECH_NOT U214 ( .A(n109), .Z(n131) );
  GTECH_AND_NOT U215 ( .A(n198), .B(n193), .Z(N114) );
  GTECH_XOR2 U216 ( .A(n195), .B(n5), .Z(n198) );
  GTECH_AND_NOT U217 ( .A(n199), .B(n193), .Z(N112) );
  GTECH_OA21 U218 ( .A(n200), .B(n191), .C(n195), .Z(n199) );
  GTECH_NAND2 U219 ( .A(n191), .B(n200), .Z(n195) );
  GTECH_NOT U220 ( .A(n8), .Z(n200) );
  GTECH_OAI21 U221 ( .A(n193), .B(n191), .C(n128), .Z(N110) );
  GTECH_NOT U222 ( .A(n4), .Z(n191) );
  GTECH_NAND2 U223 ( .A(n201), .B(n135), .Z(n193) );
  GTECH_NOT U224 ( .A(n129), .Z(n135) );
  GTECH_NAND2 U225 ( .A(n197), .B(n128), .Z(n129) );
  GTECH_NOT U226 ( .A(reset), .Z(n128) );
  GTECH_NOT U227 ( .A(n137), .Z(n201) );
  GTECH_NAND3 U228 ( .A(n197), .B(n202), .C(n189), .Z(n137) );
  GTECH_NOT U229 ( .A(n203), .Z(n189) );
  GTECH_NAND3 U230 ( .A(n107), .B(n132), .C(n109), .Z(n203) );
  GTECH_NOT U231 ( .A(n108), .Z(n132) );
  GTECH_NOT U232 ( .A(n7), .Z(n202) );
  GTECH_NOT U233 ( .A(n147), .Z(n197) );
  GTECH_NAND3 U234 ( .A(n148), .B(n204), .C(n112), .Z(n147) );
  GTECH_NOT U235 ( .A(n141), .Z(n204) );
  GTECH_NAND3 U236 ( .A(n205), .B(n146), .C(n110), .Z(n141) );
  GTECH_NOT U237 ( .A(n113), .Z(n146) );
  GTECH_NOT U238 ( .A(n111), .Z(n205) );
  GTECH_NOT U239 ( .A(n163), .Z(n148) );
  GTECH_NAND5 U240 ( .A(n152), .B(n159), .C(n161), .D(n116), .E(n115), .Z(n163) );
  GTECH_NOT U241 ( .A(n174), .Z(n161) );
  GTECH_NAND5 U242 ( .A(n206), .B(n207), .C(n172), .D(ss[6]), .E(ss[4]), .Z(
        n174) );
  GTECH_NOT U243 ( .A(n186), .Z(n172) );
  GTECH_NAND5 U244 ( .A(n208), .B(n209), .C(ena), .D(ss[3]), .E(ss[0]), .Z(
        n186) );
  GTECH_NOT U245 ( .A(ss[2]), .Z(n209) );
  GTECH_NOT U246 ( .A(ss[1]), .Z(n208) );
  GTECH_NOT U247 ( .A(ss[7]), .Z(n207) );
  GTECH_NOT U248 ( .A(ss[5]), .Z(n206) );
  GTECH_NOT U249 ( .A(n3), .Z(n159) );
  GTECH_NOT U250 ( .A(n114), .Z(n152) );
endmodule

