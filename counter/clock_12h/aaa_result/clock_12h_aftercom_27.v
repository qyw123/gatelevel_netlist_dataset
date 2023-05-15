
module clock_12h ( clk, reset, ena, pm, hh, mm, ss );
  output [7:0] hh;
  output [7:0] mm;
  output [7:0] ss;
  input clk, reset, ena;
  output pm;
  wire   N22, N23, N24, N25, N26, N39, N40, N41, N42, N43, N55, N56, N57, N58,
         N59, N71, N72, N73, N74, N75, N88, N89, N90, N91, N92, N110, N112,
         N114, N115, N116, N121, N122, n3, n4, n5, n6, n7, n8, n9, n85, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220;

  GTECH_FJK1S ss_ones_reg_0_ ( .J(n85), .K(n85), .TI(N22), .TE(N25), .CP(clk), 
        .Q(ss[0]) );
  GTECH_FJK1S ss_ones_reg_1_ ( .J(n85), .K(n85), .TI(N23), .TE(N25), .CP(clk), 
        .Q(ss[1]) );
  GTECH_FJK1S ss_ones_reg_2_ ( .J(n85), .K(n85), .TI(N24), .TE(N25), .CP(clk), 
        .Q(ss[2]) );
  GTECH_FJK1S ss_ones_reg_3_ ( .J(n85), .K(n85), .TI(N26), .TE(N25), .CP(clk), 
        .Q(ss[3]) );
  GTECH_FJK1S ss_tens_reg_0_ ( .J(n85), .K(n85), .TI(N39), .TE(N42), .CP(clk), 
        .Q(ss[4]) );
  GTECH_FJK1S ss_tens_reg_1_ ( .J(n85), .K(n85), .TI(N40), .TE(N42), .CP(clk), 
        .Q(ss[5]) );
  GTECH_FJK1S ss_tens_reg_2_ ( .J(n85), .K(n85), .TI(N41), .TE(N42), .CP(clk), 
        .Q(ss[6]) );
  GTECH_FJK1S ss_tens_reg_3_ ( .J(n85), .K(n85), .TI(N43), .TE(N42), .CP(clk), 
        .Q(ss[7]) );
  GTECH_FJK1S mm_ones_reg_0_ ( .J(n85), .K(n85), .TI(N55), .TE(N58), .CP(clk), 
        .Q(mm[0]), .QN(n117) );
  GTECH_FJK1S mm_ones_reg_1_ ( .J(n85), .K(n85), .TI(N56), .TE(N58), .CP(clk), 
        .Q(mm[1]), .QN(n118) );
  GTECH_FJK1S mm_ones_reg_2_ ( .J(n85), .K(n85), .TI(N57), .TE(N58), .CP(clk), 
        .Q(mm[2]), .QN(n119) );
  GTECH_FJK1S mm_ones_reg_3_ ( .J(n85), .K(n85), .TI(N59), .TE(N58), .CP(clk), 
        .Q(mm[3]), .QN(n116) );
  GTECH_FJK1S mm_tens_reg_0_ ( .J(n85), .K(n85), .TI(N71), .TE(N74), .CP(clk), 
        .Q(mm[4]), .QN(n115) );
  GTECH_FJK1S mm_tens_reg_2_ ( .J(n85), .K(n85), .TI(N73), .TE(N74), .CP(clk), 
        .Q(mm[6]), .QN(n113) );
  GTECH_FJK1S mm_tens_reg_1_ ( .J(n85), .K(n85), .TI(N72), .TE(N74), .CP(clk), 
        .Q(mm[5]), .QN(n114) );
  GTECH_FJK1S mm_tens_reg_3_ ( .J(n85), .K(n85), .TI(N75), .TE(N74), .CP(clk), 
        .Q(mm[7]), .QN(n3) );
  GTECH_FJK1S hh_tens_reg_0_ ( .J(n85), .K(n85), .TI(N110), .TE(N115), .CP(clk), .Q(hh[4]), .QN(n4) );
  GTECH_FJK1S hh_tens_reg_2_ ( .J(n85), .K(n85), .TI(N114), .TE(N115), .CP(clk), .Q(hh[6]), .QN(n5) );
  GTECH_FJK1S hh_tens_reg_3_ ( .J(n85), .K(n85), .TI(N116), .TE(N115), .CP(clk), .Q(hh[7]), .QN(n6) );
  GTECH_FJK1S hh_ones_reg_0_ ( .J(n85), .K(n85), .TI(N88), .TE(N91), .CP(clk), 
        .Q(hh[0]), .QN(n7) );
  GTECH_FJK1S hh_ones_reg_1_ ( .J(n85), .K(n85), .TI(N89), .TE(N91), .CP(clk), 
        .Q(hh[1]), .QN(n112) );
  GTECH_FJK1S hh_ones_reg_2_ ( .J(n85), .K(n85), .TI(N90), .TE(N91), .CP(clk), 
        .Q(hh[2]), .QN(n111) );
  GTECH_FJK1S hh_ones_reg_3_ ( .J(n85), .K(n85), .TI(N92), .TE(N91), .CP(clk), 
        .Q(hh[3]), .QN(n110) );
  GTECH_FJK1S hh_tens_reg_1_ ( .J(n85), .K(n85), .TI(N112), .TE(N115), .CP(clk), .Q(hh[5]), .QN(n8) );
  GTECH_FJK1S pm_temp_reg ( .J(n85), .K(n85), .TI(N122), .TE(N121), .CP(clk), 
        .Q(pm), .QN(n9) );
  GTECH_ZERO U135 ( .Z(n85) );
  GTECH_AND2 U136 ( .A(n127), .B(n128), .Z(N92) );
  GTECH_XOR2 U137 ( .A(n129), .B(n110), .Z(n127) );
  GTECH_OR2 U138 ( .A(n111), .B(n130), .Z(n129) );
  GTECH_NAND2 U139 ( .A(n131), .B(n132), .Z(N91) );
  GTECH_AND2 U140 ( .A(n133), .B(n128), .Z(N90) );
  GTECH_NOT U141 ( .A(n134), .Z(n128) );
  GTECH_XOR2 U142 ( .A(n130), .B(n111), .Z(n133) );
  GTECH_NAND2 U143 ( .A(n135), .B(n136), .Z(n130) );
  GTECH_OAI21 U144 ( .A(n137), .B(n134), .C(n131), .Z(N89) );
  GTECH_OA21 U145 ( .A(n112), .B(n135), .C(n138), .Z(n137) );
  GTECH_OAI2N2 U146 ( .A(n135), .B(n134), .C(n139), .D(n140), .Z(N88) );
  GTECH_NOT U147 ( .A(n141), .Z(n139) );
  GTECH_NAND3 U148 ( .A(n141), .B(n142), .C(n140), .Z(n134) );
  GTECH_OAI2N2 U149 ( .A(n143), .B(n144), .C(n145), .D(n146), .Z(N75) );
  GTECH_NOT U150 ( .A(n3), .Z(n146) );
  GTECH_OA21 U151 ( .A(n3), .B(n147), .C(n148), .Z(n143) );
  GTECH_MUX2 U152 ( .A(n145), .B(n149), .S(n113), .Z(N73) );
  GTECH_NOR3 U153 ( .A(n115), .B(n114), .C(n144), .Z(n149) );
  GTECH_NOT U154 ( .A(n150), .Z(n145) );
  GTECH_OAI21 U155 ( .A(n115), .B(n114), .C(n151), .Z(n150) );
  GTECH_MUX2 U156 ( .A(N71), .B(n152), .S(n114), .Z(N72) );
  GTECH_AND2 U157 ( .A(n151), .B(n153), .Z(n152) );
  GTECH_NOT U158 ( .A(n154), .Z(N71) );
  GTECH_NAND2 U159 ( .A(n115), .B(n151), .Z(n154) );
  GTECH_NOT U160 ( .A(n144), .Z(n151) );
  GTECH_NAND3 U161 ( .A(n155), .B(n131), .C(n156), .Z(n144) );
  GTECH_MUX2 U162 ( .A(n157), .B(n158), .S(n116), .Z(N59) );
  GTECH_AND2 U163 ( .A(n159), .B(n160), .Z(n158) );
  GTECH_OAI21 U164 ( .A(n160), .B(n161), .C(n162), .Z(n157) );
  GTECH_NOT U165 ( .A(n163), .Z(n162) );
  GTECH_MUX2 U166 ( .A(n163), .B(n159), .S(n119), .Z(N57) );
  GTECH_NOT U167 ( .A(n164), .Z(n159) );
  GTECH_NAND3 U168 ( .A(n165), .B(n166), .C(n167), .Z(n164) );
  GTECH_OAI21 U169 ( .A(n166), .B(n161), .C(n168), .Z(n163) );
  GTECH_MUX2 U170 ( .A(N55), .B(n169), .S(n118), .Z(N56) );
  GTECH_AND2 U171 ( .A(n167), .B(n165), .Z(n169) );
  GTECH_NOT U172 ( .A(n117), .Z(n165) );
  GTECH_NOT U173 ( .A(n168), .Z(N55) );
  GTECH_NAND2 U174 ( .A(n117), .B(n167), .Z(n168) );
  GTECH_NOT U175 ( .A(n161), .Z(n167) );
  GTECH_NAND2 U176 ( .A(n170), .B(n171), .Z(n161) );
  GTECH_NOT U177 ( .A(N74), .Z(n171) );
  GTECH_NAND2 U178 ( .A(n131), .B(n172), .Z(N74) );
  GTECH_NOT U179 ( .A(n173), .Z(n170) );
  GTECH_OAI2N2 U180 ( .A(n174), .B(n175), .C(ss[7]), .D(n176), .Z(N43) );
  GTECH_OA21 U181 ( .A(ss[6]), .B(n177), .C(n178), .Z(n174) );
  GTECH_MUX2 U182 ( .A(n179), .B(n176), .S(ss[6]), .Z(N41) );
  GTECH_OAI21 U183 ( .A(ss[5]), .B(n175), .C(n180), .Z(n176) );
  GTECH_AND3 U184 ( .A(n181), .B(ss[4]), .C(ss[5]), .Z(n179) );
  GTECH_MUX2 U185 ( .A(n182), .B(N39), .S(ss[5]), .Z(N40) );
  GTECH_AND2 U186 ( .A(n181), .B(ss[4]), .Z(n182) );
  GTECH_NOT U187 ( .A(n180), .Z(N39) );
  GTECH_NAND2 U188 ( .A(n181), .B(n183), .Z(n180) );
  GTECH_NOT U189 ( .A(ss[4]), .Z(n183) );
  GTECH_NOT U190 ( .A(n175), .Z(n181) );
  GTECH_NAND2 U191 ( .A(n184), .B(n185), .Z(n175) );
  GTECH_NOT U192 ( .A(N58), .Z(n185) );
  GTECH_NAND2 U193 ( .A(n131), .B(n173), .Z(N58) );
  GTECH_MUX2 U194 ( .A(n186), .B(n187), .S(ss[3]), .Z(N26) );
  GTECH_OAI21 U195 ( .A(ss[2]), .B(n188), .C(n189), .Z(n187) );
  GTECH_NOT U196 ( .A(n190), .Z(n189) );
  GTECH_AND2 U197 ( .A(ss[2]), .B(n191), .Z(n186) );
  GTECH_NAND2 U198 ( .A(n131), .B(n192), .Z(N25) );
  GTECH_MUX2 U199 ( .A(n191), .B(n190), .S(ss[2]), .Z(N24) );
  GTECH_OAI21 U200 ( .A(ss[1]), .B(n188), .C(n193), .Z(n190) );
  GTECH_NOT U201 ( .A(n194), .Z(n191) );
  GTECH_NAND3 U202 ( .A(n195), .B(ss[0]), .C(ss[1]), .Z(n194) );
  GTECH_MUX2 U203 ( .A(n196), .B(N22), .S(ss[1]), .Z(N23) );
  GTECH_AND2 U204 ( .A(n195), .B(ss[0]), .Z(n196) );
  GTECH_NOT U205 ( .A(n193), .Z(N22) );
  GTECH_NAND2 U206 ( .A(n195), .B(n197), .Z(n193) );
  GTECH_NOT U207 ( .A(n188), .Z(n195) );
  GTECH_NAND2 U208 ( .A(ena), .B(n198), .Z(n188) );
  GTECH_NOT U209 ( .A(N42), .Z(n198) );
  GTECH_NAND2 U210 ( .A(n131), .B(n199), .Z(N42) );
  GTECH_AND2 U211 ( .A(n200), .B(n9), .Z(N122) );
  GTECH_NOT U212 ( .A(n201), .Z(n200) );
  GTECH_NAND2 U213 ( .A(n131), .B(n201), .Z(N121) );
  GTECH_NAND3 U214 ( .A(n202), .B(n203), .C(n140), .Z(n201) );
  GTECH_AND2 U215 ( .A(n204), .B(n205), .Z(N116) );
  GTECH_XOR2 U216 ( .A(n206), .B(n6), .Z(n204) );
  GTECH_OR2 U217 ( .A(n5), .B(n207), .Z(n206) );
  GTECH_NAND3 U218 ( .A(n142), .B(n131), .C(n141), .Z(N115) );
  GTECH_NAND4 U219 ( .A(n7), .B(n202), .C(n208), .D(n136), .Z(n141) );
  GTECH_NOT U220 ( .A(n112), .Z(n136) );
  GTECH_AND3 U221 ( .A(n6), .B(n5), .C(n209), .Z(n202) );
  GTECH_AND4 U222 ( .A(n210), .B(n110), .C(n111), .D(n8), .Z(n209) );
  GTECH_AND2 U223 ( .A(n211), .B(n205), .Z(N114) );
  GTECH_XOR2 U224 ( .A(n207), .B(n5), .Z(n211) );
  GTECH_NAND2 U225 ( .A(n212), .B(n210), .Z(n207) );
  GTECH_NOT U226 ( .A(n8), .Z(n212) );
  GTECH_AND2 U227 ( .A(n205), .B(n213), .Z(N112) );
  GTECH_XOR2 U228 ( .A(n8), .B(n4), .Z(n213) );
  GTECH_NOT U229 ( .A(n214), .Z(n205) );
  GTECH_OAI21 U230 ( .A(n214), .B(n210), .C(n131), .Z(N110) );
  GTECH_NOT U231 ( .A(n4), .Z(n210) );
  GTECH_NAND2 U232 ( .A(n215), .B(n140), .Z(n214) );
  GTECH_NOT U233 ( .A(n132), .Z(n140) );
  GTECH_NAND2 U234 ( .A(n208), .B(n131), .Z(n132) );
  GTECH_NOT U235 ( .A(reset), .Z(n131) );
  GTECH_NOT U236 ( .A(n142), .Z(n215) );
  GTECH_NAND4 U237 ( .A(n111), .B(n208), .C(n203), .D(n216), .Z(n142) );
  GTECH_NOT U238 ( .A(n110), .Z(n216) );
  GTECH_NOT U239 ( .A(n138), .Z(n203) );
  GTECH_NAND2 U240 ( .A(n112), .B(n135), .Z(n138) );
  GTECH_NOT U241 ( .A(n7), .Z(n135) );
  GTECH_NOT U242 ( .A(n155), .Z(n208) );
  GTECH_NAND3 U243 ( .A(n156), .B(n217), .C(n114), .Z(n155) );
  GTECH_NOT U244 ( .A(n148), .Z(n217) );
  GTECH_NAND3 U245 ( .A(n147), .B(n153), .C(n3), .Z(n148) );
  GTECH_NOT U246 ( .A(n115), .Z(n153) );
  GTECH_NOT U247 ( .A(n113), .Z(n147) );
  GTECH_NOT U248 ( .A(n172), .Z(n156) );
  GTECH_OR5 U249 ( .A(n117), .B(n116), .C(n173), .D(n166), .E(n160), .Z(n172)
         );
  GTECH_NOT U250 ( .A(n119), .Z(n160) );
  GTECH_NOT U251 ( .A(n118), .Z(n166) );
  GTECH_NAND3 U252 ( .A(n218), .B(n219), .C(n184), .Z(n173) );
  GTECH_NOT U253 ( .A(n199), .Z(n184) );
  GTECH_OR5 U254 ( .A(ss[2]), .B(ss[1]), .C(n192), .D(n197), .E(n220), .Z(n199) );
  GTECH_NOT U255 ( .A(ss[3]), .Z(n220) );
  GTECH_NOT U256 ( .A(ss[0]), .Z(n197) );
  GTECH_NOT U257 ( .A(ena), .Z(n192) );
  GTECH_NOT U258 ( .A(ss[5]), .Z(n219) );
  GTECH_NOT U259 ( .A(n178), .Z(n218) );
  GTECH_NAND3 U260 ( .A(ss[4]), .B(n177), .C(ss[6]), .Z(n178) );
  GTECH_NOT U261 ( .A(ss[7]), .Z(n177) );
endmodule

