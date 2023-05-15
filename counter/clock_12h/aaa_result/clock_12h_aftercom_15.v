
module clock_12h ( clk, reset, ena, pm, hh, mm, ss );
  output [7:0] hh;
  output [7:0] mm;
  output [7:0] ss;
  input clk, reset, ena;
  output pm;
  wire   N22, N23, N24, N25, N26, N39, N40, N41, N42, N43, N55, N56, N57, N58,
         N59, N71, N72, N73, N74, N75, N88, N89, N90, N91, N92, N110, N112,
         N114, N115, N116, N121, N122, n3, n4, n5, n6, n7, n8, n9, n75, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210;

  GTECH_FJK1S ss_ones_reg_0_ ( .J(n75), .K(n75), .TI(N22), .TE(N25), .CP(clk), 
        .Q(ss[0]) );
  GTECH_FJK1S ss_ones_reg_1_ ( .J(n75), .K(n75), .TI(N23), .TE(N25), .CP(clk), 
        .Q(ss[1]) );
  GTECH_FJK1S ss_ones_reg_2_ ( .J(n75), .K(n75), .TI(N24), .TE(N25), .CP(clk), 
        .Q(ss[2]) );
  GTECH_FJK1S ss_ones_reg_3_ ( .J(n75), .K(n75), .TI(N26), .TE(N25), .CP(clk), 
        .Q(ss[3]) );
  GTECH_FJK1S ss_tens_reg_0_ ( .J(n75), .K(n75), .TI(N39), .TE(N42), .CP(clk), 
        .Q(ss[4]) );
  GTECH_FJK1S ss_tens_reg_3_ ( .J(n75), .K(n75), .TI(N43), .TE(N42), .CP(clk), 
        .Q(ss[7]) );
  GTECH_FJK1S ss_tens_reg_1_ ( .J(n75), .K(n75), .TI(N40), .TE(N42), .CP(clk), 
        .Q(ss[5]) );
  GTECH_FJK1S ss_tens_reg_2_ ( .J(n75), .K(n75), .TI(N41), .TE(N42), .CP(clk), 
        .Q(ss[6]) );
  GTECH_FJK1S mm_ones_reg_0_ ( .J(n75), .K(n75), .TI(N55), .TE(N58), .CP(clk), 
        .Q(mm[0]), .QN(n107) );
  GTECH_FJK1S mm_ones_reg_1_ ( .J(n75), .K(n75), .TI(N56), .TE(N58), .CP(clk), 
        .Q(mm[1]), .QN(n108) );
  GTECH_FJK1S mm_ones_reg_2_ ( .J(n75), .K(n75), .TI(N57), .TE(N58), .CP(clk), 
        .Q(mm[2]), .QN(n109) );
  GTECH_FJK1S mm_ones_reg_3_ ( .J(n75), .K(n75), .TI(N59), .TE(N58), .CP(clk), 
        .Q(mm[3]), .QN(n106) );
  GTECH_FJK1S mm_tens_reg_0_ ( .J(n75), .K(n75), .TI(N71), .TE(N74), .CP(clk), 
        .Q(mm[4]), .QN(n3) );
  GTECH_FJK1S mm_tens_reg_3_ ( .J(n75), .K(n75), .TI(N75), .TE(N74), .CP(clk), 
        .Q(mm[7]), .QN(n103) );
  GTECH_FJK1S mm_tens_reg_1_ ( .J(n75), .K(n75), .TI(N72), .TE(N74), .CP(clk), 
        .Q(mm[5]), .QN(n105) );
  GTECH_FJK1S mm_tens_reg_2_ ( .J(n75), .K(n75), .TI(N73), .TE(N74), .CP(clk), 
        .Q(mm[6]), .QN(n104) );
  GTECH_FJK1S hh_tens_reg_0_ ( .J(n75), .K(n75), .TI(N110), .TE(N115), .CP(clk), .Q(hh[4]), .QN(n4) );
  GTECH_FJK1S hh_tens_reg_2_ ( .J(n75), .K(n75), .TI(N114), .TE(N115), .CP(clk), .Q(hh[6]), .QN(n5) );
  GTECH_FJK1S hh_tens_reg_3_ ( .J(n75), .K(n75), .TI(N116), .TE(N115), .CP(clk), .Q(hh[7]), .QN(n6) );
  GTECH_FJK1S hh_ones_reg_0_ ( .J(n75), .K(n75), .TI(N88), .TE(N91), .CP(clk), 
        .Q(hh[0]), .QN(n7) );
  GTECH_FJK1S hh_ones_reg_1_ ( .J(n75), .K(n75), .TI(N89), .TE(N91), .CP(clk), 
        .Q(hh[1]), .QN(n102) );
  GTECH_FJK1S hh_ones_reg_2_ ( .J(n75), .K(n75), .TI(N90), .TE(N91), .CP(clk), 
        .Q(hh[2]), .QN(n101) );
  GTECH_FJK1S hh_ones_reg_3_ ( .J(n75), .K(n75), .TI(N92), .TE(N91), .CP(clk), 
        .Q(hh[3]), .QN(n100) );
  GTECH_FJK1S hh_tens_reg_1_ ( .J(n75), .K(n75), .TI(N112), .TE(N115), .CP(clk), .Q(hh[5]), .QN(n8) );
  GTECH_FJK1S pm_temp_reg ( .J(n75), .K(n75), .TI(N122), .TE(N121), .CP(clk), 
        .Q(pm), .QN(n9) );
  GTECH_ZERO U125 ( .Z(n75) );
  GTECH_AND2 U126 ( .A(n117), .B(n118), .Z(N92) );
  GTECH_XNOR2 U127 ( .A(n119), .B(n100), .Z(n117) );
  GTECH_NOR2 U128 ( .A(n101), .B(n120), .Z(n119) );
  GTECH_NAND2 U129 ( .A(n121), .B(n122), .Z(N91) );
  GTECH_AND2 U130 ( .A(n123), .B(n118), .Z(N90) );
  GTECH_NOT U131 ( .A(n124), .Z(n118) );
  GTECH_XOR2 U132 ( .A(n120), .B(n101), .Z(n123) );
  GTECH_NAND2 U133 ( .A(n125), .B(n126), .Z(n120) );
  GTECH_OAI21 U134 ( .A(n127), .B(n124), .C(n121), .Z(N89) );
  GTECH_OA21 U135 ( .A(n102), .B(n125), .C(n128), .Z(n127) );
  GTECH_OAI22 U136 ( .A(n122), .B(n129), .C(n125), .D(n124), .Z(N88) );
  GTECH_NAND3 U137 ( .A(n129), .B(n130), .C(n131), .Z(n124) );
  GTECH_MUX2 U138 ( .A(n132), .B(n133), .S(n103), .Z(N75) );
  GTECH_AND2 U139 ( .A(n134), .B(n135), .Z(n133) );
  GTECH_OAI21 U140 ( .A(n136), .B(n135), .C(n137), .Z(n132) );
  GTECH_NOT U141 ( .A(n138), .Z(n137) );
  GTECH_NOT U142 ( .A(n104), .Z(n135) );
  GTECH_MUX2 U143 ( .A(n138), .B(n139), .S(n104), .Z(N73) );
  GTECH_AND2 U144 ( .A(n134), .B(n140), .Z(n139) );
  GTECH_OAI21 U145 ( .A(n140), .B(n136), .C(n141), .Z(n138) );
  GTECH_MUX2 U146 ( .A(N71), .B(n134), .S(n105), .Z(N72) );
  GTECH_NOT U147 ( .A(n142), .Z(n134) );
  GTECH_NAND2 U148 ( .A(n143), .B(n144), .Z(n142) );
  GTECH_NOT U149 ( .A(n3), .Z(n144) );
  GTECH_NOT U150 ( .A(n141), .Z(N71) );
  GTECH_NAND2 U151 ( .A(n3), .B(n143), .Z(n141) );
  GTECH_NOT U152 ( .A(n136), .Z(n143) );
  GTECH_NAND3 U153 ( .A(n145), .B(n121), .C(n146), .Z(n136) );
  GTECH_NOT U154 ( .A(n147), .Z(n146) );
  GTECH_MUX2 U155 ( .A(n148), .B(n149), .S(n106), .Z(N59) );
  GTECH_AND2 U156 ( .A(n150), .B(n151), .Z(n149) );
  GTECH_OAI21 U157 ( .A(n151), .B(n152), .C(n153), .Z(n148) );
  GTECH_NOT U158 ( .A(n154), .Z(n153) );
  GTECH_MUX2 U159 ( .A(n154), .B(n150), .S(n109), .Z(N57) );
  GTECH_NOT U160 ( .A(n155), .Z(n150) );
  GTECH_NAND3 U161 ( .A(n156), .B(n157), .C(n158), .Z(n155) );
  GTECH_OAI21 U162 ( .A(n157), .B(n152), .C(n159), .Z(n154) );
  GTECH_MUX2 U163 ( .A(N55), .B(n160), .S(n108), .Z(N56) );
  GTECH_AND2 U164 ( .A(n158), .B(n156), .Z(n160) );
  GTECH_NOT U165 ( .A(n107), .Z(n156) );
  GTECH_NOT U166 ( .A(n159), .Z(N55) );
  GTECH_NAND2 U167 ( .A(n107), .B(n158), .Z(n159) );
  GTECH_NOT U168 ( .A(n152), .Z(n158) );
  GTECH_NAND2 U169 ( .A(n161), .B(n162), .Z(n152) );
  GTECH_NOT U170 ( .A(N74), .Z(n162) );
  GTECH_NAND2 U171 ( .A(n121), .B(n147), .Z(N74) );
  GTECH_NOT U172 ( .A(n163), .Z(n161) );
  GTECH_MUX2 U173 ( .A(n164), .B(n165), .S(ss[7]), .Z(N43) );
  GTECH_OAI21 U174 ( .A(ss[6]), .B(n166), .C(n167), .Z(n165) );
  GTECH_NOT U175 ( .A(n168), .Z(n167) );
  GTECH_AND2 U176 ( .A(n169), .B(ss[6]), .Z(n164) );
  GTECH_MUX2 U177 ( .A(n170), .B(n168), .S(ss[6]), .Z(N41) );
  GTECH_OAI21 U178 ( .A(ss[5]), .B(n166), .C(n171), .Z(n168) );
  GTECH_AND2 U179 ( .A(ss[5]), .B(n169), .Z(n170) );
  GTECH_MUX2 U180 ( .A(n169), .B(N39), .S(ss[5]), .Z(N40) );
  GTECH_NOT U181 ( .A(n172), .Z(n169) );
  GTECH_NAND2 U182 ( .A(n173), .B(ss[4]), .Z(n172) );
  GTECH_NOT U183 ( .A(n171), .Z(N39) );
  GTECH_NAND2 U184 ( .A(n173), .B(n174), .Z(n171) );
  GTECH_NOT U185 ( .A(n166), .Z(n173) );
  GTECH_NAND2 U186 ( .A(n175), .B(n176), .Z(n166) );
  GTECH_NOT U187 ( .A(N58), .Z(n176) );
  GTECH_NAND2 U188 ( .A(n121), .B(n163), .Z(N58) );
  GTECH_NOT U189 ( .A(n177), .Z(n175) );
  GTECH_MUX2 U190 ( .A(n178), .B(n179), .S(ss[3]), .Z(N26) );
  GTECH_OAI21 U191 ( .A(ss[2]), .B(n180), .C(n181), .Z(n179) );
  GTECH_NOT U192 ( .A(n182), .Z(n181) );
  GTECH_AND2 U193 ( .A(ss[2]), .B(n183), .Z(n178) );
  GTECH_NAND2 U194 ( .A(n121), .B(n184), .Z(N25) );
  GTECH_MUX2 U195 ( .A(n183), .B(n182), .S(ss[2]), .Z(N24) );
  GTECH_OAI21 U196 ( .A(ss[1]), .B(n180), .C(n185), .Z(n182) );
  GTECH_NOT U197 ( .A(n186), .Z(n183) );
  GTECH_NAND3 U198 ( .A(n187), .B(ss[0]), .C(ss[1]), .Z(n186) );
  GTECH_MUX2 U199 ( .A(n188), .B(N22), .S(ss[1]), .Z(N23) );
  GTECH_AND2 U200 ( .A(n187), .B(ss[0]), .Z(n188) );
  GTECH_NOT U201 ( .A(n185), .Z(N22) );
  GTECH_NAND2 U202 ( .A(n187), .B(n189), .Z(n185) );
  GTECH_NOT U203 ( .A(n180), .Z(n187) );
  GTECH_NAND2 U204 ( .A(ena), .B(n190), .Z(n180) );
  GTECH_NOT U205 ( .A(N42), .Z(n190) );
  GTECH_NAND2 U206 ( .A(n121), .B(n177), .Z(N42) );
  GTECH_AND2 U207 ( .A(n191), .B(n9), .Z(N122) );
  GTECH_NOT U208 ( .A(n192), .Z(n191) );
  GTECH_NAND2 U209 ( .A(n121), .B(n192), .Z(N121) );
  GTECH_NAND3 U210 ( .A(n193), .B(n194), .C(n131), .Z(n192) );
  GTECH_AND2 U211 ( .A(n195), .B(n196), .Z(N116) );
  GTECH_XNOR2 U212 ( .A(n197), .B(n6), .Z(n195) );
  GTECH_NOR2 U213 ( .A(n5), .B(n198), .Z(n197) );
  GTECH_NAND3 U214 ( .A(n130), .B(n121), .C(n129), .Z(N115) );
  GTECH_NAND4 U215 ( .A(n7), .B(n193), .C(n199), .D(n126), .Z(n129) );
  GTECH_NOT U216 ( .A(n102), .Z(n126) );
  GTECH_AND3 U217 ( .A(n6), .B(n5), .C(n200), .Z(n193) );
  GTECH_AND4 U218 ( .A(n201), .B(n100), .C(n101), .D(n8), .Z(n200) );
  GTECH_AND2 U219 ( .A(n202), .B(n196), .Z(N114) );
  GTECH_XOR2 U220 ( .A(n198), .B(n5), .Z(n202) );
  GTECH_NAND2 U221 ( .A(n203), .B(n201), .Z(n198) );
  GTECH_NOT U222 ( .A(n8), .Z(n203) );
  GTECH_AND2 U223 ( .A(n196), .B(n204), .Z(N112) );
  GTECH_XOR2 U224 ( .A(n8), .B(n4), .Z(n204) );
  GTECH_NOT U225 ( .A(n205), .Z(n196) );
  GTECH_OAI21 U226 ( .A(n205), .B(n201), .C(n121), .Z(N110) );
  GTECH_NOT U227 ( .A(n4), .Z(n201) );
  GTECH_NAND2 U228 ( .A(n206), .B(n131), .Z(n205) );
  GTECH_NOT U229 ( .A(n122), .Z(n131) );
  GTECH_NAND2 U230 ( .A(n199), .B(n121), .Z(n122) );
  GTECH_NOT U231 ( .A(reset), .Z(n121) );
  GTECH_NOT U232 ( .A(n130), .Z(n206) );
  GTECH_NAND4 U233 ( .A(n101), .B(n194), .C(n199), .D(n207), .Z(n130) );
  GTECH_NOT U234 ( .A(n100), .Z(n207) );
  GTECH_NOT U235 ( .A(n145), .Z(n199) );
  GTECH_OR5 U236 ( .A(n3), .B(n104), .C(n147), .D(n208), .E(n140), .Z(n145) );
  GTECH_NOT U237 ( .A(n105), .Z(n140) );
  GTECH_NOT U238 ( .A(n103), .Z(n208) );
  GTECH_OR5 U239 ( .A(n107), .B(n106), .C(n163), .D(n157), .E(n151), .Z(n147)
         );
  GTECH_NOT U240 ( .A(n109), .Z(n151) );
  GTECH_NOT U241 ( .A(n108), .Z(n157) );
  GTECH_OR5 U242 ( .A(ss[7]), .B(ss[5]), .C(n177), .D(n174), .E(n209), .Z(n163) );
  GTECH_NOT U243 ( .A(ss[6]), .Z(n209) );
  GTECH_NOT U244 ( .A(ss[4]), .Z(n174) );
  GTECH_OR5 U245 ( .A(ss[2]), .B(ss[1]), .C(n184), .D(n189), .E(n210), .Z(n177) );
  GTECH_NOT U246 ( .A(ss[3]), .Z(n210) );
  GTECH_NOT U247 ( .A(ss[0]), .Z(n189) );
  GTECH_NOT U248 ( .A(ena), .Z(n184) );
  GTECH_NOT U249 ( .A(n128), .Z(n194) );
  GTECH_NAND2 U250 ( .A(n102), .B(n125), .Z(n128) );
  GTECH_NOT U251 ( .A(n7), .Z(n125) );
endmodule

