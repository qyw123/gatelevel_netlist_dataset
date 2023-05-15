
module clock_12h ( clk, reset, ena, pm, hh, mm, ss );
  output [7:0] hh;
  output [7:0] mm;
  output [7:0] ss;
  input clk, reset, ena;
  output pm;
  wire   N22, N23, N24, N25, N26, N39, N40, N41, N42, N43, N55, N56, N57, N58,
         N59, N71, N72, N73, N74, N75, N88, N89, N90, N91, N92, N110, N112,
         N114, N115, N116, N121, N122, n4, n5, n6, n7, n8, n9, n10, n11, n77,
         n102, n103, n104, n105, n106, n107, n108, n109, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208;

  GTECH_FJK1S ss_ones_reg_0_ ( .J(n77), .K(n77), .TI(N22), .TE(N25), .CP(clk), 
        .Q(ss[0]) );
  GTECH_FJK1S ss_ones_reg_2_ ( .J(n77), .K(n77), .TI(N24), .TE(N25), .CP(clk), 
        .Q(ss[2]) );
  GTECH_FJK1S ss_ones_reg_1_ ( .J(n77), .K(n77), .TI(N23), .TE(N25), .CP(clk), 
        .Q(ss[1]) );
  GTECH_FJK1S ss_ones_reg_3_ ( .J(n77), .K(n77), .TI(N26), .TE(N25), .CP(clk), 
        .Q(ss[3]) );
  GTECH_FJK1S ss_tens_reg_0_ ( .J(n77), .K(n77), .TI(N39), .TE(N42), .CP(clk), 
        .Q(ss[4]) );
  GTECH_FJK1S ss_tens_reg_2_ ( .J(n77), .K(n77), .TI(N41), .TE(N42), .CP(clk), 
        .Q(ss[6]) );
  GTECH_FJK1S ss_tens_reg_1_ ( .J(n77), .K(n77), .TI(N40), .TE(N42), .CP(clk), 
        .Q(ss[5]) );
  GTECH_FJK1S ss_tens_reg_3_ ( .J(n77), .K(n77), .TI(N43), .TE(N42), .CP(clk), 
        .Q(ss[7]) );
  GTECH_FJK1S mm_ones_reg_0_ ( .J(n77), .K(n77), .TI(N55), .TE(N58), .CP(clk), 
        .Q(mm[0]), .QN(n4) );
  GTECH_FJK1S mm_ones_reg_3_ ( .J(n77), .K(n77), .TI(N59), .TE(N58), .CP(clk), 
        .Q(mm[3]), .QN(n107) );
  GTECH_FJK1S mm_ones_reg_1_ ( .J(n77), .K(n77), .TI(N56), .TE(N58), .CP(clk), 
        .Q(mm[1]), .QN(n109) );
  GTECH_FJK1S mm_ones_reg_2_ ( .J(n77), .K(n77), .TI(N57), .TE(N58), .CP(clk), 
        .Q(mm[2]), .QN(n108) );
  GTECH_FJK1S mm_tens_reg_0_ ( .J(n77), .K(n77), .TI(N71), .TE(N74), .CP(clk), 
        .Q(mm[4]), .QN(n106) );
  GTECH_FJK1S mm_tens_reg_2_ ( .J(n77), .K(n77), .TI(N73), .TE(N74), .CP(clk), 
        .Q(mm[6]), .QN(n104) );
  GTECH_FJK1S mm_tens_reg_1_ ( .J(n77), .K(n77), .TI(N72), .TE(N74), .CP(clk), 
        .Q(mm[5]), .QN(n105) );
  GTECH_FJK1S mm_tens_reg_3_ ( .J(n77), .K(n77), .TI(N75), .TE(N74), .CP(clk), 
        .Q(mm[7]), .QN(n5) );
  GTECH_FJK1S hh_tens_reg_0_ ( .J(n77), .K(n77), .TI(N110), .TE(N115), .CP(clk), .Q(hh[4]), .QN(n116) );
  GTECH_FJK1S hh_tens_reg_2_ ( .J(n77), .K(n77), .TI(N114), .TE(N115), .CP(clk), .Q(hh[6]), .QN(n6) );
  GTECH_FJK1S hh_tens_reg_3_ ( .J(n77), .K(n77), .TI(N116), .TE(N115), .CP(clk), .Q(hh[7]), .QN(n7) );
  GTECH_FJK1S hh_ones_reg_0_ ( .J(n77), .K(n77), .TI(N88), .TE(N91), .CP(clk), 
        .Q(hh[0]), .QN(n103) );
  GTECH_FJK1S hh_ones_reg_1_ ( .J(n77), .K(n77), .TI(N89), .TE(N91), .CP(clk), 
        .Q(hh[1]), .QN(n8) );
  GTECH_FJK1S hh_ones_reg_2_ ( .J(n77), .K(n77), .TI(N90), .TE(N91), .CP(clk), 
        .Q(hh[2]), .QN(n102) );
  GTECH_FJK1S hh_ones_reg_3_ ( .J(n77), .K(n77), .TI(N92), .TE(N91), .CP(clk), 
        .Q(hh[3]), .QN(n9) );
  GTECH_FJK1S hh_tens_reg_1_ ( .J(n77), .K(n77), .TI(N112), .TE(N115), .CP(clk), .Q(hh[5]), .QN(n10) );
  GTECH_FJK1S pm_temp_reg ( .J(n77), .K(n77), .TI(N122), .TE(N121), .CP(clk), 
        .Q(pm), .QN(n11) );
  GTECH_ZERO U125 ( .Z(n77) );
  GTECH_AND2 U126 ( .A(n117), .B(n118), .Z(N92) );
  GTECH_XOR2 U127 ( .A(n119), .B(n9), .Z(n117) );
  GTECH_OR2 U128 ( .A(n102), .B(n120), .Z(n119) );
  GTECH_NAND2 U129 ( .A(n121), .B(n122), .Z(N91) );
  GTECH_AND2 U130 ( .A(n123), .B(n118), .Z(N90) );
  GTECH_XOR2 U131 ( .A(n120), .B(n102), .Z(n123) );
  GTECH_NAND2 U132 ( .A(n124), .B(n125), .Z(n120) );
  GTECH_AO21 U133 ( .A(n118), .B(n126), .C(reset), .Z(N89) );
  GTECH_AO21 U134 ( .A(n103), .B(n124), .C(n127), .Z(n126) );
  GTECH_NOT U135 ( .A(n128), .Z(n118) );
  GTECH_OAI22 U136 ( .A(n122), .B(n129), .C(n125), .D(n128), .Z(N88) );
  GTECH_OR3 U137 ( .A(n130), .B(n131), .C(n122), .Z(n128) );
  GTECH_OAI22 U138 ( .A(n5), .B(n132), .C(n133), .D(n134), .Z(N75) );
  GTECH_OA21 U139 ( .A(n5), .B(n135), .C(n136), .Z(n133) );
  GTECH_NOT U140 ( .A(n104), .Z(n135) );
  GTECH_NOT U141 ( .A(n137), .Z(n132) );
  GTECH_MUX2 U142 ( .A(n137), .B(n138), .S(n104), .Z(N73) );
  GTECH_AND3 U143 ( .A(n139), .B(n140), .C(n141), .Z(n138) );
  GTECH_AO21 U144 ( .A(n141), .B(n105), .C(N71), .Z(n137) );
  GTECH_MUX2 U145 ( .A(N71), .B(n142), .S(n105), .Z(N72) );
  GTECH_AND2 U146 ( .A(n141), .B(n140), .Z(n142) );
  GTECH_NOT U147 ( .A(n106), .Z(n140) );
  GTECH_NOT U148 ( .A(n143), .Z(N71) );
  GTECH_NAND2 U149 ( .A(n106), .B(n141), .Z(n143) );
  GTECH_NOT U150 ( .A(n134), .Z(n141) );
  GTECH_OR3 U151 ( .A(reset), .B(n144), .C(n145), .Z(n134) );
  GTECH_MUX2 U152 ( .A(n146), .B(n147), .S(n107), .Z(N59) );
  GTECH_AND_NOT U153 ( .A(n148), .B(n108), .Z(n147) );
  GTECH_AO21 U154 ( .A(n149), .B(n108), .C(n150), .Z(n146) );
  GTECH_MUX2 U155 ( .A(n150), .B(n148), .S(n108), .Z(N57) );
  GTECH_NOT U156 ( .A(n151), .Z(n148) );
  GTECH_OR3 U157 ( .A(n4), .B(n109), .C(n152), .Z(n151) );
  GTECH_AO21 U158 ( .A(n149), .B(n109), .C(N55), .Z(n150) );
  GTECH_MUX2 U159 ( .A(N55), .B(n153), .S(n109), .Z(N56) );
  GTECH_AND2 U160 ( .A(n149), .B(n154), .Z(n153) );
  GTECH_NOT U161 ( .A(n155), .Z(N55) );
  GTECH_NAND2 U162 ( .A(n4), .B(n149), .Z(n155) );
  GTECH_NOT U163 ( .A(n152), .Z(n149) );
  GTECH_NAND2 U164 ( .A(n156), .B(n157), .Z(n152) );
  GTECH_NOT U165 ( .A(N74), .Z(n157) );
  GTECH_NAND2 U166 ( .A(n121), .B(n145), .Z(N74) );
  GTECH_OAI2N2 U167 ( .A(n158), .B(n159), .C(n160), .D(ss[7]), .Z(N43) );
  GTECH_OA21 U168 ( .A(n161), .B(ss[6]), .C(n162), .Z(n158) );
  GTECH_NOT U169 ( .A(ss[7]), .Z(n161) );
  GTECH_MUX2 U170 ( .A(n163), .B(n160), .S(ss[6]), .Z(N41) );
  GTECH_AO21 U171 ( .A(n164), .B(n165), .C(N39), .Z(n160) );
  GTECH_NOT U172 ( .A(ss[5]), .Z(n165) );
  GTECH_AND3 U173 ( .A(n164), .B(ss[4]), .C(ss[5]), .Z(n163) );
  GTECH_MUX2 U174 ( .A(n166), .B(N39), .S(ss[5]), .Z(N40) );
  GTECH_AND2 U175 ( .A(n164), .B(ss[4]), .Z(n166) );
  GTECH_NOT U176 ( .A(n167), .Z(N39) );
  GTECH_NAND2 U177 ( .A(n164), .B(n168), .Z(n167) );
  GTECH_NOT U178 ( .A(n159), .Z(n164) );
  GTECH_NAND2 U179 ( .A(n169), .B(n170), .Z(n159) );
  GTECH_NOT U180 ( .A(N58), .Z(n170) );
  GTECH_NAND2 U181 ( .A(n121), .B(n171), .Z(N58) );
  GTECH_NOT U182 ( .A(n172), .Z(n169) );
  GTECH_MUX2 U183 ( .A(n173), .B(n174), .S(ss[3]), .Z(N26) );
  GTECH_AO21 U184 ( .A(n175), .B(n176), .C(n177), .Z(n174) );
  GTECH_AND2 U185 ( .A(ss[2]), .B(n178), .Z(n173) );
  GTECH_NAND2 U186 ( .A(n121), .B(n179), .Z(N25) );
  GTECH_NOT U187 ( .A(ena), .Z(n179) );
  GTECH_MUX2 U188 ( .A(n178), .B(n177), .S(ss[2]), .Z(N24) );
  GTECH_AO21 U189 ( .A(n175), .B(n180), .C(N22), .Z(n177) );
  GTECH_NOT U190 ( .A(n181), .Z(n178) );
  GTECH_OR3 U191 ( .A(n182), .B(n183), .C(n180), .Z(n181) );
  GTECH_MUX2 U192 ( .A(n184), .B(N22), .S(ss[1]), .Z(N23) );
  GTECH_AND2 U193 ( .A(n175), .B(ss[0]), .Z(n184) );
  GTECH_NOT U194 ( .A(n185), .Z(N22) );
  GTECH_NAND2 U195 ( .A(n175), .B(n182), .Z(n185) );
  GTECH_NOT U196 ( .A(ss[0]), .Z(n182) );
  GTECH_NOT U197 ( .A(n183), .Z(n175) );
  GTECH_NAND2 U198 ( .A(ena), .B(n186), .Z(n183) );
  GTECH_NOT U199 ( .A(N42), .Z(n186) );
  GTECH_NAND2 U200 ( .A(n121), .B(n172), .Z(N42) );
  GTECH_AND2 U201 ( .A(n187), .B(n11), .Z(N122) );
  GTECH_NOT U202 ( .A(n188), .Z(n187) );
  GTECH_NAND2 U203 ( .A(n121), .B(n188), .Z(N121) );
  GTECH_OR3 U204 ( .A(n189), .B(n190), .C(n122), .Z(n188) );
  GTECH_AND2 U205 ( .A(n191), .B(n192), .Z(N116) );
  GTECH_XOR2 U206 ( .A(n193), .B(n7), .Z(n191) );
  GTECH_OR2 U207 ( .A(n6), .B(n194), .Z(n193) );
  GTECH_OR3 U208 ( .A(reset), .B(n130), .C(n131), .Z(N115) );
  GTECH_NOT U209 ( .A(n129), .Z(n131) );
  GTECH_NAND4 U210 ( .A(n103), .B(n195), .C(n144), .D(n124), .Z(n129) );
  GTECH_NOT U211 ( .A(n8), .Z(n124) );
  GTECH_NOT U212 ( .A(n190), .Z(n195) );
  GTECH_NAND4 U213 ( .A(n7), .B(n6), .C(n9), .D(n196), .Z(n190) );
  GTECH_AND3 U214 ( .A(n102), .B(n197), .C(n10), .Z(n196) );
  GTECH_AND2 U215 ( .A(n198), .B(n192), .Z(N114) );
  GTECH_XOR2 U216 ( .A(n194), .B(n6), .Z(n198) );
  GTECH_NAND2 U217 ( .A(n197), .B(n199), .Z(n194) );
  GTECH_NOT U218 ( .A(n10), .Z(n199) );
  GTECH_NOT U219 ( .A(n116), .Z(n197) );
  GTECH_AND2 U220 ( .A(n192), .B(n200), .Z(N112) );
  GTECH_XOR2 U221 ( .A(n116), .B(n10), .Z(n200) );
  GTECH_AO21 U222 ( .A(n116), .B(n192), .C(reset), .Z(N110) );
  GTECH_NOT U223 ( .A(n201), .Z(n192) );
  GTECH_NAND2 U224 ( .A(n130), .B(n202), .Z(n201) );
  GTECH_NOT U225 ( .A(n122), .Z(n202) );
  GTECH_NAND2 U226 ( .A(n144), .B(n121), .Z(n122) );
  GTECH_NOT U227 ( .A(reset), .Z(n121) );
  GTECH_NOT U228 ( .A(n203), .Z(n130) );
  GTECH_NAND4 U229 ( .A(n102), .B(n144), .C(n127), .D(n204), .Z(n203) );
  GTECH_NOT U230 ( .A(n9), .Z(n204) );
  GTECH_NOT U231 ( .A(n189), .Z(n127) );
  GTECH_NAND2 U232 ( .A(n8), .B(n125), .Z(n189) );
  GTECH_NOT U233 ( .A(n103), .Z(n125) );
  GTECH_NOT U234 ( .A(n205), .Z(n144) );
  GTECH_OR3 U235 ( .A(n136), .B(n145), .C(n139), .Z(n205) );
  GTECH_NOT U236 ( .A(n105), .Z(n139) );
  GTECH_NAND5 U237 ( .A(n206), .B(n154), .C(n156), .D(n109), .E(n108), .Z(n145) );
  GTECH_NOT U238 ( .A(n171), .Z(n156) );
  GTECH_OR3 U239 ( .A(ss[5]), .B(n162), .C(n172), .Z(n171) );
  GTECH_NAND5 U240 ( .A(n180), .B(n176), .C(ena), .D(ss[3]), .E(ss[0]), .Z(
        n172) );
  GTECH_NOT U241 ( .A(ss[2]), .Z(n176) );
  GTECH_NOT U242 ( .A(ss[1]), .Z(n180) );
  GTECH_OR3 U243 ( .A(ss[7]), .B(n168), .C(n207), .Z(n162) );
  GTECH_NOT U244 ( .A(ss[6]), .Z(n207) );
  GTECH_NOT U245 ( .A(ss[4]), .Z(n168) );
  GTECH_NOT U246 ( .A(n4), .Z(n154) );
  GTECH_NOT U247 ( .A(n107), .Z(n206) );
  GTECH_OR3 U248 ( .A(n106), .B(n104), .C(n208), .Z(n136) );
  GTECH_NOT U249 ( .A(n5), .Z(n208) );
endmodule

