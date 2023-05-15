
module clock_12h ( clk, reset, ena, pm, hh, mm, ss );
  output [7:0] hh;
  output [7:0] mm;
  output [7:0] ss;
  input clk, reset, ena;
  output pm;
  wire   N22, N23, N24, N25, N26, N39, N40, N41, N42, N43, N55, N56, N57, N58,
         N59, N71, N72, N73, N74, N75, N88, N89, N90, N91, N92, N110, N112,
         N114, N115, N116, N121, N122, n4, n5, n6, n7, n8, n9, n80, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219;

  GTECH_FJK1S ss_ones_reg_0_ ( .J(n80), .K(n80), .TI(N22), .TE(N25), .CP(clk), 
        .Q(ss[0]) );
  GTECH_FJK1S ss_ones_reg_3_ ( .J(n80), .K(n80), .TI(N26), .TE(N25), .CP(clk), 
        .Q(ss[3]) );
  GTECH_FJK1S ss_ones_reg_1_ ( .J(n80), .K(n80), .TI(N23), .TE(N25), .CP(clk), 
        .Q(ss[1]) );
  GTECH_FJK1S ss_ones_reg_2_ ( .J(n80), .K(n80), .TI(N24), .TE(N25), .CP(clk), 
        .Q(ss[2]) );
  GTECH_FJK1S ss_tens_reg_0_ ( .J(n80), .K(n80), .TI(N39), .TE(N42), .CP(clk), 
        .Q(ss[4]) );
  GTECH_FJK1S ss_tens_reg_2_ ( .J(n80), .K(n80), .TI(N41), .TE(N42), .CP(clk), 
        .Q(ss[6]) );
  GTECH_FJK1S ss_tens_reg_3_ ( .J(n80), .K(n80), .TI(N43), .TE(N42), .CP(clk), 
        .Q(ss[7]) );
  GTECH_FJK1S ss_tens_reg_1_ ( .J(n80), .K(n80), .TI(N40), .TE(N42), .CP(clk), 
        .Q(ss[5]) );
  GTECH_FJK1S mm_ones_reg_0_ ( .J(n80), .K(n80), .TI(N55), .TE(N58), .CP(clk), 
        .Q(mm[0]), .QN(n114) );
  GTECH_FJK1S mm_ones_reg_3_ ( .J(n80), .K(n80), .TI(N59), .TE(N58), .CP(clk), 
        .Q(mm[3]), .QN(n111) );
  GTECH_FJK1S mm_ones_reg_1_ ( .J(n80), .K(n80), .TI(N56), .TE(N58), .CP(clk), 
        .Q(mm[1]), .QN(n113) );
  GTECH_FJK1S mm_ones_reg_2_ ( .J(n80), .K(n80), .TI(N57), .TE(N58), .CP(clk), 
        .Q(mm[2]), .QN(n112) );
  GTECH_FJK1S mm_tens_reg_0_ ( .J(n80), .K(n80), .TI(N71), .TE(N74), .CP(clk), 
        .Q(mm[4]), .QN(n110) );
  GTECH_FJK1S mm_tens_reg_2_ ( .J(n80), .K(n80), .TI(N73), .TE(N74), .CP(clk), 
        .Q(mm[6]), .QN(n108) );
  GTECH_FJK1S mm_tens_reg_3_ ( .J(n80), .K(n80), .TI(N75), .TE(N74), .CP(clk), 
        .Q(mm[7]), .QN(n4) );
  GTECH_FJK1S mm_tens_reg_1_ ( .J(n80), .K(n80), .TI(N72), .TE(N74), .CP(clk), 
        .Q(mm[5]), .QN(n109) );
  GTECH_FJK1S hh_tens_reg_0_ ( .J(n80), .K(n80), .TI(N110), .TE(N115), .CP(clk), .Q(hh[4]), .QN(n121) );
  GTECH_FJK1S hh_tens_reg_1_ ( .J(n80), .K(n80), .TI(N112), .TE(N115), .CP(clk), .Q(hh[5]), .QN(n5) );
  GTECH_FJK1S hh_tens_reg_2_ ( .J(n80), .K(n80), .TI(N114), .TE(N115), .CP(clk), .Q(hh[6]), .QN(n6) );
  GTECH_FJK1S hh_tens_reg_3_ ( .J(n80), .K(n80), .TI(N116), .TE(N115), .CP(clk), .Q(hh[7]), .QN(n7) );
  GTECH_FJK1S hh_ones_reg_0_ ( .J(n80), .K(n80), .TI(N88), .TE(N91), .CP(clk), 
        .Q(hh[0]), .QN(n8) );
  GTECH_FJK1S hh_ones_reg_1_ ( .J(n80), .K(n80), .TI(N89), .TE(N91), .CP(clk), 
        .Q(hh[1]), .QN(n107) );
  GTECH_FJK1S hh_ones_reg_2_ ( .J(n80), .K(n80), .TI(N90), .TE(N91), .CP(clk), 
        .Q(hh[2]), .QN(n106) );
  GTECH_FJK1S hh_ones_reg_3_ ( .J(n80), .K(n80), .TI(N92), .TE(N91), .CP(clk), 
        .Q(hh[3]), .QN(n105) );
  GTECH_FJK1S pm_temp_reg ( .J(n80), .K(n80), .TI(N122), .TE(N121), .CP(clk), 
        .Q(pm), .QN(n9) );
  GTECH_ZERO U130 ( .Z(n80) );
  GTECH_AND2 U131 ( .A(n122), .B(n123), .Z(N92) );
  GTECH_XOR2 U132 ( .A(n124), .B(n105), .Z(n122) );
  GTECH_OR_NOT U133 ( .A(n125), .B(n126), .Z(n124) );
  GTECH_NAND2 U134 ( .A(n127), .B(n128), .Z(N91) );
  GTECH_AND2 U135 ( .A(n129), .B(n123), .Z(N90) );
  GTECH_NOT U136 ( .A(n130), .Z(n123) );
  GTECH_XOR2 U137 ( .A(n125), .B(n106), .Z(n129) );
  GTECH_NAND2 U138 ( .A(n131), .B(n132), .Z(n125) );
  GTECH_OAI21 U139 ( .A(n133), .B(n130), .C(n127), .Z(N89) );
  GTECH_XOR2 U140 ( .A(n132), .B(n8), .Z(n133) );
  GTECH_OAI2N2 U141 ( .A(n131), .B(n130), .C(n134), .D(n135), .Z(N88) );
  GTECH_NOT U142 ( .A(n136), .Z(n134) );
  GTECH_NAND3 U143 ( .A(n136), .B(n137), .C(n135), .Z(n130) );
  GTECH_MUX2 U144 ( .A(n138), .B(n139), .S(n4), .Z(N75) );
  GTECH_AND2 U145 ( .A(n140), .B(n141), .Z(n139) );
  GTECH_OAI21 U146 ( .A(n142), .B(n141), .C(n143), .Z(n138) );
  GTECH_NOT U147 ( .A(n144), .Z(n143) );
  GTECH_MUX2 U148 ( .A(n144), .B(n145), .S(n108), .Z(N73) );
  GTECH_AND2 U149 ( .A(n140), .B(n146), .Z(n145) );
  GTECH_OAI21 U150 ( .A(n146), .B(n142), .C(n147), .Z(n144) );
  GTECH_NOT U151 ( .A(n109), .Z(n146) );
  GTECH_MUX2 U152 ( .A(N71), .B(n140), .S(n109), .Z(N72) );
  GTECH_NOT U153 ( .A(n148), .Z(n140) );
  GTECH_NAND2 U154 ( .A(n149), .B(n150), .Z(n148) );
  GTECH_NOT U155 ( .A(n147), .Z(N71) );
  GTECH_NAND2 U156 ( .A(n110), .B(n149), .Z(n147) );
  GTECH_NOT U157 ( .A(n142), .Z(n149) );
  GTECH_NAND3 U158 ( .A(n151), .B(n127), .C(n152), .Z(n142) );
  GTECH_MUX2 U159 ( .A(n153), .B(n154), .S(n111), .Z(N59) );
  GTECH_AND2 U160 ( .A(n155), .B(n156), .Z(n154) );
  GTECH_OAI21 U161 ( .A(n156), .B(n157), .C(n158), .Z(n153) );
  GTECH_NOT U162 ( .A(n159), .Z(n158) );
  GTECH_NOT U163 ( .A(n112), .Z(n156) );
  GTECH_MUX2 U164 ( .A(n159), .B(n155), .S(n112), .Z(N57) );
  GTECH_NOT U165 ( .A(n160), .Z(n155) );
  GTECH_NAND3 U166 ( .A(n161), .B(n162), .C(n163), .Z(n160) );
  GTECH_OAI21 U167 ( .A(n161), .B(n157), .C(n164), .Z(n159) );
  GTECH_NOT U168 ( .A(n113), .Z(n161) );
  GTECH_MUX2 U169 ( .A(N55), .B(n165), .S(n113), .Z(N56) );
  GTECH_AND2 U170 ( .A(n163), .B(n162), .Z(n165) );
  GTECH_NOT U171 ( .A(n164), .Z(N55) );
  GTECH_NAND2 U172 ( .A(n114), .B(n163), .Z(n164) );
  GTECH_NOT U173 ( .A(n157), .Z(n163) );
  GTECH_NAND2 U174 ( .A(n166), .B(n167), .Z(n157) );
  GTECH_NOT U175 ( .A(N74), .Z(n167) );
  GTECH_NAND2 U176 ( .A(n127), .B(n168), .Z(N74) );
  GTECH_MUX2 U177 ( .A(n169), .B(n170), .S(ss[7]), .Z(N43) );
  GTECH_OAI21 U178 ( .A(ss[6]), .B(n171), .C(n172), .Z(n170) );
  GTECH_NOT U179 ( .A(n173), .Z(n172) );
  GTECH_AND2 U180 ( .A(n174), .B(ss[6]), .Z(n169) );
  GTECH_MUX2 U181 ( .A(n175), .B(n173), .S(ss[6]), .Z(N41) );
  GTECH_OAI21 U182 ( .A(ss[5]), .B(n171), .C(n176), .Z(n173) );
  GTECH_AND2 U183 ( .A(ss[5]), .B(n174), .Z(n175) );
  GTECH_MUX2 U184 ( .A(n174), .B(N39), .S(ss[5]), .Z(N40) );
  GTECH_NOT U185 ( .A(n177), .Z(n174) );
  GTECH_NAND2 U186 ( .A(n178), .B(ss[4]), .Z(n177) );
  GTECH_NOT U187 ( .A(n176), .Z(N39) );
  GTECH_NAND2 U188 ( .A(n178), .B(n179), .Z(n176) );
  GTECH_NOT U189 ( .A(ss[4]), .Z(n179) );
  GTECH_NOT U190 ( .A(n171), .Z(n178) );
  GTECH_NAND2 U191 ( .A(n180), .B(n181), .Z(n171) );
  GTECH_NOT U192 ( .A(N58), .Z(n181) );
  GTECH_NAND2 U193 ( .A(n127), .B(n182), .Z(N58) );
  GTECH_OAI2N2 U194 ( .A(n183), .B(n184), .C(n185), .D(ss[3]), .Z(N26) );
  GTECH_MUX2 U195 ( .A(n186), .B(n187), .S(ss[2]), .Z(n184) );
  GTECH_NAND2 U196 ( .A(n188), .B(n186), .Z(n187) );
  GTECH_NOT U197 ( .A(ss[3]), .Z(n186) );
  GTECH_NAND2 U198 ( .A(n127), .B(n189), .Z(N25) );
  GTECH_NOT U199 ( .A(ena), .Z(n189) );
  GTECH_MUX2 U200 ( .A(n190), .B(n185), .S(ss[2]), .Z(N24) );
  GTECH_NOT U201 ( .A(n191), .Z(n185) );
  GTECH_NAND2 U202 ( .A(n192), .B(n193), .Z(n191) );
  GTECH_AND2 U203 ( .A(n192), .B(n188), .Z(n190) );
  GTECH_NOT U204 ( .A(n193), .Z(n188) );
  GTECH_NAND2 U205 ( .A(ss[1]), .B(ss[0]), .Z(n193) );
  GTECH_MUX2 U206 ( .A(n194), .B(N22), .S(ss[1]), .Z(N23) );
  GTECH_AND2 U207 ( .A(n192), .B(ss[0]), .Z(n194) );
  GTECH_NOT U208 ( .A(n195), .Z(N22) );
  GTECH_NAND2 U209 ( .A(n192), .B(n196), .Z(n195) );
  GTECH_NOT U210 ( .A(ss[0]), .Z(n196) );
  GTECH_NOT U211 ( .A(n183), .Z(n192) );
  GTECH_NAND2 U212 ( .A(ena), .B(n197), .Z(n183) );
  GTECH_NOT U213 ( .A(N42), .Z(n197) );
  GTECH_NAND2 U214 ( .A(n127), .B(n198), .Z(N42) );
  GTECH_AND2 U215 ( .A(n199), .B(n9), .Z(N122) );
  GTECH_NOT U216 ( .A(n200), .Z(n199) );
  GTECH_NAND2 U217 ( .A(n127), .B(n200), .Z(N121) );
  GTECH_NAND5 U218 ( .A(n135), .B(n7), .C(n6), .D(n5), .E(n201), .Z(n200) );
  GTECH_NOR5 U219 ( .A(n132), .B(n202), .C(n126), .D(n8), .E(n121), .Z(n201)
         );
  GTECH_NOT U220 ( .A(n107), .Z(n132) );
  GTECH_AND2 U221 ( .A(n203), .B(n204), .Z(N116) );
  GTECH_XOR2 U222 ( .A(n205), .B(n7), .Z(n203) );
  GTECH_OR2 U223 ( .A(n6), .B(n206), .Z(n205) );
  GTECH_NAND3 U224 ( .A(n137), .B(n127), .C(n136), .Z(N115) );
  GTECH_NAND5 U225 ( .A(n8), .B(n7), .C(n6), .D(n5), .E(n207), .Z(n136) );
  GTECH_NOR5 U226 ( .A(n126), .B(n202), .C(n151), .D(n121), .E(n107), .Z(n207)
         );
  GTECH_NOT U227 ( .A(n106), .Z(n126) );
  GTECH_AND2 U228 ( .A(n208), .B(n204), .Z(N114) );
  GTECH_XOR2 U229 ( .A(n206), .B(n6), .Z(n208) );
  GTECH_NAND2 U230 ( .A(n209), .B(n210), .Z(n206) );
  GTECH_NOT U231 ( .A(n5), .Z(n209) );
  GTECH_AND2 U232 ( .A(n204), .B(n211), .Z(N112) );
  GTECH_XOR2 U233 ( .A(n5), .B(n121), .Z(n211) );
  GTECH_NOT U234 ( .A(n212), .Z(n204) );
  GTECH_OAI21 U235 ( .A(n212), .B(n210), .C(n127), .Z(N110) );
  GTECH_NOT U236 ( .A(n121), .Z(n210) );
  GTECH_NAND2 U237 ( .A(n213), .B(n135), .Z(n212) );
  GTECH_NOT U238 ( .A(n128), .Z(n135) );
  GTECH_NAND2 U239 ( .A(n214), .B(n127), .Z(n128) );
  GTECH_NOT U240 ( .A(reset), .Z(n127) );
  GTECH_NOT U241 ( .A(n137), .Z(n213) );
  GTECH_NAND5 U242 ( .A(n202), .B(n131), .C(n214), .D(n107), .E(n106), .Z(n137) );
  GTECH_NOT U243 ( .A(n151), .Z(n214) );
  GTECH_NAND5 U244 ( .A(n141), .B(n150), .C(n152), .D(n4), .E(n109), .Z(n151)
         );
  GTECH_NOT U245 ( .A(n168), .Z(n152) );
  GTECH_NAND5 U246 ( .A(n215), .B(n162), .C(n166), .D(n113), .E(n112), .Z(n168) );
  GTECH_NOT U247 ( .A(n182), .Z(n166) );
  GTECH_NAND5 U248 ( .A(n216), .B(n217), .C(n180), .D(ss[6]), .E(ss[4]), .Z(
        n182) );
  GTECH_NOT U249 ( .A(n198), .Z(n180) );
  GTECH_NAND5 U250 ( .A(n218), .B(n219), .C(ena), .D(ss[3]), .E(ss[0]), .Z(
        n198) );
  GTECH_NOT U251 ( .A(ss[2]), .Z(n219) );
  GTECH_NOT U252 ( .A(ss[1]), .Z(n218) );
  GTECH_NOT U253 ( .A(ss[7]), .Z(n217) );
  GTECH_NOT U254 ( .A(ss[5]), .Z(n216) );
  GTECH_NOT U255 ( .A(n114), .Z(n162) );
  GTECH_NOT U256 ( .A(n111), .Z(n215) );
  GTECH_NOT U257 ( .A(n110), .Z(n150) );
  GTECH_NOT U258 ( .A(n108), .Z(n141) );
  GTECH_NOT U259 ( .A(n8), .Z(n131) );
  GTECH_NOT U260 ( .A(n105), .Z(n202) );
endmodule

