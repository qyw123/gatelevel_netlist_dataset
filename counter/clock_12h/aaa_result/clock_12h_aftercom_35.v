
module clock_12h ( clk, reset, ena, pm, hh, mm, ss );
  output [7:0] hh;
  output [7:0] mm;
  output [7:0] ss;
  input clk, reset, ena;
  output pm;
  wire   N22, N23, N24, N25, N26, N39, N40, N41, N42, N43, N55, N56, N57, N58,
         N59, N71, N72, N73, N74, N75, N88, N89, N90, N91, N92, N110, N112,
         N114, N115, N116, N121, N122, n4, n5, n6, n7, n8, n9, n10, n86, n111,
         n112, n113, n114, n115, n116, n117, n118, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220;

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
        .Q(mm[0]), .QN(n4) );
  GTECH_FJK1S mm_ones_reg_3_ ( .J(n86), .K(n86), .TI(N59), .TE(N58), .CP(clk), 
        .Q(mm[3]), .QN(n116) );
  GTECH_FJK1S mm_ones_reg_1_ ( .J(n86), .K(n86), .TI(N56), .TE(N58), .CP(clk), 
        .Q(mm[1]), .QN(n118) );
  GTECH_FJK1S mm_ones_reg_2_ ( .J(n86), .K(n86), .TI(N57), .TE(N58), .CP(clk), 
        .Q(mm[2]), .QN(n117) );
  GTECH_FJK1S mm_tens_reg_0_ ( .J(n86), .K(n86), .TI(N71), .TE(N74), .CP(clk), 
        .Q(mm[4]), .QN(n115) );
  GTECH_FJK1S mm_tens_reg_2_ ( .J(n86), .K(n86), .TI(N73), .TE(N74), .CP(clk), 
        .Q(mm[6]), .QN(n113) );
  GTECH_FJK1S mm_tens_reg_1_ ( .J(n86), .K(n86), .TI(N72), .TE(N74), .CP(clk), 
        .Q(mm[5]), .QN(n114) );
  GTECH_FJK1S mm_tens_reg_3_ ( .J(n86), .K(n86), .TI(N75), .TE(N74), .CP(clk), 
        .Q(mm[7]), .QN(n5) );
  GTECH_FJK1S hh_tens_reg_0_ ( .J(n86), .K(n86), .TI(N110), .TE(N115), .CP(clk), .Q(hh[4]), .QN(n125) );
  GTECH_FJK1S hh_ones_reg_0_ ( .J(n86), .K(n86), .TI(N88), .TE(N91), .CP(clk), 
        .Q(hh[0]), .QN(n112) );
  GTECH_FJK1S hh_ones_reg_1_ ( .J(n86), .K(n86), .TI(N89), .TE(N91), .CP(clk), 
        .Q(hh[1]), .QN(n126) );
  GTECH_FJK1S hh_ones_reg_2_ ( .J(n86), .K(n86), .TI(N90), .TE(N91), .CP(clk), 
        .Q(hh[2]), .QN(n6) );
  GTECH_FJK1S hh_ones_reg_3_ ( .J(n86), .K(n86), .TI(N92), .TE(N91), .CP(clk), 
        .Q(hh[3]), .QN(n111) );
  GTECH_FJK1S hh_tens_reg_1_ ( .J(n86), .K(n86), .TI(N112), .TE(N115), .CP(clk), .Q(hh[5]), .QN(n7) );
  GTECH_FJK1S hh_tens_reg_2_ ( .J(n86), .K(n86), .TI(N114), .TE(N115), .CP(clk), .Q(hh[6]), .QN(n8) );
  GTECH_FJK1S hh_tens_reg_3_ ( .J(n86), .K(n86), .TI(N116), .TE(N115), .CP(clk), .Q(hh[7]), .QN(n9) );
  GTECH_FJK1S pm_temp_reg ( .J(n86), .K(n86), .TI(N122), .TE(N121), .CP(clk), 
        .Q(pm), .QN(n10) );
  GTECH_ZERO U135 ( .Z(n86) );
  GTECH_AND2 U136 ( .A(n127), .B(n128), .Z(N92) );
  GTECH_XOR2 U137 ( .A(n129), .B(n111), .Z(n127) );
  GTECH_OR2 U138 ( .A(n6), .B(n130), .Z(n129) );
  GTECH_NAND2 U139 ( .A(n131), .B(n132), .Z(N91) );
  GTECH_AND2 U140 ( .A(n133), .B(n128), .Z(N90) );
  GTECH_XOR2 U141 ( .A(n130), .B(n6), .Z(n133) );
  GTECH_NAND2 U142 ( .A(n134), .B(n135), .Z(n130) );
  GTECH_AO21 U143 ( .A(n128), .B(n136), .C(reset), .Z(N89) );
  GTECH_AO21 U144 ( .A(n112), .B(n134), .C(n137), .Z(n136) );
  GTECH_NOT U145 ( .A(n138), .Z(n128) );
  GTECH_OAI22 U146 ( .A(n132), .B(n139), .C(n135), .D(n138), .Z(N88) );
  GTECH_NAND3 U147 ( .A(n139), .B(n140), .C(n141), .Z(n138) );
  GTECH_OAI22 U148 ( .A(n5), .B(n142), .C(n143), .D(n144), .Z(N75) );
  GTECH_OA21 U149 ( .A(n5), .B(n145), .C(n146), .Z(n143) );
  GTECH_NOT U150 ( .A(n147), .Z(n142) );
  GTECH_MUX2 U151 ( .A(n147), .B(n148), .S(n113), .Z(N73) );
  GTECH_NOR3 U152 ( .A(n115), .B(n114), .C(n144), .Z(n148) );
  GTECH_AO21 U153 ( .A(n149), .B(n114), .C(N71), .Z(n147) );
  GTECH_MUX2 U154 ( .A(N71), .B(n150), .S(n114), .Z(N72) );
  GTECH_AND2 U155 ( .A(n149), .B(n151), .Z(n150) );
  GTECH_NOT U156 ( .A(n152), .Z(N71) );
  GTECH_NAND2 U157 ( .A(n115), .B(n149), .Z(n152) );
  GTECH_NOT U158 ( .A(n144), .Z(n149) );
  GTECH_NAND3 U159 ( .A(n153), .B(n131), .C(n154), .Z(n144) );
  GTECH_OAI22 U160 ( .A(n116), .B(n155), .C(n156), .D(n157), .Z(N59) );
  GTECH_MUX2 U161 ( .A(n158), .B(n159), .S(n116), .Z(n157) );
  GTECH_NAND2 U162 ( .A(n160), .B(n158), .Z(n159) );
  GTECH_MUX2 U163 ( .A(n161), .B(n162), .S(n117), .Z(N57) );
  GTECH_AND2 U164 ( .A(n163), .B(n160), .Z(n162) );
  GTECH_NOT U165 ( .A(n164), .Z(n160) );
  GTECH_NOT U166 ( .A(n155), .Z(n161) );
  GTECH_NAND2 U167 ( .A(n163), .B(n164), .Z(n155) );
  GTECH_NAND2 U168 ( .A(n165), .B(n166), .Z(n164) );
  GTECH_MUX2 U169 ( .A(N55), .B(n167), .S(n118), .Z(N56) );
  GTECH_AND2 U170 ( .A(n163), .B(n166), .Z(n167) );
  GTECH_NOT U171 ( .A(n4), .Z(n166) );
  GTECH_NOT U172 ( .A(n168), .Z(N55) );
  GTECH_NAND2 U173 ( .A(n4), .B(n163), .Z(n168) );
  GTECH_NOT U174 ( .A(n156), .Z(n163) );
  GTECH_NAND2 U175 ( .A(n169), .B(n170), .Z(n156) );
  GTECH_NOT U176 ( .A(N74), .Z(n170) );
  GTECH_NAND2 U177 ( .A(n131), .B(n171), .Z(N74) );
  GTECH_NOT U178 ( .A(n172), .Z(n169) );
  GTECH_OAI2N2 U179 ( .A(n173), .B(n174), .C(n175), .D(ss[7]), .Z(N43) );
  GTECH_OA21 U180 ( .A(n176), .B(ss[6]), .C(n177), .Z(n173) );
  GTECH_MUX2 U181 ( .A(n178), .B(n175), .S(ss[6]), .Z(N41) );
  GTECH_AO21 U182 ( .A(n179), .B(n180), .C(N39), .Z(n175) );
  GTECH_AND3 U183 ( .A(n179), .B(ss[4]), .C(ss[5]), .Z(n178) );
  GTECH_MUX2 U184 ( .A(n181), .B(N39), .S(ss[5]), .Z(N40) );
  GTECH_AND2 U185 ( .A(n179), .B(ss[4]), .Z(n181) );
  GTECH_NOT U186 ( .A(n182), .Z(N39) );
  GTECH_NAND2 U187 ( .A(n179), .B(n183), .Z(n182) );
  GTECH_NOT U188 ( .A(ss[4]), .Z(n183) );
  GTECH_NOT U189 ( .A(n174), .Z(n179) );
  GTECH_NAND2 U190 ( .A(n184), .B(n185), .Z(n174) );
  GTECH_NOT U191 ( .A(N58), .Z(n185) );
  GTECH_NAND2 U192 ( .A(n131), .B(n172), .Z(N58) );
  GTECH_MUX2 U193 ( .A(n186), .B(n187), .S(ss[3]), .Z(N26) );
  GTECH_AO21 U194 ( .A(n188), .B(n189), .C(n190), .Z(n187) );
  GTECH_NOT U195 ( .A(ss[2]), .Z(n189) );
  GTECH_AND2 U196 ( .A(ss[2]), .B(n191), .Z(n186) );
  GTECH_NAND2 U197 ( .A(n131), .B(n192), .Z(N25) );
  GTECH_MUX2 U198 ( .A(n191), .B(n190), .S(ss[2]), .Z(N24) );
  GTECH_AO21 U199 ( .A(n188), .B(n193), .C(N22), .Z(n190) );
  GTECH_NOT U200 ( .A(ss[1]), .Z(n193) );
  GTECH_NOT U201 ( .A(n194), .Z(n191) );
  GTECH_NAND3 U202 ( .A(n188), .B(ss[0]), .C(ss[1]), .Z(n194) );
  GTECH_MUX2 U203 ( .A(n195), .B(N22), .S(ss[1]), .Z(N23) );
  GTECH_AND2 U204 ( .A(n188), .B(ss[0]), .Z(n195) );
  GTECH_NOT U205 ( .A(n196), .Z(N22) );
  GTECH_NAND2 U206 ( .A(n188), .B(n197), .Z(n196) );
  GTECH_NOT U207 ( .A(n198), .Z(n188) );
  GTECH_NAND2 U208 ( .A(ena), .B(n199), .Z(n198) );
  GTECH_NOT U209 ( .A(N42), .Z(n199) );
  GTECH_NAND2 U210 ( .A(n131), .B(n200), .Z(N42) );
  GTECH_AND2 U211 ( .A(n201), .B(n10), .Z(N122) );
  GTECH_NOT U212 ( .A(n202), .Z(n201) );
  GTECH_NAND2 U213 ( .A(n131), .B(n202), .Z(N121) );
  GTECH_NAND3 U214 ( .A(n203), .B(n137), .C(n141), .Z(n202) );
  GTECH_AND2 U215 ( .A(n204), .B(n205), .Z(N116) );
  GTECH_XOR2 U216 ( .A(n206), .B(n9), .Z(n204) );
  GTECH_OR2 U217 ( .A(n8), .B(n207), .Z(n206) );
  GTECH_NAND3 U218 ( .A(n140), .B(n131), .C(n139), .Z(N115) );
  GTECH_NAND4 U219 ( .A(n112), .B(n203), .C(n208), .D(n134), .Z(n139) );
  GTECH_NOT U220 ( .A(n126), .Z(n134) );
  GTECH_AND3 U221 ( .A(n8), .B(n7), .C(n209), .Z(n203) );
  GTECH_AND4 U222 ( .A(n210), .B(n111), .C(n6), .D(n9), .Z(n209) );
  GTECH_AND2 U223 ( .A(n211), .B(n205), .Z(N114) );
  GTECH_XOR2 U224 ( .A(n207), .B(n8), .Z(n211) );
  GTECH_NAND2 U225 ( .A(n212), .B(n210), .Z(n207) );
  GTECH_NOT U226 ( .A(n125), .Z(n210) );
  GTECH_NOT U227 ( .A(n7), .Z(n212) );
  GTECH_AND2 U228 ( .A(n205), .B(n213), .Z(N112) );
  GTECH_XOR2 U229 ( .A(n7), .B(n125), .Z(n213) );
  GTECH_AO21 U230 ( .A(n125), .B(n205), .C(reset), .Z(N110) );
  GTECH_NOT U231 ( .A(n214), .Z(n205) );
  GTECH_NAND2 U232 ( .A(n215), .B(n141), .Z(n214) );
  GTECH_NOT U233 ( .A(n132), .Z(n141) );
  GTECH_NAND2 U234 ( .A(n208), .B(n131), .Z(n132) );
  GTECH_NOT U235 ( .A(reset), .Z(n131) );
  GTECH_NOT U236 ( .A(n140), .Z(n215) );
  GTECH_NAND4 U237 ( .A(n6), .B(n208), .C(n137), .D(n216), .Z(n140) );
  GTECH_NOT U238 ( .A(n111), .Z(n216) );
  GTECH_NOT U239 ( .A(n217), .Z(n137) );
  GTECH_NAND2 U240 ( .A(n126), .B(n135), .Z(n217) );
  GTECH_NOT U241 ( .A(n112), .Z(n135) );
  GTECH_NOT U242 ( .A(n153), .Z(n208) );
  GTECH_NAND3 U243 ( .A(n154), .B(n218), .C(n114), .Z(n153) );
  GTECH_NOT U244 ( .A(n146), .Z(n218) );
  GTECH_NAND3 U245 ( .A(n145), .B(n151), .C(n5), .Z(n146) );
  GTECH_NOT U246 ( .A(n115), .Z(n151) );
  GTECH_NOT U247 ( .A(n113), .Z(n145) );
  GTECH_NOT U248 ( .A(n171), .Z(n154) );
  GTECH_OR5 U249 ( .A(n4), .B(n116), .C(n172), .D(n158), .E(n165), .Z(n171) );
  GTECH_NOT U250 ( .A(n118), .Z(n165) );
  GTECH_NOT U251 ( .A(n117), .Z(n158) );
  GTECH_NAND3 U252 ( .A(n219), .B(n180), .C(n184), .Z(n172) );
  GTECH_NOT U253 ( .A(n200), .Z(n184) );
  GTECH_OR5 U254 ( .A(ss[2]), .B(ss[1]), .C(n192), .D(n197), .E(n220), .Z(n200) );
  GTECH_NOT U255 ( .A(ss[3]), .Z(n220) );
  GTECH_NOT U256 ( .A(ss[0]), .Z(n197) );
  GTECH_NOT U257 ( .A(ena), .Z(n192) );
  GTECH_NOT U258 ( .A(ss[5]), .Z(n180) );
  GTECH_NOT U259 ( .A(n177), .Z(n219) );
  GTECH_NAND3 U260 ( .A(ss[4]), .B(n176), .C(ss[6]), .Z(n177) );
  GTECH_NOT U261 ( .A(ss[7]), .Z(n176) );
endmodule

