
module clock_12h ( clk, reset, ena, pm, hh, mm, ss );
  output [7:0] hh;
  output [7:0] mm;
  output [7:0] ss;
  input clk, reset, ena;
  output pm;
  wire   N22, N23, N24, N25, N26, N39, N40, N41, N42, N43, N55, N56, N57, N58,
         N59, N71, N72, N73, N74, N75, N88, N89, N90, N91, N92, N110, N112,
         N114, N115, N116, N121, N122, n4, n5, n6, n7, n8, n9, n10, n11, n85,
         n86, n135, n136, n137, n138, n139, n140, n141, n142, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245;

  GTECH_FJK2S ss_ones_reg_0_ ( .J(n86), .K(n86), .TI(N22), .TE(N25), .CP(clk), 
        .CD(n85), .Q(ss[0]) );
  GTECH_FJK2S ss_ones_reg_3_ ( .J(n86), .K(n86), .TI(N26), .TE(N25), .CP(clk), 
        .CD(n85), .Q(ss[3]) );
  GTECH_FJK2S ss_ones_reg_1_ ( .J(n86), .K(n86), .TI(N23), .TE(N25), .CP(clk), 
        .CD(n85), .Q(ss[1]) );
  GTECH_FJK2S ss_ones_reg_2_ ( .J(n86), .K(n86), .TI(N24), .TE(N25), .CP(clk), 
        .CD(n85), .Q(ss[2]) );
  GTECH_FJK2S ss_tens_reg_0_ ( .J(n86), .K(n86), .TI(N39), .TE(N42), .CP(clk), 
        .CD(n85), .Q(ss[4]) );
  GTECH_FJK2S ss_tens_reg_1_ ( .J(n86), .K(n86), .TI(N40), .TE(N42), .CP(clk), 
        .CD(n85), .Q(ss[5]) );
  GTECH_FJK2S ss_tens_reg_2_ ( .J(n86), .K(n86), .TI(N41), .TE(N42), .CP(clk), 
        .CD(n85), .Q(ss[6]) );
  GTECH_FJK2S ss_tens_reg_3_ ( .J(n86), .K(n86), .TI(N43), .TE(N42), .CP(clk), 
        .CD(n85), .Q(ss[7]) );
  GTECH_FJK2S mm_ones_reg_0_ ( .J(n86), .K(n86), .TI(N55), .TE(N58), .CP(clk), 
        .CD(n85), .Q(mm[0]), .QN(n4) );
  GTECH_FJK2S mm_ones_reg_3_ ( .J(n86), .K(n86), .TI(N59), .TE(N58), .CP(clk), 
        .CD(n85), .Q(mm[3]), .QN(n140) );
  GTECH_FJK2S mm_ones_reg_1_ ( .J(n86), .K(n86), .TI(N56), .TE(N58), .CP(clk), 
        .CD(n85), .Q(mm[1]), .QN(n142) );
  GTECH_FJK2S mm_ones_reg_2_ ( .J(n86), .K(n86), .TI(N57), .TE(N58), .CP(clk), 
        .CD(n85), .Q(mm[2]), .QN(n141) );
  GTECH_FJK2S mm_tens_reg_0_ ( .J(n86), .K(n86), .TI(N71), .TE(N74), .CP(clk), 
        .CD(n85), .Q(mm[4]), .QN(n139) );
  GTECH_FJK2S mm_tens_reg_1_ ( .J(n86), .K(n86), .TI(N72), .TE(N74), .CP(clk), 
        .CD(n85), .Q(mm[5]), .QN(n138) );
  GTECH_FJK2S mm_tens_reg_2_ ( .J(n86), .K(n86), .TI(N73), .TE(N74), .CP(clk), 
        .CD(n85), .Q(mm[6]), .QN(n137) );
  GTECH_FJK2S mm_tens_reg_3_ ( .J(n86), .K(n86), .TI(N75), .TE(N74), .CP(clk), 
        .CD(n85), .Q(mm[7]), .QN(n5) );
  GTECH_FJK2S hh_tens_reg_0_ ( .J(n86), .K(n86), .TI(N110), .TE(N115), .CP(clk), .CD(n85), .Q(hh[4]), .QN(n149) );
  GTECH_FJK2S hh_tens_reg_1_ ( .J(n86), .K(n86), .TI(N112), .TE(N115), .CP(clk), .CD(n85), .Q(hh[5]), .QN(n6) );
  GTECH_FJK2S hh_tens_reg_2_ ( .J(n86), .K(n86), .TI(N114), .TE(N115), .CP(clk), .CD(n85), .Q(hh[6]), .QN(n7) );
  GTECH_FJK2S hh_tens_reg_3_ ( .J(n86), .K(n86), .TI(N116), .TE(N115), .CP(clk), .CD(n85), .Q(hh[7]), .QN(n8) );
  GTECH_FJK2S hh_ones_reg_0_ ( .J(n86), .K(n86), .TI(N88), .TE(N91), .CP(clk), 
        .CD(n85), .Q(hh[0]), .QN(n9) );
  GTECH_FJK2S hh_ones_reg_1_ ( .J(n86), .K(n86), .TI(N89), .TE(N91), .CP(clk), 
        .CD(n85), .Q(hh[1]), .QN(n136) );
  GTECH_FJK2S hh_ones_reg_2_ ( .J(n86), .K(n86), .TI(N90), .TE(N91), .CP(clk), 
        .CD(n85), .Q(hh[2]), .QN(n10) );
  GTECH_FJK2S hh_ones_reg_3_ ( .J(n86), .K(n86), .TI(N92), .TE(N91), .CP(clk), 
        .CD(n85), .Q(hh[3]), .QN(n135) );
  GTECH_FJK2S pm_temp_reg ( .J(n86), .K(n86), .TI(N122), .TE(N121), .CP(clk), 
        .CD(n85), .Q(pm), .QN(n11) );
  GTECH_ZERO U158 ( .Z(n86) );
  GTECH_ONE U159 ( .Z(n85) );
  GTECH_AND2 U160 ( .A(n150), .B(n151), .Z(N92) );
  GTECH_XOR2 U161 ( .A(n152), .B(n135), .Z(n150) );
  GTECH_OR2 U162 ( .A(n10), .B(n153), .Z(n152) );
  GTECH_NAND2 U163 ( .A(n154), .B(n155), .Z(N91) );
  GTECH_AND2 U164 ( .A(n156), .B(n151), .Z(N90) );
  GTECH_NOT U165 ( .A(n157), .Z(n151) );
  GTECH_XOR2 U166 ( .A(n153), .B(n10), .Z(n156) );
  GTECH_NAND2 U167 ( .A(n158), .B(n159), .Z(n153) );
  GTECH_OAI21 U168 ( .A(n160), .B(n157), .C(n154), .Z(N89) );
  GTECH_XOR2 U169 ( .A(n159), .B(n9), .Z(n160) );
  GTECH_OAI22 U170 ( .A(n155), .B(n161), .C(n158), .D(n157), .Z(N88) );
  GTECH_OR3 U171 ( .A(n162), .B(n163), .C(n155), .Z(n157) );
  GTECH_MUX2 U172 ( .A(n164), .B(n165), .S(n5), .Z(N75) );
  GTECH_AND2 U173 ( .A(n166), .B(n167), .Z(n165) );
  GTECH_OAI21 U174 ( .A(n168), .B(n167), .C(n169), .Z(n164) );
  GTECH_NOT U175 ( .A(n170), .Z(n169) );
  GTECH_MUX2 U176 ( .A(n170), .B(n171), .S(n137), .Z(N73) );
  GTECH_AND2 U177 ( .A(n166), .B(n172), .Z(n171) );
  GTECH_OAI21 U178 ( .A(n172), .B(n168), .C(n173), .Z(n170) );
  GTECH_NOT U179 ( .A(n138), .Z(n172) );
  GTECH_MUX2 U180 ( .A(N71), .B(n166), .S(n138), .Z(N72) );
  GTECH_NOT U181 ( .A(n174), .Z(n166) );
  GTECH_NAND2 U182 ( .A(n175), .B(n176), .Z(n174) );
  GTECH_NOT U183 ( .A(n173), .Z(N71) );
  GTECH_NAND2 U184 ( .A(n139), .B(n175), .Z(n173) );
  GTECH_NOT U185 ( .A(n168), .Z(n175) );
  GTECH_OR3 U186 ( .A(reset), .B(n177), .C(n178), .Z(n168) );
  GTECH_OAI22 U187 ( .A(n140), .B(n179), .C(n180), .D(n181), .Z(N59) );
  GTECH_MUX2 U188 ( .A(n182), .B(n183), .S(n140), .Z(n181) );
  GTECH_NAND2 U189 ( .A(n184), .B(n182), .Z(n183) );
  GTECH_NOT U190 ( .A(n141), .Z(n182) );
  GTECH_MUX2 U191 ( .A(n185), .B(n186), .S(n141), .Z(N57) );
  GTECH_AND2 U192 ( .A(n187), .B(n184), .Z(n186) );
  GTECH_NOT U193 ( .A(n188), .Z(n184) );
  GTECH_NOT U194 ( .A(n179), .Z(n185) );
  GTECH_NAND2 U195 ( .A(n187), .B(n188), .Z(n179) );
  GTECH_NAND2 U196 ( .A(n189), .B(n190), .Z(n188) );
  GTECH_NOT U197 ( .A(n142), .Z(n189) );
  GTECH_MUX2 U198 ( .A(N55), .B(n191), .S(n142), .Z(N56) );
  GTECH_AND2 U199 ( .A(n187), .B(n190), .Z(n191) );
  GTECH_NOT U200 ( .A(n192), .Z(N55) );
  GTECH_NAND2 U201 ( .A(n4), .B(n187), .Z(n192) );
  GTECH_NOT U202 ( .A(n180), .Z(n187) );
  GTECH_NAND2 U203 ( .A(n193), .B(n194), .Z(n180) );
  GTECH_NOT U204 ( .A(N74), .Z(n194) );
  GTECH_NAND2 U205 ( .A(n154), .B(n178), .Z(N74) );
  GTECH_MUX2 U206 ( .A(n195), .B(n196), .S(ss[7]), .Z(N43) );
  GTECH_OAI21 U207 ( .A(ss[6]), .B(n197), .C(n198), .Z(n196) );
  GTECH_NOT U208 ( .A(n199), .Z(n198) );
  GTECH_AND2 U209 ( .A(n200), .B(ss[6]), .Z(n195) );
  GTECH_MUX2 U210 ( .A(n201), .B(n199), .S(ss[6]), .Z(N41) );
  GTECH_OAI21 U211 ( .A(ss[5]), .B(n197), .C(n202), .Z(n199) );
  GTECH_AND2 U212 ( .A(ss[5]), .B(n200), .Z(n201) );
  GTECH_MUX2 U213 ( .A(n200), .B(N39), .S(ss[5]), .Z(N40) );
  GTECH_NOT U214 ( .A(n203), .Z(n200) );
  GTECH_NAND2 U215 ( .A(n204), .B(ss[4]), .Z(n203) );
  GTECH_NOT U216 ( .A(n202), .Z(N39) );
  GTECH_NAND2 U217 ( .A(n204), .B(n205), .Z(n202) );
  GTECH_NOT U218 ( .A(ss[4]), .Z(n205) );
  GTECH_NOT U219 ( .A(n197), .Z(n204) );
  GTECH_NAND2 U220 ( .A(n206), .B(n207), .Z(n197) );
  GTECH_NOT U221 ( .A(N58), .Z(n207) );
  GTECH_NAND2 U222 ( .A(n154), .B(n208), .Z(N58) );
  GTECH_MUX2 U223 ( .A(n209), .B(n210), .S(ss[3]), .Z(N26) );
  GTECH_OAI21 U224 ( .A(ss[2]), .B(n211), .C(n212), .Z(n210) );
  GTECH_NOT U225 ( .A(n213), .Z(n212) );
  GTECH_AND2 U226 ( .A(ss[2]), .B(n214), .Z(n209) );
  GTECH_NAND2 U227 ( .A(n154), .B(n215), .Z(N25) );
  GTECH_NOT U228 ( .A(ena), .Z(n215) );
  GTECH_MUX2 U229 ( .A(n214), .B(n213), .S(ss[2]), .Z(N24) );
  GTECH_OAI21 U230 ( .A(ss[1]), .B(n211), .C(n216), .Z(n213) );
  GTECH_NOT U231 ( .A(n217), .Z(n214) );
  GTECH_OR3 U232 ( .A(n218), .B(n211), .C(n219), .Z(n217) );
  GTECH_MUX2 U233 ( .A(n220), .B(N22), .S(ss[1]), .Z(N23) );
  GTECH_AND2 U234 ( .A(n221), .B(ss[0]), .Z(n220) );
  GTECH_NOT U235 ( .A(n216), .Z(N22) );
  GTECH_NAND2 U236 ( .A(n221), .B(n218), .Z(n216) );
  GTECH_NOT U237 ( .A(ss[0]), .Z(n218) );
  GTECH_NOT U238 ( .A(n211), .Z(n221) );
  GTECH_NAND2 U239 ( .A(ena), .B(n222), .Z(n211) );
  GTECH_NOT U240 ( .A(N42), .Z(n222) );
  GTECH_NAND2 U241 ( .A(n154), .B(n223), .Z(N42) );
  GTECH_AND2 U242 ( .A(n224), .B(n11), .Z(N122) );
  GTECH_NOT U243 ( .A(n225), .Z(n224) );
  GTECH_NAND2 U244 ( .A(n154), .B(n225), .Z(N121) );
  GTECH_NAND5 U245 ( .A(n226), .B(n8), .C(n7), .D(n6), .E(n227), .Z(n225) );
  GTECH_AND5 U246 ( .A(n228), .B(n158), .C(n10), .D(n135), .E(n136), .Z(n227)
         );
  GTECH_AND2 U247 ( .A(n229), .B(n230), .Z(N116) );
  GTECH_XOR2 U248 ( .A(n231), .B(n8), .Z(n229) );
  GTECH_OR2 U249 ( .A(n7), .B(n232), .Z(n231) );
  GTECH_OR3 U250 ( .A(reset), .B(n162), .C(n163), .Z(N115) );
  GTECH_NOT U251 ( .A(n161), .Z(n163) );
  GTECH_NAND5 U252 ( .A(n9), .B(n8), .C(n7), .D(n6), .E(n233), .Z(n161) );
  GTECH_AND5 U253 ( .A(n159), .B(n228), .C(n177), .D(n135), .E(n10), .Z(n233)
         );
  GTECH_NOT U254 ( .A(n136), .Z(n159) );
  GTECH_AND2 U255 ( .A(n234), .B(n230), .Z(N114) );
  GTECH_XOR2 U256 ( .A(n232), .B(n7), .Z(n234) );
  GTECH_NAND2 U257 ( .A(n235), .B(n228), .Z(n232) );
  GTECH_NOT U258 ( .A(n6), .Z(n235) );
  GTECH_AND2 U259 ( .A(n230), .B(n236), .Z(N112) );
  GTECH_XOR2 U260 ( .A(n6), .B(n149), .Z(n236) );
  GTECH_NOT U261 ( .A(n237), .Z(n230) );
  GTECH_OAI21 U262 ( .A(n237), .B(n228), .C(n154), .Z(N110) );
  GTECH_NOT U263 ( .A(n149), .Z(n228) );
  GTECH_NAND2 U264 ( .A(n162), .B(n226), .Z(n237) );
  GTECH_NOT U265 ( .A(n155), .Z(n226) );
  GTECH_NAND2 U266 ( .A(n177), .B(n154), .Z(n155) );
  GTECH_NOT U267 ( .A(reset), .Z(n154) );
  GTECH_NOT U268 ( .A(n238), .Z(n162) );
  GTECH_NAND5 U269 ( .A(n239), .B(n158), .C(n177), .D(n136), .E(n10), .Z(n238)
         );
  GTECH_NOT U270 ( .A(n240), .Z(n177) );
  GTECH_NAND5 U271 ( .A(n167), .B(n176), .C(n241), .D(n5), .E(n138), .Z(n240)
         );
  GTECH_NOT U272 ( .A(n178), .Z(n241) );
  GTECH_NAND5 U273 ( .A(n242), .B(n190), .C(n193), .D(n142), .E(n141), .Z(n178) );
  GTECH_NOT U274 ( .A(n208), .Z(n193) );
  GTECH_NAND5 U275 ( .A(n243), .B(n244), .C(n206), .D(ss[6]), .E(ss[4]), .Z(
        n208) );
  GTECH_NOT U276 ( .A(n223), .Z(n206) );
  GTECH_NAND5 U277 ( .A(n219), .B(n245), .C(ena), .D(ss[3]), .E(ss[0]), .Z(
        n223) );
  GTECH_NOT U278 ( .A(ss[2]), .Z(n245) );
  GTECH_NOT U279 ( .A(ss[1]), .Z(n219) );
  GTECH_NOT U280 ( .A(ss[7]), .Z(n244) );
  GTECH_NOT U281 ( .A(ss[5]), .Z(n243) );
  GTECH_NOT U282 ( .A(n4), .Z(n190) );
  GTECH_NOT U283 ( .A(n140), .Z(n242) );
  GTECH_NOT U284 ( .A(n139), .Z(n176) );
  GTECH_NOT U285 ( .A(n137), .Z(n167) );
  GTECH_NOT U286 ( .A(n9), .Z(n158) );
  GTECH_NOT U287 ( .A(n135), .Z(n239) );
endmodule

