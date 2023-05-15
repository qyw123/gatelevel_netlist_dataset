
module clock_12h ( clk, reset, ena, pm, hh, mm, ss );
  output [7:0] hh;
  output [7:0] mm;
  output [7:0] ss;
  input clk, reset, ena;
  output pm;
  wire   N22, N23, N24, N25, N26, N39, N40, N41, N42, N43, N55, N56, N57, N58,
         N59, N71, N72, N73, N74, N75, N88, N89, N90, N91, N92, N110, N112,
         N114, N115, N116, N121, N122, n4, n5, n6, n7, n8, n9, n10, n11, n79,
         n104, n105, n106, n107, n108, n109, n110, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213;

  GTECH_FJK1S ss_ones_reg_0_ ( .J(n79), .K(n79), .TI(N22), .TE(N25), .CP(clk), 
        .Q(ss[0]) );
  GTECH_FJK1S ss_ones_reg_3_ ( .J(n79), .K(n79), .TI(N26), .TE(N25), .CP(clk), 
        .Q(ss[3]) );
  GTECH_FJK1S ss_ones_reg_1_ ( .J(n79), .K(n79), .TI(N23), .TE(N25), .CP(clk), 
        .Q(ss[1]) );
  GTECH_FJK1S ss_ones_reg_2_ ( .J(n79), .K(n79), .TI(N24), .TE(N25), .CP(clk), 
        .Q(ss[2]) );
  GTECH_FJK1S ss_tens_reg_0_ ( .J(n79), .K(n79), .TI(N39), .TE(N42), .CP(clk), 
        .Q(ss[4]) );
  GTECH_FJK1S ss_tens_reg_1_ ( .J(n79), .K(n79), .TI(N40), .TE(N42), .CP(clk), 
        .Q(ss[5]) );
  GTECH_FJK1S ss_tens_reg_2_ ( .J(n79), .K(n79), .TI(N41), .TE(N42), .CP(clk), 
        .Q(ss[6]) );
  GTECH_FJK1S ss_tens_reg_3_ ( .J(n79), .K(n79), .TI(N43), .TE(N42), .CP(clk), 
        .Q(ss[7]) );
  GTECH_FJK1S mm_ones_reg_0_ ( .J(n79), .K(n79), .TI(N55), .TE(N58), .CP(clk), 
        .Q(mm[0]), .QN(n4) );
  GTECH_FJK1S mm_ones_reg_3_ ( .J(n79), .K(n79), .TI(N59), .TE(N58), .CP(clk), 
        .Q(mm[3]), .QN(n108) );
  GTECH_FJK1S mm_ones_reg_1_ ( .J(n79), .K(n79), .TI(N56), .TE(N58), .CP(clk), 
        .Q(mm[1]), .QN(n110) );
  GTECH_FJK1S mm_ones_reg_2_ ( .J(n79), .K(n79), .TI(N57), .TE(N58), .CP(clk), 
        .Q(mm[2]), .QN(n109) );
  GTECH_FJK1S mm_tens_reg_0_ ( .J(n79), .K(n79), .TI(N71), .TE(N74), .CP(clk), 
        .Q(mm[4]), .QN(n107) );
  GTECH_FJK1S mm_tens_reg_1_ ( .J(n79), .K(n79), .TI(N72), .TE(N74), .CP(clk), 
        .Q(mm[5]), .QN(n106) );
  GTECH_FJK1S mm_tens_reg_2_ ( .J(n79), .K(n79), .TI(N73), .TE(N74), .CP(clk), 
        .Q(mm[6]), .QN(n105) );
  GTECH_FJK1S mm_tens_reg_3_ ( .J(n79), .K(n79), .TI(N75), .TE(N74), .CP(clk), 
        .Q(mm[7]), .QN(n5) );
  GTECH_FJK1S hh_tens_reg_0_ ( .J(n79), .K(n79), .TI(N110), .TE(N115), .CP(clk), .Q(hh[4]), .QN(n117) );
  GTECH_FJK1S hh_tens_reg_2_ ( .J(n79), .K(n79), .TI(N114), .TE(N115), .CP(clk), .Q(hh[6]), .QN(n6) );
  GTECH_FJK1S hh_tens_reg_3_ ( .J(n79), .K(n79), .TI(N116), .TE(N115), .CP(clk), .Q(hh[7]), .QN(n7) );
  GTECH_FJK1S hh_ones_reg_0_ ( .J(n79), .K(n79), .TI(N88), .TE(N91), .CP(clk), 
        .Q(hh[0]), .QN(n104) );
  GTECH_FJK1S hh_ones_reg_1_ ( .J(n79), .K(n79), .TI(N89), .TE(N91), .CP(clk), 
        .Q(hh[1]), .QN(n8) );
  GTECH_FJK1S hh_ones_reg_2_ ( .J(n79), .K(n79), .TI(N90), .TE(N91), .CP(clk), 
        .Q(hh[2]), .QN(n118) );
  GTECH_FJK1S hh_ones_reg_3_ ( .J(n79), .K(n79), .TI(N92), .TE(N91), .CP(clk), 
        .Q(hh[3]), .QN(n9) );
  GTECH_FJK1S hh_tens_reg_1_ ( .J(n79), .K(n79), .TI(N112), .TE(N115), .CP(clk), .Q(hh[5]), .QN(n10) );
  GTECH_FJK1S pm_temp_reg ( .J(n79), .K(n79), .TI(N122), .TE(N121), .CP(clk), 
        .Q(pm), .QN(n11) );
  GTECH_ZERO U127 ( .Z(n79) );
  GTECH_AND2 U128 ( .A(n119), .B(n120), .Z(N92) );
  GTECH_XOR2 U129 ( .A(n121), .B(n9), .Z(n119) );
  GTECH_OR2 U130 ( .A(n118), .B(n122), .Z(n121) );
  GTECH_NAND2 U131 ( .A(n123), .B(n124), .Z(N91) );
  GTECH_AND2 U132 ( .A(n125), .B(n120), .Z(N90) );
  GTECH_NOT U133 ( .A(n126), .Z(n120) );
  GTECH_XOR2 U134 ( .A(n122), .B(n118), .Z(n125) );
  GTECH_NAND2 U135 ( .A(n127), .B(n128), .Z(n122) );
  GTECH_OAI21 U136 ( .A(n129), .B(n126), .C(n123), .Z(N89) );
  GTECH_OA21 U137 ( .A(n8), .B(n128), .C(n130), .Z(n129) );
  GTECH_OAI2N2 U138 ( .A(n128), .B(n126), .C(n131), .D(n132), .Z(N88) );
  GTECH_OR3 U139 ( .A(n133), .B(n131), .C(n124), .Z(n126) );
  GTECH_OAI2N2 U140 ( .A(n134), .B(n135), .C(n136), .D(n137), .Z(N75) );
  GTECH_OA21 U141 ( .A(n5), .B(n138), .C(n139), .Z(n134) );
  GTECH_NOT U142 ( .A(n105), .Z(n138) );
  GTECH_MUX2 U143 ( .A(n136), .B(n140), .S(n105), .Z(N73) );
  GTECH_AND3 U144 ( .A(n141), .B(n142), .C(n143), .Z(n140) );
  GTECH_NOT U145 ( .A(n144), .Z(n136) );
  GTECH_OAI21 U146 ( .A(n107), .B(n106), .C(n143), .Z(n144) );
  GTECH_MUX2 U147 ( .A(N71), .B(n145), .S(n106), .Z(N72) );
  GTECH_AND2 U148 ( .A(n143), .B(n142), .Z(n145) );
  GTECH_NOT U149 ( .A(n107), .Z(n142) );
  GTECH_NOT U150 ( .A(n146), .Z(N71) );
  GTECH_NAND2 U151 ( .A(n107), .B(n143), .Z(n146) );
  GTECH_NOT U152 ( .A(n135), .Z(n143) );
  GTECH_OR3 U153 ( .A(reset), .B(n147), .C(n148), .Z(n135) );
  GTECH_MUX2 U154 ( .A(n149), .B(n150), .S(n108), .Z(N59) );
  GTECH_AND2 U155 ( .A(n151), .B(n152), .Z(n150) );
  GTECH_OAI21 U156 ( .A(n152), .B(n153), .C(n154), .Z(n149) );
  GTECH_NOT U157 ( .A(n155), .Z(n154) );
  GTECH_NOT U158 ( .A(n109), .Z(n152) );
  GTECH_MUX2 U159 ( .A(n155), .B(n151), .S(n109), .Z(N57) );
  GTECH_NOT U160 ( .A(n156), .Z(n151) );
  GTECH_OR3 U161 ( .A(n4), .B(n110), .C(n153), .Z(n156) );
  GTECH_OAI21 U162 ( .A(n157), .B(n153), .C(n158), .Z(n155) );
  GTECH_NOT U163 ( .A(n110), .Z(n157) );
  GTECH_MUX2 U164 ( .A(N55), .B(n159), .S(n110), .Z(N56) );
  GTECH_AND2 U165 ( .A(n160), .B(n161), .Z(n159) );
  GTECH_NOT U166 ( .A(n158), .Z(N55) );
  GTECH_NAND2 U167 ( .A(n4), .B(n160), .Z(n158) );
  GTECH_NOT U168 ( .A(n153), .Z(n160) );
  GTECH_NAND2 U169 ( .A(n162), .B(n163), .Z(n153) );
  GTECH_NOT U170 ( .A(N74), .Z(n163) );
  GTECH_NAND2 U171 ( .A(n123), .B(n148), .Z(N74) );
  GTECH_OAI2N2 U172 ( .A(n164), .B(n165), .C(ss[7]), .D(n166), .Z(N43) );
  GTECH_OA21 U173 ( .A(ss[6]), .B(n167), .C(n168), .Z(n164) );
  GTECH_NOT U174 ( .A(ss[7]), .Z(n167) );
  GTECH_MUX2 U175 ( .A(n169), .B(n166), .S(ss[6]), .Z(N41) );
  GTECH_OAI21 U176 ( .A(ss[5]), .B(n165), .C(n170), .Z(n166) );
  GTECH_AND3 U177 ( .A(n171), .B(ss[4]), .C(ss[5]), .Z(n169) );
  GTECH_MUX2 U178 ( .A(n172), .B(N39), .S(ss[5]), .Z(N40) );
  GTECH_AND2 U179 ( .A(n171), .B(ss[4]), .Z(n172) );
  GTECH_NOT U180 ( .A(n170), .Z(N39) );
  GTECH_NAND2 U181 ( .A(n171), .B(n173), .Z(n170) );
  GTECH_NOT U182 ( .A(n165), .Z(n171) );
  GTECH_NAND2 U183 ( .A(n174), .B(n175), .Z(n165) );
  GTECH_NOT U184 ( .A(N58), .Z(n175) );
  GTECH_NAND2 U185 ( .A(n123), .B(n176), .Z(N58) );
  GTECH_NOT U186 ( .A(n177), .Z(n174) );
  GTECH_MUX2 U187 ( .A(n178), .B(n179), .S(ss[3]), .Z(N26) );
  GTECH_OAI21 U188 ( .A(ss[2]), .B(n180), .C(n181), .Z(n179) );
  GTECH_NOT U189 ( .A(n182), .Z(n181) );
  GTECH_AND2 U190 ( .A(ss[2]), .B(n183), .Z(n178) );
  GTECH_NAND2 U191 ( .A(n123), .B(n184), .Z(N25) );
  GTECH_NOT U192 ( .A(ena), .Z(n184) );
  GTECH_MUX2 U193 ( .A(n183), .B(n182), .S(ss[2]), .Z(N24) );
  GTECH_OAI21 U194 ( .A(ss[1]), .B(n180), .C(n185), .Z(n182) );
  GTECH_NOT U195 ( .A(n186), .Z(n183) );
  GTECH_OR3 U196 ( .A(n187), .B(n180), .C(n188), .Z(n186) );
  GTECH_MUX2 U197 ( .A(n189), .B(N22), .S(ss[1]), .Z(N23) );
  GTECH_AND2 U198 ( .A(n190), .B(ss[0]), .Z(n189) );
  GTECH_NOT U199 ( .A(n185), .Z(N22) );
  GTECH_NAND2 U200 ( .A(n190), .B(n187), .Z(n185) );
  GTECH_NOT U201 ( .A(ss[0]), .Z(n187) );
  GTECH_NOT U202 ( .A(n180), .Z(n190) );
  GTECH_NAND2 U203 ( .A(ena), .B(n191), .Z(n180) );
  GTECH_NOT U204 ( .A(N42), .Z(n191) );
  GTECH_NAND2 U205 ( .A(n123), .B(n177), .Z(N42) );
  GTECH_AND2 U206 ( .A(n192), .B(n11), .Z(N122) );
  GTECH_NOT U207 ( .A(n193), .Z(n192) );
  GTECH_NAND2 U208 ( .A(n123), .B(n193), .Z(N121) );
  GTECH_OR3 U209 ( .A(n130), .B(n194), .C(n124), .Z(n193) );
  GTECH_AND2 U210 ( .A(n195), .B(n196), .Z(N116) );
  GTECH_XOR2 U211 ( .A(n197), .B(n7), .Z(n195) );
  GTECH_OR2 U212 ( .A(n6), .B(n198), .Z(n197) );
  GTECH_OR3 U213 ( .A(reset), .B(n133), .C(n131), .Z(N115) );
  GTECH_NOT U214 ( .A(n199), .Z(n131) );
  GTECH_NAND4 U215 ( .A(n104), .B(n200), .C(n147), .D(n127), .Z(n199) );
  GTECH_NOT U216 ( .A(n8), .Z(n127) );
  GTECH_NOT U217 ( .A(n194), .Z(n200) );
  GTECH_NAND4 U218 ( .A(n7), .B(n6), .C(n9), .D(n201), .Z(n194) );
  GTECH_AND3 U219 ( .A(n118), .B(n202), .C(n10), .Z(n201) );
  GTECH_AND2 U220 ( .A(n203), .B(n196), .Z(N114) );
  GTECH_XOR2 U221 ( .A(n198), .B(n6), .Z(n203) );
  GTECH_NAND2 U222 ( .A(n202), .B(n204), .Z(n198) );
  GTECH_NOT U223 ( .A(n10), .Z(n204) );
  GTECH_AND2 U224 ( .A(n196), .B(n205), .Z(N112) );
  GTECH_XOR2 U225 ( .A(n117), .B(n10), .Z(n205) );
  GTECH_NOT U226 ( .A(n206), .Z(n196) );
  GTECH_OAI21 U227 ( .A(n206), .B(n202), .C(n123), .Z(N110) );
  GTECH_NOT U228 ( .A(n117), .Z(n202) );
  GTECH_NAND2 U229 ( .A(n133), .B(n132), .Z(n206) );
  GTECH_NOT U230 ( .A(n124), .Z(n132) );
  GTECH_NAND2 U231 ( .A(n147), .B(n123), .Z(n124) );
  GTECH_NOT U232 ( .A(reset), .Z(n123) );
  GTECH_NOT U233 ( .A(n207), .Z(n133) );
  GTECH_NAND4 U234 ( .A(n118), .B(n147), .C(n208), .D(n209), .Z(n207) );
  GTECH_NOT U235 ( .A(n9), .Z(n209) );
  GTECH_NOT U236 ( .A(n130), .Z(n208) );
  GTECH_NAND2 U237 ( .A(n8), .B(n128), .Z(n130) );
  GTECH_NOT U238 ( .A(n104), .Z(n128) );
  GTECH_NOT U239 ( .A(n210), .Z(n147) );
  GTECH_OR3 U240 ( .A(n139), .B(n148), .C(n141), .Z(n210) );
  GTECH_NOT U241 ( .A(n106), .Z(n141) );
  GTECH_NAND5 U242 ( .A(n211), .B(n161), .C(n162), .D(n110), .E(n109), .Z(n148) );
  GTECH_NOT U243 ( .A(n176), .Z(n162) );
  GTECH_OR3 U244 ( .A(ss[5]), .B(n168), .C(n177), .Z(n176) );
  GTECH_NAND5 U245 ( .A(n188), .B(n212), .C(ena), .D(ss[3]), .E(ss[0]), .Z(
        n177) );
  GTECH_NOT U246 ( .A(ss[2]), .Z(n212) );
  GTECH_NOT U247 ( .A(ss[1]), .Z(n188) );
  GTECH_OR3 U248 ( .A(ss[7]), .B(n173), .C(n213), .Z(n168) );
  GTECH_NOT U249 ( .A(ss[6]), .Z(n213) );
  GTECH_NOT U250 ( .A(ss[4]), .Z(n173) );
  GTECH_NOT U251 ( .A(n4), .Z(n161) );
  GTECH_NOT U252 ( .A(n108), .Z(n211) );
  GTECH_OR3 U253 ( .A(n107), .B(n105), .C(n137), .Z(n139) );
  GTECH_NOT U254 ( .A(n5), .Z(n137) );
endmodule

