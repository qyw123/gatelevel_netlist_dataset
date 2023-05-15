
module clock_12h ( clk, reset, ena, pm, hh, mm, ss );
  output [7:0] hh;
  output [7:0] mm;
  output [7:0] ss;
  input clk, reset, ena;
  output pm;
  wire   N22, N23, N24, N25, N26, N39, N40, N41, N42, N43, N55, N56, N57, N58,
         N59, N71, N72, N73, N74, N75, N88, N89, N90, N91, N92, N110, N112,
         N114, N115, N116, N121, N122, n5, n6, n7, n8, n9, n10, n11, n12, n81,
         n106, n107, n108, n109, n110, n111, n112, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220;

  GTECH_FJK1S ss_ones_reg_0_ ( .J(n81), .K(n81), .TI(N22), .TE(N25), .CP(clk), 
        .Q(ss[0]) );
  GTECH_FJK1S ss_ones_reg_3_ ( .J(n81), .K(n81), .TI(N26), .TE(N25), .CP(clk), 
        .Q(ss[3]) );
  GTECH_FJK1S ss_ones_reg_1_ ( .J(n81), .K(n81), .TI(N23), .TE(N25), .CP(clk), 
        .Q(ss[1]) );
  GTECH_FJK1S ss_ones_reg_2_ ( .J(n81), .K(n81), .TI(N24), .TE(N25), .CP(clk), 
        .Q(ss[2]) );
  GTECH_FJK1S ss_tens_reg_0_ ( .J(n81), .K(n81), .TI(N39), .TE(N42), .CP(clk), 
        .Q(ss[4]) );
  GTECH_FJK1S ss_tens_reg_2_ ( .J(n81), .K(n81), .TI(N41), .TE(N42), .CP(clk), 
        .Q(ss[6]) );
  GTECH_FJK1S ss_tens_reg_3_ ( .J(n81), .K(n81), .TI(N43), .TE(N42), .CP(clk), 
        .Q(ss[7]) );
  GTECH_FJK1S ss_tens_reg_1_ ( .J(n81), .K(n81), .TI(N40), .TE(N42), .CP(clk), 
        .Q(ss[5]) );
  GTECH_FJK1S mm_ones_reg_0_ ( .J(n81), .K(n81), .TI(N55), .TE(N58), .CP(clk), 
        .Q(mm[0]), .QN(n5) );
  GTECH_FJK1S mm_ones_reg_3_ ( .J(n81), .K(n81), .TI(N59), .TE(N58), .CP(clk), 
        .Q(mm[3]), .QN(n110) );
  GTECH_FJK1S mm_ones_reg_1_ ( .J(n81), .K(n81), .TI(N56), .TE(N58), .CP(clk), 
        .Q(mm[1]), .QN(n112) );
  GTECH_FJK1S mm_ones_reg_2_ ( .J(n81), .K(n81), .TI(N57), .TE(N58), .CP(clk), 
        .Q(mm[2]), .QN(n111) );
  GTECH_FJK1S mm_tens_reg_0_ ( .J(n81), .K(n81), .TI(N71), .TE(N74), .CP(clk), 
        .Q(mm[4]), .QN(n109) );
  GTECH_FJK1S mm_tens_reg_2_ ( .J(n81), .K(n81), .TI(N73), .TE(N74), .CP(clk), 
        .Q(mm[6]), .QN(n108) );
  GTECH_FJK1S mm_tens_reg_3_ ( .J(n81), .K(n81), .TI(N75), .TE(N74), .CP(clk), 
        .Q(mm[7]), .QN(n6) );
  GTECH_FJK1S mm_tens_reg_1_ ( .J(n81), .K(n81), .TI(N72), .TE(N74), .CP(clk), 
        .Q(mm[5]), .QN(n7) );
  GTECH_FJK1S hh_tens_reg_0_ ( .J(n81), .K(n81), .TI(N110), .TE(N115), .CP(clk), .Q(hh[4]), .QN(n118) );
  GTECH_FJK1S hh_tens_reg_2_ ( .J(n81), .K(n81), .TI(N114), .TE(N115), .CP(clk), .Q(hh[6]), .QN(n8) );
  GTECH_FJK1S hh_tens_reg_3_ ( .J(n81), .K(n81), .TI(N116), .TE(N115), .CP(clk), .Q(hh[7]), .QN(n9) );
  GTECH_FJK1S hh_ones_reg_0_ ( .J(n81), .K(n81), .TI(N88), .TE(N91), .CP(clk), 
        .Q(hh[0]), .QN(n10) );
  GTECH_FJK1S hh_ones_reg_1_ ( .J(n81), .K(n81), .TI(N89), .TE(N91), .CP(clk), 
        .Q(hh[1]), .QN(n107) );
  GTECH_FJK1S hh_ones_reg_2_ ( .J(n81), .K(n81), .TI(N90), .TE(N91), .CP(clk), 
        .Q(hh[2]), .QN(n106) );
  GTECH_FJK1S hh_ones_reg_3_ ( .J(n81), .K(n81), .TI(N92), .TE(N91), .CP(clk), 
        .Q(hh[3]), .QN(n119) );
  GTECH_FJK1S hh_tens_reg_1_ ( .J(n81), .K(n81), .TI(N112), .TE(N115), .CP(clk), .Q(hh[5]), .QN(n11) );
  GTECH_FJK1S pm_temp_reg ( .J(n81), .K(n81), .TI(N122), .TE(N121), .CP(clk), 
        .Q(pm), .QN(n12) );
  GTECH_ZERO U128 ( .Z(n81) );
  GTECH_AND2 U129 ( .A(n120), .B(n121), .Z(N92) );
  GTECH_XNOR2 U130 ( .A(n119), .B(n122), .Z(n121) );
  GTECH_AND_NOT U131 ( .A(n123), .B(n106), .Z(n122) );
  GTECH_NAND2 U132 ( .A(n124), .B(n125), .Z(N91) );
  GTECH_AND2 U133 ( .A(n126), .B(n120), .Z(N90) );
  GTECH_NOT U134 ( .A(n127), .Z(n120) );
  GTECH_XNOR2 U135 ( .A(n106), .B(n123), .Z(n126) );
  GTECH_NOT U136 ( .A(n128), .Z(n123) );
  GTECH_NAND2 U137 ( .A(n129), .B(n130), .Z(n128) );
  GTECH_OAI21 U138 ( .A(n131), .B(n127), .C(n124), .Z(N89) );
  GTECH_XNOR2 U139 ( .A(n107), .B(n10), .Z(n131) );
  GTECH_OAI2N2 U140 ( .A(n130), .B(n127), .C(n132), .D(n133), .Z(N88) );
  GTECH_NOT U141 ( .A(n134), .Z(n132) );
  GTECH_NAND3 U142 ( .A(n135), .B(n134), .C(n133), .Z(n127) );
  GTECH_MUX2 U143 ( .A(n136), .B(n137), .S(n6), .Z(N75) );
  GTECH_AND2 U144 ( .A(n138), .B(n139), .Z(n137) );
  GTECH_OAI21 U145 ( .A(n140), .B(n139), .C(n141), .Z(n136) );
  GTECH_NOT U146 ( .A(n142), .Z(N73) );
  GTECH_MUX2 U147 ( .A(n141), .B(n143), .S(n108), .Z(n142) );
  GTECH_OR_NOT U148 ( .A(n7), .B(n138), .Z(n143) );
  GTECH_OAI21 U149 ( .A(n7), .B(n109), .C(n144), .Z(n141) );
  GTECH_MUX2 U150 ( .A(N71), .B(n138), .S(n7), .Z(N72) );
  GTECH_NOT U151 ( .A(n145), .Z(n138) );
  GTECH_NAND2 U152 ( .A(n144), .B(n146), .Z(n145) );
  GTECH_NOT U153 ( .A(n147), .Z(N71) );
  GTECH_NAND2 U154 ( .A(n109), .B(n144), .Z(n147) );
  GTECH_NOT U155 ( .A(n140), .Z(n144) );
  GTECH_NAND3 U156 ( .A(n148), .B(n124), .C(n149), .Z(n140) );
  GTECH_OAI2N2 U157 ( .A(n150), .B(n151), .C(n152), .D(n153), .Z(N59) );
  GTECH_MUX2 U158 ( .A(n154), .B(n155), .S(n110), .Z(n151) );
  GTECH_NAND2 U159 ( .A(n156), .B(n154), .Z(n155) );
  GTECH_NOT U160 ( .A(n111), .Z(n154) );
  GTECH_MUX2 U161 ( .A(n152), .B(n157), .S(n111), .Z(N57) );
  GTECH_AND2 U162 ( .A(n158), .B(n156), .Z(n157) );
  GTECH_NOT U163 ( .A(n159), .Z(n156) );
  GTECH_NOT U164 ( .A(n160), .Z(n152) );
  GTECH_NAND2 U165 ( .A(n158), .B(n159), .Z(n160) );
  GTECH_NAND2 U166 ( .A(n161), .B(n162), .Z(n159) );
  GTECH_NOT U167 ( .A(n112), .Z(n161) );
  GTECH_MUX2 U168 ( .A(N55), .B(n163), .S(n112), .Z(N56) );
  GTECH_AND2 U169 ( .A(n158), .B(n162), .Z(n163) );
  GTECH_NOT U170 ( .A(n164), .Z(N55) );
  GTECH_NAND2 U171 ( .A(n5), .B(n158), .Z(n164) );
  GTECH_NOT U172 ( .A(n150), .Z(n158) );
  GTECH_NAND2 U173 ( .A(n165), .B(n166), .Z(n150) );
  GTECH_NOT U174 ( .A(N74), .Z(n166) );
  GTECH_NAND2 U175 ( .A(n124), .B(n167), .Z(N74) );
  GTECH_MUX2 U176 ( .A(n168), .B(n169), .S(ss[7]), .Z(N43) );
  GTECH_OAI21 U177 ( .A(ss[6]), .B(n170), .C(n171), .Z(n169) );
  GTECH_NOT U178 ( .A(n172), .Z(n171) );
  GTECH_AND2 U179 ( .A(n173), .B(ss[6]), .Z(n168) );
  GTECH_MUX2 U180 ( .A(n174), .B(n172), .S(ss[6]), .Z(N41) );
  GTECH_OAI21 U181 ( .A(ss[5]), .B(n170), .C(n175), .Z(n172) );
  GTECH_AND2 U182 ( .A(ss[5]), .B(n173), .Z(n174) );
  GTECH_MUX2 U183 ( .A(n173), .B(N39), .S(ss[5]), .Z(N40) );
  GTECH_NOT U184 ( .A(n176), .Z(n173) );
  GTECH_NAND2 U185 ( .A(n177), .B(ss[4]), .Z(n176) );
  GTECH_NOT U186 ( .A(n175), .Z(N39) );
  GTECH_NAND2 U187 ( .A(n177), .B(n178), .Z(n175) );
  GTECH_NOT U188 ( .A(ss[4]), .Z(n178) );
  GTECH_NOT U189 ( .A(n170), .Z(n177) );
  GTECH_NAND2 U190 ( .A(n179), .B(n180), .Z(n170) );
  GTECH_NOT U191 ( .A(N58), .Z(n180) );
  GTECH_NAND2 U192 ( .A(n124), .B(n181), .Z(N58) );
  GTECH_OAI2N2 U193 ( .A(n182), .B(n183), .C(n184), .D(ss[3]), .Z(N26) );
  GTECH_MUX2 U194 ( .A(n185), .B(n186), .S(ss[2]), .Z(n183) );
  GTECH_NAND2 U195 ( .A(n187), .B(n185), .Z(n186) );
  GTECH_NOT U196 ( .A(ss[3]), .Z(n185) );
  GTECH_NAND2 U197 ( .A(n124), .B(n188), .Z(N25) );
  GTECH_NOT U198 ( .A(ena), .Z(n188) );
  GTECH_MUX2 U199 ( .A(n189), .B(n184), .S(ss[2]), .Z(N24) );
  GTECH_NOT U200 ( .A(n190), .Z(n184) );
  GTECH_NAND2 U201 ( .A(n191), .B(n192), .Z(n190) );
  GTECH_AND2 U202 ( .A(n191), .B(n187), .Z(n189) );
  GTECH_NOT U203 ( .A(n192), .Z(n187) );
  GTECH_NAND2 U204 ( .A(ss[1]), .B(ss[0]), .Z(n192) );
  GTECH_MUX2 U205 ( .A(n193), .B(N22), .S(ss[1]), .Z(N23) );
  GTECH_AND2 U206 ( .A(n191), .B(ss[0]), .Z(n193) );
  GTECH_NOT U207 ( .A(n194), .Z(N22) );
  GTECH_NAND2 U208 ( .A(n191), .B(n195), .Z(n194) );
  GTECH_NOT U209 ( .A(ss[0]), .Z(n195) );
  GTECH_NOT U210 ( .A(n182), .Z(n191) );
  GTECH_NAND2 U211 ( .A(ena), .B(n196), .Z(n182) );
  GTECH_NOT U212 ( .A(N42), .Z(n196) );
  GTECH_NAND2 U213 ( .A(n124), .B(n197), .Z(N42) );
  GTECH_AND2 U214 ( .A(n198), .B(n12), .Z(N122) );
  GTECH_NOT U215 ( .A(n199), .Z(n198) );
  GTECH_NAND2 U216 ( .A(n124), .B(n199), .Z(N121) );
  GTECH_NAND4 U217 ( .A(n200), .B(n9), .C(n133), .D(n201), .Z(n199) );
  GTECH_AND4 U218 ( .A(n8), .B(n119), .C(n11), .D(n202), .Z(n201) );
  GTECH_AND2 U219 ( .A(n203), .B(n204), .Z(N116) );
  GTECH_XNOR2 U220 ( .A(n9), .B(n205), .Z(n204) );
  GTECH_AND_NOT U221 ( .A(n206), .B(n8), .Z(n205) );
  GTECH_NAND3 U222 ( .A(n134), .B(n124), .C(n135), .Z(N115) );
  GTECH_NAND5 U223 ( .A(n9), .B(n8), .C(n119), .D(n11), .E(n207), .Z(n134) );
  GTECH_AND5 U224 ( .A(n129), .B(n202), .C(n208), .D(n106), .E(n10), .Z(n207)
         );
  GTECH_NOT U225 ( .A(n107), .Z(n129) );
  GTECH_AND2 U226 ( .A(n209), .B(n203), .Z(N114) );
  GTECH_XNOR2 U227 ( .A(n8), .B(n206), .Z(n209) );
  GTECH_NOT U228 ( .A(n210), .Z(n206) );
  GTECH_NAND2 U229 ( .A(n202), .B(n211), .Z(n210) );
  GTECH_AND2 U230 ( .A(n203), .B(n212), .Z(N112) );
  GTECH_XNOR2 U231 ( .A(n118), .B(n211), .Z(n212) );
  GTECH_NOT U232 ( .A(n11), .Z(n211) );
  GTECH_NOT U233 ( .A(n213), .Z(n203) );
  GTECH_OAI21 U234 ( .A(n213), .B(n202), .C(n124), .Z(N110) );
  GTECH_NOT U235 ( .A(n118), .Z(n202) );
  GTECH_NAND2 U236 ( .A(n214), .B(n133), .Z(n213) );
  GTECH_NOT U237 ( .A(n125), .Z(n133) );
  GTECH_NAND2 U238 ( .A(n208), .B(n124), .Z(n125) );
  GTECH_NOT U239 ( .A(reset), .Z(n124) );
  GTECH_NOT U240 ( .A(n135), .Z(n214) );
  GTECH_NAND3 U241 ( .A(n208), .B(n215), .C(n200), .Z(n135) );
  GTECH_NOT U242 ( .A(n216), .Z(n200) );
  GTECH_NAND3 U243 ( .A(n106), .B(n130), .C(n107), .Z(n216) );
  GTECH_NOT U244 ( .A(n10), .Z(n130) );
  GTECH_NOT U245 ( .A(n119), .Z(n215) );
  GTECH_NOT U246 ( .A(n148), .Z(n208) );
  GTECH_NAND5 U247 ( .A(n139), .B(n146), .C(n149), .D(n7), .E(n6), .Z(n148) );
  GTECH_NOT U248 ( .A(n167), .Z(n149) );
  GTECH_NAND5 U249 ( .A(n153), .B(n162), .C(n165), .D(n112), .E(n111), .Z(n167) );
  GTECH_NOT U250 ( .A(n181), .Z(n165) );
  GTECH_NAND5 U251 ( .A(n217), .B(n218), .C(n179), .D(ss[6]), .E(ss[4]), .Z(
        n181) );
  GTECH_NOT U252 ( .A(n197), .Z(n179) );
  GTECH_NAND5 U253 ( .A(n219), .B(n220), .C(ena), .D(ss[3]), .E(ss[0]), .Z(
        n197) );
  GTECH_NOT U254 ( .A(ss[2]), .Z(n220) );
  GTECH_NOT U255 ( .A(ss[1]), .Z(n219) );
  GTECH_NOT U256 ( .A(ss[7]), .Z(n218) );
  GTECH_NOT U257 ( .A(ss[5]), .Z(n217) );
  GTECH_NOT U258 ( .A(n5), .Z(n162) );
  GTECH_NOT U259 ( .A(n110), .Z(n153) );
  GTECH_NOT U260 ( .A(n109), .Z(n146) );
  GTECH_NOT U261 ( .A(n108), .Z(n139) );
endmodule

