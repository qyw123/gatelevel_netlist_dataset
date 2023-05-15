
module clock_12h ( clk, reset, ena, pm, hh, mm, ss );
  output [7:0] hh;
  output [7:0] mm;
  output [7:0] ss;
  input clk, reset, ena;
  output pm;
  wire   N22, N23, N24, N25, N26, N39, N40, N41, N42, N43, N55, N56, N57, N58,
         N59, N71, N72, N73, N74, N75, N88, N89, N90, N91, N92, N110, N112,
         N114, N115, N116, N121, N122, n3, n4, n5, n6, n7, n8, n9, n85, n86,
         n135, n136, n137, n138, n139, n140, n141, n142, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240,
         n241, n242, n243;

  GTECH_FJK2S ss_ones_reg_0_ ( .J(n86), .K(n86), .TI(N22), .TE(N25), .CP(clk), 
        .CD(n85), .Q(ss[0]) );
  GTECH_FJK2S ss_ones_reg_2_ ( .J(n86), .K(n86), .TI(N24), .TE(N25), .CP(clk), 
        .CD(n85), .Q(ss[2]) );
  GTECH_FJK2S ss_ones_reg_3_ ( .J(n86), .K(n86), .TI(N26), .TE(N25), .CP(clk), 
        .CD(n85), .Q(ss[3]) );
  GTECH_FJK2S ss_ones_reg_1_ ( .J(n86), .K(n86), .TI(N23), .TE(N25), .CP(clk), 
        .CD(n85), .Q(ss[1]) );
  GTECH_FJK2S ss_tens_reg_0_ ( .J(n86), .K(n86), .TI(N39), .TE(N42), .CP(clk), 
        .CD(n85), .Q(ss[4]) );
  GTECH_FJK2S ss_tens_reg_2_ ( .J(n86), .K(n86), .TI(N41), .TE(N42), .CP(clk), 
        .CD(n85), .Q(ss[6]) );
  GTECH_FJK2S ss_tens_reg_3_ ( .J(n86), .K(n86), .TI(N43), .TE(N42), .CP(clk), 
        .CD(n85), .Q(ss[7]) );
  GTECH_FJK2S ss_tens_reg_1_ ( .J(n86), .K(n86), .TI(N40), .TE(N42), .CP(clk), 
        .CD(n85), .Q(ss[5]) );
  GTECH_FJK2S mm_ones_reg_0_ ( .J(n86), .K(n86), .TI(N55), .TE(N58), .CP(clk), 
        .CD(n85), .Q(mm[0]), .QN(n140) );
  GTECH_FJK2S mm_ones_reg_2_ ( .J(n86), .K(n86), .TI(N57), .TE(N58), .CP(clk), 
        .CD(n85), .Q(mm[2]), .QN(n142) );
  GTECH_FJK2S mm_ones_reg_3_ ( .J(n86), .K(n86), .TI(N59), .TE(N58), .CP(clk), 
        .CD(n85), .Q(mm[3]), .QN(n139) );
  GTECH_FJK2S mm_ones_reg_1_ ( .J(n86), .K(n86), .TI(N56), .TE(N58), .CP(clk), 
        .CD(n85), .Q(mm[1]), .QN(n141) );
  GTECH_FJK2S mm_tens_reg_0_ ( .J(n86), .K(n86), .TI(N71), .TE(N74), .CP(clk), 
        .CD(n85), .Q(mm[4]), .QN(n3) );
  GTECH_FJK2S mm_tens_reg_2_ ( .J(n86), .K(n86), .TI(N73), .TE(N74), .CP(clk), 
        .CD(n85), .Q(mm[6]), .QN(n137) );
  GTECH_FJK2S mm_tens_reg_3_ ( .J(n86), .K(n86), .TI(N75), .TE(N74), .CP(clk), 
        .CD(n85), .Q(mm[7]), .QN(n136) );
  GTECH_FJK2S mm_tens_reg_1_ ( .J(n86), .K(n86), .TI(N72), .TE(N74), .CP(clk), 
        .CD(n85), .Q(mm[5]), .QN(n138) );
  GTECH_FJK2S hh_tens_reg_0_ ( .J(n86), .K(n86), .TI(N110), .TE(N115), .CP(clk), .CD(n85), .Q(hh[4]), .QN(n4) );
  GTECH_FJK2S hh_tens_reg_2_ ( .J(n86), .K(n86), .TI(N114), .TE(N115), .CP(clk), .CD(n85), .Q(hh[6]), .QN(n5) );
  GTECH_FJK2S hh_tens_reg_3_ ( .J(n86), .K(n86), .TI(N116), .TE(N115), .CP(clk), .CD(n85), .Q(hh[7]), .QN(n6) );
  GTECH_FJK2S hh_ones_reg_0_ ( .J(n86), .K(n86), .TI(N88), .TE(N91), .CP(clk), 
        .CD(n85), .Q(hh[0]), .QN(n7) );
  GTECH_FJK2S hh_ones_reg_1_ ( .J(n86), .K(n86), .TI(N89), .TE(N91), .CP(clk), 
        .CD(n85), .Q(hh[1]), .QN(n135) );
  GTECH_FJK2S hh_ones_reg_2_ ( .J(n86), .K(n86), .TI(N90), .TE(N91), .CP(clk), 
        .CD(n85), .Q(hh[2]), .QN(n151) );
  GTECH_FJK2S hh_ones_reg_3_ ( .J(n86), .K(n86), .TI(N92), .TE(N91), .CP(clk), 
        .CD(n85), .Q(hh[3]), .QN(n150) );
  GTECH_FJK2S hh_tens_reg_1_ ( .J(n86), .K(n86), .TI(N112), .TE(N115), .CP(clk), .CD(n85), .Q(hh[5]), .QN(n8) );
  GTECH_FJK2S pm_temp_reg ( .J(n86), .K(n86), .TI(N122), .TE(N121), .CP(clk), 
        .CD(n85), .Q(pm), .QN(n9) );
  GTECH_ZERO U160 ( .Z(n86) );
  GTECH_ONE U161 ( .Z(n85) );
  GTECH_AND2 U162 ( .A(n152), .B(n153), .Z(N92) );
  GTECH_XOR2 U163 ( .A(n154), .B(n150), .Z(n152) );
  GTECH_OR2 U164 ( .A(n151), .B(n155), .Z(n154) );
  GTECH_NAND2 U165 ( .A(n156), .B(n157), .Z(N91) );
  GTECH_AND2 U166 ( .A(n158), .B(n153), .Z(N90) );
  GTECH_NOT U167 ( .A(n159), .Z(n153) );
  GTECH_XOR2 U168 ( .A(n155), .B(n151), .Z(n158) );
  GTECH_NAND2 U169 ( .A(n160), .B(n161), .Z(n155) );
  GTECH_OAI21 U170 ( .A(n162), .B(n159), .C(n156), .Z(N89) );
  GTECH_OA21 U171 ( .A(n135), .B(n160), .C(n163), .Z(n162) );
  GTECH_OAI22 U172 ( .A(n157), .B(n164), .C(n160), .D(n159), .Z(N88) );
  GTECH_NAND3 U173 ( .A(n164), .B(n165), .C(n166), .Z(n159) );
  GTECH_OAI22 U174 ( .A(n136), .B(n167), .C(n168), .D(n169), .Z(N75) );
  GTECH_OA21 U175 ( .A(n136), .B(n170), .C(n171), .Z(n168) );
  GTECH_NOT U176 ( .A(n172), .Z(N73) );
  GTECH_MUX2 U177 ( .A(n167), .B(n173), .S(n137), .Z(n172) );
  GTECH_OR3 U178 ( .A(n138), .B(n169), .C(n3), .Z(n173) );
  GTECH_OAI21 U179 ( .A(n3), .B(n138), .C(n174), .Z(n167) );
  GTECH_MUX2 U180 ( .A(N71), .B(n175), .S(n138), .Z(N72) );
  GTECH_AND2 U181 ( .A(n174), .B(n176), .Z(n175) );
  GTECH_NOT U182 ( .A(n177), .Z(N71) );
  GTECH_NAND2 U183 ( .A(n3), .B(n174), .Z(n177) );
  GTECH_NOT U184 ( .A(n169), .Z(n174) );
  GTECH_NAND3 U185 ( .A(n178), .B(n156), .C(n179), .Z(n169) );
  GTECH_MUX2 U186 ( .A(n180), .B(n181), .S(n139), .Z(N59) );
  GTECH_AND2 U187 ( .A(n182), .B(n183), .Z(n181) );
  GTECH_OAI21 U188 ( .A(n183), .B(n184), .C(n185), .Z(n180) );
  GTECH_NOT U189 ( .A(n186), .Z(n185) );
  GTECH_MUX2 U190 ( .A(n186), .B(n182), .S(n142), .Z(N57) );
  GTECH_NOT U191 ( .A(n187), .Z(n182) );
  GTECH_NAND3 U192 ( .A(n188), .B(n189), .C(n190), .Z(n187) );
  GTECH_OAI21 U193 ( .A(n189), .B(n184), .C(n191), .Z(n186) );
  GTECH_MUX2 U194 ( .A(N55), .B(n192), .S(n141), .Z(N56) );
  GTECH_AND2 U195 ( .A(n190), .B(n188), .Z(n192) );
  GTECH_NOT U196 ( .A(n140), .Z(n188) );
  GTECH_NOT U197 ( .A(n191), .Z(N55) );
  GTECH_NAND2 U198 ( .A(n140), .B(n190), .Z(n191) );
  GTECH_NOT U199 ( .A(n184), .Z(n190) );
  GTECH_NAND2 U200 ( .A(n193), .B(n194), .Z(n184) );
  GTECH_NOT U201 ( .A(N74), .Z(n194) );
  GTECH_NAND2 U202 ( .A(n156), .B(n195), .Z(N74) );
  GTECH_NOT U203 ( .A(n196), .Z(n193) );
  GTECH_OAI2N2 U204 ( .A(n197), .B(n198), .C(n199), .D(ss[7]), .Z(N43) );
  GTECH_OA21 U205 ( .A(n200), .B(ss[6]), .C(n201), .Z(n197) );
  GTECH_MUX2 U206 ( .A(n202), .B(n199), .S(ss[6]), .Z(N41) );
  GTECH_OAI21 U207 ( .A(ss[5]), .B(n198), .C(n203), .Z(n199) );
  GTECH_AND3 U208 ( .A(n204), .B(ss[4]), .C(ss[5]), .Z(n202) );
  GTECH_MUX2 U209 ( .A(n205), .B(N39), .S(ss[5]), .Z(N40) );
  GTECH_AND2 U210 ( .A(n204), .B(ss[4]), .Z(n205) );
  GTECH_NOT U211 ( .A(n203), .Z(N39) );
  GTECH_NAND2 U212 ( .A(n204), .B(n206), .Z(n203) );
  GTECH_NOT U213 ( .A(ss[4]), .Z(n206) );
  GTECH_NOT U214 ( .A(n198), .Z(n204) );
  GTECH_NAND2 U215 ( .A(n207), .B(n208), .Z(n198) );
  GTECH_NOT U216 ( .A(N58), .Z(n208) );
  GTECH_NAND2 U217 ( .A(n156), .B(n196), .Z(N58) );
  GTECH_MUX2 U218 ( .A(n209), .B(n210), .S(ss[3]), .Z(N26) );
  GTECH_OAI21 U219 ( .A(ss[2]), .B(n211), .C(n212), .Z(n210) );
  GTECH_NOT U220 ( .A(n213), .Z(n212) );
  GTECH_AND2 U221 ( .A(ss[2]), .B(n214), .Z(n209) );
  GTECH_NAND2 U222 ( .A(n156), .B(n215), .Z(N25) );
  GTECH_MUX2 U223 ( .A(n214), .B(n213), .S(ss[2]), .Z(N24) );
  GTECH_OAI21 U224 ( .A(ss[1]), .B(n211), .C(n216), .Z(n213) );
  GTECH_NOT U225 ( .A(n217), .Z(n214) );
  GTECH_NAND3 U226 ( .A(n218), .B(ss[0]), .C(ss[1]), .Z(n217) );
  GTECH_MUX2 U227 ( .A(n219), .B(N22), .S(ss[1]), .Z(N23) );
  GTECH_AND2 U228 ( .A(n218), .B(ss[0]), .Z(n219) );
  GTECH_NOT U229 ( .A(n216), .Z(N22) );
  GTECH_NAND2 U230 ( .A(n218), .B(n220), .Z(n216) );
  GTECH_NOT U231 ( .A(n211), .Z(n218) );
  GTECH_NAND2 U232 ( .A(ena), .B(n221), .Z(n211) );
  GTECH_NOT U233 ( .A(N42), .Z(n221) );
  GTECH_NAND2 U234 ( .A(n156), .B(n222), .Z(N42) );
  GTECH_AND2 U235 ( .A(n223), .B(n9), .Z(N122) );
  GTECH_NOT U236 ( .A(n224), .Z(n223) );
  GTECH_NAND2 U237 ( .A(n156), .B(n224), .Z(N121) );
  GTECH_NAND3 U238 ( .A(n225), .B(n226), .C(n166), .Z(n224) );
  GTECH_AND2 U239 ( .A(n227), .B(n228), .Z(N116) );
  GTECH_XOR2 U240 ( .A(n229), .B(n6), .Z(n227) );
  GTECH_OR2 U241 ( .A(n5), .B(n230), .Z(n229) );
  GTECH_NAND3 U242 ( .A(n165), .B(n156), .C(n164), .Z(N115) );
  GTECH_NAND4 U243 ( .A(n7), .B(n225), .C(n231), .D(n161), .Z(n164) );
  GTECH_NOT U244 ( .A(n135), .Z(n161) );
  GTECH_AND3 U245 ( .A(n6), .B(n5), .C(n232), .Z(n225) );
  GTECH_AND4 U246 ( .A(n233), .B(n150), .C(n151), .D(n8), .Z(n232) );
  GTECH_AND2 U247 ( .A(n234), .B(n228), .Z(N114) );
  GTECH_XOR2 U248 ( .A(n230), .B(n5), .Z(n234) );
  GTECH_NAND2 U249 ( .A(n235), .B(n233), .Z(n230) );
  GTECH_NOT U250 ( .A(n8), .Z(n235) );
  GTECH_AND2 U251 ( .A(n228), .B(n236), .Z(N112) );
  GTECH_XOR2 U252 ( .A(n8), .B(n4), .Z(n236) );
  GTECH_NOT U253 ( .A(n237), .Z(n228) );
  GTECH_OAI21 U254 ( .A(n237), .B(n233), .C(n156), .Z(N110) );
  GTECH_NOT U255 ( .A(n4), .Z(n233) );
  GTECH_NAND2 U256 ( .A(n238), .B(n166), .Z(n237) );
  GTECH_NOT U257 ( .A(n157), .Z(n166) );
  GTECH_NAND2 U258 ( .A(n231), .B(n156), .Z(n157) );
  GTECH_NOT U259 ( .A(reset), .Z(n156) );
  GTECH_NOT U260 ( .A(n165), .Z(n238) );
  GTECH_NAND4 U261 ( .A(n151), .B(n231), .C(n226), .D(n239), .Z(n165) );
  GTECH_NOT U262 ( .A(n150), .Z(n239) );
  GTECH_NOT U263 ( .A(n163), .Z(n226) );
  GTECH_NAND2 U264 ( .A(n135), .B(n160), .Z(n163) );
  GTECH_NOT U265 ( .A(n7), .Z(n160) );
  GTECH_NOT U266 ( .A(n178), .Z(n231) );
  GTECH_NAND3 U267 ( .A(n179), .B(n240), .C(n138), .Z(n178) );
  GTECH_NOT U268 ( .A(n171), .Z(n240) );
  GTECH_NAND3 U269 ( .A(n170), .B(n176), .C(n136), .Z(n171) );
  GTECH_NOT U270 ( .A(n3), .Z(n176) );
  GTECH_NOT U271 ( .A(n137), .Z(n170) );
  GTECH_NOT U272 ( .A(n195), .Z(n179) );
  GTECH_OR5 U273 ( .A(n140), .B(n139), .C(n196), .D(n189), .E(n183), .Z(n195)
         );
  GTECH_NOT U274 ( .A(n142), .Z(n183) );
  GTECH_NOT U275 ( .A(n141), .Z(n189) );
  GTECH_NAND3 U276 ( .A(n241), .B(n242), .C(n207), .Z(n196) );
  GTECH_NOT U277 ( .A(n222), .Z(n207) );
  GTECH_OR5 U278 ( .A(ss[2]), .B(ss[1]), .C(n215), .D(n220), .E(n243), .Z(n222) );
  GTECH_NOT U279 ( .A(ss[3]), .Z(n243) );
  GTECH_NOT U280 ( .A(ss[0]), .Z(n220) );
  GTECH_NOT U281 ( .A(ena), .Z(n215) );
  GTECH_NOT U282 ( .A(ss[5]), .Z(n242) );
  GTECH_NOT U283 ( .A(n201), .Z(n241) );
  GTECH_NAND3 U284 ( .A(ss[4]), .B(n200), .C(ss[6]), .Z(n201) );
  GTECH_NOT U285 ( .A(ss[7]), .Z(n200) );
endmodule

