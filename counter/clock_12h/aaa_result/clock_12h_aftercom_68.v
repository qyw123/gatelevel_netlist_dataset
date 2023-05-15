
module clock_12h ( clk, reset, ena, pm, hh, mm, ss );
  output [7:0] hh;
  output [7:0] mm;
  output [7:0] ss;
  input clk, reset, ena;
  output pm;
  wire   N22, N23, N24, N25, N26, N39, N40, N41, N42, N43, N55, N56, N57, N58,
         N59, N71, N72, N73, N74, N75, N88, N89, N90, N91, N92, N110, N112,
         N114, N115, N116, N121, N122, n4, n5, n6, n7, n8, n9, n10, n11, n81,
         n82, n131, n132, n133, n134, n135, n136, n137, n138, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238;

  GTECH_FJK2S ss_ones_reg_0_ ( .J(n82), .K(n82), .TI(N22), .TE(N25), .CP(clk), 
        .CD(n81), .Q(ss[0]) );
  GTECH_FJK2S ss_ones_reg_3_ ( .J(n82), .K(n82), .TI(N26), .TE(N25), .CP(clk), 
        .CD(n81), .Q(ss[3]) );
  GTECH_FJK2S ss_ones_reg_1_ ( .J(n82), .K(n82), .TI(N23), .TE(N25), .CP(clk), 
        .CD(n81), .Q(ss[1]) );
  GTECH_FJK2S ss_ones_reg_2_ ( .J(n82), .K(n82), .TI(N24), .TE(N25), .CP(clk), 
        .CD(n81), .Q(ss[2]) );
  GTECH_FJK2S ss_tens_reg_0_ ( .J(n82), .K(n82), .TI(N39), .TE(N42), .CP(clk), 
        .CD(n81), .Q(ss[4]) );
  GTECH_FJK2S ss_tens_reg_2_ ( .J(n82), .K(n82), .TI(N41), .TE(N42), .CP(clk), 
        .CD(n81), .Q(ss[6]) );
  GTECH_FJK2S ss_tens_reg_3_ ( .J(n82), .K(n82), .TI(N43), .TE(N42), .CP(clk), 
        .CD(n81), .Q(ss[7]) );
  GTECH_FJK2S ss_tens_reg_1_ ( .J(n82), .K(n82), .TI(N40), .TE(N42), .CP(clk), 
        .CD(n81), .Q(ss[5]) );
  GTECH_FJK2S mm_ones_reg_0_ ( .J(n82), .K(n82), .TI(N55), .TE(N58), .CP(clk), 
        .CD(n81), .Q(mm[0]), .QN(n4) );
  GTECH_FJK2S mm_ones_reg_3_ ( .J(n82), .K(n82), .TI(N59), .TE(N58), .CP(clk), 
        .CD(n81), .Q(mm[3]), .QN(n136) );
  GTECH_FJK2S mm_ones_reg_1_ ( .J(n82), .K(n82), .TI(N56), .TE(N58), .CP(clk), 
        .CD(n81), .Q(mm[1]), .QN(n138) );
  GTECH_FJK2S mm_ones_reg_2_ ( .J(n82), .K(n82), .TI(N57), .TE(N58), .CP(clk), 
        .CD(n81), .Q(mm[2]), .QN(n137) );
  GTECH_FJK2S mm_tens_reg_0_ ( .J(n82), .K(n82), .TI(N71), .TE(N74), .CP(clk), 
        .CD(n81), .Q(mm[4]), .QN(n5) );
  GTECH_FJK2S mm_tens_reg_2_ ( .J(n82), .K(n82), .TI(N73), .TE(N74), .CP(clk), 
        .CD(n81), .Q(mm[6]), .QN(n134) );
  GTECH_FJK2S mm_tens_reg_3_ ( .J(n82), .K(n82), .TI(N75), .TE(N74), .CP(clk), 
        .CD(n81), .Q(mm[7]), .QN(n133) );
  GTECH_FJK2S mm_tens_reg_1_ ( .J(n82), .K(n82), .TI(N72), .TE(N74), .CP(clk), 
        .CD(n81), .Q(mm[5]), .QN(n135) );
  GTECH_FJK2S hh_tens_reg_0_ ( .J(n82), .K(n82), .TI(N110), .TE(N115), .CP(clk), .CD(n81), .Q(hh[4]), .QN(n145) );
  GTECH_FJK2S hh_tens_reg_1_ ( .J(n82), .K(n82), .TI(N112), .TE(N115), .CP(clk), .CD(n81), .Q(hh[5]), .QN(n6) );
  GTECH_FJK2S hh_tens_reg_2_ ( .J(n82), .K(n82), .TI(N114), .TE(N115), .CP(clk), .CD(n81), .Q(hh[6]), .QN(n7) );
  GTECH_FJK2S hh_tens_reg_3_ ( .J(n82), .K(n82), .TI(N116), .TE(N115), .CP(clk), .CD(n81), .Q(hh[7]), .QN(n8) );
  GTECH_FJK2S hh_ones_reg_0_ ( .J(n82), .K(n82), .TI(N88), .TE(N91), .CP(clk), 
        .CD(n81), .Q(hh[0]), .QN(n132) );
  GTECH_FJK2S hh_ones_reg_1_ ( .J(n82), .K(n82), .TI(N89), .TE(N91), .CP(clk), 
        .CD(n81), .Q(hh[1]), .QN(n9) );
  GTECH_FJK2S hh_ones_reg_2_ ( .J(n82), .K(n82), .TI(N90), .TE(N91), .CP(clk), 
        .CD(n81), .Q(hh[2]), .QN(n131) );
  GTECH_FJK2S hh_ones_reg_3_ ( .J(n82), .K(n82), .TI(N92), .TE(N91), .CP(clk), 
        .CD(n81), .Q(hh[3]), .QN(n10) );
  GTECH_FJK2S pm_temp_reg ( .J(n82), .K(n82), .TI(N122), .TE(N121), .CP(clk), 
        .CD(n81), .Q(pm), .QN(n11) );
  GTECH_ZERO U154 ( .Z(n82) );
  GTECH_ONE U155 ( .Z(n81) );
  GTECH_AND2 U156 ( .A(n146), .B(n147), .Z(N92) );
  GTECH_XOR2 U157 ( .A(n148), .B(n10), .Z(n146) );
  GTECH_OR2 U158 ( .A(n131), .B(n149), .Z(n148) );
  GTECH_NAND2 U159 ( .A(n150), .B(n151), .Z(N91) );
  GTECH_AND2 U160 ( .A(n152), .B(n147), .Z(N90) );
  GTECH_NOT U161 ( .A(n153), .Z(n147) );
  GTECH_XOR2 U162 ( .A(n149), .B(n131), .Z(n152) );
  GTECH_NAND2 U163 ( .A(n154), .B(n155), .Z(n149) );
  GTECH_OAI21 U164 ( .A(n156), .B(n153), .C(n150), .Z(N89) );
  GTECH_XOR2 U165 ( .A(n155), .B(n9), .Z(n156) );
  GTECH_OAI22 U166 ( .A(n151), .B(n157), .C(n155), .D(n153), .Z(N88) );
  GTECH_NAND3 U167 ( .A(n157), .B(n158), .C(n159), .Z(n153) );
  GTECH_MUX2 U168 ( .A(n160), .B(n161), .S(n133), .Z(N75) );
  GTECH_AND2 U169 ( .A(n162), .B(n163), .Z(n161) );
  GTECH_OAI21 U170 ( .A(n164), .B(n163), .C(n165), .Z(n160) );
  GTECH_NOT U171 ( .A(n166), .Z(N73) );
  GTECH_MUX2 U172 ( .A(n165), .B(n167), .S(n134), .Z(n166) );
  GTECH_OR2 U173 ( .A(n135), .B(n168), .Z(n167) );
  GTECH_OAI21 U174 ( .A(n5), .B(n135), .C(n169), .Z(n165) );
  GTECH_MUX2 U175 ( .A(N71), .B(n162), .S(n135), .Z(N72) );
  GTECH_NOT U176 ( .A(n168), .Z(n162) );
  GTECH_NAND2 U177 ( .A(n169), .B(n170), .Z(n168) );
  GTECH_NOT U178 ( .A(n171), .Z(N71) );
  GTECH_NAND2 U179 ( .A(n5), .B(n169), .Z(n171) );
  GTECH_NOT U180 ( .A(n164), .Z(n169) );
  GTECH_NAND3 U181 ( .A(n172), .B(n150), .C(n173), .Z(n164) );
  GTECH_MUX2 U182 ( .A(n174), .B(n175), .S(n136), .Z(N59) );
  GTECH_AND2 U183 ( .A(n176), .B(n177), .Z(n175) );
  GTECH_OAI21 U184 ( .A(n177), .B(n178), .C(n179), .Z(n174) );
  GTECH_NOT U185 ( .A(n180), .Z(n179) );
  GTECH_NOT U186 ( .A(n137), .Z(n177) );
  GTECH_MUX2 U187 ( .A(n180), .B(n176), .S(n137), .Z(N57) );
  GTECH_NOT U188 ( .A(n181), .Z(n176) );
  GTECH_NAND3 U189 ( .A(n182), .B(n183), .C(n184), .Z(n181) );
  GTECH_OAI21 U190 ( .A(n182), .B(n178), .C(n185), .Z(n180) );
  GTECH_NOT U191 ( .A(n138), .Z(n182) );
  GTECH_MUX2 U192 ( .A(N55), .B(n186), .S(n138), .Z(N56) );
  GTECH_AND2 U193 ( .A(n184), .B(n183), .Z(n186) );
  GTECH_NOT U194 ( .A(n185), .Z(N55) );
  GTECH_NAND2 U195 ( .A(n4), .B(n184), .Z(n185) );
  GTECH_NOT U196 ( .A(n178), .Z(n184) );
  GTECH_NAND2 U197 ( .A(n187), .B(n188), .Z(n178) );
  GTECH_NOT U198 ( .A(N74), .Z(n188) );
  GTECH_NAND2 U199 ( .A(n150), .B(n189), .Z(N74) );
  GTECH_MUX2 U200 ( .A(n190), .B(n191), .S(ss[7]), .Z(N43) );
  GTECH_OAI21 U201 ( .A(ss[6]), .B(n192), .C(n193), .Z(n191) );
  GTECH_AND2 U202 ( .A(n194), .B(ss[6]), .Z(n190) );
  GTECH_MUX2 U203 ( .A(n195), .B(n196), .S(ss[6]), .Z(N41) );
  GTECH_NOT U204 ( .A(n193), .Z(n196) );
  GTECH_OAI21 U205 ( .A(n197), .B(n198), .C(n199), .Z(n193) );
  GTECH_AND2 U206 ( .A(ss[5]), .B(n194), .Z(n195) );
  GTECH_MUX2 U207 ( .A(n194), .B(N39), .S(ss[5]), .Z(N40) );
  GTECH_NOT U208 ( .A(n200), .Z(n194) );
  GTECH_NAND2 U209 ( .A(n199), .B(ss[4]), .Z(n200) );
  GTECH_NOT U210 ( .A(n201), .Z(N39) );
  GTECH_NAND2 U211 ( .A(n199), .B(n197), .Z(n201) );
  GTECH_NOT U212 ( .A(ss[4]), .Z(n197) );
  GTECH_NOT U213 ( .A(n192), .Z(n199) );
  GTECH_NAND2 U214 ( .A(n202), .B(n203), .Z(n192) );
  GTECH_NOT U215 ( .A(N58), .Z(n203) );
  GTECH_NAND2 U216 ( .A(n150), .B(n204), .Z(N58) );
  GTECH_MUX2 U217 ( .A(n205), .B(n206), .S(ss[3]), .Z(N26) );
  GTECH_OAI21 U218 ( .A(ss[2]), .B(n207), .C(n208), .Z(n206) );
  GTECH_NOT U219 ( .A(n209), .Z(n208) );
  GTECH_AND2 U220 ( .A(ss[2]), .B(n210), .Z(n205) );
  GTECH_NAND2 U221 ( .A(n150), .B(n211), .Z(N25) );
  GTECH_NOT U222 ( .A(ena), .Z(n211) );
  GTECH_MUX2 U223 ( .A(n210), .B(n209), .S(ss[2]), .Z(N24) );
  GTECH_OAI21 U224 ( .A(ss[1]), .B(n207), .C(n212), .Z(n209) );
  GTECH_NOT U225 ( .A(n213), .Z(n210) );
  GTECH_NAND3 U226 ( .A(n214), .B(ss[0]), .C(ss[1]), .Z(n213) );
  GTECH_MUX2 U227 ( .A(n215), .B(N22), .S(ss[1]), .Z(N23) );
  GTECH_AND2 U228 ( .A(n214), .B(ss[0]), .Z(n215) );
  GTECH_NOT U229 ( .A(n212), .Z(N22) );
  GTECH_NAND2 U230 ( .A(n214), .B(n216), .Z(n212) );
  GTECH_NOT U231 ( .A(ss[0]), .Z(n216) );
  GTECH_NOT U232 ( .A(n207), .Z(n214) );
  GTECH_NAND2 U233 ( .A(ena), .B(n217), .Z(n207) );
  GTECH_NOT U234 ( .A(N42), .Z(n217) );
  GTECH_NAND2 U235 ( .A(n150), .B(n218), .Z(N42) );
  GTECH_AND2 U236 ( .A(n219), .B(n11), .Z(N122) );
  GTECH_NOT U237 ( .A(n220), .Z(n219) );
  GTECH_NAND2 U238 ( .A(n150), .B(n220), .Z(N121) );
  GTECH_NAND5 U239 ( .A(n159), .B(n8), .C(n7), .D(n6), .E(n221), .Z(n220) );
  GTECH_AND5 U240 ( .A(n155), .B(n222), .C(n131), .D(n10), .E(n9), .Z(n221) );
  GTECH_AND2 U241 ( .A(n223), .B(n224), .Z(N116) );
  GTECH_XOR2 U242 ( .A(n225), .B(n8), .Z(n223) );
  GTECH_OR2 U243 ( .A(n7), .B(n226), .Z(n225) );
  GTECH_NAND3 U244 ( .A(n158), .B(n150), .C(n157), .Z(N115) );
  GTECH_NAND5 U245 ( .A(n8), .B(n7), .C(n6), .D(n132), .E(n227), .Z(n157) );
  GTECH_AND5 U246 ( .A(n222), .B(n154), .C(n228), .D(n10), .E(n131), .Z(n227)
         );
  GTECH_NOT U247 ( .A(n9), .Z(n154) );
  GTECH_AND2 U248 ( .A(n229), .B(n224), .Z(N114) );
  GTECH_XOR2 U249 ( .A(n226), .B(n7), .Z(n229) );
  GTECH_NAND2 U250 ( .A(n230), .B(n222), .Z(n226) );
  GTECH_NOT U251 ( .A(n6), .Z(n230) );
  GTECH_AND2 U252 ( .A(n224), .B(n231), .Z(N112) );
  GTECH_XOR2 U253 ( .A(n6), .B(n145), .Z(n231) );
  GTECH_NOT U254 ( .A(n232), .Z(n224) );
  GTECH_OAI21 U255 ( .A(n232), .B(n222), .C(n150), .Z(N110) );
  GTECH_NOT U256 ( .A(n145), .Z(n222) );
  GTECH_NAND2 U257 ( .A(n233), .B(n159), .Z(n232) );
  GTECH_NOT U258 ( .A(n151), .Z(n159) );
  GTECH_NAND2 U259 ( .A(n228), .B(n150), .Z(n151) );
  GTECH_NOT U260 ( .A(reset), .Z(n150) );
  GTECH_NOT U261 ( .A(n158), .Z(n233) );
  GTECH_NAND5 U262 ( .A(n234), .B(n155), .C(n228), .D(n9), .E(n131), .Z(n158)
         );
  GTECH_NOT U263 ( .A(n172), .Z(n228) );
  GTECH_NAND5 U264 ( .A(n163), .B(n170), .C(n173), .D(n135), .E(n133), .Z(n172) );
  GTECH_NOT U265 ( .A(n189), .Z(n173) );
  GTECH_NAND5 U266 ( .A(n235), .B(n183), .C(n187), .D(n138), .E(n137), .Z(n189) );
  GTECH_NOT U267 ( .A(n204), .Z(n187) );
  GTECH_NAND5 U268 ( .A(n198), .B(n236), .C(n202), .D(ss[6]), .E(ss[4]), .Z(
        n204) );
  GTECH_NOT U269 ( .A(n218), .Z(n202) );
  GTECH_NAND5 U270 ( .A(n237), .B(n238), .C(ena), .D(ss[3]), .E(ss[0]), .Z(
        n218) );
  GTECH_NOT U271 ( .A(ss[2]), .Z(n238) );
  GTECH_NOT U272 ( .A(ss[1]), .Z(n237) );
  GTECH_NOT U273 ( .A(ss[7]), .Z(n236) );
  GTECH_NOT U274 ( .A(ss[5]), .Z(n198) );
  GTECH_NOT U275 ( .A(n4), .Z(n183) );
  GTECH_NOT U276 ( .A(n136), .Z(n235) );
  GTECH_NOT U277 ( .A(n5), .Z(n170) );
  GTECH_NOT U278 ( .A(n134), .Z(n163) );
  GTECH_NOT U279 ( .A(n132), .Z(n155) );
  GTECH_NOT U280 ( .A(n10), .Z(n234) );
endmodule

