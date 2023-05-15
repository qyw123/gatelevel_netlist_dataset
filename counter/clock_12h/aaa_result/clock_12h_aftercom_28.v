
module clock_12h ( clk, reset, ena, pm, hh, mm, ss );
  output [7:0] hh;
  output [7:0] mm;
  output [7:0] ss;
  input clk, reset, ena;
  output pm;
  wire   N22, N23, N24, N25, N26, N39, N40, N41, N42, N43, N55, N56, N57, N58,
         N59, N71, N72, N73, N74, N75, N88, N89, N90, N91, N92, N110, N112,
         N114, N115, N116, N121, N122, n3, n4, n5, n6, n7, n8, n9, n86, n111,
         n112, n113, n114, n115, n116, n117, n118, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218;

  GTECH_FJK1S ss_ones_reg_0_ ( .J(n86), .K(n86), .TI(N22), .TE(N25), .CP(clk), 
        .Q(ss[0]) );
  GTECH_FJK1S ss_ones_reg_3_ ( .J(n86), .K(n86), .TI(N26), .TE(N25), .CP(clk), 
        .Q(ss[3]) );
  GTECH_FJK1S ss_ones_reg_1_ ( .J(n86), .K(n86), .TI(N23), .TE(N25), .CP(clk), 
        .Q(ss[1]) );
  GTECH_FJK1S ss_ones_reg_2_ ( .J(n86), .K(n86), .TI(N24), .TE(N25), .CP(clk), 
        .Q(ss[2]) );
  GTECH_FJK1S ss_tens_reg_0_ ( .J(n86), .K(n86), .TI(N39), .TE(N42), .CP(clk), 
        .Q(ss[4]) );
  GTECH_FJK1S ss_tens_reg_2_ ( .J(n86), .K(n86), .TI(N41), .TE(N42), .CP(clk), 
        .Q(ss[6]) );
  GTECH_FJK1S ss_tens_reg_1_ ( .J(n86), .K(n86), .TI(N40), .TE(N42), .CP(clk), 
        .Q(ss[5]) );
  GTECH_FJK1S ss_tens_reg_3_ ( .J(n86), .K(n86), .TI(N43), .TE(N42), .CP(clk), 
        .Q(ss[7]) );
  GTECH_FJK1S mm_ones_reg_0_ ( .J(n86), .K(n86), .TI(N55), .TE(N58), .CP(clk), 
        .Q(mm[0]), .QN(n116) );
  GTECH_FJK1S mm_ones_reg_2_ ( .J(n86), .K(n86), .TI(N57), .TE(N58), .CP(clk), 
        .Q(mm[2]), .QN(n118) );
  GTECH_FJK1S mm_ones_reg_3_ ( .J(n86), .K(n86), .TI(N59), .TE(N58), .CP(clk), 
        .Q(mm[3]), .QN(n115) );
  GTECH_FJK1S mm_ones_reg_1_ ( .J(n86), .K(n86), .TI(N56), .TE(N58), .CP(clk), 
        .Q(mm[1]), .QN(n117) );
  GTECH_FJK1S mm_tens_reg_0_ ( .J(n86), .K(n86), .TI(N71), .TE(N74), .CP(clk), 
        .Q(mm[4]), .QN(n114) );
  GTECH_FJK1S mm_tens_reg_2_ ( .J(n86), .K(n86), .TI(N73), .TE(N74), .CP(clk), 
        .Q(mm[6]), .QN(n112) );
  GTECH_FJK1S mm_tens_reg_1_ ( .J(n86), .K(n86), .TI(N72), .TE(N74), .CP(clk), 
        .Q(mm[5]), .QN(n113) );
  GTECH_FJK1S mm_tens_reg_3_ ( .J(n86), .K(n86), .TI(N75), .TE(N74), .CP(clk), 
        .Q(mm[7]), .QN(n3) );
  GTECH_FJK1S hh_tens_reg_0_ ( .J(n86), .K(n86), .TI(N110), .TE(N115), .CP(clk), .Q(hh[4]), .QN(n4) );
  GTECH_FJK1S hh_tens_reg_2_ ( .J(n86), .K(n86), .TI(N114), .TE(N115), .CP(clk), .Q(hh[6]), .QN(n5) );
  GTECH_FJK1S hh_tens_reg_3_ ( .J(n86), .K(n86), .TI(N116), .TE(N115), .CP(clk), .Q(hh[7]), .QN(n6) );
  GTECH_FJK1S hh_ones_reg_0_ ( .J(n86), .K(n86), .TI(N88), .TE(N91), .CP(clk), 
        .Q(hh[0]), .QN(n7) );
  GTECH_FJK1S hh_ones_reg_1_ ( .J(n86), .K(n86), .TI(N89), .TE(N91), .CP(clk), 
        .Q(hh[1]), .QN(n111) );
  GTECH_FJK1S hh_ones_reg_2_ ( .J(n86), .K(n86), .TI(N90), .TE(N91), .CP(clk), 
        .Q(hh[2]), .QN(n127) );
  GTECH_FJK1S hh_ones_reg_3_ ( .J(n86), .K(n86), .TI(N92), .TE(N91), .CP(clk), 
        .Q(hh[3]), .QN(n126) );
  GTECH_FJK1S hh_tens_reg_1_ ( .J(n86), .K(n86), .TI(N112), .TE(N115), .CP(clk), .Q(hh[5]), .QN(n8) );
  GTECH_FJK1S pm_temp_reg ( .J(n86), .K(n86), .TI(N122), .TE(N121), .CP(clk), 
        .Q(pm), .QN(n9) );
  GTECH_ZERO U136 ( .Z(n86) );
  GTECH_AND2 U137 ( .A(n128), .B(n129), .Z(N92) );
  GTECH_XOR2 U138 ( .A(n130), .B(n126), .Z(n128) );
  GTECH_OR2 U139 ( .A(n131), .B(n127), .Z(n130) );
  GTECH_OR_NOT U140 ( .A(n132), .B(n133), .Z(N91) );
  GTECH_AND2 U141 ( .A(n134), .B(n129), .Z(N90) );
  GTECH_NOT U142 ( .A(n135), .Z(n129) );
  GTECH_XOR2 U143 ( .A(n131), .B(n127), .Z(n134) );
  GTECH_OR_NOT U144 ( .A(n111), .B(n136), .Z(n131) );
  GTECH_OAI21 U145 ( .A(n137), .B(n135), .C(n133), .Z(N89) );
  GTECH_XOR2 U146 ( .A(n138), .B(n7), .Z(n137) );
  GTECH_OAI22 U147 ( .A(n139), .B(n140), .C(n136), .D(n135), .Z(N88) );
  GTECH_NAND3 U148 ( .A(n140), .B(n141), .C(n132), .Z(n135) );
  GTECH_NOT U149 ( .A(n139), .Z(n132) );
  GTECH_OAI22 U150 ( .A(n3), .B(n142), .C(n143), .D(n144), .Z(N75) );
  GTECH_OA21 U151 ( .A(n3), .B(n145), .C(n146), .Z(n143) );
  GTECH_NOT U152 ( .A(n147), .Z(N73) );
  GTECH_MUX2 U153 ( .A(n142), .B(n148), .S(n112), .Z(n147) );
  GTECH_OR3 U154 ( .A(n113), .B(n144), .C(n114), .Z(n148) );
  GTECH_OAI21 U155 ( .A(n114), .B(n113), .C(n149), .Z(n142) );
  GTECH_MUX2 U156 ( .A(N71), .B(n150), .S(n113), .Z(N72) );
  GTECH_AND2 U157 ( .A(n149), .B(n151), .Z(n150) );
  GTECH_NOT U158 ( .A(n144), .Z(n149) );
  GTECH_NOT U159 ( .A(n152), .Z(N71) );
  GTECH_OR_NOT U160 ( .A(n144), .B(n114), .Z(n152) );
  GTECH_NAND3 U161 ( .A(n153), .B(n133), .C(n154), .Z(n144) );
  GTECH_MUX2 U162 ( .A(n155), .B(n156), .S(n115), .Z(N59) );
  GTECH_AND2 U163 ( .A(n157), .B(n158), .Z(n156) );
  GTECH_OAI21 U164 ( .A(n158), .B(n159), .C(n160), .Z(n155) );
  GTECH_NOT U165 ( .A(n161), .Z(n160) );
  GTECH_MUX2 U166 ( .A(n161), .B(n157), .S(n118), .Z(N57) );
  GTECH_NOT U167 ( .A(n162), .Z(n157) );
  GTECH_NAND3 U168 ( .A(n163), .B(n164), .C(n165), .Z(n162) );
  GTECH_OAI21 U169 ( .A(n164), .B(n159), .C(n166), .Z(n161) );
  GTECH_MUX2 U170 ( .A(N55), .B(n167), .S(n117), .Z(N56) );
  GTECH_AND2 U171 ( .A(n165), .B(n163), .Z(n167) );
  GTECH_NOT U172 ( .A(n116), .Z(n163) );
  GTECH_NOT U173 ( .A(n159), .Z(n165) );
  GTECH_NOT U174 ( .A(n166), .Z(N55) );
  GTECH_OR_NOT U175 ( .A(n159), .B(n116), .Z(n166) );
  GTECH_OR_NOT U176 ( .A(N74), .B(n168), .Z(n159) );
  GTECH_OR_NOT U177 ( .A(n154), .B(n133), .Z(N74) );
  GTECH_OAI22 U178 ( .A(n169), .B(n170), .C(n171), .D(n172), .Z(N43) );
  GTECH_OA21 U179 ( .A(ss[6]), .B(n169), .C(n173), .Z(n171) );
  GTECH_MUX2 U180 ( .A(n174), .B(n175), .S(ss[6]), .Z(N41) );
  GTECH_NOT U181 ( .A(n170), .Z(n175) );
  GTECH_OAI21 U182 ( .A(n176), .B(n177), .C(n178), .Z(n170) );
  GTECH_NOT U183 ( .A(ss[4]), .Z(n176) );
  GTECH_AND3 U184 ( .A(n178), .B(ss[4]), .C(ss[5]), .Z(n174) );
  GTECH_MUX2 U185 ( .A(n179), .B(N39), .S(ss[5]), .Z(N40) );
  GTECH_AND2 U186 ( .A(n178), .B(ss[4]), .Z(n179) );
  GTECH_NOT U187 ( .A(n180), .Z(N39) );
  GTECH_OR_NOT U188 ( .A(ss[4]), .B(n178), .Z(n180) );
  GTECH_NOT U189 ( .A(n172), .Z(n178) );
  GTECH_OR_NOT U190 ( .A(N58), .B(n181), .Z(n172) );
  GTECH_OR_NOT U191 ( .A(n168), .B(n133), .Z(N58) );
  GTECH_NOT U192 ( .A(n182), .Z(n168) );
  GTECH_OAI22 U193 ( .A(n183), .B(n184), .C(n185), .D(n186), .Z(N26) );
  GTECH_MUX2 U194 ( .A(n183), .B(n187), .S(ss[2]), .Z(n186) );
  GTECH_OR_NOT U195 ( .A(ss[3]), .B(n188), .Z(n187) );
  GTECH_OR_NOT U196 ( .A(ena), .B(n133), .Z(N25) );
  GTECH_MUX2 U197 ( .A(n189), .B(n190), .S(ss[2]), .Z(N24) );
  GTECH_NOT U198 ( .A(n184), .Z(n190) );
  GTECH_OR_NOT U199 ( .A(n188), .B(n191), .Z(n184) );
  GTECH_AND2 U200 ( .A(n191), .B(n188), .Z(n189) );
  GTECH_NOT U201 ( .A(n192), .Z(n188) );
  GTECH_OR_NOT U202 ( .A(n193), .B(ss[1]), .Z(n192) );
  GTECH_MUX2 U203 ( .A(n194), .B(N22), .S(ss[1]), .Z(N23) );
  GTECH_AND2 U204 ( .A(n191), .B(ss[0]), .Z(n194) );
  GTECH_NOT U205 ( .A(n195), .Z(N22) );
  GTECH_OR_NOT U206 ( .A(ss[0]), .B(n191), .Z(n195) );
  GTECH_NOT U207 ( .A(n185), .Z(n191) );
  GTECH_OR_NOT U208 ( .A(N42), .B(ena), .Z(n185) );
  GTECH_OR_NOT U209 ( .A(n181), .B(n133), .Z(N42) );
  GTECH_AND2 U210 ( .A(n196), .B(n9), .Z(N122) );
  GTECH_OR_NOT U211 ( .A(n196), .B(n133), .Z(N121) );
  GTECH_NOR5 U212 ( .A(n197), .B(n139), .C(n198), .D(n199), .E(n200), .Z(n196)
         );
  GTECH_OR5 U213 ( .A(n201), .B(n202), .C(n138), .D(n7), .E(n4), .Z(n200) );
  GTECH_AND2 U214 ( .A(n203), .B(n204), .Z(N116) );
  GTECH_XOR2 U215 ( .A(n205), .B(n6), .Z(n203) );
  GTECH_OR2 U216 ( .A(n206), .B(n5), .Z(n205) );
  GTECH_NAND3 U217 ( .A(n141), .B(n133), .C(n140), .Z(N115) );
  GTECH_OR5 U218 ( .A(n136), .B(n197), .C(n198), .D(n199), .E(n207), .Z(n140)
         );
  GTECH_OR5 U219 ( .A(n4), .B(n111), .C(n153), .D(n201), .E(n202), .Z(n207) );
  GTECH_NOT U220 ( .A(n126), .Z(n202) );
  GTECH_NOT U221 ( .A(n6), .Z(n199) );
  GTECH_NOT U222 ( .A(n5), .Z(n198) );
  GTECH_NOT U223 ( .A(n7), .Z(n136) );
  GTECH_AND2 U224 ( .A(n208), .B(n204), .Z(N114) );
  GTECH_XOR2 U225 ( .A(n206), .B(n5), .Z(n208) );
  GTECH_OR_NOT U226 ( .A(n4), .B(n197), .Z(n206) );
  GTECH_NOT U227 ( .A(n8), .Z(n197) );
  GTECH_AND2 U228 ( .A(n204), .B(n209), .Z(N112) );
  GTECH_XOR2 U229 ( .A(n8), .B(n4), .Z(n209) );
  GTECH_NOT U230 ( .A(n210), .Z(n204) );
  GTECH_OAI21 U231 ( .A(n210), .B(n211), .C(n133), .Z(N110) );
  GTECH_NOT U232 ( .A(reset), .Z(n133) );
  GTECH_NOT U233 ( .A(n4), .Z(n211) );
  GTECH_OR_NOT U234 ( .A(n139), .B(n212), .Z(n210) );
  GTECH_NOT U235 ( .A(n141), .Z(n212) );
  GTECH_OR5 U236 ( .A(n7), .B(n126), .C(n153), .D(n138), .E(n201), .Z(n141) );
  GTECH_NOT U237 ( .A(n127), .Z(n201) );
  GTECH_NOT U238 ( .A(n111), .Z(n138) );
  GTECH_OR_NOT U239 ( .A(reset), .B(n213), .Z(n139) );
  GTECH_NOT U240 ( .A(n153), .Z(n213) );
  GTECH_NAND3 U241 ( .A(n154), .B(n214), .C(n113), .Z(n153) );
  GTECH_NOT U242 ( .A(n146), .Z(n214) );
  GTECH_NAND3 U243 ( .A(n145), .B(n151), .C(n3), .Z(n146) );
  GTECH_NOT U244 ( .A(n114), .Z(n151) );
  GTECH_NOT U245 ( .A(n112), .Z(n145) );
  GTECH_NOT U246 ( .A(n215), .Z(n154) );
  GTECH_OR5 U247 ( .A(n116), .B(n115), .C(n182), .D(n164), .E(n158), .Z(n215)
         );
  GTECH_NOT U248 ( .A(n118), .Z(n158) );
  GTECH_NOT U249 ( .A(n117), .Z(n164) );
  GTECH_NAND3 U250 ( .A(n216), .B(n177), .C(n181), .Z(n182) );
  GTECH_NOT U251 ( .A(n217), .Z(n181) );
  GTECH_OR5 U252 ( .A(ss[2]), .B(ss[1]), .C(n218), .D(n193), .E(n183), .Z(n217) );
  GTECH_NOT U253 ( .A(ss[3]), .Z(n183) );
  GTECH_NOT U254 ( .A(ss[0]), .Z(n193) );
  GTECH_NOT U255 ( .A(ena), .Z(n218) );
  GTECH_NOT U256 ( .A(ss[5]), .Z(n177) );
  GTECH_NOT U257 ( .A(n173), .Z(n216) );
  GTECH_NAND3 U258 ( .A(ss[4]), .B(n169), .C(ss[6]), .Z(n173) );
  GTECH_NOT U259 ( .A(ss[7]), .Z(n169) );
endmodule

