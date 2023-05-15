
module clock_12h ( clk, reset, ena, pm, hh, mm, ss );
  output [7:0] hh;
  output [7:0] mm;
  output [7:0] ss;
  input clk, reset, ena;
  output pm;
  wire   N22, N23, N24, N25, N26, N39, N40, N41, N42, N43, N55, N56, N57, N58,
         N59, N71, N72, N73, N74, N75, N88, N89, N90, N91, N92, N110, N112,
         N114, N115, N116, N121, N122, n4, n5, n6, n7, n8, n9, n10, n86, n111,
         n112, n113, n114, n115, n116, n122, n123, n124, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219;

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
  GTECH_FJK1S ss_tens_reg_3_ ( .J(n86), .K(n86), .TI(N43), .TE(N42), .CP(clk), 
        .Q(ss[7]) );
  GTECH_FJK1S ss_tens_reg_1_ ( .J(n86), .K(n86), .TI(N40), .TE(N42), .CP(clk), 
        .Q(ss[5]) );
  GTECH_FJK1S mm_ones_reg_0_ ( .J(n86), .K(n86), .TI(N55), .TE(N58), .CP(clk), 
        .Q(mm[0]), .QN(n4) );
  GTECH_FJK1S mm_ones_reg_3_ ( .J(n86), .K(n86), .TI(N59), .TE(N58), .CP(clk), 
        .Q(mm[3]), .QN(n114) );
  GTECH_FJK1S mm_ones_reg_1_ ( .J(n86), .K(n86), .TI(N56), .TE(N58), .CP(clk), 
        .Q(mm[1]), .QN(n116) );
  GTECH_FJK1S mm_ones_reg_2_ ( .J(n86), .K(n86), .TI(N57), .TE(N58), .CP(clk), 
        .Q(mm[2]), .QN(n115) );
  GTECH_FJK1S mm_tens_reg_0_ ( .J(n86), .K(n86), .TI(N71), .TE(N74), .CP(clk), 
        .Q(mm[4]), .QN(n5) );
  GTECH_FJK1S mm_tens_reg_2_ ( .J(n86), .K(n86), .TI(N73), .TE(N74), .CP(clk), 
        .Q(mm[6]), .QN(n112) );
  GTECH_FJK1S mm_tens_reg_3_ ( .J(n86), .K(n86), .TI(N75), .TE(N74), .CP(clk), 
        .Q(mm[7]), .QN(n126) );
  GTECH_FJK1S mm_tens_reg_1_ ( .J(n86), .K(n86), .TI(N72), .TE(N74), .CP(clk), 
        .Q(mm[5]), .QN(n113) );
  GTECH_FJK1S hh_tens_reg_0_ ( .J(n86), .K(n86), .TI(N110), .TE(N115), .CP(clk), .Q(hh[4]), .QN(n122) );
  GTECH_FJK1S hh_tens_reg_2_ ( .J(n86), .K(n86), .TI(N114), .TE(N115), .CP(clk), .Q(hh[6]), .QN(n6) );
  GTECH_FJK1S hh_tens_reg_3_ ( .J(n86), .K(n86), .TI(N116), .TE(N115), .CP(clk), .Q(hh[7]), .QN(n7) );
  GTECH_FJK1S hh_ones_reg_0_ ( .J(n86), .K(n86), .TI(N88), .TE(N91), .CP(clk), 
        .Q(hh[0]), .QN(n111) );
  GTECH_FJK1S hh_ones_reg_1_ ( .J(n86), .K(n86), .TI(N89), .TE(N91), .CP(clk), 
        .Q(hh[1]), .QN(n124) );
  GTECH_FJK1S hh_ones_reg_2_ ( .J(n86), .K(n86), .TI(N90), .TE(N91), .CP(clk), 
        .Q(hh[2]), .QN(n8) );
  GTECH_FJK1S hh_ones_reg_3_ ( .J(n86), .K(n86), .TI(N92), .TE(N91), .CP(clk), 
        .Q(hh[3]), .QN(n123) );
  GTECH_FJK1S hh_tens_reg_1_ ( .J(n86), .K(n86), .TI(N112), .TE(N115), .CP(clk), .Q(hh[5]), .QN(n9) );
  GTECH_FJK1S pm_temp_reg ( .J(n86), .K(n86), .TI(N122), .TE(N121), .CP(clk), 
        .Q(pm), .QN(n10) );
  GTECH_ZERO U135 ( .Z(n86) );
  GTECH_AND2 U136 ( .A(n127), .B(n128), .Z(N92) );
  GTECH_XOR2 U137 ( .A(n129), .B(n123), .Z(n127) );
  GTECH_OR2 U138 ( .A(n8), .B(n130), .Z(n129) );
  GTECH_NAND2 U139 ( .A(n131), .B(n132), .Z(N91) );
  GTECH_AND2 U140 ( .A(n133), .B(n128), .Z(N90) );
  GTECH_XOR2 U141 ( .A(n130), .B(n8), .Z(n133) );
  GTECH_NAND2 U142 ( .A(n134), .B(n135), .Z(n130) );
  GTECH_AO21 U143 ( .A(n128), .B(n136), .C(reset), .Z(N89) );
  GTECH_XOR2 U144 ( .A(n124), .B(n111), .Z(n136) );
  GTECH_NOT U145 ( .A(n137), .Z(n128) );
  GTECH_OAI22 U146 ( .A(n132), .B(n138), .C(n135), .D(n137), .Z(N88) );
  GTECH_NAND3 U147 ( .A(n139), .B(n138), .C(n140), .Z(n137) );
  GTECH_OAI22 U148 ( .A(n126), .B(n141), .C(n142), .D(n143), .Z(N75) );
  GTECH_OA21 U149 ( .A(n126), .B(n144), .C(n145), .Z(n142) );
  GTECH_NOT U150 ( .A(n146), .Z(n141) );
  GTECH_MUX2 U151 ( .A(n146), .B(n147), .S(n112), .Z(N73) );
  GTECH_NOR3 U152 ( .A(n5), .B(n113), .C(n143), .Z(n147) );
  GTECH_AO21 U153 ( .A(n148), .B(n113), .C(N71), .Z(n146) );
  GTECH_MUX2 U154 ( .A(N71), .B(n149), .S(n113), .Z(N72) );
  GTECH_AND2 U155 ( .A(n148), .B(n150), .Z(n149) );
  GTECH_NOT U156 ( .A(n151), .Z(N71) );
  GTECH_NAND2 U157 ( .A(n5), .B(n148), .Z(n151) );
  GTECH_NOT U158 ( .A(n143), .Z(n148) );
  GTECH_NAND3 U159 ( .A(n152), .B(n131), .C(n153), .Z(n143) );
  GTECH_MUX2 U160 ( .A(n154), .B(n155), .S(n114), .Z(N59) );
  GTECH_NOR3 U161 ( .A(n116), .B(n115), .C(n156), .Z(n155) );
  GTECH_AO21 U162 ( .A(n157), .B(n115), .C(n158), .Z(n154) );
  GTECH_MUX2 U163 ( .A(n158), .B(n159), .S(n115), .Z(N57) );
  GTECH_AND_NOT U164 ( .A(n160), .B(n116), .Z(n159) );
  GTECH_AO21 U165 ( .A(n157), .B(n116), .C(N55), .Z(n158) );
  GTECH_MUX2 U166 ( .A(N55), .B(n160), .S(n116), .Z(N56) );
  GTECH_NOT U167 ( .A(n156), .Z(n160) );
  GTECH_NAND2 U168 ( .A(n157), .B(n161), .Z(n156) );
  GTECH_NOT U169 ( .A(n162), .Z(N55) );
  GTECH_NAND2 U170 ( .A(n4), .B(n157), .Z(n162) );
  GTECH_NOT U171 ( .A(n163), .Z(n157) );
  GTECH_NAND2 U172 ( .A(n164), .B(n165), .Z(n163) );
  GTECH_NOT U173 ( .A(N74), .Z(n165) );
  GTECH_NAND2 U174 ( .A(n131), .B(n166), .Z(N74) );
  GTECH_OAI2N2 U175 ( .A(n167), .B(n168), .C(n169), .D(ss[7]), .Z(N43) );
  GTECH_OA21 U176 ( .A(n170), .B(ss[6]), .C(n171), .Z(n167) );
  GTECH_MUX2 U177 ( .A(n172), .B(n169), .S(ss[6]), .Z(N41) );
  GTECH_AO21 U178 ( .A(n173), .B(n174), .C(N39), .Z(n169) );
  GTECH_AND3 U179 ( .A(n173), .B(ss[4]), .C(ss[5]), .Z(n172) );
  GTECH_MUX2 U180 ( .A(n175), .B(N39), .S(ss[5]), .Z(N40) );
  GTECH_AND2 U181 ( .A(n173), .B(ss[4]), .Z(n175) );
  GTECH_NOT U182 ( .A(n176), .Z(N39) );
  GTECH_NAND2 U183 ( .A(n173), .B(n177), .Z(n176) );
  GTECH_NOT U184 ( .A(ss[4]), .Z(n177) );
  GTECH_NOT U185 ( .A(n168), .Z(n173) );
  GTECH_NAND2 U186 ( .A(n178), .B(n179), .Z(n168) );
  GTECH_NOT U187 ( .A(N58), .Z(n179) );
  GTECH_NAND2 U188 ( .A(n131), .B(n180), .Z(N58) );
  GTECH_OAI22 U189 ( .A(n181), .B(n182), .C(n183), .D(n184), .Z(N26) );
  GTECH_MUX2 U190 ( .A(n181), .B(n185), .S(ss[2]), .Z(n184) );
  GTECH_NAND2 U191 ( .A(n186), .B(n181), .Z(n185) );
  GTECH_NOT U192 ( .A(ss[3]), .Z(n181) );
  GTECH_NAND2 U193 ( .A(n131), .B(n187), .Z(N25) );
  GTECH_NOT U194 ( .A(ena), .Z(n187) );
  GTECH_MUX2 U195 ( .A(n188), .B(n189), .S(ss[2]), .Z(N24) );
  GTECH_NOT U196 ( .A(n182), .Z(n189) );
  GTECH_NAND2 U197 ( .A(n190), .B(n191), .Z(n182) );
  GTECH_AND2 U198 ( .A(n190), .B(n186), .Z(n188) );
  GTECH_NOT U199 ( .A(n191), .Z(n186) );
  GTECH_NAND2 U200 ( .A(ss[1]), .B(ss[0]), .Z(n191) );
  GTECH_MUX2 U201 ( .A(n192), .B(N22), .S(ss[1]), .Z(N23) );
  GTECH_AND2 U202 ( .A(n190), .B(ss[0]), .Z(n192) );
  GTECH_NOT U203 ( .A(n193), .Z(N22) );
  GTECH_NAND2 U204 ( .A(n190), .B(n194), .Z(n193) );
  GTECH_NOT U205 ( .A(ss[0]), .Z(n194) );
  GTECH_NOT U206 ( .A(n183), .Z(n190) );
  GTECH_NAND2 U207 ( .A(ena), .B(n195), .Z(n183) );
  GTECH_NOT U208 ( .A(N42), .Z(n195) );
  GTECH_NAND2 U209 ( .A(n131), .B(n196), .Z(N42) );
  GTECH_AND2 U210 ( .A(n197), .B(n10), .Z(N122) );
  GTECH_NOT U211 ( .A(n198), .Z(n197) );
  GTECH_NAND2 U212 ( .A(n131), .B(n198), .Z(N121) );
  GTECH_NAND4 U213 ( .A(n199), .B(n9), .C(n140), .D(n200), .Z(n198) );
  GTECH_AND4 U214 ( .A(n7), .B(n6), .C(n123), .D(n201), .Z(n200) );
  GTECH_AND2 U215 ( .A(n202), .B(n203), .Z(N116) );
  GTECH_XOR2 U216 ( .A(n204), .B(n7), .Z(n202) );
  GTECH_OR2 U217 ( .A(n6), .B(n205), .Z(n204) );
  GTECH_NAND3 U218 ( .A(n138), .B(n131), .C(n139), .Z(N115) );
  GTECH_NAND5 U219 ( .A(n9), .B(n8), .C(n7), .D(n6), .E(n206), .Z(n138) );
  GTECH_AND5 U220 ( .A(n201), .B(n134), .C(n207), .D(n123), .E(n111), .Z(n206)
         );
  GTECH_NOT U221 ( .A(n124), .Z(n134) );
  GTECH_AND2 U222 ( .A(n208), .B(n203), .Z(N114) );
  GTECH_XOR2 U223 ( .A(n205), .B(n6), .Z(n208) );
  GTECH_NAND2 U224 ( .A(n209), .B(n201), .Z(n205) );
  GTECH_NOT U225 ( .A(n122), .Z(n201) );
  GTECH_NOT U226 ( .A(n9), .Z(n209) );
  GTECH_AND2 U227 ( .A(n203), .B(n210), .Z(N112) );
  GTECH_XOR2 U228 ( .A(n9), .B(n122), .Z(n210) );
  GTECH_AO21 U229 ( .A(n122), .B(n203), .C(reset), .Z(N110) );
  GTECH_NOT U230 ( .A(n211), .Z(n203) );
  GTECH_NAND2 U231 ( .A(n212), .B(n140), .Z(n211) );
  GTECH_NOT U232 ( .A(n132), .Z(n140) );
  GTECH_NAND2 U233 ( .A(n207), .B(n131), .Z(n132) );
  GTECH_NOT U234 ( .A(reset), .Z(n131) );
  GTECH_NOT U235 ( .A(n139), .Z(n212) );
  GTECH_NAND3 U236 ( .A(n207), .B(n213), .C(n199), .Z(n139) );
  GTECH_NOT U237 ( .A(n214), .Z(n199) );
  GTECH_NAND3 U238 ( .A(n8), .B(n135), .C(n124), .Z(n214) );
  GTECH_NOT U239 ( .A(n111), .Z(n135) );
  GTECH_NOT U240 ( .A(n123), .Z(n213) );
  GTECH_NOT U241 ( .A(n152), .Z(n207) );
  GTECH_NAND3 U242 ( .A(n215), .B(n153), .C(n113), .Z(n152) );
  GTECH_NOT U243 ( .A(n166), .Z(n153) );
  GTECH_NAND5 U244 ( .A(n216), .B(n161), .C(n164), .D(n116), .E(n115), .Z(n166) );
  GTECH_NOT U245 ( .A(n180), .Z(n164) );
  GTECH_NAND3 U246 ( .A(n217), .B(n174), .C(n178), .Z(n180) );
  GTECH_NOT U247 ( .A(n196), .Z(n178) );
  GTECH_NAND5 U248 ( .A(n218), .B(n219), .C(ena), .D(ss[3]), .E(ss[0]), .Z(
        n196) );
  GTECH_NOT U249 ( .A(ss[2]), .Z(n219) );
  GTECH_NOT U250 ( .A(ss[1]), .Z(n218) );
  GTECH_NOT U251 ( .A(ss[5]), .Z(n174) );
  GTECH_NOT U252 ( .A(n171), .Z(n217) );
  GTECH_NAND3 U253 ( .A(ss[4]), .B(n170), .C(ss[6]), .Z(n171) );
  GTECH_NOT U254 ( .A(ss[7]), .Z(n170) );
  GTECH_NOT U255 ( .A(n4), .Z(n161) );
  GTECH_NOT U256 ( .A(n114), .Z(n216) );
  GTECH_NOT U257 ( .A(n145), .Z(n215) );
  GTECH_NAND3 U258 ( .A(n144), .B(n150), .C(n126), .Z(n145) );
  GTECH_NOT U259 ( .A(n5), .Z(n150) );
  GTECH_NOT U260 ( .A(n112), .Z(n144) );
endmodule

