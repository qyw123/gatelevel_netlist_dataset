
module clock_12h ( clk, reset, ena, pm, hh, mm, ss );
  output [7:0] hh;
  output [7:0] mm;
  output [7:0] ss;
  input clk, reset, ena;
  output pm;
  wire   N22, N23, N24, N25, N26, N39, N40, N41, N42, N43, N55, N56, N57, N58,
         N59, N71, N72, N73, N74, N75, N88, N89, N90, N91, N92, N110, N112,
         N114, N115, N116, N121, N122, n3, n4, n5, n6, n7, n8, n9, n110, n111,
         n112, n113, n114, n115, n116, n117, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218;

  GTECH_FJK1S ss_ones_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N22), .TE(N25), .CP(clk), .Q(ss[0]) );
  GTECH_FJK1S ss_ones_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N24), .TE(N25), .CP(clk), .Q(ss[2]) );
  GTECH_FJK1S ss_ones_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N26), .TE(N25), .CP(clk), .Q(ss[3]) );
  GTECH_FJK1S ss_ones_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N23), .TE(N25), .CP(clk), .Q(ss[1]) );
  GTECH_FJK1S ss_tens_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N39), .TE(N42), .CP(clk), .Q(ss[4]) );
  GTECH_FJK1S ss_tens_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N41), .TE(N42), .CP(clk), .Q(ss[6]) );
  GTECH_FJK1S ss_tens_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N43), .TE(N42), .CP(clk), .Q(ss[7]) );
  GTECH_FJK1S ss_tens_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N40), .TE(N42), .CP(clk), .Q(ss[5]) );
  GTECH_FJK1S mm_ones_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N55), .TE(N58), .CP(clk), .Q(mm[0]), .QN(n115) );
  GTECH_FJK1S mm_ones_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N57), .TE(N58), .CP(clk), .Q(mm[2]), .QN(n117) );
  GTECH_FJK1S mm_ones_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N59), .TE(N58), .CP(clk), .Q(mm[3]), .QN(n114) );
  GTECH_FJK1S mm_ones_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N56), .TE(N58), .CP(clk), .Q(mm[1]), .QN(n116) );
  GTECH_FJK1S mm_tens_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N71), .TE(N74), .CP(clk), .Q(mm[4]), .QN(n3) );
  GTECH_FJK1S mm_tens_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N73), .TE(N74), .CP(clk), .Q(mm[6]), .QN(n112) );
  GTECH_FJK1S mm_tens_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N75), .TE(N74), .CP(clk), .Q(mm[7]), .QN(n111) );
  GTECH_FJK1S mm_tens_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N72), .TE(N74), .CP(clk), .Q(mm[5]), .QN(n113) );
  GTECH_FJK1S hh_tens_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N110), .TE(N115), .CP(
        clk), .Q(hh[4]), .QN(n4) );
  GTECH_FJK1S hh_tens_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N114), .TE(N115), .CP(
        clk), .Q(hh[6]), .QN(n5) );
  GTECH_FJK1S hh_tens_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N116), .TE(N115), .CP(
        clk), .Q(hh[7]), .QN(n6) );
  GTECH_FJK1S hh_ones_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N88), .TE(N91), .CP(clk), .Q(hh[0]), .QN(n7) );
  GTECH_FJK1S hh_ones_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N89), .TE(N91), .CP(clk), .Q(hh[1]), .QN(n110) );
  GTECH_FJK1S hh_ones_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N90), .TE(N91), .CP(clk), .Q(hh[2]), .QN(n126) );
  GTECH_FJK1S hh_ones_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N92), .TE(N91), .CP(clk), .Q(hh[3]), .QN(n125) );
  GTECH_FJK1S hh_tens_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N112), .TE(N115), .CP(
        clk), .Q(hh[5]), .QN(n8) );
  GTECH_FJK1S pm_temp_reg ( .J(1'b0), .K(1'b0), .TI(N122), .TE(N121), .CP(clk), 
        .Q(pm), .QN(n9) );
  GTECH_AND2 U135 ( .A(n127), .B(n128), .Z(N92) );
  GTECH_XOR2 U136 ( .A(n129), .B(n125), .Z(n127) );
  GTECH_OR2 U137 ( .A(n126), .B(n130), .Z(n129) );
  GTECH_NAND2 U138 ( .A(n131), .B(n132), .Z(N91) );
  GTECH_AND2 U139 ( .A(n133), .B(n128), .Z(N90) );
  GTECH_NOT U140 ( .A(n134), .Z(n128) );
  GTECH_XOR2 U141 ( .A(n130), .B(n126), .Z(n133) );
  GTECH_NAND2 U142 ( .A(n135), .B(n136), .Z(n130) );
  GTECH_OAI21 U143 ( .A(n137), .B(n134), .C(n131), .Z(N89) );
  GTECH_OA21 U144 ( .A(n110), .B(n135), .C(n138), .Z(n137) );
  GTECH_OAI22 U145 ( .A(n132), .B(n139), .C(n135), .D(n134), .Z(N88) );
  GTECH_NAND3 U146 ( .A(n139), .B(n140), .C(n141), .Z(n134) );
  GTECH_OAI22 U147 ( .A(n111), .B(n142), .C(n143), .D(n144), .Z(N75) );
  GTECH_OA21 U148 ( .A(n111), .B(n145), .C(n146), .Z(n143) );
  GTECH_NOT U149 ( .A(n147), .Z(N73) );
  GTECH_MUX2 U150 ( .A(n142), .B(n148), .S(n112), .Z(n147) );
  GTECH_OR3 U151 ( .A(n113), .B(n144), .C(n3), .Z(n148) );
  GTECH_OAI21 U152 ( .A(n3), .B(n113), .C(n149), .Z(n142) );
  GTECH_MUX2 U153 ( .A(N71), .B(n150), .S(n113), .Z(N72) );
  GTECH_AND2 U154 ( .A(n149), .B(n151), .Z(n150) );
  GTECH_NOT U155 ( .A(n152), .Z(N71) );
  GTECH_NAND2 U156 ( .A(n3), .B(n149), .Z(n152) );
  GTECH_NOT U157 ( .A(n144), .Z(n149) );
  GTECH_NAND3 U158 ( .A(n153), .B(n131), .C(n154), .Z(n144) );
  GTECH_MUX2 U159 ( .A(n155), .B(n156), .S(n114), .Z(N59) );
  GTECH_AND2 U160 ( .A(n157), .B(n158), .Z(n156) );
  GTECH_OAI21 U161 ( .A(n158), .B(n159), .C(n160), .Z(n155) );
  GTECH_NOT U162 ( .A(n161), .Z(n160) );
  GTECH_MUX2 U163 ( .A(n161), .B(n157), .S(n117), .Z(N57) );
  GTECH_NOT U164 ( .A(n162), .Z(n157) );
  GTECH_NAND3 U165 ( .A(n163), .B(n164), .C(n165), .Z(n162) );
  GTECH_OAI21 U166 ( .A(n164), .B(n159), .C(n166), .Z(n161) );
  GTECH_MUX2 U167 ( .A(N55), .B(n167), .S(n116), .Z(N56) );
  GTECH_AND2 U168 ( .A(n165), .B(n163), .Z(n167) );
  GTECH_NOT U169 ( .A(n115), .Z(n163) );
  GTECH_NOT U170 ( .A(n166), .Z(N55) );
  GTECH_NAND2 U171 ( .A(n115), .B(n165), .Z(n166) );
  GTECH_NOT U172 ( .A(n159), .Z(n165) );
  GTECH_NAND2 U173 ( .A(n168), .B(n169), .Z(n159) );
  GTECH_NOT U174 ( .A(N74), .Z(n169) );
  GTECH_NAND2 U175 ( .A(n131), .B(n170), .Z(N74) );
  GTECH_NOT U176 ( .A(n171), .Z(n168) );
  GTECH_OAI2N2 U177 ( .A(n172), .B(n173), .C(n174), .D(ss[7]), .Z(N43) );
  GTECH_OA21 U178 ( .A(n175), .B(ss[6]), .C(n176), .Z(n172) );
  GTECH_MUX2 U179 ( .A(n177), .B(n174), .S(ss[6]), .Z(N41) );
  GTECH_OAI21 U180 ( .A(ss[5]), .B(n173), .C(n178), .Z(n174) );
  GTECH_AND3 U181 ( .A(n179), .B(ss[4]), .C(ss[5]), .Z(n177) );
  GTECH_MUX2 U182 ( .A(n180), .B(N39), .S(ss[5]), .Z(N40) );
  GTECH_AND2 U183 ( .A(n179), .B(ss[4]), .Z(n180) );
  GTECH_NOT U184 ( .A(n178), .Z(N39) );
  GTECH_NAND2 U185 ( .A(n179), .B(n181), .Z(n178) );
  GTECH_NOT U186 ( .A(ss[4]), .Z(n181) );
  GTECH_NOT U187 ( .A(n173), .Z(n179) );
  GTECH_NAND2 U188 ( .A(n182), .B(n183), .Z(n173) );
  GTECH_NOT U189 ( .A(N58), .Z(n183) );
  GTECH_NAND2 U190 ( .A(n131), .B(n171), .Z(N58) );
  GTECH_MUX2 U191 ( .A(n184), .B(n185), .S(ss[3]), .Z(N26) );
  GTECH_OAI21 U192 ( .A(ss[2]), .B(n186), .C(n187), .Z(n185) );
  GTECH_NOT U193 ( .A(n188), .Z(n187) );
  GTECH_AND2 U194 ( .A(ss[2]), .B(n189), .Z(n184) );
  GTECH_NAND2 U195 ( .A(n131), .B(n190), .Z(N25) );
  GTECH_MUX2 U196 ( .A(n189), .B(n188), .S(ss[2]), .Z(N24) );
  GTECH_OAI21 U197 ( .A(ss[1]), .B(n186), .C(n191), .Z(n188) );
  GTECH_NOT U198 ( .A(n192), .Z(n189) );
  GTECH_NAND3 U199 ( .A(n193), .B(ss[0]), .C(ss[1]), .Z(n192) );
  GTECH_MUX2 U200 ( .A(n194), .B(N22), .S(ss[1]), .Z(N23) );
  GTECH_AND2 U201 ( .A(n193), .B(ss[0]), .Z(n194) );
  GTECH_NOT U202 ( .A(n191), .Z(N22) );
  GTECH_NAND2 U203 ( .A(n193), .B(n195), .Z(n191) );
  GTECH_NOT U204 ( .A(n186), .Z(n193) );
  GTECH_NAND2 U205 ( .A(ena), .B(n196), .Z(n186) );
  GTECH_NOT U206 ( .A(N42), .Z(n196) );
  GTECH_NAND2 U207 ( .A(n131), .B(n197), .Z(N42) );
  GTECH_AND2 U208 ( .A(n198), .B(n9), .Z(N122) );
  GTECH_NOT U209 ( .A(n199), .Z(n198) );
  GTECH_NAND2 U210 ( .A(n131), .B(n199), .Z(N121) );
  GTECH_NAND3 U211 ( .A(n200), .B(n201), .C(n141), .Z(n199) );
  GTECH_AND2 U212 ( .A(n202), .B(n203), .Z(N116) );
  GTECH_XOR2 U213 ( .A(n204), .B(n6), .Z(n202) );
  GTECH_OR2 U214 ( .A(n5), .B(n205), .Z(n204) );
  GTECH_NAND3 U215 ( .A(n140), .B(n131), .C(n139), .Z(N115) );
  GTECH_NAND4 U216 ( .A(n7), .B(n200), .C(n206), .D(n136), .Z(n139) );
  GTECH_NOT U217 ( .A(n110), .Z(n136) );
  GTECH_AND3 U218 ( .A(n6), .B(n5), .C(n207), .Z(n200) );
  GTECH_AND4 U219 ( .A(n208), .B(n125), .C(n126), .D(n8), .Z(n207) );
  GTECH_AND2 U220 ( .A(n209), .B(n203), .Z(N114) );
  GTECH_XOR2 U221 ( .A(n205), .B(n5), .Z(n209) );
  GTECH_NAND2 U222 ( .A(n210), .B(n208), .Z(n205) );
  GTECH_NOT U223 ( .A(n8), .Z(n210) );
  GTECH_AND2 U224 ( .A(n203), .B(n211), .Z(N112) );
  GTECH_XOR2 U225 ( .A(n8), .B(n4), .Z(n211) );
  GTECH_NOT U226 ( .A(n212), .Z(n203) );
  GTECH_OAI21 U227 ( .A(n212), .B(n208), .C(n131), .Z(N110) );
  GTECH_NOT U228 ( .A(n4), .Z(n208) );
  GTECH_NAND2 U229 ( .A(n213), .B(n141), .Z(n212) );
  GTECH_NOT U230 ( .A(n132), .Z(n141) );
  GTECH_NAND2 U231 ( .A(n206), .B(n131), .Z(n132) );
  GTECH_NOT U232 ( .A(reset), .Z(n131) );
  GTECH_NOT U233 ( .A(n140), .Z(n213) );
  GTECH_NAND4 U234 ( .A(n126), .B(n206), .C(n201), .D(n214), .Z(n140) );
  GTECH_NOT U235 ( .A(n125), .Z(n214) );
  GTECH_NOT U236 ( .A(n138), .Z(n201) );
  GTECH_NAND2 U237 ( .A(n110), .B(n135), .Z(n138) );
  GTECH_NOT U238 ( .A(n7), .Z(n135) );
  GTECH_NOT U239 ( .A(n153), .Z(n206) );
  GTECH_NAND3 U240 ( .A(n154), .B(n215), .C(n113), .Z(n153) );
  GTECH_NOT U241 ( .A(n146), .Z(n215) );
  GTECH_NAND3 U242 ( .A(n145), .B(n151), .C(n111), .Z(n146) );
  GTECH_NOT U243 ( .A(n3), .Z(n151) );
  GTECH_NOT U244 ( .A(n112), .Z(n145) );
  GTECH_NOT U245 ( .A(n170), .Z(n154) );
  GTECH_OR5 U246 ( .A(n115), .B(n114), .C(n171), .D(n164), .E(n158), .Z(n170)
         );
  GTECH_NOT U247 ( .A(n117), .Z(n158) );
  GTECH_NOT U248 ( .A(n116), .Z(n164) );
  GTECH_NAND3 U249 ( .A(n216), .B(n217), .C(n182), .Z(n171) );
  GTECH_NOT U250 ( .A(n197), .Z(n182) );
  GTECH_OR5 U251 ( .A(ss[2]), .B(ss[1]), .C(n190), .D(n195), .E(n218), .Z(n197) );
  GTECH_NOT U252 ( .A(ss[3]), .Z(n218) );
  GTECH_NOT U253 ( .A(ss[0]), .Z(n195) );
  GTECH_NOT U254 ( .A(ena), .Z(n190) );
  GTECH_NOT U255 ( .A(ss[5]), .Z(n217) );
  GTECH_NOT U256 ( .A(n176), .Z(n216) );
  GTECH_NAND3 U257 ( .A(ss[4]), .B(n175), .C(ss[6]), .Z(n176) );
  GTECH_NOT U258 ( .A(ss[7]), .Z(n175) );
endmodule

