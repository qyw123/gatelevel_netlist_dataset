
module clock_12h ( clk, reset, ena, pm, hh, mm, ss );
  output [7:0] hh;
  output [7:0] mm;
  output [7:0] ss;
  input clk, reset, ena;
  output pm;
  wire   N22, N23, N24, N25, N26, N39, N40, N41, N42, N43, N55, N56, N57, N58,
         N59, N71, N72, N73, N74, N75, N88, N89, N90, N91, N92, N110, N112,
         N114, N115, N116, N121, N122, n4, n5, n6, n7, n8, n9, n10, n77, n78,
         n127, n128, n129, n130, n131, n132, n133, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n225, n226, n227, n228, n229, n230;

  GTECH_FJK2S ss_ones_reg_0_ ( .J(n78), .K(n78), .TI(N22), .TE(N25), .CP(clk), 
        .CD(n77), .Q(ss[0]) );
  GTECH_FJK2S ss_ones_reg_2_ ( .J(n78), .K(n78), .TI(N24), .TE(N25), .CP(clk), 
        .CD(n77), .Q(ss[2]) );
  GTECH_FJK2S ss_ones_reg_1_ ( .J(n78), .K(n78), .TI(N23), .TE(N25), .CP(clk), 
        .CD(n77), .Q(ss[1]) );
  GTECH_FJK2S ss_ones_reg_3_ ( .J(n78), .K(n78), .TI(N26), .TE(N25), .CP(clk), 
        .CD(n77), .Q(ss[3]) );
  GTECH_FJK2S ss_tens_reg_0_ ( .J(n78), .K(n78), .TI(N39), .TE(N42), .CP(clk), 
        .CD(n77), .Q(ss[4]) );
  GTECH_FJK2S ss_tens_reg_2_ ( .J(n78), .K(n78), .TI(N41), .TE(N42), .CP(clk), 
        .CD(n77), .Q(ss[6]) );
  GTECH_FJK2S ss_tens_reg_1_ ( .J(n78), .K(n78), .TI(N40), .TE(N42), .CP(clk), 
        .CD(n77), .Q(ss[5]) );
  GTECH_FJK2S ss_tens_reg_3_ ( .J(n78), .K(n78), .TI(N43), .TE(N42), .CP(clk), 
        .CD(n77), .Q(ss[7]) );
  GTECH_FJK2S mm_ones_reg_0_ ( .J(n78), .K(n78), .TI(N55), .TE(N58), .CP(clk), 
        .CD(n77), .Q(mm[0]), .QN(n4) );
  GTECH_FJK2S mm_ones_reg_3_ ( .J(n78), .K(n78), .TI(N59), .TE(N58), .CP(clk), 
        .CD(n77), .Q(mm[3]), .QN(n131) );
  GTECH_FJK2S mm_ones_reg_1_ ( .J(n78), .K(n78), .TI(N56), .TE(N58), .CP(clk), 
        .CD(n77), .Q(mm[1]), .QN(n133) );
  GTECH_FJK2S mm_ones_reg_2_ ( .J(n78), .K(n78), .TI(N57), .TE(N58), .CP(clk), 
        .CD(n77), .Q(mm[2]), .QN(n132) );
  GTECH_FJK2S mm_tens_reg_0_ ( .J(n78), .K(n78), .TI(N71), .TE(N74), .CP(clk), 
        .CD(n77), .Q(mm[4]), .QN(n130) );
  GTECH_FJK2S mm_tens_reg_2_ ( .J(n78), .K(n78), .TI(N73), .TE(N74), .CP(clk), 
        .CD(n77), .Q(mm[6]), .QN(n128) );
  GTECH_FJK2S mm_tens_reg_1_ ( .J(n78), .K(n78), .TI(N72), .TE(N74), .CP(clk), 
        .CD(n77), .Q(mm[5]), .QN(n129) );
  GTECH_FJK2S mm_tens_reg_3_ ( .J(n78), .K(n78), .TI(N75), .TE(N74), .CP(clk), 
        .CD(n77), .Q(mm[7]), .QN(n5) );
  GTECH_FJK2S hh_tens_reg_0_ ( .J(n78), .K(n78), .TI(N110), .TE(N115), .CP(clk), .CD(n77), .Q(hh[4]), .QN(n140) );
  GTECH_FJK2S hh_tens_reg_2_ ( .J(n78), .K(n78), .TI(N114), .TE(N115), .CP(clk), .CD(n77), .Q(hh[6]), .QN(n6) );
  GTECH_FJK2S hh_tens_reg_3_ ( .J(n78), .K(n78), .TI(N116), .TE(N115), .CP(clk), .CD(n77), .Q(hh[7]), .QN(n7) );
  GTECH_FJK2S hh_ones_reg_0_ ( .J(n78), .K(n78), .TI(N88), .TE(N91), .CP(clk), 
        .CD(n77), .Q(hh[0]), .QN(n127) );
  GTECH_FJK2S hh_ones_reg_1_ ( .J(n78), .K(n78), .TI(N89), .TE(N91), .CP(clk), 
        .CD(n77), .Q(hh[1]), .QN(n142) );
  GTECH_FJK2S hh_ones_reg_2_ ( .J(n78), .K(n78), .TI(N90), .TE(N91), .CP(clk), 
        .CD(n77), .Q(hh[2]), .QN(n8) );
  GTECH_FJK2S hh_ones_reg_3_ ( .J(n78), .K(n78), .TI(N92), .TE(N91), .CP(clk), 
        .CD(n77), .Q(hh[3]), .QN(n141) );
  GTECH_FJK2S hh_tens_reg_1_ ( .J(n78), .K(n78), .TI(N112), .TE(N115), .CP(clk), .CD(n77), .Q(hh[5]), .QN(n9) );
  GTECH_FJK2S pm_temp_reg ( .J(n78), .K(n78), .TI(N122), .TE(N121), .CP(clk), 
        .CD(n77), .Q(pm), .QN(n10) );
  GTECH_ZERO U151 ( .Z(n78) );
  GTECH_ONE U152 ( .Z(n77) );
  GTECH_AND2 U153 ( .A(n143), .B(n144), .Z(N92) );
  GTECH_XOR2 U154 ( .A(n145), .B(n141), .Z(n143) );
  GTECH_OR2 U155 ( .A(n8), .B(n146), .Z(n145) );
  GTECH_NAND2 U156 ( .A(n147), .B(n148), .Z(N91) );
  GTECH_AND2 U157 ( .A(n149), .B(n144), .Z(N90) );
  GTECH_XOR2 U158 ( .A(n146), .B(n8), .Z(n149) );
  GTECH_NAND2 U159 ( .A(n150), .B(n151), .Z(n146) );
  GTECH_AO21 U160 ( .A(n144), .B(n152), .C(reset), .Z(N89) );
  GTECH_XOR2 U161 ( .A(n142), .B(n127), .Z(n152) );
  GTECH_NOT U162 ( .A(n153), .Z(n144) );
  GTECH_OAI22 U163 ( .A(n148), .B(n154), .C(n151), .D(n153), .Z(N88) );
  GTECH_NAND3 U164 ( .A(n154), .B(n155), .C(n156), .Z(n153) );
  GTECH_OAI22 U165 ( .A(n5), .B(n157), .C(n158), .D(n159), .Z(N75) );
  GTECH_OA21 U166 ( .A(n5), .B(n160), .C(n161), .Z(n158) );
  GTECH_NOT U167 ( .A(n162), .Z(n157) );
  GTECH_MUX2 U168 ( .A(n162), .B(n163), .S(n128), .Z(N73) );
  GTECH_NOR3 U169 ( .A(n130), .B(n129), .C(n159), .Z(n163) );
  GTECH_AO21 U170 ( .A(n164), .B(n129), .C(N71), .Z(n162) );
  GTECH_MUX2 U171 ( .A(N71), .B(n165), .S(n129), .Z(N72) );
  GTECH_AND2 U172 ( .A(n164), .B(n166), .Z(n165) );
  GTECH_NOT U173 ( .A(n167), .Z(N71) );
  GTECH_NAND2 U174 ( .A(n130), .B(n164), .Z(n167) );
  GTECH_NOT U175 ( .A(n159), .Z(n164) );
  GTECH_NAND3 U176 ( .A(n168), .B(n147), .C(n169), .Z(n159) );
  GTECH_MUX2 U177 ( .A(n170), .B(n171), .S(n131), .Z(N59) );
  GTECH_NOR3 U178 ( .A(n133), .B(n132), .C(n172), .Z(n171) );
  GTECH_AO21 U179 ( .A(n173), .B(n132), .C(n174), .Z(n170) );
  GTECH_MUX2 U180 ( .A(n174), .B(n175), .S(n132), .Z(N57) );
  GTECH_AND_NOT U181 ( .A(n176), .B(n133), .Z(n175) );
  GTECH_AO21 U182 ( .A(n173), .B(n133), .C(N55), .Z(n174) );
  GTECH_MUX2 U183 ( .A(N55), .B(n176), .S(n133), .Z(N56) );
  GTECH_NOT U184 ( .A(n172), .Z(n176) );
  GTECH_NAND2 U185 ( .A(n173), .B(n177), .Z(n172) );
  GTECH_NOT U186 ( .A(n178), .Z(N55) );
  GTECH_NAND2 U187 ( .A(n4), .B(n173), .Z(n178) );
  GTECH_NOT U188 ( .A(n179), .Z(n173) );
  GTECH_NAND2 U189 ( .A(n180), .B(n181), .Z(n179) );
  GTECH_NOT U190 ( .A(N74), .Z(n181) );
  GTECH_NAND2 U191 ( .A(n147), .B(n182), .Z(N74) );
  GTECH_OAI2N2 U192 ( .A(n183), .B(n184), .C(n185), .D(ss[7]), .Z(N43) );
  GTECH_OA21 U193 ( .A(n186), .B(ss[6]), .C(n187), .Z(n183) );
  GTECH_MUX2 U194 ( .A(n188), .B(n185), .S(ss[6]), .Z(N41) );
  GTECH_AO21 U195 ( .A(n189), .B(n190), .C(N39), .Z(n185) );
  GTECH_AND3 U196 ( .A(n189), .B(ss[4]), .C(ss[5]), .Z(n188) );
  GTECH_MUX2 U197 ( .A(n191), .B(N39), .S(ss[5]), .Z(N40) );
  GTECH_AND2 U198 ( .A(n189), .B(ss[4]), .Z(n191) );
  GTECH_NOT U199 ( .A(n192), .Z(N39) );
  GTECH_NAND2 U200 ( .A(n189), .B(n193), .Z(n192) );
  GTECH_NOT U201 ( .A(ss[4]), .Z(n193) );
  GTECH_NOT U202 ( .A(n184), .Z(n189) );
  GTECH_NAND2 U203 ( .A(n194), .B(n195), .Z(n184) );
  GTECH_NOT U204 ( .A(N58), .Z(n195) );
  GTECH_NAND2 U205 ( .A(n147), .B(n196), .Z(N58) );
  GTECH_MUX2 U206 ( .A(n197), .B(n198), .S(ss[3]), .Z(N26) );
  GTECH_AO21 U207 ( .A(n199), .B(n200), .C(n201), .Z(n198) );
  GTECH_AND2 U208 ( .A(ss[2]), .B(n202), .Z(n197) );
  GTECH_NAND2 U209 ( .A(n147), .B(n203), .Z(N25) );
  GTECH_NOT U210 ( .A(ena), .Z(n203) );
  GTECH_MUX2 U211 ( .A(n202), .B(n201), .S(ss[2]), .Z(N24) );
  GTECH_AO21 U212 ( .A(n199), .B(n204), .C(N22), .Z(n201) );
  GTECH_NOT U213 ( .A(n205), .Z(n202) );
  GTECH_NAND3 U214 ( .A(n199), .B(ss[0]), .C(ss[1]), .Z(n205) );
  GTECH_MUX2 U215 ( .A(n206), .B(N22), .S(ss[1]), .Z(N23) );
  GTECH_AND2 U216 ( .A(n199), .B(ss[0]), .Z(n206) );
  GTECH_NOT U217 ( .A(n207), .Z(N22) );
  GTECH_NAND2 U218 ( .A(n199), .B(n208), .Z(n207) );
  GTECH_NOT U219 ( .A(ss[0]), .Z(n208) );
  GTECH_NOT U220 ( .A(n209), .Z(n199) );
  GTECH_NAND2 U221 ( .A(ena), .B(n210), .Z(n209) );
  GTECH_NOT U222 ( .A(N42), .Z(n210) );
  GTECH_NAND2 U223 ( .A(n147), .B(n211), .Z(N42) );
  GTECH_AND2 U224 ( .A(n212), .B(n10), .Z(N122) );
  GTECH_NOT U225 ( .A(n213), .Z(n212) );
  GTECH_NAND2 U226 ( .A(n147), .B(n213), .Z(N121) );
  GTECH_NAND4 U227 ( .A(n156), .B(n214), .C(n142), .D(n151), .Z(n213) );
  GTECH_AND2 U228 ( .A(n215), .B(n216), .Z(N116) );
  GTECH_XOR2 U229 ( .A(n217), .B(n7), .Z(n215) );
  GTECH_OR2 U230 ( .A(n6), .B(n218), .Z(n217) );
  GTECH_NAND3 U231 ( .A(n155), .B(n147), .C(n154), .Z(N115) );
  GTECH_NAND4 U232 ( .A(n127), .B(n214), .C(n219), .D(n150), .Z(n154) );
  GTECH_NOT U233 ( .A(n142), .Z(n150) );
  GTECH_AND3 U234 ( .A(n7), .B(n6), .C(n220), .Z(n214) );
  GTECH_AND4 U235 ( .A(n221), .B(n141), .C(n8), .D(n9), .Z(n220) );
  GTECH_AND2 U236 ( .A(n222), .B(n216), .Z(N114) );
  GTECH_XOR2 U237 ( .A(n218), .B(n6), .Z(n222) );
  GTECH_NAND2 U238 ( .A(n223), .B(n221), .Z(n218) );
  GTECH_NOT U239 ( .A(n140), .Z(n221) );
  GTECH_NOT U240 ( .A(n9), .Z(n223) );
  GTECH_AND2 U241 ( .A(n216), .B(n224), .Z(N112) );
  GTECH_XOR2 U242 ( .A(n9), .B(n140), .Z(n224) );
  GTECH_AO21 U243 ( .A(n140), .B(n216), .C(reset), .Z(N110) );
  GTECH_NOT U244 ( .A(n225), .Z(n216) );
  GTECH_NAND2 U245 ( .A(n226), .B(n156), .Z(n225) );
  GTECH_NOT U246 ( .A(n148), .Z(n156) );
  GTECH_NAND2 U247 ( .A(n219), .B(n147), .Z(n148) );
  GTECH_NOT U248 ( .A(reset), .Z(n147) );
  GTECH_NOT U249 ( .A(n155), .Z(n226) );
  GTECH_NAND5 U250 ( .A(n151), .B(n227), .C(n219), .D(n8), .E(n142), .Z(n155)
         );
  GTECH_NOT U251 ( .A(n168), .Z(n219) );
  GTECH_NAND3 U252 ( .A(n228), .B(n169), .C(n129), .Z(n168) );
  GTECH_NOT U253 ( .A(n182), .Z(n169) );
  GTECH_NAND5 U254 ( .A(n229), .B(n177), .C(n180), .D(n133), .E(n132), .Z(n182) );
  GTECH_NOT U255 ( .A(n196), .Z(n180) );
  GTECH_NAND3 U256 ( .A(n230), .B(n190), .C(n194), .Z(n196) );
  GTECH_NOT U257 ( .A(n211), .Z(n194) );
  GTECH_NAND5 U258 ( .A(n204), .B(n200), .C(ena), .D(ss[3]), .E(ss[0]), .Z(
        n211) );
  GTECH_NOT U259 ( .A(ss[2]), .Z(n200) );
  GTECH_NOT U260 ( .A(ss[1]), .Z(n204) );
  GTECH_NOT U261 ( .A(ss[5]), .Z(n190) );
  GTECH_NOT U262 ( .A(n187), .Z(n230) );
  GTECH_NAND3 U263 ( .A(ss[4]), .B(n186), .C(ss[6]), .Z(n187) );
  GTECH_NOT U264 ( .A(ss[7]), .Z(n186) );
  GTECH_NOT U265 ( .A(n4), .Z(n177) );
  GTECH_NOT U266 ( .A(n131), .Z(n229) );
  GTECH_NOT U267 ( .A(n161), .Z(n228) );
  GTECH_NAND3 U268 ( .A(n160), .B(n166), .C(n5), .Z(n161) );
  GTECH_NOT U269 ( .A(n130), .Z(n166) );
  GTECH_NOT U270 ( .A(n128), .Z(n160) );
  GTECH_NOT U271 ( .A(n141), .Z(n227) );
  GTECH_NOT U272 ( .A(n127), .Z(n151) );
endmodule

