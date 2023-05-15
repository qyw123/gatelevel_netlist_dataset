
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
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200;

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
  GTECH_NOR3 U141 ( .A(n134), .B(n135), .C(n136), .Z(N75) );
  GTECH_NOR3 U142 ( .A(n137), .B(n107), .C(n108), .Z(n136) );
  GTECH_OA21 U143 ( .A(n110), .B(n108), .C(n107), .Z(n134) );
  GTECH_AND_NOT U144 ( .A(n138), .B(n135), .Z(N73) );
  GTECH_XOR2 U145 ( .A(n137), .B(n108), .Z(n138) );
  GTECH_AND_NOT U146 ( .A(n139), .B(n135), .Z(N72) );
  GTECH_OA21 U147 ( .A(n140), .B(n141), .C(n137), .Z(n139) );
  GTECH_NAND2 U148 ( .A(n140), .B(n141), .Z(n137) );
  GTECH_NOT U149 ( .A(n109), .Z(n140) );
  GTECH_AND_NOT U150 ( .A(n110), .B(n135), .Z(N71) );
  GTECH_NAND3 U151 ( .A(n142), .B(n125), .C(n143), .Z(n135) );
  GTECH_AND_NOT U152 ( .A(n144), .B(n145), .Z(N59) );
  GTECH_XOR2 U153 ( .A(n146), .B(n111), .Z(n144) );
  GTECH_OR2 U154 ( .A(n112), .B(n147), .Z(n146) );
  GTECH_AND_NOT U155 ( .A(n148), .B(n145), .Z(N57) );
  GTECH_XOR2 U156 ( .A(n147), .B(n112), .Z(n148) );
  GTECH_AND_NOT U157 ( .A(n149), .B(n145), .Z(N56) );
  GTECH_OA21 U158 ( .A(n150), .B(n151), .C(n147), .Z(n149) );
  GTECH_NAND2 U159 ( .A(n150), .B(n151), .Z(n147) );
  GTECH_NOT U160 ( .A(n113), .Z(n150) );
  GTECH_AND_NOT U161 ( .A(n3), .B(n145), .Z(N55) );
  GTECH_NAND2 U162 ( .A(n152), .B(n153), .Z(n145) );
  GTECH_NOT U163 ( .A(N74), .Z(n153) );
  GTECH_NAND2 U164 ( .A(n125), .B(n154), .Z(N74) );
  GTECH_AND_NOT U165 ( .A(n155), .B(n156), .Z(N43) );
  GTECH_OA21 U166 ( .A(n157), .B(n158), .C(n159), .Z(n155) );
  GTECH_AO21 U167 ( .A(ss[4]), .B(ss[6]), .C(ss[7]), .Z(n159) );
  GTECH_NAND2 U168 ( .A(ss[6]), .B(ss[7]), .Z(n158) );
  GTECH_AND_NOT U169 ( .A(n160), .B(n161), .Z(N41) );
  GTECH_XOR2 U170 ( .A(n157), .B(ss[6]), .Z(n161) );
  GTECH_AND_NOT U171 ( .A(n162), .B(n156), .Z(N40) );
  GTECH_OA21 U172 ( .A(ss[4]), .B(ss[5]), .C(n157), .Z(n162) );
  GTECH_NAND2 U173 ( .A(ss[5]), .B(ss[4]), .Z(n157) );
  GTECH_AND_NOT U174 ( .A(n160), .B(ss[4]), .Z(N39) );
  GTECH_NOT U175 ( .A(n156), .Z(n160) );
  GTECH_NAND2 U176 ( .A(n163), .B(n164), .Z(n156) );
  GTECH_NOT U177 ( .A(N58), .Z(n164) );
  GTECH_NAND2 U178 ( .A(n125), .B(n165), .Z(N58) );
  GTECH_OAI22 U179 ( .A(n166), .B(n167), .C(n168), .D(n169), .Z(N26) );
  GTECH_OAI21 U180 ( .A(ss[3]), .B(ss[2]), .C(n170), .Z(n169) );
  GTECH_OAI21 U181 ( .A(ss[3]), .B(n171), .C(ss[2]), .Z(n170) );
  GTECH_NOT U182 ( .A(ss[3]), .Z(n166) );
  GTECH_NAND2 U183 ( .A(n125), .B(n172), .Z(N25) );
  GTECH_NOT U184 ( .A(ena), .Z(n172) );
  GTECH_OAI21 U185 ( .A(n167), .B(n173), .C(n174), .Z(N24) );
  GTECH_OR3 U186 ( .A(n171), .B(ss[2]), .C(n168), .Z(n174) );
  GTECH_OA21 U187 ( .A(ss[0]), .B(ss[1]), .C(n175), .Z(N23) );
  GTECH_NOT U188 ( .A(n167), .Z(n175) );
  GTECH_NAND2 U189 ( .A(n176), .B(n171), .Z(n167) );
  GTECH_NAND2 U190 ( .A(ss[1]), .B(ss[0]), .Z(n171) );
  GTECH_AND_NOT U191 ( .A(n176), .B(ss[0]), .Z(N22) );
  GTECH_NOT U192 ( .A(n168), .Z(n176) );
  GTECH_NAND2 U193 ( .A(ena), .B(n177), .Z(n168) );
  GTECH_NOT U194 ( .A(N42), .Z(n177) );
  GTECH_NAND2 U195 ( .A(n125), .B(n178), .Z(N42) );
  GTECH_AND_NOT U196 ( .A(n179), .B(pm), .Z(N122) );
  GTECH_NOT U197 ( .A(n180), .Z(n179) );
  GTECH_NAND2 U198 ( .A(n125), .B(n180), .Z(N121) );
  GTECH_NAND4 U199 ( .A(n181), .B(n8), .C(n133), .D(n182), .Z(n180) );
  GTECH_AND4 U200 ( .A(n7), .B(n6), .C(n5), .D(n183), .Z(n182) );
  GTECH_AND_NOT U201 ( .A(n184), .B(n185), .Z(N116) );
  GTECH_XOR2 U202 ( .A(n186), .B(n6), .Z(n184) );
  GTECH_OR2 U203 ( .A(n5), .B(n187), .Z(n186) );
  GTECH_NAND3 U204 ( .A(n131), .B(n125), .C(n132), .Z(N115) );
  GTECH_NAND5 U205 ( .A(n8), .B(n7), .C(n6), .D(n5), .E(n188), .Z(n131) );
  GTECH_AND5 U206 ( .A(n128), .B(n183), .C(n189), .D(n105), .E(n104), .Z(n188)
         );
  GTECH_NOT U207 ( .A(n106), .Z(n128) );
  GTECH_AND_NOT U208 ( .A(n190), .B(n185), .Z(N114) );
  GTECH_XOR2 U209 ( .A(n187), .B(n5), .Z(n190) );
  GTECH_AND_NOT U210 ( .A(n191), .B(n185), .Z(N112) );
  GTECH_OA21 U211 ( .A(n192), .B(n183), .C(n187), .Z(n191) );
  GTECH_NAND2 U212 ( .A(n183), .B(n192), .Z(n187) );
  GTECH_NOT U213 ( .A(n8), .Z(n192) );
  GTECH_OAI21 U214 ( .A(n185), .B(n183), .C(n125), .Z(N110) );
  GTECH_NOT U215 ( .A(n4), .Z(n183) );
  GTECH_NAND2 U216 ( .A(n193), .B(n133), .Z(n185) );
  GTECH_NOT U217 ( .A(n126), .Z(n133) );
  GTECH_NAND2 U218 ( .A(n189), .B(n125), .Z(n126) );
  GTECH_NOT U219 ( .A(reset), .Z(n125) );
  GTECH_NOT U220 ( .A(n132), .Z(n193) );
  GTECH_NAND3 U221 ( .A(n189), .B(n194), .C(n181), .Z(n132) );
  GTECH_NOT U222 ( .A(n195), .Z(n181) );
  GTECH_NAND3 U223 ( .A(n104), .B(n129), .C(n106), .Z(n195) );
  GTECH_NOT U224 ( .A(n105), .Z(n129) );
  GTECH_NOT U225 ( .A(n7), .Z(n194) );
  GTECH_NOT U226 ( .A(n142), .Z(n189) );
  GTECH_NAND5 U227 ( .A(n196), .B(n141), .C(n143), .D(n109), .E(n107), .Z(n142) );
  GTECH_NOT U228 ( .A(n154), .Z(n143) );
  GTECH_NAND5 U229 ( .A(n197), .B(n151), .C(n152), .D(n113), .E(n112), .Z(n154) );
  GTECH_NOT U230 ( .A(n165), .Z(n152) );
  GTECH_NAND5 U231 ( .A(n198), .B(n199), .C(n163), .D(ss[6]), .E(ss[4]), .Z(
        n165) );
  GTECH_NOT U232 ( .A(n178), .Z(n163) );
  GTECH_NAND5 U233 ( .A(n200), .B(n173), .C(ena), .D(ss[3]), .E(ss[0]), .Z(
        n178) );
  GTECH_NOT U234 ( .A(ss[2]), .Z(n173) );
  GTECH_NOT U235 ( .A(ss[1]), .Z(n200) );
  GTECH_NOT U236 ( .A(ss[7]), .Z(n199) );
  GTECH_NOT U237 ( .A(ss[5]), .Z(n198) );
  GTECH_NOT U238 ( .A(n3), .Z(n151) );
  GTECH_NOT U239 ( .A(n111), .Z(n197) );
  GTECH_NOT U240 ( .A(n110), .Z(n141) );
  GTECH_NOT U241 ( .A(n108), .Z(n196) );
endmodule

