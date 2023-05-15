
module clock_12h ( clk, reset, ena, pm, hh, mm, ss );
  output [7:0] hh;
  output [7:0] mm;
  output [7:0] ss;
  input clk, reset, ena;
  output pm;
  wire   N22, N23, N24, N25, N26, N39, N40, N41, N42, N43, N55, N56, N57, N58,
         N59, N71, N72, N73, N74, N75, N88, N89, N90, N91, N92, N110, N112,
         N114, N115, N116, N121, N122, n4, n5, n6, n7, n8, n9, n10, n11, n78,
         n103, n104, n105, n106, n107, n108, n109, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207;

  GTECH_FJK1S ss_ones_reg_0_ ( .J(n78), .K(n78), .TI(N22), .TE(N25), .CP(clk), 
        .Q(ss[0]) );
  GTECH_FJK1S ss_ones_reg_2_ ( .J(n78), .K(n78), .TI(N24), .TE(N25), .CP(clk), 
        .Q(ss[2]) );
  GTECH_FJK1S ss_ones_reg_1_ ( .J(n78), .K(n78), .TI(N23), .TE(N25), .CP(clk), 
        .Q(ss[1]) );
  GTECH_FJK1S ss_ones_reg_3_ ( .J(n78), .K(n78), .TI(N26), .TE(N25), .CP(clk), 
        .Q(ss[3]) );
  GTECH_FJK1S ss_tens_reg_0_ ( .J(n78), .K(n78), .TI(N39), .TE(N42), .CP(clk), 
        .Q(ss[4]) );
  GTECH_FJK1S ss_tens_reg_2_ ( .J(n78), .K(n78), .TI(N41), .TE(N42), .CP(clk), 
        .Q(ss[6]) );
  GTECH_FJK1S ss_tens_reg_1_ ( .J(n78), .K(n78), .TI(N40), .TE(N42), .CP(clk), 
        .Q(ss[5]) );
  GTECH_FJK1S ss_tens_reg_3_ ( .J(n78), .K(n78), .TI(N43), .TE(N42), .CP(clk), 
        .Q(ss[7]) );
  GTECH_FJK1S mm_ones_reg_0_ ( .J(n78), .K(n78), .TI(N55), .TE(N58), .CP(clk), 
        .Q(mm[0]), .QN(n4) );
  GTECH_FJK1S mm_ones_reg_3_ ( .J(n78), .K(n78), .TI(N59), .TE(N58), .CP(clk), 
        .Q(mm[3]), .QN(n107) );
  GTECH_FJK1S mm_ones_reg_1_ ( .J(n78), .K(n78), .TI(N56), .TE(N58), .CP(clk), 
        .Q(mm[1]), .QN(n109) );
  GTECH_FJK1S mm_ones_reg_2_ ( .J(n78), .K(n78), .TI(N57), .TE(N58), .CP(clk), 
        .Q(mm[2]), .QN(n108) );
  GTECH_FJK1S mm_tens_reg_0_ ( .J(n78), .K(n78), .TI(N71), .TE(N74), .CP(clk), 
        .Q(mm[4]), .QN(n106) );
  GTECH_FJK1S mm_tens_reg_2_ ( .J(n78), .K(n78), .TI(N73), .TE(N74), .CP(clk), 
        .Q(mm[6]), .QN(n104) );
  GTECH_FJK1S mm_tens_reg_1_ ( .J(n78), .K(n78), .TI(N72), .TE(N74), .CP(clk), 
        .Q(mm[5]), .QN(n105) );
  GTECH_FJK1S mm_tens_reg_3_ ( .J(n78), .K(n78), .TI(N75), .TE(N74), .CP(clk), 
        .Q(mm[7]), .QN(n5) );
  GTECH_FJK1S hh_tens_reg_0_ ( .J(n78), .K(n78), .TI(N110), .TE(N115), .CP(clk), .Q(hh[4]), .QN(n116) );
  GTECH_FJK1S hh_tens_reg_2_ ( .J(n78), .K(n78), .TI(N114), .TE(N115), .CP(clk), .Q(hh[6]), .QN(n6) );
  GTECH_FJK1S hh_tens_reg_3_ ( .J(n78), .K(n78), .TI(N116), .TE(N115), .CP(clk), .Q(hh[7]), .QN(n7) );
  GTECH_FJK1S hh_ones_reg_0_ ( .J(n78), .K(n78), .TI(N88), .TE(N91), .CP(clk), 
        .Q(hh[0]), .QN(n8) );
  GTECH_FJK1S hh_ones_reg_1_ ( .J(n78), .K(n78), .TI(N89), .TE(N91), .CP(clk), 
        .Q(hh[1]), .QN(n103) );
  GTECH_FJK1S hh_ones_reg_2_ ( .J(n78), .K(n78), .TI(N90), .TE(N91), .CP(clk), 
        .Q(hh[2]), .QN(n9) );
  GTECH_FJK1S hh_ones_reg_3_ ( .J(n78), .K(n78), .TI(N92), .TE(N91), .CP(clk), 
        .Q(hh[3]), .QN(n117) );
  GTECH_FJK1S hh_tens_reg_1_ ( .J(n78), .K(n78), .TI(N112), .TE(N115), .CP(clk), .Q(hh[5]), .QN(n10) );
  GTECH_FJK1S pm_temp_reg ( .J(n78), .K(n78), .TI(N122), .TE(N121), .CP(clk), 
        .Q(pm), .QN(n11) );
  GTECH_ZERO U126 ( .Z(n78) );
  GTECH_AND2 U127 ( .A(n118), .B(n119), .Z(N92) );
  GTECH_XOR2 U128 ( .A(n120), .B(n117), .Z(n118) );
  GTECH_OR2 U129 ( .A(n9), .B(n121), .Z(n120) );
  GTECH_NAND2 U130 ( .A(n122), .B(n123), .Z(N91) );
  GTECH_AND2 U131 ( .A(n124), .B(n119), .Z(N90) );
  GTECH_XOR2 U132 ( .A(n121), .B(n9), .Z(n124) );
  GTECH_NAND2 U133 ( .A(n125), .B(n126), .Z(n121) );
  GTECH_AO21 U134 ( .A(n119), .B(n127), .C(reset), .Z(N89) );
  GTECH_XOR2 U135 ( .A(n8), .B(n103), .Z(n127) );
  GTECH_NOT U136 ( .A(n128), .Z(n119) );
  GTECH_OAI2N2 U137 ( .A(n125), .B(n128), .C(n129), .D(n130), .Z(N88) );
  GTECH_NOT U138 ( .A(n131), .Z(n129) );
  GTECH_NAND3 U139 ( .A(n131), .B(n132), .C(n130), .Z(n128) );
  GTECH_OAI2N2 U140 ( .A(n133), .B(n134), .C(n135), .D(n136), .Z(N75) );
  GTECH_NOT U141 ( .A(n5), .Z(n136) );
  GTECH_OA21 U142 ( .A(n5), .B(n137), .C(n138), .Z(n133) );
  GTECH_MUX2 U143 ( .A(n135), .B(n139), .S(n104), .Z(N73) );
  GTECH_NOR3 U144 ( .A(n106), .B(n105), .C(n134), .Z(n139) );
  GTECH_AO21 U145 ( .A(n140), .B(n105), .C(N71), .Z(n135) );
  GTECH_MUX2 U146 ( .A(N71), .B(n141), .S(n105), .Z(N72) );
  GTECH_AND2 U147 ( .A(n140), .B(n142), .Z(n141) );
  GTECH_NOT U148 ( .A(n143), .Z(N71) );
  GTECH_NAND2 U149 ( .A(n106), .B(n140), .Z(n143) );
  GTECH_NOT U150 ( .A(n134), .Z(n140) );
  GTECH_NAND3 U151 ( .A(n144), .B(n122), .C(n145), .Z(n134) );
  GTECH_MUX2 U152 ( .A(n146), .B(n147), .S(n107), .Z(N59) );
  GTECH_NOR3 U153 ( .A(n109), .B(n108), .C(n148), .Z(n147) );
  GTECH_AO21 U154 ( .A(n149), .B(n108), .C(n150), .Z(n146) );
  GTECH_MUX2 U155 ( .A(n150), .B(n151), .S(n108), .Z(N57) );
  GTECH_AND_NOT U156 ( .A(n152), .B(n109), .Z(n151) );
  GTECH_AO21 U157 ( .A(n149), .B(n109), .C(N55), .Z(n150) );
  GTECH_MUX2 U158 ( .A(N55), .B(n152), .S(n109), .Z(N56) );
  GTECH_NOT U159 ( .A(n148), .Z(n152) );
  GTECH_NAND2 U160 ( .A(n149), .B(n153), .Z(n148) );
  GTECH_NOT U161 ( .A(n154), .Z(N55) );
  GTECH_NAND2 U162 ( .A(n4), .B(n149), .Z(n154) );
  GTECH_NOT U163 ( .A(n155), .Z(n149) );
  GTECH_NAND2 U164 ( .A(n156), .B(n157), .Z(n155) );
  GTECH_NOT U165 ( .A(N74), .Z(n157) );
  GTECH_NAND2 U166 ( .A(n122), .B(n158), .Z(N74) );
  GTECH_MUX2 U167 ( .A(n159), .B(n160), .S(ss[7]), .Z(N43) );
  GTECH_AO21 U168 ( .A(n161), .B(n162), .C(n163), .Z(n160) );
  GTECH_NOT U169 ( .A(ss[6]), .Z(n162) );
  GTECH_AND2 U170 ( .A(n164), .B(ss[6]), .Z(n159) );
  GTECH_MUX2 U171 ( .A(n165), .B(n163), .S(ss[6]), .Z(N41) );
  GTECH_AO21 U172 ( .A(n161), .B(n166), .C(N39), .Z(n163) );
  GTECH_AND2 U173 ( .A(ss[5]), .B(n164), .Z(n165) );
  GTECH_MUX2 U174 ( .A(n164), .B(N39), .S(ss[5]), .Z(N40) );
  GTECH_NOT U175 ( .A(n167), .Z(n164) );
  GTECH_NAND2 U176 ( .A(n161), .B(ss[4]), .Z(n167) );
  GTECH_NOT U177 ( .A(n168), .Z(N39) );
  GTECH_NAND2 U178 ( .A(n161), .B(n169), .Z(n168) );
  GTECH_NOT U179 ( .A(ss[4]), .Z(n169) );
  GTECH_NOT U180 ( .A(n170), .Z(n161) );
  GTECH_NAND2 U181 ( .A(n171), .B(n172), .Z(n170) );
  GTECH_NOT U182 ( .A(N58), .Z(n172) );
  GTECH_NAND2 U183 ( .A(n122), .B(n173), .Z(N58) );
  GTECH_MUX2 U184 ( .A(n174), .B(n175), .S(ss[3]), .Z(N26) );
  GTECH_AO21 U185 ( .A(n176), .B(n177), .C(n178), .Z(n175) );
  GTECH_AND2 U186 ( .A(ss[2]), .B(n179), .Z(n174) );
  GTECH_NAND2 U187 ( .A(n122), .B(n180), .Z(N25) );
  GTECH_NOT U188 ( .A(ena), .Z(n180) );
  GTECH_MUX2 U189 ( .A(n179), .B(n178), .S(ss[2]), .Z(N24) );
  GTECH_AO21 U190 ( .A(n176), .B(n181), .C(N22), .Z(n178) );
  GTECH_NOT U191 ( .A(n182), .Z(n179) );
  GTECH_NAND3 U192 ( .A(n176), .B(ss[0]), .C(ss[1]), .Z(n182) );
  GTECH_MUX2 U193 ( .A(n183), .B(N22), .S(ss[1]), .Z(N23) );
  GTECH_AND2 U194 ( .A(n176), .B(ss[0]), .Z(n183) );
  GTECH_NOT U195 ( .A(n184), .Z(N22) );
  GTECH_NAND2 U196 ( .A(n176), .B(n185), .Z(n184) );
  GTECH_NOT U197 ( .A(ss[0]), .Z(n185) );
  GTECH_NOT U198 ( .A(n186), .Z(n176) );
  GTECH_NAND2 U199 ( .A(ena), .B(n187), .Z(n186) );
  GTECH_NOT U200 ( .A(N42), .Z(n187) );
  GTECH_NAND2 U201 ( .A(n122), .B(n188), .Z(N42) );
  GTECH_AND2 U202 ( .A(n189), .B(n11), .Z(N122) );
  GTECH_NOT U203 ( .A(n190), .Z(n189) );
  GTECH_NAND2 U204 ( .A(n122), .B(n190), .Z(N121) );
  GTECH_NAND4 U205 ( .A(n130), .B(n191), .C(n103), .D(n125), .Z(n190) );
  GTECH_AND2 U206 ( .A(n192), .B(n193), .Z(N116) );
  GTECH_XOR2 U207 ( .A(n194), .B(n7), .Z(n192) );
  GTECH_OR2 U208 ( .A(n6), .B(n195), .Z(n194) );
  GTECH_NAND3 U209 ( .A(n132), .B(n122), .C(n131), .Z(N115) );
  GTECH_NAND4 U210 ( .A(n8), .B(n191), .C(n196), .D(n126), .Z(n131) );
  GTECH_NOT U211 ( .A(n103), .Z(n126) );
  GTECH_AND3 U212 ( .A(n6), .B(n117), .C(n197), .Z(n191) );
  GTECH_AND4 U213 ( .A(n198), .B(n10), .C(n9), .D(n7), .Z(n197) );
  GTECH_AND2 U214 ( .A(n199), .B(n193), .Z(N114) );
  GTECH_XOR2 U215 ( .A(n195), .B(n6), .Z(n199) );
  GTECH_NAND2 U216 ( .A(n198), .B(n200), .Z(n195) );
  GTECH_NOT U217 ( .A(n10), .Z(n200) );
  GTECH_NOT U218 ( .A(n116), .Z(n198) );
  GTECH_AND2 U219 ( .A(n193), .B(n201), .Z(N112) );
  GTECH_XOR2 U220 ( .A(n116), .B(n10), .Z(n201) );
  GTECH_AO21 U221 ( .A(n116), .B(n193), .C(reset), .Z(N110) );
  GTECH_NOT U222 ( .A(n202), .Z(n193) );
  GTECH_NAND2 U223 ( .A(n203), .B(n130), .Z(n202) );
  GTECH_NOT U224 ( .A(n123), .Z(n130) );
  GTECH_NAND2 U225 ( .A(n196), .B(n122), .Z(n123) );
  GTECH_NOT U226 ( .A(reset), .Z(n122) );
  GTECH_NOT U227 ( .A(n132), .Z(n203) );
  GTECH_NAND5 U228 ( .A(n204), .B(n125), .C(n196), .D(n9), .E(n103), .Z(n132)
         );
  GTECH_NOT U229 ( .A(n144), .Z(n196) );
  GTECH_NAND3 U230 ( .A(n205), .B(n145), .C(n105), .Z(n144) );
  GTECH_NOT U231 ( .A(n158), .Z(n145) );
  GTECH_NAND5 U232 ( .A(n206), .B(n153), .C(n156), .D(n109), .E(n108), .Z(n158) );
  GTECH_NOT U233 ( .A(n173), .Z(n156) );
  GTECH_NAND5 U234 ( .A(n166), .B(n207), .C(n171), .D(ss[6]), .E(ss[4]), .Z(
        n173) );
  GTECH_NOT U235 ( .A(n188), .Z(n171) );
  GTECH_NAND5 U236 ( .A(n181), .B(n177), .C(ena), .D(ss[3]), .E(ss[0]), .Z(
        n188) );
  GTECH_NOT U237 ( .A(ss[2]), .Z(n177) );
  GTECH_NOT U238 ( .A(ss[1]), .Z(n181) );
  GTECH_NOT U239 ( .A(ss[7]), .Z(n207) );
  GTECH_NOT U240 ( .A(ss[5]), .Z(n166) );
  GTECH_NOT U241 ( .A(n4), .Z(n153) );
  GTECH_NOT U242 ( .A(n107), .Z(n206) );
  GTECH_NOT U243 ( .A(n138), .Z(n205) );
  GTECH_NAND3 U244 ( .A(n137), .B(n142), .C(n5), .Z(n138) );
  GTECH_NOT U245 ( .A(n106), .Z(n142) );
  GTECH_NOT U246 ( .A(n104), .Z(n137) );
  GTECH_NOT U247 ( .A(n8), .Z(n125) );
  GTECH_NOT U248 ( .A(n117), .Z(n204) );
endmodule

