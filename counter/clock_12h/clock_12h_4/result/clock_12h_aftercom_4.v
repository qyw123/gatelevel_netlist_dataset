
module clock_12h ( clk, reset, ena, pm, hh, mm, ss );
  output [7:0] hh;
  output [7:0] mm;
  output [7:0] ss;
  input clk, reset, ena;
  output pm;
  wire   N22, N23, N24, N25, N26, N39, N40, N41, N42, N43, N55, N56, N57, N58,
         N59, N71, N72, N73, N74, N75, N88, N89, N90, N91, N92, N110, N112,
         N114, N115, N116, N121, N122, n4, n5, n6, n7, n8, n9, n77, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215;

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
  GTECH_FJK1S ss_tens_reg_3_ ( .J(n77), .K(n77), .TI(N43), .TE(N42), .CP(clk), 
        .Q(ss[7]) );
  GTECH_FJK1S ss_tens_reg_1_ ( .J(n77), .K(n77), .TI(N40), .TE(N42), .CP(clk), 
        .Q(ss[5]) );
  GTECH_FJK1S mm_ones_reg_0_ ( .J(n77), .K(n77), .TI(N55), .TE(N58), .CP(clk), 
        .Q(mm[0]), .QN(n110) );
  GTECH_FJK1S mm_ones_reg_3_ ( .J(n77), .K(n77), .TI(N59), .TE(N58), .CP(clk), 
        .Q(mm[3]), .QN(n107) );
  GTECH_FJK1S mm_ones_reg_1_ ( .J(n77), .K(n77), .TI(N56), .TE(N58), .CP(clk), 
        .Q(mm[1]), .QN(n109) );
  GTECH_FJK1S mm_ones_reg_2_ ( .J(n77), .K(n77), .TI(N57), .TE(N58), .CP(clk), 
        .Q(mm[2]), .QN(n108) );
  GTECH_FJK1S mm_tens_reg_0_ ( .J(n77), .K(n77), .TI(N71), .TE(N74), .CP(clk), 
        .Q(mm[4]), .QN(n118) );
  GTECH_FJK1S mm_tens_reg_2_ ( .J(n77), .K(n77), .TI(N73), .TE(N74), .CP(clk), 
        .Q(mm[6]), .QN(n105) );
  GTECH_FJK1S mm_tens_reg_1_ ( .J(n77), .K(n77), .TI(N72), .TE(N74), .CP(clk), 
        .Q(mm[5]), .QN(n106) );
  GTECH_FJK1S mm_tens_reg_3_ ( .J(n77), .K(n77), .TI(N75), .TE(N74), .CP(clk), 
        .Q(mm[7]), .QN(n4) );
  GTECH_FJK1S hh_tens_reg_0_ ( .J(n77), .K(n77), .TI(N110), .TE(N115), .CP(clk), .Q(hh[4]), .QN(n117) );
  GTECH_FJK1S hh_tens_reg_1_ ( .J(n77), .K(n77), .TI(N112), .TE(N115), .CP(clk), .Q(hh[5]), .QN(n5) );
  GTECH_FJK1S hh_tens_reg_2_ ( .J(n77), .K(n77), .TI(N114), .TE(N115), .CP(clk), .Q(hh[6]), .QN(n6) );
  GTECH_FJK1S hh_tens_reg_3_ ( .J(n77), .K(n77), .TI(N116), .TE(N115), .CP(clk), .Q(hh[7]), .QN(n7) );
  GTECH_FJK1S hh_ones_reg_0_ ( .J(n77), .K(n77), .TI(N88), .TE(N91), .CP(clk), 
        .Q(hh[0]), .QN(n8) );
  GTECH_FJK1S hh_ones_reg_1_ ( .J(n77), .K(n77), .TI(N89), .TE(N91), .CP(clk), 
        .Q(hh[1]), .QN(n104) );
  GTECH_FJK1S hh_ones_reg_2_ ( .J(n77), .K(n77), .TI(N90), .TE(N91), .CP(clk), 
        .Q(hh[2]), .QN(n103) );
  GTECH_FJK1S hh_ones_reg_3_ ( .J(n77), .K(n77), .TI(N92), .TE(N91), .CP(clk), 
        .Q(hh[3]), .QN(n102) );
  GTECH_FJK1S pm_temp_reg ( .J(n77), .K(n77), .TI(N122), .TE(N121), .CP(clk), 
        .Q(pm), .QN(n9) );
  GTECH_ZERO U127 ( .Z(n77) );
  GTECH_AND2 U128 ( .A(n119), .B(n120), .Z(N92) );
  GTECH_XOR2 U129 ( .A(n121), .B(n102), .Z(n119) );
  GTECH_OR2 U130 ( .A(n103), .B(n122), .Z(n121) );
  GTECH_NAND2 U131 ( .A(n123), .B(n124), .Z(N91) );
  GTECH_AND2 U132 ( .A(n125), .B(n120), .Z(N90) );
  GTECH_NOT U133 ( .A(n126), .Z(n120) );
  GTECH_XOR2 U134 ( .A(n122), .B(n103), .Z(n125) );
  GTECH_NAND2 U135 ( .A(n127), .B(n128), .Z(n122) );
  GTECH_OAI21 U136 ( .A(n129), .B(n126), .C(n123), .Z(N89) );
  GTECH_XOR2 U137 ( .A(n128), .B(n8), .Z(n129) );
  GTECH_OAI2N2 U138 ( .A(n127), .B(n126), .C(n130), .D(n131), .Z(N88) );
  GTECH_NOT U139 ( .A(n132), .Z(n130) );
  GTECH_NAND3 U140 ( .A(n133), .B(n132), .C(n131), .Z(n126) );
  GTECH_OAI2N2 U141 ( .A(n134), .B(n135), .C(n136), .D(n137), .Z(N75) );
  GTECH_NOT U142 ( .A(n4), .Z(n137) );
  GTECH_OA21 U143 ( .A(n4), .B(n138), .C(n139), .Z(n134) );
  GTECH_MUX2 U144 ( .A(n136), .B(n140), .S(n105), .Z(N73) );
  GTECH_NOR3 U145 ( .A(n118), .B(n106), .C(n135), .Z(n140) );
  GTECH_NOT U146 ( .A(n141), .Z(n136) );
  GTECH_OAI21 U147 ( .A(n118), .B(n106), .C(n142), .Z(n141) );
  GTECH_MUX2 U148 ( .A(N71), .B(n143), .S(n106), .Z(N72) );
  GTECH_AND2 U149 ( .A(n142), .B(n144), .Z(n143) );
  GTECH_NOT U150 ( .A(n145), .Z(N71) );
  GTECH_NAND2 U151 ( .A(n118), .B(n142), .Z(n145) );
  GTECH_NOT U152 ( .A(n135), .Z(n142) );
  GTECH_NAND3 U153 ( .A(n146), .B(n123), .C(n147), .Z(n135) );
  GTECH_MUX2 U154 ( .A(n148), .B(n149), .S(n107), .Z(N59) );
  GTECH_AND2 U155 ( .A(n150), .B(n151), .Z(n149) );
  GTECH_OAI21 U156 ( .A(n151), .B(n152), .C(n153), .Z(n148) );
  GTECH_NOT U157 ( .A(n154), .Z(n153) );
  GTECH_NOT U158 ( .A(n108), .Z(n151) );
  GTECH_MUX2 U159 ( .A(n154), .B(n150), .S(n108), .Z(N57) );
  GTECH_NOT U160 ( .A(n155), .Z(n150) );
  GTECH_NAND3 U161 ( .A(n156), .B(n157), .C(n158), .Z(n155) );
  GTECH_OAI21 U162 ( .A(n156), .B(n152), .C(n159), .Z(n154) );
  GTECH_NOT U163 ( .A(n109), .Z(n156) );
  GTECH_MUX2 U164 ( .A(N55), .B(n160), .S(n109), .Z(N56) );
  GTECH_AND2 U165 ( .A(n158), .B(n157), .Z(n160) );
  GTECH_NOT U166 ( .A(n159), .Z(N55) );
  GTECH_NAND2 U167 ( .A(n110), .B(n158), .Z(n159) );
  GTECH_NOT U168 ( .A(n152), .Z(n158) );
  GTECH_NAND2 U169 ( .A(n161), .B(n162), .Z(n152) );
  GTECH_NOT U170 ( .A(N74), .Z(n162) );
  GTECH_NAND2 U171 ( .A(n123), .B(n163), .Z(N74) );
  GTECH_MUX2 U172 ( .A(n164), .B(n165), .S(ss[7]), .Z(N43) );
  GTECH_OAI21 U173 ( .A(ss[6]), .B(n166), .C(n167), .Z(n165) );
  GTECH_NOT U174 ( .A(n168), .Z(n167) );
  GTECH_AND2 U175 ( .A(n169), .B(ss[6]), .Z(n164) );
  GTECH_MUX2 U176 ( .A(n170), .B(n168), .S(ss[6]), .Z(N41) );
  GTECH_OAI21 U177 ( .A(ss[5]), .B(n166), .C(n171), .Z(n168) );
  GTECH_AND2 U178 ( .A(ss[5]), .B(n169), .Z(n170) );
  GTECH_MUX2 U179 ( .A(n169), .B(N39), .S(ss[5]), .Z(N40) );
  GTECH_NOT U180 ( .A(n172), .Z(n169) );
  GTECH_NAND2 U181 ( .A(n173), .B(ss[4]), .Z(n172) );
  GTECH_NOT U182 ( .A(n171), .Z(N39) );
  GTECH_NAND2 U183 ( .A(n173), .B(n174), .Z(n171) );
  GTECH_NOT U184 ( .A(ss[4]), .Z(n174) );
  GTECH_NOT U185 ( .A(n166), .Z(n173) );
  GTECH_NAND2 U186 ( .A(n175), .B(n176), .Z(n166) );
  GTECH_NOT U187 ( .A(N58), .Z(n176) );
  GTECH_NAND2 U188 ( .A(n123), .B(n177), .Z(N58) );
  GTECH_OAI2N2 U189 ( .A(n178), .B(n179), .C(n180), .D(ss[3]), .Z(N26) );
  GTECH_MUX2 U190 ( .A(n181), .B(n182), .S(ss[2]), .Z(n179) );
  GTECH_NAND2 U191 ( .A(n183), .B(n181), .Z(n182) );
  GTECH_NOT U192 ( .A(ss[3]), .Z(n181) );
  GTECH_NAND2 U193 ( .A(n123), .B(n184), .Z(N25) );
  GTECH_NOT U194 ( .A(ena), .Z(n184) );
  GTECH_MUX2 U195 ( .A(n185), .B(n180), .S(ss[2]), .Z(N24) );
  GTECH_NOT U196 ( .A(n186), .Z(n180) );
  GTECH_NAND2 U197 ( .A(n187), .B(n188), .Z(n186) );
  GTECH_AND2 U198 ( .A(n187), .B(n183), .Z(n185) );
  GTECH_NOT U199 ( .A(n188), .Z(n183) );
  GTECH_NAND2 U200 ( .A(ss[1]), .B(ss[0]), .Z(n188) );
  GTECH_MUX2 U201 ( .A(n189), .B(N22), .S(ss[1]), .Z(N23) );
  GTECH_AND2 U202 ( .A(n187), .B(ss[0]), .Z(n189) );
  GTECH_NOT U203 ( .A(n190), .Z(N22) );
  GTECH_NAND2 U204 ( .A(n187), .B(n191), .Z(n190) );
  GTECH_NOT U205 ( .A(ss[0]), .Z(n191) );
  GTECH_NOT U206 ( .A(n178), .Z(n187) );
  GTECH_NAND2 U207 ( .A(ena), .B(n192), .Z(n178) );
  GTECH_NOT U208 ( .A(N42), .Z(n192) );
  GTECH_NAND2 U209 ( .A(n123), .B(n193), .Z(N42) );
  GTECH_AND2 U210 ( .A(n194), .B(n9), .Z(N122) );
  GTECH_NOT U211 ( .A(n195), .Z(n194) );
  GTECH_NAND2 U212 ( .A(n123), .B(n195), .Z(N121) );
  GTECH_NAND4 U213 ( .A(n131), .B(n104), .C(n196), .D(n127), .Z(n195) );
  GTECH_AND2 U214 ( .A(n197), .B(n198), .Z(N116) );
  GTECH_XOR2 U215 ( .A(n199), .B(n7), .Z(n197) );
  GTECH_OR2 U216 ( .A(n6), .B(n200), .Z(n199) );
  GTECH_NAND3 U217 ( .A(n132), .B(n123), .C(n133), .Z(N115) );
  GTECH_NAND4 U218 ( .A(n8), .B(n196), .C(n201), .D(n128), .Z(n132) );
  GTECH_NOT U219 ( .A(n104), .Z(n128) );
  GTECH_AND3 U220 ( .A(n6), .B(n5), .C(n202), .Z(n196) );
  GTECH_AND4 U221 ( .A(n203), .B(n103), .C(n102), .D(n7), .Z(n202) );
  GTECH_AND2 U222 ( .A(n204), .B(n198), .Z(N114) );
  GTECH_XOR2 U223 ( .A(n200), .B(n6), .Z(n204) );
  GTECH_NAND2 U224 ( .A(n205), .B(n203), .Z(n200) );
  GTECH_NOT U225 ( .A(n5), .Z(n205) );
  GTECH_AND2 U226 ( .A(n198), .B(n206), .Z(N112) );
  GTECH_XOR2 U227 ( .A(n5), .B(n117), .Z(n206) );
  GTECH_NOT U228 ( .A(n207), .Z(n198) );
  GTECH_OAI21 U229 ( .A(n207), .B(n203), .C(n123), .Z(N110) );
  GTECH_NOT U230 ( .A(n117), .Z(n203) );
  GTECH_NAND2 U231 ( .A(n208), .B(n131), .Z(n207) );
  GTECH_NOT U232 ( .A(n124), .Z(n131) );
  GTECH_NAND2 U233 ( .A(n201), .B(n123), .Z(n124) );
  GTECH_NOT U234 ( .A(reset), .Z(n123) );
  GTECH_NOT U235 ( .A(n133), .Z(n208) );
  GTECH_NAND5 U236 ( .A(n209), .B(n127), .C(n201), .D(n104), .E(n103), .Z(n133) );
  GTECH_NOT U237 ( .A(n146), .Z(n201) );
  GTECH_NAND3 U238 ( .A(n147), .B(n210), .C(n106), .Z(n146) );
  GTECH_NOT U239 ( .A(n139), .Z(n210) );
  GTECH_NAND3 U240 ( .A(n138), .B(n144), .C(n4), .Z(n139) );
  GTECH_NOT U241 ( .A(n118), .Z(n144) );
  GTECH_NOT U242 ( .A(n105), .Z(n138) );
  GTECH_NOT U243 ( .A(n163), .Z(n147) );
  GTECH_NAND5 U244 ( .A(n211), .B(n157), .C(n161), .D(n109), .E(n108), .Z(n163) );
  GTECH_NOT U245 ( .A(n177), .Z(n161) );
  GTECH_NAND5 U246 ( .A(n212), .B(n213), .C(n175), .D(ss[6]), .E(ss[4]), .Z(
        n177) );
  GTECH_NOT U247 ( .A(n193), .Z(n175) );
  GTECH_NAND5 U248 ( .A(n214), .B(n215), .C(ena), .D(ss[3]), .E(ss[0]), .Z(
        n193) );
  GTECH_NOT U249 ( .A(ss[2]), .Z(n215) );
  GTECH_NOT U250 ( .A(ss[1]), .Z(n214) );
  GTECH_NOT U251 ( .A(ss[7]), .Z(n213) );
  GTECH_NOT U252 ( .A(ss[5]), .Z(n212) );
  GTECH_NOT U253 ( .A(n110), .Z(n157) );
  GTECH_NOT U254 ( .A(n107), .Z(n211) );
  GTECH_NOT U255 ( .A(n8), .Z(n127) );
  GTECH_NOT U256 ( .A(n102), .Z(n209) );
endmodule

