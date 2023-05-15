
module clock_12h ( clk, reset, ena, pm, hh, mm, ss );
  output [7:0] hh;
  output [7:0] mm;
  output [7:0] ss;
  input clk, reset, ena;
  output pm;
  wire   N22, N23, N24, N25, N26, N39, N40, N41, N42, N43, N55, N56, N57, N58,
         N59, N71, N72, N73, N74, N75, N88, N89, N90, N91, N92, N110, N112,
         N114, N115, N116, N121, N122, n4, n5, n6, n7, n8, n9, n10, n11, n79,
         n104, n105, n106, n107, n108, n109, n110, n116, n117, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208;

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
  GTECH_FJK1S ss_tens_reg_2_ ( .J(n79), .K(n79), .TI(N41), .TE(N42), .CP(clk), 
        .Q(ss[6]) );
  GTECH_FJK1S ss_tens_reg_1_ ( .J(n79), .K(n79), .TI(N40), .TE(N42), .CP(clk), 
        .Q(ss[5]) );
  GTECH_FJK1S ss_tens_reg_3_ ( .J(n79), .K(n79), .TI(N43), .TE(N42), .CP(clk), 
        .Q(ss[7]) );
  GTECH_FJK1S mm_ones_reg_0_ ( .J(n79), .K(n79), .TI(N55), .TE(N58), .CP(clk), 
        .Q(mm[0]), .QN(n4) );
  GTECH_FJK1S mm_ones_reg_3_ ( .J(n79), .K(n79), .TI(N59), .TE(N58), .CP(clk), 
        .Q(mm[3]), .QN(n108) );
  GTECH_FJK1S mm_ones_reg_1_ ( .J(n79), .K(n79), .TI(N56), .TE(N58), .CP(clk), 
        .Q(mm[1]), .QN(n110) );
  GTECH_FJK1S mm_ones_reg_2_ ( .J(n79), .K(n79), .TI(N57), .TE(N58), .CP(clk), 
        .Q(mm[2]), .QN(n109) );
  GTECH_FJK1S mm_tens_reg_0_ ( .J(n79), .K(n79), .TI(N71), .TE(N74), .CP(clk), 
        .Q(mm[4]), .QN(n107) );
  GTECH_FJK1S mm_tens_reg_2_ ( .J(n79), .K(n79), .TI(N73), .TE(N74), .CP(clk), 
        .Q(mm[6]), .QN(n106) );
  GTECH_FJK1S mm_tens_reg_3_ ( .J(n79), .K(n79), .TI(N75), .TE(N74), .CP(clk), 
        .Q(mm[7]), .QN(n5) );
  GTECH_FJK1S mm_tens_reg_1_ ( .J(n79), .K(n79), .TI(N72), .TE(N74), .CP(clk), 
        .Q(mm[5]), .QN(n6) );
  GTECH_FJK1S hh_tens_reg_0_ ( .J(n79), .K(n79), .TI(N110), .TE(N115), .CP(clk), .Q(hh[4]), .QN(n116) );
  GTECH_FJK1S hh_tens_reg_2_ ( .J(n79), .K(n79), .TI(N114), .TE(N115), .CP(clk), .Q(hh[6]), .QN(n7) );
  GTECH_FJK1S hh_tens_reg_3_ ( .J(n79), .K(n79), .TI(N116), .TE(N115), .CP(clk), .Q(hh[7]), .QN(n8) );
  GTECH_FJK1S hh_ones_reg_0_ ( .J(n79), .K(n79), .TI(N88), .TE(N91), .CP(clk), 
        .Q(hh[0]), .QN(n9) );
  GTECH_FJK1S hh_ones_reg_1_ ( .J(n79), .K(n79), .TI(N89), .TE(N91), .CP(clk), 
        .Q(hh[1]), .QN(n105) );
  GTECH_FJK1S hh_ones_reg_2_ ( .J(n79), .K(n79), .TI(N90), .TE(N91), .CP(clk), 
        .Q(hh[2]), .QN(n104) );
  GTECH_FJK1S hh_ones_reg_3_ ( .J(n79), .K(n79), .TI(N92), .TE(N91), .CP(clk), 
        .Q(hh[3]), .QN(n117) );
  GTECH_FJK1S hh_tens_reg_1_ ( .J(n79), .K(n79), .TI(N112), .TE(N115), .CP(clk), .Q(hh[5]), .QN(n10) );
  GTECH_FJK1S pm_temp_reg ( .J(n79), .K(n79), .TI(N122), .TE(N121), .CP(clk), 
        .Q(pm), .QN(n11) );
  GTECH_ZERO U127 ( .Z(n79) );
  GTECH_AND2 U128 ( .A(n119), .B(n120), .Z(N92) );
  GTECH_XNOR2 U129 ( .A(n117), .B(n121), .Z(n120) );
  GTECH_AND_NOT U130 ( .A(n122), .B(n104), .Z(n121) );
  GTECH_OR_NOT U131 ( .A(n123), .B(n124), .Z(N91) );
  GTECH_AND2 U132 ( .A(n125), .B(n119), .Z(N90) );
  GTECH_NOT U133 ( .A(n126), .Z(n119) );
  GTECH_XNOR2 U134 ( .A(n104), .B(n122), .Z(n125) );
  GTECH_NOT U135 ( .A(n127), .Z(n122) );
  GTECH_OR_NOT U136 ( .A(n105), .B(n128), .Z(n127) );
  GTECH_OAI21 U137 ( .A(n129), .B(n126), .C(n124), .Z(N89) );
  GTECH_XNOR2 U138 ( .A(n9), .B(n105), .Z(n129) );
  GTECH_OAI22 U139 ( .A(n130), .B(n131), .C(n128), .D(n126), .Z(N88) );
  GTECH_NAND3 U140 ( .A(n131), .B(n132), .C(n123), .Z(n126) );
  GTECH_MUX2 U141 ( .A(n133), .B(n134), .S(n5), .Z(N75) );
  GTECH_AND2 U142 ( .A(n135), .B(n136), .Z(n134) );
  GTECH_OAI21 U143 ( .A(n137), .B(n136), .C(n138), .Z(n133) );
  GTECH_NOT U144 ( .A(n139), .Z(N73) );
  GTECH_MUX2 U145 ( .A(n138), .B(n140), .S(n106), .Z(n139) );
  GTECH_OR_NOT U146 ( .A(n6), .B(n135), .Z(n140) );
  GTECH_OAI21 U147 ( .A(n6), .B(n107), .C(n141), .Z(n138) );
  GTECH_MUX2 U148 ( .A(N71), .B(n135), .S(n6), .Z(N72) );
  GTECH_NOT U149 ( .A(n142), .Z(n135) );
  GTECH_OR_NOT U150 ( .A(n107), .B(n141), .Z(n142) );
  GTECH_NOT U151 ( .A(n137), .Z(n141) );
  GTECH_NOT U152 ( .A(n143), .Z(N71) );
  GTECH_OR_NOT U153 ( .A(n137), .B(n107), .Z(n143) );
  GTECH_NAND3 U154 ( .A(n144), .B(n124), .C(n145), .Z(n137) );
  GTECH_MUX2 U155 ( .A(n146), .B(n147), .S(n108), .Z(N59) );
  GTECH_AND2 U156 ( .A(n148), .B(n149), .Z(n147) );
  GTECH_OAI21 U157 ( .A(n149), .B(n150), .C(n151), .Z(n146) );
  GTECH_NOT U158 ( .A(n152), .Z(n151) );
  GTECH_NOT U159 ( .A(n109), .Z(n149) );
  GTECH_MUX2 U160 ( .A(n152), .B(n148), .S(n109), .Z(N57) );
  GTECH_NOT U161 ( .A(n153), .Z(n148) );
  GTECH_NAND3 U162 ( .A(n154), .B(n155), .C(n156), .Z(n153) );
  GTECH_OAI21 U163 ( .A(n154), .B(n150), .C(n157), .Z(n152) );
  GTECH_NOT U164 ( .A(n110), .Z(n154) );
  GTECH_MUX2 U165 ( .A(N55), .B(n158), .S(n110), .Z(N56) );
  GTECH_AND2 U166 ( .A(n156), .B(n155), .Z(n158) );
  GTECH_NOT U167 ( .A(n150), .Z(n156) );
  GTECH_NOT U168 ( .A(n157), .Z(N55) );
  GTECH_OR_NOT U169 ( .A(n150), .B(n4), .Z(n157) );
  GTECH_OR_NOT U170 ( .A(N74), .B(n159), .Z(n150) );
  GTECH_OR_NOT U171 ( .A(n145), .B(n124), .Z(N74) );
  GTECH_MUX2 U172 ( .A(n160), .B(n161), .S(ss[7]), .Z(N43) );
  GTECH_OAI21 U173 ( .A(ss[6]), .B(n162), .C(n163), .Z(n161) );
  GTECH_NOT U174 ( .A(n164), .Z(n163) );
  GTECH_AND2 U175 ( .A(n165), .B(ss[6]), .Z(n160) );
  GTECH_MUX2 U176 ( .A(n166), .B(n164), .S(ss[6]), .Z(N41) );
  GTECH_OAI21 U177 ( .A(ss[5]), .B(n162), .C(n167), .Z(n164) );
  GTECH_AND2 U178 ( .A(ss[5]), .B(n165), .Z(n166) );
  GTECH_MUX2 U179 ( .A(n165), .B(N39), .S(ss[5]), .Z(N40) );
  GTECH_NOT U180 ( .A(n168), .Z(n165) );
  GTECH_OR_NOT U181 ( .A(n169), .B(n170), .Z(n168) );
  GTECH_NOT U182 ( .A(ss[4]), .Z(n169) );
  GTECH_NOT U183 ( .A(n167), .Z(N39) );
  GTECH_OR_NOT U184 ( .A(ss[4]), .B(n170), .Z(n167) );
  GTECH_NOT U185 ( .A(n162), .Z(n170) );
  GTECH_OR_NOT U186 ( .A(N58), .B(n171), .Z(n162) );
  GTECH_OR_NOT U187 ( .A(n159), .B(n124), .Z(N58) );
  GTECH_OAI22 U188 ( .A(n172), .B(n173), .C(n174), .D(n175), .Z(N26) );
  GTECH_MUX2 U189 ( .A(n172), .B(n176), .S(ss[2]), .Z(n175) );
  GTECH_OR_NOT U190 ( .A(ss[3]), .B(n177), .Z(n176) );
  GTECH_NOT U191 ( .A(ss[3]), .Z(n172) );
  GTECH_OR_NOT U192 ( .A(ena), .B(n124), .Z(N25) );
  GTECH_MUX2 U193 ( .A(n178), .B(n179), .S(ss[2]), .Z(N24) );
  GTECH_NOT U194 ( .A(n173), .Z(n179) );
  GTECH_OR_NOT U195 ( .A(n177), .B(n180), .Z(n173) );
  GTECH_AND2 U196 ( .A(n180), .B(n177), .Z(n178) );
  GTECH_NOT U197 ( .A(n181), .Z(n177) );
  GTECH_OR_NOT U198 ( .A(n182), .B(ss[1]), .Z(n181) );
  GTECH_NOT U199 ( .A(ss[0]), .Z(n182) );
  GTECH_MUX2 U200 ( .A(n183), .B(N22), .S(ss[1]), .Z(N23) );
  GTECH_AND2 U201 ( .A(n180), .B(ss[0]), .Z(n183) );
  GTECH_NOT U202 ( .A(n184), .Z(N22) );
  GTECH_OR_NOT U203 ( .A(ss[0]), .B(n180), .Z(n184) );
  GTECH_NOT U204 ( .A(n174), .Z(n180) );
  GTECH_OR_NOT U205 ( .A(N42), .B(ena), .Z(n174) );
  GTECH_OR_NOT U206 ( .A(n171), .B(n124), .Z(N42) );
  GTECH_AND2 U207 ( .A(n185), .B(n11), .Z(N122) );
  GTECH_OR_NOT U208 ( .A(n185), .B(n124), .Z(N121) );
  GTECH_AND5 U209 ( .A(n117), .B(n186), .C(n7), .D(n123), .E(n8), .Z(n185) );
  GTECH_NOT U210 ( .A(n130), .Z(n123) );
  GTECH_AND5 U211 ( .A(n10), .B(n105), .C(n104), .D(n187), .E(n128), .Z(n186)
         );
  GTECH_AND2 U212 ( .A(n188), .B(n189), .Z(N116) );
  GTECH_XNOR2 U213 ( .A(n8), .B(n190), .Z(n189) );
  GTECH_AND_NOT U214 ( .A(n191), .B(n7), .Z(n190) );
  GTECH_NAND3 U215 ( .A(n132), .B(n124), .C(n131), .Z(N115) );
  GTECH_NAND8 U216 ( .A(n187), .B(n192), .C(n193), .D(n10), .E(n117), .F(n7), 
        .G(n9), .H(n8), .Z(n131) );
  GTECH_AND_NOT U217 ( .A(n104), .B(n105), .Z(n193) );
  GTECH_AND2 U218 ( .A(n194), .B(n188), .Z(N114) );
  GTECH_XNOR2 U219 ( .A(n7), .B(n191), .Z(n194) );
  GTECH_NOT U220 ( .A(n195), .Z(n191) );
  GTECH_OR_NOT U221 ( .A(n10), .B(n187), .Z(n195) );
  GTECH_AND_NOT U222 ( .A(n188), .B(n196), .Z(N112) );
  GTECH_XNOR2 U223 ( .A(n116), .B(n10), .Z(n196) );
  GTECH_NOT U224 ( .A(n197), .Z(n188) );
  GTECH_OAI21 U225 ( .A(n197), .B(n187), .C(n124), .Z(N110) );
  GTECH_NOT U226 ( .A(reset), .Z(n124) );
  GTECH_NOT U227 ( .A(n116), .Z(n187) );
  GTECH_OR_NOT U228 ( .A(n130), .B(n198), .Z(n197) );
  GTECH_NOT U229 ( .A(n132), .Z(n198) );
  GTECH_NAND5 U230 ( .A(n199), .B(n128), .C(n192), .D(n105), .E(n104), .Z(n132) );
  GTECH_NOT U231 ( .A(n9), .Z(n128) );
  GTECH_NOT U232 ( .A(n117), .Z(n199) );
  GTECH_OR_NOT U233 ( .A(reset), .B(n192), .Z(n130) );
  GTECH_NOT U234 ( .A(n144), .Z(n192) );
  GTECH_NAND5 U235 ( .A(n136), .B(n200), .C(n145), .D(n6), .E(n5), .Z(n144) );
  GTECH_NOT U236 ( .A(n201), .Z(n145) );
  GTECH_NAND5 U237 ( .A(n202), .B(n155), .C(n159), .D(n110), .E(n109), .Z(n201) );
  GTECH_NOT U238 ( .A(n203), .Z(n159) );
  GTECH_NAND5 U239 ( .A(n204), .B(n205), .C(n171), .D(ss[6]), .E(ss[4]), .Z(
        n203) );
  GTECH_NOT U240 ( .A(n206), .Z(n171) );
  GTECH_NAND5 U241 ( .A(n207), .B(n208), .C(ena), .D(ss[3]), .E(ss[0]), .Z(
        n206) );
  GTECH_NOT U242 ( .A(ss[2]), .Z(n208) );
  GTECH_NOT U243 ( .A(ss[1]), .Z(n207) );
  GTECH_NOT U244 ( .A(ss[7]), .Z(n205) );
  GTECH_NOT U245 ( .A(ss[5]), .Z(n204) );
  GTECH_NOT U246 ( .A(n4), .Z(n155) );
  GTECH_NOT U247 ( .A(n108), .Z(n202) );
  GTECH_NOT U248 ( .A(n107), .Z(n200) );
  GTECH_NOT U249 ( .A(n106), .Z(n136) );
endmodule

