
module clock_12h ( clk, reset, ena, pm, hh, mm, ss );
  output [7:0] hh;
  output [7:0] mm;
  output [7:0] ss;
  input clk, reset, ena;
  output pm;
  wire   N22, N23, N24, N25, N26, N39, N40, N41, N42, N43, N55, N56, N57, N58,
         N59, N71, N72, N73, N74, N75, N88, N89, N90, N91, N92, N110, N112,
         N114, N115, N116, N121, N122, n4, n5, n6, n7, n8, n9, n10, n11, n80,
         n105, n106, n107, n108, n109, n110, n111, n112, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n212, n213, n214;

  GTECH_FJK1S ss_ones_reg_0_ ( .J(n80), .K(n80), .TI(N22), .TE(N25), .CP(clk), 
        .Q(ss[0]) );
  GTECH_FJK1S ss_ones_reg_3_ ( .J(n80), .K(n80), .TI(N26), .TE(N25), .CP(clk), 
        .Q(ss[3]) );
  GTECH_FJK1S ss_ones_reg_1_ ( .J(n80), .K(n80), .TI(N23), .TE(N25), .CP(clk), 
        .Q(ss[1]) );
  GTECH_FJK1S ss_ones_reg_2_ ( .J(n80), .K(n80), .TI(N24), .TE(N25), .CP(clk), 
        .Q(ss[2]) );
  GTECH_FJK1S ss_tens_reg_0_ ( .J(n80), .K(n80), .TI(N39), .TE(N42), .CP(clk), 
        .Q(ss[4]) );
  GTECH_FJK1S ss_tens_reg_2_ ( .J(n80), .K(n80), .TI(N41), .TE(N42), .CP(clk), 
        .Q(ss[6]) );
  GTECH_FJK1S ss_tens_reg_3_ ( .J(n80), .K(n80), .TI(N43), .TE(N42), .CP(clk), 
        .Q(ss[7]) );
  GTECH_FJK1S ss_tens_reg_1_ ( .J(n80), .K(n80), .TI(N40), .TE(N42), .CP(clk), 
        .Q(ss[5]) );
  GTECH_FJK1S mm_ones_reg_0_ ( .J(n80), .K(n80), .TI(N55), .TE(N58), .CP(clk), 
        .Q(mm[0]), .QN(n4) );
  GTECH_FJK1S mm_ones_reg_3_ ( .J(n80), .K(n80), .TI(N59), .TE(N58), .CP(clk), 
        .Q(mm[3]), .QN(n110) );
  GTECH_FJK1S mm_ones_reg_1_ ( .J(n80), .K(n80), .TI(N56), .TE(N58), .CP(clk), 
        .Q(mm[1]), .QN(n112) );
  GTECH_FJK1S mm_ones_reg_2_ ( .J(n80), .K(n80), .TI(N57), .TE(N58), .CP(clk), 
        .Q(mm[2]), .QN(n111) );
  GTECH_FJK1S mm_tens_reg_0_ ( .J(n80), .K(n80), .TI(N71), .TE(N74), .CP(clk), 
        .Q(mm[4]), .QN(n109) );
  GTECH_FJK1S mm_tens_reg_2_ ( .J(n80), .K(n80), .TI(N73), .TE(N74), .CP(clk), 
        .Q(mm[6]), .QN(n107) );
  GTECH_FJK1S mm_tens_reg_3_ ( .J(n80), .K(n80), .TI(N75), .TE(N74), .CP(clk), 
        .Q(mm[7]), .QN(n5) );
  GTECH_FJK1S mm_tens_reg_1_ ( .J(n80), .K(n80), .TI(N72), .TE(N74), .CP(clk), 
        .Q(mm[5]), .QN(n108) );
  GTECH_FJK1S hh_tens_reg_0_ ( .J(n80), .K(n80), .TI(N110), .TE(N115), .CP(clk), .Q(hh[4]), .QN(n119) );
  GTECH_FJK1S hh_tens_reg_2_ ( .J(n80), .K(n80), .TI(N114), .TE(N115), .CP(clk), .Q(hh[6]), .QN(n6) );
  GTECH_FJK1S hh_tens_reg_3_ ( .J(n80), .K(n80), .TI(N116), .TE(N115), .CP(clk), .Q(hh[7]), .QN(n7) );
  GTECH_FJK1S hh_ones_reg_0_ ( .J(n80), .K(n80), .TI(N88), .TE(N91), .CP(clk), 
        .Q(hh[0]), .QN(n106) );
  GTECH_FJK1S hh_ones_reg_1_ ( .J(n80), .K(n80), .TI(N89), .TE(N91), .CP(clk), 
        .Q(hh[1]), .QN(n8) );
  GTECH_FJK1S hh_ones_reg_2_ ( .J(n80), .K(n80), .TI(N90), .TE(N91), .CP(clk), 
        .Q(hh[2]), .QN(n105) );
  GTECH_FJK1S hh_ones_reg_3_ ( .J(n80), .K(n80), .TI(N92), .TE(N91), .CP(clk), 
        .Q(hh[3]), .QN(n9) );
  GTECH_FJK1S hh_tens_reg_1_ ( .J(n80), .K(n80), .TI(N112), .TE(N115), .CP(clk), .Q(hh[5]), .QN(n10) );
  GTECH_FJK1S pm_temp_reg ( .J(n80), .K(n80), .TI(N122), .TE(N121), .CP(clk), 
        .Q(pm), .QN(n11) );
  GTECH_ZERO U128 ( .Z(n80) );
  GTECH_AND2 U129 ( .A(n120), .B(n121), .Z(N92) );
  GTECH_XNOR2 U130 ( .A(n9), .B(n122), .Z(n121) );
  GTECH_AND_NOT U131 ( .A(n123), .B(n105), .Z(n122) );
  GTECH_NAND2 U132 ( .A(n124), .B(n125), .Z(N91) );
  GTECH_AND2 U133 ( .A(n126), .B(n120), .Z(N90) );
  GTECH_NOT U134 ( .A(n127), .Z(n120) );
  GTECH_XNOR2 U135 ( .A(n105), .B(n123), .Z(n126) );
  GTECH_NOT U136 ( .A(n128), .Z(n123) );
  GTECH_NAND2 U137 ( .A(n129), .B(n130), .Z(n128) );
  GTECH_OAI21 U138 ( .A(n131), .B(n127), .C(n124), .Z(N89) );
  GTECH_XNOR2 U139 ( .A(n8), .B(n106), .Z(n131) );
  GTECH_OAI22 U140 ( .A(n125), .B(n132), .C(n130), .D(n127), .Z(N88) );
  GTECH_NAND3 U141 ( .A(n132), .B(n133), .C(n134), .Z(n127) );
  GTECH_MUX2 U142 ( .A(n135), .B(n136), .S(n5), .Z(N75) );
  GTECH_AND2 U143 ( .A(n137), .B(n138), .Z(n136) );
  GTECH_OAI21 U144 ( .A(n139), .B(n138), .C(n140), .Z(n135) );
  GTECH_NOT U145 ( .A(n141), .Z(N73) );
  GTECH_MUX2 U146 ( .A(n140), .B(n142), .S(n107), .Z(n141) );
  GTECH_OR_NOT U147 ( .A(n108), .B(n137), .Z(n142) );
  GTECH_OAI21 U148 ( .A(n109), .B(n108), .C(n143), .Z(n140) );
  GTECH_MUX2 U149 ( .A(N71), .B(n137), .S(n108), .Z(N72) );
  GTECH_NOT U150 ( .A(n144), .Z(n137) );
  GTECH_NAND2 U151 ( .A(n143), .B(n145), .Z(n144) );
  GTECH_NOT U152 ( .A(n146), .Z(N71) );
  GTECH_NAND2 U153 ( .A(n109), .B(n143), .Z(n146) );
  GTECH_NOT U154 ( .A(n139), .Z(n143) );
  GTECH_NAND3 U155 ( .A(n147), .B(n124), .C(n148), .Z(n139) );
  GTECH_MUX2 U156 ( .A(n149), .B(n150), .S(n110), .Z(N59) );
  GTECH_AND2 U157 ( .A(n151), .B(n152), .Z(n150) );
  GTECH_OAI21 U158 ( .A(n152), .B(n153), .C(n154), .Z(n149) );
  GTECH_NOT U159 ( .A(n155), .Z(n154) );
  GTECH_NOT U160 ( .A(n111), .Z(n152) );
  GTECH_MUX2 U161 ( .A(n155), .B(n151), .S(n111), .Z(N57) );
  GTECH_NOT U162 ( .A(n156), .Z(n151) );
  GTECH_NAND3 U163 ( .A(n157), .B(n158), .C(n159), .Z(n156) );
  GTECH_OAI21 U164 ( .A(n157), .B(n153), .C(n160), .Z(n155) );
  GTECH_NOT U165 ( .A(n112), .Z(n157) );
  GTECH_MUX2 U166 ( .A(N55), .B(n161), .S(n112), .Z(N56) );
  GTECH_AND2 U167 ( .A(n159), .B(n158), .Z(n161) );
  GTECH_NOT U168 ( .A(n160), .Z(N55) );
  GTECH_NAND2 U169 ( .A(n4), .B(n159), .Z(n160) );
  GTECH_NOT U170 ( .A(n153), .Z(n159) );
  GTECH_NAND2 U171 ( .A(n162), .B(n163), .Z(n153) );
  GTECH_NOT U172 ( .A(N74), .Z(n163) );
  GTECH_NAND2 U173 ( .A(n124), .B(n164), .Z(N74) );
  GTECH_MUX2 U174 ( .A(n165), .B(n166), .S(ss[7]), .Z(N43) );
  GTECH_OAI21 U175 ( .A(ss[6]), .B(n167), .C(n168), .Z(n166) );
  GTECH_NOT U176 ( .A(n169), .Z(n168) );
  GTECH_AND2 U177 ( .A(n170), .B(ss[6]), .Z(n165) );
  GTECH_MUX2 U178 ( .A(n171), .B(n169), .S(ss[6]), .Z(N41) );
  GTECH_OAI21 U179 ( .A(ss[5]), .B(n167), .C(n172), .Z(n169) );
  GTECH_AND2 U180 ( .A(ss[5]), .B(n170), .Z(n171) );
  GTECH_MUX2 U181 ( .A(n170), .B(N39), .S(ss[5]), .Z(N40) );
  GTECH_NOT U182 ( .A(n173), .Z(n170) );
  GTECH_NAND2 U183 ( .A(n174), .B(ss[4]), .Z(n173) );
  GTECH_NOT U184 ( .A(n172), .Z(N39) );
  GTECH_NAND2 U185 ( .A(n174), .B(n175), .Z(n172) );
  GTECH_NOT U186 ( .A(ss[4]), .Z(n175) );
  GTECH_NOT U187 ( .A(n167), .Z(n174) );
  GTECH_NAND2 U188 ( .A(n176), .B(n177), .Z(n167) );
  GTECH_NOT U189 ( .A(N58), .Z(n177) );
  GTECH_NAND2 U190 ( .A(n124), .B(n178), .Z(N58) );
  GTECH_MUX2 U191 ( .A(n179), .B(n180), .S(ss[3]), .Z(N26) );
  GTECH_OAI21 U192 ( .A(ss[2]), .B(n181), .C(n182), .Z(n180) );
  GTECH_NOT U193 ( .A(n183), .Z(n182) );
  GTECH_AND2 U194 ( .A(ss[2]), .B(n184), .Z(n179) );
  GTECH_NAND2 U195 ( .A(n124), .B(n185), .Z(N25) );
  GTECH_NOT U196 ( .A(ena), .Z(n185) );
  GTECH_MUX2 U197 ( .A(n184), .B(n183), .S(ss[2]), .Z(N24) );
  GTECH_OAI21 U198 ( .A(ss[1]), .B(n181), .C(n186), .Z(n183) );
  GTECH_NOT U199 ( .A(n187), .Z(n184) );
  GTECH_NAND3 U200 ( .A(n188), .B(ss[0]), .C(ss[1]), .Z(n187) );
  GTECH_MUX2 U201 ( .A(n189), .B(N22), .S(ss[1]), .Z(N23) );
  GTECH_AND2 U202 ( .A(n188), .B(ss[0]), .Z(n189) );
  GTECH_NOT U203 ( .A(n186), .Z(N22) );
  GTECH_NAND2 U204 ( .A(n188), .B(n190), .Z(n186) );
  GTECH_NOT U205 ( .A(ss[0]), .Z(n190) );
  GTECH_NOT U206 ( .A(n181), .Z(n188) );
  GTECH_NAND2 U207 ( .A(ena), .B(n191), .Z(n181) );
  GTECH_NOT U208 ( .A(N42), .Z(n191) );
  GTECH_NAND2 U209 ( .A(n124), .B(n192), .Z(N42) );
  GTECH_AND2 U210 ( .A(n193), .B(n11), .Z(N122) );
  GTECH_NOT U211 ( .A(n194), .Z(n193) );
  GTECH_NAND2 U212 ( .A(n124), .B(n194), .Z(N121) );
  GTECH_NAND4 U213 ( .A(n134), .B(n195), .C(n8), .D(n130), .Z(n194) );
  GTECH_AND2 U214 ( .A(n196), .B(n197), .Z(N116) );
  GTECH_XNOR2 U215 ( .A(n7), .B(n198), .Z(n197) );
  GTECH_AND_NOT U216 ( .A(n199), .B(n6), .Z(n198) );
  GTECH_NAND3 U217 ( .A(n133), .B(n124), .C(n132), .Z(N115) );
  GTECH_NAND4 U218 ( .A(n106), .B(n195), .C(n200), .D(n129), .Z(n132) );
  GTECH_NOT U219 ( .A(n8), .Z(n129) );
  GTECH_AND3 U220 ( .A(n7), .B(n6), .C(n201), .Z(n195) );
  GTECH_AND4 U221 ( .A(n202), .B(n10), .C(n105), .D(n9), .Z(n201) );
  GTECH_AND2 U222 ( .A(n203), .B(n196), .Z(N114) );
  GTECH_XNOR2 U223 ( .A(n6), .B(n199), .Z(n203) );
  GTECH_NOT U224 ( .A(n204), .Z(n199) );
  GTECH_NAND2 U225 ( .A(n202), .B(n205), .Z(n204) );
  GTECH_AND2 U226 ( .A(n196), .B(n206), .Z(N112) );
  GTECH_XNOR2 U227 ( .A(n119), .B(n205), .Z(n206) );
  GTECH_NOT U228 ( .A(n10), .Z(n205) );
  GTECH_NOT U229 ( .A(n207), .Z(n196) );
  GTECH_OAI21 U230 ( .A(n207), .B(n202), .C(n124), .Z(N110) );
  GTECH_NOT U231 ( .A(n119), .Z(n202) );
  GTECH_NAND2 U232 ( .A(n208), .B(n134), .Z(n207) );
  GTECH_NOT U233 ( .A(n125), .Z(n134) );
  GTECH_NAND2 U234 ( .A(n200), .B(n124), .Z(n125) );
  GTECH_NOT U235 ( .A(reset), .Z(n124) );
  GTECH_NOT U236 ( .A(n133), .Z(n208) );
  GTECH_NAND5 U237 ( .A(n130), .B(n209), .C(n200), .D(n8), .E(n105), .Z(n133)
         );
  GTECH_NOT U238 ( .A(n147), .Z(n200) );
  GTECH_NAND5 U239 ( .A(n138), .B(n145), .C(n148), .D(n5), .E(n108), .Z(n147)
         );
  GTECH_NOT U240 ( .A(n164), .Z(n148) );
  GTECH_NAND5 U241 ( .A(n210), .B(n158), .C(n162), .D(n112), .E(n111), .Z(n164) );
  GTECH_NOT U242 ( .A(n178), .Z(n162) );
  GTECH_NAND5 U243 ( .A(n211), .B(n212), .C(n176), .D(ss[6]), .E(ss[4]), .Z(
        n178) );
  GTECH_NOT U244 ( .A(n192), .Z(n176) );
  GTECH_NAND5 U245 ( .A(n213), .B(n214), .C(ena), .D(ss[3]), .E(ss[0]), .Z(
        n192) );
  GTECH_NOT U246 ( .A(ss[2]), .Z(n214) );
  GTECH_NOT U247 ( .A(ss[1]), .Z(n213) );
  GTECH_NOT U248 ( .A(ss[7]), .Z(n212) );
  GTECH_NOT U249 ( .A(ss[5]), .Z(n211) );
  GTECH_NOT U250 ( .A(n4), .Z(n158) );
  GTECH_NOT U251 ( .A(n110), .Z(n210) );
  GTECH_NOT U252 ( .A(n109), .Z(n145) );
  GTECH_NOT U253 ( .A(n107), .Z(n138) );
  GTECH_NOT U254 ( .A(n9), .Z(n209) );
  GTECH_NOT U255 ( .A(n106), .Z(n130) );
endmodule

