
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
  GTECH_FJK2S ss_tens_reg_1_ ( .J(n82), .K(n82), .TI(N40), .TE(N42), .CP(clk), 
        .CD(n81), .Q(ss[5]) );
  GTECH_FJK2S ss_tens_reg_2_ ( .J(n82), .K(n82), .TI(N41), .TE(N42), .CP(clk), 
        .CD(n81), .Q(ss[6]) );
  GTECH_FJK2S ss_tens_reg_3_ ( .J(n82), .K(n82), .TI(N43), .TE(N42), .CP(clk), 
        .CD(n81), .Q(ss[7]) );
  GTECH_FJK2S mm_ones_reg_0_ ( .J(n82), .K(n82), .TI(N55), .TE(N58), .CP(clk), 
        .CD(n81), .Q(mm[0]), .QN(n4) );
  GTECH_FJK2S mm_ones_reg_3_ ( .J(n82), .K(n82), .TI(N59), .TE(N58), .CP(clk), 
        .CD(n81), .Q(mm[3]), .QN(n136) );
  GTECH_FJK2S mm_ones_reg_1_ ( .J(n82), .K(n82), .TI(N56), .TE(N58), .CP(clk), 
        .CD(n81), .Q(mm[1]), .QN(n138) );
  GTECH_FJK2S mm_ones_reg_2_ ( .J(n82), .K(n82), .TI(N57), .TE(N58), .CP(clk), 
        .CD(n81), .Q(mm[2]), .QN(n137) );
  GTECH_FJK2S mm_tens_reg_0_ ( .J(n82), .K(n82), .TI(N71), .TE(N74), .CP(clk), 
        .CD(n81), .Q(mm[4]), .QN(n135) );
  GTECH_FJK2S mm_tens_reg_1_ ( .J(n82), .K(n82), .TI(N72), .TE(N74), .CP(clk), 
        .CD(n81), .Q(mm[5]), .QN(n134) );
  GTECH_FJK2S mm_tens_reg_2_ ( .J(n82), .K(n82), .TI(N73), .TE(N74), .CP(clk), 
        .CD(n81), .Q(mm[6]), .QN(n133) );
  GTECH_FJK2S mm_tens_reg_3_ ( .J(n82), .K(n82), .TI(N75), .TE(N74), .CP(clk), 
        .CD(n81), .Q(mm[7]), .QN(n5) );
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
  GTECH_OAI21 U168 ( .A(n5), .B(n160), .C(n161), .Z(N75) );
  GTECH_NAND3 U169 ( .A(n162), .B(n163), .C(n5), .Z(n161) );
  GTECH_OA21 U170 ( .A(n164), .B(n163), .C(n165), .Z(n160) );
  GTECH_OAI21 U171 ( .A(n133), .B(n165), .C(n166), .Z(N73) );
  GTECH_NAND3 U172 ( .A(n162), .B(n167), .C(n133), .Z(n166) );
  GTECH_NOT U173 ( .A(n168), .Z(n162) );
  GTECH_OAI21 U174 ( .A(n135), .B(n134), .C(n169), .Z(n165) );
  GTECH_OAI22 U175 ( .A(n167), .B(n168), .C(n134), .D(n170), .Z(N72) );
  GTECH_NAND2 U176 ( .A(n169), .B(n171), .Z(n168) );
  GTECH_NOT U177 ( .A(n134), .Z(n167) );
  GTECH_NOT U178 ( .A(n170), .Z(N71) );
  GTECH_NAND2 U179 ( .A(n135), .B(n169), .Z(n170) );
  GTECH_NOT U180 ( .A(n164), .Z(n169) );
  GTECH_NAND3 U181 ( .A(n172), .B(n150), .C(n173), .Z(n164) );
  GTECH_OAI22 U182 ( .A(n174), .B(n175), .C(n136), .D(n176), .Z(N59) );
  GTECH_OA21 U183 ( .A(n177), .B(n178), .C(n179), .Z(n176) );
  GTECH_NAND2 U184 ( .A(n178), .B(n136), .Z(n175) );
  GTECH_OAI22 U185 ( .A(n137), .B(n179), .C(n178), .D(n174), .Z(N57) );
  GTECH_NAND3 U186 ( .A(n180), .B(n181), .C(n182), .Z(n174) );
  GTECH_NOT U187 ( .A(n137), .Z(n178) );
  GTECH_NOT U188 ( .A(n183), .Z(n179) );
  GTECH_OAI21 U189 ( .A(n180), .B(n177), .C(n184), .Z(n183) );
  GTECH_NOT U190 ( .A(n138), .Z(n180) );
  GTECH_OAI21 U191 ( .A(n138), .B(n184), .C(n185), .Z(N56) );
  GTECH_NAND3 U192 ( .A(n182), .B(n181), .C(n138), .Z(n185) );
  GTECH_NOT U193 ( .A(n184), .Z(N55) );
  GTECH_NAND2 U194 ( .A(n4), .B(n182), .Z(n184) );
  GTECH_NOT U195 ( .A(n177), .Z(n182) );
  GTECH_NAND2 U196 ( .A(n186), .B(n187), .Z(n177) );
  GTECH_NOT U197 ( .A(N74), .Z(n187) );
  GTECH_NAND2 U198 ( .A(n150), .B(n188), .Z(N74) );
  GTECH_OAI21 U199 ( .A(n189), .B(n190), .C(n191), .Z(N43) );
  GTECH_NAND3 U200 ( .A(n192), .B(ss[6]), .C(n190), .Z(n191) );
  GTECH_OA21 U201 ( .A(ss[6]), .B(n193), .C(n194), .Z(n189) );
  GTECH_OAI21 U202 ( .A(n194), .B(n195), .C(n196), .Z(N41) );
  GTECH_NAND3 U203 ( .A(ss[5]), .B(n192), .C(n195), .Z(n196) );
  GTECH_NOT U204 ( .A(n197), .Z(n192) );
  GTECH_NOT U205 ( .A(ss[6]), .Z(n195) );
  GTECH_NOT U206 ( .A(n198), .Z(n194) );
  GTECH_OAI21 U207 ( .A(ss[5]), .B(n193), .C(n199), .Z(n198) );
  GTECH_OAI22 U208 ( .A(n200), .B(n199), .C(ss[5]), .D(n197), .Z(N40) );
  GTECH_NAND2 U209 ( .A(n201), .B(ss[4]), .Z(n197) );
  GTECH_NOT U210 ( .A(n199), .Z(N39) );
  GTECH_NAND2 U211 ( .A(n201), .B(n202), .Z(n199) );
  GTECH_NOT U212 ( .A(ss[4]), .Z(n202) );
  GTECH_NOT U213 ( .A(n193), .Z(n201) );
  GTECH_NAND2 U214 ( .A(n203), .B(n204), .Z(n193) );
  GTECH_NOT U215 ( .A(N58), .Z(n204) );
  GTECH_NAND2 U216 ( .A(n150), .B(n205), .Z(N58) );
  GTECH_OAI2N2 U217 ( .A(n206), .B(n207), .C(n208), .D(ss[2]), .Z(N26) );
  GTECH_AND_NOT U218 ( .A(n207), .B(n209), .Z(n208) );
  GTECH_NOT U219 ( .A(ss[3]), .Z(n207) );
  GTECH_OA21 U220 ( .A(n210), .B(ss[2]), .C(n211), .Z(n206) );
  GTECH_NAND2 U221 ( .A(n150), .B(n212), .Z(N25) );
  GTECH_NOT U222 ( .A(ena), .Z(n212) );
  GTECH_OAI22 U223 ( .A(n211), .B(n213), .C(ss[2]), .D(n209), .Z(N24) );
  GTECH_NAND3 U224 ( .A(n214), .B(ss[0]), .C(ss[1]), .Z(n209) );
  GTECH_NOT U225 ( .A(n215), .Z(n211) );
  GTECH_OAI21 U226 ( .A(ss[1]), .B(n210), .C(n216), .Z(n215) );
  GTECH_OAI21 U227 ( .A(n217), .B(n216), .C(n218), .Z(N23) );
  GTECH_NAND3 U228 ( .A(n214), .B(ss[0]), .C(n217), .Z(n218) );
  GTECH_NOT U229 ( .A(n216), .Z(N22) );
  GTECH_NAND2 U230 ( .A(n214), .B(n219), .Z(n216) );
  GTECH_NOT U231 ( .A(ss[0]), .Z(n219) );
  GTECH_NOT U232 ( .A(n210), .Z(n214) );
  GTECH_NAND2 U233 ( .A(ena), .B(n220), .Z(n210) );
  GTECH_NOT U234 ( .A(N42), .Z(n220) );
  GTECH_NAND2 U235 ( .A(n150), .B(n221), .Z(N42) );
  GTECH_AND2 U236 ( .A(n222), .B(n11), .Z(N122) );
  GTECH_NOT U237 ( .A(n223), .Z(n222) );
  GTECH_NAND2 U238 ( .A(n150), .B(n223), .Z(N121) );
  GTECH_NAND5 U239 ( .A(n159), .B(n8), .C(n7), .D(n6), .E(n224), .Z(n223) );
  GTECH_AND5 U240 ( .A(n155), .B(n225), .C(n131), .D(n10), .E(n9), .Z(n224) );
  GTECH_AND2 U241 ( .A(n226), .B(n227), .Z(N116) );
  GTECH_XOR2 U242 ( .A(n228), .B(n8), .Z(n226) );
  GTECH_OR2 U243 ( .A(n7), .B(n229), .Z(n228) );
  GTECH_NAND3 U244 ( .A(n158), .B(n150), .C(n157), .Z(N115) );
  GTECH_NAND5 U245 ( .A(n8), .B(n7), .C(n6), .D(n132), .E(n230), .Z(n157) );
  GTECH_AND5 U246 ( .A(n225), .B(n154), .C(n231), .D(n10), .E(n131), .Z(n230)
         );
  GTECH_NOT U247 ( .A(n9), .Z(n154) );
  GTECH_AND2 U248 ( .A(n232), .B(n227), .Z(N114) );
  GTECH_XOR2 U249 ( .A(n229), .B(n7), .Z(n232) );
  GTECH_NAND2 U250 ( .A(n233), .B(n225), .Z(n229) );
  GTECH_NOT U251 ( .A(n6), .Z(n233) );
  GTECH_AND2 U252 ( .A(n227), .B(n234), .Z(N112) );
  GTECH_XOR2 U253 ( .A(n6), .B(n145), .Z(n234) );
  GTECH_NOT U254 ( .A(n235), .Z(n227) );
  GTECH_OAI21 U255 ( .A(n235), .B(n225), .C(n150), .Z(N110) );
  GTECH_NOT U256 ( .A(n145), .Z(n225) );
  GTECH_NAND2 U257 ( .A(n236), .B(n159), .Z(n235) );
  GTECH_NOT U258 ( .A(n151), .Z(n159) );
  GTECH_NAND2 U259 ( .A(n231), .B(n150), .Z(n151) );
  GTECH_NOT U260 ( .A(reset), .Z(n150) );
  GTECH_NOT U261 ( .A(n158), .Z(n236) );
  GTECH_NAND5 U262 ( .A(n237), .B(n155), .C(n231), .D(n9), .E(n131), .Z(n158)
         );
  GTECH_NOT U263 ( .A(n172), .Z(n231) );
  GTECH_NAND5 U264 ( .A(n163), .B(n171), .C(n173), .D(n5), .E(n134), .Z(n172)
         );
  GTECH_NOT U265 ( .A(n188), .Z(n173) );
  GTECH_NAND5 U266 ( .A(n238), .B(n181), .C(n186), .D(n138), .E(n137), .Z(n188) );
  GTECH_NOT U267 ( .A(n205), .Z(n186) );
  GTECH_NAND5 U268 ( .A(n200), .B(n190), .C(n203), .D(ss[6]), .E(ss[4]), .Z(
        n205) );
  GTECH_NOT U269 ( .A(n221), .Z(n203) );
  GTECH_NAND5 U270 ( .A(n217), .B(n213), .C(ena), .D(ss[3]), .E(ss[0]), .Z(
        n221) );
  GTECH_NOT U271 ( .A(ss[2]), .Z(n213) );
  GTECH_NOT U272 ( .A(ss[1]), .Z(n217) );
  GTECH_NOT U273 ( .A(ss[7]), .Z(n190) );
  GTECH_NOT U274 ( .A(ss[5]), .Z(n200) );
  GTECH_NOT U275 ( .A(n4), .Z(n181) );
  GTECH_NOT U276 ( .A(n136), .Z(n238) );
  GTECH_NOT U277 ( .A(n135), .Z(n171) );
  GTECH_NOT U278 ( .A(n133), .Z(n163) );
  GTECH_NOT U279 ( .A(n132), .Z(n155) );
  GTECH_NOT U280 ( .A(n10), .Z(n237) );
endmodule

