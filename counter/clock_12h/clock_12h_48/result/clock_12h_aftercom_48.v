
module clock_12h ( clk, reset, ena, pm, hh, mm, ss );
  output [7:0] hh;
  output [7:0] mm;
  output [7:0] ss;
  input clk, reset, ena;
  output pm;
  wire   N22, N23, N24, N25, N26, N39, N40, N41, N42, N43, N55, N56, N57, N58,
         N59, N71, N72, N73, N74, N75, N88, N89, N90, N91, N92, N110, N112,
         N114, N115, N116, N121, N122, n4, n5, n6, n7, n8, n9, n82, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197;

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
  GTECH_FJK1S ss_tens_reg_3_ ( .J(n82), .K(n82), .TI(N43), .TE(N42), .CP(clk), 
        .Q(ss[7]) );
  GTECH_FJK1S ss_tens_reg_1_ ( .J(n82), .K(n82), .TI(N40), .TE(N42), .CP(clk), 
        .Q(ss[5]) );
  GTECH_FJK1S ss_tens_reg_2_ ( .J(n82), .K(n82), .TI(N41), .TE(N42), .CP(clk), 
        .Q(ss[6]) );
  GTECH_FJK1S mm_ones_reg_0_ ( .J(n82), .K(n82), .TI(N55), .TE(N58), .CP(clk), 
        .Q(mm[0]), .QN(n4) );
  GTECH_FJK1S mm_ones_reg_3_ ( .J(n82), .K(n82), .TI(N59), .TE(N58), .CP(clk), 
        .Q(mm[3]), .QN(n114) );
  GTECH_FJK1S mm_ones_reg_1_ ( .J(n82), .K(n82), .TI(N56), .TE(N58), .CP(clk), 
        .Q(mm[1]), .QN(n116) );
  GTECH_FJK1S mm_ones_reg_2_ ( .J(n82), .K(n82), .TI(N57), .TE(N58), .CP(clk), 
        .Q(mm[2]), .QN(n115) );
  GTECH_FJK1S mm_tens_reg_0_ ( .J(n82), .K(n82), .TI(N71), .TE(N74), .CP(clk), 
        .Q(mm[4]), .QN(n112) );
  GTECH_FJK1S mm_tens_reg_2_ ( .J(n82), .K(n82), .TI(N73), .TE(N74), .CP(clk), 
        .Q(mm[6]), .QN(n111) );
  GTECH_FJK1S mm_tens_reg_3_ ( .J(n82), .K(n82), .TI(N75), .TE(N74), .CP(clk), 
        .Q(mm[7]), .QN(n110) );
  GTECH_FJK1S mm_tens_reg_1_ ( .J(n82), .K(n82), .TI(N72), .TE(N74), .CP(clk), 
        .Q(mm[5]), .QN(n113) );
  GTECH_FJK1S hh_tens_reg_0_ ( .J(n82), .K(n82), .TI(N110), .TE(N115), .CP(clk), .Q(hh[4]), .QN(n5) );
  GTECH_FJK1S hh_tens_reg_2_ ( .J(n82), .K(n82), .TI(N114), .TE(N115), .CP(clk), .Q(hh[6]), .QN(n6) );
  GTECH_FJK1S hh_tens_reg_3_ ( .J(n82), .K(n82), .TI(N116), .TE(N115), .CP(clk), .Q(hh[7]), .QN(n7) );
  GTECH_FJK1S hh_ones_reg_0_ ( .J(n82), .K(n82), .TI(N88), .TE(N91), .CP(clk), 
        .Q(hh[0]), .QN(n108) );
  GTECH_FJK1S hh_ones_reg_1_ ( .J(n82), .K(n82), .TI(N89), .TE(N91), .CP(clk), 
        .Q(hh[1]), .QN(n109) );
  GTECH_FJK1S hh_ones_reg_2_ ( .J(n82), .K(n82), .TI(N90), .TE(N91), .CP(clk), 
        .Q(hh[2]), .QN(n107) );
  GTECH_FJK1S hh_ones_reg_3_ ( .J(n82), .K(n82), .TI(N92), .TE(N91), .CP(clk), 
        .Q(hh[3]), .QN(n8) );
  GTECH_FJK1S hh_tens_reg_1_ ( .J(n82), .K(n82), .TI(N112), .TE(N115), .CP(clk), .Q(hh[5]), .QN(n9) );
  GTECH_FJK1S pm_temp_reg ( .J(n82), .K(n82), .TI(N122), .TE(N121), .CP(clk), 
        .Q(pm) );
  GTECH_ZERO U131 ( .Z(n82) );
  GTECH_AND_NOT U132 ( .A(n123), .B(n124), .Z(N92) );
  GTECH_XOR2 U133 ( .A(n125), .B(n8), .Z(n123) );
  GTECH_OR2 U134 ( .A(n126), .B(n107), .Z(n125) );
  GTECH_OR_NOT U135 ( .A(n127), .B(n128), .Z(N91) );
  GTECH_AND_NOT U136 ( .A(n129), .B(n124), .Z(N90) );
  GTECH_XOR2 U137 ( .A(n126), .B(n107), .Z(n129) );
  GTECH_OR_NOT U138 ( .A(n108), .B(n130), .Z(n126) );
  GTECH_OAI21 U139 ( .A(n131), .B(n124), .C(n128), .Z(N89) );
  GTECH_XOR2 U140 ( .A(n132), .B(n109), .Z(n131) );
  GTECH_OAI22 U141 ( .A(n133), .B(n134), .C(n132), .D(n124), .Z(N88) );
  GTECH_NAND3 U142 ( .A(n134), .B(n135), .C(n127), .Z(n124) );
  GTECH_AND_NOT U143 ( .A(n136), .B(n137), .Z(N75) );
  GTECH_MUX2 U144 ( .A(n138), .B(n139), .S(n110), .Z(n136) );
  GTECH_AND_NOT U145 ( .A(n140), .B(n112), .Z(n139) );
  GTECH_OR2 U146 ( .A(n141), .B(n111), .Z(n138) );
  GTECH_AND_NOT U147 ( .A(n142), .B(n137), .Z(N73) );
  GTECH_XOR2 U148 ( .A(n141), .B(n111), .Z(n142) );
  GTECH_AND_NOT U149 ( .A(n143), .B(n137), .Z(N72) );
  GTECH_OA21 U150 ( .A(n144), .B(n145), .C(n141), .Z(n143) );
  GTECH_OR_NOT U151 ( .A(n113), .B(n145), .Z(n141) );
  GTECH_NOT U152 ( .A(n113), .Z(n144) );
  GTECH_AND_NOT U153 ( .A(n112), .B(n137), .Z(N71) );
  GTECH_NAND3 U154 ( .A(n146), .B(n128), .C(n147), .Z(n137) );
  GTECH_AND_NOT U155 ( .A(n148), .B(n149), .Z(N59) );
  GTECH_XOR2 U156 ( .A(n150), .B(n114), .Z(n148) );
  GTECH_OR2 U157 ( .A(n151), .B(n115), .Z(n150) );
  GTECH_AND_NOT U158 ( .A(n152), .B(n149), .Z(N57) );
  GTECH_XOR2 U159 ( .A(n151), .B(n115), .Z(n152) );
  GTECH_AND_NOT U160 ( .A(n153), .B(n149), .Z(N56) );
  GTECH_OA21 U161 ( .A(n154), .B(n155), .C(n151), .Z(n153) );
  GTECH_OR_NOT U162 ( .A(n4), .B(n154), .Z(n151) );
  GTECH_NOT U163 ( .A(n116), .Z(n154) );
  GTECH_AND_NOT U164 ( .A(n4), .B(n149), .Z(N55) );
  GTECH_OR_NOT U165 ( .A(N74), .B(n156), .Z(n149) );
  GTECH_OR_NOT U166 ( .A(n147), .B(n128), .Z(N74) );
  GTECH_OA21 U167 ( .A(n157), .B(n158), .C(n159), .Z(N43) );
  GTECH_OA21 U168 ( .A(n160), .B(n161), .C(ss[7]), .Z(n157) );
  GTECH_NOT U169 ( .A(ss[6]), .Z(n160) );
  GTECH_AND_NOT U170 ( .A(n159), .B(n162), .Z(N41) );
  GTECH_XOR2 U171 ( .A(n161), .B(ss[6]), .Z(n162) );
  GTECH_AND_NOT U172 ( .A(n163), .B(n164), .Z(N40) );
  GTECH_OA21 U173 ( .A(ss[4]), .B(ss[5]), .C(n161), .Z(n163) );
  GTECH_OR_NOT U174 ( .A(n165), .B(ss[5]), .Z(n161) );
  GTECH_NOT U175 ( .A(ss[4]), .Z(n165) );
  GTECH_AND_NOT U176 ( .A(n159), .B(ss[4]), .Z(N39) );
  GTECH_NOT U177 ( .A(n164), .Z(n159) );
  GTECH_OR_NOT U178 ( .A(N58), .B(n166), .Z(n164) );
  GTECH_OR_NOT U179 ( .A(n156), .B(n128), .Z(N58) );
  GTECH_AND_NOT U180 ( .A(n167), .B(n168), .Z(N26) );
  GTECH_XOR2 U181 ( .A(n169), .B(ss[3]), .Z(n168) );
  GTECH_OR_NOT U182 ( .A(n170), .B(ss[2]), .Z(n169) );
  GTECH_OR_NOT U183 ( .A(ena), .B(n128), .Z(N25) );
  GTECH_AND_NOT U184 ( .A(n167), .B(n171), .Z(N24) );
  GTECH_XOR2 U185 ( .A(n170), .B(ss[2]), .Z(n171) );
  GTECH_AND_NOT U186 ( .A(n172), .B(n173), .Z(N23) );
  GTECH_OA21 U187 ( .A(ss[0]), .B(ss[1]), .C(n170), .Z(n172) );
  GTECH_OR_NOT U188 ( .A(n174), .B(ss[1]), .Z(n170) );
  GTECH_NOT U189 ( .A(ss[0]), .Z(n174) );
  GTECH_AND_NOT U190 ( .A(n167), .B(ss[0]), .Z(N22) );
  GTECH_NOT U191 ( .A(n173), .Z(n167) );
  GTECH_OR_NOT U192 ( .A(N42), .B(ena), .Z(n173) );
  GTECH_OR_NOT U193 ( .A(n166), .B(n128), .Z(N42) );
  GTECH_AND_NOT U194 ( .A(n175), .B(pm), .Z(N122) );
  GTECH_OR_NOT U195 ( .A(n175), .B(n128), .Z(N121) );
  GTECH_AND5 U196 ( .A(n7), .B(n176), .C(n8), .D(n127), .E(n9), .Z(n175) );
  GTECH_NOT U197 ( .A(n133), .Z(n127) );
  GTECH_AND5 U198 ( .A(n6), .B(n109), .C(n107), .D(n132), .E(n177), .Z(n176)
         );
  GTECH_AND_NOT U199 ( .A(n178), .B(n179), .Z(N116) );
  GTECH_XOR2 U200 ( .A(n180), .B(n7), .Z(n178) );
  GTECH_OR2 U201 ( .A(n181), .B(n6), .Z(n180) );
  GTECH_NAND3 U202 ( .A(n135), .B(n128), .C(n134), .Z(N115) );
  GTECH_NAND5 U203 ( .A(n9), .B(n8), .C(n7), .D(n6), .E(n182), .Z(n134) );
  GTECH_AND5 U204 ( .A(n130), .B(n177), .C(n183), .D(n108), .E(n107), .Z(n182)
         );
  GTECH_NOT U205 ( .A(n109), .Z(n130) );
  GTECH_AND_NOT U206 ( .A(n184), .B(n179), .Z(N114) );
  GTECH_XOR2 U207 ( .A(n181), .B(n6), .Z(n184) );
  GTECH_AND_NOT U208 ( .A(n185), .B(n179), .Z(N112) );
  GTECH_OA21 U209 ( .A(n186), .B(n177), .C(n181), .Z(n185) );
  GTECH_OR_NOT U210 ( .A(n9), .B(n177), .Z(n181) );
  GTECH_NOT U211 ( .A(n9), .Z(n186) );
  GTECH_OAI21 U212 ( .A(n179), .B(n177), .C(n128), .Z(N110) );
  GTECH_NOT U213 ( .A(reset), .Z(n128) );
  GTECH_NOT U214 ( .A(n5), .Z(n177) );
  GTECH_OR_NOT U215 ( .A(n133), .B(n187), .Z(n179) );
  GTECH_NOT U216 ( .A(n135), .Z(n187) );
  GTECH_NAND5 U217 ( .A(n132), .B(n188), .C(n183), .D(n109), .E(n107), .Z(n135) );
  GTECH_NOT U218 ( .A(n8), .Z(n188) );
  GTECH_NOT U219 ( .A(n108), .Z(n132) );
  GTECH_OR_NOT U220 ( .A(reset), .B(n183), .Z(n133) );
  GTECH_NOT U221 ( .A(n146), .Z(n183) );
  GTECH_NAND5 U222 ( .A(n140), .B(n145), .C(n147), .D(n113), .E(n110), .Z(n146) );
  GTECH_NOT U223 ( .A(n189), .Z(n147) );
  GTECH_NAND5 U224 ( .A(n190), .B(n155), .C(n156), .D(n116), .E(n115), .Z(n189) );
  GTECH_NOT U225 ( .A(n191), .Z(n156) );
  GTECH_NAND3 U226 ( .A(n166), .B(n192), .C(n158), .Z(n191) );
  GTECH_NOT U227 ( .A(n193), .Z(n158) );
  GTECH_NAND3 U228 ( .A(ss[4]), .B(n194), .C(ss[6]), .Z(n193) );
  GTECH_NOT U229 ( .A(ss[7]), .Z(n194) );
  GTECH_NOT U230 ( .A(ss[5]), .Z(n192) );
  GTECH_NOT U231 ( .A(n195), .Z(n166) );
  GTECH_NAND5 U232 ( .A(n196), .B(n197), .C(ena), .D(ss[3]), .E(ss[0]), .Z(
        n195) );
  GTECH_NOT U233 ( .A(ss[2]), .Z(n197) );
  GTECH_NOT U234 ( .A(ss[1]), .Z(n196) );
  GTECH_NOT U235 ( .A(n4), .Z(n155) );
  GTECH_NOT U236 ( .A(n114), .Z(n190) );
  GTECH_NOT U237 ( .A(n112), .Z(n145) );
  GTECH_NOT U238 ( .A(n111), .Z(n140) );
endmodule

