
module clock_12h ( clk, reset, ena, pm, hh, mm, ss );
  output [7:0] hh;
  output [7:0] mm;
  output [7:0] ss;
  input clk, reset, ena;
  output pm;
  wire   N22, N23, N24, N25, N26, N39, N40, N41, N42, N43, N55, N56, N57, N58,
         N59, N71, N72, N73, N74, N75, N88, N89, N90, N91, N92, N110, N112,
         N114, N115, N116, N121, N122, n4, n5, n6, n7, n8, n9, n10, n80, n105,
         n106, n107, n108, n109, n110, n111, n112, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215;

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
  GTECH_FJK1S ss_tens_reg_3_ ( .J(n80), .K(n80), .TI(N43), .TE(N42), .CP(clk), 
        .Q(ss[7]) );
  GTECH_FJK1S ss_tens_reg_1_ ( .J(n80), .K(n80), .TI(N40), .TE(N42), .CP(clk), 
        .Q(ss[5]) );
  GTECH_FJK1S ss_tens_reg_2_ ( .J(n80), .K(n80), .TI(N41), .TE(N42), .CP(clk), 
        .Q(ss[6]) );
  GTECH_FJK1S mm_ones_reg_0_ ( .J(n80), .K(n80), .TI(N55), .TE(N58), .CP(clk), 
        .Q(mm[0]), .QN(n4) );
  GTECH_FJK1S mm_ones_reg_3_ ( .J(n80), .K(n80), .TI(N59), .TE(N58), .CP(clk), 
        .Q(mm[3]), .QN(n110) );
  GTECH_FJK1S mm_ones_reg_1_ ( .J(n80), .K(n80), .TI(N56), .TE(N58), .CP(clk), 
        .Q(mm[1]), .QN(n112) );
  GTECH_FJK1S mm_ones_reg_2_ ( .J(n80), .K(n80), .TI(N57), .TE(N58), .CP(clk), 
        .Q(mm[2]), .QN(n111) );
  GTECH_FJK1S mm_tens_reg_0_ ( .J(n80), .K(n80), .TI(N71), .TE(N74), .CP(clk), 
        .Q(mm[4]), .QN(n5) );
  GTECH_FJK1S mm_tens_reg_3_ ( .J(n80), .K(n80), .TI(N75), .TE(N74), .CP(clk), 
        .Q(mm[7]), .QN(n107) );
  GTECH_FJK1S mm_tens_reg_1_ ( .J(n80), .K(n80), .TI(N72), .TE(N74), .CP(clk), 
        .Q(mm[5]), .QN(n109) );
  GTECH_FJK1S mm_tens_reg_2_ ( .J(n80), .K(n80), .TI(N73), .TE(N74), .CP(clk), 
        .Q(mm[6]), .QN(n108) );
  GTECH_FJK1S hh_tens_reg_0_ ( .J(n80), .K(n80), .TI(N110), .TE(N115), .CP(clk), .Q(hh[4]), .QN(n119) );
  GTECH_FJK1S hh_tens_reg_2_ ( .J(n80), .K(n80), .TI(N114), .TE(N115), .CP(clk), .Q(hh[6]), .QN(n6) );
  GTECH_FJK1S hh_tens_reg_3_ ( .J(n80), .K(n80), .TI(N116), .TE(N115), .CP(clk), .Q(hh[7]), .QN(n7) );
  GTECH_FJK1S hh_ones_reg_0_ ( .J(n80), .K(n80), .TI(N88), .TE(N91), .CP(clk), 
        .Q(hh[0]), .QN(n8) );
  GTECH_FJK1S hh_ones_reg_1_ ( .J(n80), .K(n80), .TI(N89), .TE(N91), .CP(clk), 
        .Q(hh[1]), .QN(n106) );
  GTECH_FJK1S hh_ones_reg_2_ ( .J(n80), .K(n80), .TI(N90), .TE(N91), .CP(clk), 
        .Q(hh[2]), .QN(n105) );
  GTECH_FJK1S hh_ones_reg_3_ ( .J(n80), .K(n80), .TI(N92), .TE(N91), .CP(clk), 
        .Q(hh[3]), .QN(n120) );
  GTECH_FJK1S hh_tens_reg_1_ ( .J(n80), .K(n80), .TI(N112), .TE(N115), .CP(clk), .Q(hh[5]), .QN(n9) );
  GTECH_FJK1S pm_temp_reg ( .J(n80), .K(n80), .TI(N122), .TE(N121), .CP(clk), 
        .Q(pm), .QN(n10) );
  GTECH_ZERO U129 ( .Z(n80) );
  GTECH_AND2 U130 ( .A(n121), .B(n122), .Z(N92) );
  GTECH_XNOR2 U131 ( .A(n123), .B(n120), .Z(n121) );
  GTECH_NOR2 U132 ( .A(n105), .B(n124), .Z(n123) );
  GTECH_NAND2 U133 ( .A(n125), .B(n126), .Z(N91) );
  GTECH_AND2 U134 ( .A(n127), .B(n122), .Z(N90) );
  GTECH_NOT U135 ( .A(n128), .Z(n122) );
  GTECH_XOR2 U136 ( .A(n124), .B(n105), .Z(n127) );
  GTECH_NAND2 U137 ( .A(n129), .B(n130), .Z(n124) );
  GTECH_OAI21 U138 ( .A(n131), .B(n128), .C(n125), .Z(N89) );
  GTECH_XOR2 U139 ( .A(n130), .B(n8), .Z(n131) );
  GTECH_OAI2N2 U140 ( .A(n129), .B(n128), .C(n132), .D(n133), .Z(N88) );
  GTECH_NOT U141 ( .A(n134), .Z(n132) );
  GTECH_NAND3 U142 ( .A(n135), .B(n134), .C(n133), .Z(n128) );
  GTECH_OAI2N2 U143 ( .A(n136), .B(n137), .C(n138), .D(n139), .Z(N75) );
  GTECH_NOT U144 ( .A(n107), .Z(n139) );
  GTECH_OA21 U145 ( .A(n107), .B(n140), .C(n141), .Z(n136) );
  GTECH_MUX2 U146 ( .A(n138), .B(n142), .S(n108), .Z(N73) );
  GTECH_NOR3 U147 ( .A(n5), .B(n109), .C(n137), .Z(n142) );
  GTECH_NOT U148 ( .A(n143), .Z(n138) );
  GTECH_OAI21 U149 ( .A(n5), .B(n109), .C(n144), .Z(n143) );
  GTECH_MUX2 U150 ( .A(N71), .B(n145), .S(n109), .Z(N72) );
  GTECH_AND2 U151 ( .A(n144), .B(n146), .Z(n145) );
  GTECH_NOT U152 ( .A(n147), .Z(N71) );
  GTECH_NAND2 U153 ( .A(n5), .B(n144), .Z(n147) );
  GTECH_NOT U154 ( .A(n137), .Z(n144) );
  GTECH_NAND3 U155 ( .A(n148), .B(n125), .C(n149), .Z(n137) );
  GTECH_OAI2N2 U156 ( .A(n150), .B(n151), .C(n152), .D(n153), .Z(N59) );
  GTECH_MUX2 U157 ( .A(n154), .B(n155), .S(n110), .Z(n151) );
  GTECH_NAND2 U158 ( .A(n156), .B(n154), .Z(n155) );
  GTECH_NOT U159 ( .A(n111), .Z(n154) );
  GTECH_MUX2 U160 ( .A(n152), .B(n157), .S(n111), .Z(N57) );
  GTECH_AND2 U161 ( .A(n158), .B(n156), .Z(n157) );
  GTECH_NOT U162 ( .A(n159), .Z(n156) );
  GTECH_NOT U163 ( .A(n160), .Z(n152) );
  GTECH_NAND2 U164 ( .A(n158), .B(n159), .Z(n160) );
  GTECH_NAND2 U165 ( .A(n161), .B(n162), .Z(n159) );
  GTECH_NOT U166 ( .A(n112), .Z(n161) );
  GTECH_MUX2 U167 ( .A(N55), .B(n163), .S(n112), .Z(N56) );
  GTECH_AND2 U168 ( .A(n158), .B(n162), .Z(n163) );
  GTECH_NOT U169 ( .A(n164), .Z(N55) );
  GTECH_NAND2 U170 ( .A(n4), .B(n158), .Z(n164) );
  GTECH_NOT U171 ( .A(n150), .Z(n158) );
  GTECH_NAND2 U172 ( .A(n165), .B(n166), .Z(n150) );
  GTECH_NOT U173 ( .A(N74), .Z(n166) );
  GTECH_NAND2 U174 ( .A(n125), .B(n167), .Z(N74) );
  GTECH_OAI2N2 U175 ( .A(n168), .B(n169), .C(ss[7]), .D(n170), .Z(N43) );
  GTECH_OA21 U176 ( .A(ss[6]), .B(n171), .C(n172), .Z(n168) );
  GTECH_MUX2 U177 ( .A(n173), .B(n170), .S(ss[6]), .Z(N41) );
  GTECH_OAI21 U178 ( .A(ss[5]), .B(n169), .C(n174), .Z(n170) );
  GTECH_AND3 U179 ( .A(n175), .B(ss[4]), .C(ss[5]), .Z(n173) );
  GTECH_MUX2 U180 ( .A(n176), .B(N39), .S(ss[5]), .Z(N40) );
  GTECH_AND2 U181 ( .A(n175), .B(ss[4]), .Z(n176) );
  GTECH_NOT U182 ( .A(n174), .Z(N39) );
  GTECH_NAND2 U183 ( .A(n175), .B(n177), .Z(n174) );
  GTECH_NOT U184 ( .A(ss[4]), .Z(n177) );
  GTECH_NOT U185 ( .A(n169), .Z(n175) );
  GTECH_NAND2 U186 ( .A(n178), .B(n179), .Z(n169) );
  GTECH_NOT U187 ( .A(N58), .Z(n179) );
  GTECH_NAND2 U188 ( .A(n125), .B(n180), .Z(N58) );
  GTECH_MUX2 U189 ( .A(n181), .B(n182), .S(ss[3]), .Z(N26) );
  GTECH_OAI21 U190 ( .A(ss[2]), .B(n183), .C(n184), .Z(n182) );
  GTECH_NOT U191 ( .A(n185), .Z(n184) );
  GTECH_AND2 U192 ( .A(ss[2]), .B(n186), .Z(n181) );
  GTECH_NAND2 U193 ( .A(n125), .B(n187), .Z(N25) );
  GTECH_NOT U194 ( .A(ena), .Z(n187) );
  GTECH_MUX2 U195 ( .A(n186), .B(n185), .S(ss[2]), .Z(N24) );
  GTECH_OAI21 U196 ( .A(ss[1]), .B(n183), .C(n188), .Z(n185) );
  GTECH_NOT U197 ( .A(n189), .Z(n186) );
  GTECH_NAND3 U198 ( .A(n190), .B(ss[0]), .C(ss[1]), .Z(n189) );
  GTECH_MUX2 U199 ( .A(n191), .B(N22), .S(ss[1]), .Z(N23) );
  GTECH_AND2 U200 ( .A(n190), .B(ss[0]), .Z(n191) );
  GTECH_NOT U201 ( .A(n188), .Z(N22) );
  GTECH_NAND2 U202 ( .A(n190), .B(n192), .Z(n188) );
  GTECH_NOT U203 ( .A(ss[0]), .Z(n192) );
  GTECH_NOT U204 ( .A(n183), .Z(n190) );
  GTECH_NAND2 U205 ( .A(ena), .B(n193), .Z(n183) );
  GTECH_NOT U206 ( .A(N42), .Z(n193) );
  GTECH_NAND2 U207 ( .A(n125), .B(n194), .Z(N42) );
  GTECH_AND2 U208 ( .A(n195), .B(n10), .Z(N122) );
  GTECH_NOT U209 ( .A(n196), .Z(n195) );
  GTECH_NAND2 U210 ( .A(n125), .B(n196), .Z(N121) );
  GTECH_NAND4 U211 ( .A(n133), .B(n106), .C(n197), .D(n129), .Z(n196) );
  GTECH_AND2 U212 ( .A(n198), .B(n199), .Z(N116) );
  GTECH_XNOR2 U213 ( .A(n200), .B(n7), .Z(n198) );
  GTECH_NOR2 U214 ( .A(n6), .B(n201), .Z(n200) );
  GTECH_NAND3 U215 ( .A(n134), .B(n125), .C(n135), .Z(N115) );
  GTECH_NAND4 U216 ( .A(n8), .B(n197), .C(n202), .D(n130), .Z(n134) );
  GTECH_NOT U217 ( .A(n106), .Z(n130) );
  GTECH_AND3 U218 ( .A(n7), .B(n6), .C(n203), .Z(n197) );
  GTECH_AND4 U219 ( .A(n204), .B(n120), .C(n105), .D(n9), .Z(n203) );
  GTECH_AND2 U220 ( .A(n205), .B(n199), .Z(N114) );
  GTECH_XOR2 U221 ( .A(n201), .B(n6), .Z(n205) );
  GTECH_NAND2 U222 ( .A(n206), .B(n204), .Z(n201) );
  GTECH_NOT U223 ( .A(n9), .Z(n206) );
  GTECH_AND2 U224 ( .A(n199), .B(n207), .Z(N112) );
  GTECH_XOR2 U225 ( .A(n9), .B(n119), .Z(n207) );
  GTECH_NOT U226 ( .A(n208), .Z(n199) );
  GTECH_OAI21 U227 ( .A(n208), .B(n204), .C(n125), .Z(N110) );
  GTECH_NOT U228 ( .A(n119), .Z(n204) );
  GTECH_NAND2 U229 ( .A(n209), .B(n133), .Z(n208) );
  GTECH_NOT U230 ( .A(n126), .Z(n133) );
  GTECH_NAND2 U231 ( .A(n202), .B(n125), .Z(n126) );
  GTECH_NOT U232 ( .A(reset), .Z(n125) );
  GTECH_NOT U233 ( .A(n135), .Z(n209) );
  GTECH_NAND5 U234 ( .A(n210), .B(n129), .C(n202), .D(n106), .E(n105), .Z(n135) );
  GTECH_NOT U235 ( .A(n148), .Z(n202) );
  GTECH_NAND3 U236 ( .A(n149), .B(n211), .C(n109), .Z(n148) );
  GTECH_NOT U237 ( .A(n141), .Z(n211) );
  GTECH_NAND3 U238 ( .A(n140), .B(n146), .C(n107), .Z(n141) );
  GTECH_NOT U239 ( .A(n5), .Z(n146) );
  GTECH_NOT U240 ( .A(n108), .Z(n140) );
  GTECH_NOT U241 ( .A(n167), .Z(n149) );
  GTECH_NAND5 U242 ( .A(n153), .B(n162), .C(n165), .D(n112), .E(n111), .Z(n167) );
  GTECH_NOT U243 ( .A(n180), .Z(n165) );
  GTECH_NAND3 U244 ( .A(n212), .B(n213), .C(n178), .Z(n180) );
  GTECH_NOT U245 ( .A(n194), .Z(n178) );
  GTECH_NAND5 U246 ( .A(n214), .B(n215), .C(ena), .D(ss[3]), .E(ss[0]), .Z(
        n194) );
  GTECH_NOT U247 ( .A(ss[2]), .Z(n215) );
  GTECH_NOT U248 ( .A(ss[1]), .Z(n214) );
  GTECH_NOT U249 ( .A(ss[5]), .Z(n213) );
  GTECH_NOT U250 ( .A(n172), .Z(n212) );
  GTECH_NAND3 U251 ( .A(ss[4]), .B(n171), .C(ss[6]), .Z(n172) );
  GTECH_NOT U252 ( .A(ss[7]), .Z(n171) );
  GTECH_NOT U253 ( .A(n4), .Z(n162) );
  GTECH_NOT U254 ( .A(n110), .Z(n153) );
  GTECH_NOT U255 ( .A(n8), .Z(n129) );
  GTECH_NOT U256 ( .A(n120), .Z(n210) );
endmodule

