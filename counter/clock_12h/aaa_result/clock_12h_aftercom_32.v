
module clock_12h ( clk, reset, ena, pm, hh, mm, ss );
  output [7:0] hh;
  output [7:0] mm;
  output [7:0] ss;
  input clk, reset, ena;
  output pm;
  wire   N22, N23, N24, N25, N26, N39, N40, N41, N42, N43, N55, N56, N57, N58,
         N59, N71, N72, N73, N74, N75, N88, N89, N90, N91, N92, N110, N112,
         N114, N115, N116, N121, N122, n3, n4, n5, n6, n7, n8, n9, n79, n104,
         n105, n106, n107, n108, n109, n110, n111, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216;

  GTECH_FJK1S ss_ones_reg_0_ ( .J(n79), .K(n79), .TI(N22), .TE(N25), .CP(clk), 
        .Q(ss[0]) );
  GTECH_FJK1S ss_ones_reg_2_ ( .J(n79), .K(n79), .TI(N24), .TE(N25), .CP(clk), 
        .Q(ss[2]) );
  GTECH_FJK1S ss_ones_reg_3_ ( .J(n79), .K(n79), .TI(N26), .TE(N25), .CP(clk), 
        .Q(ss[3]) );
  GTECH_FJK1S ss_ones_reg_1_ ( .J(n79), .K(n79), .TI(N23), .TE(N25), .CP(clk), 
        .Q(ss[1]) );
  GTECH_FJK1S ss_tens_reg_0_ ( .J(n79), .K(n79), .TI(N39), .TE(N42), .CP(clk), 
        .Q(ss[4]) );
  GTECH_FJK1S ss_tens_reg_2_ ( .J(n79), .K(n79), .TI(N41), .TE(N42), .CP(clk), 
        .Q(ss[6]) );
  GTECH_FJK1S ss_tens_reg_1_ ( .J(n79), .K(n79), .TI(N40), .TE(N42), .CP(clk), 
        .Q(ss[5]) );
  GTECH_FJK1S ss_tens_reg_3_ ( .J(n79), .K(n79), .TI(N43), .TE(N42), .CP(clk), 
        .Q(ss[7]) );
  GTECH_FJK1S mm_ones_reg_0_ ( .J(n79), .K(n79), .TI(N55), .TE(N58), .CP(clk), 
        .Q(mm[0]), .QN(n109) );
  GTECH_FJK1S mm_ones_reg_2_ ( .J(n79), .K(n79), .TI(N57), .TE(N58), .CP(clk), 
        .Q(mm[2]), .QN(n111) );
  GTECH_FJK1S mm_ones_reg_3_ ( .J(n79), .K(n79), .TI(N59), .TE(N58), .CP(clk), 
        .Q(mm[3]), .QN(n108) );
  GTECH_FJK1S mm_ones_reg_1_ ( .J(n79), .K(n79), .TI(N56), .TE(N58), .CP(clk), 
        .Q(mm[1]), .QN(n110) );
  GTECH_FJK1S mm_tens_reg_0_ ( .J(n79), .K(n79), .TI(N71), .TE(N74), .CP(clk), 
        .Q(mm[4]), .QN(n107) );
  GTECH_FJK1S mm_tens_reg_2_ ( .J(n79), .K(n79), .TI(N73), .TE(N74), .CP(clk), 
        .Q(mm[6]), .QN(n105) );
  GTECH_FJK1S mm_tens_reg_1_ ( .J(n79), .K(n79), .TI(N72), .TE(N74), .CP(clk), 
        .Q(mm[5]), .QN(n106) );
  GTECH_FJK1S mm_tens_reg_3_ ( .J(n79), .K(n79), .TI(N75), .TE(N74), .CP(clk), 
        .Q(mm[7]), .QN(n3) );
  GTECH_FJK1S hh_tens_reg_0_ ( .J(n79), .K(n79), .TI(N110), .TE(N115), .CP(clk), .Q(hh[4]), .QN(n4) );
  GTECH_FJK1S hh_tens_reg_2_ ( .J(n79), .K(n79), .TI(N114), .TE(N115), .CP(clk), .Q(hh[6]), .QN(n5) );
  GTECH_FJK1S hh_tens_reg_3_ ( .J(n79), .K(n79), .TI(N116), .TE(N115), .CP(clk), .Q(hh[7]), .QN(n6) );
  GTECH_FJK1S hh_ones_reg_0_ ( .J(n79), .K(n79), .TI(N88), .TE(N91), .CP(clk), 
        .Q(hh[0]), .QN(n7) );
  GTECH_FJK1S hh_ones_reg_1_ ( .J(n79), .K(n79), .TI(N89), .TE(N91), .CP(clk), 
        .Q(hh[1]), .QN(n104) );
  GTECH_FJK1S hh_ones_reg_2_ ( .J(n79), .K(n79), .TI(N90), .TE(N91), .CP(clk), 
        .Q(hh[2]), .QN(n120) );
  GTECH_FJK1S hh_ones_reg_3_ ( .J(n79), .K(n79), .TI(N92), .TE(N91), .CP(clk), 
        .Q(hh[3]), .QN(n119) );
  GTECH_FJK1S hh_tens_reg_1_ ( .J(n79), .K(n79), .TI(N112), .TE(N115), .CP(clk), .Q(hh[5]), .QN(n8) );
  GTECH_FJK1S pm_temp_reg ( .J(n79), .K(n79), .TI(N122), .TE(N121), .CP(clk), 
        .Q(pm), .QN(n9) );
  GTECH_ZERO U129 ( .Z(n79) );
  GTECH_AND2 U130 ( .A(n121), .B(n122), .Z(N92) );
  GTECH_XNOR2 U131 ( .A(n119), .B(n123), .Z(n122) );
  GTECH_AND_NOT U132 ( .A(n124), .B(n120), .Z(n123) );
  GTECH_NAND2 U133 ( .A(n125), .B(n126), .Z(N91) );
  GTECH_AND2 U134 ( .A(n127), .B(n121), .Z(N90) );
  GTECH_NOT U135 ( .A(n128), .Z(n121) );
  GTECH_XNOR2 U136 ( .A(n120), .B(n124), .Z(n127) );
  GTECH_NOT U137 ( .A(n129), .Z(n124) );
  GTECH_NAND2 U138 ( .A(n130), .B(n131), .Z(n129) );
  GTECH_OAI21 U139 ( .A(n132), .B(n128), .C(n125), .Z(N89) );
  GTECH_OA21 U140 ( .A(n104), .B(n130), .C(n133), .Z(n132) );
  GTECH_OAI22 U141 ( .A(n126), .B(n134), .C(n130), .D(n128), .Z(N88) );
  GTECH_NAND3 U142 ( .A(n134), .B(n135), .C(n136), .Z(n128) );
  GTECH_MUX2 U143 ( .A(n137), .B(n138), .S(n3), .Z(N75) );
  GTECH_AND2 U144 ( .A(n139), .B(n140), .Z(n138) );
  GTECH_OAI21 U145 ( .A(n141), .B(n140), .C(n142), .Z(n137) );
  GTECH_NOT U146 ( .A(n105), .Z(n140) );
  GTECH_MUX2 U147 ( .A(n143), .B(n144), .S(n105), .Z(N73) );
  GTECH_AND2 U148 ( .A(n139), .B(n145), .Z(n144) );
  GTECH_NOT U149 ( .A(n142), .Z(n143) );
  GTECH_OAI21 U150 ( .A(n107), .B(n106), .C(n146), .Z(n142) );
  GTECH_MUX2 U151 ( .A(N71), .B(n139), .S(n106), .Z(N72) );
  GTECH_NOT U152 ( .A(n147), .Z(n139) );
  GTECH_NAND2 U153 ( .A(n146), .B(n148), .Z(n147) );
  GTECH_NOT U154 ( .A(n107), .Z(n148) );
  GTECH_NOT U155 ( .A(n149), .Z(N71) );
  GTECH_NAND2 U156 ( .A(n107), .B(n146), .Z(n149) );
  GTECH_NOT U157 ( .A(n141), .Z(n146) );
  GTECH_NAND3 U158 ( .A(n150), .B(n125), .C(n151), .Z(n141) );
  GTECH_NOT U159 ( .A(n152), .Z(n151) );
  GTECH_MUX2 U160 ( .A(n153), .B(n154), .S(n108), .Z(N59) );
  GTECH_AND2 U161 ( .A(n155), .B(n156), .Z(n154) );
  GTECH_OAI21 U162 ( .A(n156), .B(n157), .C(n158), .Z(n153) );
  GTECH_NOT U163 ( .A(n159), .Z(n158) );
  GTECH_MUX2 U164 ( .A(n159), .B(n155), .S(n111), .Z(N57) );
  GTECH_NOT U165 ( .A(n160), .Z(n155) );
  GTECH_NAND3 U166 ( .A(n161), .B(n162), .C(n163), .Z(n160) );
  GTECH_OAI21 U167 ( .A(n162), .B(n157), .C(n164), .Z(n159) );
  GTECH_MUX2 U168 ( .A(N55), .B(n165), .S(n110), .Z(N56) );
  GTECH_AND2 U169 ( .A(n163), .B(n161), .Z(n165) );
  GTECH_NOT U170 ( .A(n109), .Z(n161) );
  GTECH_NOT U171 ( .A(n164), .Z(N55) );
  GTECH_NAND2 U172 ( .A(n109), .B(n163), .Z(n164) );
  GTECH_NOT U173 ( .A(n157), .Z(n163) );
  GTECH_NAND2 U174 ( .A(n166), .B(n167), .Z(n157) );
  GTECH_NOT U175 ( .A(N74), .Z(n167) );
  GTECH_NAND2 U176 ( .A(n125), .B(n152), .Z(N74) );
  GTECH_NOT U177 ( .A(n168), .Z(n166) );
  GTECH_MUX2 U178 ( .A(n169), .B(n170), .S(ss[7]), .Z(N43) );
  GTECH_OAI21 U179 ( .A(ss[6]), .B(n171), .C(n172), .Z(n170) );
  GTECH_NOT U180 ( .A(n173), .Z(n172) );
  GTECH_AND2 U181 ( .A(n174), .B(ss[6]), .Z(n169) );
  GTECH_MUX2 U182 ( .A(n175), .B(n173), .S(ss[6]), .Z(N41) );
  GTECH_OAI21 U183 ( .A(ss[5]), .B(n171), .C(n176), .Z(n173) );
  GTECH_AND2 U184 ( .A(ss[5]), .B(n174), .Z(n175) );
  GTECH_MUX2 U185 ( .A(n174), .B(N39), .S(ss[5]), .Z(N40) );
  GTECH_NOT U186 ( .A(n177), .Z(n174) );
  GTECH_NAND2 U187 ( .A(n178), .B(ss[4]), .Z(n177) );
  GTECH_NOT U188 ( .A(n176), .Z(N39) );
  GTECH_NAND2 U189 ( .A(n178), .B(n179), .Z(n176) );
  GTECH_NOT U190 ( .A(n171), .Z(n178) );
  GTECH_NAND2 U191 ( .A(n180), .B(n181), .Z(n171) );
  GTECH_NOT U192 ( .A(N58), .Z(n181) );
  GTECH_NAND2 U193 ( .A(n125), .B(n168), .Z(N58) );
  GTECH_NOT U194 ( .A(n182), .Z(n180) );
  GTECH_MUX2 U195 ( .A(n183), .B(n184), .S(ss[3]), .Z(N26) );
  GTECH_OAI21 U196 ( .A(ss[2]), .B(n185), .C(n186), .Z(n184) );
  GTECH_NOT U197 ( .A(n187), .Z(n186) );
  GTECH_AND2 U198 ( .A(ss[2]), .B(n188), .Z(n183) );
  GTECH_NAND2 U199 ( .A(n125), .B(n189), .Z(N25) );
  GTECH_MUX2 U200 ( .A(n188), .B(n187), .S(ss[2]), .Z(N24) );
  GTECH_OAI21 U201 ( .A(ss[1]), .B(n185), .C(n190), .Z(n187) );
  GTECH_NOT U202 ( .A(n191), .Z(n188) );
  GTECH_NAND3 U203 ( .A(n192), .B(ss[0]), .C(ss[1]), .Z(n191) );
  GTECH_MUX2 U204 ( .A(n193), .B(N22), .S(ss[1]), .Z(N23) );
  GTECH_AND2 U205 ( .A(n192), .B(ss[0]), .Z(n193) );
  GTECH_NOT U206 ( .A(n190), .Z(N22) );
  GTECH_NAND2 U207 ( .A(n192), .B(n194), .Z(n190) );
  GTECH_NOT U208 ( .A(n185), .Z(n192) );
  GTECH_NAND2 U209 ( .A(ena), .B(n195), .Z(n185) );
  GTECH_NOT U210 ( .A(N42), .Z(n195) );
  GTECH_NAND2 U211 ( .A(n125), .B(n182), .Z(N42) );
  GTECH_AND2 U212 ( .A(n196), .B(n9), .Z(N122) );
  GTECH_NOT U213 ( .A(n197), .Z(n196) );
  GTECH_NAND2 U214 ( .A(n125), .B(n197), .Z(N121) );
  GTECH_NAND3 U215 ( .A(n198), .B(n199), .C(n136), .Z(n197) );
  GTECH_AND2 U216 ( .A(n200), .B(n201), .Z(N116) );
  GTECH_XNOR2 U217 ( .A(n6), .B(n202), .Z(n201) );
  GTECH_AND_NOT U218 ( .A(n203), .B(n5), .Z(n202) );
  GTECH_NAND3 U219 ( .A(n135), .B(n125), .C(n134), .Z(N115) );
  GTECH_NAND4 U220 ( .A(n7), .B(n198), .C(n204), .D(n131), .Z(n134) );
  GTECH_NOT U221 ( .A(n104), .Z(n131) );
  GTECH_AND3 U222 ( .A(n6), .B(n5), .C(n205), .Z(n198) );
  GTECH_AND4 U223 ( .A(n206), .B(n119), .C(n120), .D(n8), .Z(n205) );
  GTECH_AND2 U224 ( .A(n207), .B(n200), .Z(N114) );
  GTECH_XNOR2 U225 ( .A(n5), .B(n203), .Z(n207) );
  GTECH_NOT U226 ( .A(n208), .Z(n203) );
  GTECH_NAND2 U227 ( .A(n209), .B(n206), .Z(n208) );
  GTECH_NOT U228 ( .A(n8), .Z(n209) );
  GTECH_AND2 U229 ( .A(n200), .B(n210), .Z(N112) );
  GTECH_XNOR2 U230 ( .A(n8), .B(n206), .Z(n210) );
  GTECH_NOT U231 ( .A(n211), .Z(n200) );
  GTECH_OAI21 U232 ( .A(n211), .B(n206), .C(n125), .Z(N110) );
  GTECH_NOT U233 ( .A(n4), .Z(n206) );
  GTECH_NAND2 U234 ( .A(n212), .B(n136), .Z(n211) );
  GTECH_NOT U235 ( .A(n126), .Z(n136) );
  GTECH_NAND2 U236 ( .A(n204), .B(n125), .Z(n126) );
  GTECH_NOT U237 ( .A(reset), .Z(n125) );
  GTECH_NOT U238 ( .A(n135), .Z(n212) );
  GTECH_NAND4 U239 ( .A(n120), .B(n199), .C(n204), .D(n213), .Z(n135) );
  GTECH_NOT U240 ( .A(n119), .Z(n213) );
  GTECH_NOT U241 ( .A(n150), .Z(n204) );
  GTECH_OR5 U242 ( .A(n107), .B(n105), .C(n152), .D(n145), .E(n214), .Z(n150)
         );
  GTECH_NOT U243 ( .A(n3), .Z(n214) );
  GTECH_NOT U244 ( .A(n106), .Z(n145) );
  GTECH_OR5 U245 ( .A(n109), .B(n108), .C(n168), .D(n162), .E(n156), .Z(n152)
         );
  GTECH_NOT U246 ( .A(n111), .Z(n156) );
  GTECH_NOT U247 ( .A(n110), .Z(n162) );
  GTECH_OR5 U248 ( .A(ss[7]), .B(ss[5]), .C(n182), .D(n179), .E(n215), .Z(n168) );
  GTECH_NOT U249 ( .A(ss[6]), .Z(n215) );
  GTECH_NOT U250 ( .A(ss[4]), .Z(n179) );
  GTECH_OR5 U251 ( .A(ss[2]), .B(ss[1]), .C(n189), .D(n194), .E(n216), .Z(n182) );
  GTECH_NOT U252 ( .A(ss[3]), .Z(n216) );
  GTECH_NOT U253 ( .A(ss[0]), .Z(n194) );
  GTECH_NOT U254 ( .A(ena), .Z(n189) );
  GTECH_NOT U255 ( .A(n133), .Z(n199) );
  GTECH_NAND2 U256 ( .A(n104), .B(n130), .Z(n133) );
  GTECH_NOT U257 ( .A(n7), .Z(n130) );
endmodule

