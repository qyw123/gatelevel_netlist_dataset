
module clock_12h ( clk, reset, ena, pm, hh, mm, ss );
  output [7:0] hh;
  output [7:0] mm;
  output [7:0] ss;
  input clk, reset, ena;
  output pm;
  wire   N22, N23, N24, N25, N26, N39, N40, N41, N42, N43, N55, N56, N57, N58,
         N59, N71, N72, N73, N74, N75, N88, N89, N90, N91, N92, N110, N112,
         N114, N115, N116, N121, N122, n4, n5, n6, n7, n8, n9, n77, n78, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240;

  GTECH_FJK2S ss_ones_reg_0_ ( .J(n78), .K(n78), .TI(N22), .TE(N25), .CP(clk), 
        .CD(n77), .Q(ss[0]) );
  GTECH_FJK2S ss_ones_reg_3_ ( .J(n78), .K(n78), .TI(N26), .TE(N25), .CP(clk), 
        .CD(n77), .Q(ss[3]) );
  GTECH_FJK2S ss_ones_reg_1_ ( .J(n78), .K(n78), .TI(N23), .TE(N25), .CP(clk), 
        .CD(n77), .Q(ss[1]) );
  GTECH_FJK2S ss_ones_reg_2_ ( .J(n78), .K(n78), .TI(N24), .TE(N25), .CP(clk), 
        .CD(n77), .Q(ss[2]) );
  GTECH_FJK2S ss_tens_reg_0_ ( .J(n78), .K(n78), .TI(N39), .TE(N42), .CP(clk), 
        .CD(n77), .Q(ss[4]) );
  GTECH_FJK2S ss_tens_reg_2_ ( .J(n78), .K(n78), .TI(N41), .TE(N42), .CP(clk), 
        .CD(n77), .Q(ss[6]) );
  GTECH_FJK2S ss_tens_reg_3_ ( .J(n78), .K(n78), .TI(N43), .TE(N42), .CP(clk), 
        .CD(n77), .Q(ss[7]) );
  GTECH_FJK2S ss_tens_reg_1_ ( .J(n78), .K(n78), .TI(N40), .TE(N42), .CP(clk), 
        .CD(n77), .Q(ss[5]) );
  GTECH_FJK2S mm_ones_reg_0_ ( .J(n78), .K(n78), .TI(N55), .TE(N58), .CP(clk), 
        .CD(n77), .Q(mm[0]), .QN(n135) );
  GTECH_FJK2S mm_ones_reg_3_ ( .J(n78), .K(n78), .TI(N59), .TE(N58), .CP(clk), 
        .CD(n77), .Q(mm[3]), .QN(n132) );
  GTECH_FJK2S mm_ones_reg_1_ ( .J(n78), .K(n78), .TI(N56), .TE(N58), .CP(clk), 
        .CD(n77), .Q(mm[1]), .QN(n134) );
  GTECH_FJK2S mm_ones_reg_2_ ( .J(n78), .K(n78), .TI(N57), .TE(N58), .CP(clk), 
        .CD(n77), .Q(mm[2]), .QN(n133) );
  GTECH_FJK2S mm_tens_reg_0_ ( .J(n78), .K(n78), .TI(N71), .TE(N74), .CP(clk), 
        .CD(n77), .Q(mm[4]), .QN(n143) );
  GTECH_FJK2S mm_tens_reg_2_ ( .J(n78), .K(n78), .TI(N73), .TE(N74), .CP(clk), 
        .CD(n77), .Q(mm[6]), .QN(n130) );
  GTECH_FJK2S mm_tens_reg_1_ ( .J(n78), .K(n78), .TI(N72), .TE(N74), .CP(clk), 
        .CD(n77), .Q(mm[5]), .QN(n131) );
  GTECH_FJK2S mm_tens_reg_3_ ( .J(n78), .K(n78), .TI(N75), .TE(N74), .CP(clk), 
        .CD(n77), .Q(mm[7]), .QN(n4) );
  GTECH_FJK2S hh_tens_reg_0_ ( .J(n78), .K(n78), .TI(N110), .TE(N115), .CP(clk), .CD(n77), .Q(hh[4]), .QN(n142) );
  GTECH_FJK2S hh_tens_reg_1_ ( .J(n78), .K(n78), .TI(N112), .TE(N115), .CP(clk), .CD(n77), .Q(hh[5]), .QN(n5) );
  GTECH_FJK2S hh_tens_reg_2_ ( .J(n78), .K(n78), .TI(N114), .TE(N115), .CP(clk), .CD(n77), .Q(hh[6]), .QN(n6) );
  GTECH_FJK2S hh_tens_reg_3_ ( .J(n78), .K(n78), .TI(N116), .TE(N115), .CP(clk), .CD(n77), .Q(hh[7]), .QN(n7) );
  GTECH_FJK2S hh_ones_reg_0_ ( .J(n78), .K(n78), .TI(N88), .TE(N91), .CP(clk), 
        .CD(n77), .Q(hh[0]), .QN(n8) );
  GTECH_FJK2S hh_ones_reg_1_ ( .J(n78), .K(n78), .TI(N89), .TE(N91), .CP(clk), 
        .CD(n77), .Q(hh[1]), .QN(n129) );
  GTECH_FJK2S hh_ones_reg_2_ ( .J(n78), .K(n78), .TI(N90), .TE(N91), .CP(clk), 
        .CD(n77), .Q(hh[2]), .QN(n128) );
  GTECH_FJK2S hh_ones_reg_3_ ( .J(n78), .K(n78), .TI(N92), .TE(N91), .CP(clk), 
        .CD(n77), .Q(hh[3]), .QN(n127) );
  GTECH_FJK2S pm_temp_reg ( .J(n78), .K(n78), .TI(N122), .TE(N121), .CP(clk), 
        .CD(n77), .Q(pm), .QN(n9) );
  GTECH_ZERO U152 ( .Z(n78) );
  GTECH_ONE U153 ( .Z(n77) );
  GTECH_AND2 U154 ( .A(n144), .B(n145), .Z(N92) );
  GTECH_XOR2 U155 ( .A(n146), .B(n127), .Z(n144) );
  GTECH_OR2 U156 ( .A(n128), .B(n147), .Z(n146) );
  GTECH_NAND2 U157 ( .A(n148), .B(n149), .Z(N91) );
  GTECH_AND2 U158 ( .A(n150), .B(n145), .Z(N90) );
  GTECH_NOT U159 ( .A(n151), .Z(n145) );
  GTECH_XOR2 U160 ( .A(n147), .B(n128), .Z(n150) );
  GTECH_NAND2 U161 ( .A(n152), .B(n153), .Z(n147) );
  GTECH_OAI21 U162 ( .A(n154), .B(n151), .C(n148), .Z(N89) );
  GTECH_XOR2 U163 ( .A(n153), .B(n8), .Z(n154) );
  GTECH_OAI2N2 U164 ( .A(n152), .B(n151), .C(n155), .D(n156), .Z(N88) );
  GTECH_NOT U165 ( .A(n157), .Z(n155) );
  GTECH_NAND3 U166 ( .A(n158), .B(n157), .C(n156), .Z(n151) );
  GTECH_OAI2N2 U167 ( .A(n159), .B(n160), .C(n161), .D(n162), .Z(N75) );
  GTECH_NOT U168 ( .A(n4), .Z(n162) );
  GTECH_OA21 U169 ( .A(n4), .B(n163), .C(n164), .Z(n159) );
  GTECH_MUX2 U170 ( .A(n161), .B(n165), .S(n130), .Z(N73) );
  GTECH_NOR3 U171 ( .A(n143), .B(n131), .C(n160), .Z(n165) );
  GTECH_NOT U172 ( .A(n166), .Z(n161) );
  GTECH_OAI21 U173 ( .A(n143), .B(n131), .C(n167), .Z(n166) );
  GTECH_MUX2 U174 ( .A(N71), .B(n168), .S(n131), .Z(N72) );
  GTECH_AND2 U175 ( .A(n167), .B(n169), .Z(n168) );
  GTECH_NOT U176 ( .A(n170), .Z(N71) );
  GTECH_NAND2 U177 ( .A(n143), .B(n167), .Z(n170) );
  GTECH_NOT U178 ( .A(n160), .Z(n167) );
  GTECH_NAND3 U179 ( .A(n171), .B(n148), .C(n172), .Z(n160) );
  GTECH_MUX2 U180 ( .A(n173), .B(n174), .S(n132), .Z(N59) );
  GTECH_AND2 U181 ( .A(n175), .B(n176), .Z(n174) );
  GTECH_OAI21 U182 ( .A(n176), .B(n177), .C(n178), .Z(n173) );
  GTECH_NOT U183 ( .A(n179), .Z(n178) );
  GTECH_NOT U184 ( .A(n133), .Z(n176) );
  GTECH_MUX2 U185 ( .A(n179), .B(n175), .S(n133), .Z(N57) );
  GTECH_NOT U186 ( .A(n180), .Z(n175) );
  GTECH_NAND3 U187 ( .A(n181), .B(n182), .C(n183), .Z(n180) );
  GTECH_OAI21 U188 ( .A(n181), .B(n177), .C(n184), .Z(n179) );
  GTECH_NOT U189 ( .A(n134), .Z(n181) );
  GTECH_MUX2 U190 ( .A(N55), .B(n185), .S(n134), .Z(N56) );
  GTECH_AND2 U191 ( .A(n183), .B(n182), .Z(n185) );
  GTECH_NOT U192 ( .A(n184), .Z(N55) );
  GTECH_NAND2 U193 ( .A(n135), .B(n183), .Z(n184) );
  GTECH_NOT U194 ( .A(n177), .Z(n183) );
  GTECH_NAND2 U195 ( .A(n186), .B(n187), .Z(n177) );
  GTECH_NOT U196 ( .A(N74), .Z(n187) );
  GTECH_NAND2 U197 ( .A(n148), .B(n188), .Z(N74) );
  GTECH_MUX2 U198 ( .A(n189), .B(n190), .S(ss[7]), .Z(N43) );
  GTECH_OAI21 U199 ( .A(ss[6]), .B(n191), .C(n192), .Z(n190) );
  GTECH_NOT U200 ( .A(n193), .Z(n192) );
  GTECH_AND2 U201 ( .A(n194), .B(ss[6]), .Z(n189) );
  GTECH_MUX2 U202 ( .A(n195), .B(n193), .S(ss[6]), .Z(N41) );
  GTECH_OAI21 U203 ( .A(ss[5]), .B(n191), .C(n196), .Z(n193) );
  GTECH_AND2 U204 ( .A(ss[5]), .B(n194), .Z(n195) );
  GTECH_MUX2 U205 ( .A(n194), .B(N39), .S(ss[5]), .Z(N40) );
  GTECH_NOT U206 ( .A(n197), .Z(n194) );
  GTECH_NAND2 U207 ( .A(n198), .B(ss[4]), .Z(n197) );
  GTECH_NOT U208 ( .A(n196), .Z(N39) );
  GTECH_NAND2 U209 ( .A(n198), .B(n199), .Z(n196) );
  GTECH_NOT U210 ( .A(ss[4]), .Z(n199) );
  GTECH_NOT U211 ( .A(n191), .Z(n198) );
  GTECH_NAND2 U212 ( .A(n200), .B(n201), .Z(n191) );
  GTECH_NOT U213 ( .A(N58), .Z(n201) );
  GTECH_NAND2 U214 ( .A(n148), .B(n202), .Z(N58) );
  GTECH_OAI2N2 U215 ( .A(n203), .B(n204), .C(n205), .D(ss[3]), .Z(N26) );
  GTECH_MUX2 U216 ( .A(n206), .B(n207), .S(ss[2]), .Z(n204) );
  GTECH_NAND2 U217 ( .A(n208), .B(n206), .Z(n207) );
  GTECH_NOT U218 ( .A(ss[3]), .Z(n206) );
  GTECH_NAND2 U219 ( .A(n148), .B(n209), .Z(N25) );
  GTECH_NOT U220 ( .A(ena), .Z(n209) );
  GTECH_MUX2 U221 ( .A(n210), .B(n205), .S(ss[2]), .Z(N24) );
  GTECH_NOT U222 ( .A(n211), .Z(n205) );
  GTECH_NAND2 U223 ( .A(n212), .B(n213), .Z(n211) );
  GTECH_AND2 U224 ( .A(n212), .B(n208), .Z(n210) );
  GTECH_NOT U225 ( .A(n213), .Z(n208) );
  GTECH_NAND2 U226 ( .A(ss[1]), .B(ss[0]), .Z(n213) );
  GTECH_MUX2 U227 ( .A(n214), .B(N22), .S(ss[1]), .Z(N23) );
  GTECH_AND2 U228 ( .A(n212), .B(ss[0]), .Z(n214) );
  GTECH_NOT U229 ( .A(n215), .Z(N22) );
  GTECH_NAND2 U230 ( .A(n212), .B(n216), .Z(n215) );
  GTECH_NOT U231 ( .A(ss[0]), .Z(n216) );
  GTECH_NOT U232 ( .A(n203), .Z(n212) );
  GTECH_NAND2 U233 ( .A(ena), .B(n217), .Z(n203) );
  GTECH_NOT U234 ( .A(N42), .Z(n217) );
  GTECH_NAND2 U235 ( .A(n148), .B(n218), .Z(N42) );
  GTECH_AND2 U236 ( .A(n219), .B(n9), .Z(N122) );
  GTECH_NOT U237 ( .A(n220), .Z(n219) );
  GTECH_NAND2 U238 ( .A(n148), .B(n220), .Z(N121) );
  GTECH_NAND4 U239 ( .A(n156), .B(n129), .C(n221), .D(n152), .Z(n220) );
  GTECH_AND2 U240 ( .A(n222), .B(n223), .Z(N116) );
  GTECH_XOR2 U241 ( .A(n224), .B(n7), .Z(n222) );
  GTECH_OR2 U242 ( .A(n6), .B(n225), .Z(n224) );
  GTECH_NAND3 U243 ( .A(n157), .B(n148), .C(n158), .Z(N115) );
  GTECH_NAND4 U244 ( .A(n8), .B(n221), .C(n226), .D(n153), .Z(n157) );
  GTECH_NOT U245 ( .A(n129), .Z(n153) );
  GTECH_AND3 U246 ( .A(n6), .B(n5), .C(n227), .Z(n221) );
  GTECH_AND4 U247 ( .A(n228), .B(n128), .C(n127), .D(n7), .Z(n227) );
  GTECH_AND2 U248 ( .A(n229), .B(n223), .Z(N114) );
  GTECH_XOR2 U249 ( .A(n225), .B(n6), .Z(n229) );
  GTECH_NAND2 U250 ( .A(n230), .B(n228), .Z(n225) );
  GTECH_NOT U251 ( .A(n5), .Z(n230) );
  GTECH_AND2 U252 ( .A(n223), .B(n231), .Z(N112) );
  GTECH_XOR2 U253 ( .A(n5), .B(n142), .Z(n231) );
  GTECH_NOT U254 ( .A(n232), .Z(n223) );
  GTECH_OAI21 U255 ( .A(n232), .B(n228), .C(n148), .Z(N110) );
  GTECH_NOT U256 ( .A(n142), .Z(n228) );
  GTECH_NAND2 U257 ( .A(n233), .B(n156), .Z(n232) );
  GTECH_NOT U258 ( .A(n149), .Z(n156) );
  GTECH_NAND2 U259 ( .A(n226), .B(n148), .Z(n149) );
  GTECH_NOT U260 ( .A(reset), .Z(n148) );
  GTECH_NOT U261 ( .A(n158), .Z(n233) );
  GTECH_NAND5 U262 ( .A(n234), .B(n152), .C(n226), .D(n129), .E(n128), .Z(n158) );
  GTECH_NOT U263 ( .A(n171), .Z(n226) );
  GTECH_NAND3 U264 ( .A(n172), .B(n235), .C(n131), .Z(n171) );
  GTECH_NOT U265 ( .A(n164), .Z(n235) );
  GTECH_NAND3 U266 ( .A(n163), .B(n169), .C(n4), .Z(n164) );
  GTECH_NOT U267 ( .A(n143), .Z(n169) );
  GTECH_NOT U268 ( .A(n130), .Z(n163) );
  GTECH_NOT U269 ( .A(n188), .Z(n172) );
  GTECH_NAND5 U270 ( .A(n236), .B(n182), .C(n186), .D(n134), .E(n133), .Z(n188) );
  GTECH_NOT U271 ( .A(n202), .Z(n186) );
  GTECH_NAND5 U272 ( .A(n237), .B(n238), .C(n200), .D(ss[6]), .E(ss[4]), .Z(
        n202) );
  GTECH_NOT U273 ( .A(n218), .Z(n200) );
  GTECH_NAND5 U274 ( .A(n239), .B(n240), .C(ena), .D(ss[3]), .E(ss[0]), .Z(
        n218) );
  GTECH_NOT U275 ( .A(ss[2]), .Z(n240) );
  GTECH_NOT U276 ( .A(ss[1]), .Z(n239) );
  GTECH_NOT U277 ( .A(ss[7]), .Z(n238) );
  GTECH_NOT U278 ( .A(ss[5]), .Z(n237) );
  GTECH_NOT U279 ( .A(n135), .Z(n182) );
  GTECH_NOT U280 ( .A(n132), .Z(n236) );
  GTECH_NOT U281 ( .A(n8), .Z(n152) );
  GTECH_NOT U282 ( .A(n127), .Z(n234) );
endmodule

