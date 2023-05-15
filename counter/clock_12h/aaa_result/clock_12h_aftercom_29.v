
module clock_12h ( clk, reset, ena, pm, hh, mm, ss );
  output [7:0] hh;
  output [7:0] mm;
  output [7:0] ss;
  input clk, reset, ena;
  output pm;
  wire   N22, N23, N24, N25, N26, N39, N40, N41, N42, N43, N55, N56, N57, N58,
         N59, N71, N72, N73, N74, N75, N88, N89, N90, N91, N92, N110, N112,
         N114, N115, N116, N121, N122, n3, n4, n5, n6, n7, n8, n79, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203;

  GTECH_FJK1S ss_ones_reg_0_ ( .J(n79), .K(n79), .TI(N22), .TE(N25), .CP(clk), 
        .Q(ss[0]) );
  GTECH_FJK1S ss_ones_reg_2_ ( .J(n79), .K(n79), .TI(N24), .TE(N25), .CP(clk), 
        .Q(ss[2]) );
  GTECH_FJK1S ss_ones_reg_3_ ( .J(n79), .K(n79), .TI(N26), .TE(N25), .CP(clk), 
        .Q(ss[3]) );
  GTECH_FJK1S ss_ones_reg_1_ ( .J(n79), .K(n79), .TI(N23), .TE(N25), .CP(clk), 
        .Q(ss[1]) );
  GTECH_FJK1S ss_tens_reg_0_ ( .J(n79), .K(n79), .TI(N39), .TE(N42), .CP(clk), 
        .Q(ss[4]) );
  GTECH_FJK1S ss_tens_reg_3_ ( .J(n79), .K(n79), .TI(N43), .TE(N42), .CP(clk), 
        .Q(ss[7]) );
  GTECH_FJK1S ss_tens_reg_1_ ( .J(n79), .K(n79), .TI(N40), .TE(N42), .CP(clk), 
        .Q(ss[5]) );
  GTECH_FJK1S ss_tens_reg_2_ ( .J(n79), .K(n79), .TI(N41), .TE(N42), .CP(clk), 
        .Q(ss[6]) );
  GTECH_FJK1S mm_ones_reg_0_ ( .J(n79), .K(n79), .TI(N55), .TE(N58), .CP(clk), 
        .Q(mm[0]), .QN(n110) );
  GTECH_FJK1S mm_ones_reg_2_ ( .J(n79), .K(n79), .TI(N57), .TE(N58), .CP(clk), 
        .Q(mm[2]), .QN(n112) );
  GTECH_FJK1S mm_ones_reg_3_ ( .J(n79), .K(n79), .TI(N59), .TE(N58), .CP(clk), 
        .Q(mm[3]), .QN(n109) );
  GTECH_FJK1S mm_ones_reg_1_ ( .J(n79), .K(n79), .TI(N56), .TE(N58), .CP(clk), 
        .Q(mm[1]), .QN(n111) );
  GTECH_FJK1S mm_tens_reg_0_ ( .J(n79), .K(n79), .TI(N71), .TE(N74), .CP(clk), 
        .Q(mm[4]), .QN(n3) );
  GTECH_FJK1S mm_tens_reg_3_ ( .J(n79), .K(n79), .TI(N75), .TE(N74), .CP(clk), 
        .Q(mm[7]), .QN(n106) );
  GTECH_FJK1S mm_tens_reg_1_ ( .J(n79), .K(n79), .TI(N72), .TE(N74), .CP(clk), 
        .Q(mm[5]), .QN(n108) );
  GTECH_FJK1S mm_tens_reg_2_ ( .J(n79), .K(n79), .TI(N73), .TE(N74), .CP(clk), 
        .Q(mm[6]), .QN(n107) );
  GTECH_FJK1S hh_tens_reg_0_ ( .J(n79), .K(n79), .TI(N110), .TE(N115), .CP(clk), .Q(hh[4]), .QN(n120) );
  GTECH_FJK1S hh_tens_reg_2_ ( .J(n79), .K(n79), .TI(N114), .TE(N115), .CP(clk), .Q(hh[6]), .QN(n4) );
  GTECH_FJK1S hh_tens_reg_3_ ( .J(n79), .K(n79), .TI(N116), .TE(N115), .CP(clk), .Q(hh[7]), .QN(n5) );
  GTECH_FJK1S hh_ones_reg_0_ ( .J(n79), .K(n79), .TI(N88), .TE(N91), .CP(clk), 
        .Q(hh[0]), .QN(n105) );
  GTECH_FJK1S hh_ones_reg_1_ ( .J(n79), .K(n79), .TI(N89), .TE(N91), .CP(clk), 
        .Q(hh[1]), .QN(n6) );
  GTECH_FJK1S hh_ones_reg_2_ ( .J(n79), .K(n79), .TI(N90), .TE(N91), .CP(clk), 
        .Q(hh[2]), .QN(n7) );
  GTECH_FJK1S hh_ones_reg_3_ ( .J(n79), .K(n79), .TI(N92), .TE(N91), .CP(clk), 
        .Q(hh[3]), .QN(n104) );
  GTECH_FJK1S hh_tens_reg_1_ ( .J(n79), .K(n79), .TI(N112), .TE(N115), .CP(clk), .Q(hh[5]), .QN(n8) );
  GTECH_FJK1S pm_temp_reg ( .J(n79), .K(n79), .TI(N122), .TE(N121), .CP(clk), 
        .Q(pm) );
  GTECH_ZERO U129 ( .Z(n79) );
  GTECH_AND_NOT U130 ( .A(n121), .B(n122), .Z(N92) );
  GTECH_XOR2 U131 ( .A(n123), .B(n104), .Z(n121) );
  GTECH_OR2 U132 ( .A(n7), .B(n124), .Z(n123) );
  GTECH_NAND2 U133 ( .A(n125), .B(n126), .Z(N91) );
  GTECH_AND_NOT U134 ( .A(n127), .B(n122), .Z(N90) );
  GTECH_XOR2 U135 ( .A(n124), .B(n7), .Z(n127) );
  GTECH_NAND2 U136 ( .A(n128), .B(n129), .Z(n124) );
  GTECH_OAI21 U137 ( .A(n130), .B(n122), .C(n125), .Z(N89) );
  GTECH_OA21 U138 ( .A(n6), .B(n129), .C(n131), .Z(n130) );
  GTECH_OAI22 U139 ( .A(n126), .B(n132), .C(n129), .D(n122), .Z(N88) );
  GTECH_NAND3 U140 ( .A(n132), .B(n133), .C(n134), .Z(n122) );
  GTECH_OAI22 U141 ( .A(n106), .B(n135), .C(n136), .D(n137), .Z(N75) );
  GTECH_OA21 U142 ( .A(n106), .B(n138), .C(n139), .Z(n136) );
  GTECH_NOT U143 ( .A(n140), .Z(N73) );
  GTECH_MUX2 U144 ( .A(n135), .B(n141), .S(n107), .Z(n140) );
  GTECH_OR3 U145 ( .A(n108), .B(n137), .C(n3), .Z(n141) );
  GTECH_OAI21 U146 ( .A(n3), .B(n108), .C(n142), .Z(n135) );
  GTECH_MUX2 U147 ( .A(N71), .B(n143), .S(n108), .Z(N72) );
  GTECH_AND_NOT U148 ( .A(n142), .B(n3), .Z(n143) );
  GTECH_NOT U149 ( .A(n144), .Z(N71) );
  GTECH_NAND2 U150 ( .A(n3), .B(n142), .Z(n144) );
  GTECH_NOT U151 ( .A(n137), .Z(n142) );
  GTECH_NAND3 U152 ( .A(n145), .B(n125), .C(n146), .Z(n137) );
  GTECH_AND_NOT U153 ( .A(n147), .B(n148), .Z(N59) );
  GTECH_XOR2 U154 ( .A(n149), .B(n109), .Z(n147) );
  GTECH_OR_NOT U155 ( .A(n150), .B(n151), .Z(n149) );
  GTECH_AND_NOT U156 ( .A(n152), .B(n148), .Z(N57) );
  GTECH_XOR2 U157 ( .A(n150), .B(n112), .Z(n152) );
  GTECH_AND_NOT U158 ( .A(n153), .B(n148), .Z(N56) );
  GTECH_OA21 U159 ( .A(n154), .B(n155), .C(n150), .Z(n153) );
  GTECH_NAND2 U160 ( .A(n155), .B(n154), .Z(n150) );
  GTECH_NOT U161 ( .A(n110), .Z(n155) );
  GTECH_AND_NOT U162 ( .A(n110), .B(n148), .Z(N55) );
  GTECH_NAND2 U163 ( .A(n156), .B(n157), .Z(n148) );
  GTECH_NOT U164 ( .A(N74), .Z(n157) );
  GTECH_NAND2 U165 ( .A(n125), .B(n158), .Z(N74) );
  GTECH_NOT U166 ( .A(n159), .Z(n156) );
  GTECH_MUX2 U167 ( .A(n160), .B(n161), .S(ss[7]), .Z(N43) );
  GTECH_OAI21 U168 ( .A(ss[6]), .B(n162), .C(n163), .Z(n161) );
  GTECH_NOT U169 ( .A(n164), .Z(n163) );
  GTECH_AND_NOT U170 ( .A(n165), .B(n166), .Z(n160) );
  GTECH_MUX2 U171 ( .A(n167), .B(n164), .S(ss[6]), .Z(N41) );
  GTECH_OAI21 U172 ( .A(ss[5]), .B(n162), .C(n168), .Z(n164) );
  GTECH_AND_NOT U173 ( .A(ss[5]), .B(n169), .Z(n167) );
  GTECH_MUX2 U174 ( .A(n165), .B(N39), .S(ss[5]), .Z(N40) );
  GTECH_NOT U175 ( .A(n169), .Z(n165) );
  GTECH_NAND2 U176 ( .A(n170), .B(ss[4]), .Z(n169) );
  GTECH_NOT U177 ( .A(n168), .Z(N39) );
  GTECH_NAND2 U178 ( .A(n170), .B(n171), .Z(n168) );
  GTECH_NOT U179 ( .A(n162), .Z(n170) );
  GTECH_NAND2 U180 ( .A(n172), .B(n173), .Z(n162) );
  GTECH_NOT U181 ( .A(N58), .Z(n173) );
  GTECH_NAND2 U182 ( .A(n125), .B(n159), .Z(N58) );
  GTECH_NOT U183 ( .A(n174), .Z(n172) );
  GTECH_AND_NOT U184 ( .A(n175), .B(n176), .Z(N26) );
  GTECH_XOR2 U185 ( .A(n177), .B(ss[3]), .Z(n176) );
  GTECH_OR_NOT U186 ( .A(n178), .B(ss[2]), .Z(n177) );
  GTECH_NAND2 U187 ( .A(n125), .B(n179), .Z(N25) );
  GTECH_AND_NOT U188 ( .A(n175), .B(n180), .Z(N24) );
  GTECH_XOR2 U189 ( .A(n178), .B(ss[2]), .Z(n180) );
  GTECH_AND_NOT U190 ( .A(n181), .B(n182), .Z(N23) );
  GTECH_OA21 U191 ( .A(ss[0]), .B(ss[1]), .C(n178), .Z(n181) );
  GTECH_NAND2 U192 ( .A(ss[1]), .B(ss[0]), .Z(n178) );
  GTECH_AND_NOT U193 ( .A(n175), .B(ss[0]), .Z(N22) );
  GTECH_NOT U194 ( .A(n182), .Z(n175) );
  GTECH_NAND2 U195 ( .A(ena), .B(n183), .Z(n182) );
  GTECH_NOT U196 ( .A(N42), .Z(n183) );
  GTECH_NAND2 U197 ( .A(n125), .B(n174), .Z(N42) );
  GTECH_AND_NOT U198 ( .A(n184), .B(pm), .Z(N122) );
  GTECH_NOT U199 ( .A(n185), .Z(n184) );
  GTECH_NAND2 U200 ( .A(n125), .B(n185), .Z(N121) );
  GTECH_NAND3 U201 ( .A(n186), .B(n187), .C(n134), .Z(n185) );
  GTECH_AND_NOT U202 ( .A(n188), .B(n189), .Z(N116) );
  GTECH_XOR2 U203 ( .A(n190), .B(n5), .Z(n188) );
  GTECH_OR2 U204 ( .A(n4), .B(n191), .Z(n190) );
  GTECH_NAND3 U205 ( .A(n133), .B(n125), .C(n132), .Z(N115) );
  GTECH_NAND4 U206 ( .A(n105), .B(n186), .C(n192), .D(n128), .Z(n132) );
  GTECH_NOT U207 ( .A(n6), .Z(n128) );
  GTECH_AND3 U208 ( .A(n5), .B(n4), .C(n193), .Z(n186) );
  GTECH_AND4 U209 ( .A(n194), .B(n104), .C(n7), .D(n8), .Z(n193) );
  GTECH_AND_NOT U210 ( .A(n195), .B(n189), .Z(N114) );
  GTECH_XOR2 U211 ( .A(n191), .B(n4), .Z(n195) );
  GTECH_AND_NOT U212 ( .A(n196), .B(n189), .Z(N112) );
  GTECH_OA21 U213 ( .A(n197), .B(n194), .C(n191), .Z(n196) );
  GTECH_NAND2 U214 ( .A(n194), .B(n197), .Z(n191) );
  GTECH_NOT U215 ( .A(n8), .Z(n197) );
  GTECH_OAI21 U216 ( .A(n189), .B(n194), .C(n125), .Z(N110) );
  GTECH_NOT U217 ( .A(n120), .Z(n194) );
  GTECH_NAND2 U218 ( .A(n198), .B(n134), .Z(n189) );
  GTECH_NOT U219 ( .A(n126), .Z(n134) );
  GTECH_NAND2 U220 ( .A(n192), .B(n125), .Z(n126) );
  GTECH_NOT U221 ( .A(reset), .Z(n125) );
  GTECH_NOT U222 ( .A(n133), .Z(n198) );
  GTECH_NAND4 U223 ( .A(n7), .B(n192), .C(n187), .D(n199), .Z(n133) );
  GTECH_NOT U224 ( .A(n104), .Z(n199) );
  GTECH_NOT U225 ( .A(n131), .Z(n187) );
  GTECH_NAND2 U226 ( .A(n6), .B(n129), .Z(n131) );
  GTECH_NOT U227 ( .A(n105), .Z(n129) );
  GTECH_NOT U228 ( .A(n145), .Z(n192) );
  GTECH_NAND3 U229 ( .A(n146), .B(n200), .C(n108), .Z(n145) );
  GTECH_NOT U230 ( .A(n139), .Z(n200) );
  GTECH_NAND3 U231 ( .A(n138), .B(n201), .C(n106), .Z(n139) );
  GTECH_NOT U232 ( .A(n3), .Z(n201) );
  GTECH_NOT U233 ( .A(n107), .Z(n138) );
  GTECH_NOT U234 ( .A(n158), .Z(n146) );
  GTECH_OR5 U235 ( .A(n110), .B(n109), .C(n159), .D(n154), .E(n151), .Z(n158)
         );
  GTECH_NOT U236 ( .A(n112), .Z(n151) );
  GTECH_NOT U237 ( .A(n111), .Z(n154) );
  GTECH_OR5 U238 ( .A(ss[7]), .B(ss[5]), .C(n174), .D(n171), .E(n166), .Z(n159) );
  GTECH_NOT U239 ( .A(ss[6]), .Z(n166) );
  GTECH_NOT U240 ( .A(ss[4]), .Z(n171) );
  GTECH_OR5 U241 ( .A(ss[2]), .B(ss[1]), .C(n179), .D(n202), .E(n203), .Z(n174) );
  GTECH_NOT U242 ( .A(ss[3]), .Z(n203) );
  GTECH_NOT U243 ( .A(ss[0]), .Z(n202) );
  GTECH_NOT U244 ( .A(ena), .Z(n179) );
endmodule

