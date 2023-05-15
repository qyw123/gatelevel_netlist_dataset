
module clock_12h ( clk, reset, ena, pm, hh, mm, ss );
  output [7:0] hh;
  output [7:0] mm;
  output [7:0] ss;
  input clk, reset, ena;
  output pm;
  wire   N22, N23, N24, N25, N26, N39, N40, N41, N42, N43, N55, N56, N57, N58,
         N59, N71, N72, N73, N74, N75, N88, N89, N90, N91, N92, N110, N112,
         N114, N115, N116, N121, N122, n4, n5, n6, n7, n8, n9, n10, n82, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221, n222;

  GTECH_FJK1S ss_ones_reg_0_ ( .J(n82), .K(n82), .TI(N22), .TE(N25), .CP(clk), 
        .Q(ss[0]) );
  GTECH_FJK1S ss_ones_reg_3_ ( .J(n82), .K(n82), .TI(N26), .TE(N25), .CP(clk), 
        .Q(ss[3]) );
  GTECH_FJK1S ss_ones_reg_1_ ( .J(n82), .K(n82), .TI(N23), .TE(N25), .CP(clk), 
        .Q(ss[1]) );
  GTECH_FJK1S ss_ones_reg_2_ ( .J(n82), .K(n82), .TI(N24), .TE(N25), .CP(clk), 
        .Q(ss[2]) );
  GTECH_FJK1S ss_tens_reg_0_ ( .J(n82), .K(n82), .TI(N39), .TE(N42), .CP(clk), 
        .Q(ss[4]) );
  GTECH_FJK1S ss_tens_reg_3_ ( .J(n82), .K(n82), .TI(N43), .TE(N42), .CP(clk), 
        .Q(ss[7]) );
  GTECH_FJK1S ss_tens_reg_1_ ( .J(n82), .K(n82), .TI(N40), .TE(N42), .CP(clk), 
        .Q(ss[5]) );
  GTECH_FJK1S ss_tens_reg_2_ ( .J(n82), .K(n82), .TI(N41), .TE(N42), .CP(clk), 
        .Q(ss[6]) );
  GTECH_FJK1S mm_ones_reg_0_ ( .J(n82), .K(n82), .TI(N55), .TE(N58), .CP(clk), 
        .Q(mm[0]), .QN(n4) );
  GTECH_FJK1S mm_ones_reg_3_ ( .J(n82), .K(n82), .TI(N59), .TE(N58), .CP(clk), 
        .Q(mm[3]), .QN(n113) );
  GTECH_FJK1S mm_ones_reg_1_ ( .J(n82), .K(n82), .TI(N56), .TE(N58), .CP(clk), 
        .Q(mm[1]), .QN(n115) );
  GTECH_FJK1S mm_ones_reg_2_ ( .J(n82), .K(n82), .TI(N57), .TE(N58), .CP(clk), 
        .Q(mm[2]), .QN(n114) );
  GTECH_FJK1S mm_tens_reg_0_ ( .J(n82), .K(n82), .TI(N71), .TE(N74), .CP(clk), 
        .Q(mm[4]), .QN(n112) );
  GTECH_FJK1S mm_tens_reg_3_ ( .J(n82), .K(n82), .TI(N75), .TE(N74), .CP(clk), 
        .Q(mm[7]), .QN(n109) );
  GTECH_FJK1S mm_tens_reg_1_ ( .J(n82), .K(n82), .TI(N72), .TE(N74), .CP(clk), 
        .Q(mm[5]), .QN(n111) );
  GTECH_FJK1S mm_tens_reg_2_ ( .J(n82), .K(n82), .TI(N73), .TE(N74), .CP(clk), 
        .Q(mm[6]), .QN(n110) );
  GTECH_FJK1S hh_tens_reg_0_ ( .J(n82), .K(n82), .TI(N110), .TE(N115), .CP(clk), .Q(hh[4]), .QN(n122) );
  GTECH_FJK1S hh_tens_reg_1_ ( .J(n82), .K(n82), .TI(N112), .TE(N115), .CP(clk), .Q(hh[5]), .QN(n5) );
  GTECH_FJK1S hh_tens_reg_2_ ( .J(n82), .K(n82), .TI(N114), .TE(N115), .CP(clk), .Q(hh[6]), .QN(n6) );
  GTECH_FJK1S hh_tens_reg_3_ ( .J(n82), .K(n82), .TI(N116), .TE(N115), .CP(clk), .Q(hh[7]), .QN(n7) );
  GTECH_FJK1S hh_ones_reg_0_ ( .J(n82), .K(n82), .TI(N88), .TE(N91), .CP(clk), 
        .Q(hh[0]), .QN(n108) );
  GTECH_FJK1S hh_ones_reg_1_ ( .J(n82), .K(n82), .TI(N89), .TE(N91), .CP(clk), 
        .Q(hh[1]), .QN(n8) );
  GTECH_FJK1S hh_ones_reg_2_ ( .J(n82), .K(n82), .TI(N90), .TE(N91), .CP(clk), 
        .Q(hh[2]), .QN(n107) );
  GTECH_FJK1S hh_ones_reg_3_ ( .J(n82), .K(n82), .TI(N92), .TE(N91), .CP(clk), 
        .Q(hh[3]), .QN(n9) );
  GTECH_FJK1S pm_temp_reg ( .J(n82), .K(n82), .TI(N122), .TE(N121), .CP(clk), 
        .Q(pm), .QN(n10) );
  GTECH_ZERO U131 ( .Z(n82) );
  GTECH_AND2 U132 ( .A(n123), .B(n124), .Z(N92) );
  GTECH_XNOR2 U133 ( .A(n125), .B(n9), .Z(n123) );
  GTECH_NOR2 U134 ( .A(n107), .B(n126), .Z(n125) );
  GTECH_NAND2 U135 ( .A(n127), .B(n128), .Z(N91) );
  GTECH_AND2 U136 ( .A(n129), .B(n124), .Z(N90) );
  GTECH_NOT U137 ( .A(n130), .Z(n124) );
  GTECH_XOR2 U138 ( .A(n126), .B(n107), .Z(n129) );
  GTECH_NAND2 U139 ( .A(n131), .B(n132), .Z(n126) );
  GTECH_OAI21 U140 ( .A(n133), .B(n130), .C(n127), .Z(N89) );
  GTECH_OA21 U141 ( .A(n8), .B(n132), .C(n134), .Z(n133) );
  GTECH_OAI22 U142 ( .A(n128), .B(n135), .C(n132), .D(n130), .Z(N88) );
  GTECH_OR3 U143 ( .A(n136), .B(n137), .C(n128), .Z(n130) );
  GTECH_OAI22 U144 ( .A(n109), .B(n138), .C(n139), .D(n140), .Z(N75) );
  GTECH_OA21 U145 ( .A(n109), .B(n141), .C(n142), .Z(n139) );
  GTECH_NOT U146 ( .A(n110), .Z(n141) );
  GTECH_MUX2 U147 ( .A(n143), .B(n144), .S(n110), .Z(N73) );
  GTECH_AND3 U148 ( .A(n145), .B(n146), .C(n147), .Z(n144) );
  GTECH_NOT U149 ( .A(n138), .Z(n143) );
  GTECH_OAI21 U150 ( .A(n112), .B(n111), .C(n147), .Z(n138) );
  GTECH_MUX2 U151 ( .A(N71), .B(n148), .S(n111), .Z(N72) );
  GTECH_AND2 U152 ( .A(n147), .B(n146), .Z(n148) );
  GTECH_NOT U153 ( .A(n112), .Z(n146) );
  GTECH_NOT U154 ( .A(n149), .Z(N71) );
  GTECH_NAND2 U155 ( .A(n112), .B(n147), .Z(n149) );
  GTECH_NOT U156 ( .A(n140), .Z(n147) );
  GTECH_OR3 U157 ( .A(reset), .B(n150), .C(n151), .Z(n140) );
  GTECH_OAI22 U158 ( .A(n113), .B(n152), .C(n153), .D(n154), .Z(N59) );
  GTECH_MUX2 U159 ( .A(n155), .B(n156), .S(n113), .Z(n154) );
  GTECH_NAND2 U160 ( .A(n157), .B(n155), .Z(n156) );
  GTECH_NOT U161 ( .A(n114), .Z(n155) );
  GTECH_MUX2 U162 ( .A(n158), .B(n159), .S(n114), .Z(N57) );
  GTECH_AND2 U163 ( .A(n160), .B(n157), .Z(n159) );
  GTECH_NOT U164 ( .A(n161), .Z(n157) );
  GTECH_NOT U165 ( .A(n152), .Z(n158) );
  GTECH_NAND2 U166 ( .A(n160), .B(n161), .Z(n152) );
  GTECH_NAND2 U167 ( .A(n162), .B(n163), .Z(n161) );
  GTECH_NOT U168 ( .A(n115), .Z(n162) );
  GTECH_MUX2 U169 ( .A(N55), .B(n164), .S(n115), .Z(N56) );
  GTECH_AND2 U170 ( .A(n160), .B(n163), .Z(n164) );
  GTECH_NOT U171 ( .A(n165), .Z(N55) );
  GTECH_NAND2 U172 ( .A(n4), .B(n160), .Z(n165) );
  GTECH_NOT U173 ( .A(n153), .Z(n160) );
  GTECH_NAND2 U174 ( .A(n166), .B(n167), .Z(n153) );
  GTECH_NOT U175 ( .A(N74), .Z(n167) );
  GTECH_NAND2 U176 ( .A(n127), .B(n151), .Z(N74) );
  GTECH_OAI22 U177 ( .A(n168), .B(n169), .C(n170), .D(n171), .Z(N43) );
  GTECH_OA21 U178 ( .A(ss[6]), .B(n168), .C(n172), .Z(n170) );
  GTECH_NOT U179 ( .A(ss[7]), .Z(n168) );
  GTECH_MUX2 U180 ( .A(n173), .B(n174), .S(ss[6]), .Z(N41) );
  GTECH_NOT U181 ( .A(n169), .Z(n174) );
  GTECH_OAI21 U182 ( .A(n175), .B(n176), .C(n177), .Z(n169) );
  GTECH_NOT U183 ( .A(ss[5]), .Z(n176) );
  GTECH_AND3 U184 ( .A(n177), .B(ss[4]), .C(ss[5]), .Z(n173) );
  GTECH_MUX2 U185 ( .A(n178), .B(N39), .S(ss[5]), .Z(N40) );
  GTECH_AND2 U186 ( .A(n177), .B(ss[4]), .Z(n178) );
  GTECH_NOT U187 ( .A(n179), .Z(N39) );
  GTECH_NAND2 U188 ( .A(n177), .B(n175), .Z(n179) );
  GTECH_NOT U189 ( .A(n171), .Z(n177) );
  GTECH_NAND2 U190 ( .A(n180), .B(n181), .Z(n171) );
  GTECH_NOT U191 ( .A(N58), .Z(n181) );
  GTECH_NAND2 U192 ( .A(n127), .B(n182), .Z(N58) );
  GTECH_NOT U193 ( .A(n183), .Z(n180) );
  GTECH_OAI22 U194 ( .A(n184), .B(n185), .C(n186), .D(n187), .Z(N26) );
  GTECH_MUX2 U195 ( .A(n184), .B(n188), .S(ss[2]), .Z(n187) );
  GTECH_NAND2 U196 ( .A(n189), .B(n184), .Z(n188) );
  GTECH_NOT U197 ( .A(ss[3]), .Z(n184) );
  GTECH_NAND2 U198 ( .A(n127), .B(n190), .Z(N25) );
  GTECH_NOT U199 ( .A(ena), .Z(n190) );
  GTECH_MUX2 U200 ( .A(n191), .B(n192), .S(ss[2]), .Z(N24) );
  GTECH_NOT U201 ( .A(n185), .Z(n192) );
  GTECH_NAND2 U202 ( .A(n193), .B(n194), .Z(n185) );
  GTECH_AND2 U203 ( .A(n193), .B(n189), .Z(n191) );
  GTECH_NOT U204 ( .A(n194), .Z(n189) );
  GTECH_NAND2 U205 ( .A(ss[1]), .B(ss[0]), .Z(n194) );
  GTECH_MUX2 U206 ( .A(n195), .B(N22), .S(ss[1]), .Z(N23) );
  GTECH_AND2 U207 ( .A(n193), .B(ss[0]), .Z(n195) );
  GTECH_NOT U208 ( .A(n196), .Z(N22) );
  GTECH_NAND2 U209 ( .A(n193), .B(n197), .Z(n196) );
  GTECH_NOT U210 ( .A(ss[0]), .Z(n197) );
  GTECH_NOT U211 ( .A(n186), .Z(n193) );
  GTECH_NAND2 U212 ( .A(ena), .B(n198), .Z(n186) );
  GTECH_NOT U213 ( .A(N42), .Z(n198) );
  GTECH_NAND2 U214 ( .A(n127), .B(n183), .Z(N42) );
  GTECH_AND2 U215 ( .A(n199), .B(n10), .Z(N122) );
  GTECH_NOT U216 ( .A(n200), .Z(n199) );
  GTECH_NAND2 U217 ( .A(n127), .B(n200), .Z(N121) );
  GTECH_OR3 U218 ( .A(n134), .B(n201), .C(n128), .Z(n200) );
  GTECH_AND2 U219 ( .A(n202), .B(n203), .Z(N116) );
  GTECH_XNOR2 U220 ( .A(n204), .B(n7), .Z(n202) );
  GTECH_NOR2 U221 ( .A(n6), .B(n205), .Z(n204) );
  GTECH_OR3 U222 ( .A(reset), .B(n136), .C(n137), .Z(N115) );
  GTECH_NOT U223 ( .A(n135), .Z(n137) );
  GTECH_NAND4 U224 ( .A(n108), .B(n206), .C(n150), .D(n131), .Z(n135) );
  GTECH_NOT U225 ( .A(n8), .Z(n131) );
  GTECH_NOT U226 ( .A(n201), .Z(n206) );
  GTECH_NAND4 U227 ( .A(n7), .B(n6), .C(n9), .D(n207), .Z(n201) );
  GTECH_AND3 U228 ( .A(n107), .B(n208), .C(n5), .Z(n207) );
  GTECH_AND2 U229 ( .A(n209), .B(n203), .Z(N114) );
  GTECH_XOR2 U230 ( .A(n205), .B(n6), .Z(n209) );
  GTECH_NAND2 U231 ( .A(n210), .B(n208), .Z(n205) );
  GTECH_NOT U232 ( .A(n5), .Z(n210) );
  GTECH_AND2 U233 ( .A(n203), .B(n211), .Z(N112) );
  GTECH_XOR2 U234 ( .A(n5), .B(n122), .Z(n211) );
  GTECH_NOT U235 ( .A(n212), .Z(n203) );
  GTECH_OAI21 U236 ( .A(n212), .B(n208), .C(n127), .Z(N110) );
  GTECH_NOT U237 ( .A(n122), .Z(n208) );
  GTECH_NAND2 U238 ( .A(n136), .B(n213), .Z(n212) );
  GTECH_NOT U239 ( .A(n128), .Z(n213) );
  GTECH_NAND2 U240 ( .A(n150), .B(n127), .Z(n128) );
  GTECH_NOT U241 ( .A(reset), .Z(n127) );
  GTECH_NOT U242 ( .A(n214), .Z(n136) );
  GTECH_NAND4 U243 ( .A(n107), .B(n150), .C(n215), .D(n216), .Z(n214) );
  GTECH_NOT U244 ( .A(n9), .Z(n216) );
  GTECH_NOT U245 ( .A(n134), .Z(n215) );
  GTECH_NAND2 U246 ( .A(n8), .B(n132), .Z(n134) );
  GTECH_NOT U247 ( .A(n108), .Z(n132) );
  GTECH_NOT U248 ( .A(n217), .Z(n150) );
  GTECH_OR3 U249 ( .A(n142), .B(n151), .C(n145), .Z(n217) );
  GTECH_NOT U250 ( .A(n111), .Z(n145) );
  GTECH_NAND5 U251 ( .A(n218), .B(n163), .C(n166), .D(n115), .E(n114), .Z(n151) );
  GTECH_NOT U252 ( .A(n182), .Z(n166) );
  GTECH_OR3 U253 ( .A(ss[5]), .B(n172), .C(n183), .Z(n182) );
  GTECH_NAND5 U254 ( .A(n219), .B(n220), .C(ena), .D(ss[3]), .E(ss[0]), .Z(
        n183) );
  GTECH_NOT U255 ( .A(ss[2]), .Z(n220) );
  GTECH_NOT U256 ( .A(ss[1]), .Z(n219) );
  GTECH_OR3 U257 ( .A(ss[7]), .B(n175), .C(n221), .Z(n172) );
  GTECH_NOT U258 ( .A(ss[6]), .Z(n221) );
  GTECH_NOT U259 ( .A(ss[4]), .Z(n175) );
  GTECH_NOT U260 ( .A(n4), .Z(n163) );
  GTECH_NOT U261 ( .A(n113), .Z(n218) );
  GTECH_OR3 U262 ( .A(n112), .B(n110), .C(n222), .Z(n142) );
  GTECH_NOT U263 ( .A(n109), .Z(n222) );
endmodule

