
module clock_12h ( clk, reset, ena, pm, hh, mm, ss );
  output [7:0] hh;
  output [7:0] mm;
  output [7:0] ss;
  input clk, reset, ena;
  output pm;
  wire   N22, N23, N24, N25, N26, N39, N40, N41, N42, N43, N55, N56, N57, N58,
         N59, N71, N72, N73, N74, N75, N88, N89, N90, N91, N92, N110, N112,
         N114, N115, N116, N121, N122, n4, n5, n6, n7, n8, n9, n10, n11, n106,
         n107, n108, n109, n110, n111, n112, n113, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213;

  GTECH_FJK1S ss_ones_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N22), .TE(N25), .CP(clk), .Q(ss[0]) );
  GTECH_FJK1S ss_ones_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N26), .TE(N25), .CP(clk), .Q(ss[3]) );
  GTECH_FJK1S ss_ones_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N23), .TE(N25), .CP(clk), .Q(ss[1]) );
  GTECH_FJK1S ss_ones_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N24), .TE(N25), .CP(clk), .Q(ss[2]) );
  GTECH_FJK1S ss_tens_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N39), .TE(N42), .CP(clk), .Q(ss[4]) );
  GTECH_FJK1S ss_tens_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N40), .TE(N42), .CP(clk), .Q(ss[5]) );
  GTECH_FJK1S ss_tens_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N41), .TE(N42), .CP(clk), .Q(ss[6]) );
  GTECH_FJK1S ss_tens_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N43), .TE(N42), .CP(clk), .Q(ss[7]) );
  GTECH_FJK1S mm_ones_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N55), .TE(N58), .CP(clk), .Q(mm[0]), .QN(n4) );
  GTECH_FJK1S mm_ones_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N59), .TE(N58), .CP(clk), .Q(mm[3]), .QN(n111) );
  GTECH_FJK1S mm_ones_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N56), .TE(N58), .CP(clk), .Q(mm[1]), .QN(n113) );
  GTECH_FJK1S mm_ones_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N57), .TE(N58), .CP(clk), .Q(mm[2]), .QN(n112) );
  GTECH_FJK1S mm_tens_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N71), .TE(N74), .CP(clk), .Q(mm[4]), .QN(n110) );
  GTECH_FJK1S mm_tens_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N72), .TE(N74), .CP(clk), .Q(mm[5]), .QN(n109) );
  GTECH_FJK1S mm_tens_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N73), .TE(N74), .CP(clk), .Q(mm[6]), .QN(n108) );
  GTECH_FJK1S mm_tens_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N75), .TE(N74), .CP(clk), .Q(mm[7]), .QN(n5) );
  GTECH_FJK1S hh_tens_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N110), .TE(N115), .CP(
        clk), .Q(hh[4]), .QN(n120) );
  GTECH_FJK1S hh_tens_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N112), .TE(N115), .CP(
        clk), .Q(hh[5]), .QN(n6) );
  GTECH_FJK1S hh_tens_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N114), .TE(N115), .CP(
        clk), .Q(hh[6]), .QN(n7) );
  GTECH_FJK1S hh_tens_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N116), .TE(N115), .CP(
        clk), .Q(hh[7]), .QN(n8) );
  GTECH_FJK1S hh_ones_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N88), .TE(N91), .CP(clk), .Q(hh[0]), .QN(n107) );
  GTECH_FJK1S hh_ones_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N89), .TE(N91), .CP(clk), .Q(hh[1]), .QN(n9) );
  GTECH_FJK1S hh_ones_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N90), .TE(N91), .CP(clk), .Q(hh[2]), .QN(n106) );
  GTECH_FJK1S hh_ones_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N92), .TE(N91), .CP(clk), .Q(hh[3]), .QN(n10) );
  GTECH_FJK1S pm_temp_reg ( .J(1'b0), .K(1'b0), .TI(N122), .TE(N121), .CP(clk), 
        .Q(pm), .QN(n11) );
  GTECH_AND2 U129 ( .A(n121), .B(n122), .Z(N92) );
  GTECH_XOR2 U130 ( .A(n123), .B(n10), .Z(n121) );
  GTECH_OR2 U131 ( .A(n106), .B(n124), .Z(n123) );
  GTECH_NAND2 U132 ( .A(n125), .B(n126), .Z(N91) );
  GTECH_AND2 U133 ( .A(n127), .B(n122), .Z(N90) );
  GTECH_NOT U134 ( .A(n128), .Z(n122) );
  GTECH_XOR2 U135 ( .A(n124), .B(n106), .Z(n127) );
  GTECH_NAND2 U136 ( .A(n129), .B(n130), .Z(n124) );
  GTECH_OAI21 U137 ( .A(n131), .B(n128), .C(n125), .Z(N89) );
  GTECH_XOR2 U138 ( .A(n130), .B(n9), .Z(n131) );
  GTECH_OAI22 U139 ( .A(n126), .B(n132), .C(n130), .D(n128), .Z(N88) );
  GTECH_NAND3 U140 ( .A(n132), .B(n133), .C(n134), .Z(n128) );
  GTECH_OAI21 U141 ( .A(n5), .B(n135), .C(n136), .Z(N75) );
  GTECH_NAND3 U142 ( .A(n137), .B(n138), .C(n5), .Z(n136) );
  GTECH_OA21 U143 ( .A(n139), .B(n138), .C(n140), .Z(n135) );
  GTECH_OAI21 U144 ( .A(n108), .B(n140), .C(n141), .Z(N73) );
  GTECH_NAND3 U145 ( .A(n137), .B(n142), .C(n108), .Z(n141) );
  GTECH_NOT U146 ( .A(n143), .Z(n137) );
  GTECH_OAI21 U147 ( .A(n110), .B(n109), .C(n144), .Z(n140) );
  GTECH_OAI22 U148 ( .A(n142), .B(n143), .C(n109), .D(n145), .Z(N72) );
  GTECH_NAND2 U149 ( .A(n144), .B(n146), .Z(n143) );
  GTECH_NOT U150 ( .A(n109), .Z(n142) );
  GTECH_NOT U151 ( .A(n145), .Z(N71) );
  GTECH_NAND2 U152 ( .A(n110), .B(n144), .Z(n145) );
  GTECH_NOT U153 ( .A(n139), .Z(n144) );
  GTECH_NAND3 U154 ( .A(n147), .B(n125), .C(n148), .Z(n139) );
  GTECH_OAI22 U155 ( .A(n149), .B(n150), .C(n111), .D(n151), .Z(N59) );
  GTECH_OA21 U156 ( .A(n152), .B(n153), .C(n154), .Z(n151) );
  GTECH_NAND2 U157 ( .A(n153), .B(n111), .Z(n150) );
  GTECH_OAI22 U158 ( .A(n112), .B(n154), .C(n153), .D(n149), .Z(N57) );
  GTECH_NAND3 U159 ( .A(n155), .B(n156), .C(n157), .Z(n149) );
  GTECH_NOT U160 ( .A(n112), .Z(n153) );
  GTECH_NOT U161 ( .A(n158), .Z(n154) );
  GTECH_OAI21 U162 ( .A(n155), .B(n152), .C(n159), .Z(n158) );
  GTECH_NOT U163 ( .A(n113), .Z(n155) );
  GTECH_OAI21 U164 ( .A(n113), .B(n159), .C(n160), .Z(N56) );
  GTECH_NAND3 U165 ( .A(n157), .B(n156), .C(n113), .Z(n160) );
  GTECH_NOT U166 ( .A(n159), .Z(N55) );
  GTECH_NAND2 U167 ( .A(n4), .B(n157), .Z(n159) );
  GTECH_NOT U168 ( .A(n152), .Z(n157) );
  GTECH_NAND2 U169 ( .A(n161), .B(n162), .Z(n152) );
  GTECH_NOT U170 ( .A(N74), .Z(n162) );
  GTECH_NAND2 U171 ( .A(n125), .B(n163), .Z(N74) );
  GTECH_OAI21 U172 ( .A(n164), .B(n165), .C(n166), .Z(N43) );
  GTECH_NAND3 U173 ( .A(n167), .B(ss[6]), .C(n165), .Z(n166) );
  GTECH_OA21 U174 ( .A(ss[6]), .B(n168), .C(n169), .Z(n164) );
  GTECH_OAI21 U175 ( .A(n169), .B(n170), .C(n171), .Z(N41) );
  GTECH_NAND3 U176 ( .A(ss[5]), .B(n167), .C(n170), .Z(n171) );
  GTECH_NOT U177 ( .A(n172), .Z(n167) );
  GTECH_NOT U178 ( .A(ss[6]), .Z(n170) );
  GTECH_NOT U179 ( .A(n173), .Z(n169) );
  GTECH_OAI21 U180 ( .A(ss[5]), .B(n168), .C(n174), .Z(n173) );
  GTECH_OAI22 U181 ( .A(n175), .B(n174), .C(ss[5]), .D(n172), .Z(N40) );
  GTECH_NAND2 U182 ( .A(n176), .B(ss[4]), .Z(n172) );
  GTECH_NOT U183 ( .A(n174), .Z(N39) );
  GTECH_NAND2 U184 ( .A(n176), .B(n177), .Z(n174) );
  GTECH_NOT U185 ( .A(ss[4]), .Z(n177) );
  GTECH_NOT U186 ( .A(n168), .Z(n176) );
  GTECH_NAND2 U187 ( .A(n178), .B(n179), .Z(n168) );
  GTECH_NOT U188 ( .A(N58), .Z(n179) );
  GTECH_NAND2 U189 ( .A(n125), .B(n180), .Z(N58) );
  GTECH_OAI2N2 U190 ( .A(n181), .B(n182), .C(n183), .D(ss[2]), .Z(N26) );
  GTECH_AND_NOT U191 ( .A(n182), .B(n184), .Z(n183) );
  GTECH_NOT U192 ( .A(ss[3]), .Z(n182) );
  GTECH_OA21 U193 ( .A(n185), .B(ss[2]), .C(n186), .Z(n181) );
  GTECH_NAND2 U194 ( .A(n125), .B(n187), .Z(N25) );
  GTECH_NOT U195 ( .A(ena), .Z(n187) );
  GTECH_OAI22 U196 ( .A(n186), .B(n188), .C(ss[2]), .D(n184), .Z(N24) );
  GTECH_NAND3 U197 ( .A(n189), .B(ss[0]), .C(ss[1]), .Z(n184) );
  GTECH_NOT U198 ( .A(n190), .Z(n186) );
  GTECH_OAI21 U199 ( .A(ss[1]), .B(n185), .C(n191), .Z(n190) );
  GTECH_OAI21 U200 ( .A(n192), .B(n191), .C(n193), .Z(N23) );
  GTECH_NAND3 U201 ( .A(n189), .B(ss[0]), .C(n192), .Z(n193) );
  GTECH_NOT U202 ( .A(n191), .Z(N22) );
  GTECH_NAND2 U203 ( .A(n189), .B(n194), .Z(n191) );
  GTECH_NOT U204 ( .A(ss[0]), .Z(n194) );
  GTECH_NOT U205 ( .A(n185), .Z(n189) );
  GTECH_NAND2 U206 ( .A(ena), .B(n195), .Z(n185) );
  GTECH_NOT U207 ( .A(N42), .Z(n195) );
  GTECH_NAND2 U208 ( .A(n125), .B(n196), .Z(N42) );
  GTECH_AND2 U209 ( .A(n197), .B(n11), .Z(N122) );
  GTECH_NOT U210 ( .A(n198), .Z(n197) );
  GTECH_NAND2 U211 ( .A(n125), .B(n198), .Z(N121) );
  GTECH_NAND5 U212 ( .A(n134), .B(n8), .C(n7), .D(n6), .E(n199), .Z(n198) );
  GTECH_AND5 U213 ( .A(n130), .B(n200), .C(n106), .D(n10), .E(n9), .Z(n199) );
  GTECH_AND2 U214 ( .A(n201), .B(n202), .Z(N116) );
  GTECH_XOR2 U215 ( .A(n203), .B(n8), .Z(n201) );
  GTECH_OR2 U216 ( .A(n7), .B(n204), .Z(n203) );
  GTECH_NAND3 U217 ( .A(n133), .B(n125), .C(n132), .Z(N115) );
  GTECH_NAND5 U218 ( .A(n8), .B(n7), .C(n6), .D(n107), .E(n205), .Z(n132) );
  GTECH_AND5 U219 ( .A(n200), .B(n129), .C(n206), .D(n10), .E(n106), .Z(n205)
         );
  GTECH_NOT U220 ( .A(n9), .Z(n129) );
  GTECH_AND2 U221 ( .A(n207), .B(n202), .Z(N114) );
  GTECH_XOR2 U222 ( .A(n204), .B(n7), .Z(n207) );
  GTECH_NAND2 U223 ( .A(n208), .B(n200), .Z(n204) );
  GTECH_NOT U224 ( .A(n6), .Z(n208) );
  GTECH_AND2 U225 ( .A(n202), .B(n209), .Z(N112) );
  GTECH_XOR2 U226 ( .A(n6), .B(n120), .Z(n209) );
  GTECH_NOT U227 ( .A(n210), .Z(n202) );
  GTECH_OAI21 U228 ( .A(n210), .B(n200), .C(n125), .Z(N110) );
  GTECH_NOT U229 ( .A(n120), .Z(n200) );
  GTECH_NAND2 U230 ( .A(n211), .B(n134), .Z(n210) );
  GTECH_NOT U231 ( .A(n126), .Z(n134) );
  GTECH_NAND2 U232 ( .A(n206), .B(n125), .Z(n126) );
  GTECH_NOT U233 ( .A(reset), .Z(n125) );
  GTECH_NOT U234 ( .A(n133), .Z(n211) );
  GTECH_NAND5 U235 ( .A(n212), .B(n130), .C(n206), .D(n9), .E(n106), .Z(n133)
         );
  GTECH_NOT U236 ( .A(n147), .Z(n206) );
  GTECH_NAND5 U237 ( .A(n138), .B(n146), .C(n148), .D(n5), .E(n109), .Z(n147)
         );
  GTECH_NOT U238 ( .A(n163), .Z(n148) );
  GTECH_NAND5 U239 ( .A(n213), .B(n156), .C(n161), .D(n113), .E(n112), .Z(n163) );
  GTECH_NOT U240 ( .A(n180), .Z(n161) );
  GTECH_NAND5 U241 ( .A(n175), .B(n165), .C(n178), .D(ss[6]), .E(ss[4]), .Z(
        n180) );
  GTECH_NOT U242 ( .A(n196), .Z(n178) );
  GTECH_NAND5 U243 ( .A(n192), .B(n188), .C(ena), .D(ss[3]), .E(ss[0]), .Z(
        n196) );
  GTECH_NOT U244 ( .A(ss[2]), .Z(n188) );
  GTECH_NOT U245 ( .A(ss[1]), .Z(n192) );
  GTECH_NOT U246 ( .A(ss[7]), .Z(n165) );
  GTECH_NOT U247 ( .A(ss[5]), .Z(n175) );
  GTECH_NOT U248 ( .A(n4), .Z(n156) );
  GTECH_NOT U249 ( .A(n111), .Z(n213) );
  GTECH_NOT U250 ( .A(n110), .Z(n146) );
  GTECH_NOT U251 ( .A(n108), .Z(n138) );
  GTECH_NOT U252 ( .A(n107), .Z(n130) );
  GTECH_NOT U253 ( .A(n10), .Z(n212) );
endmodule

