
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
         u4_N7, u4_N6, u4_N5, u4_N4, u4_N3, e1_N14, e1_N11, n12, n13, n14, n15,
         n16, n17, n18, n69, n70, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288,
         n289, n290;
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
  GTECH_FD1 u2_q1_reg_7_ ( .D(u2_N11), .CP(clk), .Q(z[7]), .QN(n12) );
  GTECH_FD1 u2_q1_reg_6_ ( .D(u2_N10), .CP(clk), .Q(z[6]), .QN(n13) );
  GTECH_FD1 u2_q1_reg_5_ ( .D(u2_N9), .CP(clk), .Q(z[5]), .QN(n14) );
  GTECH_FD1 u2_q1_reg_4_ ( .D(u2_N8), .CP(clk), .Q(z[4]), .QN(n15) );
  GTECH_FD1 u2_q1_reg_3_ ( .D(u2_N7), .CP(clk), .Q(z[3]), .QN(n16) );
  GTECH_FD1 u2_q1_reg_2_ ( .D(u2_N6), .CP(clk), .Q(z[2]), .QN(n17) );
  GTECH_FD1 u2_q1_reg_1_ ( .D(u2_N5), .CP(clk), .Q(z[1]), .QN(n18) );
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
  GTECH_ZERO U137 ( .Z(n70) );
  GTECH_AND2 U138 ( .A(n150), .B(n151), .Z(u5_N68) );
  GTECH_NOT U139 ( .A(n152), .Z(n151) );
  GTECH_AND2 U140 ( .A(n153), .B(n154), .Z(u5_N67) );
  GTECH_XNOR2 U141 ( .A(u5_i_31_), .B(n155), .Z(n154) );
  GTECH_OR_NOT U142 ( .A(n156), .B(u5_i_30_), .Z(n155) );
  GTECH_NAND2 U143 ( .A(n150), .B(n157), .Z(u5_N66) );
  GTECH_AND2 U144 ( .A(n153), .B(n158), .Z(u5_N65) );
  GTECH_XNOR2 U145 ( .A(u5_i_30_), .B(n156), .Z(n158) );
  GTECH_NAND2 U146 ( .A(u5_i_29_), .B(n159), .Z(n156) );
  GTECH_NOT U147 ( .A(n160), .Z(n159) );
  GTECH_AND2 U148 ( .A(n153), .B(n161), .Z(u5_N64) );
  GTECH_XNOR2 U149 ( .A(u5_i_29_), .B(n160), .Z(n161) );
  GTECH_NAND2 U150 ( .A(u5_i_28_), .B(n162), .Z(n160) );
  GTECH_NOT U151 ( .A(n163), .Z(n162) );
  GTECH_AND2 U152 ( .A(n153), .B(n164), .Z(u5_N63) );
  GTECH_XNOR2 U153 ( .A(u5_i_28_), .B(n163), .Z(n164) );
  GTECH_NAND2 U154 ( .A(u5_i_27_), .B(n165), .Z(n163) );
  GTECH_NOT U155 ( .A(n166), .Z(n165) );
  GTECH_AND2 U156 ( .A(n153), .B(n167), .Z(u5_N62) );
  GTECH_XNOR2 U157 ( .A(u5_i_27_), .B(n166), .Z(n167) );
  GTECH_NAND2 U158 ( .A(u5_i_26_), .B(n168), .Z(n166) );
  GTECH_NOT U159 ( .A(n169), .Z(n168) );
  GTECH_AND2 U160 ( .A(n153), .B(n170), .Z(u5_N61) );
  GTECH_XNOR2 U161 ( .A(u5_i_26_), .B(n169), .Z(n170) );
  GTECH_NAND2 U162 ( .A(u5_i_25_), .B(n171), .Z(n169) );
  GTECH_NOT U163 ( .A(n172), .Z(n171) );
  GTECH_AND2 U164 ( .A(n153), .B(n173), .Z(u5_N60) );
  GTECH_XNOR2 U165 ( .A(u5_i_25_), .B(n172), .Z(n173) );
  GTECH_NAND2 U166 ( .A(u5_i_24_), .B(n174), .Z(n172) );
  GTECH_NOT U167 ( .A(n175), .Z(n174) );
  GTECH_AND2 U168 ( .A(n153), .B(n176), .Z(u5_N59) );
  GTECH_XNOR2 U169 ( .A(u5_i_24_), .B(n175), .Z(n176) );
  GTECH_NAND2 U170 ( .A(u5_i_23_), .B(n177), .Z(n175) );
  GTECH_NOT U171 ( .A(n178), .Z(n177) );
  GTECH_AND2 U172 ( .A(n153), .B(n179), .Z(u5_N58) );
  GTECH_XNOR2 U173 ( .A(u5_i_23_), .B(n178), .Z(n179) );
  GTECH_NAND2 U174 ( .A(u5_i_22_), .B(n180), .Z(n178) );
  GTECH_NOT U175 ( .A(n181), .Z(n180) );
  GTECH_AND2 U176 ( .A(n153), .B(n182), .Z(u5_N57) );
  GTECH_XNOR2 U177 ( .A(u5_i_22_), .B(n181), .Z(n182) );
  GTECH_NAND2 U178 ( .A(u5_i_21_), .B(n183), .Z(n181) );
  GTECH_NOT U179 ( .A(n184), .Z(n183) );
  GTECH_AND2 U180 ( .A(n153), .B(n185), .Z(u5_N56) );
  GTECH_XNOR2 U181 ( .A(u5_i_21_), .B(n184), .Z(n185) );
  GTECH_NAND2 U182 ( .A(u5_i_20_), .B(n186), .Z(n184) );
  GTECH_NOT U183 ( .A(n187), .Z(n186) );
  GTECH_AND2 U184 ( .A(n153), .B(n188), .Z(u5_N55) );
  GTECH_XNOR2 U185 ( .A(u5_i_20_), .B(n187), .Z(n188) );
  GTECH_NAND2 U186 ( .A(u5_i_19_), .B(n189), .Z(n187) );
  GTECH_NOT U187 ( .A(n190), .Z(n189) );
  GTECH_AND2 U188 ( .A(n153), .B(n191), .Z(u5_N54) );
  GTECH_XNOR2 U189 ( .A(u5_i_19_), .B(n190), .Z(n191) );
  GTECH_NAND2 U190 ( .A(u5_i_18_), .B(n192), .Z(n190) );
  GTECH_NOT U191 ( .A(n193), .Z(n192) );
  GTECH_AND2 U192 ( .A(n153), .B(n194), .Z(u5_N53) );
  GTECH_XNOR2 U193 ( .A(u5_i_18_), .B(n193), .Z(n194) );
  GTECH_NAND2 U194 ( .A(u5_i_17_), .B(n195), .Z(n193) );
  GTECH_NOT U195 ( .A(n196), .Z(n195) );
  GTECH_AND2 U196 ( .A(n153), .B(n197), .Z(u5_N52) );
  GTECH_XNOR2 U197 ( .A(u5_i_17_), .B(n196), .Z(n197) );
  GTECH_NAND2 U198 ( .A(u5_i_16_), .B(n198), .Z(n196) );
  GTECH_NOT U199 ( .A(n199), .Z(n198) );
  GTECH_AND2 U200 ( .A(n153), .B(n200), .Z(u5_N51) );
  GTECH_XNOR2 U201 ( .A(u5_i_16_), .B(n199), .Z(n200) );
  GTECH_NAND2 U202 ( .A(u5_i_15_), .B(n201), .Z(n199) );
  GTECH_NOT U203 ( .A(n202), .Z(n201) );
  GTECH_AND2 U204 ( .A(n153), .B(n203), .Z(u5_N50) );
  GTECH_XNOR2 U205 ( .A(u5_i_15_), .B(n202), .Z(n203) );
  GTECH_NAND2 U206 ( .A(u5_i_14_), .B(n204), .Z(n202) );
  GTECH_NOT U207 ( .A(n205), .Z(n204) );
  GTECH_AND2 U208 ( .A(n153), .B(n206), .Z(u5_N49) );
  GTECH_XNOR2 U209 ( .A(u5_i_14_), .B(n205), .Z(n206) );
  GTECH_NAND2 U210 ( .A(u5_i_13_), .B(n207), .Z(n205) );
  GTECH_NOT U211 ( .A(n208), .Z(n207) );
  GTECH_AND2 U212 ( .A(n153), .B(n209), .Z(u5_N48) );
  GTECH_XNOR2 U213 ( .A(u5_i_13_), .B(n208), .Z(n209) );
  GTECH_NAND2 U214 ( .A(u5_i_12_), .B(n210), .Z(n208) );
  GTECH_NOT U215 ( .A(n211), .Z(n210) );
  GTECH_AND2 U216 ( .A(n153), .B(n212), .Z(u5_N47) );
  GTECH_XNOR2 U217 ( .A(u5_i_12_), .B(n211), .Z(n212) );
  GTECH_NAND2 U218 ( .A(u5_i_11_), .B(n213), .Z(n211) );
  GTECH_NOT U219 ( .A(n214), .Z(n213) );
  GTECH_AND2 U220 ( .A(n153), .B(n215), .Z(u5_N46) );
  GTECH_XNOR2 U221 ( .A(u5_i_11_), .B(n214), .Z(n215) );
  GTECH_NAND2 U222 ( .A(u5_i_10_), .B(n216), .Z(n214) );
  GTECH_NOT U223 ( .A(n217), .Z(n216) );
  GTECH_AND2 U224 ( .A(n153), .B(n218), .Z(u5_N45) );
  GTECH_XNOR2 U225 ( .A(u5_i_10_), .B(n217), .Z(n218) );
  GTECH_NAND2 U226 ( .A(u5_i_9_), .B(n219), .Z(n217) );
  GTECH_NOT U227 ( .A(n220), .Z(n219) );
  GTECH_AND2 U228 ( .A(n153), .B(n221), .Z(u5_N44) );
  GTECH_XNOR2 U229 ( .A(u5_i_9_), .B(n220), .Z(n221) );
  GTECH_NAND2 U230 ( .A(u5_i_8_), .B(n222), .Z(n220) );
  GTECH_NOT U231 ( .A(n223), .Z(n222) );
  GTECH_AND2 U232 ( .A(n153), .B(n224), .Z(u5_N43) );
  GTECH_XNOR2 U233 ( .A(u5_i_8_), .B(n223), .Z(n224) );
  GTECH_NAND2 U234 ( .A(u5_i_7_), .B(n225), .Z(n223) );
  GTECH_NOT U235 ( .A(n226), .Z(n225) );
  GTECH_AND2 U236 ( .A(n153), .B(n227), .Z(u5_N42) );
  GTECH_XNOR2 U237 ( .A(u5_i_7_), .B(n226), .Z(n227) );
  GTECH_NAND2 U238 ( .A(u5_i_6_), .B(n228), .Z(n226) );
  GTECH_NOT U239 ( .A(n229), .Z(n228) );
  GTECH_AND2 U240 ( .A(n153), .B(n230), .Z(u5_N41) );
  GTECH_XNOR2 U241 ( .A(u5_i_6_), .B(n229), .Z(n230) );
  GTECH_NAND2 U242 ( .A(u5_i_5_), .B(n231), .Z(n229) );
  GTECH_NOT U243 ( .A(n232), .Z(n231) );
  GTECH_AND2 U244 ( .A(n153), .B(n233), .Z(u5_N40) );
  GTECH_XNOR2 U245 ( .A(u5_i_5_), .B(n232), .Z(n233) );
  GTECH_NAND2 U246 ( .A(u5_i_4_), .B(n234), .Z(n232) );
  GTECH_NOT U247 ( .A(n235), .Z(n234) );
  GTECH_AND2 U248 ( .A(n153), .B(n236), .Z(u5_N39) );
  GTECH_XNOR2 U249 ( .A(u5_i_4_), .B(n235), .Z(n236) );
  GTECH_NAND2 U250 ( .A(u5_i_3_), .B(n237), .Z(n235) );
  GTECH_NOT U251 ( .A(n238), .Z(n237) );
  GTECH_AND2 U252 ( .A(n153), .B(n239), .Z(u5_N38) );
  GTECH_XNOR2 U253 ( .A(u5_i_3_), .B(n238), .Z(n239) );
  GTECH_OAI22 U254 ( .A(n240), .B(n241), .C(n157), .D(n242), .Z(u5_N37) );
  GTECH_MUX2 U255 ( .A(n240), .B(n243), .S(u5_i_1_), .Z(n242) );
  GTECH_NAND2 U256 ( .A(u5_i_0_), .B(n240), .Z(n243) );
  GTECH_NOT U257 ( .A(u5_i_2_), .Z(n240) );
  GTECH_MUX2 U258 ( .A(n244), .B(u5_N35), .S(u5_i_1_), .Z(u5_N36) );
  GTECH_AND2 U259 ( .A(n153), .B(u5_i_0_), .Z(n244) );
  GTECH_NOT U260 ( .A(n241), .Z(u5_N35) );
  GTECH_NAND2 U261 ( .A(n153), .B(n245), .Z(n241) );
  GTECH_NOT U262 ( .A(u5_i_0_), .Z(n245) );
  GTECH_NOT U263 ( .A(n157), .Z(n153) );
  GTECH_NAND2 U264 ( .A(n150), .B(n152), .Z(n157) );
  GTECH_OR2 U265 ( .A(n246), .B(n247), .Z(n152) );
  GTECH_OR8 U266 ( .A(n248), .B(n238), .C(u5_i_10_), .D(u5_i_11_), .E(u5_i_14_), .F(u5_i_15_), .G(u5_i_12_), .H(u5_i_13_), .Z(n247) );
  GTECH_NAND3 U267 ( .A(u5_i_1_), .B(u5_i_0_), .C(u5_i_2_), .Z(n238) );
  GTECH_OR8 U268 ( .A(u5_i_22_), .B(u5_i_23_), .C(u5_i_20_), .D(u5_i_21_), .E(
        u5_i_18_), .F(u5_i_19_), .G(u5_i_16_), .H(u5_i_17_), .Z(n248) );
  GTECH_OR8 U269 ( .A(u5_i_24_), .B(n249), .C(u5_i_25_), .D(u5_i_26_), .E(
        u5_i_29_), .F(u5_i_30_), .G(u5_i_27_), .H(u5_i_28_), .Z(n246) );
  GTECH_OR8 U270 ( .A(u5_i_8_), .B(u5_i_9_), .C(u5_i_6_), .D(u5_i_7_), .E(
        u5_i_4_), .F(u5_i_5_), .G(u5_i_31_), .H(u5_i_3_), .Z(n249) );
  GTECH_AND2 U271 ( .A(n150), .B(n250), .Z(u4_N9) );
  GTECH_OAI21 U272 ( .A(n251), .B(n252), .C(n253), .Z(n250) );
  GTECH_MUX2 U273 ( .A(n254), .B(n255), .S(n256), .Z(n253) );
  GTECH_OR_NOT U274 ( .A(n257), .B(n251), .Z(n255) );
  GTECH_XNOR2 U275 ( .A(op[15]), .B(n257), .Z(n254) );
  GTECH_NOT U276 ( .A(op[15]), .Z(n251) );
  GTECH_AND2 U277 ( .A(n150), .B(n258), .Z(u4_N8) );
  GTECH_XOR3 U278 ( .A(n259), .B(n260), .C(op[14]), .Z(n258) );
  GTECH_AND2 U279 ( .A(x[6]), .B(z[0]), .Z(n259) );
  GTECH_AND2 U280 ( .A(n150), .B(n261), .Z(u4_N7) );
  GTECH_XOR3 U281 ( .A(n262), .B(n263), .C(op[13]), .Z(n261) );
  GTECH_AND2 U282 ( .A(x[5]), .B(z[0]), .Z(n262) );
  GTECH_AND2 U283 ( .A(n150), .B(n264), .Z(u4_N6) );
  GTECH_XOR3 U284 ( .A(n265), .B(n266), .C(op[12]), .Z(n264) );
  GTECH_AND2 U285 ( .A(x[4]), .B(z[0]), .Z(n265) );
  GTECH_AND2 U286 ( .A(n150), .B(n267), .Z(u4_N5) );
  GTECH_XOR3 U287 ( .A(n268), .B(n269), .C(op[11]), .Z(n267) );
  GTECH_AND2 U288 ( .A(x[3]), .B(z[0]), .Z(n268) );
  GTECH_AND2 U289 ( .A(n150), .B(n270), .Z(u4_N4) );
  GTECH_XOR3 U290 ( .A(n271), .B(n272), .C(op[10]), .Z(n270) );
  GTECH_AND2 U291 ( .A(x[2]), .B(z[0]), .Z(n271) );
  GTECH_AND2 U292 ( .A(n150), .B(n273), .Z(u4_N3) );
  GTECH_XOR3 U293 ( .A(n274), .B(n275), .C(op[9]), .Z(n273) );
  GTECH_AND2 U294 ( .A(x[1]), .B(z[0]), .Z(n274) );
  GTECH_NAND2 U295 ( .A(valid), .B(n150), .Z(u4_N13) );
  GTECH_AND2 U296 ( .A(n150), .B(n276), .Z(u4_N10) );
  GTECH_OAI2N2 U297 ( .A(n256), .B(n257), .C(n252), .D(op[15]), .Z(n276) );
  GTECH_NAND2 U298 ( .A(n256), .B(n257), .Z(n252) );
  GTECH_NAND2 U299 ( .A(x[7]), .B(z[0]), .Z(n257) );
  GTECH_NOT U300 ( .A(n277), .Z(n256) );
  GTECH_ADD_ABC U301 ( .A(n278), .B(op[14]), .C(n260), .COUT(n277) );
  GTECH_ADD_ABC U302 ( .A(n279), .B(op[13]), .C(n263), .COUT(n260) );
  GTECH_ADD_ABC U303 ( .A(n280), .B(op[12]), .C(n266), .COUT(n263) );
  GTECH_ADD_ABC U304 ( .A(n281), .B(op[11]), .C(n269), .COUT(n266) );
  GTECH_ADD_ABC U305 ( .A(n282), .B(op[10]), .C(n272), .COUT(n269) );
  GTECH_ADD_ABC U306 ( .A(n283), .B(op[9]), .C(n275), .COUT(n272) );
  GTECH_NOT U307 ( .A(n284), .Z(n275) );
  GTECH_NAND3 U308 ( .A(x[0]), .B(op[8]), .C(z[0]), .Z(n284) );
  GTECH_AND2 U309 ( .A(x[1]), .B(z[0]), .Z(n283) );
  GTECH_AND2 U310 ( .A(x[2]), .B(z[0]), .Z(n282) );
  GTECH_AND2 U311 ( .A(x[3]), .B(z[0]), .Z(n281) );
  GTECH_AND2 U312 ( .A(x[4]), .B(z[0]), .Z(n280) );
  GTECH_AND2 U313 ( .A(x[5]), .B(z[0]), .Z(n279) );
  GTECH_AND2 U314 ( .A(x[6]), .B(z[0]), .Z(n278) );
  GTECH_NOT U315 ( .A(n285), .Z(n150) );
  GTECH_OAI2N2 U316 ( .A(n285), .B(n13), .C(b[5]), .D(n286), .Z(u2_N9) );
  GTECH_OAI2N2 U317 ( .A(n285), .B(n14), .C(b[4]), .D(n286), .Z(u2_N8) );
  GTECH_OAI2N2 U318 ( .A(n285), .B(n15), .C(b[3]), .D(n286), .Z(u2_N7) );
  GTECH_OAI2N2 U319 ( .A(n285), .B(n16), .C(b[2]), .D(n286), .Z(u2_N6) );
  GTECH_OAI2N2 U320 ( .A(n285), .B(n17), .C(b[1]), .D(n286), .Z(u2_N5) );
  GTECH_OAI2N2 U321 ( .A(n285), .B(n18), .C(b[0]), .D(n286), .Z(u2_N4) );
  GTECH_AND2 U322 ( .A(b[7]), .B(n286), .Z(u2_N11) );
  GTECH_OAI2N2 U323 ( .A(n285), .B(n12), .C(b[6]), .D(n286), .Z(u2_N10) );
  GTECH_NAND2 U324 ( .A(n287), .B(n288), .Z(n285) );
  GTECH_NOT U325 ( .A(load), .Z(n287) );
  GTECH_AND2 U326 ( .A(a[7]), .B(n286), .Z(u1_N9) );
  GTECH_NAND2 U327 ( .A(n288), .B(n289), .Z(u1_N8) );
  GTECH_AND2 U328 ( .A(a[6]), .B(n286), .Z(u1_N7) );
  GTECH_AND2 U329 ( .A(a[5]), .B(n286), .Z(u1_N6) );
  GTECH_AND2 U330 ( .A(a[4]), .B(n286), .Z(u1_N5) );
  GTECH_AND2 U331 ( .A(a[3]), .B(n286), .Z(u1_N4) );
  GTECH_AND2 U332 ( .A(a[2]), .B(n286), .Z(u1_N3) );
  GTECH_AND2 U333 ( .A(a[1]), .B(n286), .Z(u1_N2) );
  GTECH_AND2 U334 ( .A(a[0]), .B(n286), .Z(u1_N1) );
  GTECH_NOT U335 ( .A(n289), .Z(n286) );
  GTECH_NAND2 U336 ( .A(load), .B(n288), .Z(n289) );
  GTECH_NOT U337 ( .A(reset), .Z(n288) );
  GTECH_NOT U338 ( .A(clk), .Z(n69) );
  GTECH_XNOR2 U339 ( .A(op[8]), .B(n290), .Z(e1_N11) );
  GTECH_NAND2 U340 ( .A(z[0]), .B(x[0]), .Z(n290) );
endmodule

