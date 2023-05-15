
module clock_12h ( clk, reset, ena, pm, hh, mm, ss );
  output [7:0] hh;
  output [7:0] mm;
  output [7:0] ss;
  input clk, reset, ena;
  output pm;
  wire   N22, N23, N24, N25, N26, N39, N40, N41, N42, N43, N55, N56, N57, N58,
         N59, N71, N72, N73, N74, N75, N88, N89, N90, N91, N92, N110, N112,
         N114, N115, N116, N121, N122, n3, n4, n5, n6, n7, n8, n79, n80, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226;

  GTECH_FJK2S ss_ones_reg_0_ ( .J(n80), .K(n80), .TI(N22), .TE(N25), .CP(clk), 
        .CD(n79), .Q(ss[0]) );
  GTECH_FJK2S ss_ones_reg_3_ ( .J(n80), .K(n80), .TI(N26), .TE(N25), .CP(clk), 
        .CD(n79), .Q(ss[3]) );
  GTECH_FJK2S ss_ones_reg_1_ ( .J(n80), .K(n80), .TI(N23), .TE(N25), .CP(clk), 
        .CD(n79), .Q(ss[1]) );
  GTECH_FJK2S ss_ones_reg_2_ ( .J(n80), .K(n80), .TI(N24), .TE(N25), .CP(clk), 
        .CD(n79), .Q(ss[2]) );
  GTECH_FJK2S ss_tens_reg_0_ ( .J(n80), .K(n80), .TI(N39), .TE(N42), .CP(clk), 
        .CD(n79), .Q(ss[4]) );
  GTECH_FJK2S ss_tens_reg_3_ ( .J(n80), .K(n80), .TI(N43), .TE(N42), .CP(clk), 
        .CD(n79), .Q(ss[7]) );
  GTECH_FJK2S ss_tens_reg_1_ ( .J(n80), .K(n80), .TI(N40), .TE(N42), .CP(clk), 
        .CD(n79), .Q(ss[5]) );
  GTECH_FJK2S ss_tens_reg_2_ ( .J(n80), .K(n80), .TI(N41), .TE(N42), .CP(clk), 
        .CD(n79), .Q(ss[6]) );
  GTECH_FJK2S mm_ones_reg_0_ ( .J(n80), .K(n80), .TI(N55), .TE(N58), .CP(clk), 
        .CD(n79), .Q(mm[0]), .QN(n3) );
  GTECH_FJK2S mm_ones_reg_3_ ( .J(n80), .K(n80), .TI(N59), .TE(N58), .CP(clk), 
        .CD(n79), .Q(mm[3]), .QN(n136) );
  GTECH_FJK2S mm_ones_reg_1_ ( .J(n80), .K(n80), .TI(N56), .TE(N58), .CP(clk), 
        .CD(n79), .Q(mm[1]), .QN(n138) );
  GTECH_FJK2S mm_ones_reg_2_ ( .J(n80), .K(n80), .TI(N57), .TE(N58), .CP(clk), 
        .CD(n79), .Q(mm[2]), .QN(n137) );
  GTECH_FJK2S mm_tens_reg_0_ ( .J(n80), .K(n80), .TI(N71), .TE(N74), .CP(clk), 
        .CD(n79), .Q(mm[4]), .QN(n135) );
  GTECH_FJK2S mm_tens_reg_3_ ( .J(n80), .K(n80), .TI(N75), .TE(N74), .CP(clk), 
        .CD(n79), .Q(mm[7]), .QN(n132) );
  GTECH_FJK2S mm_tens_reg_1_ ( .J(n80), .K(n80), .TI(N72), .TE(N74), .CP(clk), 
        .CD(n79), .Q(mm[5]), .QN(n134) );
  GTECH_FJK2S mm_tens_reg_2_ ( .J(n80), .K(n80), .TI(N73), .TE(N74), .CP(clk), 
        .CD(n79), .Q(mm[6]), .QN(n133) );
  GTECH_FJK2S hh_tens_reg_0_ ( .J(n80), .K(n80), .TI(N110), .TE(N115), .CP(clk), .CD(n79), .Q(hh[4]), .QN(n4) );
  GTECH_FJK2S hh_tens_reg_2_ ( .J(n80), .K(n80), .TI(N114), .TE(N115), .CP(clk), .CD(n79), .Q(hh[6]), .QN(n5) );
  GTECH_FJK2S hh_tens_reg_3_ ( .J(n80), .K(n80), .TI(N116), .TE(N115), .CP(clk), .CD(n79), .Q(hh[7]), .QN(n6) );
  GTECH_FJK2S hh_ones_reg_0_ ( .J(n80), .K(n80), .TI(N88), .TE(N91), .CP(clk), 
        .CD(n79), .Q(hh[0]), .QN(n130) );
  GTECH_FJK2S hh_ones_reg_1_ ( .J(n80), .K(n80), .TI(N89), .TE(N91), .CP(clk), 
        .CD(n79), .Q(hh[1]), .QN(n131) );
  GTECH_FJK2S hh_ones_reg_2_ ( .J(n80), .K(n80), .TI(N90), .TE(N91), .CP(clk), 
        .CD(n79), .Q(hh[2]), .QN(n129) );
  GTECH_FJK2S hh_ones_reg_3_ ( .J(n80), .K(n80), .TI(N92), .TE(N91), .CP(clk), 
        .CD(n79), .Q(hh[3]), .QN(n7) );
  GTECH_FJK2S hh_tens_reg_1_ ( .J(n80), .K(n80), .TI(N112), .TE(N115), .CP(clk), .CD(n79), .Q(hh[5]), .QN(n8) );
  GTECH_FJK2S pm_temp_reg ( .J(n80), .K(n80), .TI(N122), .TE(N121), .CP(clk), 
        .CD(n79), .Q(pm) );
  GTECH_ZERO U154 ( .Z(n80) );
  GTECH_ONE U155 ( .Z(n79) );
  GTECH_AND_NOT U156 ( .A(n146), .B(n147), .Z(N92) );
  GTECH_XOR2 U157 ( .A(n148), .B(n7), .Z(n146) );
  GTECH_OR2 U158 ( .A(n129), .B(n149), .Z(n148) );
  GTECH_NAND2 U159 ( .A(n150), .B(n151), .Z(N91) );
  GTECH_AND_NOT U160 ( .A(n152), .B(n147), .Z(N90) );
  GTECH_XOR2 U161 ( .A(n149), .B(n129), .Z(n152) );
  GTECH_NAND2 U162 ( .A(n153), .B(n154), .Z(n149) );
  GTECH_OAI21 U163 ( .A(n155), .B(n147), .C(n150), .Z(N89) );
  GTECH_XOR2 U164 ( .A(n154), .B(n131), .Z(n155) );
  GTECH_OAI22 U165 ( .A(n151), .B(n156), .C(n154), .D(n147), .Z(N88) );
  GTECH_NAND3 U166 ( .A(n157), .B(n156), .C(n158), .Z(n147) );
  GTECH_AND_NOT U167 ( .A(n159), .B(n160), .Z(N75) );
  GTECH_MUX2 U168 ( .A(n161), .B(n162), .S(n132), .Z(n159) );
  GTECH_AND_NOT U169 ( .A(n163), .B(n135), .Z(n162) );
  GTECH_OR_NOT U170 ( .A(n164), .B(n163), .Z(n161) );
  GTECH_AND_NOT U171 ( .A(n165), .B(n160), .Z(N73) );
  GTECH_XOR2 U172 ( .A(n164), .B(n133), .Z(n165) );
  GTECH_AND_NOT U173 ( .A(n166), .B(n160), .Z(N72) );
  GTECH_OA21 U174 ( .A(n167), .B(n168), .C(n164), .Z(n166) );
  GTECH_NAND2 U175 ( .A(n167), .B(n168), .Z(n164) );
  GTECH_NOT U176 ( .A(n134), .Z(n167) );
  GTECH_AND_NOT U177 ( .A(n135), .B(n160), .Z(N71) );
  GTECH_NAND3 U178 ( .A(n169), .B(n150), .C(n170), .Z(n160) );
  GTECH_AND_NOT U179 ( .A(n171), .B(n172), .Z(N59) );
  GTECH_XOR2 U180 ( .A(n173), .B(n136), .Z(n171) );
  GTECH_OR2 U181 ( .A(n137), .B(n174), .Z(n173) );
  GTECH_AND_NOT U182 ( .A(n175), .B(n172), .Z(N57) );
  GTECH_XOR2 U183 ( .A(n174), .B(n137), .Z(n175) );
  GTECH_AND_NOT U184 ( .A(n176), .B(n172), .Z(N56) );
  GTECH_OA21 U185 ( .A(n177), .B(n178), .C(n174), .Z(n176) );
  GTECH_NAND2 U186 ( .A(n177), .B(n178), .Z(n174) );
  GTECH_NOT U187 ( .A(n138), .Z(n177) );
  GTECH_AND_NOT U188 ( .A(n3), .B(n172), .Z(N55) );
  GTECH_NAND2 U189 ( .A(n179), .B(n180), .Z(n172) );
  GTECH_NOT U190 ( .A(N74), .Z(n180) );
  GTECH_NAND2 U191 ( .A(n150), .B(n181), .Z(N74) );
  GTECH_NOR2 U192 ( .A(n182), .B(n183), .Z(N43) );
  GTECH_MUX2 U193 ( .A(n184), .B(n185), .S(ss[7]), .Z(n183) );
  GTECH_AND_NOT U194 ( .A(ss[6]), .B(n186), .Z(n185) );
  GTECH_NAND2 U195 ( .A(ss[6]), .B(ss[4]), .Z(n184) );
  GTECH_AND_NOT U196 ( .A(n187), .B(n188), .Z(N41) );
  GTECH_XOR2 U197 ( .A(n186), .B(ss[6]), .Z(n188) );
  GTECH_AND_NOT U198 ( .A(n189), .B(n182), .Z(N40) );
  GTECH_OA21 U199 ( .A(ss[4]), .B(ss[5]), .C(n186), .Z(n189) );
  GTECH_NAND2 U200 ( .A(ss[5]), .B(ss[4]), .Z(n186) );
  GTECH_AND_NOT U201 ( .A(n187), .B(ss[4]), .Z(N39) );
  GTECH_NOT U202 ( .A(n182), .Z(n187) );
  GTECH_NAND2 U203 ( .A(n190), .B(n191), .Z(n182) );
  GTECH_NOT U204 ( .A(N58), .Z(n191) );
  GTECH_NAND2 U205 ( .A(n150), .B(n192), .Z(N58) );
  GTECH_OAI22 U206 ( .A(n193), .B(n194), .C(n195), .D(n196), .Z(N26) );
  GTECH_MUX2 U207 ( .A(n193), .B(n197), .S(ss[2]), .Z(n196) );
  GTECH_OR_NOT U208 ( .A(n198), .B(n193), .Z(n197) );
  GTECH_NOT U209 ( .A(ss[3]), .Z(n193) );
  GTECH_NAND2 U210 ( .A(n150), .B(n199), .Z(N25) );
  GTECH_NOT U211 ( .A(ena), .Z(n199) );
  GTECH_MUX2 U212 ( .A(n200), .B(n201), .S(ss[2]), .Z(N24) );
  GTECH_AND_NOT U213 ( .A(n202), .B(n198), .Z(n200) );
  GTECH_OA21 U214 ( .A(ss[0]), .B(ss[1]), .C(n201), .Z(N23) );
  GTECH_NOT U215 ( .A(n194), .Z(n201) );
  GTECH_NAND2 U216 ( .A(n202), .B(n198), .Z(n194) );
  GTECH_NAND2 U217 ( .A(ss[1]), .B(ss[0]), .Z(n198) );
  GTECH_AND_NOT U218 ( .A(n202), .B(ss[0]), .Z(N22) );
  GTECH_NOT U219 ( .A(n195), .Z(n202) );
  GTECH_NAND2 U220 ( .A(ena), .B(n203), .Z(n195) );
  GTECH_NOT U221 ( .A(N42), .Z(n203) );
  GTECH_NAND2 U222 ( .A(n150), .B(n204), .Z(N42) );
  GTECH_AND_NOT U223 ( .A(n205), .B(pm), .Z(N122) );
  GTECH_NOT U224 ( .A(n206), .Z(n205) );
  GTECH_NAND2 U225 ( .A(n150), .B(n206), .Z(N121) );
  GTECH_NAND4 U226 ( .A(n207), .B(n8), .C(n158), .D(n208), .Z(n206) );
  GTECH_AND4 U227 ( .A(n7), .B(n6), .C(n5), .D(n209), .Z(n208) );
  GTECH_AND_NOT U228 ( .A(n210), .B(n211), .Z(N116) );
  GTECH_XOR2 U229 ( .A(n212), .B(n6), .Z(n210) );
  GTECH_OR2 U230 ( .A(n5), .B(n213), .Z(n212) );
  GTECH_NAND3 U231 ( .A(n156), .B(n150), .C(n157), .Z(N115) );
  GTECH_NAND5 U232 ( .A(n8), .B(n7), .C(n6), .D(n5), .E(n214), .Z(n156) );
  GTECH_AND5 U233 ( .A(n153), .B(n209), .C(n215), .D(n130), .E(n129), .Z(n214)
         );
  GTECH_NOT U234 ( .A(n131), .Z(n153) );
  GTECH_AND_NOT U235 ( .A(n216), .B(n211), .Z(N114) );
  GTECH_XOR2 U236 ( .A(n213), .B(n5), .Z(n216) );
  GTECH_AND_NOT U237 ( .A(n217), .B(n211), .Z(N112) );
  GTECH_OA21 U238 ( .A(n218), .B(n209), .C(n213), .Z(n217) );
  GTECH_NAND2 U239 ( .A(n209), .B(n218), .Z(n213) );
  GTECH_NOT U240 ( .A(n8), .Z(n218) );
  GTECH_OAI21 U241 ( .A(n211), .B(n209), .C(n150), .Z(N110) );
  GTECH_NOT U242 ( .A(n4), .Z(n209) );
  GTECH_NAND2 U243 ( .A(n219), .B(n158), .Z(n211) );
  GTECH_NOT U244 ( .A(n151), .Z(n158) );
  GTECH_NAND2 U245 ( .A(n215), .B(n150), .Z(n151) );
  GTECH_NOT U246 ( .A(reset), .Z(n150) );
  GTECH_NOT U247 ( .A(n157), .Z(n219) );
  GTECH_NAND3 U248 ( .A(n215), .B(n220), .C(n207), .Z(n157) );
  GTECH_NOT U249 ( .A(n221), .Z(n207) );
  GTECH_NAND3 U250 ( .A(n129), .B(n154), .C(n131), .Z(n221) );
  GTECH_NOT U251 ( .A(n130), .Z(n154) );
  GTECH_NOT U252 ( .A(n7), .Z(n220) );
  GTECH_NOT U253 ( .A(n169), .Z(n215) );
  GTECH_NAND5 U254 ( .A(n163), .B(n168), .C(n170), .D(n134), .E(n132), .Z(n169) );
  GTECH_NOT U255 ( .A(n181), .Z(n170) );
  GTECH_NAND5 U256 ( .A(n222), .B(n178), .C(n179), .D(n138), .E(n137), .Z(n181) );
  GTECH_NOT U257 ( .A(n192), .Z(n179) );
  GTECH_NAND5 U258 ( .A(n223), .B(n224), .C(n190), .D(ss[6]), .E(ss[4]), .Z(
        n192) );
  GTECH_NOT U259 ( .A(n204), .Z(n190) );
  GTECH_NAND5 U260 ( .A(n225), .B(n226), .C(ena), .D(ss[3]), .E(ss[0]), .Z(
        n204) );
  GTECH_NOT U261 ( .A(ss[2]), .Z(n226) );
  GTECH_NOT U262 ( .A(ss[1]), .Z(n225) );
  GTECH_NOT U263 ( .A(ss[7]), .Z(n224) );
  GTECH_NOT U264 ( .A(ss[5]), .Z(n223) );
  GTECH_NOT U265 ( .A(n3), .Z(n178) );
  GTECH_NOT U266 ( .A(n136), .Z(n222) );
  GTECH_NOT U267 ( .A(n135), .Z(n168) );
  GTECH_NOT U268 ( .A(n133), .Z(n163) );
endmodule

