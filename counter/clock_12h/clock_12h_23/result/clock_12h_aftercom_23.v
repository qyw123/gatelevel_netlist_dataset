
module clock_12h ( clk, reset, ena, pm, hh, mm, ss );
  output [7:0] hh;
  output [7:0] mm;
  output [7:0] ss;
  input clk, reset, ena;
  output pm;
  wire   N22, N23, N24, N25, N26, N39, N40, N41, N42, N43, N55, N56, N57, N58,
         N59, N71, N72, N73, N74, N75, N88, N89, N90, N91, N92, N110, N112,
         N114, N115, N116, N121, N122, n4, n5, n6, n7, n8, n9, n10, n11, n78,
         n79, n128, n129, n130, n131, n132, n133, n134, n135, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237;

  GTECH_FJK2S ss_ones_reg_0_ ( .J(n79), .K(n79), .TI(N22), .TE(N25), .CP(clk), 
        .CD(n78), .Q(ss[0]) );
  GTECH_FJK2S ss_ones_reg_3_ ( .J(n79), .K(n79), .TI(N26), .TE(N25), .CP(clk), 
        .CD(n78), .Q(ss[3]) );
  GTECH_FJK2S ss_ones_reg_1_ ( .J(n79), .K(n79), .TI(N23), .TE(N25), .CP(clk), 
        .CD(n78), .Q(ss[1]) );
  GTECH_FJK2S ss_ones_reg_2_ ( .J(n79), .K(n79), .TI(N24), .TE(N25), .CP(clk), 
        .CD(n78), .Q(ss[2]) );
  GTECH_FJK2S ss_tens_reg_0_ ( .J(n79), .K(n79), .TI(N39), .TE(N42), .CP(clk), 
        .CD(n78), .Q(ss[4]) );
  GTECH_FJK2S ss_tens_reg_3_ ( .J(n79), .K(n79), .TI(N43), .TE(N42), .CP(clk), 
        .CD(n78), .Q(ss[7]) );
  GTECH_FJK2S ss_tens_reg_1_ ( .J(n79), .K(n79), .TI(N40), .TE(N42), .CP(clk), 
        .CD(n78), .Q(ss[5]) );
  GTECH_FJK2S ss_tens_reg_2_ ( .J(n79), .K(n79), .TI(N41), .TE(N42), .CP(clk), 
        .CD(n78), .Q(ss[6]) );
  GTECH_FJK2S mm_ones_reg_0_ ( .J(n79), .K(n79), .TI(N55), .TE(N58), .CP(clk), 
        .CD(n78), .Q(mm[0]), .QN(n4) );
  GTECH_FJK2S mm_ones_reg_3_ ( .J(n79), .K(n79), .TI(N59), .TE(N58), .CP(clk), 
        .CD(n78), .Q(mm[3]), .QN(n133) );
  GTECH_FJK2S mm_ones_reg_1_ ( .J(n79), .K(n79), .TI(N56), .TE(N58), .CP(clk), 
        .CD(n78), .Q(mm[1]), .QN(n135) );
  GTECH_FJK2S mm_ones_reg_2_ ( .J(n79), .K(n79), .TI(N57), .TE(N58), .CP(clk), 
        .CD(n78), .Q(mm[2]), .QN(n134) );
  GTECH_FJK2S mm_tens_reg_0_ ( .J(n79), .K(n79), .TI(N71), .TE(N74), .CP(clk), 
        .CD(n78), .Q(mm[4]), .QN(n5) );
  GTECH_FJK2S mm_tens_reg_3_ ( .J(n79), .K(n79), .TI(N75), .TE(N74), .CP(clk), 
        .CD(n78), .Q(mm[7]), .QN(n130) );
  GTECH_FJK2S mm_tens_reg_1_ ( .J(n79), .K(n79), .TI(N72), .TE(N74), .CP(clk), 
        .CD(n78), .Q(mm[5]), .QN(n132) );
  GTECH_FJK2S mm_tens_reg_2_ ( .J(n79), .K(n79), .TI(N73), .TE(N74), .CP(clk), 
        .CD(n78), .Q(mm[6]), .QN(n131) );
  GTECH_FJK2S hh_tens_reg_0_ ( .J(n79), .K(n79), .TI(N110), .TE(N115), .CP(clk), .CD(n78), .Q(hh[4]), .QN(n142) );
  GTECH_FJK2S hh_tens_reg_1_ ( .J(n79), .K(n79), .TI(N112), .TE(N115), .CP(clk), .CD(n78), .Q(hh[5]), .QN(n6) );
  GTECH_FJK2S hh_tens_reg_2_ ( .J(n79), .K(n79), .TI(N114), .TE(N115), .CP(clk), .CD(n78), .Q(hh[6]), .QN(n7) );
  GTECH_FJK2S hh_tens_reg_3_ ( .J(n79), .K(n79), .TI(N116), .TE(N115), .CP(clk), .CD(n78), .Q(hh[7]), .QN(n8) );
  GTECH_FJK2S hh_ones_reg_0_ ( .J(n79), .K(n79), .TI(N88), .TE(N91), .CP(clk), 
        .CD(n78), .Q(hh[0]), .QN(n129) );
  GTECH_FJK2S hh_ones_reg_1_ ( .J(n79), .K(n79), .TI(N89), .TE(N91), .CP(clk), 
        .CD(n78), .Q(hh[1]), .QN(n9) );
  GTECH_FJK2S hh_ones_reg_2_ ( .J(n79), .K(n79), .TI(N90), .TE(N91), .CP(clk), 
        .CD(n78), .Q(hh[2]), .QN(n128) );
  GTECH_FJK2S hh_ones_reg_3_ ( .J(n79), .K(n79), .TI(N92), .TE(N91), .CP(clk), 
        .CD(n78), .Q(hh[3]), .QN(n10) );
  GTECH_FJK2S pm_temp_reg ( .J(n79), .K(n79), .TI(N122), .TE(N121), .CP(clk), 
        .CD(n78), .Q(pm), .QN(n11) );
  GTECH_ZERO U151 ( .Z(n79) );
  GTECH_ONE U152 ( .Z(n78) );
  GTECH_AND2 U153 ( .A(n143), .B(n144), .Z(N92) );
  GTECH_XNOR2 U154 ( .A(n145), .B(n10), .Z(n143) );
  GTECH_NOR2 U155 ( .A(n128), .B(n146), .Z(n145) );
  GTECH_NAND2 U156 ( .A(n147), .B(n148), .Z(N91) );
  GTECH_AND2 U157 ( .A(n149), .B(n144), .Z(N90) );
  GTECH_NOT U158 ( .A(n150), .Z(n144) );
  GTECH_XOR2 U159 ( .A(n146), .B(n128), .Z(n149) );
  GTECH_NAND2 U160 ( .A(n151), .B(n152), .Z(n146) );
  GTECH_OAI21 U161 ( .A(n153), .B(n150), .C(n147), .Z(N89) );
  GTECH_OA21 U162 ( .A(n9), .B(n152), .C(n154), .Z(n153) );
  GTECH_OAI22 U163 ( .A(n148), .B(n155), .C(n152), .D(n150), .Z(N88) );
  GTECH_NAND3 U164 ( .A(n155), .B(n156), .C(n157), .Z(n150) );
  GTECH_MUX2 U165 ( .A(n158), .B(n159), .S(n130), .Z(N75) );
  GTECH_AND2 U166 ( .A(n160), .B(n161), .Z(n159) );
  GTECH_OAI21 U167 ( .A(n162), .B(n161), .C(n163), .Z(n158) );
  GTECH_NOT U168 ( .A(n164), .Z(N73) );
  GTECH_MUX2 U169 ( .A(n163), .B(n165), .S(n131), .Z(n164) );
  GTECH_OR_NOT U170 ( .A(n132), .B(n160), .Z(n165) );
  GTECH_OAI21 U171 ( .A(n5), .B(n132), .C(n166), .Z(n163) );
  GTECH_MUX2 U172 ( .A(N71), .B(n160), .S(n132), .Z(N72) );
  GTECH_NOT U173 ( .A(n167), .Z(n160) );
  GTECH_NAND2 U174 ( .A(n166), .B(n168), .Z(n167) );
  GTECH_NOT U175 ( .A(n169), .Z(N71) );
  GTECH_NAND2 U176 ( .A(n5), .B(n166), .Z(n169) );
  GTECH_NOT U177 ( .A(n162), .Z(n166) );
  GTECH_NAND3 U178 ( .A(n170), .B(n147), .C(n171), .Z(n162) );
  GTECH_MUX2 U179 ( .A(n172), .B(n173), .S(n133), .Z(N59) );
  GTECH_AND2 U180 ( .A(n174), .B(n175), .Z(n173) );
  GTECH_OAI21 U181 ( .A(n175), .B(n176), .C(n177), .Z(n172) );
  GTECH_NOT U182 ( .A(n178), .Z(n177) );
  GTECH_NOT U183 ( .A(n134), .Z(n175) );
  GTECH_MUX2 U184 ( .A(n178), .B(n174), .S(n134), .Z(N57) );
  GTECH_NOT U185 ( .A(n179), .Z(n174) );
  GTECH_NAND3 U186 ( .A(n180), .B(n181), .C(n182), .Z(n179) );
  GTECH_OAI21 U187 ( .A(n180), .B(n176), .C(n183), .Z(n178) );
  GTECH_NOT U188 ( .A(n135), .Z(n180) );
  GTECH_MUX2 U189 ( .A(N55), .B(n184), .S(n135), .Z(N56) );
  GTECH_AND2 U190 ( .A(n182), .B(n181), .Z(n184) );
  GTECH_NOT U191 ( .A(n183), .Z(N55) );
  GTECH_NAND2 U192 ( .A(n4), .B(n182), .Z(n183) );
  GTECH_NOT U193 ( .A(n176), .Z(n182) );
  GTECH_NAND2 U194 ( .A(n185), .B(n186), .Z(n176) );
  GTECH_NOT U195 ( .A(N74), .Z(n186) );
  GTECH_NAND2 U196 ( .A(n147), .B(n187), .Z(N74) );
  GTECH_MUX2 U197 ( .A(n188), .B(n189), .S(ss[7]), .Z(N43) );
  GTECH_OAI21 U198 ( .A(ss[6]), .B(n190), .C(n191), .Z(n189) );
  GTECH_AND2 U199 ( .A(n192), .B(ss[6]), .Z(n188) );
  GTECH_MUX2 U200 ( .A(n193), .B(n194), .S(ss[6]), .Z(N41) );
  GTECH_NOT U201 ( .A(n191), .Z(n194) );
  GTECH_OAI21 U202 ( .A(n195), .B(n196), .C(n197), .Z(n191) );
  GTECH_AND2 U203 ( .A(ss[5]), .B(n192), .Z(n193) );
  GTECH_MUX2 U204 ( .A(n192), .B(N39), .S(ss[5]), .Z(N40) );
  GTECH_NOT U205 ( .A(n198), .Z(n192) );
  GTECH_NAND2 U206 ( .A(n197), .B(ss[4]), .Z(n198) );
  GTECH_NOT U207 ( .A(n199), .Z(N39) );
  GTECH_NAND2 U208 ( .A(n197), .B(n195), .Z(n199) );
  GTECH_NOT U209 ( .A(ss[4]), .Z(n195) );
  GTECH_NOT U210 ( .A(n190), .Z(n197) );
  GTECH_NAND2 U211 ( .A(n200), .B(n201), .Z(n190) );
  GTECH_NOT U212 ( .A(N58), .Z(n201) );
  GTECH_NAND2 U213 ( .A(n147), .B(n202), .Z(N58) );
  GTECH_MUX2 U214 ( .A(n203), .B(n204), .S(ss[3]), .Z(N26) );
  GTECH_OAI21 U215 ( .A(ss[2]), .B(n205), .C(n206), .Z(n204) );
  GTECH_NOT U216 ( .A(n207), .Z(n206) );
  GTECH_AND2 U217 ( .A(ss[2]), .B(n208), .Z(n203) );
  GTECH_NAND2 U218 ( .A(n147), .B(n209), .Z(N25) );
  GTECH_NOT U219 ( .A(ena), .Z(n209) );
  GTECH_MUX2 U220 ( .A(n208), .B(n207), .S(ss[2]), .Z(N24) );
  GTECH_OAI21 U221 ( .A(ss[1]), .B(n205), .C(n210), .Z(n207) );
  GTECH_NOT U222 ( .A(n211), .Z(n208) );
  GTECH_NAND3 U223 ( .A(n212), .B(ss[0]), .C(ss[1]), .Z(n211) );
  GTECH_MUX2 U224 ( .A(n213), .B(N22), .S(ss[1]), .Z(N23) );
  GTECH_AND2 U225 ( .A(n212), .B(ss[0]), .Z(n213) );
  GTECH_NOT U226 ( .A(n210), .Z(N22) );
  GTECH_NAND2 U227 ( .A(n212), .B(n214), .Z(n210) );
  GTECH_NOT U228 ( .A(ss[0]), .Z(n214) );
  GTECH_NOT U229 ( .A(n205), .Z(n212) );
  GTECH_NAND2 U230 ( .A(ena), .B(n215), .Z(n205) );
  GTECH_NOT U231 ( .A(N42), .Z(n215) );
  GTECH_NAND2 U232 ( .A(n147), .B(n216), .Z(N42) );
  GTECH_AND2 U233 ( .A(n217), .B(n11), .Z(N122) );
  GTECH_NOT U234 ( .A(n218), .Z(n217) );
  GTECH_NAND2 U235 ( .A(n147), .B(n218), .Z(N121) );
  GTECH_NAND3 U236 ( .A(n219), .B(n220), .C(n157), .Z(n218) );
  GTECH_AND2 U237 ( .A(n221), .B(n222), .Z(N116) );
  GTECH_XNOR2 U238 ( .A(n223), .B(n8), .Z(n221) );
  GTECH_NOR2 U239 ( .A(n7), .B(n224), .Z(n223) );
  GTECH_NAND3 U240 ( .A(n156), .B(n147), .C(n155), .Z(N115) );
  GTECH_NAND4 U241 ( .A(n129), .B(n219), .C(n225), .D(n151), .Z(n155) );
  GTECH_NOT U242 ( .A(n9), .Z(n151) );
  GTECH_AND3 U243 ( .A(n7), .B(n6), .C(n226), .Z(n219) );
  GTECH_AND4 U244 ( .A(n227), .B(n10), .C(n128), .D(n8), .Z(n226) );
  GTECH_AND2 U245 ( .A(n228), .B(n222), .Z(N114) );
  GTECH_XOR2 U246 ( .A(n224), .B(n7), .Z(n228) );
  GTECH_NAND2 U247 ( .A(n229), .B(n227), .Z(n224) );
  GTECH_NOT U248 ( .A(n6), .Z(n229) );
  GTECH_AND2 U249 ( .A(n222), .B(n230), .Z(N112) );
  GTECH_XOR2 U250 ( .A(n6), .B(n142), .Z(n230) );
  GTECH_NOT U251 ( .A(n231), .Z(n222) );
  GTECH_OAI21 U252 ( .A(n231), .B(n227), .C(n147), .Z(N110) );
  GTECH_NOT U253 ( .A(n142), .Z(n227) );
  GTECH_NAND2 U254 ( .A(n232), .B(n157), .Z(n231) );
  GTECH_NOT U255 ( .A(n148), .Z(n157) );
  GTECH_NAND2 U256 ( .A(n225), .B(n147), .Z(n148) );
  GTECH_NOT U257 ( .A(reset), .Z(n147) );
  GTECH_NOT U258 ( .A(n156), .Z(n232) );
  GTECH_NAND4 U259 ( .A(n128), .B(n220), .C(n225), .D(n233), .Z(n156) );
  GTECH_NOT U260 ( .A(n10), .Z(n233) );
  GTECH_NOT U261 ( .A(n170), .Z(n225) );
  GTECH_NAND5 U262 ( .A(n161), .B(n168), .C(n171), .D(n132), .E(n130), .Z(n170) );
  GTECH_NOT U263 ( .A(n187), .Z(n171) );
  GTECH_NAND5 U264 ( .A(n234), .B(n181), .C(n185), .D(n135), .E(n134), .Z(n187) );
  GTECH_NOT U265 ( .A(n202), .Z(n185) );
  GTECH_NAND5 U266 ( .A(n196), .B(n235), .C(n200), .D(ss[6]), .E(ss[4]), .Z(
        n202) );
  GTECH_NOT U267 ( .A(n216), .Z(n200) );
  GTECH_NAND5 U268 ( .A(n236), .B(n237), .C(ena), .D(ss[3]), .E(ss[0]), .Z(
        n216) );
  GTECH_NOT U269 ( .A(ss[2]), .Z(n237) );
  GTECH_NOT U270 ( .A(ss[1]), .Z(n236) );
  GTECH_NOT U271 ( .A(ss[7]), .Z(n235) );
  GTECH_NOT U272 ( .A(ss[5]), .Z(n196) );
  GTECH_NOT U273 ( .A(n4), .Z(n181) );
  GTECH_NOT U274 ( .A(n133), .Z(n234) );
  GTECH_NOT U275 ( .A(n5), .Z(n168) );
  GTECH_NOT U276 ( .A(n131), .Z(n161) );
  GTECH_NOT U277 ( .A(n154), .Z(n220) );
  GTECH_NAND2 U278 ( .A(n9), .B(n152), .Z(n154) );
  GTECH_NOT U279 ( .A(n129), .Z(n152) );
endmodule

