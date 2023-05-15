
module clock_12h ( clk, reset, ena, pm, hh, mm, ss );
  output [7:0] hh;
  output [7:0] mm;
  output [7:0] ss;
  input clk, reset, ena;
  output pm;
  wire   N22, N23, N24, N25, N26, N39, N40, N41, N42, N43, N55, N56, N57, N58,
         N59, N71, N72, N73, N74, N75, N88, N89, N90, N91, N92, N110, N112,
         N114, N115, N116, N121, N122, n4, n5, n6, n7, n8, n9, n77, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208;

  GTECH_FJK1S ss_ones_reg_0_ ( .J(n77), .K(n77), .TI(N22), .TE(N25), .CP(clk), 
        .Q(ss[0]) );
  GTECH_FJK1S ss_ones_reg_3_ ( .J(n77), .K(n77), .TI(N26), .TE(N25), .CP(clk), 
        .Q(ss[3]) );
  GTECH_FJK1S ss_ones_reg_1_ ( .J(n77), .K(n77), .TI(N23), .TE(N25), .CP(clk), 
        .Q(ss[1]) );
  GTECH_FJK1S ss_ones_reg_2_ ( .J(n77), .K(n77), .TI(N24), .TE(N25), .CP(clk), 
        .Q(ss[2]) );
  GTECH_FJK1S ss_tens_reg_0_ ( .J(n77), .K(n77), .TI(N39), .TE(N42), .CP(clk), 
        .Q(ss[4]) );
  GTECH_FJK1S ss_tens_reg_2_ ( .J(n77), .K(n77), .TI(N41), .TE(N42), .CP(clk), 
        .Q(ss[6]) );
  GTECH_FJK1S ss_tens_reg_1_ ( .J(n77), .K(n77), .TI(N40), .TE(N42), .CP(clk), 
        .Q(ss[5]) );
  GTECH_FJK1S ss_tens_reg_3_ ( .J(n77), .K(n77), .TI(N43), .TE(N42), .CP(clk), 
        .Q(ss[7]) );
  GTECH_FJK1S mm_ones_reg_0_ ( .J(n77), .K(n77), .TI(N55), .TE(N58), .CP(clk), 
        .Q(mm[0]), .QN(n111) );
  GTECH_FJK1S mm_ones_reg_3_ ( .J(n77), .K(n77), .TI(N59), .TE(N58), .CP(clk), 
        .Q(mm[3]), .QN(n108) );
  GTECH_FJK1S mm_ones_reg_1_ ( .J(n77), .K(n77), .TI(N56), .TE(N58), .CP(clk), 
        .Q(mm[1]), .QN(n110) );
  GTECH_FJK1S mm_ones_reg_2_ ( .J(n77), .K(n77), .TI(N57), .TE(N58), .CP(clk), 
        .Q(mm[2]), .QN(n109) );
  GTECH_FJK1S mm_tens_reg_0_ ( .J(n77), .K(n77), .TI(N71), .TE(N74), .CP(clk), 
        .Q(mm[4]), .QN(n107) );
  GTECH_FJK1S mm_tens_reg_2_ ( .J(n77), .K(n77), .TI(N73), .TE(N74), .CP(clk), 
        .Q(mm[6]), .QN(n105) );
  GTECH_FJK1S mm_tens_reg_1_ ( .J(n77), .K(n77), .TI(N72), .TE(N74), .CP(clk), 
        .Q(mm[5]), .QN(n106) );
  GTECH_FJK1S mm_tens_reg_3_ ( .J(n77), .K(n77), .TI(N75), .TE(N74), .CP(clk), 
        .Q(mm[7]), .QN(n4) );
  GTECH_FJK1S hh_tens_reg_0_ ( .J(n77), .K(n77), .TI(N110), .TE(N115), .CP(clk), .Q(hh[4]), .QN(n118) );
  GTECH_FJK1S hh_ones_reg_0_ ( .J(n77), .K(n77), .TI(N88), .TE(N91), .CP(clk), 
        .Q(hh[0]), .QN(n104) );
  GTECH_FJK1S hh_ones_reg_1_ ( .J(n77), .K(n77), .TI(N89), .TE(N91), .CP(clk), 
        .Q(hh[1]), .QN(n103) );
  GTECH_FJK1S hh_ones_reg_2_ ( .J(n77), .K(n77), .TI(N90), .TE(N91), .CP(clk), 
        .Q(hh[2]), .QN(n5) );
  GTECH_FJK1S hh_ones_reg_3_ ( .J(n77), .K(n77), .TI(N92), .TE(N91), .CP(clk), 
        .Q(hh[3]), .QN(n102) );
  GTECH_FJK1S hh_tens_reg_1_ ( .J(n77), .K(n77), .TI(N112), .TE(N115), .CP(clk), .Q(hh[5]), .QN(n6) );
  GTECH_FJK1S hh_tens_reg_2_ ( .J(n77), .K(n77), .TI(N114), .TE(N115), .CP(clk), .Q(hh[6]), .QN(n7) );
  GTECH_FJK1S hh_tens_reg_3_ ( .J(n77), .K(n77), .TI(N116), .TE(N115), .CP(clk), .Q(hh[7]), .QN(n8) );
  GTECH_FJK1S pm_temp_reg ( .J(n77), .K(n77), .TI(N122), .TE(N121), .CP(clk), 
        .Q(pm), .QN(n9) );
  GTECH_ZERO U127 ( .Z(n77) );
  GTECH_AND2 U128 ( .A(n119), .B(n120), .Z(N92) );
  GTECH_XNOR2 U129 ( .A(n102), .B(n121), .Z(n120) );
  GTECH_AND_NOT U130 ( .A(n122), .B(n5), .Z(n121) );
  GTECH_NAND2 U131 ( .A(n123), .B(n124), .Z(N91) );
  GTECH_AND2 U132 ( .A(n125), .B(n119), .Z(N90) );
  GTECH_XNOR2 U133 ( .A(n5), .B(n122), .Z(n125) );
  GTECH_NOT U134 ( .A(n126), .Z(n122) );
  GTECH_NAND2 U135 ( .A(n127), .B(n128), .Z(n126) );
  GTECH_AO21 U136 ( .A(n119), .B(n129), .C(reset), .Z(N89) );
  GTECH_XNOR2 U137 ( .A(n104), .B(n128), .Z(n129) );
  GTECH_NOT U138 ( .A(n130), .Z(n119) );
  GTECH_OAI22 U139 ( .A(n124), .B(n131), .C(n127), .D(n130), .Z(N88) );
  GTECH_NAND3 U140 ( .A(n131), .B(n132), .C(n133), .Z(n130) );
  GTECH_MUX2 U141 ( .A(n134), .B(n135), .S(n4), .Z(N75) );
  GTECH_AND2 U142 ( .A(n136), .B(n137), .Z(n135) );
  GTECH_AO21 U143 ( .A(n105), .B(n138), .C(n139), .Z(n134) );
  GTECH_MUX2 U144 ( .A(n139), .B(n140), .S(n105), .Z(N73) );
  GTECH_AND_NOT U145 ( .A(n136), .B(n106), .Z(n140) );
  GTECH_AO21 U146 ( .A(n138), .B(n106), .C(N71), .Z(n139) );
  GTECH_MUX2 U147 ( .A(N71), .B(n136), .S(n106), .Z(N72) );
  GTECH_NOT U148 ( .A(n141), .Z(n136) );
  GTECH_NAND2 U149 ( .A(n138), .B(n142), .Z(n141) );
  GTECH_NOT U150 ( .A(n143), .Z(N71) );
  GTECH_NAND2 U151 ( .A(n107), .B(n138), .Z(n143) );
  GTECH_NOT U152 ( .A(n144), .Z(n138) );
  GTECH_NAND3 U153 ( .A(n145), .B(n123), .C(n146), .Z(n144) );
  GTECH_MUX2 U154 ( .A(n147), .B(n148), .S(n108), .Z(N59) );
  GTECH_AND_NOT U155 ( .A(n149), .B(n109), .Z(n148) );
  GTECH_AO21 U156 ( .A(n150), .B(n109), .C(n151), .Z(n147) );
  GTECH_MUX2 U157 ( .A(n151), .B(n149), .S(n109), .Z(N57) );
  GTECH_NOT U158 ( .A(n152), .Z(n149) );
  GTECH_NAND3 U159 ( .A(n153), .B(n154), .C(n150), .Z(n152) );
  GTECH_NOT U160 ( .A(n110), .Z(n153) );
  GTECH_AO21 U161 ( .A(n150), .B(n110), .C(N55), .Z(n151) );
  GTECH_MUX2 U162 ( .A(N55), .B(n155), .S(n110), .Z(N56) );
  GTECH_AND2 U163 ( .A(n150), .B(n154), .Z(n155) );
  GTECH_NOT U164 ( .A(n156), .Z(N55) );
  GTECH_NAND2 U165 ( .A(n111), .B(n150), .Z(n156) );
  GTECH_NOT U166 ( .A(n157), .Z(n150) );
  GTECH_NAND2 U167 ( .A(n158), .B(n159), .Z(n157) );
  GTECH_NOT U168 ( .A(N74), .Z(n159) );
  GTECH_NAND2 U169 ( .A(n123), .B(n160), .Z(N74) );
  GTECH_OAI2N2 U170 ( .A(n161), .B(n162), .C(n163), .D(ss[7]), .Z(N43) );
  GTECH_OA21 U171 ( .A(n164), .B(ss[6]), .C(n165), .Z(n161) );
  GTECH_MUX2 U172 ( .A(n166), .B(n163), .S(ss[6]), .Z(N41) );
  GTECH_AO21 U173 ( .A(n167), .B(n168), .C(N39), .Z(n163) );
  GTECH_AND3 U174 ( .A(n167), .B(ss[4]), .C(ss[5]), .Z(n166) );
  GTECH_MUX2 U175 ( .A(n169), .B(N39), .S(ss[5]), .Z(N40) );
  GTECH_AND2 U176 ( .A(n167), .B(ss[4]), .Z(n169) );
  GTECH_NOT U177 ( .A(n170), .Z(N39) );
  GTECH_NAND2 U178 ( .A(n167), .B(n171), .Z(n170) );
  GTECH_NOT U179 ( .A(ss[4]), .Z(n171) );
  GTECH_NOT U180 ( .A(n162), .Z(n167) );
  GTECH_NAND2 U181 ( .A(n172), .B(n173), .Z(n162) );
  GTECH_NOT U182 ( .A(N58), .Z(n173) );
  GTECH_NAND2 U183 ( .A(n123), .B(n174), .Z(N58) );
  GTECH_MUX2 U184 ( .A(n175), .B(n176), .S(ss[3]), .Z(N26) );
  GTECH_AO21 U185 ( .A(n177), .B(n178), .C(n179), .Z(n176) );
  GTECH_AND2 U186 ( .A(ss[2]), .B(n180), .Z(n175) );
  GTECH_NAND2 U187 ( .A(n123), .B(n181), .Z(N25) );
  GTECH_NOT U188 ( .A(ena), .Z(n181) );
  GTECH_MUX2 U189 ( .A(n180), .B(n179), .S(ss[2]), .Z(N24) );
  GTECH_AO21 U190 ( .A(n177), .B(n182), .C(N22), .Z(n179) );
  GTECH_NOT U191 ( .A(n183), .Z(n180) );
  GTECH_NAND3 U192 ( .A(n177), .B(ss[0]), .C(ss[1]), .Z(n183) );
  GTECH_MUX2 U193 ( .A(n184), .B(N22), .S(ss[1]), .Z(N23) );
  GTECH_AND2 U194 ( .A(n177), .B(ss[0]), .Z(n184) );
  GTECH_NOT U195 ( .A(n185), .Z(N22) );
  GTECH_NAND2 U196 ( .A(n177), .B(n186), .Z(n185) );
  GTECH_NOT U197 ( .A(ss[0]), .Z(n186) );
  GTECH_NOT U198 ( .A(n187), .Z(n177) );
  GTECH_NAND2 U199 ( .A(ena), .B(n188), .Z(n187) );
  GTECH_NOT U200 ( .A(N42), .Z(n188) );
  GTECH_NAND2 U201 ( .A(n123), .B(n189), .Z(N42) );
  GTECH_AND2 U202 ( .A(n190), .B(n9), .Z(N122) );
  GTECH_NOT U203 ( .A(n191), .Z(n190) );
  GTECH_NAND2 U204 ( .A(n123), .B(n191), .Z(N121) );
  GTECH_NAND5 U205 ( .A(n133), .B(n8), .C(n7), .D(n6), .E(n192), .Z(n191) );
  GTECH_AND5 U206 ( .A(n127), .B(n193), .C(n103), .D(n102), .E(n5), .Z(n192)
         );
  GTECH_AND2 U207 ( .A(n194), .B(n195), .Z(N116) );
  GTECH_XNOR2 U208 ( .A(n8), .B(n196), .Z(n195) );
  GTECH_AND_NOT U209 ( .A(n197), .B(n7), .Z(n196) );
  GTECH_NAND3 U210 ( .A(n132), .B(n123), .C(n131), .Z(N115) );
  GTECH_NAND5 U211 ( .A(n8), .B(n7), .C(n6), .D(n104), .E(n198), .Z(n131) );
  GTECH_AND5 U212 ( .A(n128), .B(n193), .C(n199), .D(n102), .E(n5), .Z(n198)
         );
  GTECH_NOT U213 ( .A(n103), .Z(n128) );
  GTECH_AND2 U214 ( .A(n200), .B(n194), .Z(N114) );
  GTECH_XNOR2 U215 ( .A(n7), .B(n197), .Z(n200) );
  GTECH_NOT U216 ( .A(n201), .Z(n197) );
  GTECH_NAND2 U217 ( .A(n202), .B(n193), .Z(n201) );
  GTECH_NOT U218 ( .A(n6), .Z(n202) );
  GTECH_AND2 U219 ( .A(n194), .B(n203), .Z(N112) );
  GTECH_XNOR2 U220 ( .A(n6), .B(n193), .Z(n203) );
  GTECH_NOT U221 ( .A(n118), .Z(n193) );
  GTECH_AO21 U222 ( .A(n118), .B(n194), .C(reset), .Z(N110) );
  GTECH_NOT U223 ( .A(n204), .Z(n194) );
  GTECH_NAND2 U224 ( .A(n205), .B(n133), .Z(n204) );
  GTECH_NOT U225 ( .A(n124), .Z(n133) );
  GTECH_NAND2 U226 ( .A(n199), .B(n123), .Z(n124) );
  GTECH_NOT U227 ( .A(reset), .Z(n123) );
  GTECH_NOT U228 ( .A(n132), .Z(n205) );
  GTECH_NAND5 U229 ( .A(n206), .B(n127), .C(n199), .D(n5), .E(n103), .Z(n132)
         );
  GTECH_NOT U230 ( .A(n145), .Z(n199) );
  GTECH_NAND5 U231 ( .A(n137), .B(n142), .C(n146), .D(n4), .E(n106), .Z(n145)
         );
  GTECH_NOT U232 ( .A(n160), .Z(n146) );
  GTECH_NAND5 U233 ( .A(n207), .B(n154), .C(n158), .D(n110), .E(n109), .Z(n160) );
  GTECH_NOT U234 ( .A(n174), .Z(n158) );
  GTECH_NAND3 U235 ( .A(n172), .B(n168), .C(n208), .Z(n174) );
  GTECH_NOT U236 ( .A(n165), .Z(n208) );
  GTECH_NAND3 U237 ( .A(ss[4]), .B(n164), .C(ss[6]), .Z(n165) );
  GTECH_NOT U238 ( .A(ss[7]), .Z(n164) );
  GTECH_NOT U239 ( .A(ss[5]), .Z(n168) );
  GTECH_NOT U240 ( .A(n189), .Z(n172) );
  GTECH_NAND5 U241 ( .A(n182), .B(n178), .C(ena), .D(ss[3]), .E(ss[0]), .Z(
        n189) );
  GTECH_NOT U242 ( .A(ss[2]), .Z(n178) );
  GTECH_NOT U243 ( .A(ss[1]), .Z(n182) );
  GTECH_NOT U244 ( .A(n111), .Z(n154) );
  GTECH_NOT U245 ( .A(n108), .Z(n207) );
  GTECH_NOT U246 ( .A(n107), .Z(n142) );
  GTECH_NOT U247 ( .A(n105), .Z(n137) );
  GTECH_NOT U248 ( .A(n104), .Z(n127) );
  GTECH_NOT U249 ( .A(n102), .Z(n206) );
endmodule

