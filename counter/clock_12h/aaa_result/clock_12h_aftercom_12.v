
module clock_12h ( clk, reset, ena, pm, hh, mm, ss );
  output [7:0] hh;
  output [7:0] mm;
  output [7:0] ss;
  input clk, reset, ena;
  output pm;
  wire   N22, N23, N24, N25, N26, N39, N40, N41, N42, N43, N55, N56, N57, N58,
         N59, N71, N72, N73, N74, N75, N88, N89, N90, N91, N92, N110, N112,
         N114, N115, N116, N121, N122, n4, n5, n6, n7, n8, n9, n10, n77, n102,
         n103, n104, n105, n106, n107, n108, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205;

  GTECH_FJK1S ss_ones_reg_0_ ( .J(n77), .K(n77), .TI(N22), .TE(N25), .CP(clk), 
        .Q(ss[0]) );
  GTECH_FJK1S ss_ones_reg_2_ ( .J(n77), .K(n77), .TI(N24), .TE(N25), .CP(clk), 
        .Q(ss[2]) );
  GTECH_FJK1S ss_ones_reg_1_ ( .J(n77), .K(n77), .TI(N23), .TE(N25), .CP(clk), 
        .Q(ss[1]) );
  GTECH_FJK1S ss_ones_reg_3_ ( .J(n77), .K(n77), .TI(N26), .TE(N25), .CP(clk), 
        .Q(ss[3]) );
  GTECH_FJK1S ss_tens_reg_0_ ( .J(n77), .K(n77), .TI(N39), .TE(N42), .CP(clk), 
        .Q(ss[4]) );
  GTECH_FJK1S ss_tens_reg_2_ ( .J(n77), .K(n77), .TI(N41), .TE(N42), .CP(clk), 
        .Q(ss[6]) );
  GTECH_FJK1S ss_tens_reg_1_ ( .J(n77), .K(n77), .TI(N40), .TE(N42), .CP(clk), 
        .Q(ss[5]) );
  GTECH_FJK1S ss_tens_reg_3_ ( .J(n77), .K(n77), .TI(N43), .TE(N42), .CP(clk), 
        .Q(ss[7]) );
  GTECH_FJK1S mm_ones_reg_0_ ( .J(n77), .K(n77), .TI(N55), .TE(N58), .CP(clk), 
        .Q(mm[0]), .QN(n4) );
  GTECH_FJK1S mm_ones_reg_3_ ( .J(n77), .K(n77), .TI(N59), .TE(N58), .CP(clk), 
        .Q(mm[3]), .QN(n106) );
  GTECH_FJK1S mm_ones_reg_1_ ( .J(n77), .K(n77), .TI(N56), .TE(N58), .CP(clk), 
        .Q(mm[1]), .QN(n108) );
  GTECH_FJK1S mm_ones_reg_2_ ( .J(n77), .K(n77), .TI(N57), .TE(N58), .CP(clk), 
        .Q(mm[2]), .QN(n107) );
  GTECH_FJK1S mm_tens_reg_0_ ( .J(n77), .K(n77), .TI(N71), .TE(N74), .CP(clk), 
        .Q(mm[4]), .QN(n105) );
  GTECH_FJK1S mm_tens_reg_2_ ( .J(n77), .K(n77), .TI(N73), .TE(N74), .CP(clk), 
        .Q(mm[6]), .QN(n103) );
  GTECH_FJK1S mm_tens_reg_1_ ( .J(n77), .K(n77), .TI(N72), .TE(N74), .CP(clk), 
        .Q(mm[5]), .QN(n104) );
  GTECH_FJK1S mm_tens_reg_3_ ( .J(n77), .K(n77), .TI(N75), .TE(N74), .CP(clk), 
        .Q(mm[7]), .QN(n5) );
  GTECH_FJK1S hh_tens_reg_0_ ( .J(n77), .K(n77), .TI(N110), .TE(N115), .CP(clk), .Q(hh[4]), .QN(n115) );
  GTECH_FJK1S hh_tens_reg_2_ ( .J(n77), .K(n77), .TI(N114), .TE(N115), .CP(clk), .Q(hh[6]), .QN(n6) );
  GTECH_FJK1S hh_tens_reg_3_ ( .J(n77), .K(n77), .TI(N116), .TE(N115), .CP(clk), .Q(hh[7]), .QN(n7) );
  GTECH_FJK1S hh_ones_reg_0_ ( .J(n77), .K(n77), .TI(N88), .TE(N91), .CP(clk), 
        .Q(hh[0]), .QN(n102) );
  GTECH_FJK1S hh_ones_reg_1_ ( .J(n77), .K(n77), .TI(N89), .TE(N91), .CP(clk), 
        .Q(hh[1]), .QN(n117) );
  GTECH_FJK1S hh_ones_reg_2_ ( .J(n77), .K(n77), .TI(N90), .TE(N91), .CP(clk), 
        .Q(hh[2]), .QN(n8) );
  GTECH_FJK1S hh_ones_reg_3_ ( .J(n77), .K(n77), .TI(N92), .TE(N91), .CP(clk), 
        .Q(hh[3]), .QN(n116) );
  GTECH_FJK1S hh_tens_reg_1_ ( .J(n77), .K(n77), .TI(N112), .TE(N115), .CP(clk), .Q(hh[5]), .QN(n9) );
  GTECH_FJK1S pm_temp_reg ( .J(n77), .K(n77), .TI(N122), .TE(N121), .CP(clk), 
        .Q(pm), .QN(n10) );
  GTECH_ZERO U126 ( .Z(n77) );
  GTECH_AND2 U127 ( .A(n118), .B(n119), .Z(N92) );
  GTECH_XOR2 U128 ( .A(n120), .B(n116), .Z(n118) );
  GTECH_OR2 U129 ( .A(n8), .B(n121), .Z(n120) );
  GTECH_NAND2 U130 ( .A(n122), .B(n123), .Z(N91) );
  GTECH_AND2 U131 ( .A(n124), .B(n119), .Z(N90) );
  GTECH_XOR2 U132 ( .A(n121), .B(n8), .Z(n124) );
  GTECH_NAND2 U133 ( .A(n125), .B(n126), .Z(n121) );
  GTECH_AO21 U134 ( .A(n119), .B(n127), .C(reset), .Z(N89) );
  GTECH_XOR2 U135 ( .A(n117), .B(n102), .Z(n127) );
  GTECH_NOT U136 ( .A(n128), .Z(n119) );
  GTECH_OAI22 U137 ( .A(n123), .B(n129), .C(n126), .D(n128), .Z(N88) );
  GTECH_NAND3 U138 ( .A(n129), .B(n130), .C(n131), .Z(n128) );
  GTECH_OAI22 U139 ( .A(n5), .B(n132), .C(n133), .D(n134), .Z(N75) );
  GTECH_OA21 U140 ( .A(n5), .B(n135), .C(n136), .Z(n133) );
  GTECH_NOT U141 ( .A(n137), .Z(n132) );
  GTECH_MUX2 U142 ( .A(n137), .B(n138), .S(n103), .Z(N73) );
  GTECH_NOR3 U143 ( .A(n105), .B(n104), .C(n134), .Z(n138) );
  GTECH_AO21 U144 ( .A(n139), .B(n104), .C(N71), .Z(n137) );
  GTECH_MUX2 U145 ( .A(N71), .B(n140), .S(n104), .Z(N72) );
  GTECH_AND2 U146 ( .A(n139), .B(n141), .Z(n140) );
  GTECH_NOT U147 ( .A(n142), .Z(N71) );
  GTECH_NAND2 U148 ( .A(n105), .B(n139), .Z(n142) );
  GTECH_NOT U149 ( .A(n134), .Z(n139) );
  GTECH_NAND3 U150 ( .A(n143), .B(n122), .C(n144), .Z(n134) );
  GTECH_MUX2 U151 ( .A(n145), .B(n146), .S(n106), .Z(N59) );
  GTECH_NOR3 U152 ( .A(n108), .B(n107), .C(n147), .Z(n146) );
  GTECH_AO21 U153 ( .A(n148), .B(n107), .C(n149), .Z(n145) );
  GTECH_MUX2 U154 ( .A(n149), .B(n150), .S(n107), .Z(N57) );
  GTECH_AND_NOT U155 ( .A(n151), .B(n108), .Z(n150) );
  GTECH_AO21 U156 ( .A(n148), .B(n108), .C(N55), .Z(n149) );
  GTECH_MUX2 U157 ( .A(N55), .B(n151), .S(n108), .Z(N56) );
  GTECH_NOT U158 ( .A(n147), .Z(n151) );
  GTECH_NAND2 U159 ( .A(n148), .B(n152), .Z(n147) );
  GTECH_NOT U160 ( .A(n153), .Z(N55) );
  GTECH_NAND2 U161 ( .A(n4), .B(n148), .Z(n153) );
  GTECH_NOT U162 ( .A(n154), .Z(n148) );
  GTECH_NAND2 U163 ( .A(n155), .B(n156), .Z(n154) );
  GTECH_NOT U164 ( .A(N74), .Z(n156) );
  GTECH_NAND2 U165 ( .A(n122), .B(n157), .Z(N74) );
  GTECH_OAI2N2 U166 ( .A(n158), .B(n159), .C(n160), .D(ss[7]), .Z(N43) );
  GTECH_OA21 U167 ( .A(n161), .B(ss[6]), .C(n162), .Z(n158) );
  GTECH_MUX2 U168 ( .A(n163), .B(n160), .S(ss[6]), .Z(N41) );
  GTECH_AO21 U169 ( .A(n164), .B(n165), .C(N39), .Z(n160) );
  GTECH_AND3 U170 ( .A(n164), .B(ss[4]), .C(ss[5]), .Z(n163) );
  GTECH_MUX2 U171 ( .A(n166), .B(N39), .S(ss[5]), .Z(N40) );
  GTECH_AND2 U172 ( .A(n164), .B(ss[4]), .Z(n166) );
  GTECH_NOT U173 ( .A(n167), .Z(N39) );
  GTECH_NAND2 U174 ( .A(n164), .B(n168), .Z(n167) );
  GTECH_NOT U175 ( .A(ss[4]), .Z(n168) );
  GTECH_NOT U176 ( .A(n159), .Z(n164) );
  GTECH_NAND2 U177 ( .A(n169), .B(n170), .Z(n159) );
  GTECH_NOT U178 ( .A(N58), .Z(n170) );
  GTECH_NAND2 U179 ( .A(n122), .B(n171), .Z(N58) );
  GTECH_MUX2 U180 ( .A(n172), .B(n173), .S(ss[3]), .Z(N26) );
  GTECH_AO21 U181 ( .A(n174), .B(n175), .C(n176), .Z(n173) );
  GTECH_AND2 U182 ( .A(ss[2]), .B(n177), .Z(n172) );
  GTECH_NAND2 U183 ( .A(n122), .B(n178), .Z(N25) );
  GTECH_NOT U184 ( .A(ena), .Z(n178) );
  GTECH_MUX2 U185 ( .A(n177), .B(n176), .S(ss[2]), .Z(N24) );
  GTECH_AO21 U186 ( .A(n174), .B(n179), .C(N22), .Z(n176) );
  GTECH_NOT U187 ( .A(n180), .Z(n177) );
  GTECH_NAND3 U188 ( .A(n174), .B(ss[0]), .C(ss[1]), .Z(n180) );
  GTECH_MUX2 U189 ( .A(n181), .B(N22), .S(ss[1]), .Z(N23) );
  GTECH_AND2 U190 ( .A(n174), .B(ss[0]), .Z(n181) );
  GTECH_NOT U191 ( .A(n182), .Z(N22) );
  GTECH_NAND2 U192 ( .A(n174), .B(n183), .Z(n182) );
  GTECH_NOT U193 ( .A(ss[0]), .Z(n183) );
  GTECH_NOT U194 ( .A(n184), .Z(n174) );
  GTECH_NAND2 U195 ( .A(ena), .B(n185), .Z(n184) );
  GTECH_NOT U196 ( .A(N42), .Z(n185) );
  GTECH_NAND2 U197 ( .A(n122), .B(n186), .Z(N42) );
  GTECH_AND2 U198 ( .A(n187), .B(n10), .Z(N122) );
  GTECH_NOT U199 ( .A(n188), .Z(n187) );
  GTECH_NAND2 U200 ( .A(n122), .B(n188), .Z(N121) );
  GTECH_NAND4 U201 ( .A(n131), .B(n189), .C(n117), .D(n126), .Z(n188) );
  GTECH_AND2 U202 ( .A(n190), .B(n191), .Z(N116) );
  GTECH_XOR2 U203 ( .A(n192), .B(n7), .Z(n190) );
  GTECH_OR2 U204 ( .A(n6), .B(n193), .Z(n192) );
  GTECH_NAND3 U205 ( .A(n130), .B(n122), .C(n129), .Z(N115) );
  GTECH_NAND4 U206 ( .A(n102), .B(n189), .C(n194), .D(n125), .Z(n129) );
  GTECH_NOT U207 ( .A(n117), .Z(n125) );
  GTECH_AND3 U208 ( .A(n7), .B(n6), .C(n195), .Z(n189) );
  GTECH_AND4 U209 ( .A(n196), .B(n116), .C(n8), .D(n9), .Z(n195) );
  GTECH_AND2 U210 ( .A(n197), .B(n191), .Z(N114) );
  GTECH_XOR2 U211 ( .A(n193), .B(n6), .Z(n197) );
  GTECH_NAND2 U212 ( .A(n198), .B(n196), .Z(n193) );
  GTECH_NOT U213 ( .A(n115), .Z(n196) );
  GTECH_NOT U214 ( .A(n9), .Z(n198) );
  GTECH_AND2 U215 ( .A(n191), .B(n199), .Z(N112) );
  GTECH_XOR2 U216 ( .A(n9), .B(n115), .Z(n199) );
  GTECH_AO21 U217 ( .A(n115), .B(n191), .C(reset), .Z(N110) );
  GTECH_NOT U218 ( .A(n200), .Z(n191) );
  GTECH_NAND2 U219 ( .A(n201), .B(n131), .Z(n200) );
  GTECH_NOT U220 ( .A(n123), .Z(n131) );
  GTECH_NAND2 U221 ( .A(n194), .B(n122), .Z(n123) );
  GTECH_NOT U222 ( .A(reset), .Z(n122) );
  GTECH_NOT U223 ( .A(n130), .Z(n201) );
  GTECH_NAND5 U224 ( .A(n126), .B(n202), .C(n194), .D(n8), .E(n117), .Z(n130)
         );
  GTECH_NOT U225 ( .A(n143), .Z(n194) );
  GTECH_NAND3 U226 ( .A(n203), .B(n144), .C(n104), .Z(n143) );
  GTECH_NOT U227 ( .A(n157), .Z(n144) );
  GTECH_NAND5 U228 ( .A(n204), .B(n152), .C(n155), .D(n108), .E(n107), .Z(n157) );
  GTECH_NOT U229 ( .A(n171), .Z(n155) );
  GTECH_NAND3 U230 ( .A(n205), .B(n165), .C(n169), .Z(n171) );
  GTECH_NOT U231 ( .A(n186), .Z(n169) );
  GTECH_NAND5 U232 ( .A(n179), .B(n175), .C(ena), .D(ss[3]), .E(ss[0]), .Z(
        n186) );
  GTECH_NOT U233 ( .A(ss[2]), .Z(n175) );
  GTECH_NOT U234 ( .A(ss[1]), .Z(n179) );
  GTECH_NOT U235 ( .A(ss[5]), .Z(n165) );
  GTECH_NOT U236 ( .A(n162), .Z(n205) );
  GTECH_NAND3 U237 ( .A(ss[4]), .B(n161), .C(ss[6]), .Z(n162) );
  GTECH_NOT U238 ( .A(ss[7]), .Z(n161) );
  GTECH_NOT U239 ( .A(n4), .Z(n152) );
  GTECH_NOT U240 ( .A(n106), .Z(n204) );
  GTECH_NOT U241 ( .A(n136), .Z(n203) );
  GTECH_NAND3 U242 ( .A(n135), .B(n141), .C(n5), .Z(n136) );
  GTECH_NOT U243 ( .A(n105), .Z(n141) );
  GTECH_NOT U244 ( .A(n103), .Z(n135) );
  GTECH_NOT U245 ( .A(n116), .Z(n202) );
  GTECH_NOT U246 ( .A(n102), .Z(n126) );
endmodule

