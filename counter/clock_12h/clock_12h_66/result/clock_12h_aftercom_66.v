
module clock_12h ( clk, reset, ena, pm, hh, mm, ss );
  output [7:0] hh;
  output [7:0] mm;
  output [7:0] ss;
  input clk, reset, ena;
  output pm;
  wire   N22, N23, N24, N25, N26, N39, N40, N41, N42, N43, N55, N56, N57, N58,
         N59, N71, N72, N73, N74, N75, N88, N89, N90, N91, N92, N110, N112,
         N114, N115, N116, N121, N122, n5, n6, n7, n8, n9, n10, n11, n12, n82,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218;

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
  GTECH_FJK1S ss_tens_reg_2_ ( .J(n82), .K(n82), .TI(N41), .TE(N42), .CP(clk), 
        .Q(ss[6]) );
  GTECH_FJK1S ss_tens_reg_3_ ( .J(n82), .K(n82), .TI(N43), .TE(N42), .CP(clk), 
        .Q(ss[7]) );
  GTECH_FJK1S ss_tens_reg_1_ ( .J(n82), .K(n82), .TI(N40), .TE(N42), .CP(clk), 
        .Q(ss[5]) );
  GTECH_FJK1S mm_ones_reg_0_ ( .J(n82), .K(n82), .TI(N55), .TE(N58), .CP(clk), 
        .Q(mm[0]), .QN(n5) );
  GTECH_FJK1S mm_ones_reg_3_ ( .J(n82), .K(n82), .TI(N59), .TE(N58), .CP(clk), 
        .Q(mm[3]), .QN(n113) );
  GTECH_FJK1S mm_ones_reg_1_ ( .J(n82), .K(n82), .TI(N56), .TE(N58), .CP(clk), 
        .Q(mm[1]), .QN(n115) );
  GTECH_FJK1S mm_ones_reg_2_ ( .J(n82), .K(n82), .TI(N57), .TE(N58), .CP(clk), 
        .Q(mm[2]), .QN(n114) );
  GTECH_FJK1S mm_tens_reg_0_ ( .J(n82), .K(n82), .TI(N71), .TE(N74), .CP(clk), 
        .Q(mm[4]), .QN(n6) );
  GTECH_FJK1S mm_tens_reg_2_ ( .J(n82), .K(n82), .TI(N73), .TE(N74), .CP(clk), 
        .Q(mm[6]), .QN(n111) );
  GTECH_FJK1S mm_tens_reg_3_ ( .J(n82), .K(n82), .TI(N75), .TE(N74), .CP(clk), 
        .Q(mm[7]), .QN(n110) );
  GTECH_FJK1S mm_tens_reg_1_ ( .J(n82), .K(n82), .TI(N72), .TE(N74), .CP(clk), 
        .Q(mm[5]), .QN(n112) );
  GTECH_FJK1S hh_tens_reg_0_ ( .J(n82), .K(n82), .TI(N110), .TE(N115), .CP(clk), .Q(hh[4]), .QN(n7) );
  GTECH_FJK1S hh_tens_reg_2_ ( .J(n82), .K(n82), .TI(N114), .TE(N115), .CP(clk), .Q(hh[6]), .QN(n8) );
  GTECH_FJK1S hh_tens_reg_3_ ( .J(n82), .K(n82), .TI(N116), .TE(N115), .CP(clk), .Q(hh[7]), .QN(n9) );
  GTECH_FJK1S hh_ones_reg_0_ ( .J(n82), .K(n82), .TI(N88), .TE(N91), .CP(clk), 
        .Q(hh[0]), .QN(n109) );
  GTECH_FJK1S hh_ones_reg_1_ ( .J(n82), .K(n82), .TI(N89), .TE(N91), .CP(clk), 
        .Q(hh[1]), .QN(n10) );
  GTECH_FJK1S hh_ones_reg_2_ ( .J(n82), .K(n82), .TI(N90), .TE(N91), .CP(clk), 
        .Q(hh[2]), .QN(n108) );
  GTECH_FJK1S hh_ones_reg_3_ ( .J(n82), .K(n82), .TI(N92), .TE(N91), .CP(clk), 
        .Q(hh[3]), .QN(n107) );
  GTECH_FJK1S hh_tens_reg_1_ ( .J(n82), .K(n82), .TI(N112), .TE(N115), .CP(clk), .Q(hh[5]), .QN(n11) );
  GTECH_FJK1S pm_temp_reg ( .J(n82), .K(n82), .TI(N122), .TE(N121), .CP(clk), 
        .Q(pm), .QN(n12) );
  GTECH_ZERO U129 ( .Z(n82) );
  GTECH_AND2 U130 ( .A(n121), .B(n122), .Z(N92) );
  GTECH_XNOR2 U131 ( .A(n107), .B(n123), .Z(n122) );
  GTECH_AND_NOT U132 ( .A(n124), .B(n108), .Z(n123) );
  GTECH_NAND2 U133 ( .A(n125), .B(n126), .Z(N91) );
  GTECH_AND2 U134 ( .A(n127), .B(n121), .Z(N90) );
  GTECH_NOT U135 ( .A(n128), .Z(n121) );
  GTECH_XNOR2 U136 ( .A(n108), .B(n124), .Z(n127) );
  GTECH_NOT U137 ( .A(n129), .Z(n124) );
  GTECH_NAND2 U138 ( .A(n130), .B(n131), .Z(n129) );
  GTECH_OAI21 U139 ( .A(n132), .B(n128), .C(n125), .Z(N89) );
  GTECH_XNOR2 U140 ( .A(n109), .B(n10), .Z(n132) );
  GTECH_OAI22 U141 ( .A(n126), .B(n133), .C(n130), .D(n128), .Z(N88) );
  GTECH_NAND3 U142 ( .A(n133), .B(n134), .C(n135), .Z(n128) );
  GTECH_MUX2 U143 ( .A(n136), .B(n137), .S(n110), .Z(N75) );
  GTECH_AND2 U144 ( .A(n138), .B(n139), .Z(n137) );
  GTECH_OAI21 U145 ( .A(n140), .B(n139), .C(n141), .Z(n136) );
  GTECH_NOT U146 ( .A(n142), .Z(N73) );
  GTECH_MUX2 U147 ( .A(n141), .B(n143), .S(n111), .Z(n142) );
  GTECH_OR2 U148 ( .A(n112), .B(n144), .Z(n143) );
  GTECH_OAI21 U149 ( .A(n6), .B(n112), .C(n145), .Z(n141) );
  GTECH_MUX2 U150 ( .A(N71), .B(n138), .S(n112), .Z(N72) );
  GTECH_NOT U151 ( .A(n144), .Z(n138) );
  GTECH_NAND2 U152 ( .A(n145), .B(n146), .Z(n144) );
  GTECH_NOT U153 ( .A(n147), .Z(N71) );
  GTECH_NAND2 U154 ( .A(n6), .B(n145), .Z(n147) );
  GTECH_NOT U155 ( .A(n140), .Z(n145) );
  GTECH_NAND3 U156 ( .A(n148), .B(n125), .C(n149), .Z(n140) );
  GTECH_OAI22 U157 ( .A(n113), .B(n150), .C(n151), .D(n152), .Z(N59) );
  GTECH_MUX2 U158 ( .A(n153), .B(n154), .S(n113), .Z(n152) );
  GTECH_NAND2 U159 ( .A(n155), .B(n153), .Z(n154) );
  GTECH_NOT U160 ( .A(n114), .Z(n153) );
  GTECH_MUX2 U161 ( .A(n156), .B(n157), .S(n114), .Z(N57) );
  GTECH_AND2 U162 ( .A(n158), .B(n155), .Z(n157) );
  GTECH_NOT U163 ( .A(n159), .Z(n155) );
  GTECH_NOT U164 ( .A(n150), .Z(n156) );
  GTECH_NAND2 U165 ( .A(n158), .B(n159), .Z(n150) );
  GTECH_NAND2 U166 ( .A(n160), .B(n161), .Z(n159) );
  GTECH_NOT U167 ( .A(n115), .Z(n160) );
  GTECH_MUX2 U168 ( .A(N55), .B(n162), .S(n115), .Z(N56) );
  GTECH_AND2 U169 ( .A(n158), .B(n161), .Z(n162) );
  GTECH_NOT U170 ( .A(n163), .Z(N55) );
  GTECH_NAND2 U171 ( .A(n5), .B(n158), .Z(n163) );
  GTECH_NOT U172 ( .A(n151), .Z(n158) );
  GTECH_NAND2 U173 ( .A(n164), .B(n165), .Z(n151) );
  GTECH_NOT U174 ( .A(N74), .Z(n165) );
  GTECH_NAND2 U175 ( .A(n125), .B(n166), .Z(N74) );
  GTECH_OAI22 U176 ( .A(n167), .B(n168), .C(n169), .D(n170), .Z(N43) );
  GTECH_OA21 U177 ( .A(ss[6]), .B(n167), .C(n171), .Z(n169) );
  GTECH_MUX2 U178 ( .A(n172), .B(n173), .S(ss[6]), .Z(N41) );
  GTECH_NOT U179 ( .A(n168), .Z(n173) );
  GTECH_OAI21 U180 ( .A(n174), .B(n175), .C(n176), .Z(n168) );
  GTECH_AND3 U181 ( .A(n176), .B(ss[4]), .C(ss[5]), .Z(n172) );
  GTECH_MUX2 U182 ( .A(n177), .B(N39), .S(ss[5]), .Z(N40) );
  GTECH_AND2 U183 ( .A(n176), .B(ss[4]), .Z(n177) );
  GTECH_NOT U184 ( .A(n178), .Z(N39) );
  GTECH_NAND2 U185 ( .A(n176), .B(n174), .Z(n178) );
  GTECH_NOT U186 ( .A(ss[4]), .Z(n174) );
  GTECH_NOT U187 ( .A(n170), .Z(n176) );
  GTECH_NAND2 U188 ( .A(n179), .B(n180), .Z(n170) );
  GTECH_NOT U189 ( .A(N58), .Z(n180) );
  GTECH_NAND2 U190 ( .A(n125), .B(n181), .Z(N58) );
  GTECH_OAI22 U191 ( .A(n182), .B(n183), .C(n184), .D(n185), .Z(N26) );
  GTECH_MUX2 U192 ( .A(n182), .B(n186), .S(ss[2]), .Z(n185) );
  GTECH_NAND2 U193 ( .A(n187), .B(n182), .Z(n186) );
  GTECH_NOT U194 ( .A(ss[3]), .Z(n182) );
  GTECH_NAND2 U195 ( .A(n125), .B(n188), .Z(N25) );
  GTECH_NOT U196 ( .A(ena), .Z(n188) );
  GTECH_MUX2 U197 ( .A(n189), .B(n190), .S(ss[2]), .Z(N24) );
  GTECH_NOT U198 ( .A(n183), .Z(n190) );
  GTECH_NAND2 U199 ( .A(n191), .B(n192), .Z(n183) );
  GTECH_AND2 U200 ( .A(n191), .B(n187), .Z(n189) );
  GTECH_NOT U201 ( .A(n192), .Z(n187) );
  GTECH_NAND2 U202 ( .A(ss[1]), .B(ss[0]), .Z(n192) );
  GTECH_MUX2 U203 ( .A(n193), .B(N22), .S(ss[1]), .Z(N23) );
  GTECH_AND2 U204 ( .A(n191), .B(ss[0]), .Z(n193) );
  GTECH_NOT U205 ( .A(n194), .Z(N22) );
  GTECH_NAND2 U206 ( .A(n191), .B(n195), .Z(n194) );
  GTECH_NOT U207 ( .A(ss[0]), .Z(n195) );
  GTECH_NOT U208 ( .A(n184), .Z(n191) );
  GTECH_NAND2 U209 ( .A(ena), .B(n196), .Z(n184) );
  GTECH_NOT U210 ( .A(N42), .Z(n196) );
  GTECH_NAND2 U211 ( .A(n125), .B(n197), .Z(N42) );
  GTECH_AND2 U212 ( .A(n198), .B(n12), .Z(N122) );
  GTECH_NOT U213 ( .A(n199), .Z(n198) );
  GTECH_NAND2 U214 ( .A(n125), .B(n199), .Z(N121) );
  GTECH_NAND4 U215 ( .A(n135), .B(n200), .C(n10), .D(n130), .Z(n199) );
  GTECH_AND2 U216 ( .A(n201), .B(n202), .Z(N116) );
  GTECH_XNOR2 U217 ( .A(n9), .B(n203), .Z(n202) );
  GTECH_AND_NOT U218 ( .A(n204), .B(n8), .Z(n203) );
  GTECH_NAND3 U219 ( .A(n134), .B(n125), .C(n133), .Z(N115) );
  GTECH_NAND4 U220 ( .A(n109), .B(n200), .C(n205), .D(n131), .Z(n133) );
  GTECH_NOT U221 ( .A(n10), .Z(n131) );
  GTECH_AND3 U222 ( .A(n8), .B(n11), .C(n206), .Z(n200) );
  GTECH_AND4 U223 ( .A(n207), .B(n107), .C(n108), .D(n9), .Z(n206) );
  GTECH_AND2 U224 ( .A(n208), .B(n201), .Z(N114) );
  GTECH_XNOR2 U225 ( .A(n8), .B(n204), .Z(n208) );
  GTECH_NOT U226 ( .A(n209), .Z(n204) );
  GTECH_NAND2 U227 ( .A(n207), .B(n210), .Z(n209) );
  GTECH_AND2 U228 ( .A(n201), .B(n211), .Z(N112) );
  GTECH_XNOR2 U229 ( .A(n7), .B(n210), .Z(n211) );
  GTECH_NOT U230 ( .A(n11), .Z(n210) );
  GTECH_NOT U231 ( .A(n212), .Z(n201) );
  GTECH_OAI21 U232 ( .A(n212), .B(n207), .C(n125), .Z(N110) );
  GTECH_NOT U233 ( .A(n7), .Z(n207) );
  GTECH_NAND2 U234 ( .A(n213), .B(n135), .Z(n212) );
  GTECH_NOT U235 ( .A(n126), .Z(n135) );
  GTECH_NAND2 U236 ( .A(n205), .B(n125), .Z(n126) );
  GTECH_NOT U237 ( .A(reset), .Z(n125) );
  GTECH_NOT U238 ( .A(n134), .Z(n213) );
  GTECH_NAND5 U239 ( .A(n214), .B(n130), .C(n205), .D(n108), .E(n10), .Z(n134)
         );
  GTECH_NOT U240 ( .A(n148), .Z(n205) );
  GTECH_NAND5 U241 ( .A(n139), .B(n146), .C(n149), .D(n112), .E(n110), .Z(n148) );
  GTECH_NOT U242 ( .A(n166), .Z(n149) );
  GTECH_NAND5 U243 ( .A(n215), .B(n161), .C(n164), .D(n115), .E(n114), .Z(n166) );
  GTECH_NOT U244 ( .A(n181), .Z(n164) );
  GTECH_NAND3 U245 ( .A(n216), .B(n175), .C(n179), .Z(n181) );
  GTECH_NOT U246 ( .A(n197), .Z(n179) );
  GTECH_NAND5 U247 ( .A(n217), .B(n218), .C(ena), .D(ss[3]), .E(ss[0]), .Z(
        n197) );
  GTECH_NOT U248 ( .A(ss[2]), .Z(n218) );
  GTECH_NOT U249 ( .A(ss[1]), .Z(n217) );
  GTECH_NOT U250 ( .A(ss[5]), .Z(n175) );
  GTECH_NOT U251 ( .A(n171), .Z(n216) );
  GTECH_NAND3 U252 ( .A(ss[4]), .B(n167), .C(ss[6]), .Z(n171) );
  GTECH_NOT U253 ( .A(ss[7]), .Z(n167) );
  GTECH_NOT U254 ( .A(n5), .Z(n161) );
  GTECH_NOT U255 ( .A(n113), .Z(n215) );
  GTECH_NOT U256 ( .A(n6), .Z(n146) );
  GTECH_NOT U257 ( .A(n111), .Z(n139) );
  GTECH_NOT U258 ( .A(n109), .Z(n130) );
  GTECH_NOT U259 ( .A(n107), .Z(n214) );
endmodule

