
module clock_12h ( clk, reset, ena, pm, hh, mm, ss );
  output [7:0] hh;
  output [7:0] mm;
  output [7:0] ss;
  input clk, reset, ena;
  output pm;
  wire   N22, N23, N24, N25, N26, N39, N40, N41, N42, N43, N55, N56, N57, N58,
         N59, N71, N72, N73, N74, N75, N88, N89, N90, N91, N92, N110, N112,
         N114, N115, N116, N121, N122, n4, n5, n6, n7, n8, n9, n10, n11, n85,
         n110, n111, n112, n113, n114, n115, n116, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219;

  GTECH_FJK1S ss_ones_reg_0_ ( .J(n85), .K(n85), .TI(N22), .TE(N25), .CP(clk), 
        .Q(ss[0]) );
  GTECH_FJK1S ss_ones_reg_3_ ( .J(n85), .K(n85), .TI(N26), .TE(N25), .CP(clk), 
        .Q(ss[3]) );
  GTECH_FJK1S ss_ones_reg_1_ ( .J(n85), .K(n85), .TI(N23), .TE(N25), .CP(clk), 
        .Q(ss[1]) );
  GTECH_FJK1S ss_ones_reg_2_ ( .J(n85), .K(n85), .TI(N24), .TE(N25), .CP(clk), 
        .Q(ss[2]) );
  GTECH_FJK1S ss_tens_reg_0_ ( .J(n85), .K(n85), .TI(N39), .TE(N42), .CP(clk), 
        .Q(ss[4]) );
  GTECH_FJK1S ss_tens_reg_2_ ( .J(n85), .K(n85), .TI(N41), .TE(N42), .CP(clk), 
        .Q(ss[6]) );
  GTECH_FJK1S ss_tens_reg_3_ ( .J(n85), .K(n85), .TI(N43), .TE(N42), .CP(clk), 
        .Q(ss[7]) );
  GTECH_FJK1S ss_tens_reg_1_ ( .J(n85), .K(n85), .TI(N40), .TE(N42), .CP(clk), 
        .Q(ss[5]) );
  GTECH_FJK1S mm_ones_reg_0_ ( .J(n85), .K(n85), .TI(N55), .TE(N58), .CP(clk), 
        .Q(mm[0]), .QN(n4) );
  GTECH_FJK1S mm_ones_reg_3_ ( .J(n85), .K(n85), .TI(N59), .TE(N58), .CP(clk), 
        .Q(mm[3]), .QN(n114) );
  GTECH_FJK1S mm_ones_reg_1_ ( .J(n85), .K(n85), .TI(N56), .TE(N58), .CP(clk), 
        .Q(mm[1]), .QN(n116) );
  GTECH_FJK1S mm_ones_reg_2_ ( .J(n85), .K(n85), .TI(N57), .TE(N58), .CP(clk), 
        .Q(mm[2]), .QN(n115) );
  GTECH_FJK1S mm_tens_reg_0_ ( .J(n85), .K(n85), .TI(N71), .TE(N74), .CP(clk), 
        .Q(mm[4]), .QN(n113) );
  GTECH_FJK1S mm_tens_reg_2_ ( .J(n85), .K(n85), .TI(N73), .TE(N74), .CP(clk), 
        .Q(mm[6]), .QN(n111) );
  GTECH_FJK1S mm_tens_reg_3_ ( .J(n85), .K(n85), .TI(N75), .TE(N74), .CP(clk), 
        .Q(mm[7]), .QN(n5) );
  GTECH_FJK1S mm_tens_reg_1_ ( .J(n85), .K(n85), .TI(N72), .TE(N74), .CP(clk), 
        .Q(mm[5]), .QN(n112) );
  GTECH_FJK1S hh_tens_reg_0_ ( .J(n85), .K(n85), .TI(N110), .TE(N115), .CP(clk), .Q(hh[4]), .QN(n123) );
  GTECH_FJK1S hh_tens_reg_2_ ( .J(n85), .K(n85), .TI(N114), .TE(N115), .CP(clk), .Q(hh[6]), .QN(n6) );
  GTECH_FJK1S hh_tens_reg_3_ ( .J(n85), .K(n85), .TI(N116), .TE(N115), .CP(clk), .Q(hh[7]), .QN(n7) );
  GTECH_FJK1S hh_ones_reg_0_ ( .J(n85), .K(n85), .TI(N88), .TE(N91), .CP(clk), 
        .Q(hh[0]), .QN(n8) );
  GTECH_FJK1S hh_ones_reg_1_ ( .J(n85), .K(n85), .TI(N89), .TE(N91), .CP(clk), 
        .Q(hh[1]), .QN(n110) );
  GTECH_FJK1S hh_ones_reg_2_ ( .J(n85), .K(n85), .TI(N90), .TE(N91), .CP(clk), 
        .Q(hh[2]), .QN(n9) );
  GTECH_FJK1S hh_ones_reg_3_ ( .J(n85), .K(n85), .TI(N92), .TE(N91), .CP(clk), 
        .Q(hh[3]), .QN(n124) );
  GTECH_FJK1S hh_tens_reg_1_ ( .J(n85), .K(n85), .TI(N112), .TE(N115), .CP(clk), .Q(hh[5]), .QN(n10) );
  GTECH_FJK1S pm_temp_reg ( .J(n85), .K(n85), .TI(N122), .TE(N121), .CP(clk), 
        .Q(pm), .QN(n11) );
  GTECH_ZERO U133 ( .Z(n85) );
  GTECH_AND2 U134 ( .A(n125), .B(n126), .Z(N92) );
  GTECH_XOR2 U135 ( .A(n127), .B(n124), .Z(n125) );
  GTECH_OR_NOT U136 ( .A(n128), .B(n129), .Z(n127) );
  GTECH_NAND2 U137 ( .A(n130), .B(n131), .Z(N91) );
  GTECH_AND2 U138 ( .A(n132), .B(n126), .Z(N90) );
  GTECH_NOT U139 ( .A(n133), .Z(n126) );
  GTECH_XOR2 U140 ( .A(n128), .B(n9), .Z(n132) );
  GTECH_NAND2 U141 ( .A(n134), .B(n135), .Z(n128) );
  GTECH_OAI21 U142 ( .A(n136), .B(n133), .C(n130), .Z(N89) );
  GTECH_XOR2 U143 ( .A(n135), .B(n8), .Z(n136) );
  GTECH_OAI22 U144 ( .A(n131), .B(n137), .C(n134), .D(n133), .Z(N88) );
  GTECH_OR3 U145 ( .A(n138), .B(n139), .C(n131), .Z(n133) );
  GTECH_MUX2 U146 ( .A(n140), .B(n141), .S(n5), .Z(N75) );
  GTECH_AND2 U147 ( .A(n142), .B(n143), .Z(n141) );
  GTECH_OAI21 U148 ( .A(n144), .B(n143), .C(n145), .Z(n140) );
  GTECH_NOT U149 ( .A(n146), .Z(n145) );
  GTECH_MUX2 U150 ( .A(n146), .B(n147), .S(n111), .Z(N73) );
  GTECH_AND2 U151 ( .A(n142), .B(n148), .Z(n147) );
  GTECH_OAI21 U152 ( .A(n148), .B(n144), .C(n149), .Z(n146) );
  GTECH_NOT U153 ( .A(n112), .Z(n148) );
  GTECH_MUX2 U154 ( .A(N71), .B(n142), .S(n112), .Z(N72) );
  GTECH_NOT U155 ( .A(n150), .Z(n142) );
  GTECH_NAND2 U156 ( .A(n151), .B(n152), .Z(n150) );
  GTECH_NOT U157 ( .A(n149), .Z(N71) );
  GTECH_NAND2 U158 ( .A(n113), .B(n151), .Z(n149) );
  GTECH_NOT U159 ( .A(n144), .Z(n151) );
  GTECH_OR3 U160 ( .A(reset), .B(n153), .C(n154), .Z(n144) );
  GTECH_OAI22 U161 ( .A(n114), .B(n155), .C(n156), .D(n157), .Z(N59) );
  GTECH_MUX2 U162 ( .A(n158), .B(n159), .S(n114), .Z(n157) );
  GTECH_NAND2 U163 ( .A(n160), .B(n158), .Z(n159) );
  GTECH_NOT U164 ( .A(n115), .Z(n158) );
  GTECH_MUX2 U165 ( .A(n161), .B(n162), .S(n115), .Z(N57) );
  GTECH_AND2 U166 ( .A(n163), .B(n160), .Z(n162) );
  GTECH_NOT U167 ( .A(n164), .Z(n160) );
  GTECH_NOT U168 ( .A(n155), .Z(n161) );
  GTECH_NAND2 U169 ( .A(n163), .B(n164), .Z(n155) );
  GTECH_NAND2 U170 ( .A(n165), .B(n166), .Z(n164) );
  GTECH_NOT U171 ( .A(n116), .Z(n165) );
  GTECH_MUX2 U172 ( .A(N55), .B(n167), .S(n116), .Z(N56) );
  GTECH_AND2 U173 ( .A(n163), .B(n166), .Z(n167) );
  GTECH_NOT U174 ( .A(n168), .Z(N55) );
  GTECH_NAND2 U175 ( .A(n4), .B(n163), .Z(n168) );
  GTECH_NOT U176 ( .A(n156), .Z(n163) );
  GTECH_NAND2 U177 ( .A(n169), .B(n170), .Z(n156) );
  GTECH_NOT U178 ( .A(N74), .Z(n170) );
  GTECH_NAND2 U179 ( .A(n130), .B(n154), .Z(N74) );
  GTECH_OAI2N2 U180 ( .A(n171), .B(n172), .C(n173), .D(ss[7]), .Z(N43) );
  GTECH_OA21 U181 ( .A(n174), .B(ss[6]), .C(n175), .Z(n171) );
  GTECH_NOT U182 ( .A(ss[7]), .Z(n174) );
  GTECH_MUX2 U183 ( .A(n176), .B(n173), .S(ss[6]), .Z(N41) );
  GTECH_OAI21 U184 ( .A(ss[5]), .B(n172), .C(n177), .Z(n173) );
  GTECH_AND3 U185 ( .A(n178), .B(ss[4]), .C(ss[5]), .Z(n176) );
  GTECH_MUX2 U186 ( .A(n179), .B(N39), .S(ss[5]), .Z(N40) );
  GTECH_AND2 U187 ( .A(n178), .B(ss[4]), .Z(n179) );
  GTECH_NOT U188 ( .A(n177), .Z(N39) );
  GTECH_NAND2 U189 ( .A(n178), .B(n180), .Z(n177) );
  GTECH_NOT U190 ( .A(n172), .Z(n178) );
  GTECH_NAND2 U191 ( .A(n181), .B(n182), .Z(n172) );
  GTECH_NOT U192 ( .A(N58), .Z(n182) );
  GTECH_NAND2 U193 ( .A(n130), .B(n183), .Z(N58) );
  GTECH_NOT U194 ( .A(n184), .Z(n181) );
  GTECH_MUX2 U195 ( .A(n185), .B(n186), .S(ss[3]), .Z(N26) );
  GTECH_OAI21 U196 ( .A(ss[2]), .B(n187), .C(n188), .Z(n186) );
  GTECH_NOT U197 ( .A(n189), .Z(n188) );
  GTECH_AND2 U198 ( .A(ss[2]), .B(n190), .Z(n185) );
  GTECH_NAND2 U199 ( .A(n130), .B(n191), .Z(N25) );
  GTECH_NOT U200 ( .A(ena), .Z(n191) );
  GTECH_MUX2 U201 ( .A(n190), .B(n189), .S(ss[2]), .Z(N24) );
  GTECH_OAI21 U202 ( .A(ss[1]), .B(n187), .C(n192), .Z(n189) );
  GTECH_NOT U203 ( .A(n193), .Z(n190) );
  GTECH_OR3 U204 ( .A(n194), .B(n187), .C(n195), .Z(n193) );
  GTECH_MUX2 U205 ( .A(n196), .B(N22), .S(ss[1]), .Z(N23) );
  GTECH_AND2 U206 ( .A(n197), .B(ss[0]), .Z(n196) );
  GTECH_NOT U207 ( .A(n192), .Z(N22) );
  GTECH_NAND2 U208 ( .A(n197), .B(n194), .Z(n192) );
  GTECH_NOT U209 ( .A(ss[0]), .Z(n194) );
  GTECH_NOT U210 ( .A(n187), .Z(n197) );
  GTECH_NAND2 U211 ( .A(ena), .B(n198), .Z(n187) );
  GTECH_NOT U212 ( .A(N42), .Z(n198) );
  GTECH_NAND2 U213 ( .A(n130), .B(n184), .Z(N42) );
  GTECH_AND2 U214 ( .A(n199), .B(n11), .Z(N122) );
  GTECH_NOT U215 ( .A(n200), .Z(n199) );
  GTECH_NAND2 U216 ( .A(n130), .B(n200), .Z(N121) );
  GTECH_NAND5 U217 ( .A(n201), .B(n7), .C(n6), .D(n124), .E(n202), .Z(n200) );
  GTECH_NOR5 U218 ( .A(n129), .B(n203), .C(n135), .D(n8), .E(n123), .Z(n202)
         );
  GTECH_NOT U219 ( .A(n110), .Z(n135) );
  GTECH_AND2 U220 ( .A(n204), .B(n205), .Z(N116) );
  GTECH_XOR2 U221 ( .A(n206), .B(n7), .Z(n204) );
  GTECH_OR2 U222 ( .A(n6), .B(n207), .Z(n206) );
  GTECH_OR3 U223 ( .A(reset), .B(n138), .C(n139), .Z(N115) );
  GTECH_NOT U224 ( .A(n137), .Z(n139) );
  GTECH_NAND5 U225 ( .A(n8), .B(n7), .C(n6), .D(n124), .E(n208), .Z(n137) );
  GTECH_NOR5 U226 ( .A(n129), .B(n203), .C(n209), .D(n123), .E(n110), .Z(n208)
         );
  GTECH_NOT U227 ( .A(n9), .Z(n129) );
  GTECH_AND2 U228 ( .A(n210), .B(n205), .Z(N114) );
  GTECH_XOR2 U229 ( .A(n207), .B(n6), .Z(n210) );
  GTECH_NAND2 U230 ( .A(n211), .B(n203), .Z(n207) );
  GTECH_NOT U231 ( .A(n10), .Z(n203) );
  GTECH_AND2 U232 ( .A(n205), .B(n212), .Z(N112) );
  GTECH_XOR2 U233 ( .A(n123), .B(n10), .Z(n212) );
  GTECH_NOT U234 ( .A(n213), .Z(n205) );
  GTECH_OAI21 U235 ( .A(n213), .B(n211), .C(n130), .Z(N110) );
  GTECH_NOT U236 ( .A(n123), .Z(n211) );
  GTECH_NAND2 U237 ( .A(n138), .B(n201), .Z(n213) );
  GTECH_NOT U238 ( .A(n131), .Z(n201) );
  GTECH_NAND2 U239 ( .A(n153), .B(n130), .Z(n131) );
  GTECH_NOT U240 ( .A(reset), .Z(n130) );
  GTECH_NOT U241 ( .A(n214), .Z(n138) );
  GTECH_NAND5 U242 ( .A(n215), .B(n134), .C(n153), .D(n9), .E(n110), .Z(n214)
         );
  GTECH_NOT U243 ( .A(n209), .Z(n153) );
  GTECH_NAND5 U244 ( .A(n143), .B(n152), .C(n216), .D(n5), .E(n112), .Z(n209)
         );
  GTECH_NOT U245 ( .A(n154), .Z(n216) );
  GTECH_NAND5 U246 ( .A(n217), .B(n166), .C(n169), .D(n116), .E(n115), .Z(n154) );
  GTECH_NOT U247 ( .A(n183), .Z(n169) );
  GTECH_OR3 U248 ( .A(ss[5]), .B(n184), .C(n175), .Z(n183) );
  GTECH_OR3 U249 ( .A(ss[7]), .B(n180), .C(n218), .Z(n175) );
  GTECH_NOT U250 ( .A(ss[6]), .Z(n218) );
  GTECH_NOT U251 ( .A(ss[4]), .Z(n180) );
  GTECH_NAND5 U252 ( .A(n195), .B(n219), .C(ena), .D(ss[3]), .E(ss[0]), .Z(
        n184) );
  GTECH_NOT U253 ( .A(ss[2]), .Z(n219) );
  GTECH_NOT U254 ( .A(ss[1]), .Z(n195) );
  GTECH_NOT U255 ( .A(n4), .Z(n166) );
  GTECH_NOT U256 ( .A(n114), .Z(n217) );
  GTECH_NOT U257 ( .A(n113), .Z(n152) );
  GTECH_NOT U258 ( .A(n111), .Z(n143) );
  GTECH_NOT U259 ( .A(n8), .Z(n134) );
  GTECH_NOT U260 ( .A(n124), .Z(n215) );
endmodule

