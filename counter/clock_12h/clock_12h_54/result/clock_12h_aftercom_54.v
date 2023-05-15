
module clock_12h ( clk, reset, ena, pm, hh, mm, ss );
  output [7:0] hh;
  output [7:0] mm;
  output [7:0] ss;
  input clk, reset, ena;
  output pm;
  wire   N22, N23, N24, N25, N26, N39, N40, N41, N42, N43, N55, N56, N57, N58,
         N59, N71, N72, N73, N74, N75, N88, N89, N90, N91, N92, N110, N112,
         N114, N115, N116, N121, N122, n4, n5, n6, n7, n8, n9, n10, n11, n79,
         n104, n105, n106, n107, n108, n109, n110, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200;

  GTECH_FJK1S ss_ones_reg_0_ ( .J(n79), .K(n79), .TI(N22), .TE(N25), .CP(clk), 
        .Q(ss[0]) );
  GTECH_FJK1S ss_ones_reg_2_ ( .J(n79), .K(n79), .TI(N24), .TE(N25), .CP(clk), 
        .Q(ss[2]) );
  GTECH_FJK1S ss_ones_reg_1_ ( .J(n79), .K(n79), .TI(N23), .TE(N25), .CP(clk), 
        .Q(ss[1]) );
  GTECH_FJK1S ss_ones_reg_3_ ( .J(n79), .K(n79), .TI(N26), .TE(N25), .CP(clk), 
        .Q(ss[3]) );
  GTECH_FJK1S ss_tens_reg_0_ ( .J(n79), .K(n79), .TI(N39), .TE(N42), .CP(clk), 
        .Q(ss[4]) );
  GTECH_FJK1S ss_tens_reg_2_ ( .J(n79), .K(n79), .TI(N41), .TE(N42), .CP(clk), 
        .Q(ss[6]) );
  GTECH_FJK1S ss_tens_reg_3_ ( .J(n79), .K(n79), .TI(N43), .TE(N42), .CP(clk), 
        .Q(ss[7]) );
  GTECH_FJK1S ss_tens_reg_1_ ( .J(n79), .K(n79), .TI(N40), .TE(N42), .CP(clk), 
        .Q(ss[5]) );
  GTECH_FJK1S mm_ones_reg_0_ ( .J(n79), .K(n79), .TI(N55), .TE(N58), .CP(clk), 
        .Q(mm[0]), .QN(n108) );
  GTECH_FJK1S mm_ones_reg_2_ ( .J(n79), .K(n79), .TI(N57), .TE(N58), .CP(clk), 
        .Q(mm[2]), .QN(n109) );
  GTECH_FJK1S mm_ones_reg_1_ ( .J(n79), .K(n79), .TI(N56), .TE(N58), .CP(clk), 
        .Q(mm[1]), .QN(n110) );
  GTECH_FJK1S mm_ones_reg_3_ ( .J(n79), .K(n79), .TI(N59), .TE(N58), .CP(clk), 
        .Q(mm[3]), .QN(n4) );
  GTECH_FJK1S mm_tens_reg_0_ ( .J(n79), .K(n79), .TI(N71), .TE(N74), .CP(clk), 
        .Q(mm[4]), .QN(n5) );
  GTECH_FJK1S mm_tens_reg_2_ ( .J(n79), .K(n79), .TI(N73), .TE(N74), .CP(clk), 
        .Q(mm[6]), .QN(n106) );
  GTECH_FJK1S mm_tens_reg_3_ ( .J(n79), .K(n79), .TI(N75), .TE(N74), .CP(clk), 
        .Q(mm[7]), .QN(n105) );
  GTECH_FJK1S mm_tens_reg_1_ ( .J(n79), .K(n79), .TI(N72), .TE(N74), .CP(clk), 
        .Q(mm[5]), .QN(n107) );
  GTECH_FJK1S hh_tens_reg_0_ ( .J(n79), .K(n79), .TI(N110), .TE(N115), .CP(clk), .Q(hh[4]), .QN(n6) );
  GTECH_FJK1S hh_tens_reg_2_ ( .J(n79), .K(n79), .TI(N114), .TE(N115), .CP(clk), .Q(hh[6]), .QN(n7) );
  GTECH_FJK1S hh_tens_reg_3_ ( .J(n79), .K(n79), .TI(N116), .TE(N115), .CP(clk), .Q(hh[7]), .QN(n8) );
  GTECH_FJK1S hh_ones_reg_0_ ( .J(n79), .K(n79), .TI(N88), .TE(N91), .CP(clk), 
        .Q(hh[0]), .QN(n104) );
  GTECH_FJK1S hh_ones_reg_1_ ( .J(n79), .K(n79), .TI(N89), .TE(N91), .CP(clk), 
        .Q(hh[1]), .QN(n9) );
  GTECH_FJK1S hh_ones_reg_2_ ( .J(n79), .K(n79), .TI(N90), .TE(N91), .CP(clk), 
        .Q(hh[2]), .QN(n117) );
  GTECH_FJK1S hh_ones_reg_3_ ( .J(n79), .K(n79), .TI(N92), .TE(N91), .CP(clk), 
        .Q(hh[3]), .QN(n118) );
  GTECH_FJK1S hh_tens_reg_1_ ( .J(n79), .K(n79), .TI(N112), .TE(N115), .CP(clk), .Q(hh[5]), .QN(n10) );
  GTECH_FJK1S pm_temp_reg ( .J(n79), .K(n79), .TI(N122), .TE(N121), .CP(clk), 
        .Q(pm), .QN(n11) );
  GTECH_ZERO U127 ( .Z(n79) );
  GTECH_AND2 U128 ( .A(n119), .B(n120), .Z(N92) );
  GTECH_XOR2 U129 ( .A(n121), .B(n118), .Z(n119) );
  GTECH_OR2 U130 ( .A(n122), .B(n117), .Z(n121) );
  GTECH_OR_NOT U131 ( .A(n123), .B(n124), .Z(N91) );
  GTECH_AND2 U132 ( .A(n125), .B(n120), .Z(N90) );
  GTECH_XOR2 U133 ( .A(n122), .B(n117), .Z(n125) );
  GTECH_OR_NOT U134 ( .A(n104), .B(n126), .Z(n122) );
  GTECH_AO21 U135 ( .A(n120), .B(n127), .C(reset), .Z(N89) );
  GTECH_XOR2 U136 ( .A(n9), .B(n104), .Z(n127) );
  GTECH_NOT U137 ( .A(n128), .Z(n120) );
  GTECH_OAI22 U138 ( .A(n129), .B(n130), .C(n131), .D(n128), .Z(N88) );
  GTECH_NAND3 U139 ( .A(n130), .B(n132), .C(n123), .Z(n128) );
  GTECH_MUX2 U140 ( .A(n133), .B(n134), .S(n105), .Z(N75) );
  GTECH_AND2 U141 ( .A(n135), .B(n136), .Z(n134) );
  GTECH_AO21 U142 ( .A(n106), .B(n137), .C(n138), .Z(n133) );
  GTECH_MUX2 U143 ( .A(n138), .B(n139), .S(n106), .Z(N73) );
  GTECH_AND_NOT U144 ( .A(n135), .B(n107), .Z(n139) );
  GTECH_AO21 U145 ( .A(n137), .B(n107), .C(N71), .Z(n138) );
  GTECH_MUX2 U146 ( .A(N71), .B(n135), .S(n107), .Z(N72) );
  GTECH_NOT U147 ( .A(n140), .Z(n135) );
  GTECH_OR_NOT U148 ( .A(n5), .B(n137), .Z(n140) );
  GTECH_NOT U149 ( .A(n141), .Z(n137) );
  GTECH_NOT U150 ( .A(n142), .Z(N71) );
  GTECH_OR_NOT U151 ( .A(n141), .B(n5), .Z(n142) );
  GTECH_NAND3 U152 ( .A(n143), .B(n124), .C(n144), .Z(n141) );
  GTECH_OAI22 U153 ( .A(n4), .B(n145), .C(n146), .D(n147), .Z(N59) );
  GTECH_MUX2 U154 ( .A(n148), .B(n149), .S(n4), .Z(n147) );
  GTECH_OR_NOT U155 ( .A(n109), .B(n150), .Z(n149) );
  GTECH_NOT U156 ( .A(n109), .Z(n148) );
  GTECH_MUX2 U157 ( .A(n151), .B(n152), .S(n109), .Z(N57) );
  GTECH_AND2 U158 ( .A(n153), .B(n150), .Z(n152) );
  GTECH_NOT U159 ( .A(n145), .Z(n151) );
  GTECH_OR_NOT U160 ( .A(n150), .B(n153), .Z(n145) );
  GTECH_NOT U161 ( .A(n154), .Z(n150) );
  GTECH_OR_NOT U162 ( .A(n110), .B(n155), .Z(n154) );
  GTECH_MUX2 U163 ( .A(N55), .B(n156), .S(n110), .Z(N56) );
  GTECH_AND2 U164 ( .A(n153), .B(n155), .Z(n156) );
  GTECH_NOT U165 ( .A(n146), .Z(n153) );
  GTECH_NOT U166 ( .A(n157), .Z(N55) );
  GTECH_OR_NOT U167 ( .A(n146), .B(n108), .Z(n157) );
  GTECH_OR_NOT U168 ( .A(N74), .B(n158), .Z(n146) );
  GTECH_OR_NOT U169 ( .A(n144), .B(n124), .Z(N74) );
  GTECH_OAI2N2 U170 ( .A(n159), .B(n160), .C(n161), .D(ss[7]), .Z(N43) );
  GTECH_OA21 U171 ( .A(n162), .B(ss[6]), .C(n163), .Z(n159) );
  GTECH_MUX2 U172 ( .A(n164), .B(n161), .S(ss[6]), .Z(N41) );
  GTECH_AO21 U173 ( .A(n165), .B(n166), .C(N39), .Z(n161) );
  GTECH_AND3 U174 ( .A(n165), .B(ss[4]), .C(ss[5]), .Z(n164) );
  GTECH_MUX2 U175 ( .A(n167), .B(N39), .S(ss[5]), .Z(N40) );
  GTECH_AND2 U176 ( .A(n165), .B(ss[4]), .Z(n167) );
  GTECH_NOT U177 ( .A(n168), .Z(N39) );
  GTECH_OR_NOT U178 ( .A(ss[4]), .B(n165), .Z(n168) );
  GTECH_NOT U179 ( .A(n160), .Z(n165) );
  GTECH_OR_NOT U180 ( .A(N58), .B(n169), .Z(n160) );
  GTECH_OR_NOT U181 ( .A(n158), .B(n124), .Z(N58) );
  GTECH_MUX2 U182 ( .A(n170), .B(n171), .S(ss[3]), .Z(N26) );
  GTECH_AO21 U183 ( .A(n172), .B(n173), .C(n174), .Z(n171) );
  GTECH_AND2 U184 ( .A(ss[2]), .B(n175), .Z(n170) );
  GTECH_OR_NOT U185 ( .A(ena), .B(n124), .Z(N25) );
  GTECH_MUX2 U186 ( .A(n175), .B(n174), .S(ss[2]), .Z(N24) );
  GTECH_AO21 U187 ( .A(n172), .B(n176), .C(N22), .Z(n174) );
  GTECH_NOT U188 ( .A(n177), .Z(n175) );
  GTECH_NAND3 U189 ( .A(n172), .B(ss[0]), .C(ss[1]), .Z(n177) );
  GTECH_MUX2 U190 ( .A(n178), .B(N22), .S(ss[1]), .Z(N23) );
  GTECH_AND2 U191 ( .A(n172), .B(ss[0]), .Z(n178) );
  GTECH_NOT U192 ( .A(n179), .Z(N22) );
  GTECH_OR_NOT U193 ( .A(ss[0]), .B(n172), .Z(n179) );
  GTECH_NOT U194 ( .A(n180), .Z(n172) );
  GTECH_OR_NOT U195 ( .A(N42), .B(ena), .Z(n180) );
  GTECH_OR_NOT U196 ( .A(n169), .B(n124), .Z(N42) );
  GTECH_AND2 U197 ( .A(n181), .B(n11), .Z(N122) );
  GTECH_OR_NOT U198 ( .A(n181), .B(n124), .Z(N121) );
  GTECH_AND5 U199 ( .A(n118), .B(n182), .C(n7), .D(n123), .E(n8), .Z(n181) );
  GTECH_NOT U200 ( .A(n129), .Z(n123) );
  GTECH_AND5 U201 ( .A(n10), .B(n9), .C(n117), .D(n131), .E(n183), .Z(n182) );
  GTECH_AND2 U202 ( .A(n184), .B(n185), .Z(N116) );
  GTECH_XOR2 U203 ( .A(n186), .B(n8), .Z(n184) );
  GTECH_OR2 U204 ( .A(n187), .B(n7), .Z(n186) );
  GTECH_NAND3 U205 ( .A(n132), .B(n124), .C(n130), .Z(N115) );
  GTECH_NAND5 U206 ( .A(n8), .B(n7), .C(n118), .D(n104), .E(n188), .Z(n130) );
  GTECH_AND5 U207 ( .A(n183), .B(n126), .C(n189), .D(n10), .E(n117), .Z(n188)
         );
  GTECH_NOT U208 ( .A(n9), .Z(n126) );
  GTECH_NOT U209 ( .A(reset), .Z(n124) );
  GTECH_AND2 U210 ( .A(n190), .B(n185), .Z(N114) );
  GTECH_XOR2 U211 ( .A(n187), .B(n7), .Z(n190) );
  GTECH_OR_NOT U212 ( .A(n10), .B(n183), .Z(n187) );
  GTECH_NOT U213 ( .A(n6), .Z(n183) );
  GTECH_AND2 U214 ( .A(n185), .B(n191), .Z(N112) );
  GTECH_XOR2 U215 ( .A(n6), .B(n10), .Z(n191) );
  GTECH_AO21 U216 ( .A(n6), .B(n185), .C(reset), .Z(N110) );
  GTECH_NOT U217 ( .A(n192), .Z(n185) );
  GTECH_OR_NOT U218 ( .A(n129), .B(n193), .Z(n192) );
  GTECH_NOT U219 ( .A(n132), .Z(n193) );
  GTECH_NAND5 U220 ( .A(n131), .B(n194), .C(n189), .D(n9), .E(n117), .Z(n132)
         );
  GTECH_NOT U221 ( .A(n118), .Z(n194) );
  GTECH_NOT U222 ( .A(n104), .Z(n131) );
  GTECH_OR_NOT U223 ( .A(reset), .B(n189), .Z(n129) );
  GTECH_NOT U224 ( .A(n143), .Z(n189) );
  GTECH_NAND5 U225 ( .A(n136), .B(n195), .C(n144), .D(n107), .E(n105), .Z(n143) );
  GTECH_NOT U226 ( .A(n196), .Z(n144) );
  GTECH_NAND5 U227 ( .A(n155), .B(n197), .C(n158), .D(n110), .E(n109), .Z(n196) );
  GTECH_NOT U228 ( .A(n198), .Z(n158) );
  GTECH_NAND3 U229 ( .A(n199), .B(n166), .C(n169), .Z(n198) );
  GTECH_NOT U230 ( .A(n200), .Z(n169) );
  GTECH_NAND5 U231 ( .A(n176), .B(n173), .C(ena), .D(ss[3]), .E(ss[0]), .Z(
        n200) );
  GTECH_NOT U232 ( .A(ss[2]), .Z(n173) );
  GTECH_NOT U233 ( .A(ss[1]), .Z(n176) );
  GTECH_NOT U234 ( .A(ss[5]), .Z(n166) );
  GTECH_NOT U235 ( .A(n163), .Z(n199) );
  GTECH_NAND3 U236 ( .A(ss[4]), .B(n162), .C(ss[6]), .Z(n163) );
  GTECH_NOT U237 ( .A(ss[7]), .Z(n162) );
  GTECH_NOT U238 ( .A(n4), .Z(n197) );
  GTECH_NOT U239 ( .A(n108), .Z(n155) );
  GTECH_NOT U240 ( .A(n5), .Z(n195) );
  GTECH_NOT U241 ( .A(n106), .Z(n136) );
endmodule

