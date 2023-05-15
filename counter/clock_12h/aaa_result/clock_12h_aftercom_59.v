
module clock_12h ( clk, reset, ena, pm, hh, mm, ss );
  output [7:0] hh;
  output [7:0] mm;
  output [7:0] ss;
  input clk, reset, ena;
  output pm;
  wire   N22, N23, N24, N25, N26, N39, N40, N41, N42, N43, N55, N56, N57, N58,
         N59, N71, N72, N73, N74, N75, N88, N89, N90, N91, N92, N110, N112,
         N114, N115, N116, N121, N122, n4, n5, n6, n7, n8, n9, n77, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198;

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
        .Q(mm[0]), .QN(n4) );
  GTECH_FJK1S mm_ones_reg_3_ ( .J(n77), .K(n77), .TI(N59), .TE(N58), .CP(clk), 
        .Q(mm[3]), .QN(n109) );
  GTECH_FJK1S mm_ones_reg_1_ ( .J(n77), .K(n77), .TI(N56), .TE(N58), .CP(clk), 
        .Q(mm[1]), .QN(n111) );
  GTECH_FJK1S mm_ones_reg_2_ ( .J(n77), .K(n77), .TI(N57), .TE(N58), .CP(clk), 
        .Q(mm[2]), .QN(n110) );
  GTECH_FJK1S mm_tens_reg_0_ ( .J(n77), .K(n77), .TI(N71), .TE(N74), .CP(clk), 
        .Q(mm[4]), .QN(n107) );
  GTECH_FJK1S mm_tens_reg_2_ ( .J(n77), .K(n77), .TI(N73), .TE(N74), .CP(clk), 
        .Q(mm[6]), .QN(n106) );
  GTECH_FJK1S mm_tens_reg_3_ ( .J(n77), .K(n77), .TI(N75), .TE(N74), .CP(clk), 
        .Q(mm[7]), .QN(n105) );
  GTECH_FJK1S mm_tens_reg_1_ ( .J(n77), .K(n77), .TI(N72), .TE(N74), .CP(clk), 
        .Q(mm[5]), .QN(n108) );
  GTECH_FJK1S hh_tens_reg_0_ ( .J(n77), .K(n77), .TI(N110), .TE(N115), .CP(clk), .Q(hh[4]), .QN(n5) );
  GTECH_FJK1S hh_tens_reg_2_ ( .J(n77), .K(n77), .TI(N114), .TE(N115), .CP(clk), .Q(hh[6]), .QN(n6) );
  GTECH_FJK1S hh_tens_reg_3_ ( .J(n77), .K(n77), .TI(N116), .TE(N115), .CP(clk), .Q(hh[7]), .QN(n7) );
  GTECH_FJK1S hh_ones_reg_0_ ( .J(n77), .K(n77), .TI(N88), .TE(N91), .CP(clk), 
        .Q(hh[0]), .QN(n104) );
  GTECH_FJK1S hh_ones_reg_1_ ( .J(n77), .K(n77), .TI(N89), .TE(N91), .CP(clk), 
        .Q(hh[1]), .QN(n103) );
  GTECH_FJK1S hh_ones_reg_2_ ( .J(n77), .K(n77), .TI(N90), .TE(N91), .CP(clk), 
        .Q(hh[2]), .QN(n102) );
  GTECH_FJK1S hh_ones_reg_3_ ( .J(n77), .K(n77), .TI(N92), .TE(N91), .CP(clk), 
        .Q(hh[3]), .QN(n8) );
  GTECH_FJK1S hh_tens_reg_1_ ( .J(n77), .K(n77), .TI(N112), .TE(N115), .CP(clk), .Q(hh[5]), .QN(n9) );
  GTECH_FJK1S pm_temp_reg ( .J(n77), .K(n77), .TI(N122), .TE(N121), .CP(clk), 
        .Q(pm) );
  GTECH_ZERO U126 ( .Z(n77) );
  GTECH_AND_NOT U127 ( .A(n118), .B(n119), .Z(N92) );
  GTECH_XNOR2 U128 ( .A(n8), .B(n120), .Z(n118) );
  GTECH_AND_NOT U129 ( .A(n121), .B(n102), .Z(n120) );
  GTECH_NAND2 U130 ( .A(n122), .B(n123), .Z(N91) );
  GTECH_AND_NOT U131 ( .A(n124), .B(n119), .Z(N90) );
  GTECH_XNOR2 U132 ( .A(n102), .B(n121), .Z(n124) );
  GTECH_NOT U133 ( .A(n125), .Z(n121) );
  GTECH_NAND2 U134 ( .A(n126), .B(n127), .Z(n125) );
  GTECH_OAI21 U135 ( .A(n128), .B(n119), .C(n122), .Z(N89) );
  GTECH_XNOR2 U136 ( .A(n104), .B(n103), .Z(n128) );
  GTECH_OAI22 U137 ( .A(n123), .B(n129), .C(n126), .D(n119), .Z(N88) );
  GTECH_NAND3 U138 ( .A(n129), .B(n130), .C(n131), .Z(n119) );
  GTECH_AND_NOT U139 ( .A(n132), .B(n133), .Z(N75) );
  GTECH_MUX2 U140 ( .A(n134), .B(n135), .S(n105), .Z(n132) );
  GTECH_AND_NOT U141 ( .A(n136), .B(n107), .Z(n135) );
  GTECH_NAND2 U142 ( .A(n137), .B(n136), .Z(n134) );
  GTECH_AND_NOT U143 ( .A(n138), .B(n133), .Z(N73) );
  GTECH_XNOR2 U144 ( .A(n106), .B(n137), .Z(n138) );
  GTECH_NOT U145 ( .A(n139), .Z(n137) );
  GTECH_AND_NOT U146 ( .A(n140), .B(n133), .Z(N72) );
  GTECH_OA21 U147 ( .A(n141), .B(n142), .C(n139), .Z(n140) );
  GTECH_NAND2 U148 ( .A(n142), .B(n141), .Z(n139) );
  GTECH_NOT U149 ( .A(n108), .Z(n141) );
  GTECH_AND_NOT U150 ( .A(n107), .B(n133), .Z(N71) );
  GTECH_NAND3 U151 ( .A(n143), .B(n122), .C(n144), .Z(n133) );
  GTECH_AND_NOT U152 ( .A(n145), .B(n146), .Z(N59) );
  GTECH_XNOR2 U153 ( .A(n109), .B(n147), .Z(n145) );
  GTECH_AND_NOT U154 ( .A(n148), .B(n110), .Z(n147) );
  GTECH_AND_NOT U155 ( .A(n149), .B(n146), .Z(N57) );
  GTECH_XNOR2 U156 ( .A(n110), .B(n148), .Z(n149) );
  GTECH_NOT U157 ( .A(n150), .Z(n148) );
  GTECH_AND_NOT U158 ( .A(n151), .B(n146), .Z(N56) );
  GTECH_OA21 U159 ( .A(n152), .B(n153), .C(n150), .Z(n151) );
  GTECH_NAND2 U160 ( .A(n152), .B(n153), .Z(n150) );
  GTECH_NOT U161 ( .A(n111), .Z(n152) );
  GTECH_AND_NOT U162 ( .A(n4), .B(n146), .Z(N55) );
  GTECH_NAND2 U163 ( .A(n154), .B(n155), .Z(n146) );
  GTECH_NOT U164 ( .A(N74), .Z(n155) );
  GTECH_NAND2 U165 ( .A(n122), .B(n156), .Z(N74) );
  GTECH_NOR2 U166 ( .A(n157), .B(n158), .Z(N43) );
  GTECH_MUX2 U167 ( .A(n159), .B(n160), .S(ss[7]), .Z(n158) );
  GTECH_AND_NOT U168 ( .A(ss[6]), .B(n161), .Z(n160) );
  GTECH_NAND2 U169 ( .A(ss[6]), .B(ss[4]), .Z(n159) );
  GTECH_AND_NOT U170 ( .A(n162), .B(n157), .Z(N41) );
  GTECH_XNOR2 U171 ( .A(ss[6]), .B(n161), .Z(n162) );
  GTECH_AND_NOT U172 ( .A(n163), .B(n157), .Z(N40) );
  GTECH_OA21 U173 ( .A(ss[4]), .B(ss[5]), .C(n161), .Z(n163) );
  GTECH_NAND2 U174 ( .A(ss[5]), .B(ss[4]), .Z(n161) );
  GTECH_AND_NOT U175 ( .A(n164), .B(ss[4]), .Z(N39) );
  GTECH_NOT U176 ( .A(n157), .Z(n164) );
  GTECH_NAND2 U177 ( .A(n165), .B(n166), .Z(n157) );
  GTECH_NOT U178 ( .A(N58), .Z(n166) );
  GTECH_NAND2 U179 ( .A(n122), .B(n167), .Z(N58) );
  GTECH_AND_NOT U180 ( .A(n168), .B(n169), .Z(N26) );
  GTECH_XNOR2 U181 ( .A(ss[3]), .B(n170), .Z(n169) );
  GTECH_AND_NOT U182 ( .A(ss[2]), .B(n171), .Z(n170) );
  GTECH_NAND2 U183 ( .A(n122), .B(n172), .Z(N25) );
  GTECH_NOT U184 ( .A(ena), .Z(n172) );
  GTECH_AND_NOT U185 ( .A(n173), .B(n174), .Z(N24) );
  GTECH_XNOR2 U186 ( .A(ss[2]), .B(n171), .Z(n173) );
  GTECH_AND_NOT U187 ( .A(n175), .B(n174), .Z(N23) );
  GTECH_OA21 U188 ( .A(ss[0]), .B(ss[1]), .C(n171), .Z(n175) );
  GTECH_NAND2 U189 ( .A(ss[1]), .B(ss[0]), .Z(n171) );
  GTECH_AND_NOT U190 ( .A(n168), .B(ss[0]), .Z(N22) );
  GTECH_NOT U191 ( .A(n174), .Z(n168) );
  GTECH_NAND2 U192 ( .A(ena), .B(n176), .Z(n174) );
  GTECH_NOT U193 ( .A(N42), .Z(n176) );
  GTECH_NAND2 U194 ( .A(n122), .B(n177), .Z(N42) );
  GTECH_AND_NOT U195 ( .A(n178), .B(pm), .Z(N122) );
  GTECH_NOT U196 ( .A(n179), .Z(n178) );
  GTECH_NAND2 U197 ( .A(n122), .B(n179), .Z(N121) );
  GTECH_NAND4 U198 ( .A(n131), .B(n180), .C(n103), .D(n126), .Z(n179) );
  GTECH_AND_NOT U199 ( .A(n181), .B(n182), .Z(N116) );
  GTECH_XNOR2 U200 ( .A(n7), .B(n183), .Z(n181) );
  GTECH_AND_NOT U201 ( .A(n184), .B(n6), .Z(n183) );
  GTECH_NAND3 U202 ( .A(n130), .B(n122), .C(n129), .Z(N115) );
  GTECH_NAND4 U203 ( .A(n104), .B(n180), .C(n185), .D(n127), .Z(n129) );
  GTECH_NOT U204 ( .A(n103), .Z(n127) );
  GTECH_AND3 U205 ( .A(n8), .B(n7), .C(n186), .Z(n180) );
  GTECH_AND4 U206 ( .A(n187), .B(n6), .C(n102), .D(n9), .Z(n186) );
  GTECH_AND_NOT U207 ( .A(n188), .B(n182), .Z(N114) );
  GTECH_XNOR2 U208 ( .A(n6), .B(n184), .Z(n188) );
  GTECH_NOT U209 ( .A(n189), .Z(n184) );
  GTECH_AND_NOT U210 ( .A(n190), .B(n182), .Z(N112) );
  GTECH_OA21 U211 ( .A(n191), .B(n187), .C(n189), .Z(n190) );
  GTECH_NAND2 U212 ( .A(n187), .B(n191), .Z(n189) );
  GTECH_NOT U213 ( .A(n9), .Z(n191) );
  GTECH_OAI21 U214 ( .A(n182), .B(n187), .C(n122), .Z(N110) );
  GTECH_NOT U215 ( .A(n5), .Z(n187) );
  GTECH_NAND2 U216 ( .A(n192), .B(n131), .Z(n182) );
  GTECH_NOT U217 ( .A(n123), .Z(n131) );
  GTECH_NAND2 U218 ( .A(n185), .B(n122), .Z(n123) );
  GTECH_NOT U219 ( .A(reset), .Z(n122) );
  GTECH_NOT U220 ( .A(n130), .Z(n192) );
  GTECH_NAND5 U221 ( .A(n126), .B(n193), .C(n185), .D(n103), .E(n102), .Z(n130) );
  GTECH_NOT U222 ( .A(n143), .Z(n185) );
  GTECH_NAND5 U223 ( .A(n136), .B(n142), .C(n144), .D(n108), .E(n105), .Z(n143) );
  GTECH_NOT U224 ( .A(n156), .Z(n144) );
  GTECH_NAND5 U225 ( .A(n194), .B(n153), .C(n154), .D(n111), .E(n110), .Z(n156) );
  GTECH_NOT U226 ( .A(n167), .Z(n154) );
  GTECH_NAND5 U227 ( .A(n195), .B(n196), .C(n165), .D(ss[6]), .E(ss[4]), .Z(
        n167) );
  GTECH_NOT U228 ( .A(n177), .Z(n165) );
  GTECH_NAND5 U229 ( .A(n197), .B(n198), .C(ena), .D(ss[3]), .E(ss[0]), .Z(
        n177) );
  GTECH_NOT U230 ( .A(ss[2]), .Z(n198) );
  GTECH_NOT U231 ( .A(ss[1]), .Z(n197) );
  GTECH_NOT U232 ( .A(ss[7]), .Z(n196) );
  GTECH_NOT U233 ( .A(ss[5]), .Z(n195) );
  GTECH_NOT U234 ( .A(n4), .Z(n153) );
  GTECH_NOT U235 ( .A(n109), .Z(n194) );
  GTECH_NOT U236 ( .A(n107), .Z(n142) );
  GTECH_NOT U237 ( .A(n106), .Z(n136) );
  GTECH_NOT U238 ( .A(n8), .Z(n193) );
  GTECH_NOT U239 ( .A(n104), .Z(n126) );
endmodule

