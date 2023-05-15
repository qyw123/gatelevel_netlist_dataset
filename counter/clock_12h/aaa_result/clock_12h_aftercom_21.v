
module clock_12h ( clk, reset, ena, pm, hh, mm, ss );
  output [7:0] hh;
  output [7:0] mm;
  output [7:0] ss;
  input clk, reset, ena;
  output pm;
  wire   N22, N23, N24, N25, N26, N39, N40, N41, N42, N43, N55, N56, N57, N58,
         N59, N71, N72, N73, N74, N75, N88, N89, N90, N91, N92, N110, N112,
         N114, N115, N116, N121, N122, n3, n4, n5, n6, n7, n8, n9, n76, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212;

  GTECH_FJK1S ss_ones_reg_0_ ( .J(n76), .K(n76), .TI(N22), .TE(N25), .CP(clk), 
        .Q(ss[0]) );
  GTECH_FJK1S ss_ones_reg_3_ ( .J(n76), .K(n76), .TI(N26), .TE(N25), .CP(clk), 
        .Q(ss[3]) );
  GTECH_FJK1S ss_ones_reg_1_ ( .J(n76), .K(n76), .TI(N23), .TE(N25), .CP(clk), 
        .Q(ss[1]) );
  GTECH_FJK1S ss_ones_reg_2_ ( .J(n76), .K(n76), .TI(N24), .TE(N25), .CP(clk), 
        .Q(ss[2]) );
  GTECH_FJK1S ss_tens_reg_0_ ( .J(n76), .K(n76), .TI(N39), .TE(N42), .CP(clk), 
        .Q(ss[4]) );
  GTECH_FJK1S ss_tens_reg_3_ ( .J(n76), .K(n76), .TI(N43), .TE(N42), .CP(clk), 
        .Q(ss[7]) );
  GTECH_FJK1S ss_tens_reg_1_ ( .J(n76), .K(n76), .TI(N40), .TE(N42), .CP(clk), 
        .Q(ss[5]) );
  GTECH_FJK1S ss_tens_reg_2_ ( .J(n76), .K(n76), .TI(N41), .TE(N42), .CP(clk), 
        .Q(ss[6]) );
  GTECH_FJK1S mm_ones_reg_0_ ( .J(n76), .K(n76), .TI(N55), .TE(N58), .CP(clk), 
        .Q(mm[0]), .QN(n3) );
  GTECH_FJK1S mm_ones_reg_3_ ( .J(n76), .K(n76), .TI(N59), .TE(N58), .CP(clk), 
        .Q(mm[3]), .QN(n107) );
  GTECH_FJK1S mm_ones_reg_1_ ( .J(n76), .K(n76), .TI(N56), .TE(N58), .CP(clk), 
        .Q(mm[1]), .QN(n109) );
  GTECH_FJK1S mm_ones_reg_2_ ( .J(n76), .K(n76), .TI(N57), .TE(N58), .CP(clk), 
        .Q(mm[2]), .QN(n108) );
  GTECH_FJK1S mm_tens_reg_0_ ( .J(n76), .K(n76), .TI(N71), .TE(N74), .CP(clk), 
        .Q(mm[4]), .QN(n106) );
  GTECH_FJK1S mm_tens_reg_3_ ( .J(n76), .K(n76), .TI(N75), .TE(N74), .CP(clk), 
        .Q(mm[7]), .QN(n103) );
  GTECH_FJK1S mm_tens_reg_1_ ( .J(n76), .K(n76), .TI(N72), .TE(N74), .CP(clk), 
        .Q(mm[5]), .QN(n105) );
  GTECH_FJK1S mm_tens_reg_2_ ( .J(n76), .K(n76), .TI(N73), .TE(N74), .CP(clk), 
        .Q(mm[6]), .QN(n104) );
  GTECH_FJK1S hh_tens_reg_0_ ( .J(n76), .K(n76), .TI(N110), .TE(N115), .CP(clk), .Q(hh[4]), .QN(n117) );
  GTECH_FJK1S hh_tens_reg_2_ ( .J(n76), .K(n76), .TI(N114), .TE(N115), .CP(clk), .Q(hh[6]), .QN(n4) );
  GTECH_FJK1S hh_tens_reg_3_ ( .J(n76), .K(n76), .TI(N116), .TE(N115), .CP(clk), .Q(hh[7]), .QN(n5) );
  GTECH_FJK1S hh_ones_reg_0_ ( .J(n76), .K(n76), .TI(N88), .TE(N91), .CP(clk), 
        .Q(hh[0]), .QN(n102) );
  GTECH_FJK1S hh_ones_reg_1_ ( .J(n76), .K(n76), .TI(N89), .TE(N91), .CP(clk), 
        .Q(hh[1]), .QN(n6) );
  GTECH_FJK1S hh_ones_reg_2_ ( .J(n76), .K(n76), .TI(N90), .TE(N91), .CP(clk), 
        .Q(hh[2]), .QN(n101) );
  GTECH_FJK1S hh_ones_reg_3_ ( .J(n76), .K(n76), .TI(N92), .TE(N91), .CP(clk), 
        .Q(hh[3]), .QN(n7) );
  GTECH_FJK1S hh_tens_reg_1_ ( .J(n76), .K(n76), .TI(N112), .TE(N115), .CP(clk), .Q(hh[5]), .QN(n8) );
  GTECH_FJK1S pm_temp_reg ( .J(n76), .K(n76), .TI(N122), .TE(N121), .CP(clk), 
        .Q(pm), .QN(n9) );
  GTECH_ZERO U126 ( .Z(n76) );
  GTECH_AND2 U127 ( .A(n118), .B(n119), .Z(N92) );
  GTECH_XNOR2 U128 ( .A(n7), .B(n120), .Z(n119) );
  GTECH_AND_NOT U129 ( .A(n121), .B(n101), .Z(n120) );
  GTECH_NAND2 U130 ( .A(n122), .B(n123), .Z(N91) );
  GTECH_AND2 U131 ( .A(n124), .B(n118), .Z(N90) );
  GTECH_NOT U132 ( .A(n125), .Z(n118) );
  GTECH_XNOR2 U133 ( .A(n101), .B(n121), .Z(n124) );
  GTECH_NOT U134 ( .A(n126), .Z(n121) );
  GTECH_NAND2 U135 ( .A(n127), .B(n128), .Z(n126) );
  GTECH_OAI21 U136 ( .A(n129), .B(n125), .C(n122), .Z(N89) );
  GTECH_XNOR2 U137 ( .A(n6), .B(n102), .Z(n129) );
  GTECH_OAI22 U138 ( .A(n123), .B(n130), .C(n128), .D(n125), .Z(N88) );
  GTECH_NAND3 U139 ( .A(n130), .B(n131), .C(n132), .Z(n125) );
  GTECH_OAI22 U140 ( .A(n103), .B(n133), .C(n134), .D(n135), .Z(N75) );
  GTECH_OA21 U141 ( .A(n103), .B(n136), .C(n137), .Z(n134) );
  GTECH_NOT U142 ( .A(n138), .Z(N73) );
  GTECH_MUX2 U143 ( .A(n133), .B(n139), .S(n104), .Z(n138) );
  GTECH_OR3 U144 ( .A(n105), .B(n135), .C(n106), .Z(n139) );
  GTECH_OAI21 U145 ( .A(n106), .B(n105), .C(n140), .Z(n133) );
  GTECH_MUX2 U146 ( .A(N71), .B(n141), .S(n105), .Z(N72) );
  GTECH_AND2 U147 ( .A(n140), .B(n142), .Z(n141) );
  GTECH_NOT U148 ( .A(n143), .Z(N71) );
  GTECH_NAND2 U149 ( .A(n106), .B(n140), .Z(n143) );
  GTECH_NOT U150 ( .A(n135), .Z(n140) );
  GTECH_NAND3 U151 ( .A(n144), .B(n122), .C(n145), .Z(n135) );
  GTECH_MUX2 U152 ( .A(n146), .B(n147), .S(n107), .Z(N59) );
  GTECH_AND2 U153 ( .A(n148), .B(n149), .Z(n147) );
  GTECH_OAI21 U154 ( .A(n149), .B(n150), .C(n151), .Z(n146) );
  GTECH_NOT U155 ( .A(n152), .Z(n151) );
  GTECH_NOT U156 ( .A(n108), .Z(n149) );
  GTECH_MUX2 U157 ( .A(n152), .B(n148), .S(n108), .Z(N57) );
  GTECH_NOT U158 ( .A(n153), .Z(n148) );
  GTECH_NAND3 U159 ( .A(n154), .B(n155), .C(n156), .Z(n153) );
  GTECH_OAI21 U160 ( .A(n154), .B(n150), .C(n157), .Z(n152) );
  GTECH_NOT U161 ( .A(n109), .Z(n154) );
  GTECH_MUX2 U162 ( .A(N55), .B(n158), .S(n109), .Z(N56) );
  GTECH_AND2 U163 ( .A(n156), .B(n155), .Z(n158) );
  GTECH_NOT U164 ( .A(n157), .Z(N55) );
  GTECH_NAND2 U165 ( .A(n3), .B(n156), .Z(n157) );
  GTECH_NOT U166 ( .A(n150), .Z(n156) );
  GTECH_NAND2 U167 ( .A(n159), .B(n160), .Z(n150) );
  GTECH_NOT U168 ( .A(N74), .Z(n160) );
  GTECH_NAND2 U169 ( .A(n122), .B(n161), .Z(N74) );
  GTECH_MUX2 U170 ( .A(n162), .B(n163), .S(ss[7]), .Z(N43) );
  GTECH_OAI21 U171 ( .A(ss[6]), .B(n164), .C(n165), .Z(n163) );
  GTECH_AND2 U172 ( .A(n166), .B(ss[6]), .Z(n162) );
  GTECH_MUX2 U173 ( .A(n167), .B(n168), .S(ss[6]), .Z(N41) );
  GTECH_NOT U174 ( .A(n165), .Z(n168) );
  GTECH_OAI21 U175 ( .A(n169), .B(n170), .C(n171), .Z(n165) );
  GTECH_AND2 U176 ( .A(ss[5]), .B(n166), .Z(n167) );
  GTECH_MUX2 U177 ( .A(n166), .B(N39), .S(ss[5]), .Z(N40) );
  GTECH_NOT U178 ( .A(n172), .Z(n166) );
  GTECH_NAND2 U179 ( .A(n171), .B(ss[4]), .Z(n172) );
  GTECH_NOT U180 ( .A(n173), .Z(N39) );
  GTECH_NAND2 U181 ( .A(n171), .B(n169), .Z(n173) );
  GTECH_NOT U182 ( .A(ss[4]), .Z(n169) );
  GTECH_NOT U183 ( .A(n164), .Z(n171) );
  GTECH_NAND2 U184 ( .A(n174), .B(n175), .Z(n164) );
  GTECH_NOT U185 ( .A(N58), .Z(n175) );
  GTECH_NAND2 U186 ( .A(n122), .B(n176), .Z(N58) );
  GTECH_MUX2 U187 ( .A(n177), .B(n178), .S(ss[3]), .Z(N26) );
  GTECH_OAI21 U188 ( .A(ss[2]), .B(n179), .C(n180), .Z(n178) );
  GTECH_NOT U189 ( .A(n181), .Z(n180) );
  GTECH_AND2 U190 ( .A(ss[2]), .B(n182), .Z(n177) );
  GTECH_NAND2 U191 ( .A(n122), .B(n183), .Z(N25) );
  GTECH_NOT U192 ( .A(ena), .Z(n183) );
  GTECH_MUX2 U193 ( .A(n182), .B(n181), .S(ss[2]), .Z(N24) );
  GTECH_OAI21 U194 ( .A(ss[1]), .B(n179), .C(n184), .Z(n181) );
  GTECH_NOT U195 ( .A(n185), .Z(n182) );
  GTECH_NAND3 U196 ( .A(n186), .B(ss[0]), .C(ss[1]), .Z(n185) );
  GTECH_MUX2 U197 ( .A(n187), .B(N22), .S(ss[1]), .Z(N23) );
  GTECH_AND2 U198 ( .A(n186), .B(ss[0]), .Z(n187) );
  GTECH_NOT U199 ( .A(n184), .Z(N22) );
  GTECH_NAND2 U200 ( .A(n186), .B(n188), .Z(n184) );
  GTECH_NOT U201 ( .A(ss[0]), .Z(n188) );
  GTECH_NOT U202 ( .A(n179), .Z(n186) );
  GTECH_NAND2 U203 ( .A(ena), .B(n189), .Z(n179) );
  GTECH_NOT U204 ( .A(N42), .Z(n189) );
  GTECH_NAND2 U205 ( .A(n122), .B(n190), .Z(N42) );
  GTECH_AND2 U206 ( .A(n191), .B(n9), .Z(N122) );
  GTECH_NOT U207 ( .A(n192), .Z(n191) );
  GTECH_NAND2 U208 ( .A(n122), .B(n192), .Z(N121) );
  GTECH_NAND5 U209 ( .A(n132), .B(n8), .C(n7), .D(n5), .E(n193), .Z(n192) );
  GTECH_AND5 U210 ( .A(n128), .B(n194), .C(n101), .D(n4), .E(n6), .Z(n193) );
  GTECH_AND2 U211 ( .A(n195), .B(n196), .Z(N116) );
  GTECH_XNOR2 U212 ( .A(n5), .B(n197), .Z(n196) );
  GTECH_AND_NOT U213 ( .A(n198), .B(n4), .Z(n197) );
  GTECH_NAND3 U214 ( .A(n131), .B(n122), .C(n130), .Z(N115) );
  GTECH_NAND5 U215 ( .A(n8), .B(n7), .C(n5), .D(n4), .E(n199), .Z(n130) );
  GTECH_AND5 U216 ( .A(n194), .B(n127), .C(n200), .D(n102), .E(n101), .Z(n199)
         );
  GTECH_NOT U217 ( .A(n6), .Z(n127) );
  GTECH_AND2 U218 ( .A(n201), .B(n195), .Z(N114) );
  GTECH_XNOR2 U219 ( .A(n4), .B(n198), .Z(n201) );
  GTECH_NOT U220 ( .A(n202), .Z(n198) );
  GTECH_NAND2 U221 ( .A(n203), .B(n194), .Z(n202) );
  GTECH_NOT U222 ( .A(n8), .Z(n203) );
  GTECH_AND2 U223 ( .A(n195), .B(n204), .Z(N112) );
  GTECH_XNOR2 U224 ( .A(n8), .B(n194), .Z(n204) );
  GTECH_NOT U225 ( .A(n205), .Z(n195) );
  GTECH_OAI21 U226 ( .A(n205), .B(n194), .C(n122), .Z(N110) );
  GTECH_NOT U227 ( .A(n117), .Z(n194) );
  GTECH_NAND2 U228 ( .A(n206), .B(n132), .Z(n205) );
  GTECH_NOT U229 ( .A(n123), .Z(n132) );
  GTECH_NAND2 U230 ( .A(n200), .B(n122), .Z(n123) );
  GTECH_NOT U231 ( .A(reset), .Z(n122) );
  GTECH_NOT U232 ( .A(n131), .Z(n206) );
  GTECH_NAND5 U233 ( .A(n128), .B(n207), .C(n200), .D(n6), .E(n101), .Z(n131)
         );
  GTECH_NOT U234 ( .A(n144), .Z(n200) );
  GTECH_NAND3 U235 ( .A(n145), .B(n208), .C(n105), .Z(n144) );
  GTECH_NOT U236 ( .A(n137), .Z(n208) );
  GTECH_NAND3 U237 ( .A(n136), .B(n142), .C(n103), .Z(n137) );
  GTECH_NOT U238 ( .A(n106), .Z(n142) );
  GTECH_NOT U239 ( .A(n104), .Z(n136) );
  GTECH_NOT U240 ( .A(n161), .Z(n145) );
  GTECH_NAND5 U241 ( .A(n209), .B(n155), .C(n159), .D(n109), .E(n108), .Z(n161) );
  GTECH_NOT U242 ( .A(n176), .Z(n159) );
  GTECH_NAND5 U243 ( .A(n170), .B(n210), .C(n174), .D(ss[6]), .E(ss[4]), .Z(
        n176) );
  GTECH_NOT U244 ( .A(n190), .Z(n174) );
  GTECH_NAND5 U245 ( .A(n211), .B(n212), .C(ena), .D(ss[3]), .E(ss[0]), .Z(
        n190) );
  GTECH_NOT U246 ( .A(ss[2]), .Z(n212) );
  GTECH_NOT U247 ( .A(ss[1]), .Z(n211) );
  GTECH_NOT U248 ( .A(ss[7]), .Z(n210) );
  GTECH_NOT U249 ( .A(ss[5]), .Z(n170) );
  GTECH_NOT U250 ( .A(n3), .Z(n155) );
  GTECH_NOT U251 ( .A(n107), .Z(n209) );
  GTECH_NOT U252 ( .A(n7), .Z(n207) );
  GTECH_NOT U253 ( .A(n102), .Z(n128) );
endmodule

