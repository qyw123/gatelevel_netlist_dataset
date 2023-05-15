
module clock_12h ( clk, reset, ena, pm, hh, mm, ss );
  output [7:0] hh;
  output [7:0] mm;
  output [7:0] ss;
  input clk, reset, ena;
  output pm;
  wire   N22, N23, N24, N25, N26, N39, N40, N41, N42, N43, N55, N56, N57, N58,
         N59, N71, N72, N73, N74, N75, N88, N89, N90, N91, N92, N110, N112,
         N114, N115, N116, N121, N122, n4, n5, n6, n7, n8, n9, n10, n79, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207;

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
        .Q(mm[0]), .QN(n4) );
  GTECH_FJK1S mm_ones_reg_3_ ( .J(n79), .K(n79), .TI(N59), .TE(N58), .CP(clk), 
        .Q(mm[3]), .QN(n110) );
  GTECH_FJK1S mm_ones_reg_1_ ( .J(n79), .K(n79), .TI(N56), .TE(N58), .CP(clk), 
        .Q(mm[1]), .QN(n112) );
  GTECH_FJK1S mm_ones_reg_2_ ( .J(n79), .K(n79), .TI(N57), .TE(N58), .CP(clk), 
        .Q(mm[2]), .QN(n111) );
  GTECH_FJK1S mm_tens_reg_0_ ( .J(n79), .K(n79), .TI(N71), .TE(N74), .CP(clk), 
        .Q(mm[4]), .QN(n5) );
  GTECH_FJK1S mm_tens_reg_3_ ( .J(n79), .K(n79), .TI(N75), .TE(N74), .CP(clk), 
        .Q(mm[7]), .QN(n107) );
  GTECH_FJK1S mm_tens_reg_1_ ( .J(n79), .K(n79), .TI(N72), .TE(N74), .CP(clk), 
        .Q(mm[5]), .QN(n109) );
  GTECH_FJK1S mm_tens_reg_2_ ( .J(n79), .K(n79), .TI(N73), .TE(N74), .CP(clk), 
        .Q(mm[6]), .QN(n108) );
  GTECH_FJK1S hh_tens_reg_0_ ( .J(n79), .K(n79), .TI(N110), .TE(N115), .CP(clk), .Q(hh[4]), .QN(n119) );
  GTECH_FJK1S hh_tens_reg_1_ ( .J(n79), .K(n79), .TI(N112), .TE(N115), .CP(clk), .Q(hh[5]), .QN(n6) );
  GTECH_FJK1S hh_tens_reg_2_ ( .J(n79), .K(n79), .TI(N114), .TE(N115), .CP(clk), .Q(hh[6]), .QN(n7) );
  GTECH_FJK1S hh_tens_reg_3_ ( .J(n79), .K(n79), .TI(N116), .TE(N115), .CP(clk), .Q(hh[7]), .QN(n8) );
  GTECH_FJK1S hh_ones_reg_0_ ( .J(n79), .K(n79), .TI(N88), .TE(N91), .CP(clk), 
        .Q(hh[0]), .QN(n9) );
  GTECH_FJK1S hh_ones_reg_1_ ( .J(n79), .K(n79), .TI(N89), .TE(N91), .CP(clk), 
        .Q(hh[1]), .QN(n106) );
  GTECH_FJK1S hh_ones_reg_2_ ( .J(n79), .K(n79), .TI(N90), .TE(N91), .CP(clk), 
        .Q(hh[2]), .QN(n105) );
  GTECH_FJK1S hh_ones_reg_3_ ( .J(n79), .K(n79), .TI(N92), .TE(N91), .CP(clk), 
        .Q(hh[3]), .QN(n104) );
  GTECH_FJK1S pm_temp_reg ( .J(n79), .K(n79), .TI(N122), .TE(N121), .CP(clk), 
        .Q(pm), .QN(n10) );
  GTECH_ZERO U128 ( .Z(n79) );
  GTECH_AND2 U129 ( .A(n120), .B(n121), .Z(N92) );
  GTECH_XNOR2 U130 ( .A(n122), .B(n104), .Z(n120) );
  GTECH_NOR2 U131 ( .A(n123), .B(n105), .Z(n122) );
  GTECH_OR_NOT U132 ( .A(n124), .B(n125), .Z(N91) );
  GTECH_AND2 U133 ( .A(n126), .B(n121), .Z(N90) );
  GTECH_NOT U134 ( .A(n127), .Z(n121) );
  GTECH_XOR2 U135 ( .A(n123), .B(n105), .Z(n126) );
  GTECH_OR_NOT U136 ( .A(n106), .B(n128), .Z(n123) );
  GTECH_OAI21 U137 ( .A(n129), .B(n127), .C(n125), .Z(N89) );
  GTECH_XOR2 U138 ( .A(n130), .B(n9), .Z(n129) );
  GTECH_OAI22 U139 ( .A(n131), .B(n132), .C(n128), .D(n127), .Z(N88) );
  GTECH_NAND3 U140 ( .A(n132), .B(n133), .C(n124), .Z(n127) );
  GTECH_MUX2 U141 ( .A(n134), .B(n135), .S(n107), .Z(N75) );
  GTECH_AND2 U142 ( .A(n136), .B(n137), .Z(n135) );
  GTECH_OAI21 U143 ( .A(n138), .B(n137), .C(n139), .Z(n134) );
  GTECH_NOT U144 ( .A(n140), .Z(N73) );
  GTECH_MUX2 U145 ( .A(n139), .B(n141), .S(n108), .Z(n140) );
  GTECH_OR_NOT U146 ( .A(n109), .B(n136), .Z(n141) );
  GTECH_OAI21 U147 ( .A(n5), .B(n109), .C(n142), .Z(n139) );
  GTECH_MUX2 U148 ( .A(N71), .B(n136), .S(n109), .Z(N72) );
  GTECH_NOT U149 ( .A(n143), .Z(n136) );
  GTECH_OR_NOT U150 ( .A(n5), .B(n142), .Z(n143) );
  GTECH_NOT U151 ( .A(n138), .Z(n142) );
  GTECH_NOT U152 ( .A(n144), .Z(N71) );
  GTECH_OR_NOT U153 ( .A(n138), .B(n5), .Z(n144) );
  GTECH_NAND3 U154 ( .A(n145), .B(n125), .C(n146), .Z(n138) );
  GTECH_OAI22 U155 ( .A(n110), .B(n147), .C(n148), .D(n149), .Z(N59) );
  GTECH_MUX2 U156 ( .A(n150), .B(n151), .S(n110), .Z(n149) );
  GTECH_OR_NOT U157 ( .A(n111), .B(n152), .Z(n151) );
  GTECH_NOT U158 ( .A(n111), .Z(n150) );
  GTECH_MUX2 U159 ( .A(n153), .B(n154), .S(n111), .Z(N57) );
  GTECH_AND2 U160 ( .A(n155), .B(n152), .Z(n154) );
  GTECH_NOT U161 ( .A(n147), .Z(n153) );
  GTECH_OR_NOT U162 ( .A(n152), .B(n155), .Z(n147) );
  GTECH_NOT U163 ( .A(n156), .Z(n152) );
  GTECH_OR_NOT U164 ( .A(n4), .B(n157), .Z(n156) );
  GTECH_NOT U165 ( .A(n112), .Z(n157) );
  GTECH_MUX2 U166 ( .A(N55), .B(n158), .S(n112), .Z(N56) );
  GTECH_AND2 U167 ( .A(n155), .B(n159), .Z(n158) );
  GTECH_NOT U168 ( .A(n148), .Z(n155) );
  GTECH_NOT U169 ( .A(n160), .Z(N55) );
  GTECH_OR_NOT U170 ( .A(n148), .B(n4), .Z(n160) );
  GTECH_OR_NOT U171 ( .A(N74), .B(n161), .Z(n148) );
  GTECH_OR_NOT U172 ( .A(n146), .B(n125), .Z(N74) );
  GTECH_OAI22 U173 ( .A(n162), .B(n163), .C(n164), .D(n165), .Z(N43) );
  GTECH_OA21 U174 ( .A(ss[6]), .B(n162), .C(n166), .Z(n164) );
  GTECH_MUX2 U175 ( .A(n167), .B(n168), .S(ss[6]), .Z(N41) );
  GTECH_NOT U176 ( .A(n163), .Z(n168) );
  GTECH_OAI21 U177 ( .A(n169), .B(n170), .C(n171), .Z(n163) );
  GTECH_NOT U178 ( .A(ss[4]), .Z(n169) );
  GTECH_AND3 U179 ( .A(n171), .B(ss[4]), .C(ss[5]), .Z(n167) );
  GTECH_MUX2 U180 ( .A(n172), .B(N39), .S(ss[5]), .Z(N40) );
  GTECH_AND2 U181 ( .A(n171), .B(ss[4]), .Z(n172) );
  GTECH_NOT U182 ( .A(n173), .Z(N39) );
  GTECH_OR_NOT U183 ( .A(ss[4]), .B(n171), .Z(n173) );
  GTECH_NOT U184 ( .A(n165), .Z(n171) );
  GTECH_OR_NOT U185 ( .A(N58), .B(n174), .Z(n165) );
  GTECH_OR_NOT U186 ( .A(n161), .B(n125), .Z(N58) );
  GTECH_MUX2 U187 ( .A(n175), .B(n176), .S(ss[3]), .Z(N26) );
  GTECH_OAI21 U188 ( .A(ss[2]), .B(n177), .C(n178), .Z(n176) );
  GTECH_NOT U189 ( .A(n179), .Z(n178) );
  GTECH_AND2 U190 ( .A(ss[2]), .B(n180), .Z(n175) );
  GTECH_OR_NOT U191 ( .A(ena), .B(n125), .Z(N25) );
  GTECH_MUX2 U192 ( .A(n180), .B(n179), .S(ss[2]), .Z(N24) );
  GTECH_OAI21 U193 ( .A(ss[1]), .B(n177), .C(n181), .Z(n179) );
  GTECH_NOT U194 ( .A(n182), .Z(n180) );
  GTECH_NAND3 U195 ( .A(n183), .B(ss[0]), .C(ss[1]), .Z(n182) );
  GTECH_MUX2 U196 ( .A(n184), .B(N22), .S(ss[1]), .Z(N23) );
  GTECH_AND2 U197 ( .A(n183), .B(ss[0]), .Z(n184) );
  GTECH_NOT U198 ( .A(n181), .Z(N22) );
  GTECH_OR_NOT U199 ( .A(ss[0]), .B(n183), .Z(n181) );
  GTECH_NOT U200 ( .A(n177), .Z(n183) );
  GTECH_OR_NOT U201 ( .A(N42), .B(ena), .Z(n177) );
  GTECH_OR_NOT U202 ( .A(n174), .B(n125), .Z(N42) );
  GTECH_AND2 U203 ( .A(n185), .B(n10), .Z(N122) );
  GTECH_OR_NOT U204 ( .A(n185), .B(n125), .Z(N121) );
  GTECH_AND5 U205 ( .A(n6), .B(n186), .C(n7), .D(n124), .E(n8), .Z(n185) );
  GTECH_NOT U206 ( .A(n131), .Z(n124) );
  GTECH_AND5 U207 ( .A(n104), .B(n106), .C(n105), .D(n187), .E(n128), .Z(n186)
         );
  GTECH_AND2 U208 ( .A(n188), .B(n189), .Z(N116) );
  GTECH_XNOR2 U209 ( .A(n190), .B(n8), .Z(n188) );
  GTECH_NOR2 U210 ( .A(n191), .B(n7), .Z(n190) );
  GTECH_NAND3 U211 ( .A(n133), .B(n125), .C(n132), .Z(N115) );
  GTECH_NAND5 U212 ( .A(n9), .B(n8), .C(n7), .D(n6), .E(n192), .Z(n132) );
  GTECH_AND5 U213 ( .A(n130), .B(n187), .C(n193), .D(n104), .E(n105), .Z(n192)
         );
  GTECH_NOT U214 ( .A(n106), .Z(n130) );
  GTECH_AND2 U215 ( .A(n194), .B(n189), .Z(N114) );
  GTECH_XOR2 U216 ( .A(n191), .B(n7), .Z(n194) );
  GTECH_OR_NOT U217 ( .A(n119), .B(n195), .Z(n191) );
  GTECH_NOT U218 ( .A(n6), .Z(n195) );
  GTECH_AND2 U219 ( .A(n189), .B(n196), .Z(N112) );
  GTECH_XOR2 U220 ( .A(n6), .B(n119), .Z(n196) );
  GTECH_NOT U221 ( .A(n197), .Z(n189) );
  GTECH_OAI21 U222 ( .A(n197), .B(n187), .C(n125), .Z(N110) );
  GTECH_NOT U223 ( .A(reset), .Z(n125) );
  GTECH_NOT U224 ( .A(n119), .Z(n187) );
  GTECH_OR_NOT U225 ( .A(n131), .B(n198), .Z(n197) );
  GTECH_NOT U226 ( .A(n133), .Z(n198) );
  GTECH_NAND5 U227 ( .A(n199), .B(n128), .C(n193), .D(n106), .E(n105), .Z(n133) );
  GTECH_NOT U228 ( .A(n9), .Z(n128) );
  GTECH_NOT U229 ( .A(n104), .Z(n199) );
  GTECH_OR_NOT U230 ( .A(reset), .B(n193), .Z(n131) );
  GTECH_NOT U231 ( .A(n145), .Z(n193) );
  GTECH_NAND5 U232 ( .A(n137), .B(n200), .C(n146), .D(n109), .E(n107), .Z(n145) );
  GTECH_NOT U233 ( .A(n201), .Z(n146) );
  GTECH_NAND5 U234 ( .A(n202), .B(n159), .C(n161), .D(n112), .E(n111), .Z(n201) );
  GTECH_NOT U235 ( .A(n203), .Z(n161) );
  GTECH_NAND3 U236 ( .A(n174), .B(n170), .C(n204), .Z(n203) );
  GTECH_NOT U237 ( .A(n166), .Z(n204) );
  GTECH_NAND3 U238 ( .A(ss[4]), .B(n162), .C(ss[6]), .Z(n166) );
  GTECH_NOT U239 ( .A(ss[7]), .Z(n162) );
  GTECH_NOT U240 ( .A(ss[5]), .Z(n170) );
  GTECH_NOT U241 ( .A(n205), .Z(n174) );
  GTECH_NAND5 U242 ( .A(n206), .B(n207), .C(ena), .D(ss[3]), .E(ss[0]), .Z(
        n205) );
  GTECH_NOT U243 ( .A(ss[2]), .Z(n207) );
  GTECH_NOT U244 ( .A(ss[1]), .Z(n206) );
  GTECH_NOT U245 ( .A(n4), .Z(n159) );
  GTECH_NOT U246 ( .A(n110), .Z(n202) );
  GTECH_NOT U247 ( .A(n5), .Z(n200) );
  GTECH_NOT U248 ( .A(n108), .Z(n137) );
endmodule

