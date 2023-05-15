
module clock_12h ( clk, reset, ena, pm, hh, mm, ss );
  output [7:0] hh;
  output [7:0] mm;
  output [7:0] ss;
  input clk, reset, ena;
  output pm;
  wire   N22, N23, N24, N25, N26, N39, N40, N41, N42, N43, N55, N56, N57, N58,
         N59, N71, N72, N73, N74, N75, N88, N89, N90, N91, N92, N110, N112,
         N114, N115, N116, N121, N122, n3, n4, n5, n6, n7, n8, n79, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201;

  GTECH_FJK1S ss_ones_reg_0_ ( .J(n79), .K(n79), .TI(N22), .TE(N25), .CP(clk), 
        .Q(ss[0]) );
  GTECH_FJK1S ss_ones_reg_3_ ( .J(n79), .K(n79), .TI(N26), .TE(N25), .CP(clk), 
        .Q(ss[3]) );
  GTECH_FJK1S ss_ones_reg_1_ ( .J(n79), .K(n79), .TI(N23), .TE(N25), .CP(clk), 
        .Q(ss[1]) );
  GTECH_FJK1S ss_ones_reg_2_ ( .J(n79), .K(n79), .TI(N24), .TE(N25), .CP(clk), 
        .Q(ss[2]) );
  GTECH_FJK1S ss_tens_reg_0_ ( .J(n79), .K(n79), .TI(N39), .TE(N42), .CP(clk), 
        .Q(ss[4]) );
  GTECH_FJK1S ss_tens_reg_3_ ( .J(n79), .K(n79), .TI(N43), .TE(N42), .CP(clk), 
        .Q(ss[7]) );
  GTECH_FJK1S ss_tens_reg_1_ ( .J(n79), .K(n79), .TI(N40), .TE(N42), .CP(clk), 
        .Q(ss[5]) );
  GTECH_FJK1S ss_tens_reg_2_ ( .J(n79), .K(n79), .TI(N41), .TE(N42), .CP(clk), 
        .Q(ss[6]) );
  GTECH_FJK1S mm_ones_reg_0_ ( .J(n79), .K(n79), .TI(N55), .TE(N58), .CP(clk), 
        .Q(mm[0]), .QN(n3) );
  GTECH_FJK1S mm_ones_reg_3_ ( .J(n79), .K(n79), .TI(N59), .TE(N58), .CP(clk), 
        .Q(mm[3]), .QN(n111) );
  GTECH_FJK1S mm_ones_reg_1_ ( .J(n79), .K(n79), .TI(N56), .TE(N58), .CP(clk), 
        .Q(mm[1]), .QN(n113) );
  GTECH_FJK1S mm_ones_reg_2_ ( .J(n79), .K(n79), .TI(N57), .TE(N58), .CP(clk), 
        .Q(mm[2]), .QN(n112) );
  GTECH_FJK1S mm_tens_reg_0_ ( .J(n79), .K(n79), .TI(N71), .TE(N74), .CP(clk), 
        .Q(mm[4]), .QN(n110) );
  GTECH_FJK1S mm_tens_reg_3_ ( .J(n79), .K(n79), .TI(N75), .TE(N74), .CP(clk), 
        .Q(mm[7]), .QN(n107) );
  GTECH_FJK1S mm_tens_reg_1_ ( .J(n79), .K(n79), .TI(N72), .TE(N74), .CP(clk), 
        .Q(mm[5]), .QN(n109) );
  GTECH_FJK1S mm_tens_reg_2_ ( .J(n79), .K(n79), .TI(N73), .TE(N74), .CP(clk), 
        .Q(mm[6]), .QN(n108) );
  GTECH_FJK1S hh_tens_reg_0_ ( .J(n79), .K(n79), .TI(N110), .TE(N115), .CP(clk), .Q(hh[4]), .QN(n4) );
  GTECH_FJK1S hh_tens_reg_2_ ( .J(n79), .K(n79), .TI(N114), .TE(N115), .CP(clk), .Q(hh[6]), .QN(n5) );
  GTECH_FJK1S hh_tens_reg_3_ ( .J(n79), .K(n79), .TI(N116), .TE(N115), .CP(clk), .Q(hh[7]), .QN(n6) );
  GTECH_FJK1S hh_ones_reg_0_ ( .J(n79), .K(n79), .TI(N88), .TE(N91), .CP(clk), 
        .Q(hh[0]), .QN(n105) );
  GTECH_FJK1S hh_ones_reg_1_ ( .J(n79), .K(n79), .TI(N89), .TE(N91), .CP(clk), 
        .Q(hh[1]), .QN(n106) );
  GTECH_FJK1S hh_ones_reg_2_ ( .J(n79), .K(n79), .TI(N90), .TE(N91), .CP(clk), 
        .Q(hh[2]), .QN(n104) );
  GTECH_FJK1S hh_ones_reg_3_ ( .J(n79), .K(n79), .TI(N92), .TE(N91), .CP(clk), 
        .Q(hh[3]), .QN(n7) );
  GTECH_FJK1S hh_tens_reg_1_ ( .J(n79), .K(n79), .TI(N112), .TE(N115), .CP(clk), .Q(hh[5]), .QN(n8) );
  GTECH_FJK1S pm_temp_reg ( .J(n79), .K(n79), .TI(N122), .TE(N121), .CP(clk), 
        .Q(pm) );
  GTECH_ZERO U129 ( .Z(n79) );
  GTECH_AND_NOT U130 ( .A(n121), .B(n122), .Z(N92) );
  GTECH_XOR2 U131 ( .A(n123), .B(n7), .Z(n121) );
  GTECH_OR2 U132 ( .A(n104), .B(n124), .Z(n123) );
  GTECH_NAND2 U133 ( .A(n125), .B(n126), .Z(N91) );
  GTECH_AND_NOT U134 ( .A(n127), .B(n122), .Z(N90) );
  GTECH_XOR2 U135 ( .A(n124), .B(n104), .Z(n127) );
  GTECH_NAND2 U136 ( .A(n128), .B(n129), .Z(n124) );
  GTECH_OAI21 U137 ( .A(n130), .B(n122), .C(n125), .Z(N89) );
  GTECH_XOR2 U138 ( .A(n129), .B(n106), .Z(n130) );
  GTECH_OAI22 U139 ( .A(n126), .B(n131), .C(n129), .D(n122), .Z(N88) );
  GTECH_NAND3 U140 ( .A(n132), .B(n131), .C(n133), .Z(n122) );
  GTECH_AND_NOT U141 ( .A(n134), .B(n135), .Z(N75) );
  GTECH_MUX2 U142 ( .A(n136), .B(n137), .S(n107), .Z(n134) );
  GTECH_AND_NOT U143 ( .A(n138), .B(n110), .Z(n137) );
  GTECH_OR_NOT U144 ( .A(n139), .B(n138), .Z(n136) );
  GTECH_AND_NOT U145 ( .A(n140), .B(n135), .Z(N73) );
  GTECH_XOR2 U146 ( .A(n139), .B(n108), .Z(n140) );
  GTECH_AND_NOT U147 ( .A(n141), .B(n135), .Z(N72) );
  GTECH_OA21 U148 ( .A(n142), .B(n143), .C(n139), .Z(n141) );
  GTECH_NAND2 U149 ( .A(n142), .B(n143), .Z(n139) );
  GTECH_NOT U150 ( .A(n109), .Z(n142) );
  GTECH_AND_NOT U151 ( .A(n110), .B(n135), .Z(N71) );
  GTECH_NAND3 U152 ( .A(n144), .B(n125), .C(n145), .Z(n135) );
  GTECH_AND_NOT U153 ( .A(n146), .B(n147), .Z(N59) );
  GTECH_XOR2 U154 ( .A(n148), .B(n111), .Z(n146) );
  GTECH_OR2 U155 ( .A(n112), .B(n149), .Z(n148) );
  GTECH_AND_NOT U156 ( .A(n150), .B(n147), .Z(N57) );
  GTECH_XOR2 U157 ( .A(n149), .B(n112), .Z(n150) );
  GTECH_AND_NOT U158 ( .A(n151), .B(n147), .Z(N56) );
  GTECH_OA21 U159 ( .A(n152), .B(n153), .C(n149), .Z(n151) );
  GTECH_NAND2 U160 ( .A(n152), .B(n153), .Z(n149) );
  GTECH_NOT U161 ( .A(n113), .Z(n152) );
  GTECH_AND_NOT U162 ( .A(n3), .B(n147), .Z(N55) );
  GTECH_NAND2 U163 ( .A(n154), .B(n155), .Z(n147) );
  GTECH_NOT U164 ( .A(N74), .Z(n155) );
  GTECH_NAND2 U165 ( .A(n125), .B(n156), .Z(N74) );
  GTECH_NOR2 U166 ( .A(n157), .B(n158), .Z(N43) );
  GTECH_MUX2 U167 ( .A(n159), .B(n160), .S(ss[7]), .Z(n158) );
  GTECH_AND_NOT U168 ( .A(ss[6]), .B(n161), .Z(n160) );
  GTECH_NAND2 U169 ( .A(ss[6]), .B(ss[4]), .Z(n159) );
  GTECH_AND_NOT U170 ( .A(n162), .B(n163), .Z(N41) );
  GTECH_XOR2 U171 ( .A(n161), .B(ss[6]), .Z(n163) );
  GTECH_AND_NOT U172 ( .A(n164), .B(n157), .Z(N40) );
  GTECH_OA21 U173 ( .A(ss[4]), .B(ss[5]), .C(n161), .Z(n164) );
  GTECH_NAND2 U174 ( .A(ss[5]), .B(ss[4]), .Z(n161) );
  GTECH_AND_NOT U175 ( .A(n162), .B(ss[4]), .Z(N39) );
  GTECH_NOT U176 ( .A(n157), .Z(n162) );
  GTECH_NAND2 U177 ( .A(n165), .B(n166), .Z(n157) );
  GTECH_NOT U178 ( .A(N58), .Z(n166) );
  GTECH_NAND2 U179 ( .A(n125), .B(n167), .Z(N58) );
  GTECH_OAI22 U180 ( .A(n168), .B(n169), .C(n170), .D(n171), .Z(N26) );
  GTECH_MUX2 U181 ( .A(n168), .B(n172), .S(ss[2]), .Z(n171) );
  GTECH_OR_NOT U182 ( .A(n173), .B(n168), .Z(n172) );
  GTECH_NOT U183 ( .A(ss[3]), .Z(n168) );
  GTECH_NAND2 U184 ( .A(n125), .B(n174), .Z(N25) );
  GTECH_NOT U185 ( .A(ena), .Z(n174) );
  GTECH_MUX2 U186 ( .A(n175), .B(n176), .S(ss[2]), .Z(N24) );
  GTECH_AND_NOT U187 ( .A(n177), .B(n173), .Z(n175) );
  GTECH_OA21 U188 ( .A(ss[0]), .B(ss[1]), .C(n176), .Z(N23) );
  GTECH_NOT U189 ( .A(n169), .Z(n176) );
  GTECH_NAND2 U190 ( .A(n177), .B(n173), .Z(n169) );
  GTECH_NAND2 U191 ( .A(ss[1]), .B(ss[0]), .Z(n173) );
  GTECH_AND_NOT U192 ( .A(n177), .B(ss[0]), .Z(N22) );
  GTECH_NOT U193 ( .A(n170), .Z(n177) );
  GTECH_NAND2 U194 ( .A(ena), .B(n178), .Z(n170) );
  GTECH_NOT U195 ( .A(N42), .Z(n178) );
  GTECH_NAND2 U196 ( .A(n125), .B(n179), .Z(N42) );
  GTECH_AND_NOT U197 ( .A(n180), .B(pm), .Z(N122) );
  GTECH_NOT U198 ( .A(n181), .Z(n180) );
  GTECH_NAND2 U199 ( .A(n125), .B(n181), .Z(N121) );
  GTECH_NAND4 U200 ( .A(n182), .B(n8), .C(n133), .D(n183), .Z(n181) );
  GTECH_AND4 U201 ( .A(n7), .B(n6), .C(n5), .D(n184), .Z(n183) );
  GTECH_AND_NOT U202 ( .A(n185), .B(n186), .Z(N116) );
  GTECH_XOR2 U203 ( .A(n187), .B(n6), .Z(n185) );
  GTECH_OR2 U204 ( .A(n5), .B(n188), .Z(n187) );
  GTECH_NAND3 U205 ( .A(n131), .B(n125), .C(n132), .Z(N115) );
  GTECH_NAND5 U206 ( .A(n8), .B(n7), .C(n6), .D(n5), .E(n189), .Z(n131) );
  GTECH_AND5 U207 ( .A(n128), .B(n184), .C(n190), .D(n105), .E(n104), .Z(n189)
         );
  GTECH_NOT U208 ( .A(n106), .Z(n128) );
  GTECH_AND_NOT U209 ( .A(n191), .B(n186), .Z(N114) );
  GTECH_XOR2 U210 ( .A(n188), .B(n5), .Z(n191) );
  GTECH_AND_NOT U211 ( .A(n192), .B(n186), .Z(N112) );
  GTECH_OA21 U212 ( .A(n193), .B(n184), .C(n188), .Z(n192) );
  GTECH_NAND2 U213 ( .A(n184), .B(n193), .Z(n188) );
  GTECH_NOT U214 ( .A(n8), .Z(n193) );
  GTECH_OAI21 U215 ( .A(n186), .B(n184), .C(n125), .Z(N110) );
  GTECH_NOT U216 ( .A(n4), .Z(n184) );
  GTECH_NAND2 U217 ( .A(n194), .B(n133), .Z(n186) );
  GTECH_NOT U218 ( .A(n126), .Z(n133) );
  GTECH_NAND2 U219 ( .A(n190), .B(n125), .Z(n126) );
  GTECH_NOT U220 ( .A(reset), .Z(n125) );
  GTECH_NOT U221 ( .A(n132), .Z(n194) );
  GTECH_NAND3 U222 ( .A(n190), .B(n195), .C(n182), .Z(n132) );
  GTECH_NOT U223 ( .A(n196), .Z(n182) );
  GTECH_NAND3 U224 ( .A(n104), .B(n129), .C(n106), .Z(n196) );
  GTECH_NOT U225 ( .A(n105), .Z(n129) );
  GTECH_NOT U226 ( .A(n7), .Z(n195) );
  GTECH_NOT U227 ( .A(n144), .Z(n190) );
  GTECH_NAND5 U228 ( .A(n138), .B(n143), .C(n145), .D(n109), .E(n107), .Z(n144) );
  GTECH_NOT U229 ( .A(n156), .Z(n145) );
  GTECH_NAND5 U230 ( .A(n197), .B(n153), .C(n154), .D(n113), .E(n112), .Z(n156) );
  GTECH_NOT U231 ( .A(n167), .Z(n154) );
  GTECH_NAND5 U232 ( .A(n198), .B(n199), .C(n165), .D(ss[6]), .E(ss[4]), .Z(
        n167) );
  GTECH_NOT U233 ( .A(n179), .Z(n165) );
  GTECH_NAND5 U234 ( .A(n200), .B(n201), .C(ena), .D(ss[3]), .E(ss[0]), .Z(
        n179) );
  GTECH_NOT U235 ( .A(ss[2]), .Z(n201) );
  GTECH_NOT U236 ( .A(ss[1]), .Z(n200) );
  GTECH_NOT U237 ( .A(ss[7]), .Z(n199) );
  GTECH_NOT U238 ( .A(ss[5]), .Z(n198) );
  GTECH_NOT U239 ( .A(n3), .Z(n153) );
  GTECH_NOT U240 ( .A(n111), .Z(n197) );
  GTECH_NOT U241 ( .A(n110), .Z(n143) );
  GTECH_NOT U242 ( .A(n108), .Z(n138) );
endmodule

