
module clock_12h ( clk, reset, ena, pm, hh, mm, ss );
  output [7:0] hh;
  output [7:0] mm;
  output [7:0] ss;
  input clk, reset, ena;
  output pm;
  wire   N22, N23, N24, N25, N26, N39, N40, N41, N42, N43, N55, N56, N57, N58,
         N59, N71, N72, N73, N74, N75, N88, N89, N90, N91, N92, N110, N112,
         N114, N115, N116, N121, N122, n4, n5, n6, n7, n8, n9, n10, n11, n110,
         n111, n112, n113, n114, n115, n116, n117, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220;

  GTECH_FJK1S ss_ones_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N22), .TE(N25), .CP(clk), .Q(ss[0]) );
  GTECH_FJK1S ss_ones_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N26), .TE(N25), .CP(clk), .Q(ss[3]) );
  GTECH_FJK1S ss_ones_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N23), .TE(N25), .CP(clk), .Q(ss[1]) );
  GTECH_FJK1S ss_ones_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N24), .TE(N25), .CP(clk), .Q(ss[2]) );
  GTECH_FJK1S ss_tens_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N39), .TE(N42), .CP(clk), .Q(ss[4]) );
  GTECH_FJK1S ss_tens_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N40), .TE(N42), .CP(clk), .Q(ss[5]) );
  GTECH_FJK1S ss_tens_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N41), .TE(N42), .CP(clk), .Q(ss[6]) );
  GTECH_FJK1S ss_tens_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N43), .TE(N42), .CP(clk), .Q(ss[7]) );
  GTECH_FJK1S mm_ones_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N55), .TE(N58), .CP(clk), .Q(mm[0]), .QN(n4) );
  GTECH_FJK1S mm_ones_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N59), .TE(N58), .CP(clk), .Q(mm[3]), .QN(n115) );
  GTECH_FJK1S mm_ones_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N56), .TE(N58), .CP(clk), .Q(mm[1]), .QN(n117) );
  GTECH_FJK1S mm_ones_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N57), .TE(N58), .CP(clk), .Q(mm[2]), .QN(n116) );
  GTECH_FJK1S mm_tens_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N71), .TE(N74), .CP(clk), .Q(mm[4]), .QN(n114) );
  GTECH_FJK1S mm_tens_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N72), .TE(N74), .CP(clk), .Q(mm[5]), .QN(n113) );
  GTECH_FJK1S mm_tens_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N73), .TE(N74), .CP(clk), .Q(mm[6]), .QN(n112) );
  GTECH_FJK1S mm_tens_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N75), .TE(N74), .CP(clk), .Q(mm[7]), .QN(n5) );
  GTECH_FJK1S hh_tens_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N110), .TE(N115), .CP(
        clk), .Q(hh[4]), .QN(n124) );
  GTECH_FJK1S hh_tens_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N112), .TE(N115), .CP(
        clk), .Q(hh[5]), .QN(n6) );
  GTECH_FJK1S hh_tens_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N114), .TE(N115), .CP(
        clk), .Q(hh[6]), .QN(n7) );
  GTECH_FJK1S hh_tens_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N116), .TE(N115), .CP(
        clk), .Q(hh[7]), .QN(n8) );
  GTECH_FJK1S hh_ones_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N88), .TE(N91), .CP(clk), .Q(hh[0]), .QN(n9) );
  GTECH_FJK1S hh_ones_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N89), .TE(N91), .CP(clk), .Q(hh[1]), .QN(n111) );
  GTECH_FJK1S hh_ones_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N90), .TE(N91), .CP(clk), .Q(hh[2]), .QN(n10) );
  GTECH_FJK1S hh_ones_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N92), .TE(N91), .CP(clk), .Q(hh[3]), .QN(n110) );
  GTECH_FJK1S pm_temp_reg ( .J(1'b0), .K(1'b0), .TI(N122), .TE(N121), .CP(clk), 
        .Q(pm), .QN(n11) );
  GTECH_AND2 U133 ( .A(n125), .B(n126), .Z(N92) );
  GTECH_XOR2 U134 ( .A(n127), .B(n110), .Z(n125) );
  GTECH_OR2 U135 ( .A(n10), .B(n128), .Z(n127) );
  GTECH_NAND2 U136 ( .A(n129), .B(n130), .Z(N91) );
  GTECH_AND2 U137 ( .A(n131), .B(n126), .Z(N90) );
  GTECH_NOT U138 ( .A(n132), .Z(n126) );
  GTECH_XOR2 U139 ( .A(n128), .B(n10), .Z(n131) );
  GTECH_NAND2 U140 ( .A(n133), .B(n134), .Z(n128) );
  GTECH_OAI21 U141 ( .A(n135), .B(n132), .C(n129), .Z(N89) );
  GTECH_XOR2 U142 ( .A(n134), .B(n9), .Z(n135) );
  GTECH_OAI22 U143 ( .A(n130), .B(n136), .C(n133), .D(n132), .Z(N88) );
  GTECH_OR3 U144 ( .A(n137), .B(n138), .C(n130), .Z(n132) );
  GTECH_MUX2 U145 ( .A(n139), .B(n140), .S(n5), .Z(N75) );
  GTECH_AND2 U146 ( .A(n141), .B(n142), .Z(n140) );
  GTECH_OAI21 U147 ( .A(n143), .B(n142), .C(n144), .Z(n139) );
  GTECH_NOT U148 ( .A(n145), .Z(n144) );
  GTECH_MUX2 U149 ( .A(n145), .B(n146), .S(n112), .Z(N73) );
  GTECH_AND2 U150 ( .A(n141), .B(n147), .Z(n146) );
  GTECH_OAI21 U151 ( .A(n147), .B(n143), .C(n148), .Z(n145) );
  GTECH_NOT U152 ( .A(n113), .Z(n147) );
  GTECH_MUX2 U153 ( .A(N71), .B(n141), .S(n113), .Z(N72) );
  GTECH_NOT U154 ( .A(n149), .Z(n141) );
  GTECH_NAND2 U155 ( .A(n150), .B(n151), .Z(n149) );
  GTECH_NOT U156 ( .A(n148), .Z(N71) );
  GTECH_NAND2 U157 ( .A(n114), .B(n150), .Z(n148) );
  GTECH_NOT U158 ( .A(n143), .Z(n150) );
  GTECH_OR3 U159 ( .A(reset), .B(n152), .C(n153), .Z(n143) );
  GTECH_OAI22 U160 ( .A(n115), .B(n154), .C(n155), .D(n156), .Z(N59) );
  GTECH_MUX2 U161 ( .A(n157), .B(n158), .S(n115), .Z(n156) );
  GTECH_NAND2 U162 ( .A(n159), .B(n157), .Z(n158) );
  GTECH_NOT U163 ( .A(n116), .Z(n157) );
  GTECH_MUX2 U164 ( .A(n160), .B(n161), .S(n116), .Z(N57) );
  GTECH_AND2 U165 ( .A(n162), .B(n159), .Z(n161) );
  GTECH_NOT U166 ( .A(n163), .Z(n159) );
  GTECH_NOT U167 ( .A(n154), .Z(n160) );
  GTECH_NAND2 U168 ( .A(n162), .B(n163), .Z(n154) );
  GTECH_NAND2 U169 ( .A(n164), .B(n165), .Z(n163) );
  GTECH_NOT U170 ( .A(n117), .Z(n164) );
  GTECH_MUX2 U171 ( .A(N55), .B(n166), .S(n117), .Z(N56) );
  GTECH_AND2 U172 ( .A(n162), .B(n165), .Z(n166) );
  GTECH_NOT U173 ( .A(n167), .Z(N55) );
  GTECH_NAND2 U174 ( .A(n4), .B(n162), .Z(n167) );
  GTECH_NOT U175 ( .A(n155), .Z(n162) );
  GTECH_NAND2 U176 ( .A(n168), .B(n169), .Z(n155) );
  GTECH_NOT U177 ( .A(N74), .Z(n169) );
  GTECH_NAND2 U178 ( .A(n129), .B(n153), .Z(N74) );
  GTECH_MUX2 U179 ( .A(n170), .B(n171), .S(ss[7]), .Z(N43) );
  GTECH_OAI21 U180 ( .A(ss[6]), .B(n172), .C(n173), .Z(n171) );
  GTECH_NOT U181 ( .A(n174), .Z(n173) );
  GTECH_AND2 U182 ( .A(n175), .B(ss[6]), .Z(n170) );
  GTECH_MUX2 U183 ( .A(n176), .B(n174), .S(ss[6]), .Z(N41) );
  GTECH_OAI21 U184 ( .A(ss[5]), .B(n172), .C(n177), .Z(n174) );
  GTECH_AND2 U185 ( .A(ss[5]), .B(n175), .Z(n176) );
  GTECH_MUX2 U186 ( .A(n175), .B(N39), .S(ss[5]), .Z(N40) );
  GTECH_NOT U187 ( .A(n178), .Z(n175) );
  GTECH_NAND2 U188 ( .A(n179), .B(ss[4]), .Z(n178) );
  GTECH_NOT U189 ( .A(n177), .Z(N39) );
  GTECH_NAND2 U190 ( .A(n179), .B(n180), .Z(n177) );
  GTECH_NOT U191 ( .A(ss[4]), .Z(n180) );
  GTECH_NOT U192 ( .A(n172), .Z(n179) );
  GTECH_NAND2 U193 ( .A(n181), .B(n182), .Z(n172) );
  GTECH_NOT U194 ( .A(N58), .Z(n182) );
  GTECH_NAND2 U195 ( .A(n129), .B(n183), .Z(N58) );
  GTECH_MUX2 U196 ( .A(n184), .B(n185), .S(ss[3]), .Z(N26) );
  GTECH_OAI21 U197 ( .A(ss[2]), .B(n186), .C(n187), .Z(n185) );
  GTECH_NOT U198 ( .A(n188), .Z(n187) );
  GTECH_AND2 U199 ( .A(ss[2]), .B(n189), .Z(n184) );
  GTECH_NAND2 U200 ( .A(n129), .B(n190), .Z(N25) );
  GTECH_NOT U201 ( .A(ena), .Z(n190) );
  GTECH_MUX2 U202 ( .A(n189), .B(n188), .S(ss[2]), .Z(N24) );
  GTECH_OAI21 U203 ( .A(ss[1]), .B(n186), .C(n191), .Z(n188) );
  GTECH_NOT U204 ( .A(n192), .Z(n189) );
  GTECH_OR3 U205 ( .A(n193), .B(n186), .C(n194), .Z(n192) );
  GTECH_MUX2 U206 ( .A(n195), .B(N22), .S(ss[1]), .Z(N23) );
  GTECH_AND2 U207 ( .A(n196), .B(ss[0]), .Z(n195) );
  GTECH_NOT U208 ( .A(n191), .Z(N22) );
  GTECH_NAND2 U209 ( .A(n196), .B(n193), .Z(n191) );
  GTECH_NOT U210 ( .A(ss[0]), .Z(n193) );
  GTECH_NOT U211 ( .A(n186), .Z(n196) );
  GTECH_NAND2 U212 ( .A(ena), .B(n197), .Z(n186) );
  GTECH_NOT U213 ( .A(N42), .Z(n197) );
  GTECH_NAND2 U214 ( .A(n129), .B(n198), .Z(N42) );
  GTECH_AND2 U215 ( .A(n199), .B(n11), .Z(N122) );
  GTECH_NOT U216 ( .A(n200), .Z(n199) );
  GTECH_NAND2 U217 ( .A(n129), .B(n200), .Z(N121) );
  GTECH_NAND5 U218 ( .A(n201), .B(n8), .C(n7), .D(n6), .E(n202), .Z(n200) );
  GTECH_AND5 U219 ( .A(n203), .B(n133), .C(n10), .D(n110), .E(n111), .Z(n202)
         );
  GTECH_AND2 U220 ( .A(n204), .B(n205), .Z(N116) );
  GTECH_XOR2 U221 ( .A(n206), .B(n8), .Z(n204) );
  GTECH_OR2 U222 ( .A(n7), .B(n207), .Z(n206) );
  GTECH_OR3 U223 ( .A(reset), .B(n137), .C(n138), .Z(N115) );
  GTECH_NOT U224 ( .A(n136), .Z(n138) );
  GTECH_NAND5 U225 ( .A(n9), .B(n8), .C(n7), .D(n6), .E(n208), .Z(n136) );
  GTECH_AND5 U226 ( .A(n134), .B(n203), .C(n152), .D(n110), .E(n10), .Z(n208)
         );
  GTECH_NOT U227 ( .A(n111), .Z(n134) );
  GTECH_AND2 U228 ( .A(n209), .B(n205), .Z(N114) );
  GTECH_XOR2 U229 ( .A(n207), .B(n7), .Z(n209) );
  GTECH_NAND2 U230 ( .A(n210), .B(n203), .Z(n207) );
  GTECH_NOT U231 ( .A(n6), .Z(n210) );
  GTECH_AND2 U232 ( .A(n205), .B(n211), .Z(N112) );
  GTECH_XOR2 U233 ( .A(n6), .B(n124), .Z(n211) );
  GTECH_NOT U234 ( .A(n212), .Z(n205) );
  GTECH_OAI21 U235 ( .A(n212), .B(n203), .C(n129), .Z(N110) );
  GTECH_NOT U236 ( .A(n124), .Z(n203) );
  GTECH_NAND2 U237 ( .A(n137), .B(n201), .Z(n212) );
  GTECH_NOT U238 ( .A(n130), .Z(n201) );
  GTECH_NAND2 U239 ( .A(n152), .B(n129), .Z(n130) );
  GTECH_NOT U240 ( .A(reset), .Z(n129) );
  GTECH_NOT U241 ( .A(n213), .Z(n137) );
  GTECH_NAND5 U242 ( .A(n214), .B(n133), .C(n152), .D(n111), .E(n10), .Z(n213)
         );
  GTECH_NOT U243 ( .A(n215), .Z(n152) );
  GTECH_NAND5 U244 ( .A(n142), .B(n151), .C(n216), .D(n5), .E(n113), .Z(n215)
         );
  GTECH_NOT U245 ( .A(n153), .Z(n216) );
  GTECH_NAND5 U246 ( .A(n217), .B(n165), .C(n168), .D(n117), .E(n116), .Z(n153) );
  GTECH_NOT U247 ( .A(n183), .Z(n168) );
  GTECH_NAND5 U248 ( .A(n218), .B(n219), .C(n181), .D(ss[6]), .E(ss[4]), .Z(
        n183) );
  GTECH_NOT U249 ( .A(n198), .Z(n181) );
  GTECH_NAND5 U250 ( .A(n194), .B(n220), .C(ena), .D(ss[3]), .E(ss[0]), .Z(
        n198) );
  GTECH_NOT U251 ( .A(ss[2]), .Z(n220) );
  GTECH_NOT U252 ( .A(ss[1]), .Z(n194) );
  GTECH_NOT U253 ( .A(ss[7]), .Z(n219) );
  GTECH_NOT U254 ( .A(ss[5]), .Z(n218) );
  GTECH_NOT U255 ( .A(n4), .Z(n165) );
  GTECH_NOT U256 ( .A(n115), .Z(n217) );
  GTECH_NOT U257 ( .A(n114), .Z(n151) );
  GTECH_NOT U258 ( .A(n112), .Z(n142) );
  GTECH_NOT U259 ( .A(n9), .Z(n133) );
  GTECH_NOT U260 ( .A(n110), .Z(n214) );
endmodule

