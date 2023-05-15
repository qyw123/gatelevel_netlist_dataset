
module clock_12h ( clk, reset, ena, pm, hh, mm, ss );
  output [7:0] hh;
  output [7:0] mm;
  output [7:0] ss;
  input clk, reset, ena;
  output pm;
  wire   N22, N23, N24, N25, N26, N39, N40, N41, N42, N43, N55, N56, N57, N58,
         N59, N71, N72, N73, N74, N75, N88, N89, N90, N91, N92, N110, N112,
         N114, N115, N116, N121, N122, n4, n5, n6, n7, n8, n9, n10, n11, n83,
         n84, n133, n134, n135, n136, n137, n138, n139, n140, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241;

  GTECH_FJK2S ss_ones_reg_0_ ( .J(n84), .K(n84), .TI(N22), .TE(N25), .CP(clk), 
        .CD(n83), .Q(ss[0]) );
  GTECH_FJK2S ss_ones_reg_3_ ( .J(n84), .K(n84), .TI(N26), .TE(N25), .CP(clk), 
        .CD(n83), .Q(ss[3]) );
  GTECH_FJK2S ss_ones_reg_1_ ( .J(n84), .K(n84), .TI(N23), .TE(N25), .CP(clk), 
        .CD(n83), .Q(ss[1]) );
  GTECH_FJK2S ss_ones_reg_2_ ( .J(n84), .K(n84), .TI(N24), .TE(N25), .CP(clk), 
        .CD(n83), .Q(ss[2]) );
  GTECH_FJK2S ss_tens_reg_0_ ( .J(n84), .K(n84), .TI(N39), .TE(N42), .CP(clk), 
        .CD(n83), .Q(ss[4]) );
  GTECH_FJK2S ss_tens_reg_2_ ( .J(n84), .K(n84), .TI(N41), .TE(N42), .CP(clk), 
        .CD(n83), .Q(ss[6]) );
  GTECH_FJK2S ss_tens_reg_3_ ( .J(n84), .K(n84), .TI(N43), .TE(N42), .CP(clk), 
        .CD(n83), .Q(ss[7]) );
  GTECH_FJK2S ss_tens_reg_1_ ( .J(n84), .K(n84), .TI(N40), .TE(N42), .CP(clk), 
        .CD(n83), .Q(ss[5]) );
  GTECH_FJK2S mm_ones_reg_0_ ( .J(n84), .K(n84), .TI(N55), .TE(N58), .CP(clk), 
        .CD(n83), .Q(mm[0]), .QN(n4) );
  GTECH_FJK2S mm_ones_reg_3_ ( .J(n84), .K(n84), .TI(N59), .TE(N58), .CP(clk), 
        .CD(n83), .Q(mm[3]), .QN(n138) );
  GTECH_FJK2S mm_ones_reg_1_ ( .J(n84), .K(n84), .TI(N56), .TE(N58), .CP(clk), 
        .CD(n83), .Q(mm[1]), .QN(n140) );
  GTECH_FJK2S mm_ones_reg_2_ ( .J(n84), .K(n84), .TI(N57), .TE(N58), .CP(clk), 
        .CD(n83), .Q(mm[2]), .QN(n139) );
  GTECH_FJK2S mm_tens_reg_0_ ( .J(n84), .K(n84), .TI(N71), .TE(N74), .CP(clk), 
        .CD(n83), .Q(mm[4]), .QN(n137) );
  GTECH_FJK2S mm_tens_reg_2_ ( .J(n84), .K(n84), .TI(N73), .TE(N74), .CP(clk), 
        .CD(n83), .Q(mm[6]), .QN(n135) );
  GTECH_FJK2S mm_tens_reg_3_ ( .J(n84), .K(n84), .TI(N75), .TE(N74), .CP(clk), 
        .CD(n83), .Q(mm[7]), .QN(n5) );
  GTECH_FJK2S mm_tens_reg_1_ ( .J(n84), .K(n84), .TI(N72), .TE(N74), .CP(clk), 
        .CD(n83), .Q(mm[5]), .QN(n136) );
  GTECH_FJK2S hh_tens_reg_0_ ( .J(n84), .K(n84), .TI(N110), .TE(N115), .CP(clk), .CD(n83), .Q(hh[4]), .QN(n147) );
  GTECH_FJK2S hh_tens_reg_2_ ( .J(n84), .K(n84), .TI(N114), .TE(N115), .CP(clk), .CD(n83), .Q(hh[6]), .QN(n6) );
  GTECH_FJK2S hh_tens_reg_3_ ( .J(n84), .K(n84), .TI(N116), .TE(N115), .CP(clk), .CD(n83), .Q(hh[7]), .QN(n7) );
  GTECH_FJK2S hh_ones_reg_0_ ( .J(n84), .K(n84), .TI(N88), .TE(N91), .CP(clk), 
        .CD(n83), .Q(hh[0]), .QN(n134) );
  GTECH_FJK2S hh_ones_reg_1_ ( .J(n84), .K(n84), .TI(N89), .TE(N91), .CP(clk), 
        .CD(n83), .Q(hh[1]), .QN(n8) );
  GTECH_FJK2S hh_ones_reg_2_ ( .J(n84), .K(n84), .TI(N90), .TE(N91), .CP(clk), 
        .CD(n83), .Q(hh[2]), .QN(n133) );
  GTECH_FJK2S hh_ones_reg_3_ ( .J(n84), .K(n84), .TI(N92), .TE(N91), .CP(clk), 
        .CD(n83), .Q(hh[3]), .QN(n9) );
  GTECH_FJK2S hh_tens_reg_1_ ( .J(n84), .K(n84), .TI(N112), .TE(N115), .CP(clk), .CD(n83), .Q(hh[5]), .QN(n10) );
  GTECH_FJK2S pm_temp_reg ( .J(n84), .K(n84), .TI(N122), .TE(N121), .CP(clk), 
        .CD(n83), .Q(pm), .QN(n11) );
  GTECH_ZERO U156 ( .Z(n84) );
  GTECH_ONE U157 ( .Z(n83) );
  GTECH_AND2 U158 ( .A(n148), .B(n149), .Z(N92) );
  GTECH_XOR2 U159 ( .A(n150), .B(n9), .Z(n148) );
  GTECH_OR_NOT U160 ( .A(n151), .B(n152), .Z(n150) );
  GTECH_NAND2 U161 ( .A(n153), .B(n154), .Z(N91) );
  GTECH_AND2 U162 ( .A(n155), .B(n149), .Z(N90) );
  GTECH_NOT U163 ( .A(n156), .Z(n149) );
  GTECH_XOR2 U164 ( .A(n151), .B(n133), .Z(n155) );
  GTECH_NAND2 U165 ( .A(n157), .B(n158), .Z(n151) );
  GTECH_OAI21 U166 ( .A(n159), .B(n156), .C(n153), .Z(N89) );
  GTECH_XOR2 U167 ( .A(n158), .B(n8), .Z(n159) );
  GTECH_OAI22 U168 ( .A(n154), .B(n160), .C(n158), .D(n156), .Z(N88) );
  GTECH_NAND3 U169 ( .A(n160), .B(n161), .C(n162), .Z(n156) );
  GTECH_MUX2 U170 ( .A(n163), .B(n164), .S(n5), .Z(N75) );
  GTECH_AND2 U171 ( .A(n165), .B(n166), .Z(n164) );
  GTECH_OAI21 U172 ( .A(n167), .B(n166), .C(n168), .Z(n163) );
  GTECH_NOT U173 ( .A(n169), .Z(N73) );
  GTECH_MUX2 U174 ( .A(n168), .B(n170), .S(n135), .Z(n169) );
  GTECH_OR_NOT U175 ( .A(n136), .B(n165), .Z(n170) );
  GTECH_OAI21 U176 ( .A(n137), .B(n136), .C(n171), .Z(n168) );
  GTECH_MUX2 U177 ( .A(N71), .B(n165), .S(n136), .Z(N72) );
  GTECH_NOT U178 ( .A(n172), .Z(n165) );
  GTECH_NAND2 U179 ( .A(n171), .B(n173), .Z(n172) );
  GTECH_NOT U180 ( .A(n174), .Z(N71) );
  GTECH_NAND2 U181 ( .A(n137), .B(n171), .Z(n174) );
  GTECH_NOT U182 ( .A(n167), .Z(n171) );
  GTECH_NAND3 U183 ( .A(n175), .B(n153), .C(n176), .Z(n167) );
  GTECH_MUX2 U184 ( .A(n177), .B(n178), .S(n138), .Z(N59) );
  GTECH_AND3 U185 ( .A(n179), .B(n180), .C(n181), .Z(n178) );
  GTECH_OAI21 U186 ( .A(n179), .B(n182), .C(n183), .Z(n177) );
  GTECH_NOT U187 ( .A(n184), .Z(n183) );
  GTECH_NOT U188 ( .A(n139), .Z(n179) );
  GTECH_MUX2 U189 ( .A(n184), .B(n185), .S(n139), .Z(N57) );
  GTECH_AND2 U190 ( .A(n181), .B(n180), .Z(n185) );
  GTECH_OAI21 U191 ( .A(n180), .B(n182), .C(n186), .Z(n184) );
  GTECH_NOT U192 ( .A(n140), .Z(n180) );
  GTECH_MUX2 U193 ( .A(N55), .B(n181), .S(n140), .Z(N56) );
  GTECH_NOT U194 ( .A(n187), .Z(n181) );
  GTECH_NAND2 U195 ( .A(n188), .B(n189), .Z(n187) );
  GTECH_NOT U196 ( .A(n186), .Z(N55) );
  GTECH_NAND2 U197 ( .A(n4), .B(n188), .Z(n186) );
  GTECH_NOT U198 ( .A(n182), .Z(n188) );
  GTECH_NAND2 U199 ( .A(n190), .B(n191), .Z(n182) );
  GTECH_NOT U200 ( .A(N74), .Z(n191) );
  GTECH_NAND2 U201 ( .A(n153), .B(n192), .Z(N74) );
  GTECH_MUX2 U202 ( .A(n193), .B(n194), .S(ss[7]), .Z(N43) );
  GTECH_OAI21 U203 ( .A(ss[6]), .B(n195), .C(n196), .Z(n194) );
  GTECH_NOT U204 ( .A(n197), .Z(n196) );
  GTECH_AND2 U205 ( .A(n198), .B(ss[6]), .Z(n193) );
  GTECH_MUX2 U206 ( .A(n199), .B(n197), .S(ss[6]), .Z(N41) );
  GTECH_OAI21 U207 ( .A(ss[5]), .B(n195), .C(n200), .Z(n197) );
  GTECH_AND2 U208 ( .A(ss[5]), .B(n198), .Z(n199) );
  GTECH_MUX2 U209 ( .A(n198), .B(N39), .S(ss[5]), .Z(N40) );
  GTECH_NOT U210 ( .A(n201), .Z(n198) );
  GTECH_NAND2 U211 ( .A(n202), .B(ss[4]), .Z(n201) );
  GTECH_NOT U212 ( .A(n200), .Z(N39) );
  GTECH_NAND2 U213 ( .A(n202), .B(n203), .Z(n200) );
  GTECH_NOT U214 ( .A(ss[4]), .Z(n203) );
  GTECH_NOT U215 ( .A(n195), .Z(n202) );
  GTECH_NAND2 U216 ( .A(n204), .B(n205), .Z(n195) );
  GTECH_NOT U217 ( .A(N58), .Z(n205) );
  GTECH_NAND2 U218 ( .A(n153), .B(n206), .Z(N58) );
  GTECH_MUX2 U219 ( .A(n207), .B(n208), .S(ss[3]), .Z(N26) );
  GTECH_OAI21 U220 ( .A(ss[2]), .B(n209), .C(n210), .Z(n208) );
  GTECH_NOT U221 ( .A(n211), .Z(n210) );
  GTECH_AND2 U222 ( .A(ss[2]), .B(n212), .Z(n207) );
  GTECH_NAND2 U223 ( .A(n153), .B(n213), .Z(N25) );
  GTECH_NOT U224 ( .A(ena), .Z(n213) );
  GTECH_MUX2 U225 ( .A(n212), .B(n211), .S(ss[2]), .Z(N24) );
  GTECH_OAI21 U226 ( .A(ss[1]), .B(n209), .C(n214), .Z(n211) );
  GTECH_NOT U227 ( .A(n215), .Z(n212) );
  GTECH_NAND3 U228 ( .A(n216), .B(ss[0]), .C(ss[1]), .Z(n215) );
  GTECH_MUX2 U229 ( .A(n217), .B(N22), .S(ss[1]), .Z(N23) );
  GTECH_AND2 U230 ( .A(n216), .B(ss[0]), .Z(n217) );
  GTECH_NOT U231 ( .A(n214), .Z(N22) );
  GTECH_NAND2 U232 ( .A(n216), .B(n218), .Z(n214) );
  GTECH_NOT U233 ( .A(ss[0]), .Z(n218) );
  GTECH_NOT U234 ( .A(n209), .Z(n216) );
  GTECH_NAND2 U235 ( .A(ena), .B(n219), .Z(n209) );
  GTECH_NOT U236 ( .A(N42), .Z(n219) );
  GTECH_NAND2 U237 ( .A(n153), .B(n220), .Z(N42) );
  GTECH_AND2 U238 ( .A(n221), .B(n11), .Z(N122) );
  GTECH_NOT U239 ( .A(n222), .Z(n221) );
  GTECH_NAND2 U240 ( .A(n153), .B(n222), .Z(N121) );
  GTECH_NAND5 U241 ( .A(n162), .B(n9), .C(n7), .D(n6), .E(n223), .Z(n222) );
  GTECH_NOR5 U242 ( .A(n157), .B(n224), .C(n152), .D(n147), .E(n134), .Z(n223)
         );
  GTECH_NOT U243 ( .A(n8), .Z(n157) );
  GTECH_AND2 U244 ( .A(n225), .B(n226), .Z(N116) );
  GTECH_XOR2 U245 ( .A(n227), .B(n7), .Z(n225) );
  GTECH_OR2 U246 ( .A(n6), .B(n228), .Z(n227) );
  GTECH_NAND3 U247 ( .A(n161), .B(n153), .C(n160), .Z(N115) );
  GTECH_NAND5 U248 ( .A(n9), .B(n7), .C(n6), .D(n134), .E(n229), .Z(n160) );
  GTECH_NOR5 U249 ( .A(n152), .B(n224), .C(n175), .D(n8), .E(n147), .Z(n229)
         );
  GTECH_NOT U250 ( .A(n133), .Z(n152) );
  GTECH_AND2 U251 ( .A(n230), .B(n226), .Z(N114) );
  GTECH_XOR2 U252 ( .A(n228), .B(n6), .Z(n230) );
  GTECH_NAND2 U253 ( .A(n231), .B(n224), .Z(n228) );
  GTECH_NOT U254 ( .A(n10), .Z(n224) );
  GTECH_AND2 U255 ( .A(n226), .B(n232), .Z(N112) );
  GTECH_XOR2 U256 ( .A(n147), .B(n10), .Z(n232) );
  GTECH_NOT U257 ( .A(n233), .Z(n226) );
  GTECH_OAI21 U258 ( .A(n233), .B(n231), .C(n153), .Z(N110) );
  GTECH_NOT U259 ( .A(n147), .Z(n231) );
  GTECH_NAND2 U260 ( .A(n234), .B(n162), .Z(n233) );
  GTECH_NOT U261 ( .A(n154), .Z(n162) );
  GTECH_NAND2 U262 ( .A(n235), .B(n153), .Z(n154) );
  GTECH_NOT U263 ( .A(reset), .Z(n153) );
  GTECH_NOT U264 ( .A(n161), .Z(n234) );
  GTECH_NAND5 U265 ( .A(n158), .B(n236), .C(n235), .D(n8), .E(n133), .Z(n161)
         );
  GTECH_NOT U266 ( .A(n175), .Z(n235) );
  GTECH_NAND5 U267 ( .A(n166), .B(n173), .C(n176), .D(n5), .E(n136), .Z(n175)
         );
  GTECH_NOT U268 ( .A(n192), .Z(n176) );
  GTECH_NAND5 U269 ( .A(n237), .B(n189), .C(n190), .D(n140), .E(n139), .Z(n192) );
  GTECH_NOT U270 ( .A(n206), .Z(n190) );
  GTECH_NAND5 U271 ( .A(n238), .B(n239), .C(n204), .D(ss[6]), .E(ss[4]), .Z(
        n206) );
  GTECH_NOT U272 ( .A(n220), .Z(n204) );
  GTECH_NAND5 U273 ( .A(n240), .B(n241), .C(ena), .D(ss[3]), .E(ss[0]), .Z(
        n220) );
  GTECH_NOT U274 ( .A(ss[2]), .Z(n241) );
  GTECH_NOT U275 ( .A(ss[1]), .Z(n240) );
  GTECH_NOT U276 ( .A(ss[7]), .Z(n239) );
  GTECH_NOT U277 ( .A(ss[5]), .Z(n238) );
  GTECH_NOT U278 ( .A(n4), .Z(n189) );
  GTECH_NOT U279 ( .A(n138), .Z(n237) );
  GTECH_NOT U280 ( .A(n137), .Z(n173) );
  GTECH_NOT U281 ( .A(n135), .Z(n166) );
  GTECH_NOT U282 ( .A(n9), .Z(n236) );
  GTECH_NOT U283 ( .A(n134), .Z(n158) );
endmodule

