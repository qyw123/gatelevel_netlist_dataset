
module clock_12h ( clk, reset, ena, pm, hh, mm, ss );
  output [7:0] hh;
  output [7:0] mm;
  output [7:0] ss;
  input clk, reset, ena;
  output pm;
  wire   N22, N23, N24, N25, N26, N39, N40, N41, N42, N43, N55, N56, N57, N58,
         N59, N71, N72, N73, N74, N75, N88, N89, N90, N91, N92, N110, N112,
         N114, N115, N116, N121, N122, n4, n5, n6, n7, n8, n9, n81, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204;

  GTECH_FJK1S ss_ones_reg_0_ ( .J(n81), .K(n81), .TI(N22), .TE(N25), .CP(clk), 
        .Q(ss[0]) );
  GTECH_FJK1S ss_ones_reg_2_ ( .J(n81), .K(n81), .TI(N24), .TE(N25), .CP(clk), 
        .Q(ss[2]) );
  GTECH_FJK1S ss_ones_reg_1_ ( .J(n81), .K(n81), .TI(N23), .TE(N25), .CP(clk), 
        .Q(ss[1]) );
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
  GTECH_FJK1S mm_ones_reg_2_ ( .J(n81), .K(n81), .TI(N57), .TE(N58), .CP(clk), 
        .Q(mm[2]), .QN(n113) );
  GTECH_FJK1S mm_ones_reg_1_ ( .J(n81), .K(n81), .TI(N56), .TE(N58), .CP(clk), 
        .Q(mm[1]), .QN(n114) );
  GTECH_FJK1S mm_ones_reg_3_ ( .J(n81), .K(n81), .TI(N59), .TE(N58), .CP(clk), 
        .Q(mm[3]), .QN(n4) );
  GTECH_FJK1S mm_tens_reg_0_ ( .J(n81), .K(n81), .TI(N71), .TE(N74), .CP(clk), 
        .Q(mm[4]), .QN(n110) );
  GTECH_FJK1S mm_tens_reg_2_ ( .J(n81), .K(n81), .TI(N73), .TE(N74), .CP(clk), 
        .Q(mm[6]), .QN(n109) );
  GTECH_FJK1S mm_tens_reg_3_ ( .J(n81), .K(n81), .TI(N75), .TE(N74), .CP(clk), 
        .Q(mm[7]), .QN(n5) );
  GTECH_FJK1S mm_tens_reg_1_ ( .J(n81), .K(n81), .TI(N72), .TE(N74), .CP(clk), 
        .Q(mm[5]), .QN(n111) );
  GTECH_FJK1S hh_tens_reg_0_ ( .J(n81), .K(n81), .TI(N110), .TE(N115), .CP(clk), .Q(hh[4]), .QN(n121) );
  GTECH_FJK1S hh_tens_reg_2_ ( .J(n81), .K(n81), .TI(N114), .TE(N115), .CP(clk), .Q(hh[6]), .QN(n6) );
  GTECH_FJK1S hh_tens_reg_3_ ( .J(n81), .K(n81), .TI(N116), .TE(N115), .CP(clk), .Q(hh[7]), .QN(n7) );
  GTECH_FJK1S hh_ones_reg_0_ ( .J(n81), .K(n81), .TI(N88), .TE(N91), .CP(clk), 
        .Q(hh[0]), .QN(n108) );
  GTECH_FJK1S hh_ones_reg_1_ ( .J(n81), .K(n81), .TI(N89), .TE(N91), .CP(clk), 
        .Q(hh[1]), .QN(n107) );
  GTECH_FJK1S hh_ones_reg_2_ ( .J(n81), .K(n81), .TI(N90), .TE(N91), .CP(clk), 
        .Q(hh[2]), .QN(n106) );
  GTECH_FJK1S hh_ones_reg_3_ ( .J(n81), .K(n81), .TI(N92), .TE(N91), .CP(clk), 
        .Q(hh[3]), .QN(n8) );
  GTECH_FJK1S hh_tens_reg_1_ ( .J(n81), .K(n81), .TI(N112), .TE(N115), .CP(clk), .Q(hh[5]), .QN(n9) );
  GTECH_FJK1S pm_temp_reg ( .J(n81), .K(n81), .TI(N122), .TE(N121), .CP(clk), 
        .Q(pm) );
  GTECH_ZERO U130 ( .Z(n81) );
  GTECH_AND_NOT U131 ( .A(n122), .B(n123), .Z(N92) );
  GTECH_XOR2 U132 ( .A(n124), .B(n8), .Z(n122) );
  GTECH_OR2 U133 ( .A(n106), .B(n125), .Z(n124) );
  GTECH_NAND2 U134 ( .A(n126), .B(n127), .Z(N91) );
  GTECH_AND_NOT U135 ( .A(n128), .B(n123), .Z(N90) );
  GTECH_XOR2 U136 ( .A(n125), .B(n106), .Z(n128) );
  GTECH_NAND2 U137 ( .A(n129), .B(n130), .Z(n125) );
  GTECH_AO21 U138 ( .A(n131), .B(n132), .C(reset), .Z(N89) );
  GTECH_XOR2 U139 ( .A(n108), .B(n107), .Z(n132) );
  GTECH_NOT U140 ( .A(n123), .Z(n131) );
  GTECH_OAI22 U141 ( .A(n127), .B(n133), .C(n129), .D(n123), .Z(N88) );
  GTECH_NAND3 U142 ( .A(n133), .B(n134), .C(n135), .Z(n123) );
  GTECH_OAI22 U143 ( .A(n5), .B(n136), .C(n137), .D(n138), .Z(N75) );
  GTECH_OA21 U144 ( .A(n5), .B(n139), .C(n140), .Z(n137) );
  GTECH_NOT U145 ( .A(n141), .Z(n136) );
  GTECH_MUX2 U146 ( .A(n141), .B(n142), .S(n109), .Z(N73) );
  GTECH_NOR3 U147 ( .A(n110), .B(n111), .C(n138), .Z(n142) );
  GTECH_AO21 U148 ( .A(n143), .B(n111), .C(N71), .Z(n141) );
  GTECH_MUX2 U149 ( .A(N71), .B(n144), .S(n111), .Z(N72) );
  GTECH_AND_NOT U150 ( .A(n143), .B(n110), .Z(n144) );
  GTECH_NOT U151 ( .A(n145), .Z(N71) );
  GTECH_NAND2 U152 ( .A(n110), .B(n143), .Z(n145) );
  GTECH_NOT U153 ( .A(n138), .Z(n143) );
  GTECH_NAND3 U154 ( .A(n146), .B(n126), .C(n147), .Z(n138) );
  GTECH_AND_NOT U155 ( .A(n148), .B(n149), .Z(N59) );
  GTECH_XOR2 U156 ( .A(n150), .B(n4), .Z(n148) );
  GTECH_OR2 U157 ( .A(n113), .B(n151), .Z(n150) );
  GTECH_AND_NOT U158 ( .A(n152), .B(n149), .Z(N57) );
  GTECH_XOR2 U159 ( .A(n151), .B(n113), .Z(n152) );
  GTECH_AND_NOT U160 ( .A(n153), .B(n149), .Z(N56) );
  GTECH_OA21 U161 ( .A(n154), .B(n155), .C(n151), .Z(n153) );
  GTECH_NAND2 U162 ( .A(n155), .B(n154), .Z(n151) );
  GTECH_NOT U163 ( .A(n114), .Z(n154) );
  GTECH_AND_NOT U164 ( .A(n112), .B(n149), .Z(N55) );
  GTECH_NAND2 U165 ( .A(n156), .B(n157), .Z(n149) );
  GTECH_NOT U166 ( .A(N74), .Z(n157) );
  GTECH_NAND2 U167 ( .A(n126), .B(n158), .Z(N74) );
  GTECH_OAI2N2 U168 ( .A(n159), .B(n160), .C(n161), .D(ss[7]), .Z(N43) );
  GTECH_OA21 U169 ( .A(n162), .B(ss[6]), .C(n163), .Z(n159) );
  GTECH_MUX2 U170 ( .A(n164), .B(n161), .S(ss[6]), .Z(N41) );
  GTECH_AO21 U171 ( .A(n165), .B(n166), .C(N39), .Z(n161) );
  GTECH_AND3 U172 ( .A(n165), .B(ss[4]), .C(ss[5]), .Z(n164) );
  GTECH_MUX2 U173 ( .A(n167), .B(N39), .S(ss[5]), .Z(N40) );
  GTECH_AND_NOT U174 ( .A(n165), .B(n168), .Z(n167) );
  GTECH_NOT U175 ( .A(n169), .Z(N39) );
  GTECH_NAND2 U176 ( .A(n165), .B(n168), .Z(n169) );
  GTECH_NOT U177 ( .A(ss[4]), .Z(n168) );
  GTECH_NOT U178 ( .A(n160), .Z(n165) );
  GTECH_NAND2 U179 ( .A(n170), .B(n171), .Z(n160) );
  GTECH_NOT U180 ( .A(N58), .Z(n171) );
  GTECH_NAND2 U181 ( .A(n126), .B(n172), .Z(N58) );
  GTECH_AND_NOT U182 ( .A(n173), .B(n174), .Z(N26) );
  GTECH_XOR2 U183 ( .A(n175), .B(ss[3]), .Z(n174) );
  GTECH_OR_NOT U184 ( .A(n176), .B(ss[2]), .Z(n175) );
  GTECH_NAND2 U185 ( .A(n126), .B(n177), .Z(N25) );
  GTECH_NOT U186 ( .A(ena), .Z(n177) );
  GTECH_AND_NOT U187 ( .A(n173), .B(n178), .Z(N24) );
  GTECH_XOR2 U188 ( .A(n176), .B(ss[2]), .Z(n178) );
  GTECH_AND_NOT U189 ( .A(n179), .B(n180), .Z(N23) );
  GTECH_OA21 U190 ( .A(ss[0]), .B(ss[1]), .C(n176), .Z(n179) );
  GTECH_NAND2 U191 ( .A(ss[1]), .B(ss[0]), .Z(n176) );
  GTECH_AND_NOT U192 ( .A(n173), .B(ss[0]), .Z(N22) );
  GTECH_NOT U193 ( .A(n180), .Z(n173) );
  GTECH_NAND2 U194 ( .A(ena), .B(n181), .Z(n180) );
  GTECH_NOT U195 ( .A(N42), .Z(n181) );
  GTECH_NAND2 U196 ( .A(n126), .B(n182), .Z(N42) );
  GTECH_AND_NOT U197 ( .A(n183), .B(pm), .Z(N122) );
  GTECH_NOT U198 ( .A(n184), .Z(n183) );
  GTECH_NAND2 U199 ( .A(n126), .B(n184), .Z(N121) );
  GTECH_NAND5 U200 ( .A(n135), .B(n9), .C(n8), .D(n7), .E(n185), .Z(n184) );
  GTECH_AND5 U201 ( .A(n129), .B(n186), .C(n106), .D(n6), .E(n107), .Z(n185)
         );
  GTECH_AND_NOT U202 ( .A(n187), .B(n188), .Z(N116) );
  GTECH_XOR2 U203 ( .A(n189), .B(n7), .Z(n187) );
  GTECH_OR2 U204 ( .A(n6), .B(n190), .Z(n189) );
  GTECH_NAND3 U205 ( .A(n134), .B(n126), .C(n133), .Z(N115) );
  GTECH_NAND5 U206 ( .A(n9), .B(n8), .C(n7), .D(n6), .E(n191), .Z(n133) );
  GTECH_AND5 U207 ( .A(n130), .B(n186), .C(n192), .D(n108), .E(n106), .Z(n191)
         );
  GTECH_NOT U208 ( .A(n107), .Z(n130) );
  GTECH_AND_NOT U209 ( .A(n193), .B(n188), .Z(N114) );
  GTECH_XOR2 U210 ( .A(n190), .B(n6), .Z(n193) );
  GTECH_AND_NOT U211 ( .A(n194), .B(n188), .Z(N112) );
  GTECH_OA21 U212 ( .A(n195), .B(n186), .C(n190), .Z(n194) );
  GTECH_NAND2 U213 ( .A(n186), .B(n195), .Z(n190) );
  GTECH_NOT U214 ( .A(n121), .Z(n186) );
  GTECH_NOT U215 ( .A(n9), .Z(n195) );
  GTECH_AO21 U216 ( .A(n121), .B(n196), .C(reset), .Z(N110) );
  GTECH_NOT U217 ( .A(n188), .Z(n196) );
  GTECH_NAND2 U218 ( .A(n197), .B(n135), .Z(n188) );
  GTECH_NOT U219 ( .A(n127), .Z(n135) );
  GTECH_NAND2 U220 ( .A(n192), .B(n126), .Z(n127) );
  GTECH_NOT U221 ( .A(reset), .Z(n126) );
  GTECH_NOT U222 ( .A(n134), .Z(n197) );
  GTECH_NAND5 U223 ( .A(n129), .B(n198), .C(n192), .D(n107), .E(n106), .Z(n134) );
  GTECH_NOT U224 ( .A(n146), .Z(n192) );
  GTECH_NAND3 U225 ( .A(n147), .B(n199), .C(n111), .Z(n146) );
  GTECH_NOT U226 ( .A(n140), .Z(n199) );
  GTECH_NAND3 U227 ( .A(n139), .B(n200), .C(n5), .Z(n140) );
  GTECH_NOT U228 ( .A(n110), .Z(n200) );
  GTECH_NOT U229 ( .A(n109), .Z(n139) );
  GTECH_NOT U230 ( .A(n158), .Z(n147) );
  GTECH_NAND5 U231 ( .A(n155), .B(n201), .C(n156), .D(n114), .E(n113), .Z(n158) );
  GTECH_NOT U232 ( .A(n172), .Z(n156) );
  GTECH_NAND3 U233 ( .A(n202), .B(n166), .C(n170), .Z(n172) );
  GTECH_NOT U234 ( .A(n182), .Z(n170) );
  GTECH_NAND5 U235 ( .A(n203), .B(n204), .C(ena), .D(ss[3]), .E(ss[0]), .Z(
        n182) );
  GTECH_NOT U236 ( .A(ss[2]), .Z(n204) );
  GTECH_NOT U237 ( .A(ss[1]), .Z(n203) );
  GTECH_NOT U238 ( .A(ss[5]), .Z(n166) );
  GTECH_NOT U239 ( .A(n163), .Z(n202) );
  GTECH_NAND3 U240 ( .A(ss[4]), .B(n162), .C(ss[6]), .Z(n163) );
  GTECH_NOT U241 ( .A(ss[7]), .Z(n162) );
  GTECH_NOT U242 ( .A(n4), .Z(n201) );
  GTECH_NOT U243 ( .A(n112), .Z(n155) );
  GTECH_NOT U244 ( .A(n8), .Z(n198) );
  GTECH_NOT U245 ( .A(n108), .Z(n129) );
endmodule

