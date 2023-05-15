
module clock_12h ( clk, reset, ena, pm, hh, mm, ss );
  output [7:0] hh;
  output [7:0] mm;
  output [7:0] ss;
  input clk, reset, ena;
  output pm;
  wire   N22, N23, N24, N25, N26, N39, N40, N41, N42, N43, N55, N56, N57, N58,
         N59, N71, N72, N73, N74, N75, N88, N89, N90, N91, N92, N110, N112,
         N114, N115, N116, N121, N122, n4, n5, n6, n7, n8, n9, n10, n77, n102,
         n103, n104, n105, n106, n107, n108, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211;

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
        .Q(mm[3]), .QN(n106) );
  GTECH_FJK1S mm_ones_reg_1_ ( .J(n77), .K(n77), .TI(N56), .TE(N58), .CP(clk), 
        .Q(mm[1]), .QN(n108) );
  GTECH_FJK1S mm_ones_reg_2_ ( .J(n77), .K(n77), .TI(N57), .TE(N58), .CP(clk), 
        .Q(mm[2]), .QN(n107) );
  GTECH_FJK1S mm_tens_reg_0_ ( .J(n77), .K(n77), .TI(N71), .TE(N74), .CP(clk), 
        .Q(mm[4]), .QN(n105) );
  GTECH_FJK1S mm_tens_reg_2_ ( .J(n77), .K(n77), .TI(N73), .TE(N74), .CP(clk), 
        .Q(mm[6]), .QN(n103) );
  GTECH_FJK1S mm_tens_reg_1_ ( .J(n77), .K(n77), .TI(N72), .TE(N74), .CP(clk), 
        .Q(mm[5]), .QN(n104) );
  GTECH_FJK1S mm_tens_reg_3_ ( .J(n77), .K(n77), .TI(N75), .TE(N74), .CP(clk), 
        .Q(mm[7]), .QN(n5) );
  GTECH_FJK1S hh_tens_reg_0_ ( .J(n77), .K(n77), .TI(N110), .TE(N115), .CP(clk), .Q(hh[4]), .QN(n115) );
  GTECH_FJK1S hh_tens_reg_2_ ( .J(n77), .K(n77), .TI(N114), .TE(N115), .CP(clk), .Q(hh[6]), .QN(n6) );
  GTECH_FJK1S hh_tens_reg_3_ ( .J(n77), .K(n77), .TI(N116), .TE(N115), .CP(clk), .Q(hh[7]), .QN(n7) );
  GTECH_FJK1S hh_ones_reg_0_ ( .J(n77), .K(n77), .TI(N88), .TE(N91), .CP(clk), 
        .Q(hh[0]), .QN(n102) );
  GTECH_FJK1S hh_ones_reg_1_ ( .J(n77), .K(n77), .TI(N89), .TE(N91), .CP(clk), 
        .Q(hh[1]), .QN(n117) );
  GTECH_FJK1S hh_ones_reg_2_ ( .J(n77), .K(n77), .TI(N90), .TE(N91), .CP(clk), 
        .Q(hh[2]), .QN(n8) );
  GTECH_FJK1S hh_ones_reg_3_ ( .J(n77), .K(n77), .TI(N92), .TE(N91), .CP(clk), 
        .Q(hh[3]), .QN(n116) );
  GTECH_FJK1S hh_tens_reg_1_ ( .J(n77), .K(n77), .TI(N112), .TE(N115), .CP(clk), .Q(hh[5]), .QN(n9) );
  GTECH_FJK1S pm_temp_reg ( .J(n77), .K(n77), .TI(N122), .TE(N121), .CP(clk), 
        .Q(pm), .QN(n10) );
  GTECH_ZERO U126 ( .Z(n77) );
  GTECH_AND2 U127 ( .A(n118), .B(n119), .Z(N92) );
  GTECH_XOR2 U128 ( .A(n120), .B(n116), .Z(n118) );
  GTECH_OR2 U129 ( .A(n8), .B(n121), .Z(n120) );
  GTECH_NAND2 U130 ( .A(n122), .B(n123), .Z(N91) );
  GTECH_AND2 U131 ( .A(n124), .B(n119), .Z(N90) );
  GTECH_XOR2 U132 ( .A(n121), .B(n8), .Z(n124) );
  GTECH_NAND2 U133 ( .A(n125), .B(n126), .Z(n121) );
  GTECH_AO21 U134 ( .A(n119), .B(n127), .C(reset), .Z(N89) );
  GTECH_XOR2 U135 ( .A(n117), .B(n102), .Z(n127) );
  GTECH_NOT U136 ( .A(n128), .Z(n119) );
  GTECH_OAI22 U137 ( .A(n123), .B(n129), .C(n126), .D(n128), .Z(N88) );
  GTECH_NAND3 U138 ( .A(n129), .B(n130), .C(n131), .Z(n128) );
  GTECH_OAI22 U139 ( .A(n5), .B(n132), .C(n133), .D(n134), .Z(N75) );
  GTECH_OA21 U140 ( .A(n5), .B(n135), .C(n136), .Z(n133) );
  GTECH_OAI22 U141 ( .A(n135), .B(n137), .C(n103), .D(n132), .Z(N73) );
  GTECH_NOT U142 ( .A(n138), .Z(n132) );
  GTECH_AO21 U143 ( .A(n139), .B(n104), .C(N71), .Z(n138) );
  GTECH_NAND3 U144 ( .A(n140), .B(n141), .C(n139), .Z(n137) );
  GTECH_OAI22 U145 ( .A(n140), .B(n142), .C(n104), .D(n143), .Z(N72) );
  GTECH_NAND2 U146 ( .A(n139), .B(n141), .Z(n142) );
  GTECH_NOT U147 ( .A(n104), .Z(n140) );
  GTECH_NOT U148 ( .A(n143), .Z(N71) );
  GTECH_NAND2 U149 ( .A(n105), .B(n139), .Z(n143) );
  GTECH_NOT U150 ( .A(n134), .Z(n139) );
  GTECH_NAND3 U151 ( .A(n144), .B(n122), .C(n145), .Z(n134) );
  GTECH_OAI22 U152 ( .A(n146), .B(n147), .C(n106), .D(n148), .Z(N59) );
  GTECH_OA21 U153 ( .A(n149), .B(n150), .C(n151), .Z(n148) );
  GTECH_NAND3 U154 ( .A(n149), .B(n152), .C(n153), .Z(n147) );
  GTECH_OAI22 U155 ( .A(n149), .B(n154), .C(n107), .D(n151), .Z(N57) );
  GTECH_NOT U156 ( .A(n155), .Z(n151) );
  GTECH_AO21 U157 ( .A(n156), .B(n108), .C(N55), .Z(n155) );
  GTECH_NAND2 U158 ( .A(n153), .B(n152), .Z(n154) );
  GTECH_NOT U159 ( .A(n157), .Z(n153) );
  GTECH_NOT U160 ( .A(n107), .Z(n149) );
  GTECH_OAI22 U161 ( .A(n152), .B(n157), .C(n108), .D(n158), .Z(N56) );
  GTECH_NAND2 U162 ( .A(n156), .B(n159), .Z(n157) );
  GTECH_NOT U163 ( .A(n108), .Z(n152) );
  GTECH_NOT U164 ( .A(n158), .Z(N55) );
  GTECH_NAND2 U165 ( .A(n4), .B(n156), .Z(n158) );
  GTECH_NOT U166 ( .A(n150), .Z(n156) );
  GTECH_NAND2 U167 ( .A(n160), .B(n161), .Z(n150) );
  GTECH_NOT U168 ( .A(N74), .Z(n161) );
  GTECH_NAND2 U169 ( .A(n122), .B(n162), .Z(N74) );
  GTECH_OAI22 U170 ( .A(n163), .B(n164), .C(n165), .D(n166), .Z(N43) );
  GTECH_OA21 U171 ( .A(ss[6]), .B(n164), .C(n167), .Z(n165) );
  GTECH_NOT U172 ( .A(n168), .Z(n163) );
  GTECH_OAI2N2 U173 ( .A(ss[6]), .B(n169), .C(ss[6]), .D(n168), .Z(N41) );
  GTECH_AO21 U174 ( .A(n170), .B(n171), .C(N39), .Z(n168) );
  GTECH_NAND3 U175 ( .A(ss[4]), .B(ss[5]), .C(n170), .Z(n169) );
  GTECH_OAI22 U176 ( .A(n171), .B(n172), .C(ss[5]), .D(n173), .Z(N40) );
  GTECH_NAND2 U177 ( .A(n170), .B(ss[4]), .Z(n173) );
  GTECH_NOT U178 ( .A(n172), .Z(N39) );
  GTECH_NAND2 U179 ( .A(n170), .B(n174), .Z(n172) );
  GTECH_NOT U180 ( .A(ss[4]), .Z(n174) );
  GTECH_NOT U181 ( .A(n166), .Z(n170) );
  GTECH_NAND2 U182 ( .A(n175), .B(n176), .Z(n166) );
  GTECH_NOT U183 ( .A(N58), .Z(n176) );
  GTECH_NAND2 U184 ( .A(n122), .B(n177), .Z(N58) );
  GTECH_OAI22 U185 ( .A(ss[3]), .B(n178), .C(n179), .D(n180), .Z(N26) );
  GTECH_NOT U186 ( .A(ss[3]), .Z(n180) );
  GTECH_OA21 U187 ( .A(n181), .B(ss[2]), .C(n182), .Z(n179) );
  GTECH_OR_NOT U188 ( .A(n183), .B(ss[2]), .Z(n178) );
  GTECH_NAND2 U189 ( .A(n122), .B(n184), .Z(N25) );
  GTECH_NOT U190 ( .A(ena), .Z(n184) );
  GTECH_OAI22 U191 ( .A(n182), .B(n185), .C(ss[2]), .D(n183), .Z(N24) );
  GTECH_NAND3 U192 ( .A(n186), .B(ss[0]), .C(ss[1]), .Z(n183) );
  GTECH_NOT U193 ( .A(n187), .Z(n182) );
  GTECH_AO21 U194 ( .A(n186), .B(n188), .C(N22), .Z(n187) );
  GTECH_OAI22 U195 ( .A(n188), .B(n189), .C(ss[1]), .D(n190), .Z(N23) );
  GTECH_NAND2 U196 ( .A(n186), .B(ss[0]), .Z(n190) );
  GTECH_NOT U197 ( .A(n189), .Z(N22) );
  GTECH_NAND2 U198 ( .A(n186), .B(n191), .Z(n189) );
  GTECH_NOT U199 ( .A(ss[0]), .Z(n191) );
  GTECH_NOT U200 ( .A(n181), .Z(n186) );
  GTECH_NAND2 U201 ( .A(ena), .B(n192), .Z(n181) );
  GTECH_NOT U202 ( .A(N42), .Z(n192) );
  GTECH_NAND2 U203 ( .A(n122), .B(n193), .Z(N42) );
  GTECH_AND2 U204 ( .A(n194), .B(n10), .Z(N122) );
  GTECH_NOT U205 ( .A(n195), .Z(n194) );
  GTECH_NAND2 U206 ( .A(n122), .B(n195), .Z(N121) );
  GTECH_NAND4 U207 ( .A(n131), .B(n196), .C(n117), .D(n126), .Z(n195) );
  GTECH_AND2 U208 ( .A(n197), .B(n198), .Z(N116) );
  GTECH_XOR2 U209 ( .A(n199), .B(n7), .Z(n197) );
  GTECH_OR2 U210 ( .A(n6), .B(n200), .Z(n199) );
  GTECH_NAND3 U211 ( .A(n130), .B(n122), .C(n129), .Z(N115) );
  GTECH_NAND4 U212 ( .A(n102), .B(n196), .C(n201), .D(n125), .Z(n129) );
  GTECH_NOT U213 ( .A(n117), .Z(n125) );
  GTECH_AND3 U214 ( .A(n7), .B(n6), .C(n202), .Z(n196) );
  GTECH_AND4 U215 ( .A(n203), .B(n116), .C(n8), .D(n9), .Z(n202) );
  GTECH_AND2 U216 ( .A(n204), .B(n198), .Z(N114) );
  GTECH_XOR2 U217 ( .A(n200), .B(n6), .Z(n204) );
  GTECH_NAND2 U218 ( .A(n205), .B(n203), .Z(n200) );
  GTECH_NOT U219 ( .A(n115), .Z(n203) );
  GTECH_NOT U220 ( .A(n9), .Z(n205) );
  GTECH_AND2 U221 ( .A(n198), .B(n206), .Z(N112) );
  GTECH_XOR2 U222 ( .A(n9), .B(n115), .Z(n206) );
  GTECH_AO21 U223 ( .A(n115), .B(n198), .C(reset), .Z(N110) );
  GTECH_NOT U224 ( .A(n207), .Z(n198) );
  GTECH_NAND2 U225 ( .A(n208), .B(n131), .Z(n207) );
  GTECH_NOT U226 ( .A(n123), .Z(n131) );
  GTECH_NAND2 U227 ( .A(n201), .B(n122), .Z(n123) );
  GTECH_NOT U228 ( .A(reset), .Z(n122) );
  GTECH_NOT U229 ( .A(n130), .Z(n208) );
  GTECH_NAND5 U230 ( .A(n126), .B(n209), .C(n201), .D(n8), .E(n117), .Z(n130)
         );
  GTECH_NOT U231 ( .A(n144), .Z(n201) );
  GTECH_NAND3 U232 ( .A(n210), .B(n145), .C(n104), .Z(n144) );
  GTECH_NOT U233 ( .A(n162), .Z(n145) );
  GTECH_NAND5 U234 ( .A(n146), .B(n159), .C(n160), .D(n108), .E(n107), .Z(n162) );
  GTECH_NOT U235 ( .A(n177), .Z(n160) );
  GTECH_NAND3 U236 ( .A(n211), .B(n171), .C(n175), .Z(n177) );
  GTECH_NOT U237 ( .A(n193), .Z(n175) );
  GTECH_NAND5 U238 ( .A(n188), .B(n185), .C(ena), .D(ss[3]), .E(ss[0]), .Z(
        n193) );
  GTECH_NOT U239 ( .A(ss[2]), .Z(n185) );
  GTECH_NOT U240 ( .A(ss[1]), .Z(n188) );
  GTECH_NOT U241 ( .A(ss[5]), .Z(n171) );
  GTECH_NOT U242 ( .A(n167), .Z(n211) );
  GTECH_NAND3 U243 ( .A(ss[4]), .B(n164), .C(ss[6]), .Z(n167) );
  GTECH_NOT U244 ( .A(ss[7]), .Z(n164) );
  GTECH_NOT U245 ( .A(n4), .Z(n159) );
  GTECH_NOT U246 ( .A(n106), .Z(n146) );
  GTECH_NOT U247 ( .A(n136), .Z(n210) );
  GTECH_NAND3 U248 ( .A(n135), .B(n141), .C(n5), .Z(n136) );
  GTECH_NOT U249 ( .A(n105), .Z(n141) );
  GTECH_NOT U250 ( .A(n103), .Z(n135) );
  GTECH_NOT U251 ( .A(n116), .Z(n209) );
  GTECH_NOT U252 ( .A(n102), .Z(n126) );
endmodule

