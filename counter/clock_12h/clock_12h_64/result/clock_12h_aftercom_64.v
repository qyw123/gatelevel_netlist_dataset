
module clock_12h ( clk, reset, ena, pm, hh, mm, ss );
  output [7:0] hh;
  output [7:0] mm;
  output [7:0] ss;
  input clk, reset, ena;
  output pm;
  wire   N22, N23, N24, N25, N26, N39, N40, N41, N42, N43, N55, N56, N57, N58,
         N59, N71, N72, N73, N74, N75, N88, N89, N90, N91, N92, N110, N112,
         N114, N115, N116, N121, N122, n3, n4, n5, n6, n7, n8, n80, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196;

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
  GTECH_FJK1S ss_tens_reg_3_ ( .J(n80), .K(n80), .TI(N43), .TE(N42), .CP(clk), 
        .Q(ss[7]) );
  GTECH_FJK1S ss_tens_reg_1_ ( .J(n80), .K(n80), .TI(N40), .TE(N42), .CP(clk), 
        .Q(ss[5]) );
  GTECH_FJK1S ss_tens_reg_2_ ( .J(n80), .K(n80), .TI(N41), .TE(N42), .CP(clk), 
        .Q(ss[6]) );
  GTECH_FJK1S mm_ones_reg_0_ ( .J(n80), .K(n80), .TI(N55), .TE(N58), .CP(clk), 
        .Q(mm[0]), .QN(n3) );
  GTECH_FJK1S mm_ones_reg_3_ ( .J(n80), .K(n80), .TI(N59), .TE(N58), .CP(clk), 
        .Q(mm[3]), .QN(n112) );
  GTECH_FJK1S mm_ones_reg_1_ ( .J(n80), .K(n80), .TI(N56), .TE(N58), .CP(clk), 
        .Q(mm[1]), .QN(n114) );
  GTECH_FJK1S mm_ones_reg_2_ ( .J(n80), .K(n80), .TI(N57), .TE(N58), .CP(clk), 
        .Q(mm[2]), .QN(n113) );
  GTECH_FJK1S mm_tens_reg_0_ ( .J(n80), .K(n80), .TI(N71), .TE(N74), .CP(clk), 
        .Q(mm[4]), .QN(n111) );
  GTECH_FJK1S mm_tens_reg_3_ ( .J(n80), .K(n80), .TI(N75), .TE(N74), .CP(clk), 
        .Q(mm[7]), .QN(n108) );
  GTECH_FJK1S mm_tens_reg_1_ ( .J(n80), .K(n80), .TI(N72), .TE(N74), .CP(clk), 
        .Q(mm[5]), .QN(n110) );
  GTECH_FJK1S mm_tens_reg_2_ ( .J(n80), .K(n80), .TI(N73), .TE(N74), .CP(clk), 
        .Q(mm[6]), .QN(n109) );
  GTECH_FJK1S hh_tens_reg_0_ ( .J(n80), .K(n80), .TI(N110), .TE(N115), .CP(clk), .Q(hh[4]), .QN(n4) );
  GTECH_FJK1S hh_tens_reg_2_ ( .J(n80), .K(n80), .TI(N114), .TE(N115), .CP(clk), .Q(hh[6]), .QN(n5) );
  GTECH_FJK1S hh_tens_reg_3_ ( .J(n80), .K(n80), .TI(N116), .TE(N115), .CP(clk), .Q(hh[7]), .QN(n6) );
  GTECH_FJK1S hh_ones_reg_0_ ( .J(n80), .K(n80), .TI(N88), .TE(N91), .CP(clk), 
        .Q(hh[0]), .QN(n106) );
  GTECH_FJK1S hh_ones_reg_1_ ( .J(n80), .K(n80), .TI(N89), .TE(N91), .CP(clk), 
        .Q(hh[1]), .QN(n107) );
  GTECH_FJK1S hh_ones_reg_2_ ( .J(n80), .K(n80), .TI(N90), .TE(N91), .CP(clk), 
        .Q(hh[2]), .QN(n105) );
  GTECH_FJK1S hh_ones_reg_3_ ( .J(n80), .K(n80), .TI(N92), .TE(N91), .CP(clk), 
        .Q(hh[3]), .QN(n7) );
  GTECH_FJK1S hh_tens_reg_1_ ( .J(n80), .K(n80), .TI(N112), .TE(N115), .CP(clk), .Q(hh[5]), .QN(n8) );
  GTECH_FJK1S pm_temp_reg ( .J(n80), .K(n80), .TI(N122), .TE(N121), .CP(clk), 
        .Q(pm) );
  GTECH_ZERO U130 ( .Z(n80) );
  GTECH_AND_NOT U131 ( .A(n122), .B(n123), .Z(N92) );
  GTECH_XOR2 U132 ( .A(n124), .B(n7), .Z(n122) );
  GTECH_OR2 U133 ( .A(n105), .B(n125), .Z(n124) );
  GTECH_NAND2 U134 ( .A(n126), .B(n127), .Z(N91) );
  GTECH_AND_NOT U135 ( .A(n128), .B(n123), .Z(N90) );
  GTECH_XOR2 U136 ( .A(n125), .B(n105), .Z(n128) );
  GTECH_NAND2 U137 ( .A(n129), .B(n130), .Z(n125) );
  GTECH_OAI21 U138 ( .A(n131), .B(n123), .C(n126), .Z(N89) );
  GTECH_XOR2 U139 ( .A(n130), .B(n107), .Z(n131) );
  GTECH_OAI22 U140 ( .A(n127), .B(n132), .C(n130), .D(n123), .Z(N88) );
  GTECH_OR3 U141 ( .A(n133), .B(n134), .C(n127), .Z(n123) );
  GTECH_AOI21 U142 ( .A(n135), .B(n136), .C(n137), .Z(N75) );
  GTECH_OAI21 U143 ( .A(n138), .B(n109), .C(n139), .Z(n135) );
  GTECH_AND_NOT U144 ( .A(n140), .B(n137), .Z(N73) );
  GTECH_XOR2 U145 ( .A(n138), .B(n109), .Z(n140) );
  GTECH_AND_NOT U146 ( .A(n141), .B(n137), .Z(N72) );
  GTECH_OA21 U147 ( .A(n142), .B(n143), .C(n138), .Z(n141) );
  GTECH_NAND2 U148 ( .A(n143), .B(n142), .Z(n138) );
  GTECH_NOT U149 ( .A(n111), .Z(n143) );
  GTECH_AND_NOT U150 ( .A(n111), .B(n137), .Z(N71) );
  GTECH_OR3 U151 ( .A(reset), .B(n144), .C(n145), .Z(n137) );
  GTECH_AND_NOT U152 ( .A(n146), .B(n147), .Z(N59) );
  GTECH_XOR2 U153 ( .A(n148), .B(n112), .Z(n146) );
  GTECH_OR2 U154 ( .A(n113), .B(n149), .Z(n148) );
  GTECH_AND_NOT U155 ( .A(n150), .B(n147), .Z(N57) );
  GTECH_XOR2 U156 ( .A(n149), .B(n113), .Z(n150) );
  GTECH_AND_NOT U157 ( .A(n151), .B(n147), .Z(N56) );
  GTECH_OA21 U158 ( .A(n152), .B(n153), .C(n149), .Z(n151) );
  GTECH_NAND2 U159 ( .A(n152), .B(n153), .Z(n149) );
  GTECH_NOT U160 ( .A(n114), .Z(n152) );
  GTECH_AND_NOT U161 ( .A(n3), .B(n147), .Z(N55) );
  GTECH_NAND2 U162 ( .A(n154), .B(n155), .Z(n147) );
  GTECH_NOT U163 ( .A(N74), .Z(n155) );
  GTECH_NAND2 U164 ( .A(n126), .B(n145), .Z(N74) );
  GTECH_AOI21 U165 ( .A(n156), .B(n157), .C(n158), .Z(N43) );
  GTECH_OAI21 U166 ( .A(n159), .B(n160), .C(ss[7]), .Z(n156) );
  GTECH_AND_NOT U167 ( .A(n161), .B(n162), .Z(N41) );
  GTECH_XOR2 U168 ( .A(n159), .B(ss[6]), .Z(n162) );
  GTECH_AND_NOT U169 ( .A(n163), .B(n158), .Z(N40) );
  GTECH_OA21 U170 ( .A(ss[4]), .B(ss[5]), .C(n159), .Z(n163) );
  GTECH_NAND2 U171 ( .A(ss[5]), .B(ss[4]), .Z(n159) );
  GTECH_AND_NOT U172 ( .A(n161), .B(ss[4]), .Z(N39) );
  GTECH_NOT U173 ( .A(n158), .Z(n161) );
  GTECH_NAND2 U174 ( .A(n164), .B(n165), .Z(n158) );
  GTECH_NOT U175 ( .A(N58), .Z(n165) );
  GTECH_NAND2 U176 ( .A(n126), .B(n166), .Z(N58) );
  GTECH_NOT U177 ( .A(n167), .Z(n164) );
  GTECH_AND_NOT U178 ( .A(n168), .B(n169), .Z(N26) );
  GTECH_XOR2 U179 ( .A(n170), .B(ss[3]), .Z(n169) );
  GTECH_OR_NOT U180 ( .A(n171), .B(ss[2]), .Z(n170) );
  GTECH_NAND2 U181 ( .A(n126), .B(n172), .Z(N25) );
  GTECH_NOT U182 ( .A(ena), .Z(n172) );
  GTECH_AND_NOT U183 ( .A(n168), .B(n173), .Z(N24) );
  GTECH_XOR2 U184 ( .A(n171), .B(ss[2]), .Z(n173) );
  GTECH_AND_NOT U185 ( .A(n174), .B(n175), .Z(N23) );
  GTECH_OA21 U186 ( .A(ss[0]), .B(ss[1]), .C(n171), .Z(n174) );
  GTECH_NAND2 U187 ( .A(ss[1]), .B(ss[0]), .Z(n171) );
  GTECH_AND_NOT U188 ( .A(n168), .B(ss[0]), .Z(N22) );
  GTECH_NOT U189 ( .A(n175), .Z(n168) );
  GTECH_NAND2 U190 ( .A(ena), .B(n176), .Z(n175) );
  GTECH_NOT U191 ( .A(N42), .Z(n176) );
  GTECH_NAND2 U192 ( .A(n126), .B(n167), .Z(N42) );
  GTECH_AND_NOT U193 ( .A(n177), .B(pm), .Z(N122) );
  GTECH_NOT U194 ( .A(n178), .Z(n177) );
  GTECH_NAND2 U195 ( .A(n126), .B(n178), .Z(N121) );
  GTECH_NAND5 U196 ( .A(n179), .B(n8), .C(n7), .D(n6), .E(n180), .Z(n178) );
  GTECH_AND5 U197 ( .A(n130), .B(n181), .C(n105), .D(n5), .E(n107), .Z(n180)
         );
  GTECH_AND_NOT U198 ( .A(n182), .B(n183), .Z(N116) );
  GTECH_XOR2 U199 ( .A(n184), .B(n6), .Z(n182) );
  GTECH_OR2 U200 ( .A(n5), .B(n185), .Z(n184) );
  GTECH_OR3 U201 ( .A(reset), .B(n133), .C(n134), .Z(N115) );
  GTECH_NOT U202 ( .A(n132), .Z(n134) );
  GTECH_NAND5 U203 ( .A(n8), .B(n7), .C(n6), .D(n5), .E(n186), .Z(n132) );
  GTECH_AND5 U204 ( .A(n129), .B(n181), .C(n144), .D(n106), .E(n105), .Z(n186)
         );
  GTECH_NOT U205 ( .A(n107), .Z(n129) );
  GTECH_AND_NOT U206 ( .A(n187), .B(n183), .Z(N114) );
  GTECH_XOR2 U207 ( .A(n185), .B(n5), .Z(n187) );
  GTECH_AND_NOT U208 ( .A(n188), .B(n183), .Z(N112) );
  GTECH_OA21 U209 ( .A(n189), .B(n181), .C(n185), .Z(n188) );
  GTECH_NAND2 U210 ( .A(n181), .B(n189), .Z(n185) );
  GTECH_NOT U211 ( .A(n8), .Z(n189) );
  GTECH_OAI21 U212 ( .A(n183), .B(n181), .C(n126), .Z(N110) );
  GTECH_NOT U213 ( .A(n4), .Z(n181) );
  GTECH_NAND2 U214 ( .A(n133), .B(n179), .Z(n183) );
  GTECH_NOT U215 ( .A(n127), .Z(n179) );
  GTECH_NAND2 U216 ( .A(n144), .B(n126), .Z(n127) );
  GTECH_NOT U217 ( .A(reset), .Z(n126) );
  GTECH_NOT U218 ( .A(n190), .Z(n133) );
  GTECH_NAND5 U219 ( .A(n130), .B(n191), .C(n144), .D(n107), .E(n105), .Z(n190) );
  GTECH_NOT U220 ( .A(n192), .Z(n144) );
  GTECH_OR3 U221 ( .A(n136), .B(n145), .C(n142), .Z(n192) );
  GTECH_NOT U222 ( .A(n110), .Z(n142) );
  GTECH_NAND5 U223 ( .A(n193), .B(n153), .C(n154), .D(n114), .E(n113), .Z(n145) );
  GTECH_NOT U224 ( .A(n166), .Z(n154) );
  GTECH_OR3 U225 ( .A(ss[5]), .B(n167), .C(n157), .Z(n166) );
  GTECH_OR3 U226 ( .A(ss[7]), .B(n194), .C(n160), .Z(n157) );
  GTECH_NOT U227 ( .A(ss[6]), .Z(n160) );
  GTECH_NOT U228 ( .A(ss[4]), .Z(n194) );
  GTECH_NAND5 U229 ( .A(n195), .B(n196), .C(ena), .D(ss[3]), .E(ss[0]), .Z(
        n167) );
  GTECH_NOT U230 ( .A(ss[2]), .Z(n196) );
  GTECH_NOT U231 ( .A(ss[1]), .Z(n195) );
  GTECH_NOT U232 ( .A(n3), .Z(n153) );
  GTECH_NOT U233 ( .A(n112), .Z(n193) );
  GTECH_OR3 U234 ( .A(n111), .B(n109), .C(n139), .Z(n136) );
  GTECH_NOT U235 ( .A(n108), .Z(n139) );
  GTECH_NOT U236 ( .A(n7), .Z(n191) );
  GTECH_NOT U237 ( .A(n106), .Z(n130) );
endmodule

