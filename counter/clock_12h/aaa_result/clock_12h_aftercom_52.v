
module clock_12h ( clk, reset, ena, pm, hh, mm, ss );
  output [7:0] hh;
  output [7:0] mm;
  output [7:0] ss;
  input clk, reset, ena;
  output pm;
  wire   N22, N23, N24, N25, N26, N39, N40, N41, N42, N43, N55, N56, N57, N58,
         N59, N71, N72, N73, N74, N75, N88, N89, N90, N91, N92, N110, N112,
         N114, N115, N116, N121, N122, n3, n4, n5, n6, n7, n8, n9, n102, n103,
         n104, n105, n106, n107, n108, n109, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205;

  GTECH_FJK1S ss_ones_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N22), .TE(N25), .CP(clk), .Q(ss[0]) );
  GTECH_FJK1S ss_ones_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N23), .TE(N25), .CP(clk), .Q(ss[1]) );
  GTECH_FJK1S ss_ones_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N24), .TE(N25), .CP(clk), .Q(ss[2]) );
  GTECH_FJK1S ss_ones_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N26), .TE(N25), .CP(clk), .Q(ss[3]) );
  GTECH_FJK1S ss_tens_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N39), .TE(N42), .CP(clk), .Q(ss[4]) );
  GTECH_FJK1S ss_tens_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N41), .TE(N42), .CP(clk), .Q(ss[6]) );
  GTECH_FJK1S ss_tens_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N43), .TE(N42), .CP(clk), .Q(ss[7]) );
  GTECH_FJK1S ss_tens_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N40), .TE(N42), .CP(clk), .Q(ss[5]) );
  GTECH_FJK1S mm_ones_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N55), .TE(N58), .CP(clk), .Q(mm[0]), .QN(n3) );
  GTECH_FJK1S mm_ones_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N59), .TE(N58), .CP(clk), .Q(mm[3]), .QN(n107) );
  GTECH_FJK1S mm_ones_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N56), .TE(N58), .CP(clk), .Q(mm[1]), .QN(n109) );
  GTECH_FJK1S mm_ones_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N57), .TE(N58), .CP(clk), .Q(mm[2]), .QN(n108) );
  GTECH_FJK1S mm_tens_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N71), .TE(N74), .CP(clk), .Q(mm[4]), .QN(n106) );
  GTECH_FJK1S mm_tens_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N73), .TE(N74), .CP(clk), .Q(mm[6]), .QN(n104) );
  GTECH_FJK1S mm_tens_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N75), .TE(N74), .CP(clk), .Q(mm[7]), .QN(n4) );
  GTECH_FJK1S mm_tens_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N72), .TE(N74), .CP(clk), .Q(mm[5]), .QN(n105) );
  GTECH_FJK1S hh_tens_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N110), .TE(N115), .CP(
        clk), .Q(hh[4]), .QN(n117) );
  GTECH_FJK1S hh_tens_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N114), .TE(N115), .CP(
        clk), .Q(hh[6]), .QN(n5) );
  GTECH_FJK1S hh_tens_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N116), .TE(N115), .CP(
        clk), .Q(hh[7]), .QN(n6) );
  GTECH_FJK1S hh_ones_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N88), .TE(N91), .CP(clk), .Q(hh[0]), .QN(n7) );
  GTECH_FJK1S hh_ones_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N89), .TE(N91), .CP(clk), .Q(hh[1]), .QN(n103) );
  GTECH_FJK1S hh_ones_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N90), .TE(N91), .CP(clk), .Q(hh[2]), .QN(n102) );
  GTECH_FJK1S hh_ones_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N92), .TE(N91), .CP(clk), .Q(hh[3]), .QN(n118) );
  GTECH_FJK1S hh_tens_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N112), .TE(N115), .CP(
        clk), .Q(hh[5]), .QN(n8) );
  GTECH_FJK1S pm_temp_reg ( .J(1'b0), .K(1'b0), .TI(N122), .TE(N121), .CP(clk), 
        .Q(pm), .QN(n9) );
  GTECH_AND2 U127 ( .A(n119), .B(n120), .Z(N92) );
  GTECH_XOR2 U128 ( .A(n121), .B(n118), .Z(n119) );
  GTECH_OR2 U129 ( .A(n122), .B(n102), .Z(n121) );
  GTECH_OR_NOT U130 ( .A(n123), .B(n124), .Z(N91) );
  GTECH_AND2 U131 ( .A(n125), .B(n120), .Z(N90) );
  GTECH_NOT U132 ( .A(n126), .Z(n120) );
  GTECH_XOR2 U133 ( .A(n122), .B(n102), .Z(n125) );
  GTECH_OR_NOT U134 ( .A(n103), .B(n127), .Z(n122) );
  GTECH_OAI21 U135 ( .A(n128), .B(n126), .C(n124), .Z(N89) );
  GTECH_XOR2 U136 ( .A(n129), .B(n7), .Z(n128) );
  GTECH_OAI22 U137 ( .A(n130), .B(n131), .C(n127), .D(n126), .Z(N88) );
  GTECH_NAND3 U138 ( .A(n131), .B(n132), .C(n123), .Z(n126) );
  GTECH_MUX2 U139 ( .A(n133), .B(n134), .S(n4), .Z(N75) );
  GTECH_AND2 U140 ( .A(n135), .B(n136), .Z(n134) );
  GTECH_OAI21 U141 ( .A(n137), .B(n136), .C(n138), .Z(n133) );
  GTECH_NOT U142 ( .A(n139), .Z(N73) );
  GTECH_MUX2 U143 ( .A(n138), .B(n140), .S(n104), .Z(n139) );
  GTECH_OR_NOT U144 ( .A(n105), .B(n135), .Z(n140) );
  GTECH_OAI21 U145 ( .A(n106), .B(n105), .C(n141), .Z(n138) );
  GTECH_MUX2 U146 ( .A(N71), .B(n135), .S(n105), .Z(N72) );
  GTECH_NOT U147 ( .A(n142), .Z(n135) );
  GTECH_OR_NOT U148 ( .A(n106), .B(n141), .Z(n142) );
  GTECH_NOT U149 ( .A(n137), .Z(n141) );
  GTECH_NOT U150 ( .A(n143), .Z(N71) );
  GTECH_OR_NOT U151 ( .A(n137), .B(n106), .Z(n143) );
  GTECH_NAND3 U152 ( .A(n144), .B(n124), .C(n145), .Z(n137) );
  GTECH_MUX2 U153 ( .A(n146), .B(n147), .S(n107), .Z(N59) );
  GTECH_AND2 U154 ( .A(n148), .B(n149), .Z(n147) );
  GTECH_OAI21 U155 ( .A(n149), .B(n150), .C(n151), .Z(n146) );
  GTECH_NOT U156 ( .A(n152), .Z(n151) );
  GTECH_NOT U157 ( .A(n108), .Z(n149) );
  GTECH_MUX2 U158 ( .A(n152), .B(n148), .S(n108), .Z(N57) );
  GTECH_NOT U159 ( .A(n153), .Z(n148) );
  GTECH_NAND3 U160 ( .A(n154), .B(n155), .C(n156), .Z(n153) );
  GTECH_OAI21 U161 ( .A(n154), .B(n150), .C(n157), .Z(n152) );
  GTECH_NOT U162 ( .A(n109), .Z(n154) );
  GTECH_MUX2 U163 ( .A(N55), .B(n158), .S(n109), .Z(N56) );
  GTECH_AND2 U164 ( .A(n156), .B(n155), .Z(n158) );
  GTECH_NOT U165 ( .A(n150), .Z(n156) );
  GTECH_NOT U166 ( .A(n157), .Z(N55) );
  GTECH_OR_NOT U167 ( .A(n150), .B(n3), .Z(n157) );
  GTECH_OR_NOT U168 ( .A(N74), .B(n159), .Z(n150) );
  GTECH_OR_NOT U169 ( .A(n145), .B(n124), .Z(N74) );
  GTECH_MUX2 U170 ( .A(n160), .B(n161), .S(ss[7]), .Z(N43) );
  GTECH_OAI21 U171 ( .A(ss[6]), .B(n162), .C(n163), .Z(n161) );
  GTECH_NOT U172 ( .A(n164), .Z(n163) );
  GTECH_AND2 U173 ( .A(n165), .B(ss[6]), .Z(n160) );
  GTECH_MUX2 U174 ( .A(n166), .B(n164), .S(ss[6]), .Z(N41) );
  GTECH_OAI21 U175 ( .A(ss[5]), .B(n162), .C(n167), .Z(n164) );
  GTECH_AND2 U176 ( .A(ss[5]), .B(n165), .Z(n166) );
  GTECH_MUX2 U177 ( .A(n165), .B(N39), .S(ss[5]), .Z(N40) );
  GTECH_NOT U178 ( .A(n168), .Z(n165) );
  GTECH_OR_NOT U179 ( .A(n169), .B(n170), .Z(n168) );
  GTECH_NOT U180 ( .A(ss[4]), .Z(n169) );
  GTECH_NOT U181 ( .A(n167), .Z(N39) );
  GTECH_OR_NOT U182 ( .A(ss[4]), .B(n170), .Z(n167) );
  GTECH_NOT U183 ( .A(n162), .Z(n170) );
  GTECH_OR_NOT U184 ( .A(N58), .B(n171), .Z(n162) );
  GTECH_OR_NOT U185 ( .A(n159), .B(n124), .Z(N58) );
  GTECH_MUX2 U186 ( .A(n172), .B(n173), .S(ss[3]), .Z(N26) );
  GTECH_OAI21 U187 ( .A(ss[2]), .B(n174), .C(n175), .Z(n173) );
  GTECH_NOT U188 ( .A(n176), .Z(n175) );
  GTECH_AND2 U189 ( .A(ss[2]), .B(n177), .Z(n172) );
  GTECH_OR_NOT U190 ( .A(ena), .B(n124), .Z(N25) );
  GTECH_MUX2 U191 ( .A(n177), .B(n176), .S(ss[2]), .Z(N24) );
  GTECH_OAI21 U192 ( .A(ss[1]), .B(n174), .C(n178), .Z(n176) );
  GTECH_NOT U193 ( .A(n179), .Z(n177) );
  GTECH_NAND3 U194 ( .A(n180), .B(ss[0]), .C(ss[1]), .Z(n179) );
  GTECH_MUX2 U195 ( .A(n181), .B(N22), .S(ss[1]), .Z(N23) );
  GTECH_AND2 U196 ( .A(n180), .B(ss[0]), .Z(n181) );
  GTECH_NOT U197 ( .A(n178), .Z(N22) );
  GTECH_OR_NOT U198 ( .A(ss[0]), .B(n180), .Z(n178) );
  GTECH_NOT U199 ( .A(n174), .Z(n180) );
  GTECH_OR_NOT U200 ( .A(N42), .B(ena), .Z(n174) );
  GTECH_OR_NOT U201 ( .A(n171), .B(n124), .Z(N42) );
  GTECH_AND2 U202 ( .A(n182), .B(n9), .Z(N122) );
  GTECH_OR_NOT U203 ( .A(n182), .B(n124), .Z(N121) );
  GTECH_AND5 U204 ( .A(n5), .B(n183), .C(n6), .D(n123), .E(n8), .Z(n182) );
  GTECH_NOT U205 ( .A(n130), .Z(n123) );
  GTECH_AND5 U206 ( .A(n118), .B(n103), .C(n102), .D(n184), .E(n127), .Z(n183)
         );
  GTECH_AND2 U207 ( .A(n185), .B(n186), .Z(N116) );
  GTECH_XOR2 U208 ( .A(n187), .B(n6), .Z(n185) );
  GTECH_OR2 U209 ( .A(n188), .B(n5), .Z(n187) );
  GTECH_NAND3 U210 ( .A(n132), .B(n124), .C(n131), .Z(N115) );
  GTECH_NAND5 U211 ( .A(n8), .B(n7), .C(n6), .D(n5), .E(n189), .Z(n131) );
  GTECH_AND5 U212 ( .A(n129), .B(n184), .C(n190), .D(n118), .E(n102), .Z(n189)
         );
  GTECH_NOT U213 ( .A(n103), .Z(n129) );
  GTECH_AND2 U214 ( .A(n191), .B(n186), .Z(N114) );
  GTECH_XOR2 U215 ( .A(n188), .B(n5), .Z(n191) );
  GTECH_OR_NOT U216 ( .A(n117), .B(n192), .Z(n188) );
  GTECH_NOT U217 ( .A(n8), .Z(n192) );
  GTECH_AND2 U218 ( .A(n186), .B(n193), .Z(N112) );
  GTECH_XOR2 U219 ( .A(n8), .B(n117), .Z(n193) );
  GTECH_NOT U220 ( .A(n194), .Z(n186) );
  GTECH_OAI21 U221 ( .A(n194), .B(n184), .C(n124), .Z(N110) );
  GTECH_NOT U222 ( .A(reset), .Z(n124) );
  GTECH_NOT U223 ( .A(n117), .Z(n184) );
  GTECH_OR_NOT U224 ( .A(n130), .B(n195), .Z(n194) );
  GTECH_NOT U225 ( .A(n132), .Z(n195) );
  GTECH_NAND5 U226 ( .A(n196), .B(n127), .C(n190), .D(n103), .E(n102), .Z(n132) );
  GTECH_NOT U227 ( .A(n7), .Z(n127) );
  GTECH_NOT U228 ( .A(n118), .Z(n196) );
  GTECH_OR_NOT U229 ( .A(reset), .B(n190), .Z(n130) );
  GTECH_NOT U230 ( .A(n144), .Z(n190) );
  GTECH_NAND5 U231 ( .A(n136), .B(n197), .C(n145), .D(n4), .E(n105), .Z(n144)
         );
  GTECH_NOT U232 ( .A(n198), .Z(n145) );
  GTECH_NAND5 U233 ( .A(n199), .B(n155), .C(n159), .D(n109), .E(n108), .Z(n198) );
  GTECH_NOT U234 ( .A(n200), .Z(n159) );
  GTECH_NAND5 U235 ( .A(n201), .B(n202), .C(n171), .D(ss[6]), .E(ss[4]), .Z(
        n200) );
  GTECH_NOT U236 ( .A(n203), .Z(n171) );
  GTECH_NAND5 U237 ( .A(n204), .B(n205), .C(ena), .D(ss[3]), .E(ss[0]), .Z(
        n203) );
  GTECH_NOT U238 ( .A(ss[2]), .Z(n205) );
  GTECH_NOT U239 ( .A(ss[1]), .Z(n204) );
  GTECH_NOT U240 ( .A(ss[7]), .Z(n202) );
  GTECH_NOT U241 ( .A(ss[5]), .Z(n201) );
  GTECH_NOT U242 ( .A(n3), .Z(n155) );
  GTECH_NOT U243 ( .A(n107), .Z(n199) );
  GTECH_NOT U244 ( .A(n106), .Z(n197) );
  GTECH_NOT U245 ( .A(n104), .Z(n136) );
endmodule

