
module clock_12h ( clk, reset, ena, pm, hh, mm, ss );
  output [7:0] hh;
  output [7:0] mm;
  output [7:0] ss;
  input clk, reset, ena;
  output pm;
  wire   N22, N23, N24, N25, N26, N39, N40, N41, N42, N43, N55, N56, N57, N58,
         N59, N71, N72, N73, N74, N75, N88, N89, N90, N91, N92, N110, N112,
         N114, N115, N116, N121, N122, n3, n4, n5, n6, n7, n8, n9, n81, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217;

  GTECH_FJK1S ss_ones_reg_0_ ( .J(n81), .K(n81), .TI(N22), .TE(N25), .CP(clk), 
        .Q(ss[0]) );
  GTECH_FJK1S ss_ones_reg_1_ ( .J(n81), .K(n81), .TI(N23), .TE(N25), .CP(clk), 
        .Q(ss[1]) );
  GTECH_FJK1S ss_ones_reg_2_ ( .J(n81), .K(n81), .TI(N24), .TE(N25), .CP(clk), 
        .Q(ss[2]) );
  GTECH_FJK1S ss_ones_reg_3_ ( .J(n81), .K(n81), .TI(N26), .TE(N25), .CP(clk), 
        .Q(ss[3]) );
  GTECH_FJK1S ss_tens_reg_0_ ( .J(n81), .K(n81), .TI(N39), .TE(N42), .CP(clk), 
        .Q(ss[4]) );
  GTECH_FJK1S ss_tens_reg_2_ ( .J(n81), .K(n81), .TI(N41), .TE(N42), .CP(clk), 
        .Q(ss[6]) );
  GTECH_FJK1S ss_tens_reg_3_ ( .J(n81), .K(n81), .TI(N43), .TE(N42), .CP(clk), 
        .Q(ss[7]) );
  GTECH_FJK1S ss_tens_reg_1_ ( .J(n81), .K(n81), .TI(N40), .TE(N42), .CP(clk), 
        .Q(ss[5]) );
  GTECH_FJK1S mm_ones_reg_0_ ( .J(n81), .K(n81), .TI(N55), .TE(N58), .CP(clk), 
        .Q(mm[0]), .QN(n112) );
  GTECH_FJK1S mm_ones_reg_1_ ( .J(n81), .K(n81), .TI(N56), .TE(N58), .CP(clk), 
        .Q(mm[1]), .QN(n113) );
  GTECH_FJK1S mm_ones_reg_2_ ( .J(n81), .K(n81), .TI(N57), .TE(N58), .CP(clk), 
        .Q(mm[2]), .QN(n114) );
  GTECH_FJK1S mm_ones_reg_3_ ( .J(n81), .K(n81), .TI(N59), .TE(N58), .CP(clk), 
        .Q(mm[3]), .QN(n111) );
  GTECH_FJK1S mm_tens_reg_0_ ( .J(n81), .K(n81), .TI(N71), .TE(N74), .CP(clk), 
        .Q(mm[4]), .QN(n3) );
  GTECH_FJK1S mm_tens_reg_2_ ( .J(n81), .K(n81), .TI(N73), .TE(N74), .CP(clk), 
        .Q(mm[6]), .QN(n109) );
  GTECH_FJK1S mm_tens_reg_3_ ( .J(n81), .K(n81), .TI(N75), .TE(N74), .CP(clk), 
        .Q(mm[7]), .QN(n108) );
  GTECH_FJK1S mm_tens_reg_1_ ( .J(n81), .K(n81), .TI(N72), .TE(N74), .CP(clk), 
        .Q(mm[5]), .QN(n110) );
  GTECH_FJK1S hh_tens_reg_0_ ( .J(n81), .K(n81), .TI(N110), .TE(N115), .CP(clk), .Q(hh[4]), .QN(n122) );
  GTECH_FJK1S hh_ones_reg_0_ ( .J(n81), .K(n81), .TI(N88), .TE(N91), .CP(clk), 
        .Q(hh[0]), .QN(n107) );
  GTECH_FJK1S hh_ones_reg_1_ ( .J(n81), .K(n81), .TI(N89), .TE(N91), .CP(clk), 
        .Q(hh[1]), .QN(n4) );
  GTECH_FJK1S hh_ones_reg_2_ ( .J(n81), .K(n81), .TI(N90), .TE(N91), .CP(clk), 
        .Q(hh[2]), .QN(n106) );
  GTECH_FJK1S hh_ones_reg_3_ ( .J(n81), .K(n81), .TI(N92), .TE(N91), .CP(clk), 
        .Q(hh[3]), .QN(n5) );
  GTECH_FJK1S hh_tens_reg_1_ ( .J(n81), .K(n81), .TI(N112), .TE(N115), .CP(clk), .Q(hh[5]), .QN(n6) );
  GTECH_FJK1S hh_tens_reg_2_ ( .J(n81), .K(n81), .TI(N114), .TE(N115), .CP(clk), .Q(hh[6]), .QN(n7) );
  GTECH_FJK1S hh_tens_reg_3_ ( .J(n81), .K(n81), .TI(N116), .TE(N115), .CP(clk), .Q(hh[7]), .QN(n8) );
  GTECH_FJK1S pm_temp_reg ( .J(n81), .K(n81), .TI(N122), .TE(N121), .CP(clk), 
        .Q(pm), .QN(n9) );
  GTECH_ZERO U131 ( .Z(n81) );
  GTECH_AND2 U132 ( .A(n123), .B(n124), .Z(N92) );
  GTECH_XOR2 U133 ( .A(n125), .B(n5), .Z(n123) );
  GTECH_OR2 U134 ( .A(n106), .B(n126), .Z(n125) );
  GTECH_NAND2 U135 ( .A(n127), .B(n128), .Z(N91) );
  GTECH_AND2 U136 ( .A(n129), .B(n124), .Z(N90) );
  GTECH_NOT U137 ( .A(n130), .Z(n124) );
  GTECH_XOR2 U138 ( .A(n126), .B(n106), .Z(n129) );
  GTECH_NAND2 U139 ( .A(n131), .B(n132), .Z(n126) );
  GTECH_OAI21 U140 ( .A(n133), .B(n130), .C(n127), .Z(N89) );
  GTECH_OA21 U141 ( .A(n4), .B(n132), .C(n134), .Z(n133) );
  GTECH_OAI22 U142 ( .A(n128), .B(n135), .C(n132), .D(n130), .Z(N88) );
  GTECH_OR3 U143 ( .A(n136), .B(n137), .C(n128), .Z(n130) );
  GTECH_OAI22 U144 ( .A(n108), .B(n138), .C(n139), .D(n140), .Z(N75) );
  GTECH_OA21 U145 ( .A(n108), .B(n141), .C(n142), .Z(n139) );
  GTECH_NOT U146 ( .A(n109), .Z(n141) );
  GTECH_MUX2 U147 ( .A(n143), .B(n144), .S(n109), .Z(N73) );
  GTECH_AND3 U148 ( .A(n145), .B(n146), .C(n147), .Z(n144) );
  GTECH_NOT U149 ( .A(n138), .Z(n143) );
  GTECH_OAI21 U150 ( .A(n3), .B(n110), .C(n147), .Z(n138) );
  GTECH_MUX2 U151 ( .A(N71), .B(n148), .S(n110), .Z(N72) );
  GTECH_AND2 U152 ( .A(n147), .B(n146), .Z(n148) );
  GTECH_NOT U153 ( .A(n3), .Z(n146) );
  GTECH_NOT U154 ( .A(n149), .Z(N71) );
  GTECH_NAND2 U155 ( .A(n3), .B(n147), .Z(n149) );
  GTECH_NOT U156 ( .A(n140), .Z(n147) );
  GTECH_OR3 U157 ( .A(reset), .B(n150), .C(n151), .Z(n140) );
  GTECH_MUX2 U158 ( .A(n152), .B(n153), .S(n111), .Z(N59) );
  GTECH_AND2 U159 ( .A(n154), .B(n155), .Z(n153) );
  GTECH_OAI21 U160 ( .A(n155), .B(n156), .C(n157), .Z(n152) );
  GTECH_NOT U161 ( .A(n158), .Z(n157) );
  GTECH_MUX2 U162 ( .A(n158), .B(n154), .S(n114), .Z(N57) );
  GTECH_NOT U163 ( .A(n159), .Z(n154) );
  GTECH_OR3 U164 ( .A(n113), .B(n112), .C(n156), .Z(n159) );
  GTECH_OAI21 U165 ( .A(n160), .B(n156), .C(n161), .Z(n158) );
  GTECH_MUX2 U166 ( .A(N55), .B(n162), .S(n113), .Z(N56) );
  GTECH_AND_NOT U167 ( .A(n163), .B(n112), .Z(n162) );
  GTECH_NOT U168 ( .A(n161), .Z(N55) );
  GTECH_NAND2 U169 ( .A(n112), .B(n163), .Z(n161) );
  GTECH_NOT U170 ( .A(n156), .Z(n163) );
  GTECH_NAND2 U171 ( .A(n164), .B(n165), .Z(n156) );
  GTECH_NOT U172 ( .A(N74), .Z(n165) );
  GTECH_NAND2 U173 ( .A(n127), .B(n151), .Z(N74) );
  GTECH_NOT U174 ( .A(n166), .Z(n164) );
  GTECH_OAI22 U175 ( .A(n167), .B(n168), .C(n169), .D(n170), .Z(N43) );
  GTECH_OA21 U176 ( .A(ss[6]), .B(n167), .C(n171), .Z(n169) );
  GTECH_NOT U177 ( .A(ss[7]), .Z(n167) );
  GTECH_MUX2 U178 ( .A(n172), .B(n173), .S(ss[6]), .Z(N41) );
  GTECH_NOT U179 ( .A(n168), .Z(n173) );
  GTECH_OAI21 U180 ( .A(n174), .B(n175), .C(n176), .Z(n168) );
  GTECH_NOT U181 ( .A(ss[5]), .Z(n175) );
  GTECH_AND3 U182 ( .A(n176), .B(ss[4]), .C(ss[5]), .Z(n172) );
  GTECH_MUX2 U183 ( .A(n177), .B(N39), .S(ss[5]), .Z(N40) );
  GTECH_AND2 U184 ( .A(n176), .B(ss[4]), .Z(n177) );
  GTECH_NOT U185 ( .A(n178), .Z(N39) );
  GTECH_NAND2 U186 ( .A(n176), .B(n174), .Z(n178) );
  GTECH_NOT U187 ( .A(n170), .Z(n176) );
  GTECH_NAND2 U188 ( .A(n179), .B(n180), .Z(n170) );
  GTECH_NOT U189 ( .A(N58), .Z(n180) );
  GTECH_NAND2 U190 ( .A(n127), .B(n166), .Z(N58) );
  GTECH_NOT U191 ( .A(n181), .Z(n179) );
  GTECH_OAI22 U192 ( .A(n182), .B(n183), .C(n184), .D(n185), .Z(N26) );
  GTECH_MUX2 U193 ( .A(n182), .B(n186), .S(ss[2]), .Z(n185) );
  GTECH_NAND2 U194 ( .A(n187), .B(n182), .Z(n186) );
  GTECH_NAND2 U195 ( .A(n127), .B(n188), .Z(N25) );
  GTECH_MUX2 U196 ( .A(n189), .B(n190), .S(ss[2]), .Z(N24) );
  GTECH_NOT U197 ( .A(n183), .Z(n190) );
  GTECH_NAND2 U198 ( .A(n191), .B(n192), .Z(n183) );
  GTECH_AND2 U199 ( .A(n191), .B(n187), .Z(n189) );
  GTECH_NOT U200 ( .A(n192), .Z(n187) );
  GTECH_NAND2 U201 ( .A(ss[1]), .B(ss[0]), .Z(n192) );
  GTECH_MUX2 U202 ( .A(n193), .B(N22), .S(ss[1]), .Z(N23) );
  GTECH_AND2 U203 ( .A(n191), .B(ss[0]), .Z(n193) );
  GTECH_NOT U204 ( .A(n194), .Z(N22) );
  GTECH_NAND2 U205 ( .A(n191), .B(n195), .Z(n194) );
  GTECH_NOT U206 ( .A(n184), .Z(n191) );
  GTECH_NAND2 U207 ( .A(ena), .B(n196), .Z(n184) );
  GTECH_NOT U208 ( .A(N42), .Z(n196) );
  GTECH_NAND2 U209 ( .A(n127), .B(n181), .Z(N42) );
  GTECH_AND2 U210 ( .A(n197), .B(n9), .Z(N122) );
  GTECH_NOT U211 ( .A(n198), .Z(n197) );
  GTECH_NAND2 U212 ( .A(n127), .B(n198), .Z(N121) );
  GTECH_OR3 U213 ( .A(n134), .B(n199), .C(n128), .Z(n198) );
  GTECH_AND2 U214 ( .A(n200), .B(n201), .Z(N116) );
  GTECH_XOR2 U215 ( .A(n202), .B(n8), .Z(n200) );
  GTECH_OR2 U216 ( .A(n7), .B(n203), .Z(n202) );
  GTECH_OR3 U217 ( .A(reset), .B(n136), .C(n137), .Z(N115) );
  GTECH_NOT U218 ( .A(n135), .Z(n137) );
  GTECH_NAND4 U219 ( .A(n107), .B(n204), .C(n150), .D(n131), .Z(n135) );
  GTECH_NOT U220 ( .A(n4), .Z(n131) );
  GTECH_NOT U221 ( .A(n199), .Z(n204) );
  GTECH_NAND4 U222 ( .A(n7), .B(n6), .C(n8), .D(n205), .Z(n199) );
  GTECH_AND3 U223 ( .A(n106), .B(n206), .C(n5), .Z(n205) );
  GTECH_AND2 U224 ( .A(n207), .B(n201), .Z(N114) );
  GTECH_XOR2 U225 ( .A(n203), .B(n7), .Z(n207) );
  GTECH_NAND2 U226 ( .A(n208), .B(n206), .Z(n203) );
  GTECH_NOT U227 ( .A(n6), .Z(n208) );
  GTECH_AND2 U228 ( .A(n201), .B(n209), .Z(N112) );
  GTECH_XOR2 U229 ( .A(n6), .B(n122), .Z(n209) );
  GTECH_NOT U230 ( .A(n210), .Z(n201) );
  GTECH_OAI21 U231 ( .A(n210), .B(n206), .C(n127), .Z(N110) );
  GTECH_NOT U232 ( .A(n122), .Z(n206) );
  GTECH_NAND2 U233 ( .A(n136), .B(n211), .Z(n210) );
  GTECH_NOT U234 ( .A(n128), .Z(n211) );
  GTECH_NAND2 U235 ( .A(n150), .B(n127), .Z(n128) );
  GTECH_NOT U236 ( .A(reset), .Z(n127) );
  GTECH_NOT U237 ( .A(n212), .Z(n136) );
  GTECH_NAND4 U238 ( .A(n106), .B(n150), .C(n213), .D(n214), .Z(n212) );
  GTECH_NOT U239 ( .A(n5), .Z(n214) );
  GTECH_NOT U240 ( .A(n134), .Z(n213) );
  GTECH_NAND2 U241 ( .A(n4), .B(n132), .Z(n134) );
  GTECH_NOT U242 ( .A(n107), .Z(n132) );
  GTECH_NOT U243 ( .A(n215), .Z(n150) );
  GTECH_OR3 U244 ( .A(n142), .B(n151), .C(n145), .Z(n215) );
  GTECH_NOT U245 ( .A(n110), .Z(n145) );
  GTECH_OR5 U246 ( .A(n112), .B(n111), .C(n166), .D(n160), .E(n155), .Z(n151)
         );
  GTECH_NOT U247 ( .A(n114), .Z(n155) );
  GTECH_NOT U248 ( .A(n113), .Z(n160) );
  GTECH_OR3 U249 ( .A(ss[5]), .B(n171), .C(n181), .Z(n166) );
  GTECH_OR5 U250 ( .A(ss[2]), .B(ss[1]), .C(n188), .D(n195), .E(n182), .Z(n181) );
  GTECH_NOT U251 ( .A(ss[3]), .Z(n182) );
  GTECH_NOT U252 ( .A(ss[0]), .Z(n195) );
  GTECH_NOT U253 ( .A(ena), .Z(n188) );
  GTECH_OR3 U254 ( .A(ss[7]), .B(n174), .C(n216), .Z(n171) );
  GTECH_NOT U255 ( .A(ss[6]), .Z(n216) );
  GTECH_NOT U256 ( .A(ss[4]), .Z(n174) );
  GTECH_OR3 U257 ( .A(n3), .B(n109), .C(n217), .Z(n142) );
  GTECH_NOT U258 ( .A(n108), .Z(n217) );
endmodule

