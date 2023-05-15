
module sequential_multiplication ( a, b, op, load, reset, clk, valid );
  input [7:0] a;
  input [7:0] b;
  output [15:0] op;
  input load, reset, clk;
  output valid;
  wire   u1_N9, u1_N8, u1_N7, u1_N6, u1_N5, u1_N4, u1_N3, u1_N2, u1_N1, u2_N11,
         u2_N10, u2_N9, u2_N8, u2_N7, u2_N6, u2_N5, u2_N4, u5_N68, u5_N67,
         u5_N66, u5_N65, u5_N64, u5_N63, u5_N62, u5_N61, u5_N60, u5_N59,
         u5_N58, u5_N57, u5_N56, u5_N55, u5_N54, u5_N53, u5_N52, u5_N51,
         u5_N50, u5_N49, u5_N48, u5_N47, u5_N46, u5_N45, u5_N44, u5_N43,
         u5_N42, u5_N41, u5_N40, u5_N39, u5_N38, u5_N37, u5_N36, u5_N35,
         u5_i_0_, u5_i_1_, u5_i_2_, u5_i_3_, u5_i_4_, u5_i_5_, u5_i_6_,
         u5_i_7_, u5_i_8_, u5_i_9_, u5_i_10_, u5_i_11_, u5_i_12_, u5_i_13_,
         u5_i_14_, u5_i_15_, u5_i_16_, u5_i_17_, u5_i_18_, u5_i_19_, u5_i_20_,
         u5_i_21_, u5_i_22_, u5_i_23_, u5_i_24_, u5_i_25_, u5_i_26_, u5_i_27_,
         u5_i_28_, u5_i_29_, u5_i_30_, u5_i_31_, u4_N13, u4_N10, u4_N9, u4_N8,
         u4_N7, u4_N6, u4_N5, u4_N4, u4_N3, e1_N14, e1_N11, n69, n70, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265;
  wire   [7:0] x;
  wire   [7:0] z;

  GTECH_FJK1S u1_q_reg_0_ ( .J(n70), .K(n70), .TI(u1_N1), .TE(u1_N8), .CP(clk), 
        .Q(x[0]) );
  GTECH_FJK1S u1_q_reg_1_ ( .J(n70), .K(n70), .TI(u1_N2), .TE(u1_N8), .CP(clk), 
        .Q(x[1]) );
  GTECH_FJK1S u1_q_reg_2_ ( .J(n70), .K(n70), .TI(u1_N3), .TE(u1_N8), .CP(clk), 
        .Q(x[2]) );
  GTECH_FJK1S u1_q_reg_3_ ( .J(n70), .K(n70), .TI(u1_N4), .TE(u1_N8), .CP(clk), 
        .Q(x[3]) );
  GTECH_FJK1S u1_q_reg_4_ ( .J(n70), .K(n70), .TI(u1_N5), .TE(u1_N8), .CP(clk), 
        .Q(x[4]) );
  GTECH_FJK1S u1_q_reg_5_ ( .J(n70), .K(n70), .TI(u1_N6), .TE(u1_N8), .CP(clk), 
        .Q(x[5]) );
  GTECH_FJK1S u1_q_reg_6_ ( .J(n70), .K(n70), .TI(u1_N7), .TE(u1_N8), .CP(clk), 
        .Q(x[6]) );
  GTECH_FJK1S u1_q_reg_7_ ( .J(n70), .K(n70), .TI(u1_N9), .TE(u1_N8), .CP(clk), 
        .Q(x[7]) );
  GTECH_FD1 u2_q1_reg_7_ ( .D(u2_N11), .CP(clk), .Q(z[7]) );
  GTECH_FD1 u2_q1_reg_6_ ( .D(u2_N10), .CP(clk), .Q(z[6]) );
  GTECH_FD1 u2_q1_reg_5_ ( .D(u2_N9), .CP(clk), .Q(z[5]) );
  GTECH_FD1 u2_q1_reg_4_ ( .D(u2_N8), .CP(clk), .Q(z[4]) );
  GTECH_FD1 u2_q1_reg_3_ ( .D(u2_N7), .CP(clk), .Q(z[3]) );
  GTECH_FD1 u2_q1_reg_2_ ( .D(u2_N6), .CP(clk), .Q(z[2]) );
  GTECH_FD1 u2_q1_reg_1_ ( .D(u2_N5), .CP(clk), .Q(z[1]) );
  GTECH_FD1 u2_q1_reg_0_ ( .D(u2_N4), .CP(clk), .Q(z[0]) );
  GTECH_FJK1S u5_i_reg_31_ ( .J(n70), .K(n70), .TI(u5_N67), .TE(u5_N66), .CP(
        clk), .Q(u5_i_31_) );
  GTECH_FD1 u5_l_reg ( .D(u5_N68), .CP(clk), .Q(valid), .QN(e1_N14) );
  GTECH_FJK1S u5_i_reg_0_ ( .J(n70), .K(n70), .TI(u5_N35), .TE(u5_N66), .CP(
        clk), .Q(u5_i_0_) );
  GTECH_FJK1S u5_i_reg_1_ ( .J(n70), .K(n70), .TI(u5_N36), .TE(u5_N66), .CP(
        clk), .Q(u5_i_1_) );
  GTECH_FJK1S u5_i_reg_2_ ( .J(n70), .K(n70), .TI(u5_N37), .TE(u5_N66), .CP(
        clk), .Q(u5_i_2_) );
  GTECH_FJK1S u5_i_reg_3_ ( .J(n70), .K(n70), .TI(u5_N38), .TE(u5_N66), .CP(
        clk), .Q(u5_i_3_) );
  GTECH_FJK1S u5_i_reg_4_ ( .J(n70), .K(n70), .TI(u5_N39), .TE(u5_N66), .CP(
        clk), .Q(u5_i_4_) );
  GTECH_FJK1S u5_i_reg_5_ ( .J(n70), .K(n70), .TI(u5_N40), .TE(u5_N66), .CP(
        clk), .Q(u5_i_5_) );
  GTECH_FJK1S u5_i_reg_6_ ( .J(n70), .K(n70), .TI(u5_N41), .TE(u5_N66), .CP(
        clk), .Q(u5_i_6_) );
  GTECH_FJK1S u5_i_reg_7_ ( .J(n70), .K(n70), .TI(u5_N42), .TE(u5_N66), .CP(
        clk), .Q(u5_i_7_) );
  GTECH_FJK1S u5_i_reg_8_ ( .J(n70), .K(n70), .TI(u5_N43), .TE(u5_N66), .CP(
        clk), .Q(u5_i_8_) );
  GTECH_FJK1S u5_i_reg_9_ ( .J(n70), .K(n70), .TI(u5_N44), .TE(u5_N66), .CP(
        clk), .Q(u5_i_9_) );
  GTECH_FJK1S u5_i_reg_10_ ( .J(n70), .K(n70), .TI(u5_N45), .TE(u5_N66), .CP(
        clk), .Q(u5_i_10_) );
  GTECH_FJK1S u5_i_reg_11_ ( .J(n70), .K(n70), .TI(u5_N46), .TE(u5_N66), .CP(
        clk), .Q(u5_i_11_) );
  GTECH_FJK1S u5_i_reg_12_ ( .J(n70), .K(n70), .TI(u5_N47), .TE(u5_N66), .CP(
        clk), .Q(u5_i_12_) );
  GTECH_FJK1S u5_i_reg_13_ ( .J(n70), .K(n70), .TI(u5_N48), .TE(u5_N66), .CP(
        clk), .Q(u5_i_13_) );
  GTECH_FJK1S u5_i_reg_14_ ( .J(n70), .K(n70), .TI(u5_N49), .TE(u5_N66), .CP(
        clk), .Q(u5_i_14_) );
  GTECH_FJK1S u5_i_reg_15_ ( .J(n70), .K(n70), .TI(u5_N50), .TE(u5_N66), .CP(
        clk), .Q(u5_i_15_) );
  GTECH_FJK1S u5_i_reg_16_ ( .J(n70), .K(n70), .TI(u5_N51), .TE(u5_N66), .CP(
        clk), .Q(u5_i_16_) );
  GTECH_FJK1S u5_i_reg_17_ ( .J(n70), .K(n70), .TI(u5_N52), .TE(u5_N66), .CP(
        clk), .Q(u5_i_17_) );
  GTECH_FJK1S u5_i_reg_18_ ( .J(n70), .K(n70), .TI(u5_N53), .TE(u5_N66), .CP(
        clk), .Q(u5_i_18_) );
  GTECH_FJK1S u5_i_reg_19_ ( .J(n70), .K(n70), .TI(u5_N54), .TE(u5_N66), .CP(
        clk), .Q(u5_i_19_) );
  GTECH_FJK1S u5_i_reg_20_ ( .J(n70), .K(n70), .TI(u5_N55), .TE(u5_N66), .CP(
        clk), .Q(u5_i_20_) );
  GTECH_FJK1S u5_i_reg_21_ ( .J(n70), .K(n70), .TI(u5_N56), .TE(u5_N66), .CP(
        clk), .Q(u5_i_21_) );
  GTECH_FJK1S u5_i_reg_22_ ( .J(n70), .K(n70), .TI(u5_N57), .TE(u5_N66), .CP(
        clk), .Q(u5_i_22_) );
  GTECH_FJK1S u5_i_reg_23_ ( .J(n70), .K(n70), .TI(u5_N58), .TE(u5_N66), .CP(
        clk), .Q(u5_i_23_) );
  GTECH_FJK1S u5_i_reg_24_ ( .J(n70), .K(n70), .TI(u5_N59), .TE(u5_N66), .CP(
        clk), .Q(u5_i_24_) );
  GTECH_FJK1S u5_i_reg_25_ ( .J(n70), .K(n70), .TI(u5_N60), .TE(u5_N66), .CP(
        clk), .Q(u5_i_25_) );
  GTECH_FJK1S u5_i_reg_26_ ( .J(n70), .K(n70), .TI(u5_N61), .TE(u5_N66), .CP(
        clk), .Q(u5_i_26_) );
  GTECH_FJK1S u5_i_reg_27_ ( .J(n70), .K(n70), .TI(u5_N62), .TE(u5_N66), .CP(
        clk), .Q(u5_i_27_) );
  GTECH_FJK1S u5_i_reg_28_ ( .J(n70), .K(n70), .TI(u5_N63), .TE(u5_N66), .CP(
        clk), .Q(u5_i_28_) );
  GTECH_FJK1S u5_i_reg_29_ ( .J(n70), .K(n70), .TI(u5_N64), .TE(u5_N66), .CP(
        clk), .Q(u5_i_29_) );
  GTECH_FJK1S u5_i_reg_30_ ( .J(n70), .K(n70), .TI(u5_N65), .TE(u5_N66), .CP(
        clk), .Q(u5_i_30_) );
  GTECH_FJK1S u4_q2_reg_7_ ( .J(n70), .K(n70), .TI(u4_N10), .TE(u4_N13), .CP(
        clk), .Q(op[15]) );
  GTECH_FJK1S u4_q2_reg_0_ ( .J(n70), .K(n70), .TI(u4_N3), .TE(u4_N13), .CP(
        clk), .Q(op[8]) );
  GTECH_FJK1S u4_q2_reg_1_ ( .J(n70), .K(n70), .TI(u4_N4), .TE(u4_N13), .CP(
        clk), .Q(op[9]) );
  GTECH_FJK1S u4_q2_reg_2_ ( .J(n70), .K(n70), .TI(u4_N5), .TE(u4_N13), .CP(
        clk), .Q(op[10]) );
  GTECH_FJK1S u4_q2_reg_3_ ( .J(n70), .K(n70), .TI(u4_N6), .TE(u4_N13), .CP(
        clk), .Q(op[11]) );
  GTECH_FJK1S u4_q2_reg_4_ ( .J(n70), .K(n70), .TI(u4_N7), .TE(u4_N13), .CP(
        clk), .Q(op[12]) );
  GTECH_FJK1S u4_q2_reg_5_ ( .J(n70), .K(n70), .TI(u4_N8), .TE(u4_N13), .CP(
        clk), .Q(op[13]) );
  GTECH_FJK1S u4_q2_reg_6_ ( .J(n70), .K(n70), .TI(u4_N9), .TE(u4_N13), .CP(
        clk), .Q(op[14]) );
  GTECH_FJK1S e1_q3_reg_7_ ( .J(n70), .K(n70), .TI(e1_N11), .TE(e1_N14), .CP(
        n69), .Q(op[7]) );
  GTECH_FJK1S e1_q3_reg_6_ ( .J(n70), .K(n70), .TI(op[7]), .TE(e1_N14), .CP(
        n69), .Q(op[6]) );
  GTECH_FJK1S e1_q3_reg_5_ ( .J(n70), .K(n70), .TI(op[6]), .TE(e1_N14), .CP(
        n69), .Q(op[5]) );
  GTECH_FJK1S e1_q3_reg_4_ ( .J(n70), .K(n70), .TI(op[5]), .TE(e1_N14), .CP(
        n69), .Q(op[4]) );
  GTECH_FJK1S e1_q3_reg_3_ ( .J(n70), .K(n70), .TI(op[4]), .TE(e1_N14), .CP(
        n69), .Q(op[3]) );
  GTECH_FJK1S e1_q3_reg_2_ ( .J(n70), .K(n70), .TI(op[3]), .TE(e1_N14), .CP(
        n69), .Q(op[2]) );
  GTECH_FJK1S e1_q3_reg_1_ ( .J(n70), .K(n70), .TI(op[2]), .TE(e1_N14), .CP(
        n69), .Q(op[1]) );
  GTECH_FJK1S e1_q3_reg_0_ ( .J(n70), .K(n70), .TI(op[1]), .TE(e1_N14), .CP(
        n69), .Q(op[0]) );
  GTECH_ZERO U138 ( .Z(n70) );
  GTECH_AND2 U139 ( .A(n151), .B(n152), .Z(u5_N68) );
  GTECH_AND2 U140 ( .A(n153), .B(n154), .Z(u5_N67) );
  GTECH_XOR2 U141 ( .A(u5_i_31_), .B(n155), .Z(n154) );
  GTECH_AND2 U142 ( .A(u5_i_30_), .B(n156), .Z(n155) );
  GTECH_OR_NOT U143 ( .A(n153), .B(n151), .Z(u5_N66) );
  GTECH_AND2 U144 ( .A(n153), .B(n157), .Z(u5_N65) );
  GTECH_XOR2 U145 ( .A(u5_i_30_), .B(n156), .Z(n157) );
  GTECH_NOT U146 ( .A(n158), .Z(n156) );
  GTECH_OR_NOT U147 ( .A(n159), .B(u5_i_29_), .Z(n158) );
  GTECH_AND2 U148 ( .A(n153), .B(n160), .Z(u5_N64) );
  GTECH_XNOR2 U149 ( .A(u5_i_29_), .B(n159), .Z(n160) );
  GTECH_OR_NOT U150 ( .A(n161), .B(u5_i_28_), .Z(n159) );
  GTECH_AND2 U151 ( .A(n153), .B(n162), .Z(u5_N63) );
  GTECH_XNOR2 U152 ( .A(u5_i_28_), .B(n161), .Z(n162) );
  GTECH_OR_NOT U153 ( .A(n163), .B(u5_i_27_), .Z(n161) );
  GTECH_AND2 U154 ( .A(n153), .B(n164), .Z(u5_N62) );
  GTECH_XNOR2 U155 ( .A(u5_i_27_), .B(n163), .Z(n164) );
  GTECH_OR_NOT U156 ( .A(n165), .B(u5_i_26_), .Z(n163) );
  GTECH_AND2 U157 ( .A(n153), .B(n166), .Z(u5_N61) );
  GTECH_XNOR2 U158 ( .A(u5_i_26_), .B(n165), .Z(n166) );
  GTECH_OR_NOT U159 ( .A(n167), .B(u5_i_25_), .Z(n165) );
  GTECH_AND2 U160 ( .A(n153), .B(n168), .Z(u5_N60) );
  GTECH_XNOR2 U161 ( .A(u5_i_25_), .B(n167), .Z(n168) );
  GTECH_OR_NOT U162 ( .A(n169), .B(u5_i_24_), .Z(n167) );
  GTECH_AND2 U163 ( .A(n153), .B(n170), .Z(u5_N59) );
  GTECH_XNOR2 U164 ( .A(u5_i_24_), .B(n169), .Z(n170) );
  GTECH_OR_NOT U165 ( .A(n171), .B(u5_i_23_), .Z(n169) );
  GTECH_AND2 U166 ( .A(n153), .B(n172), .Z(u5_N58) );
  GTECH_XNOR2 U167 ( .A(u5_i_23_), .B(n171), .Z(n172) );
  GTECH_OR_NOT U168 ( .A(n173), .B(u5_i_22_), .Z(n171) );
  GTECH_AND2 U169 ( .A(n153), .B(n174), .Z(u5_N57) );
  GTECH_XNOR2 U170 ( .A(u5_i_22_), .B(n173), .Z(n174) );
  GTECH_OR_NOT U171 ( .A(n175), .B(u5_i_21_), .Z(n173) );
  GTECH_AND2 U172 ( .A(n153), .B(n176), .Z(u5_N56) );
  GTECH_XNOR2 U173 ( .A(u5_i_21_), .B(n175), .Z(n176) );
  GTECH_OR_NOT U174 ( .A(n177), .B(u5_i_20_), .Z(n175) );
  GTECH_AND2 U175 ( .A(n153), .B(n178), .Z(u5_N55) );
  GTECH_XNOR2 U176 ( .A(u5_i_20_), .B(n177), .Z(n178) );
  GTECH_OR_NOT U177 ( .A(n179), .B(u5_i_19_), .Z(n177) );
  GTECH_AND2 U178 ( .A(n153), .B(n180), .Z(u5_N54) );
  GTECH_XNOR2 U179 ( .A(u5_i_19_), .B(n179), .Z(n180) );
  GTECH_OR_NOT U180 ( .A(n181), .B(u5_i_18_), .Z(n179) );
  GTECH_AND2 U181 ( .A(n153), .B(n182), .Z(u5_N53) );
  GTECH_XNOR2 U182 ( .A(u5_i_18_), .B(n181), .Z(n182) );
  GTECH_OR_NOT U183 ( .A(n183), .B(u5_i_17_), .Z(n181) );
  GTECH_AND2 U184 ( .A(n153), .B(n184), .Z(u5_N52) );
  GTECH_XNOR2 U185 ( .A(u5_i_17_), .B(n183), .Z(n184) );
  GTECH_OR_NOT U186 ( .A(n185), .B(u5_i_16_), .Z(n183) );
  GTECH_AND2 U187 ( .A(n153), .B(n186), .Z(u5_N51) );
  GTECH_XNOR2 U188 ( .A(u5_i_16_), .B(n185), .Z(n186) );
  GTECH_OR_NOT U189 ( .A(n187), .B(u5_i_15_), .Z(n185) );
  GTECH_AND2 U190 ( .A(n153), .B(n188), .Z(u5_N50) );
  GTECH_XNOR2 U191 ( .A(u5_i_15_), .B(n187), .Z(n188) );
  GTECH_OR_NOT U192 ( .A(n189), .B(u5_i_14_), .Z(n187) );
  GTECH_AND2 U193 ( .A(n153), .B(n190), .Z(u5_N49) );
  GTECH_XNOR2 U194 ( .A(u5_i_14_), .B(n189), .Z(n190) );
  GTECH_OR_NOT U195 ( .A(n191), .B(u5_i_13_), .Z(n189) );
  GTECH_AND2 U196 ( .A(n153), .B(n192), .Z(u5_N48) );
  GTECH_XNOR2 U197 ( .A(u5_i_13_), .B(n191), .Z(n192) );
  GTECH_OR_NOT U198 ( .A(n193), .B(u5_i_12_), .Z(n191) );
  GTECH_AND2 U199 ( .A(n153), .B(n194), .Z(u5_N47) );
  GTECH_XNOR2 U200 ( .A(u5_i_12_), .B(n193), .Z(n194) );
  GTECH_OR_NOT U201 ( .A(n195), .B(u5_i_11_), .Z(n193) );
  GTECH_AND2 U202 ( .A(n153), .B(n196), .Z(u5_N46) );
  GTECH_XNOR2 U203 ( .A(u5_i_11_), .B(n195), .Z(n196) );
  GTECH_OR_NOT U204 ( .A(n197), .B(u5_i_10_), .Z(n195) );
  GTECH_AND2 U205 ( .A(n153), .B(n198), .Z(u5_N45) );
  GTECH_XNOR2 U206 ( .A(u5_i_10_), .B(n197), .Z(n198) );
  GTECH_OR_NOT U207 ( .A(n199), .B(u5_i_9_), .Z(n197) );
  GTECH_AND2 U208 ( .A(n153), .B(n200), .Z(u5_N44) );
  GTECH_XNOR2 U209 ( .A(u5_i_9_), .B(n199), .Z(n200) );
  GTECH_OR_NOT U210 ( .A(n201), .B(u5_i_8_), .Z(n199) );
  GTECH_AND2 U211 ( .A(n153), .B(n202), .Z(u5_N43) );
  GTECH_XNOR2 U212 ( .A(u5_i_8_), .B(n201), .Z(n202) );
  GTECH_OR_NOT U213 ( .A(n203), .B(u5_i_7_), .Z(n201) );
  GTECH_AND2 U214 ( .A(n153), .B(n204), .Z(u5_N42) );
  GTECH_XNOR2 U215 ( .A(u5_i_7_), .B(n203), .Z(n204) );
  GTECH_OR_NOT U216 ( .A(n205), .B(u5_i_6_), .Z(n203) );
  GTECH_AND2 U217 ( .A(n153), .B(n206), .Z(u5_N41) );
  GTECH_XNOR2 U218 ( .A(u5_i_6_), .B(n205), .Z(n206) );
  GTECH_OR_NOT U219 ( .A(n207), .B(u5_i_5_), .Z(n205) );
  GTECH_AND2 U220 ( .A(n153), .B(n208), .Z(u5_N40) );
  GTECH_XNOR2 U221 ( .A(u5_i_5_), .B(n207), .Z(n208) );
  GTECH_OR_NOT U222 ( .A(n209), .B(u5_i_4_), .Z(n207) );
  GTECH_AND2 U223 ( .A(n153), .B(n210), .Z(u5_N39) );
  GTECH_XNOR2 U224 ( .A(u5_i_4_), .B(n209), .Z(n210) );
  GTECH_OR_NOT U225 ( .A(n211), .B(u5_i_3_), .Z(n209) );
  GTECH_AND2 U226 ( .A(n153), .B(n212), .Z(u5_N38) );
  GTECH_XNOR2 U227 ( .A(u5_i_3_), .B(n211), .Z(n212) );
  GTECH_OAI22 U228 ( .A(n213), .B(n214), .C(n215), .D(n216), .Z(u5_N37) );
  GTECH_MUX2 U229 ( .A(n213), .B(n217), .S(u5_i_1_), .Z(n216) );
  GTECH_OR_NOT U230 ( .A(u5_i_2_), .B(u5_i_0_), .Z(n217) );
  GTECH_NOT U231 ( .A(u5_i_2_), .Z(n213) );
  GTECH_MUX2 U232 ( .A(n218), .B(u5_N35), .S(u5_i_1_), .Z(u5_N36) );
  GTECH_AND2 U233 ( .A(n153), .B(u5_i_0_), .Z(n218) );
  GTECH_NOT U234 ( .A(n214), .Z(u5_N35) );
  GTECH_OR_NOT U235 ( .A(u5_i_0_), .B(n153), .Z(n214) );
  GTECH_NOT U236 ( .A(n215), .Z(n153) );
  GTECH_OR_NOT U237 ( .A(n152), .B(n151), .Z(n215) );
  GTECH_AND2 U238 ( .A(n219), .B(n220), .Z(n152) );
  GTECH_NOR8 U239 ( .A(u5_i_12_), .B(u5_i_13_), .C(u5_i_14_), .D(u5_i_15_), 
        .E(u5_i_10_), .F(u5_i_11_), .G(n221), .H(n211), .Z(n220) );
  GTECH_NAND3 U240 ( .A(u5_i_1_), .B(u5_i_0_), .C(u5_i_2_), .Z(n211) );
  GTECH_OR8 U241 ( .A(u5_i_22_), .B(u5_i_23_), .C(u5_i_20_), .D(u5_i_21_), .E(
        u5_i_18_), .F(u5_i_19_), .G(u5_i_16_), .H(u5_i_17_), .Z(n221) );
  GTECH_NOR8 U242 ( .A(u5_i_24_), .B(n222), .C(u5_i_25_), .D(u5_i_26_), .E(
        u5_i_29_), .F(u5_i_30_), .G(u5_i_27_), .H(u5_i_28_), .Z(n219) );
  GTECH_OR8 U243 ( .A(u5_i_8_), .B(u5_i_9_), .C(u5_i_6_), .D(u5_i_7_), .E(
        u5_i_4_), .F(u5_i_5_), .G(u5_i_31_), .H(u5_i_3_), .Z(n222) );
  GTECH_AND2 U244 ( .A(n151), .B(n223), .Z(u4_N9) );
  GTECH_OAI21 U245 ( .A(n224), .B(n225), .C(n226), .Z(n223) );
  GTECH_MUX2 U246 ( .A(n227), .B(n228), .S(n229), .Z(n226) );
  GTECH_OR_NOT U247 ( .A(op[15]), .B(n230), .Z(n228) );
  GTECH_XOR2 U248 ( .A(op[15]), .B(n230), .Z(n227) );
  GTECH_NOT U249 ( .A(op[15]), .Z(n224) );
  GTECH_AND2 U250 ( .A(n151), .B(n231), .Z(u4_N8) );
  GTECH_XOR3 U251 ( .A(n232), .B(n233), .C(op[14]), .Z(n231) );
  GTECH_AND2 U252 ( .A(z[0]), .B(x[6]), .Z(n232) );
  GTECH_AND2 U253 ( .A(n151), .B(n234), .Z(u4_N7) );
  GTECH_XOR3 U254 ( .A(n235), .B(n236), .C(op[13]), .Z(n234) );
  GTECH_AND2 U255 ( .A(z[0]), .B(x[5]), .Z(n235) );
  GTECH_AND2 U256 ( .A(n151), .B(n237), .Z(u4_N6) );
  GTECH_XOR3 U257 ( .A(n238), .B(n239), .C(op[12]), .Z(n237) );
  GTECH_AND2 U258 ( .A(z[0]), .B(x[4]), .Z(n238) );
  GTECH_AND2 U259 ( .A(n151), .B(n240), .Z(u4_N5) );
  GTECH_XOR3 U260 ( .A(n241), .B(n242), .C(op[11]), .Z(n240) );
  GTECH_AND2 U261 ( .A(z[0]), .B(x[3]), .Z(n241) );
  GTECH_AND2 U262 ( .A(n151), .B(n243), .Z(u4_N4) );
  GTECH_XOR3 U263 ( .A(n244), .B(n245), .C(op[10]), .Z(n243) );
  GTECH_AND2 U264 ( .A(z[0]), .B(x[2]), .Z(n244) );
  GTECH_AND2 U265 ( .A(n151), .B(n246), .Z(u4_N3) );
  GTECH_XOR3 U266 ( .A(n247), .B(n248), .C(op[9]), .Z(n246) );
  GTECH_AND2 U267 ( .A(z[0]), .B(x[1]), .Z(n247) );
  GTECH_OR_NOT U268 ( .A(n249), .B(valid), .Z(u4_N13) );
  GTECH_AND_NOT U269 ( .A(n151), .B(n250), .Z(u4_N10) );
  GTECH_AOI2N2 U270 ( .A(n225), .B(op[15]), .C(n229), .D(n251), .Z(n250) );
  GTECH_OR_NOT U271 ( .A(n230), .B(n229), .Z(n225) );
  GTECH_NOT U272 ( .A(n252), .Z(n229) );
  GTECH_ADD_ABC U273 ( .A(n253), .B(op[14]), .C(n233), .COUT(n252) );
  GTECH_ADD_ABC U274 ( .A(n254), .B(op[13]), .C(n236), .COUT(n233) );
  GTECH_ADD_ABC U275 ( .A(n255), .B(op[12]), .C(n239), .COUT(n236) );
  GTECH_ADD_ABC U276 ( .A(n256), .B(op[11]), .C(n242), .COUT(n239) );
  GTECH_ADD_ABC U277 ( .A(n257), .B(op[10]), .C(n245), .COUT(n242) );
  GTECH_ADD_ABC U278 ( .A(n258), .B(op[9]), .C(n248), .COUT(n245) );
  GTECH_NOT U279 ( .A(n259), .Z(n248) );
  GTECH_NAND3 U280 ( .A(x[0]), .B(op[8]), .C(z[0]), .Z(n259) );
  GTECH_AND2 U281 ( .A(x[1]), .B(z[0]), .Z(n258) );
  GTECH_AND2 U282 ( .A(x[2]), .B(z[0]), .Z(n257) );
  GTECH_AND2 U283 ( .A(x[3]), .B(z[0]), .Z(n256) );
  GTECH_AND2 U284 ( .A(x[4]), .B(z[0]), .Z(n255) );
  GTECH_AND2 U285 ( .A(x[5]), .B(z[0]), .Z(n254) );
  GTECH_AND2 U286 ( .A(x[6]), .B(z[0]), .Z(n253) );
  GTECH_NOT U287 ( .A(n251), .Z(n230) );
  GTECH_OR_NOT U288 ( .A(n260), .B(x[7]), .Z(n251) );
  GTECH_NOT U289 ( .A(z[0]), .Z(n260) );
  GTECH_AO22 U290 ( .A(b[5]), .B(n261), .C(z[6]), .D(n151), .Z(u2_N9) );
  GTECH_AO22 U291 ( .A(b[4]), .B(n261), .C(z[5]), .D(n151), .Z(u2_N8) );
  GTECH_AO22 U292 ( .A(b[3]), .B(n261), .C(z[4]), .D(n151), .Z(u2_N7) );
  GTECH_AO22 U293 ( .A(b[2]), .B(n261), .C(z[3]), .D(n151), .Z(u2_N6) );
  GTECH_AO22 U294 ( .A(b[1]), .B(n261), .C(z[2]), .D(n151), .Z(u2_N5) );
  GTECH_AO22 U295 ( .A(b[0]), .B(n261), .C(z[1]), .D(n151), .Z(u2_N4) );
  GTECH_AND2 U296 ( .A(b[7]), .B(n261), .Z(u2_N11) );
  GTECH_AO22 U297 ( .A(b[6]), .B(n261), .C(z[7]), .D(n151), .Z(u2_N10) );
  GTECH_NOT U298 ( .A(n249), .Z(n151) );
  GTECH_OR_NOT U299 ( .A(reset), .B(n262), .Z(n249) );
  GTECH_NOT U300 ( .A(load), .Z(n262) );
  GTECH_AND2 U301 ( .A(a[7]), .B(n261), .Z(u1_N9) );
  GTECH_OR_NOT U302 ( .A(n261), .B(n263), .Z(u1_N8) );
  GTECH_NOT U303 ( .A(reset), .Z(n263) );
  GTECH_AND2 U304 ( .A(a[6]), .B(n261), .Z(u1_N7) );
  GTECH_AND2 U305 ( .A(a[5]), .B(n261), .Z(u1_N6) );
  GTECH_AND2 U306 ( .A(a[4]), .B(n261), .Z(u1_N5) );
  GTECH_AND2 U307 ( .A(a[3]), .B(n261), .Z(u1_N4) );
  GTECH_AND2 U308 ( .A(a[2]), .B(n261), .Z(u1_N3) );
  GTECH_AND2 U309 ( .A(a[1]), .B(n261), .Z(u1_N2) );
  GTECH_AND2 U310 ( .A(a[0]), .B(n261), .Z(u1_N1) );
  GTECH_NOT U311 ( .A(n264), .Z(n261) );
  GTECH_OR_NOT U312 ( .A(reset), .B(load), .Z(n264) );
  GTECH_NOT U313 ( .A(clk), .Z(n69) );
  GTECH_XOR2 U314 ( .A(op[8]), .B(n265), .Z(e1_N11) );
  GTECH_AND2 U315 ( .A(z[0]), .B(x[0]), .Z(n265) );
endmodule

