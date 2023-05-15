
module clock_12h ( clk, reset, ena, pm, hh, mm, ss );
  output [7:0] hh;
  output [7:0] mm;
  output [7:0] ss;
  input clk, reset, ena;
  output pm;
  wire   N22, N23, N24, N25, N26, N39, N40, N41, N42, N43, N55, N56, N57, N58,
         N59, N71, N72, N73, N74, N75, N88, N89, N90, N91, N92, N110, N112,
         N114, N115, N116, N121, N122, n4, n5, n6, n7, n8, n9, n10, n11, n83,
         n108, n109, n110, n111, n112, n113, n114, n115, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220;

  GTECH_FJK1S ss_ones_reg_0_ ( .J(n83), .K(n83), .TI(N22), .TE(N25), .CP(clk), 
        .Q(ss[0]) );
  GTECH_FJK1S ss_ones_reg_3_ ( .J(n83), .K(n83), .TI(N26), .TE(N25), .CP(clk), 
        .Q(ss[3]) );
  GTECH_FJK1S ss_ones_reg_1_ ( .J(n83), .K(n83), .TI(N23), .TE(N25), .CP(clk), 
        .Q(ss[1]) );
  GTECH_FJK1S ss_ones_reg_2_ ( .J(n83), .K(n83), .TI(N24), .TE(N25), .CP(clk), 
        .Q(ss[2]) );
  GTECH_FJK1S ss_tens_reg_0_ ( .J(n83), .K(n83), .TI(N39), .TE(N42), .CP(clk), 
        .Q(ss[4]) );
  GTECH_FJK1S ss_tens_reg_2_ ( .J(n83), .K(n83), .TI(N41), .TE(N42), .CP(clk), 
        .Q(ss[6]) );
  GTECH_FJK1S ss_tens_reg_3_ ( .J(n83), .K(n83), .TI(N43), .TE(N42), .CP(clk), 
        .Q(ss[7]) );
  GTECH_FJK1S ss_tens_reg_1_ ( .J(n83), .K(n83), .TI(N40), .TE(N42), .CP(clk), 
        .Q(ss[5]) );
  GTECH_FJK1S mm_ones_reg_0_ ( .J(n83), .K(n83), .TI(N55), .TE(N58), .CP(clk), 
        .Q(mm[0]), .QN(n4) );
  GTECH_FJK1S mm_ones_reg_3_ ( .J(n83), .K(n83), .TI(N59), .TE(N58), .CP(clk), 
        .Q(mm[3]), .QN(n113) );
  GTECH_FJK1S mm_ones_reg_1_ ( .J(n83), .K(n83), .TI(N56), .TE(N58), .CP(clk), 
        .Q(mm[1]), .QN(n115) );
  GTECH_FJK1S mm_ones_reg_2_ ( .J(n83), .K(n83), .TI(N57), .TE(N58), .CP(clk), 
        .Q(mm[2]), .QN(n114) );
  GTECH_FJK1S mm_tens_reg_0_ ( .J(n83), .K(n83), .TI(N71), .TE(N74), .CP(clk), 
        .Q(mm[4]), .QN(n112) );
  GTECH_FJK1S mm_tens_reg_2_ ( .J(n83), .K(n83), .TI(N73), .TE(N74), .CP(clk), 
        .Q(mm[6]), .QN(n110) );
  GTECH_FJK1S mm_tens_reg_3_ ( .J(n83), .K(n83), .TI(N75), .TE(N74), .CP(clk), 
        .Q(mm[7]), .QN(n5) );
  GTECH_FJK1S mm_tens_reg_1_ ( .J(n83), .K(n83), .TI(N72), .TE(N74), .CP(clk), 
        .Q(mm[5]), .QN(n111) );
  GTECH_FJK1S hh_tens_reg_0_ ( .J(n83), .K(n83), .TI(N110), .TE(N115), .CP(clk), .Q(hh[4]), .QN(n122) );
  GTECH_FJK1S hh_tens_reg_2_ ( .J(n83), .K(n83), .TI(N114), .TE(N115), .CP(clk), .Q(hh[6]), .QN(n6) );
  GTECH_FJK1S hh_tens_reg_3_ ( .J(n83), .K(n83), .TI(N116), .TE(N115), .CP(clk), .Q(hh[7]), .QN(n7) );
  GTECH_FJK1S hh_ones_reg_0_ ( .J(n83), .K(n83), .TI(N88), .TE(N91), .CP(clk), 
        .Q(hh[0]), .QN(n8) );
  GTECH_FJK1S hh_ones_reg_1_ ( .J(n83), .K(n83), .TI(N89), .TE(N91), .CP(clk), 
        .Q(hh[1]), .QN(n109) );
  GTECH_FJK1S hh_ones_reg_2_ ( .J(n83), .K(n83), .TI(N90), .TE(N91), .CP(clk), 
        .Q(hh[2]), .QN(n9) );
  GTECH_FJK1S hh_ones_reg_3_ ( .J(n83), .K(n83), .TI(N92), .TE(N91), .CP(clk), 
        .Q(hh[3]), .QN(n108) );
  GTECH_FJK1S hh_tens_reg_1_ ( .J(n83), .K(n83), .TI(N112), .TE(N115), .CP(clk), .Q(hh[5]), .QN(n10) );
  GTECH_FJK1S pm_temp_reg ( .J(n83), .K(n83), .TI(N122), .TE(N121), .CP(clk), 
        .Q(pm), .QN(n11) );
  GTECH_ZERO U131 ( .Z(n83) );
  GTECH_AND2 U132 ( .A(n123), .B(n124), .Z(N92) );
  GTECH_XNOR2 U133 ( .A(n108), .B(n125), .Z(n124) );
  GTECH_AND_NOT U134 ( .A(n126), .B(n9), .Z(n125) );
  GTECH_NAND2 U135 ( .A(n127), .B(n128), .Z(N91) );
  GTECH_AND2 U136 ( .A(n129), .B(n123), .Z(N90) );
  GTECH_NOT U137 ( .A(n130), .Z(n123) );
  GTECH_XNOR2 U138 ( .A(n9), .B(n126), .Z(n129) );
  GTECH_NOT U139 ( .A(n131), .Z(n126) );
  GTECH_NAND2 U140 ( .A(n132), .B(n133), .Z(n131) );
  GTECH_OAI21 U141 ( .A(n134), .B(n130), .C(n127), .Z(N89) );
  GTECH_OA21 U142 ( .A(n109), .B(n132), .C(n135), .Z(n134) );
  GTECH_OAI22 U143 ( .A(n128), .B(n136), .C(n132), .D(n130), .Z(N88) );
  GTECH_OR3 U144 ( .A(n137), .B(n138), .C(n128), .Z(n130) );
  GTECH_OAI22 U145 ( .A(n5), .B(n139), .C(n140), .D(n141), .Z(N75) );
  GTECH_OA21 U146 ( .A(n5), .B(n142), .C(n143), .Z(n140) );
  GTECH_NOT U147 ( .A(n110), .Z(n142) );
  GTECH_MUX2 U148 ( .A(n144), .B(n145), .S(n110), .Z(N73) );
  GTECH_AND3 U149 ( .A(n146), .B(n147), .C(n148), .Z(n145) );
  GTECH_NOT U150 ( .A(n139), .Z(n144) );
  GTECH_OAI21 U151 ( .A(n112), .B(n111), .C(n148), .Z(n139) );
  GTECH_MUX2 U152 ( .A(N71), .B(n149), .S(n111), .Z(N72) );
  GTECH_AND2 U153 ( .A(n148), .B(n147), .Z(n149) );
  GTECH_NOT U154 ( .A(n112), .Z(n147) );
  GTECH_NOT U155 ( .A(n150), .Z(N71) );
  GTECH_NAND2 U156 ( .A(n112), .B(n148), .Z(n150) );
  GTECH_NOT U157 ( .A(n141), .Z(n148) );
  GTECH_OR3 U158 ( .A(reset), .B(n151), .C(n152), .Z(n141) );
  GTECH_OAI22 U159 ( .A(n113), .B(n153), .C(n154), .D(n155), .Z(N59) );
  GTECH_MUX2 U160 ( .A(n156), .B(n157), .S(n113), .Z(n155) );
  GTECH_NAND2 U161 ( .A(n158), .B(n156), .Z(n157) );
  GTECH_NOT U162 ( .A(n114), .Z(n156) );
  GTECH_MUX2 U163 ( .A(n159), .B(n160), .S(n114), .Z(N57) );
  GTECH_AND2 U164 ( .A(n161), .B(n158), .Z(n160) );
  GTECH_NOT U165 ( .A(n162), .Z(n158) );
  GTECH_NOT U166 ( .A(n153), .Z(n159) );
  GTECH_NAND2 U167 ( .A(n161), .B(n162), .Z(n153) );
  GTECH_NAND2 U168 ( .A(n163), .B(n164), .Z(n162) );
  GTECH_NOT U169 ( .A(n115), .Z(n163) );
  GTECH_MUX2 U170 ( .A(N55), .B(n165), .S(n115), .Z(N56) );
  GTECH_AND2 U171 ( .A(n161), .B(n164), .Z(n165) );
  GTECH_NOT U172 ( .A(n166), .Z(N55) );
  GTECH_NAND2 U173 ( .A(n4), .B(n161), .Z(n166) );
  GTECH_NOT U174 ( .A(n154), .Z(n161) );
  GTECH_NAND2 U175 ( .A(n167), .B(n168), .Z(n154) );
  GTECH_NOT U176 ( .A(N74), .Z(n168) );
  GTECH_NAND2 U177 ( .A(n127), .B(n152), .Z(N74) );
  GTECH_OAI2N2 U178 ( .A(n169), .B(n170), .C(n171), .D(ss[7]), .Z(N43) );
  GTECH_OA21 U179 ( .A(n172), .B(ss[6]), .C(n173), .Z(n169) );
  GTECH_NOT U180 ( .A(ss[7]), .Z(n172) );
  GTECH_MUX2 U181 ( .A(n174), .B(n171), .S(ss[6]), .Z(N41) );
  GTECH_OAI21 U182 ( .A(ss[5]), .B(n170), .C(n175), .Z(n171) );
  GTECH_AND3 U183 ( .A(n176), .B(ss[4]), .C(ss[5]), .Z(n174) );
  GTECH_MUX2 U184 ( .A(n177), .B(N39), .S(ss[5]), .Z(N40) );
  GTECH_AND2 U185 ( .A(n176), .B(ss[4]), .Z(n177) );
  GTECH_NOT U186 ( .A(n175), .Z(N39) );
  GTECH_NAND2 U187 ( .A(n176), .B(n178), .Z(n175) );
  GTECH_NOT U188 ( .A(n170), .Z(n176) );
  GTECH_NAND2 U189 ( .A(n179), .B(n180), .Z(n170) );
  GTECH_NOT U190 ( .A(N58), .Z(n180) );
  GTECH_NAND2 U191 ( .A(n127), .B(n181), .Z(N58) );
  GTECH_NOT U192 ( .A(n182), .Z(n179) );
  GTECH_MUX2 U193 ( .A(n183), .B(n184), .S(ss[3]), .Z(N26) );
  GTECH_OAI21 U194 ( .A(ss[2]), .B(n185), .C(n186), .Z(n184) );
  GTECH_NOT U195 ( .A(n187), .Z(n186) );
  GTECH_AND2 U196 ( .A(ss[2]), .B(n188), .Z(n183) );
  GTECH_NAND2 U197 ( .A(n127), .B(n189), .Z(N25) );
  GTECH_NOT U198 ( .A(ena), .Z(n189) );
  GTECH_MUX2 U199 ( .A(n188), .B(n187), .S(ss[2]), .Z(N24) );
  GTECH_OAI21 U200 ( .A(ss[1]), .B(n185), .C(n190), .Z(n187) );
  GTECH_NOT U201 ( .A(n191), .Z(n188) );
  GTECH_OR3 U202 ( .A(n192), .B(n185), .C(n193), .Z(n191) );
  GTECH_MUX2 U203 ( .A(n194), .B(N22), .S(ss[1]), .Z(N23) );
  GTECH_AND2 U204 ( .A(n195), .B(ss[0]), .Z(n194) );
  GTECH_NOT U205 ( .A(n190), .Z(N22) );
  GTECH_NAND2 U206 ( .A(n195), .B(n192), .Z(n190) );
  GTECH_NOT U207 ( .A(ss[0]), .Z(n192) );
  GTECH_NOT U208 ( .A(n185), .Z(n195) );
  GTECH_NAND2 U209 ( .A(ena), .B(n196), .Z(n185) );
  GTECH_NOT U210 ( .A(N42), .Z(n196) );
  GTECH_NAND2 U211 ( .A(n127), .B(n182), .Z(N42) );
  GTECH_AND2 U212 ( .A(n197), .B(n11), .Z(N122) );
  GTECH_NOT U213 ( .A(n198), .Z(n197) );
  GTECH_NAND2 U214 ( .A(n127), .B(n198), .Z(N121) );
  GTECH_OR3 U215 ( .A(n135), .B(n199), .C(n128), .Z(n198) );
  GTECH_AND2 U216 ( .A(n200), .B(n201), .Z(N116) );
  GTECH_XNOR2 U217 ( .A(n7), .B(n202), .Z(n201) );
  GTECH_AND_NOT U218 ( .A(n203), .B(n6), .Z(n202) );
  GTECH_OR3 U219 ( .A(reset), .B(n137), .C(n138), .Z(N115) );
  GTECH_NOT U220 ( .A(n136), .Z(n138) );
  GTECH_NAND4 U221 ( .A(n8), .B(n204), .C(n151), .D(n133), .Z(n136) );
  GTECH_NOT U222 ( .A(n109), .Z(n133) );
  GTECH_NOT U223 ( .A(n199), .Z(n204) );
  GTECH_NAND4 U224 ( .A(n6), .B(n108), .C(n7), .D(n205), .Z(n199) );
  GTECH_AND3 U225 ( .A(n9), .B(n206), .C(n10), .Z(n205) );
  GTECH_AND2 U226 ( .A(n207), .B(n200), .Z(N114) );
  GTECH_XNOR2 U227 ( .A(n6), .B(n203), .Z(n207) );
  GTECH_NOT U228 ( .A(n208), .Z(n203) );
  GTECH_NAND2 U229 ( .A(n206), .B(n209), .Z(n208) );
  GTECH_AND2 U230 ( .A(n200), .B(n210), .Z(N112) );
  GTECH_XNOR2 U231 ( .A(n122), .B(n209), .Z(n210) );
  GTECH_NOT U232 ( .A(n10), .Z(n209) );
  GTECH_NOT U233 ( .A(n211), .Z(n200) );
  GTECH_OAI21 U234 ( .A(n211), .B(n206), .C(n127), .Z(N110) );
  GTECH_NOT U235 ( .A(n122), .Z(n206) );
  GTECH_NAND2 U236 ( .A(n137), .B(n212), .Z(n211) );
  GTECH_NOT U237 ( .A(n128), .Z(n212) );
  GTECH_NAND2 U238 ( .A(n151), .B(n127), .Z(n128) );
  GTECH_NOT U239 ( .A(reset), .Z(n127) );
  GTECH_NOT U240 ( .A(n213), .Z(n137) );
  GTECH_NAND4 U241 ( .A(n9), .B(n151), .C(n214), .D(n215), .Z(n213) );
  GTECH_NOT U242 ( .A(n108), .Z(n215) );
  GTECH_NOT U243 ( .A(n135), .Z(n214) );
  GTECH_NAND2 U244 ( .A(n109), .B(n132), .Z(n135) );
  GTECH_NOT U245 ( .A(n8), .Z(n132) );
  GTECH_NOT U246 ( .A(n216), .Z(n151) );
  GTECH_OR3 U247 ( .A(n143), .B(n152), .C(n146), .Z(n216) );
  GTECH_NOT U248 ( .A(n111), .Z(n146) );
  GTECH_NAND5 U249 ( .A(n217), .B(n164), .C(n167), .D(n115), .E(n114), .Z(n152) );
  GTECH_NOT U250 ( .A(n181), .Z(n167) );
  GTECH_OR3 U251 ( .A(ss[5]), .B(n173), .C(n182), .Z(n181) );
  GTECH_NAND5 U252 ( .A(n193), .B(n218), .C(ena), .D(ss[3]), .E(ss[0]), .Z(
        n182) );
  GTECH_NOT U253 ( .A(ss[2]), .Z(n218) );
  GTECH_NOT U254 ( .A(ss[1]), .Z(n193) );
  GTECH_OR3 U255 ( .A(ss[7]), .B(n178), .C(n219), .Z(n173) );
  GTECH_NOT U256 ( .A(ss[6]), .Z(n219) );
  GTECH_NOT U257 ( .A(ss[4]), .Z(n178) );
  GTECH_NOT U258 ( .A(n4), .Z(n164) );
  GTECH_NOT U259 ( .A(n113), .Z(n217) );
  GTECH_OR3 U260 ( .A(n112), .B(n110), .C(n220), .Z(n143) );
  GTECH_NOT U261 ( .A(n5), .Z(n220) );
endmodule

