
module clock_12h ( clk, reset, ena, pm, hh, mm, ss );
  output [7:0] hh;
  output [7:0] mm;
  output [7:0] ss;
  input clk, reset, ena;
  output pm;
  wire   N22, N23, N24, N25, N26, N39, N40, N41, N42, N43, N55, N56, N57, N58,
         N59, N71, N72, N73, N74, N75, N88, N89, N90, N91, N92, N110, N112,
         N114, N115, N116, N121, N122, n4, n5, n6, n7, n8, n9, n80, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218;

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
        .Q(mm[0]), .QN(n113) );
  GTECH_FJK1S mm_ones_reg_3_ ( .J(n80), .K(n80), .TI(N59), .TE(N58), .CP(clk), 
        .Q(mm[3]), .QN(n110) );
  GTECH_FJK1S mm_ones_reg_1_ ( .J(n80), .K(n80), .TI(N56), .TE(N58), .CP(clk), 
        .Q(mm[1]), .QN(n112) );
  GTECH_FJK1S mm_ones_reg_2_ ( .J(n80), .K(n80), .TI(N57), .TE(N58), .CP(clk), 
        .Q(mm[2]), .QN(n111) );
  GTECH_FJK1S mm_tens_reg_0_ ( .J(n80), .K(n80), .TI(N71), .TE(N74), .CP(clk), 
        .Q(mm[4]), .QN(n121) );
  GTECH_FJK1S mm_tens_reg_2_ ( .J(n80), .K(n80), .TI(N73), .TE(N74), .CP(clk), 
        .Q(mm[6]), .QN(n108) );
  GTECH_FJK1S mm_tens_reg_1_ ( .J(n80), .K(n80), .TI(N72), .TE(N74), .CP(clk), 
        .Q(mm[5]), .QN(n109) );
  GTECH_FJK1S mm_tens_reg_3_ ( .J(n80), .K(n80), .TI(N75), .TE(N74), .CP(clk), 
        .Q(mm[7]), .QN(n4) );
  GTECH_FJK1S hh_tens_reg_0_ ( .J(n80), .K(n80), .TI(N110), .TE(N115), .CP(clk), .Q(hh[4]), .QN(n120) );
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
  GTECH_OR2 U133 ( .A(n106), .B(n125), .Z(n124) );
  GTECH_NAND2 U134 ( .A(n126), .B(n127), .Z(N91) );
  GTECH_AND2 U135 ( .A(n128), .B(n123), .Z(N90) );
  GTECH_NOT U136 ( .A(n129), .Z(n123) );
  GTECH_XOR2 U137 ( .A(n125), .B(n106), .Z(n128) );
  GTECH_NAND2 U138 ( .A(n130), .B(n131), .Z(n125) );
  GTECH_OAI21 U139 ( .A(n132), .B(n129), .C(n126), .Z(N89) );
  GTECH_XOR2 U140 ( .A(n131), .B(n8), .Z(n132) );
  GTECH_OAI2N2 U141 ( .A(n130), .B(n129), .C(n133), .D(n134), .Z(N88) );
  GTECH_NOT U142 ( .A(n135), .Z(n133) );
  GTECH_NAND3 U143 ( .A(n136), .B(n135), .C(n134), .Z(n129) );
  GTECH_OAI2N2 U144 ( .A(n137), .B(n138), .C(n139), .D(n140), .Z(N75) );
  GTECH_NOT U145 ( .A(n4), .Z(n140) );
  GTECH_OA21 U146 ( .A(n4), .B(n141), .C(n142), .Z(n137) );
  GTECH_MUX2 U147 ( .A(n139), .B(n143), .S(n108), .Z(N73) );
  GTECH_NOR3 U148 ( .A(n121), .B(n109), .C(n138), .Z(n143) );
  GTECH_NOT U149 ( .A(n144), .Z(n139) );
  GTECH_OAI21 U150 ( .A(n121), .B(n109), .C(n145), .Z(n144) );
  GTECH_MUX2 U151 ( .A(N71), .B(n146), .S(n109), .Z(N72) );
  GTECH_AND2 U152 ( .A(n145), .B(n147), .Z(n146) );
  GTECH_NOT U153 ( .A(n148), .Z(N71) );
  GTECH_NAND2 U154 ( .A(n121), .B(n145), .Z(n148) );
  GTECH_NOT U155 ( .A(n138), .Z(n145) );
  GTECH_NAND3 U156 ( .A(n149), .B(n126), .C(n150), .Z(n138) );
  GTECH_MUX2 U157 ( .A(n151), .B(n152), .S(n110), .Z(N59) );
  GTECH_AND2 U158 ( .A(n153), .B(n154), .Z(n152) );
  GTECH_OAI21 U159 ( .A(n154), .B(n155), .C(n156), .Z(n151) );
  GTECH_NOT U160 ( .A(n157), .Z(n156) );
  GTECH_NOT U161 ( .A(n111), .Z(n154) );
  GTECH_MUX2 U162 ( .A(n157), .B(n153), .S(n111), .Z(N57) );
  GTECH_NOT U163 ( .A(n158), .Z(n153) );
  GTECH_NAND3 U164 ( .A(n159), .B(n160), .C(n161), .Z(n158) );
  GTECH_OAI21 U165 ( .A(n159), .B(n155), .C(n162), .Z(n157) );
  GTECH_NOT U166 ( .A(n112), .Z(n159) );
  GTECH_MUX2 U167 ( .A(N55), .B(n163), .S(n112), .Z(N56) );
  GTECH_AND2 U168 ( .A(n161), .B(n160), .Z(n163) );
  GTECH_NOT U169 ( .A(n162), .Z(N55) );
  GTECH_NAND2 U170 ( .A(n113), .B(n161), .Z(n162) );
  GTECH_NOT U171 ( .A(n155), .Z(n161) );
  GTECH_NAND2 U172 ( .A(n164), .B(n165), .Z(n155) );
  GTECH_NOT U173 ( .A(N74), .Z(n165) );
  GTECH_NAND2 U174 ( .A(n126), .B(n166), .Z(N74) );
  GTECH_MUX2 U175 ( .A(n167), .B(n168), .S(ss[7]), .Z(N43) );
  GTECH_OAI21 U176 ( .A(ss[6]), .B(n169), .C(n170), .Z(n168) );
  GTECH_NOT U177 ( .A(n171), .Z(n170) );
  GTECH_AND2 U178 ( .A(n172), .B(ss[6]), .Z(n167) );
  GTECH_MUX2 U179 ( .A(n173), .B(n171), .S(ss[6]), .Z(N41) );
  GTECH_OAI21 U180 ( .A(ss[5]), .B(n169), .C(n174), .Z(n171) );
  GTECH_AND2 U181 ( .A(ss[5]), .B(n172), .Z(n173) );
  GTECH_MUX2 U182 ( .A(n172), .B(N39), .S(ss[5]), .Z(N40) );
  GTECH_NOT U183 ( .A(n175), .Z(n172) );
  GTECH_NAND2 U184 ( .A(n176), .B(ss[4]), .Z(n175) );
  GTECH_NOT U185 ( .A(n174), .Z(N39) );
  GTECH_NAND2 U186 ( .A(n176), .B(n177), .Z(n174) );
  GTECH_NOT U187 ( .A(ss[4]), .Z(n177) );
  GTECH_NOT U188 ( .A(n169), .Z(n176) );
  GTECH_NAND2 U189 ( .A(n178), .B(n179), .Z(n169) );
  GTECH_NOT U190 ( .A(N58), .Z(n179) );
  GTECH_NAND2 U191 ( .A(n126), .B(n180), .Z(N58) );
  GTECH_MUX2 U192 ( .A(n181), .B(n182), .S(ss[3]), .Z(N26) );
  GTECH_OAI21 U193 ( .A(ss[2]), .B(n183), .C(n184), .Z(n182) );
  GTECH_NOT U194 ( .A(n185), .Z(n184) );
  GTECH_AND2 U195 ( .A(ss[2]), .B(n186), .Z(n181) );
  GTECH_NAND2 U196 ( .A(n126), .B(n187), .Z(N25) );
  GTECH_NOT U197 ( .A(ena), .Z(n187) );
  GTECH_MUX2 U198 ( .A(n186), .B(n185), .S(ss[2]), .Z(N24) );
  GTECH_OAI21 U199 ( .A(ss[1]), .B(n183), .C(n188), .Z(n185) );
  GTECH_NOT U200 ( .A(n189), .Z(n186) );
  GTECH_NAND3 U201 ( .A(n190), .B(ss[0]), .C(ss[1]), .Z(n189) );
  GTECH_MUX2 U202 ( .A(n191), .B(N22), .S(ss[1]), .Z(N23) );
  GTECH_AND2 U203 ( .A(n190), .B(ss[0]), .Z(n191) );
  GTECH_NOT U204 ( .A(n188), .Z(N22) );
  GTECH_NAND2 U205 ( .A(n190), .B(n192), .Z(n188) );
  GTECH_NOT U206 ( .A(ss[0]), .Z(n192) );
  GTECH_NOT U207 ( .A(n183), .Z(n190) );
  GTECH_NAND2 U208 ( .A(ena), .B(n193), .Z(n183) );
  GTECH_NOT U209 ( .A(N42), .Z(n193) );
  GTECH_NAND2 U210 ( .A(n126), .B(n194), .Z(N42) );
  GTECH_AND2 U211 ( .A(n195), .B(n9), .Z(N122) );
  GTECH_NOT U212 ( .A(n196), .Z(n195) );
  GTECH_NAND2 U213 ( .A(n126), .B(n196), .Z(N121) );
  GTECH_NAND4 U214 ( .A(n197), .B(n7), .C(n134), .D(n198), .Z(n196) );
  GTECH_AND4 U215 ( .A(n6), .B(n5), .C(n105), .D(n199), .Z(n198) );
  GTECH_AND2 U216 ( .A(n200), .B(n201), .Z(N116) );
  GTECH_XOR2 U217 ( .A(n202), .B(n7), .Z(n200) );
  GTECH_OR2 U218 ( .A(n6), .B(n203), .Z(n202) );
  GTECH_NAND3 U219 ( .A(n135), .B(n126), .C(n136), .Z(N115) );
  GTECH_NAND5 U220 ( .A(n8), .B(n7), .C(n6), .D(n5), .E(n204), .Z(n135) );
  GTECH_AND5 U221 ( .A(n131), .B(n199), .C(n205), .D(n106), .E(n105), .Z(n204)
         );
  GTECH_NOT U222 ( .A(n107), .Z(n131) );
  GTECH_AND2 U223 ( .A(n206), .B(n201), .Z(N114) );
  GTECH_XOR2 U224 ( .A(n203), .B(n6), .Z(n206) );
  GTECH_NAND2 U225 ( .A(n207), .B(n199), .Z(n203) );
  GTECH_NOT U226 ( .A(n5), .Z(n207) );
  GTECH_AND2 U227 ( .A(n201), .B(n208), .Z(N112) );
  GTECH_XOR2 U228 ( .A(n5), .B(n120), .Z(n208) );
  GTECH_NOT U229 ( .A(n209), .Z(n201) );
  GTECH_OAI21 U230 ( .A(n209), .B(n199), .C(n126), .Z(N110) );
  GTECH_NOT U231 ( .A(n120), .Z(n199) );
  GTECH_NAND2 U232 ( .A(n210), .B(n134), .Z(n209) );
  GTECH_NOT U233 ( .A(n127), .Z(n134) );
  GTECH_NAND2 U234 ( .A(n205), .B(n126), .Z(n127) );
  GTECH_NOT U235 ( .A(reset), .Z(n126) );
  GTECH_NOT U236 ( .A(n136), .Z(n210) );
  GTECH_NAND3 U237 ( .A(n205), .B(n211), .C(n197), .Z(n136) );
  GTECH_NOT U238 ( .A(n212), .Z(n197) );
  GTECH_NAND3 U239 ( .A(n106), .B(n130), .C(n107), .Z(n212) );
  GTECH_NOT U240 ( .A(n8), .Z(n130) );
  GTECH_NOT U241 ( .A(n105), .Z(n211) );
  GTECH_NOT U242 ( .A(n149), .Z(n205) );
  GTECH_NAND3 U243 ( .A(n150), .B(n213), .C(n109), .Z(n149) );
  GTECH_NOT U244 ( .A(n142), .Z(n213) );
  GTECH_NAND3 U245 ( .A(n141), .B(n147), .C(n4), .Z(n142) );
  GTECH_NOT U246 ( .A(n121), .Z(n147) );
  GTECH_NOT U247 ( .A(n108), .Z(n141) );
  GTECH_NOT U248 ( .A(n166), .Z(n150) );
  GTECH_NAND5 U249 ( .A(n214), .B(n160), .C(n164), .D(n112), .E(n111), .Z(n166) );
  GTECH_NOT U250 ( .A(n180), .Z(n164) );
  GTECH_NAND5 U251 ( .A(n215), .B(n216), .C(n178), .D(ss[6]), .E(ss[4]), .Z(
        n180) );
  GTECH_NOT U252 ( .A(n194), .Z(n178) );
  GTECH_NAND5 U253 ( .A(n217), .B(n218), .C(ena), .D(ss[3]), .E(ss[0]), .Z(
        n194) );
  GTECH_NOT U254 ( .A(ss[2]), .Z(n218) );
  GTECH_NOT U255 ( .A(ss[1]), .Z(n217) );
  GTECH_NOT U256 ( .A(ss[7]), .Z(n216) );
  GTECH_NOT U257 ( .A(ss[5]), .Z(n215) );
  GTECH_NOT U258 ( .A(n113), .Z(n160) );
  GTECH_NOT U259 ( .A(n110), .Z(n214) );
endmodule

