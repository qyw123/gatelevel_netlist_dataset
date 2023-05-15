
module clock_12h ( clk, reset, ena, pm, hh, mm, ss );
  output [7:0] hh;
  output [7:0] mm;
  output [7:0] ss;
  input clk, reset, ena;
  output pm;
  wire   N22, N23, N24, N25, N26, N39, N40, N41, N42, N43, N55, N56, N57, N58,
         N59, N71, N72, N73, N74, N75, N88, N89, N90, N91, N92, N110, N112,
         N114, N115, N116, N121, N122, n3, n4, n5, n6, n7, n77, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196;

  GTECH_FJK1S ss_ones_reg_0_ ( .J(n77), .K(n77), .TI(N22), .TE(N25), .CP(clk), 
        .Q(ss[0]) );
  GTECH_FJK1S ss_ones_reg_3_ ( .J(n77), .K(n77), .TI(N26), .TE(N25), .CP(clk), 
        .Q(ss[3]) );
  GTECH_FJK1S ss_ones_reg_1_ ( .J(n77), .K(n77), .TI(N23), .TE(N25), .CP(clk), 
        .Q(ss[1]) );
  GTECH_FJK1S ss_ones_reg_2_ ( .J(n77), .K(n77), .TI(N24), .TE(N25), .CP(clk), 
        .Q(ss[2]) );
  GTECH_FJK1S ss_tens_reg_0_ ( .J(n77), .K(n77), .TI(N39), .TE(N42), .CP(clk), 
        .Q(ss[4]) );
  GTECH_FJK1S ss_tens_reg_3_ ( .J(n77), .K(n77), .TI(N43), .TE(N42), .CP(clk), 
        .Q(ss[7]) );
  GTECH_FJK1S ss_tens_reg_1_ ( .J(n77), .K(n77), .TI(N40), .TE(N42), .CP(clk), 
        .Q(ss[5]) );
  GTECH_FJK1S ss_tens_reg_2_ ( .J(n77), .K(n77), .TI(N41), .TE(N42), .CP(clk), 
        .Q(ss[6]) );
  GTECH_FJK1S mm_ones_reg_0_ ( .J(n77), .K(n77), .TI(N55), .TE(N58), .CP(clk), 
        .Q(mm[0]), .QN(n110) );
  GTECH_FJK1S mm_ones_reg_3_ ( .J(n77), .K(n77), .TI(N59), .TE(N58), .CP(clk), 
        .Q(mm[3]), .QN(n107) );
  GTECH_FJK1S mm_ones_reg_1_ ( .J(n77), .K(n77), .TI(N56), .TE(N58), .CP(clk), 
        .Q(mm[1]), .QN(n109) );
  GTECH_FJK1S mm_ones_reg_2_ ( .J(n77), .K(n77), .TI(N57), .TE(N58), .CP(clk), 
        .Q(mm[2]), .QN(n108) );
  GTECH_FJK1S mm_tens_reg_0_ ( .J(n77), .K(n77), .TI(N71), .TE(N74), .CP(clk), 
        .Q(mm[4]), .QN(n106) );
  GTECH_FJK1S mm_tens_reg_3_ ( .J(n77), .K(n77), .TI(N75), .TE(N74), .CP(clk), 
        .Q(mm[7]), .QN(n103) );
  GTECH_FJK1S mm_tens_reg_1_ ( .J(n77), .K(n77), .TI(N72), .TE(N74), .CP(clk), 
        .Q(mm[5]), .QN(n105) );
  GTECH_FJK1S mm_tens_reg_2_ ( .J(n77), .K(n77), .TI(N73), .TE(N74), .CP(clk), 
        .Q(mm[6]), .QN(n104) );
  GTECH_FJK1S hh_tens_reg_0_ ( .J(n77), .K(n77), .TI(N110), .TE(N115), .CP(clk), .Q(hh[4]), .QN(n119) );
  GTECH_FJK1S hh_tens_reg_2_ ( .J(n77), .K(n77), .TI(N114), .TE(N115), .CP(clk), .Q(hh[6]), .QN(n3) );
  GTECH_FJK1S hh_tens_reg_3_ ( .J(n77), .K(n77), .TI(N116), .TE(N115), .CP(clk), .Q(hh[7]), .QN(n4) );
  GTECH_FJK1S hh_ones_reg_0_ ( .J(n77), .K(n77), .TI(N88), .TE(N91), .CP(clk), 
        .Q(hh[0]), .QN(n5) );
  GTECH_FJK1S hh_ones_reg_1_ ( .J(n77), .K(n77), .TI(N89), .TE(N91), .CP(clk), 
        .Q(hh[1]), .QN(n118) );
  GTECH_FJK1S hh_ones_reg_2_ ( .J(n77), .K(n77), .TI(N90), .TE(N91), .CP(clk), 
        .Q(hh[2]), .QN(n102) );
  GTECH_FJK1S hh_ones_reg_3_ ( .J(n77), .K(n77), .TI(N92), .TE(N91), .CP(clk), 
        .Q(hh[3]), .QN(n6) );
  GTECH_FJK1S hh_tens_reg_1_ ( .J(n77), .K(n77), .TI(N112), .TE(N115), .CP(clk), .Q(hh[5]), .QN(n7) );
  GTECH_FJK1S pm_temp_reg ( .J(n77), .K(n77), .TI(N122), .TE(N121), .CP(clk), 
        .Q(pm) );
  GTECH_ZERO U128 ( .Z(n77) );
  GTECH_AND_NOT U129 ( .A(n120), .B(n121), .Z(N92) );
  GTECH_XOR2 U130 ( .A(n122), .B(n6), .Z(n120) );
  GTECH_OR2 U131 ( .A(n102), .B(n123), .Z(n122) );
  GTECH_NAND2 U132 ( .A(n124), .B(n125), .Z(N91) );
  GTECH_AND_NOT U133 ( .A(n126), .B(n121), .Z(N90) );
  GTECH_XOR2 U134 ( .A(n123), .B(n102), .Z(n126) );
  GTECH_NAND2 U135 ( .A(n127), .B(n128), .Z(n123) );
  GTECH_OAI21 U136 ( .A(n129), .B(n121), .C(n124), .Z(N89) );
  GTECH_XOR2 U137 ( .A(n128), .B(n5), .Z(n129) );
  GTECH_OAI22 U138 ( .A(n125), .B(n130), .C(n127), .D(n121), .Z(N88) );
  GTECH_NAND3 U139 ( .A(n130), .B(n131), .C(n132), .Z(n121) );
  GTECH_AND_NOT U140 ( .A(n133), .B(n134), .Z(N75) );
  GTECH_MUX2 U141 ( .A(n135), .B(n136), .S(n103), .Z(n133) );
  GTECH_AND_NOT U142 ( .A(n137), .B(n106), .Z(n136) );
  GTECH_OR_NOT U143 ( .A(n138), .B(n137), .Z(n135) );
  GTECH_AND_NOT U144 ( .A(n139), .B(n134), .Z(N73) );
  GTECH_XOR2 U145 ( .A(n138), .B(n104), .Z(n139) );
  GTECH_AND_NOT U146 ( .A(n140), .B(n134), .Z(N72) );
  GTECH_OA21 U147 ( .A(n141), .B(n142), .C(n138), .Z(n140) );
  GTECH_NAND2 U148 ( .A(n141), .B(n142), .Z(n138) );
  GTECH_NOT U149 ( .A(n105), .Z(n141) );
  GTECH_AND_NOT U150 ( .A(n106), .B(n134), .Z(N71) );
  GTECH_NAND3 U151 ( .A(n143), .B(n124), .C(n144), .Z(n134) );
  GTECH_AND_NOT U152 ( .A(n145), .B(n146), .Z(N59) );
  GTECH_XOR2 U153 ( .A(n147), .B(n107), .Z(n145) );
  GTECH_OR2 U154 ( .A(n108), .B(n148), .Z(n147) );
  GTECH_AND_NOT U155 ( .A(n149), .B(n146), .Z(N57) );
  GTECH_XOR2 U156 ( .A(n148), .B(n108), .Z(n149) );
  GTECH_AND_NOT U157 ( .A(n150), .B(n146), .Z(N56) );
  GTECH_OA21 U158 ( .A(n151), .B(n152), .C(n148), .Z(n150) );
  GTECH_NAND2 U159 ( .A(n151), .B(n152), .Z(n148) );
  GTECH_NOT U160 ( .A(n109), .Z(n151) );
  GTECH_AND_NOT U161 ( .A(n110), .B(n146), .Z(N55) );
  GTECH_NAND2 U162 ( .A(n153), .B(n154), .Z(n146) );
  GTECH_NOT U163 ( .A(N74), .Z(n154) );
  GTECH_NAND2 U164 ( .A(n124), .B(n155), .Z(N74) );
  GTECH_NOR2 U165 ( .A(n156), .B(n157), .Z(N43) );
  GTECH_MUX2 U166 ( .A(n158), .B(n159), .S(ss[7]), .Z(n157) );
  GTECH_AND_NOT U167 ( .A(ss[6]), .B(n160), .Z(n159) );
  GTECH_NAND2 U168 ( .A(ss[6]), .B(ss[4]), .Z(n158) );
  GTECH_AND_NOT U169 ( .A(n161), .B(n162), .Z(N41) );
  GTECH_XOR2 U170 ( .A(n160), .B(ss[6]), .Z(n162) );
  GTECH_AND_NOT U171 ( .A(n163), .B(n156), .Z(N40) );
  GTECH_OA21 U172 ( .A(ss[4]), .B(ss[5]), .C(n160), .Z(n163) );
  GTECH_NAND2 U173 ( .A(ss[5]), .B(ss[4]), .Z(n160) );
  GTECH_AND_NOT U174 ( .A(n161), .B(ss[4]), .Z(N39) );
  GTECH_NOT U175 ( .A(n156), .Z(n161) );
  GTECH_NAND2 U176 ( .A(n164), .B(n165), .Z(n156) );
  GTECH_NOT U177 ( .A(N58), .Z(n165) );
  GTECH_NAND2 U178 ( .A(n124), .B(n166), .Z(N58) );
  GTECH_AND_NOT U179 ( .A(n167), .B(n168), .Z(N26) );
  GTECH_XOR2 U180 ( .A(n169), .B(ss[3]), .Z(n168) );
  GTECH_OR_NOT U181 ( .A(n170), .B(ss[2]), .Z(n169) );
  GTECH_NAND2 U182 ( .A(n124), .B(n171), .Z(N25) );
  GTECH_NOT U183 ( .A(ena), .Z(n171) );
  GTECH_AND_NOT U184 ( .A(n167), .B(n172), .Z(N24) );
  GTECH_XOR2 U185 ( .A(n170), .B(ss[2]), .Z(n172) );
  GTECH_AND_NOT U186 ( .A(n173), .B(n174), .Z(N23) );
  GTECH_OA21 U187 ( .A(ss[0]), .B(ss[1]), .C(n170), .Z(n173) );
  GTECH_NAND2 U188 ( .A(ss[1]), .B(ss[0]), .Z(n170) );
  GTECH_AND_NOT U189 ( .A(n167), .B(ss[0]), .Z(N22) );
  GTECH_NOT U190 ( .A(n174), .Z(n167) );
  GTECH_NAND2 U191 ( .A(ena), .B(n175), .Z(n174) );
  GTECH_NOT U192 ( .A(N42), .Z(n175) );
  GTECH_NAND2 U193 ( .A(n124), .B(n176), .Z(N42) );
  GTECH_AND_NOT U194 ( .A(n177), .B(pm), .Z(N122) );
  GTECH_NOT U195 ( .A(n178), .Z(n177) );
  GTECH_NAND2 U196 ( .A(n124), .B(n178), .Z(N121) );
  GTECH_NAND4 U197 ( .A(n132), .B(n179), .C(n118), .D(n127), .Z(n178) );
  GTECH_AND_NOT U198 ( .A(n180), .B(n181), .Z(N116) );
  GTECH_XOR2 U199 ( .A(n182), .B(n4), .Z(n180) );
  GTECH_OR2 U200 ( .A(n3), .B(n183), .Z(n182) );
  GTECH_NAND3 U201 ( .A(n131), .B(n124), .C(n130), .Z(N115) );
  GTECH_NAND4 U202 ( .A(n5), .B(n179), .C(n184), .D(n128), .Z(n130) );
  GTECH_NOT U203 ( .A(n118), .Z(n128) );
  GTECH_AND3 U204 ( .A(n6), .B(n4), .C(n185), .Z(n179) );
  GTECH_AND4 U205 ( .A(n186), .B(n3), .C(n102), .D(n7), .Z(n185) );
  GTECH_AND_NOT U206 ( .A(n187), .B(n181), .Z(N114) );
  GTECH_XOR2 U207 ( .A(n183), .B(n3), .Z(n187) );
  GTECH_AND_NOT U208 ( .A(n188), .B(n181), .Z(N112) );
  GTECH_OA21 U209 ( .A(n189), .B(n186), .C(n183), .Z(n188) );
  GTECH_NAND2 U210 ( .A(n186), .B(n189), .Z(n183) );
  GTECH_NOT U211 ( .A(n7), .Z(n189) );
  GTECH_OAI21 U212 ( .A(n181), .B(n186), .C(n124), .Z(N110) );
  GTECH_NOT U213 ( .A(n119), .Z(n186) );
  GTECH_NAND2 U214 ( .A(n190), .B(n132), .Z(n181) );
  GTECH_NOT U215 ( .A(n125), .Z(n132) );
  GTECH_NAND2 U216 ( .A(n184), .B(n124), .Z(n125) );
  GTECH_NOT U217 ( .A(reset), .Z(n124) );
  GTECH_NOT U218 ( .A(n131), .Z(n190) );
  GTECH_NAND5 U219 ( .A(n127), .B(n191), .C(n184), .D(n118), .E(n102), .Z(n131) );
  GTECH_NOT U220 ( .A(n143), .Z(n184) );
  GTECH_NAND5 U221 ( .A(n137), .B(n142), .C(n144), .D(n105), .E(n103), .Z(n143) );
  GTECH_NOT U222 ( .A(n155), .Z(n144) );
  GTECH_NAND5 U223 ( .A(n192), .B(n152), .C(n153), .D(n109), .E(n108), .Z(n155) );
  GTECH_NOT U224 ( .A(n166), .Z(n153) );
  GTECH_NAND5 U225 ( .A(n193), .B(n194), .C(n164), .D(ss[6]), .E(ss[4]), .Z(
        n166) );
  GTECH_NOT U226 ( .A(n176), .Z(n164) );
  GTECH_NAND5 U227 ( .A(n195), .B(n196), .C(ena), .D(ss[3]), .E(ss[0]), .Z(
        n176) );
  GTECH_NOT U228 ( .A(ss[2]), .Z(n196) );
  GTECH_NOT U229 ( .A(ss[1]), .Z(n195) );
  GTECH_NOT U230 ( .A(ss[7]), .Z(n194) );
  GTECH_NOT U231 ( .A(ss[5]), .Z(n193) );
  GTECH_NOT U232 ( .A(n110), .Z(n152) );
  GTECH_NOT U233 ( .A(n107), .Z(n192) );
  GTECH_NOT U234 ( .A(n106), .Z(n142) );
  GTECH_NOT U235 ( .A(n104), .Z(n137) );
  GTECH_NOT U236 ( .A(n6), .Z(n191) );
  GTECH_NOT U237 ( .A(n5), .Z(n127) );
endmodule

