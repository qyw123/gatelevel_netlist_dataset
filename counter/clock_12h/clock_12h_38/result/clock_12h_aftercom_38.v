
module clock_12h ( clk, reset, ena, pm, hh, mm, ss );
  output [7:0] hh;
  output [7:0] mm;
  output [7:0] ss;
  input clk, reset, ena;
  output pm;
  wire   N22, N23, N24, N25, N26, N39, N40, N41, N42, N43, N55, N56, N57, N58,
         N59, N71, N72, N73, N74, N75, N88, N89, N90, N91, N92, N110, N112,
         N114, N115, N116, N121, N122, n3, n4, n5, n6, n7, n8, n77, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208;

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
  GTECH_FJK1S ss_tens_reg_2_ ( .J(n77), .K(n77), .TI(N41), .TE(N42), .CP(clk), 
        .Q(ss[6]) );
  GTECH_FJK1S ss_tens_reg_3_ ( .J(n77), .K(n77), .TI(N43), .TE(N42), .CP(clk), 
        .Q(ss[7]) );
  GTECH_FJK1S ss_tens_reg_1_ ( .J(n77), .K(n77), .TI(N40), .TE(N42), .CP(clk), 
        .Q(ss[5]) );
  GTECH_FJK1S mm_ones_reg_0_ ( .J(n77), .K(n77), .TI(N55), .TE(N58), .CP(clk), 
        .Q(mm[0]), .QN(n3) );
  GTECH_FJK1S mm_ones_reg_3_ ( .J(n77), .K(n77), .TI(N59), .TE(N58), .CP(clk), 
        .Q(mm[3]), .QN(n109) );
  GTECH_FJK1S mm_ones_reg_1_ ( .J(n77), .K(n77), .TI(N56), .TE(N58), .CP(clk), 
        .Q(mm[1]), .QN(n111) );
  GTECH_FJK1S mm_ones_reg_2_ ( .J(n77), .K(n77), .TI(N57), .TE(N58), .CP(clk), 
        .Q(mm[2]), .QN(n110) );
  GTECH_FJK1S mm_tens_reg_0_ ( .J(n77), .K(n77), .TI(N71), .TE(N74), .CP(clk), 
        .Q(mm[4]), .QN(n108) );
  GTECH_FJK1S mm_tens_reg_2_ ( .J(n77), .K(n77), .TI(N73), .TE(N74), .CP(clk), 
        .Q(mm[6]), .QN(n106) );
  GTECH_FJK1S mm_tens_reg_3_ ( .J(n77), .K(n77), .TI(N75), .TE(N74), .CP(clk), 
        .Q(mm[7]), .QN(n4) );
  GTECH_FJK1S mm_tens_reg_1_ ( .J(n77), .K(n77), .TI(N72), .TE(N74), .CP(clk), 
        .Q(mm[5]), .QN(n107) );
  GTECH_FJK1S hh_tens_reg_0_ ( .J(n77), .K(n77), .TI(N110), .TE(N115), .CP(clk), .Q(hh[4]), .QN(n119) );
  GTECH_FJK1S hh_tens_reg_1_ ( .J(n77), .K(n77), .TI(N112), .TE(N115), .CP(clk), .Q(hh[5]), .QN(n5) );
  GTECH_FJK1S hh_tens_reg_2_ ( .J(n77), .K(n77), .TI(N114), .TE(N115), .CP(clk), .Q(hh[6]), .QN(n6) );
  GTECH_FJK1S hh_tens_reg_3_ ( .J(n77), .K(n77), .TI(N116), .TE(N115), .CP(clk), .Q(hh[7]), .QN(n7) );
  GTECH_FJK1S hh_ones_reg_0_ ( .J(n77), .K(n77), .TI(N88), .TE(N91), .CP(clk), 
        .Q(hh[0]), .QN(n105) );
  GTECH_FJK1S hh_ones_reg_1_ ( .J(n77), .K(n77), .TI(N89), .TE(N91), .CP(clk), 
        .Q(hh[1]), .QN(n104) );
  GTECH_FJK1S hh_ones_reg_2_ ( .J(n77), .K(n77), .TI(N90), .TE(N91), .CP(clk), 
        .Q(hh[2]), .QN(n103) );
  GTECH_FJK1S hh_ones_reg_3_ ( .J(n77), .K(n77), .TI(N92), .TE(N91), .CP(clk), 
        .Q(hh[3]), .QN(n102) );
  GTECH_FJK1S pm_temp_reg ( .J(n77), .K(n77), .TI(N122), .TE(N121), .CP(clk), 
        .Q(pm), .QN(n8) );
  GTECH_ZERO U128 ( .Z(n77) );
  GTECH_AND2 U129 ( .A(n120), .B(n121), .Z(N92) );
  GTECH_XOR2 U130 ( .A(n122), .B(n102), .Z(n120) );
  GTECH_OR2 U131 ( .A(n123), .B(n103), .Z(n122) );
  GTECH_OR_NOT U132 ( .A(n124), .B(n125), .Z(N91) );
  GTECH_AND2 U133 ( .A(n126), .B(n121), .Z(N90) );
  GTECH_NOT U134 ( .A(n127), .Z(n121) );
  GTECH_XOR2 U135 ( .A(n123), .B(n103), .Z(n126) );
  GTECH_OR_NOT U136 ( .A(n104), .B(n128), .Z(n123) );
  GTECH_OAI21 U137 ( .A(n129), .B(n127), .C(n125), .Z(N89) );
  GTECH_XOR2 U138 ( .A(n130), .B(n105), .Z(n129) );
  GTECH_OAI2N2 U139 ( .A(n128), .B(n127), .C(n131), .D(n124), .Z(N88) );
  GTECH_NOT U140 ( .A(n132), .Z(n131) );
  GTECH_NAND3 U141 ( .A(n133), .B(n132), .C(n124), .Z(n127) );
  GTECH_MUX2 U142 ( .A(n134), .B(n135), .S(n4), .Z(N75) );
  GTECH_AND2 U143 ( .A(n136), .B(n137), .Z(n135) );
  GTECH_OAI21 U144 ( .A(n138), .B(n137), .C(n139), .Z(n134) );
  GTECH_NOT U145 ( .A(n140), .Z(N73) );
  GTECH_MUX2 U146 ( .A(n139), .B(n141), .S(n106), .Z(n140) );
  GTECH_OR_NOT U147 ( .A(n107), .B(n136), .Z(n141) );
  GTECH_OAI21 U148 ( .A(n108), .B(n107), .C(n142), .Z(n139) );
  GTECH_MUX2 U149 ( .A(N71), .B(n136), .S(n107), .Z(N72) );
  GTECH_NOT U150 ( .A(n143), .Z(n136) );
  GTECH_OR_NOT U151 ( .A(n108), .B(n142), .Z(n143) );
  GTECH_NOT U152 ( .A(n138), .Z(n142) );
  GTECH_NOT U153 ( .A(n144), .Z(N71) );
  GTECH_OR_NOT U154 ( .A(n138), .B(n108), .Z(n144) );
  GTECH_NAND3 U155 ( .A(n145), .B(n125), .C(n146), .Z(n138) );
  GTECH_MUX2 U156 ( .A(n147), .B(n148), .S(n109), .Z(N59) );
  GTECH_AND2 U157 ( .A(n149), .B(n150), .Z(n148) );
  GTECH_OAI21 U158 ( .A(n150), .B(n151), .C(n152), .Z(n147) );
  GTECH_NOT U159 ( .A(n153), .Z(n152) );
  GTECH_NOT U160 ( .A(n110), .Z(n150) );
  GTECH_MUX2 U161 ( .A(n153), .B(n149), .S(n110), .Z(N57) );
  GTECH_NOT U162 ( .A(n154), .Z(n149) );
  GTECH_NAND3 U163 ( .A(n155), .B(n156), .C(n157), .Z(n154) );
  GTECH_OAI21 U164 ( .A(n155), .B(n151), .C(n158), .Z(n153) );
  GTECH_NOT U165 ( .A(n111), .Z(n155) );
  GTECH_MUX2 U166 ( .A(N55), .B(n159), .S(n111), .Z(N56) );
  GTECH_AND2 U167 ( .A(n157), .B(n156), .Z(n159) );
  GTECH_NOT U168 ( .A(n151), .Z(n157) );
  GTECH_NOT U169 ( .A(n158), .Z(N55) );
  GTECH_OR_NOT U170 ( .A(n151), .B(n3), .Z(n158) );
  GTECH_OR_NOT U171 ( .A(N74), .B(n160), .Z(n151) );
  GTECH_OR_NOT U172 ( .A(n146), .B(n125), .Z(N74) );
  GTECH_MUX2 U173 ( .A(n161), .B(n162), .S(ss[7]), .Z(N43) );
  GTECH_OAI21 U174 ( .A(ss[6]), .B(n163), .C(n164), .Z(n162) );
  GTECH_NOT U175 ( .A(n165), .Z(n164) );
  GTECH_AND2 U176 ( .A(n166), .B(ss[6]), .Z(n161) );
  GTECH_MUX2 U177 ( .A(n167), .B(n165), .S(ss[6]), .Z(N41) );
  GTECH_OAI21 U178 ( .A(ss[5]), .B(n163), .C(n168), .Z(n165) );
  GTECH_AND2 U179 ( .A(ss[5]), .B(n166), .Z(n167) );
  GTECH_MUX2 U180 ( .A(n166), .B(N39), .S(ss[5]), .Z(N40) );
  GTECH_NOT U181 ( .A(n169), .Z(n166) );
  GTECH_OR_NOT U182 ( .A(n170), .B(n171), .Z(n169) );
  GTECH_NOT U183 ( .A(ss[4]), .Z(n170) );
  GTECH_NOT U184 ( .A(n168), .Z(N39) );
  GTECH_OR_NOT U185 ( .A(ss[4]), .B(n171), .Z(n168) );
  GTECH_NOT U186 ( .A(n163), .Z(n171) );
  GTECH_OR_NOT U187 ( .A(N58), .B(n172), .Z(n163) );
  GTECH_OR_NOT U188 ( .A(n160), .B(n125), .Z(N58) );
  GTECH_MUX2 U189 ( .A(n173), .B(n174), .S(ss[3]), .Z(N26) );
  GTECH_OAI21 U190 ( .A(ss[2]), .B(n175), .C(n176), .Z(n174) );
  GTECH_NOT U191 ( .A(n177), .Z(n176) );
  GTECH_AND2 U192 ( .A(ss[2]), .B(n178), .Z(n173) );
  GTECH_OR_NOT U193 ( .A(ena), .B(n125), .Z(N25) );
  GTECH_MUX2 U194 ( .A(n178), .B(n177), .S(ss[2]), .Z(N24) );
  GTECH_OAI21 U195 ( .A(ss[1]), .B(n175), .C(n179), .Z(n177) );
  GTECH_NOT U196 ( .A(n180), .Z(n178) );
  GTECH_NAND3 U197 ( .A(n181), .B(ss[0]), .C(ss[1]), .Z(n180) );
  GTECH_MUX2 U198 ( .A(n182), .B(N22), .S(ss[1]), .Z(N23) );
  GTECH_AND2 U199 ( .A(n181), .B(ss[0]), .Z(n182) );
  GTECH_NOT U200 ( .A(n179), .Z(N22) );
  GTECH_OR_NOT U201 ( .A(ss[0]), .B(n181), .Z(n179) );
  GTECH_NOT U202 ( .A(n175), .Z(n181) );
  GTECH_OR_NOT U203 ( .A(N42), .B(ena), .Z(n175) );
  GTECH_OR_NOT U204 ( .A(n172), .B(n125), .Z(N42) );
  GTECH_AND2 U205 ( .A(n183), .B(n8), .Z(N122) );
  GTECH_OR_NOT U206 ( .A(n183), .B(n125), .Z(N121) );
  GTECH_NOT U207 ( .A(n184), .Z(n183) );
  GTECH_NAND4 U208 ( .A(n124), .B(n104), .C(n185), .D(n128), .Z(n184) );
  GTECH_NOT U209 ( .A(n186), .Z(n124) );
  GTECH_AND2 U210 ( .A(n187), .B(n188), .Z(N116) );
  GTECH_XOR2 U211 ( .A(n189), .B(n7), .Z(n187) );
  GTECH_OR2 U212 ( .A(n190), .B(n6), .Z(n189) );
  GTECH_NAND3 U213 ( .A(n132), .B(n125), .C(n133), .Z(N115) );
  GTECH_NAND4 U214 ( .A(n105), .B(n185), .C(n191), .D(n130), .Z(n132) );
  GTECH_NOT U215 ( .A(n104), .Z(n130) );
  GTECH_AND3 U216 ( .A(n6), .B(n5), .C(n192), .Z(n185) );
  GTECH_AND4 U217 ( .A(n193), .B(n103), .C(n102), .D(n7), .Z(n192) );
  GTECH_AND2 U218 ( .A(n194), .B(n188), .Z(N114) );
  GTECH_XOR2 U219 ( .A(n190), .B(n6), .Z(n194) );
  GTECH_OR_NOT U220 ( .A(n119), .B(n195), .Z(n190) );
  GTECH_NOT U221 ( .A(n5), .Z(n195) );
  GTECH_AND2 U222 ( .A(n188), .B(n196), .Z(N112) );
  GTECH_XOR2 U223 ( .A(n5), .B(n119), .Z(n196) );
  GTECH_NOT U224 ( .A(n197), .Z(n188) );
  GTECH_OAI21 U225 ( .A(n197), .B(n193), .C(n125), .Z(N110) );
  GTECH_NOT U226 ( .A(reset), .Z(n125) );
  GTECH_NOT U227 ( .A(n119), .Z(n193) );
  GTECH_OR_NOT U228 ( .A(n186), .B(n198), .Z(n197) );
  GTECH_NOT U229 ( .A(n133), .Z(n198) );
  GTECH_NAND5 U230 ( .A(n199), .B(n128), .C(n191), .D(n104), .E(n103), .Z(n133) );
  GTECH_NOT U231 ( .A(n105), .Z(n128) );
  GTECH_NOT U232 ( .A(n102), .Z(n199) );
  GTECH_OR_NOT U233 ( .A(reset), .B(n191), .Z(n186) );
  GTECH_NOT U234 ( .A(n145), .Z(n191) );
  GTECH_NAND5 U235 ( .A(n137), .B(n200), .C(n146), .D(n4), .E(n107), .Z(n145)
         );
  GTECH_NOT U236 ( .A(n201), .Z(n146) );
  GTECH_NAND5 U237 ( .A(n202), .B(n156), .C(n160), .D(n111), .E(n110), .Z(n201) );
  GTECH_NOT U238 ( .A(n203), .Z(n160) );
  GTECH_NAND5 U239 ( .A(n204), .B(n205), .C(n172), .D(ss[6]), .E(ss[4]), .Z(
        n203) );
  GTECH_NOT U240 ( .A(n206), .Z(n172) );
  GTECH_NAND5 U241 ( .A(n207), .B(n208), .C(ena), .D(ss[3]), .E(ss[0]), .Z(
        n206) );
  GTECH_NOT U242 ( .A(ss[2]), .Z(n208) );
  GTECH_NOT U243 ( .A(ss[1]), .Z(n207) );
  GTECH_NOT U244 ( .A(ss[7]), .Z(n205) );
  GTECH_NOT U245 ( .A(ss[5]), .Z(n204) );
  GTECH_NOT U246 ( .A(n3), .Z(n156) );
  GTECH_NOT U247 ( .A(n109), .Z(n202) );
  GTECH_NOT U248 ( .A(n108), .Z(n200) );
  GTECH_NOT U249 ( .A(n106), .Z(n137) );
endmodule

