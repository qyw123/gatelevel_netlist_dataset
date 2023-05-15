
module clock_12h ( clk, reset, ena, pm, hh, mm, ss );
  output [7:0] hh;
  output [7:0] mm;
  output [7:0] ss;
  input clk, reset, ena;
  output pm;
  wire   N22, N23, N24, N25, N26, N39, N40, N41, N42, N43, N55, N56, N57, N58,
         N59, N71, N72, N73, N74, N75, N88, N89, N90, N91, N92, N110, N112,
         N114, N115, N116, N121, N122, n3, n4, n5, n6, n7, n8, n9, n77, n78,
         n127, n128, n129, n130, n131, n132, n133, n134, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230;

  GTECH_FJK2S ss_ones_reg_0_ ( .J(n78), .K(n78), .TI(N22), .TE(N25), .CP(clk), 
        .CD(n77), .Q(ss[0]) );
  GTECH_FJK2S ss_ones_reg_1_ ( .J(n78), .K(n78), .TI(N23), .TE(N25), .CP(clk), 
        .CD(n77), .Q(ss[1]) );
  GTECH_FJK2S ss_ones_reg_2_ ( .J(n78), .K(n78), .TI(N24), .TE(N25), .CP(clk), 
        .CD(n77), .Q(ss[2]) );
  GTECH_FJK2S ss_ones_reg_3_ ( .J(n78), .K(n78), .TI(N26), .TE(N25), .CP(clk), 
        .CD(n77), .Q(ss[3]) );
  GTECH_FJK2S ss_tens_reg_0_ ( .J(n78), .K(n78), .TI(N39), .TE(N42), .CP(clk), 
        .CD(n77), .Q(ss[4]) );
  GTECH_FJK2S ss_tens_reg_2_ ( .J(n78), .K(n78), .TI(N41), .TE(N42), .CP(clk), 
        .CD(n77), .Q(ss[6]) );
  GTECH_FJK2S ss_tens_reg_3_ ( .J(n78), .K(n78), .TI(N43), .TE(N42), .CP(clk), 
        .CD(n77), .Q(ss[7]) );
  GTECH_FJK2S ss_tens_reg_1_ ( .J(n78), .K(n78), .TI(N40), .TE(N42), .CP(clk), 
        .CD(n77), .Q(ss[5]) );
  GTECH_FJK2S mm_ones_reg_0_ ( .J(n78), .K(n78), .TI(N55), .TE(N58), .CP(clk), 
        .CD(n77), .Q(mm[0]), .QN(n3) );
  GTECH_FJK2S mm_ones_reg_3_ ( .J(n78), .K(n78), .TI(N59), .TE(N58), .CP(clk), 
        .CD(n77), .Q(mm[3]), .QN(n132) );
  GTECH_FJK2S mm_ones_reg_1_ ( .J(n78), .K(n78), .TI(N56), .TE(N58), .CP(clk), 
        .CD(n77), .Q(mm[1]), .QN(n134) );
  GTECH_FJK2S mm_ones_reg_2_ ( .J(n78), .K(n78), .TI(N57), .TE(N58), .CP(clk), 
        .CD(n77), .Q(mm[2]), .QN(n133) );
  GTECH_FJK2S mm_tens_reg_0_ ( .J(n78), .K(n78), .TI(N71), .TE(N74), .CP(clk), 
        .CD(n77), .Q(mm[4]), .QN(n131) );
  GTECH_FJK2S mm_tens_reg_2_ ( .J(n78), .K(n78), .TI(N73), .TE(N74), .CP(clk), 
        .CD(n77), .Q(mm[6]), .QN(n129) );
  GTECH_FJK2S mm_tens_reg_3_ ( .J(n78), .K(n78), .TI(N75), .TE(N74), .CP(clk), 
        .CD(n77), .Q(mm[7]), .QN(n4) );
  GTECH_FJK2S mm_tens_reg_1_ ( .J(n78), .K(n78), .TI(N72), .TE(N74), .CP(clk), 
        .CD(n77), .Q(mm[5]), .QN(n130) );
  GTECH_FJK2S hh_tens_reg_0_ ( .J(n78), .K(n78), .TI(N110), .TE(N115), .CP(clk), .CD(n77), .Q(hh[4]), .QN(n142) );
  GTECH_FJK2S hh_tens_reg_2_ ( .J(n78), .K(n78), .TI(N114), .TE(N115), .CP(clk), .CD(n77), .Q(hh[6]), .QN(n5) );
  GTECH_FJK2S hh_tens_reg_3_ ( .J(n78), .K(n78), .TI(N116), .TE(N115), .CP(clk), .CD(n77), .Q(hh[7]), .QN(n6) );
  GTECH_FJK2S hh_ones_reg_0_ ( .J(n78), .K(n78), .TI(N88), .TE(N91), .CP(clk), 
        .CD(n77), .Q(hh[0]), .QN(n7) );
  GTECH_FJK2S hh_ones_reg_1_ ( .J(n78), .K(n78), .TI(N89), .TE(N91), .CP(clk), 
        .CD(n77), .Q(hh[1]), .QN(n128) );
  GTECH_FJK2S hh_ones_reg_2_ ( .J(n78), .K(n78), .TI(N90), .TE(N91), .CP(clk), 
        .CD(n77), .Q(hh[2]), .QN(n127) );
  GTECH_FJK2S hh_ones_reg_3_ ( .J(n78), .K(n78), .TI(N92), .TE(N91), .CP(clk), 
        .CD(n77), .Q(hh[3]), .QN(n143) );
  GTECH_FJK2S hh_tens_reg_1_ ( .J(n78), .K(n78), .TI(N112), .TE(N115), .CP(clk), .CD(n77), .Q(hh[5]), .QN(n8) );
  GTECH_FJK2S pm_temp_reg ( .J(n78), .K(n78), .TI(N122), .TE(N121), .CP(clk), 
        .CD(n77), .Q(pm), .QN(n9) );
  GTECH_ZERO U152 ( .Z(n78) );
  GTECH_ONE U153 ( .Z(n77) );
  GTECH_AND2 U154 ( .A(n144), .B(n145), .Z(N92) );
  GTECH_XOR2 U155 ( .A(n146), .B(n143), .Z(n144) );
  GTECH_OR2 U156 ( .A(n147), .B(n127), .Z(n146) );
  GTECH_OR_NOT U157 ( .A(n148), .B(n149), .Z(N91) );
  GTECH_AND2 U158 ( .A(n150), .B(n145), .Z(N90) );
  GTECH_NOT U159 ( .A(n151), .Z(n145) );
  GTECH_XOR2 U160 ( .A(n147), .B(n127), .Z(n150) );
  GTECH_OR_NOT U161 ( .A(n128), .B(n152), .Z(n147) );
  GTECH_OAI21 U162 ( .A(n153), .B(n151), .C(n149), .Z(N89) );
  GTECH_XOR2 U163 ( .A(n154), .B(n7), .Z(n153) );
  GTECH_OAI22 U164 ( .A(n155), .B(n156), .C(n152), .D(n151), .Z(N88) );
  GTECH_NAND3 U165 ( .A(n156), .B(n157), .C(n148), .Z(n151) );
  GTECH_MUX2 U166 ( .A(n158), .B(n159), .S(n4), .Z(N75) );
  GTECH_AND2 U167 ( .A(n160), .B(n161), .Z(n159) );
  GTECH_OAI21 U168 ( .A(n162), .B(n161), .C(n163), .Z(n158) );
  GTECH_NOT U169 ( .A(n164), .Z(N73) );
  GTECH_MUX2 U170 ( .A(n163), .B(n165), .S(n129), .Z(n164) );
  GTECH_OR_NOT U171 ( .A(n130), .B(n160), .Z(n165) );
  GTECH_OAI21 U172 ( .A(n131), .B(n130), .C(n166), .Z(n163) );
  GTECH_MUX2 U173 ( .A(N71), .B(n160), .S(n130), .Z(N72) );
  GTECH_NOT U174 ( .A(n167), .Z(n160) );
  GTECH_OR_NOT U175 ( .A(n131), .B(n166), .Z(n167) );
  GTECH_NOT U176 ( .A(n162), .Z(n166) );
  GTECH_NOT U177 ( .A(n168), .Z(N71) );
  GTECH_OR_NOT U178 ( .A(n162), .B(n131), .Z(n168) );
  GTECH_NAND3 U179 ( .A(n169), .B(n149), .C(n170), .Z(n162) );
  GTECH_MUX2 U180 ( .A(n171), .B(n172), .S(n132), .Z(N59) );
  GTECH_AND2 U181 ( .A(n173), .B(n174), .Z(n172) );
  GTECH_OAI21 U182 ( .A(n174), .B(n175), .C(n176), .Z(n171) );
  GTECH_NOT U183 ( .A(n177), .Z(n176) );
  GTECH_NOT U184 ( .A(n133), .Z(n174) );
  GTECH_MUX2 U185 ( .A(n177), .B(n173), .S(n133), .Z(N57) );
  GTECH_NOT U186 ( .A(n178), .Z(n173) );
  GTECH_NAND3 U187 ( .A(n179), .B(n180), .C(n181), .Z(n178) );
  GTECH_OAI21 U188 ( .A(n179), .B(n175), .C(n182), .Z(n177) );
  GTECH_NOT U189 ( .A(n134), .Z(n179) );
  GTECH_MUX2 U190 ( .A(N55), .B(n183), .S(n134), .Z(N56) );
  GTECH_AND2 U191 ( .A(n181), .B(n180), .Z(n183) );
  GTECH_NOT U192 ( .A(n175), .Z(n181) );
  GTECH_NOT U193 ( .A(n182), .Z(N55) );
  GTECH_OR_NOT U194 ( .A(n175), .B(n3), .Z(n182) );
  GTECH_OR_NOT U195 ( .A(N74), .B(n184), .Z(n175) );
  GTECH_OR_NOT U196 ( .A(n170), .B(n149), .Z(N74) );
  GTECH_MUX2 U197 ( .A(n185), .B(n186), .S(ss[7]), .Z(N43) );
  GTECH_OAI21 U198 ( .A(ss[6]), .B(n187), .C(n188), .Z(n186) );
  GTECH_NOT U199 ( .A(n189), .Z(n188) );
  GTECH_AND2 U200 ( .A(n190), .B(ss[6]), .Z(n185) );
  GTECH_MUX2 U201 ( .A(n191), .B(n189), .S(ss[6]), .Z(N41) );
  GTECH_OAI21 U202 ( .A(ss[5]), .B(n187), .C(n192), .Z(n189) );
  GTECH_AND2 U203 ( .A(ss[5]), .B(n190), .Z(n191) );
  GTECH_MUX2 U204 ( .A(n190), .B(N39), .S(ss[5]), .Z(N40) );
  GTECH_NOT U205 ( .A(n193), .Z(n190) );
  GTECH_OR_NOT U206 ( .A(n194), .B(n195), .Z(n193) );
  GTECH_NOT U207 ( .A(ss[4]), .Z(n194) );
  GTECH_NOT U208 ( .A(n192), .Z(N39) );
  GTECH_OR_NOT U209 ( .A(ss[4]), .B(n195), .Z(n192) );
  GTECH_NOT U210 ( .A(n187), .Z(n195) );
  GTECH_OR_NOT U211 ( .A(N58), .B(n196), .Z(n187) );
  GTECH_OR_NOT U212 ( .A(n184), .B(n149), .Z(N58) );
  GTECH_MUX2 U213 ( .A(n197), .B(n198), .S(ss[3]), .Z(N26) );
  GTECH_OAI21 U214 ( .A(ss[2]), .B(n199), .C(n200), .Z(n198) );
  GTECH_NOT U215 ( .A(n201), .Z(n200) );
  GTECH_AND2 U216 ( .A(ss[2]), .B(n202), .Z(n197) );
  GTECH_OR_NOT U217 ( .A(ena), .B(n149), .Z(N25) );
  GTECH_MUX2 U218 ( .A(n202), .B(n201), .S(ss[2]), .Z(N24) );
  GTECH_OAI21 U219 ( .A(ss[1]), .B(n199), .C(n203), .Z(n201) );
  GTECH_NOT U220 ( .A(n204), .Z(n202) );
  GTECH_NAND3 U221 ( .A(n205), .B(ss[0]), .C(ss[1]), .Z(n204) );
  GTECH_MUX2 U222 ( .A(n206), .B(N22), .S(ss[1]), .Z(N23) );
  GTECH_AND2 U223 ( .A(n205), .B(ss[0]), .Z(n206) );
  GTECH_NOT U224 ( .A(n203), .Z(N22) );
  GTECH_OR_NOT U225 ( .A(ss[0]), .B(n205), .Z(n203) );
  GTECH_NOT U226 ( .A(n199), .Z(n205) );
  GTECH_OR_NOT U227 ( .A(N42), .B(ena), .Z(n199) );
  GTECH_OR_NOT U228 ( .A(n196), .B(n149), .Z(N42) );
  GTECH_AND2 U229 ( .A(n207), .B(n9), .Z(N122) );
  GTECH_OR_NOT U230 ( .A(n207), .B(n149), .Z(N121) );
  GTECH_AND5 U231 ( .A(n5), .B(n208), .C(n6), .D(n148), .E(n8), .Z(n207) );
  GTECH_NOT U232 ( .A(n155), .Z(n148) );
  GTECH_AND5 U233 ( .A(n143), .B(n128), .C(n127), .D(n209), .E(n152), .Z(n208)
         );
  GTECH_AND2 U234 ( .A(n210), .B(n211), .Z(N116) );
  GTECH_XOR2 U235 ( .A(n212), .B(n6), .Z(n210) );
  GTECH_OR2 U236 ( .A(n213), .B(n5), .Z(n212) );
  GTECH_NAND3 U237 ( .A(n157), .B(n149), .C(n156), .Z(N115) );
  GTECH_NAND5 U238 ( .A(n8), .B(n7), .C(n6), .D(n5), .E(n214), .Z(n156) );
  GTECH_AND5 U239 ( .A(n154), .B(n209), .C(n215), .D(n143), .E(n127), .Z(n214)
         );
  GTECH_NOT U240 ( .A(n128), .Z(n154) );
  GTECH_AND2 U241 ( .A(n216), .B(n211), .Z(N114) );
  GTECH_XOR2 U242 ( .A(n213), .B(n5), .Z(n216) );
  GTECH_OR_NOT U243 ( .A(n142), .B(n217), .Z(n213) );
  GTECH_NOT U244 ( .A(n8), .Z(n217) );
  GTECH_AND2 U245 ( .A(n211), .B(n218), .Z(N112) );
  GTECH_XOR2 U246 ( .A(n8), .B(n142), .Z(n218) );
  GTECH_NOT U247 ( .A(n219), .Z(n211) );
  GTECH_OAI21 U248 ( .A(n219), .B(n209), .C(n149), .Z(N110) );
  GTECH_NOT U249 ( .A(reset), .Z(n149) );
  GTECH_NOT U250 ( .A(n142), .Z(n209) );
  GTECH_OR_NOT U251 ( .A(n155), .B(n220), .Z(n219) );
  GTECH_NOT U252 ( .A(n157), .Z(n220) );
  GTECH_NAND5 U253 ( .A(n221), .B(n152), .C(n215), .D(n128), .E(n127), .Z(n157) );
  GTECH_NOT U254 ( .A(n7), .Z(n152) );
  GTECH_NOT U255 ( .A(n143), .Z(n221) );
  GTECH_OR_NOT U256 ( .A(reset), .B(n215), .Z(n155) );
  GTECH_NOT U257 ( .A(n169), .Z(n215) );
  GTECH_NAND5 U258 ( .A(n161), .B(n222), .C(n170), .D(n4), .E(n130), .Z(n169)
         );
  GTECH_NOT U259 ( .A(n223), .Z(n170) );
  GTECH_NAND5 U260 ( .A(n224), .B(n180), .C(n184), .D(n134), .E(n133), .Z(n223) );
  GTECH_NOT U261 ( .A(n225), .Z(n184) );
  GTECH_NAND5 U262 ( .A(n226), .B(n227), .C(n196), .D(ss[6]), .E(ss[4]), .Z(
        n225) );
  GTECH_NOT U263 ( .A(n228), .Z(n196) );
  GTECH_NAND5 U264 ( .A(n229), .B(n230), .C(ena), .D(ss[3]), .E(ss[0]), .Z(
        n228) );
  GTECH_NOT U265 ( .A(ss[2]), .Z(n230) );
  GTECH_NOT U266 ( .A(ss[1]), .Z(n229) );
  GTECH_NOT U267 ( .A(ss[7]), .Z(n227) );
  GTECH_NOT U268 ( .A(ss[5]), .Z(n226) );
  GTECH_NOT U269 ( .A(n3), .Z(n180) );
  GTECH_NOT U270 ( .A(n132), .Z(n224) );
  GTECH_NOT U271 ( .A(n131), .Z(n222) );
  GTECH_NOT U272 ( .A(n129), .Z(n161) );
endmodule

