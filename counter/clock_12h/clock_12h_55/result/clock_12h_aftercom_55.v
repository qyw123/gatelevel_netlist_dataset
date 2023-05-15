
module clock_12h ( clk, reset, ena, pm, hh, mm, ss );
  output [7:0] hh;
  output [7:0] mm;
  output [7:0] ss;
  input clk, reset, ena;
  output pm;
  wire   N22, N23, N24, N25, N26, N39, N40, N41, N42, N43, N55, N56, N57, N58,
         N59, N71, N72, N73, N74, N75, N88, N89, N90, N91, N92, N110, N112,
         N114, N115, N116, N121, N122, n5, n6, n7, n8, n9, n10, n76, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204;

  GTECH_FJK1S ss_ones_reg_0_ ( .J(n76), .K(n76), .TI(N22), .TE(N25), .CP(clk), 
        .Q(ss[0]) );
  GTECH_FJK1S ss_ones_reg_3_ ( .J(n76), .K(n76), .TI(N26), .TE(N25), .CP(clk), 
        .Q(ss[3]) );
  GTECH_FJK1S ss_ones_reg_1_ ( .J(n76), .K(n76), .TI(N23), .TE(N25), .CP(clk), 
        .Q(ss[1]) );
  GTECH_FJK1S ss_ones_reg_2_ ( .J(n76), .K(n76), .TI(N24), .TE(N25), .CP(clk), 
        .Q(ss[2]) );
  GTECH_FJK1S ss_tens_reg_0_ ( .J(n76), .K(n76), .TI(N39), .TE(N42), .CP(clk), 
        .Q(ss[4]) );
  GTECH_FJK1S ss_tens_reg_2_ ( .J(n76), .K(n76), .TI(N41), .TE(N42), .CP(clk), 
        .Q(ss[6]) );
  GTECH_FJK1S ss_tens_reg_3_ ( .J(n76), .K(n76), .TI(N43), .TE(N42), .CP(clk), 
        .Q(ss[7]) );
  GTECH_FJK1S ss_tens_reg_1_ ( .J(n76), .K(n76), .TI(N40), .TE(N42), .CP(clk), 
        .Q(ss[5]) );
  GTECH_FJK1S mm_ones_reg_0_ ( .J(n76), .K(n76), .TI(N55), .TE(N58), .CP(clk), 
        .Q(mm[0]), .QN(n110) );
  GTECH_FJK1S mm_ones_reg_3_ ( .J(n76), .K(n76), .TI(N59), .TE(N58), .CP(clk), 
        .Q(mm[3]), .QN(n107) );
  GTECH_FJK1S mm_ones_reg_1_ ( .J(n76), .K(n76), .TI(N56), .TE(N58), .CP(clk), 
        .Q(mm[1]), .QN(n109) );
  GTECH_FJK1S mm_ones_reg_2_ ( .J(n76), .K(n76), .TI(N57), .TE(N58), .CP(clk), 
        .Q(mm[2]), .QN(n108) );
  GTECH_FJK1S mm_tens_reg_0_ ( .J(n76), .K(n76), .TI(N71), .TE(N74), .CP(clk), 
        .Q(mm[4]), .QN(n106) );
  GTECH_FJK1S mm_tens_reg_2_ ( .J(n76), .K(n76), .TI(N73), .TE(N74), .CP(clk), 
        .Q(mm[6]), .QN(n104) );
  GTECH_FJK1S mm_tens_reg_3_ ( .J(n76), .K(n76), .TI(N75), .TE(N74), .CP(clk), 
        .Q(mm[7]), .QN(n5) );
  GTECH_FJK1S mm_tens_reg_1_ ( .J(n76), .K(n76), .TI(N72), .TE(N74), .CP(clk), 
        .Q(mm[5]), .QN(n105) );
  GTECH_FJK1S hh_tens_reg_0_ ( .J(n76), .K(n76), .TI(N110), .TE(N115), .CP(clk), .Q(hh[4]), .QN(n116) );
  GTECH_FJK1S hh_tens_reg_1_ ( .J(n76), .K(n76), .TI(N112), .TE(N115), .CP(clk), .Q(hh[5]), .QN(n6) );
  GTECH_FJK1S hh_tens_reg_2_ ( .J(n76), .K(n76), .TI(N114), .TE(N115), .CP(clk), .Q(hh[6]), .QN(n7) );
  GTECH_FJK1S hh_tens_reg_3_ ( .J(n76), .K(n76), .TI(N116), .TE(N115), .CP(clk), .Q(hh[7]), .QN(n8) );
  GTECH_FJK1S hh_ones_reg_0_ ( .J(n76), .K(n76), .TI(N88), .TE(N91), .CP(clk), 
        .Q(hh[0]), .QN(n9) );
  GTECH_FJK1S hh_ones_reg_1_ ( .J(n76), .K(n76), .TI(N89), .TE(N91), .CP(clk), 
        .Q(hh[1]), .QN(n103) );
  GTECH_FJK1S hh_ones_reg_2_ ( .J(n76), .K(n76), .TI(N90), .TE(N91), .CP(clk), 
        .Q(hh[2]), .QN(n102) );
  GTECH_FJK1S hh_ones_reg_3_ ( .J(n76), .K(n76), .TI(N92), .TE(N91), .CP(clk), 
        .Q(hh[3]), .QN(n101) );
  GTECH_FJK1S pm_temp_reg ( .J(n76), .K(n76), .TI(N122), .TE(N121), .CP(clk), 
        .Q(pm), .QN(n10) );
  GTECH_ZERO U125 ( .Z(n76) );
  GTECH_AND2 U126 ( .A(n117), .B(n118), .Z(N92) );
  GTECH_XOR2 U127 ( .A(n119), .B(n101), .Z(n117) );
  GTECH_OR2 U128 ( .A(n120), .B(n102), .Z(n119) );
  GTECH_OR_NOT U129 ( .A(n121), .B(n122), .Z(N91) );
  GTECH_AND2 U130 ( .A(n123), .B(n118), .Z(N90) );
  GTECH_NOT U131 ( .A(n124), .Z(n118) );
  GTECH_XOR2 U132 ( .A(n120), .B(n102), .Z(n123) );
  GTECH_OR_NOT U133 ( .A(n103), .B(n125), .Z(n120) );
  GTECH_OAI21 U134 ( .A(n126), .B(n124), .C(n122), .Z(N89) );
  GTECH_XOR2 U135 ( .A(n127), .B(n9), .Z(n126) );
  GTECH_OAI22 U136 ( .A(n128), .B(n129), .C(n125), .D(n124), .Z(N88) );
  GTECH_NAND3 U137 ( .A(n129), .B(n130), .C(n121), .Z(n124) );
  GTECH_MUX2 U138 ( .A(n131), .B(n132), .S(n5), .Z(N75) );
  GTECH_AND2 U139 ( .A(n133), .B(n134), .Z(n132) );
  GTECH_OAI21 U140 ( .A(n135), .B(n134), .C(n136), .Z(n131) );
  GTECH_NOT U141 ( .A(n137), .Z(N73) );
  GTECH_MUX2 U142 ( .A(n136), .B(n138), .S(n104), .Z(n137) );
  GTECH_OR_NOT U143 ( .A(n105), .B(n133), .Z(n138) );
  GTECH_OAI21 U144 ( .A(n106), .B(n105), .C(n139), .Z(n136) );
  GTECH_MUX2 U145 ( .A(N71), .B(n133), .S(n105), .Z(N72) );
  GTECH_NOT U146 ( .A(n140), .Z(n133) );
  GTECH_OR_NOT U147 ( .A(n106), .B(n139), .Z(n140) );
  GTECH_NOT U148 ( .A(n135), .Z(n139) );
  GTECH_NOT U149 ( .A(n141), .Z(N71) );
  GTECH_OR_NOT U150 ( .A(n135), .B(n106), .Z(n141) );
  GTECH_NAND3 U151 ( .A(n142), .B(n122), .C(n143), .Z(n135) );
  GTECH_MUX2 U152 ( .A(n144), .B(n145), .S(n107), .Z(N59) );
  GTECH_AND2 U153 ( .A(n146), .B(n147), .Z(n145) );
  GTECH_OAI21 U154 ( .A(n147), .B(n148), .C(n149), .Z(n144) );
  GTECH_NOT U155 ( .A(n150), .Z(n149) );
  GTECH_NOT U156 ( .A(n108), .Z(n147) );
  GTECH_MUX2 U157 ( .A(n150), .B(n146), .S(n108), .Z(N57) );
  GTECH_NOT U158 ( .A(n151), .Z(n146) );
  GTECH_NAND3 U159 ( .A(n152), .B(n153), .C(n154), .Z(n151) );
  GTECH_OAI21 U160 ( .A(n152), .B(n148), .C(n155), .Z(n150) );
  GTECH_NOT U161 ( .A(n109), .Z(n152) );
  GTECH_MUX2 U162 ( .A(N55), .B(n156), .S(n109), .Z(N56) );
  GTECH_AND2 U163 ( .A(n154), .B(n153), .Z(n156) );
  GTECH_NOT U164 ( .A(n148), .Z(n154) );
  GTECH_NOT U165 ( .A(n155), .Z(N55) );
  GTECH_OR_NOT U166 ( .A(n148), .B(n110), .Z(n155) );
  GTECH_OR_NOT U167 ( .A(N74), .B(n157), .Z(n148) );
  GTECH_OR_NOT U168 ( .A(n143), .B(n122), .Z(N74) );
  GTECH_MUX2 U169 ( .A(n158), .B(n159), .S(ss[7]), .Z(N43) );
  GTECH_OAI21 U170 ( .A(ss[6]), .B(n160), .C(n161), .Z(n159) );
  GTECH_NOT U171 ( .A(n162), .Z(n161) );
  GTECH_AND2 U172 ( .A(n163), .B(ss[6]), .Z(n158) );
  GTECH_MUX2 U173 ( .A(n164), .B(n162), .S(ss[6]), .Z(N41) );
  GTECH_OAI21 U174 ( .A(ss[5]), .B(n160), .C(n165), .Z(n162) );
  GTECH_AND2 U175 ( .A(ss[5]), .B(n163), .Z(n164) );
  GTECH_MUX2 U176 ( .A(n163), .B(N39), .S(ss[5]), .Z(N40) );
  GTECH_NOT U177 ( .A(n166), .Z(n163) );
  GTECH_OR_NOT U178 ( .A(n167), .B(n168), .Z(n166) );
  GTECH_NOT U179 ( .A(ss[4]), .Z(n167) );
  GTECH_NOT U180 ( .A(n165), .Z(N39) );
  GTECH_OR_NOT U181 ( .A(ss[4]), .B(n168), .Z(n165) );
  GTECH_NOT U182 ( .A(n160), .Z(n168) );
  GTECH_OR_NOT U183 ( .A(N58), .B(n169), .Z(n160) );
  GTECH_OR_NOT U184 ( .A(n157), .B(n122), .Z(N58) );
  GTECH_MUX2 U185 ( .A(n170), .B(n171), .S(ss[3]), .Z(N26) );
  GTECH_OAI21 U186 ( .A(ss[2]), .B(n172), .C(n173), .Z(n171) );
  GTECH_NOT U187 ( .A(n174), .Z(n173) );
  GTECH_AND2 U188 ( .A(ss[2]), .B(n175), .Z(n170) );
  GTECH_OR_NOT U189 ( .A(ena), .B(n122), .Z(N25) );
  GTECH_MUX2 U190 ( .A(n175), .B(n174), .S(ss[2]), .Z(N24) );
  GTECH_OAI21 U191 ( .A(ss[1]), .B(n172), .C(n176), .Z(n174) );
  GTECH_NOT U192 ( .A(n177), .Z(n175) );
  GTECH_NAND3 U193 ( .A(n178), .B(ss[0]), .C(ss[1]), .Z(n177) );
  GTECH_MUX2 U194 ( .A(n179), .B(N22), .S(ss[1]), .Z(N23) );
  GTECH_AND2 U195 ( .A(n178), .B(ss[0]), .Z(n179) );
  GTECH_NOT U196 ( .A(n176), .Z(N22) );
  GTECH_OR_NOT U197 ( .A(ss[0]), .B(n178), .Z(n176) );
  GTECH_NOT U198 ( .A(n172), .Z(n178) );
  GTECH_OR_NOT U199 ( .A(N42), .B(ena), .Z(n172) );
  GTECH_OR_NOT U200 ( .A(n169), .B(n122), .Z(N42) );
  GTECH_AND2 U201 ( .A(n180), .B(n10), .Z(N122) );
  GTECH_OR_NOT U202 ( .A(n180), .B(n122), .Z(N121) );
  GTECH_NOT U203 ( .A(n181), .Z(n180) );
  GTECH_NAND4 U204 ( .A(n121), .B(n182), .C(n103), .D(n125), .Z(n181) );
  GTECH_NOT U205 ( .A(n128), .Z(n121) );
  GTECH_AND2 U206 ( .A(n183), .B(n184), .Z(N116) );
  GTECH_XOR2 U207 ( .A(n185), .B(n8), .Z(n183) );
  GTECH_OR2 U208 ( .A(n186), .B(n7), .Z(n185) );
  GTECH_NAND3 U209 ( .A(n130), .B(n122), .C(n129), .Z(N115) );
  GTECH_NAND4 U210 ( .A(n9), .B(n182), .C(n187), .D(n127), .Z(n129) );
  GTECH_NOT U211 ( .A(n103), .Z(n127) );
  GTECH_AND3 U212 ( .A(n7), .B(n6), .C(n188), .Z(n182) );
  GTECH_AND4 U213 ( .A(n189), .B(n101), .C(n102), .D(n8), .Z(n188) );
  GTECH_AND2 U214 ( .A(n190), .B(n184), .Z(N114) );
  GTECH_XOR2 U215 ( .A(n186), .B(n7), .Z(n190) );
  GTECH_OR_NOT U216 ( .A(n116), .B(n191), .Z(n186) );
  GTECH_NOT U217 ( .A(n6), .Z(n191) );
  GTECH_AND2 U218 ( .A(n184), .B(n192), .Z(N112) );
  GTECH_XOR2 U219 ( .A(n6), .B(n116), .Z(n192) );
  GTECH_NOT U220 ( .A(n193), .Z(n184) );
  GTECH_OAI21 U221 ( .A(n193), .B(n189), .C(n122), .Z(N110) );
  GTECH_NOT U222 ( .A(reset), .Z(n122) );
  GTECH_NOT U223 ( .A(n116), .Z(n189) );
  GTECH_OR_NOT U224 ( .A(n128), .B(n194), .Z(n193) );
  GTECH_NOT U225 ( .A(n130), .Z(n194) );
  GTECH_NAND5 U226 ( .A(n195), .B(n125), .C(n187), .D(n103), .E(n102), .Z(n130) );
  GTECH_NOT U227 ( .A(n9), .Z(n125) );
  GTECH_NOT U228 ( .A(n101), .Z(n195) );
  GTECH_OR_NOT U229 ( .A(reset), .B(n187), .Z(n128) );
  GTECH_NOT U230 ( .A(n142), .Z(n187) );
  GTECH_NAND5 U231 ( .A(n134), .B(n196), .C(n143), .D(n5), .E(n105), .Z(n142)
         );
  GTECH_NOT U232 ( .A(n197), .Z(n143) );
  GTECH_NAND5 U233 ( .A(n198), .B(n153), .C(n157), .D(n109), .E(n108), .Z(n197) );
  GTECH_NOT U234 ( .A(n199), .Z(n157) );
  GTECH_NAND5 U235 ( .A(n200), .B(n201), .C(n169), .D(ss[6]), .E(ss[4]), .Z(
        n199) );
  GTECH_NOT U236 ( .A(n202), .Z(n169) );
  GTECH_NAND5 U237 ( .A(n203), .B(n204), .C(ena), .D(ss[3]), .E(ss[0]), .Z(
        n202) );
  GTECH_NOT U238 ( .A(ss[2]), .Z(n204) );
  GTECH_NOT U239 ( .A(ss[1]), .Z(n203) );
  GTECH_NOT U240 ( .A(ss[7]), .Z(n201) );
  GTECH_NOT U241 ( .A(ss[5]), .Z(n200) );
  GTECH_NOT U242 ( .A(n110), .Z(n153) );
  GTECH_NOT U243 ( .A(n107), .Z(n198) );
  GTECH_NOT U244 ( .A(n106), .Z(n196) );
  GTECH_NOT U245 ( .A(n104), .Z(n134) );
endmodule

