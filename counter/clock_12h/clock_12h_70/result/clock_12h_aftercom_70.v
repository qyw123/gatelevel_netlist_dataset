
module clock_12h ( clk, reset, ena, pm, hh, mm, ss );
  output [7:0] hh;
  output [7:0] mm;
  output [7:0] ss;
  input clk, reset, ena;
  output pm;
  wire   N22, N23, N24, N25, N26, N39, N40, N41, N42, N43, N55, N56, N57, N58,
         N59, N71, N72, N73, N74, N75, N88, N89, N90, N91, N92, N110, N112,
         N114, N115, N116, N121, N122, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n81, n106, n107, n108, n109, n110, n111, n112, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n212, n213;

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
        .Q(mm[4]), .QN(n6) );
  GTECH_FJK1S mm_tens_reg_2_ ( .J(n81), .K(n81), .TI(N73), .TE(N74), .CP(clk), 
        .Q(mm[6]), .QN(n109) );
  GTECH_FJK1S mm_tens_reg_3_ ( .J(n81), .K(n81), .TI(N75), .TE(N74), .CP(clk), 
        .Q(mm[7]), .QN(n108) );
  GTECH_FJK1S mm_tens_reg_1_ ( .J(n81), .K(n81), .TI(N72), .TE(N74), .CP(clk), 
        .Q(mm[5]), .QN(n7) );
  GTECH_FJK1S hh_tens_reg_0_ ( .J(n81), .K(n81), .TI(N110), .TE(N115), .CP(clk), .Q(hh[4]), .QN(n118) );
  GTECH_FJK1S hh_tens_reg_1_ ( .J(n81), .K(n81), .TI(N112), .TE(N115), .CP(clk), .Q(hh[5]), .QN(n8) );
  GTECH_FJK1S hh_tens_reg_2_ ( .J(n81), .K(n81), .TI(N114), .TE(N115), .CP(clk), .Q(hh[6]), .QN(n9) );
  GTECH_FJK1S hh_tens_reg_3_ ( .J(n81), .K(n81), .TI(N116), .TE(N115), .CP(clk), .Q(hh[7]), .QN(n10) );
  GTECH_FJK1S hh_ones_reg_0_ ( .J(n81), .K(n81), .TI(N88), .TE(N91), .CP(clk), 
        .Q(hh[0]), .QN(n107) );
  GTECH_FJK1S hh_ones_reg_1_ ( .J(n81), .K(n81), .TI(N89), .TE(N91), .CP(clk), 
        .Q(hh[1]), .QN(n11) );
  GTECH_FJK1S hh_ones_reg_2_ ( .J(n81), .K(n81), .TI(N90), .TE(N91), .CP(clk), 
        .Q(hh[2]), .QN(n106) );
  GTECH_FJK1S hh_ones_reg_3_ ( .J(n81), .K(n81), .TI(N92), .TE(N91), .CP(clk), 
        .Q(hh[3]), .QN(n12) );
  GTECH_FJK1S pm_temp_reg ( .J(n81), .K(n81), .TI(N122), .TE(N121), .CP(clk), 
        .Q(pm), .QN(n13) );
  GTECH_ZERO U127 ( .Z(n81) );
  GTECH_AND2 U128 ( .A(n119), .B(n120), .Z(N92) );
  GTECH_XOR2 U129 ( .A(n121), .B(n12), .Z(n119) );
  GTECH_OR2 U130 ( .A(n106), .B(n122), .Z(n121) );
  GTECH_NAND2 U131 ( .A(n123), .B(n124), .Z(N91) );
  GTECH_AND2 U132 ( .A(n125), .B(n120), .Z(N90) );
  GTECH_NOT U133 ( .A(n126), .Z(n120) );
  GTECH_XOR2 U134 ( .A(n122), .B(n106), .Z(n125) );
  GTECH_NAND2 U135 ( .A(n127), .B(n128), .Z(n122) );
  GTECH_OAI21 U136 ( .A(n129), .B(n126), .C(n123), .Z(N89) );
  GTECH_XOR2 U137 ( .A(n128), .B(n11), .Z(n129) );
  GTECH_OAI22 U138 ( .A(n124), .B(n130), .C(n128), .D(n126), .Z(N88) );
  GTECH_NAND3 U139 ( .A(n130), .B(n131), .C(n132), .Z(n126) );
  GTECH_MUX2 U140 ( .A(n133), .B(n134), .S(n108), .Z(N75) );
  GTECH_AND2 U141 ( .A(n135), .B(n136), .Z(n134) );
  GTECH_OAI21 U142 ( .A(n137), .B(n136), .C(n138), .Z(n133) );
  GTECH_NOT U143 ( .A(n139), .Z(N73) );
  GTECH_MUX2 U144 ( .A(n138), .B(n140), .S(n109), .Z(n139) );
  GTECH_OR2 U145 ( .A(n7), .B(n141), .Z(n140) );
  GTECH_OAI21 U146 ( .A(n7), .B(n6), .C(n142), .Z(n138) );
  GTECH_MUX2 U147 ( .A(N71), .B(n135), .S(n7), .Z(N72) );
  GTECH_NOT U148 ( .A(n141), .Z(n135) );
  GTECH_NAND2 U149 ( .A(n142), .B(n143), .Z(n141) );
  GTECH_NOT U150 ( .A(n144), .Z(N71) );
  GTECH_NAND2 U151 ( .A(n6), .B(n142), .Z(n144) );
  GTECH_NOT U152 ( .A(n137), .Z(n142) );
  GTECH_NAND3 U153 ( .A(n145), .B(n123), .C(n146), .Z(n137) );
  GTECH_MUX2 U154 ( .A(n147), .B(n148), .S(n110), .Z(N59) );
  GTECH_AND2 U155 ( .A(n149), .B(n150), .Z(n148) );
  GTECH_OAI21 U156 ( .A(n150), .B(n151), .C(n152), .Z(n147) );
  GTECH_NOT U157 ( .A(n153), .Z(n152) );
  GTECH_NOT U158 ( .A(n111), .Z(n150) );
  GTECH_MUX2 U159 ( .A(n153), .B(n149), .S(n111), .Z(N57) );
  GTECH_NOT U160 ( .A(n154), .Z(n149) );
  GTECH_NAND3 U161 ( .A(n155), .B(n156), .C(n157), .Z(n154) );
  GTECH_OAI21 U162 ( .A(n155), .B(n151), .C(n158), .Z(n153) );
  GTECH_NOT U163 ( .A(n112), .Z(n155) );
  GTECH_MUX2 U164 ( .A(N55), .B(n159), .S(n112), .Z(N56) );
  GTECH_AND2 U165 ( .A(n157), .B(n156), .Z(n159) );
  GTECH_NOT U166 ( .A(n158), .Z(N55) );
  GTECH_NAND2 U167 ( .A(n5), .B(n157), .Z(n158) );
  GTECH_NOT U168 ( .A(n151), .Z(n157) );
  GTECH_NAND2 U169 ( .A(n160), .B(n161), .Z(n151) );
  GTECH_NOT U170 ( .A(N74), .Z(n161) );
  GTECH_NAND2 U171 ( .A(n123), .B(n162), .Z(N74) );
  GTECH_MUX2 U172 ( .A(n163), .B(n164), .S(ss[7]), .Z(N43) );
  GTECH_OAI21 U173 ( .A(ss[6]), .B(n165), .C(n166), .Z(n164) );
  GTECH_NOT U174 ( .A(n167), .Z(n166) );
  GTECH_AND2 U175 ( .A(n168), .B(ss[6]), .Z(n163) );
  GTECH_MUX2 U176 ( .A(n169), .B(n167), .S(ss[6]), .Z(N41) );
  GTECH_OAI21 U177 ( .A(ss[5]), .B(n165), .C(n170), .Z(n167) );
  GTECH_AND2 U178 ( .A(ss[5]), .B(n168), .Z(n169) );
  GTECH_MUX2 U179 ( .A(n168), .B(N39), .S(ss[5]), .Z(N40) );
  GTECH_NOT U180 ( .A(n171), .Z(n168) );
  GTECH_NAND2 U181 ( .A(n172), .B(ss[4]), .Z(n171) );
  GTECH_NOT U182 ( .A(n170), .Z(N39) );
  GTECH_NAND2 U183 ( .A(n172), .B(n173), .Z(n170) );
  GTECH_NOT U184 ( .A(ss[4]), .Z(n173) );
  GTECH_NOT U185 ( .A(n165), .Z(n172) );
  GTECH_NAND2 U186 ( .A(n174), .B(n175), .Z(n165) );
  GTECH_NOT U187 ( .A(N58), .Z(n175) );
  GTECH_NAND2 U188 ( .A(n123), .B(n176), .Z(N58) );
  GTECH_MUX2 U189 ( .A(n177), .B(n178), .S(ss[3]), .Z(N26) );
  GTECH_OAI21 U190 ( .A(ss[2]), .B(n179), .C(n180), .Z(n178) );
  GTECH_NOT U191 ( .A(n181), .Z(n180) );
  GTECH_AND2 U192 ( .A(ss[2]), .B(n182), .Z(n177) );
  GTECH_NAND2 U193 ( .A(n123), .B(n183), .Z(N25) );
  GTECH_NOT U194 ( .A(ena), .Z(n183) );
  GTECH_MUX2 U195 ( .A(n182), .B(n181), .S(ss[2]), .Z(N24) );
  GTECH_OAI21 U196 ( .A(ss[1]), .B(n179), .C(n184), .Z(n181) );
  GTECH_NOT U197 ( .A(n185), .Z(n182) );
  GTECH_NAND3 U198 ( .A(n186), .B(ss[0]), .C(ss[1]), .Z(n185) );
  GTECH_MUX2 U199 ( .A(n187), .B(N22), .S(ss[1]), .Z(N23) );
  GTECH_AND2 U200 ( .A(n186), .B(ss[0]), .Z(n187) );
  GTECH_NOT U201 ( .A(n184), .Z(N22) );
  GTECH_NAND2 U202 ( .A(n186), .B(n188), .Z(n184) );
  GTECH_NOT U203 ( .A(ss[0]), .Z(n188) );
  GTECH_NOT U204 ( .A(n179), .Z(n186) );
  GTECH_NAND2 U205 ( .A(ena), .B(n189), .Z(n179) );
  GTECH_NOT U206 ( .A(N42), .Z(n189) );
  GTECH_NAND2 U207 ( .A(n123), .B(n190), .Z(N42) );
  GTECH_AND2 U208 ( .A(n191), .B(n13), .Z(N122) );
  GTECH_NOT U209 ( .A(n192), .Z(n191) );
  GTECH_NAND2 U210 ( .A(n123), .B(n192), .Z(N121) );
  GTECH_NAND5 U211 ( .A(n132), .B(n9), .C(n8), .D(n12), .E(n193), .Z(n192) );
  GTECH_NOR5 U212 ( .A(n127), .B(n194), .C(n195), .D(n118), .E(n107), .Z(n193)
         );
  GTECH_NOT U213 ( .A(n11), .Z(n127) );
  GTECH_AND2 U214 ( .A(n196), .B(n197), .Z(N116) );
  GTECH_XOR2 U215 ( .A(n198), .B(n10), .Z(n196) );
  GTECH_OR2 U216 ( .A(n9), .B(n199), .Z(n198) );
  GTECH_NAND3 U217 ( .A(n131), .B(n123), .C(n130), .Z(N115) );
  GTECH_NAND5 U218 ( .A(n9), .B(n8), .C(n12), .D(n107), .E(n200), .Z(n130) );
  GTECH_NOR5 U219 ( .A(n195), .B(n194), .C(n145), .D(n118), .E(n11), .Z(n200)
         );
  GTECH_NOT U220 ( .A(n10), .Z(n194) );
  GTECH_NOT U221 ( .A(n106), .Z(n195) );
  GTECH_AND2 U222 ( .A(n201), .B(n197), .Z(N114) );
  GTECH_XOR2 U223 ( .A(n199), .B(n9), .Z(n201) );
  GTECH_NAND2 U224 ( .A(n202), .B(n203), .Z(n199) );
  GTECH_NOT U225 ( .A(n8), .Z(n202) );
  GTECH_AND2 U226 ( .A(n197), .B(n204), .Z(N112) );
  GTECH_XOR2 U227 ( .A(n8), .B(n118), .Z(n204) );
  GTECH_NOT U228 ( .A(n205), .Z(n197) );
  GTECH_OAI21 U229 ( .A(n205), .B(n203), .C(n123), .Z(N110) );
  GTECH_NOT U230 ( .A(n118), .Z(n203) );
  GTECH_NAND2 U231 ( .A(n206), .B(n132), .Z(n205) );
  GTECH_NOT U232 ( .A(n124), .Z(n132) );
  GTECH_NAND2 U233 ( .A(n207), .B(n123), .Z(n124) );
  GTECH_NOT U234 ( .A(reset), .Z(n123) );
  GTECH_NOT U235 ( .A(n131), .Z(n206) );
  GTECH_NAND5 U236 ( .A(n128), .B(n208), .C(n207), .D(n11), .E(n106), .Z(n131)
         );
  GTECH_NOT U237 ( .A(n145), .Z(n207) );
  GTECH_NAND5 U238 ( .A(n136), .B(n143), .C(n146), .D(n7), .E(n108), .Z(n145)
         );
  GTECH_NOT U239 ( .A(n162), .Z(n146) );
  GTECH_NAND5 U240 ( .A(n209), .B(n156), .C(n160), .D(n112), .E(n111), .Z(n162) );
  GTECH_NOT U241 ( .A(n176), .Z(n160) );
  GTECH_NAND5 U242 ( .A(n210), .B(n211), .C(n174), .D(ss[6]), .E(ss[4]), .Z(
        n176) );
  GTECH_NOT U243 ( .A(n190), .Z(n174) );
  GTECH_NAND5 U244 ( .A(n212), .B(n213), .C(ena), .D(ss[3]), .E(ss[0]), .Z(
        n190) );
  GTECH_NOT U245 ( .A(ss[2]), .Z(n213) );
  GTECH_NOT U246 ( .A(ss[1]), .Z(n212) );
  GTECH_NOT U247 ( .A(ss[7]), .Z(n211) );
  GTECH_NOT U248 ( .A(ss[5]), .Z(n210) );
  GTECH_NOT U249 ( .A(n5), .Z(n156) );
  GTECH_NOT U250 ( .A(n110), .Z(n209) );
  GTECH_NOT U251 ( .A(n6), .Z(n143) );
  GTECH_NOT U252 ( .A(n109), .Z(n136) );
  GTECH_NOT U253 ( .A(n12), .Z(n208) );
  GTECH_NOT U254 ( .A(n107), .Z(n128) );
endmodule

