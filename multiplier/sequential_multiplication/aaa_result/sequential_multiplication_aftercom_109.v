
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
         n289, n290, n291;
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
  GTECH_AND_NOT U138 ( .A(n150), .B(n151), .Z(u5_N68) );
  GTECH_AND_NOT U139 ( .A(n152), .B(n153), .Z(u5_N67) );
  GTECH_XOR2 U140 ( .A(n154), .B(u5_i_31_), .Z(n153) );
  GTECH_OR_NOT U141 ( .A(n155), .B(u5_i_30_), .Z(n154) );
  GTECH_NAND2 U142 ( .A(n150), .B(n156), .Z(u5_N66) );
  GTECH_AND_NOT U143 ( .A(n152), .B(n157), .Z(u5_N65) );
  GTECH_XOR2 U144 ( .A(n155), .B(u5_i_30_), .Z(n157) );
  GTECH_NAND2 U145 ( .A(u5_i_29_), .B(n158), .Z(n155) );
  GTECH_NOT U146 ( .A(n159), .Z(n158) );
  GTECH_AND_NOT U147 ( .A(n152), .B(n160), .Z(u5_N64) );
  GTECH_XOR2 U148 ( .A(n159), .B(u5_i_29_), .Z(n160) );
  GTECH_NAND2 U149 ( .A(u5_i_28_), .B(n161), .Z(n159) );
  GTECH_NOT U150 ( .A(n162), .Z(n161) );
  GTECH_AND_NOT U151 ( .A(n152), .B(n163), .Z(u5_N63) );
  GTECH_XOR2 U152 ( .A(n162), .B(u5_i_28_), .Z(n163) );
  GTECH_NAND2 U153 ( .A(u5_i_27_), .B(n164), .Z(n162) );
  GTECH_NOT U154 ( .A(n165), .Z(n164) );
  GTECH_AND_NOT U155 ( .A(n152), .B(n166), .Z(u5_N62) );
  GTECH_XOR2 U156 ( .A(n165), .B(u5_i_27_), .Z(n166) );
  GTECH_NAND2 U157 ( .A(u5_i_26_), .B(n167), .Z(n165) );
  GTECH_NOT U158 ( .A(n168), .Z(n167) );
  GTECH_AND_NOT U159 ( .A(n152), .B(n169), .Z(u5_N61) );
  GTECH_XOR2 U160 ( .A(n168), .B(u5_i_26_), .Z(n169) );
  GTECH_NAND2 U161 ( .A(u5_i_25_), .B(n170), .Z(n168) );
  GTECH_NOT U162 ( .A(n171), .Z(n170) );
  GTECH_AND_NOT U163 ( .A(n152), .B(n172), .Z(u5_N60) );
  GTECH_XOR2 U164 ( .A(n171), .B(u5_i_25_), .Z(n172) );
  GTECH_NAND2 U165 ( .A(u5_i_24_), .B(n173), .Z(n171) );
  GTECH_NOT U166 ( .A(n174), .Z(n173) );
  GTECH_AND_NOT U167 ( .A(n152), .B(n175), .Z(u5_N59) );
  GTECH_XOR2 U168 ( .A(n174), .B(u5_i_24_), .Z(n175) );
  GTECH_NAND2 U169 ( .A(u5_i_23_), .B(n176), .Z(n174) );
  GTECH_NOT U170 ( .A(n177), .Z(n176) );
  GTECH_AND_NOT U171 ( .A(n152), .B(n178), .Z(u5_N58) );
  GTECH_XOR2 U172 ( .A(n177), .B(u5_i_23_), .Z(n178) );
  GTECH_NAND2 U173 ( .A(u5_i_22_), .B(n179), .Z(n177) );
  GTECH_NOT U174 ( .A(n180), .Z(n179) );
  GTECH_AND_NOT U175 ( .A(n152), .B(n181), .Z(u5_N57) );
  GTECH_XOR2 U176 ( .A(n180), .B(u5_i_22_), .Z(n181) );
  GTECH_NAND2 U177 ( .A(u5_i_21_), .B(n182), .Z(n180) );
  GTECH_NOT U178 ( .A(n183), .Z(n182) );
  GTECH_AND_NOT U179 ( .A(n152), .B(n184), .Z(u5_N56) );
  GTECH_XOR2 U180 ( .A(n183), .B(u5_i_21_), .Z(n184) );
  GTECH_NAND2 U181 ( .A(u5_i_20_), .B(n185), .Z(n183) );
  GTECH_NOT U182 ( .A(n186), .Z(n185) );
  GTECH_AND_NOT U183 ( .A(n152), .B(n187), .Z(u5_N55) );
  GTECH_XOR2 U184 ( .A(n186), .B(u5_i_20_), .Z(n187) );
  GTECH_NAND2 U185 ( .A(u5_i_19_), .B(n188), .Z(n186) );
  GTECH_NOT U186 ( .A(n189), .Z(n188) );
  GTECH_AND_NOT U187 ( .A(n152), .B(n190), .Z(u5_N54) );
  GTECH_XOR2 U188 ( .A(n189), .B(u5_i_19_), .Z(n190) );
  GTECH_NAND2 U189 ( .A(u5_i_18_), .B(n191), .Z(n189) );
  GTECH_NOT U190 ( .A(n192), .Z(n191) );
  GTECH_AND_NOT U191 ( .A(n152), .B(n193), .Z(u5_N53) );
  GTECH_XOR2 U192 ( .A(n192), .B(u5_i_18_), .Z(n193) );
  GTECH_NAND2 U193 ( .A(u5_i_17_), .B(n194), .Z(n192) );
  GTECH_NOT U194 ( .A(n195), .Z(n194) );
  GTECH_AND_NOT U195 ( .A(n152), .B(n196), .Z(u5_N52) );
  GTECH_XOR2 U196 ( .A(n195), .B(u5_i_17_), .Z(n196) );
  GTECH_NAND2 U197 ( .A(u5_i_16_), .B(n197), .Z(n195) );
  GTECH_NOT U198 ( .A(n198), .Z(n197) );
  GTECH_AND_NOT U199 ( .A(n152), .B(n199), .Z(u5_N51) );
  GTECH_XOR2 U200 ( .A(n198), .B(u5_i_16_), .Z(n199) );
  GTECH_NAND2 U201 ( .A(u5_i_15_), .B(n200), .Z(n198) );
  GTECH_NOT U202 ( .A(n201), .Z(n200) );
  GTECH_AND_NOT U203 ( .A(n152), .B(n202), .Z(u5_N50) );
  GTECH_XOR2 U204 ( .A(n201), .B(u5_i_15_), .Z(n202) );
  GTECH_NAND2 U205 ( .A(u5_i_14_), .B(n203), .Z(n201) );
  GTECH_NOT U206 ( .A(n204), .Z(n203) );
  GTECH_AND_NOT U207 ( .A(n152), .B(n205), .Z(u5_N49) );
  GTECH_XOR2 U208 ( .A(n204), .B(u5_i_14_), .Z(n205) );
  GTECH_NAND2 U209 ( .A(u5_i_13_), .B(n206), .Z(n204) );
  GTECH_NOT U210 ( .A(n207), .Z(n206) );
  GTECH_AND_NOT U211 ( .A(n152), .B(n208), .Z(u5_N48) );
  GTECH_XOR2 U212 ( .A(n207), .B(u5_i_13_), .Z(n208) );
  GTECH_NAND2 U213 ( .A(u5_i_12_), .B(n209), .Z(n207) );
  GTECH_NOT U214 ( .A(n210), .Z(n209) );
  GTECH_AND_NOT U215 ( .A(n152), .B(n211), .Z(u5_N47) );
  GTECH_XOR2 U216 ( .A(n210), .B(u5_i_12_), .Z(n211) );
  GTECH_NAND2 U217 ( .A(u5_i_11_), .B(n212), .Z(n210) );
  GTECH_NOT U218 ( .A(n213), .Z(n212) );
  GTECH_AND_NOT U219 ( .A(n152), .B(n214), .Z(u5_N46) );
  GTECH_XOR2 U220 ( .A(n213), .B(u5_i_11_), .Z(n214) );
  GTECH_NAND2 U221 ( .A(u5_i_10_), .B(n215), .Z(n213) );
  GTECH_NOT U222 ( .A(n216), .Z(n215) );
  GTECH_AND_NOT U223 ( .A(n152), .B(n217), .Z(u5_N45) );
  GTECH_XOR2 U224 ( .A(n216), .B(u5_i_10_), .Z(n217) );
  GTECH_NAND2 U225 ( .A(u5_i_9_), .B(n218), .Z(n216) );
  GTECH_NOT U226 ( .A(n219), .Z(n218) );
  GTECH_AND_NOT U227 ( .A(n152), .B(n220), .Z(u5_N44) );
  GTECH_XOR2 U228 ( .A(n219), .B(u5_i_9_), .Z(n220) );
  GTECH_NAND2 U229 ( .A(u5_i_8_), .B(n221), .Z(n219) );
  GTECH_NOT U230 ( .A(n222), .Z(n221) );
  GTECH_AND_NOT U231 ( .A(n152), .B(n223), .Z(u5_N43) );
  GTECH_XOR2 U232 ( .A(n222), .B(u5_i_8_), .Z(n223) );
  GTECH_NAND2 U233 ( .A(u5_i_7_), .B(n224), .Z(n222) );
  GTECH_NOT U234 ( .A(n225), .Z(n224) );
  GTECH_AND_NOT U235 ( .A(n152), .B(n226), .Z(u5_N42) );
  GTECH_XOR2 U236 ( .A(n225), .B(u5_i_7_), .Z(n226) );
  GTECH_NAND2 U237 ( .A(u5_i_6_), .B(n227), .Z(n225) );
  GTECH_NOT U238 ( .A(n228), .Z(n227) );
  GTECH_AND_NOT U239 ( .A(n152), .B(n229), .Z(u5_N41) );
  GTECH_XOR2 U240 ( .A(n228), .B(u5_i_6_), .Z(n229) );
  GTECH_NAND2 U241 ( .A(u5_i_5_), .B(n230), .Z(n228) );
  GTECH_NOT U242 ( .A(n231), .Z(n230) );
  GTECH_AND_NOT U243 ( .A(n152), .B(n232), .Z(u5_N40) );
  GTECH_XOR2 U244 ( .A(n231), .B(u5_i_5_), .Z(n232) );
  GTECH_NAND2 U245 ( .A(u5_i_4_), .B(n233), .Z(n231) );
  GTECH_NOT U246 ( .A(n234), .Z(n233) );
  GTECH_AND_NOT U247 ( .A(n152), .B(n235), .Z(u5_N39) );
  GTECH_XOR2 U248 ( .A(n234), .B(u5_i_4_), .Z(n235) );
  GTECH_NAND2 U249 ( .A(u5_i_3_), .B(n236), .Z(n234) );
  GTECH_NOT U250 ( .A(n237), .Z(n236) );
  GTECH_AND_NOT U251 ( .A(n152), .B(n238), .Z(u5_N38) );
  GTECH_XOR2 U252 ( .A(n237), .B(u5_i_3_), .Z(n238) );
  GTECH_OAI22 U253 ( .A(n239), .B(n240), .C(n156), .D(n241), .Z(u5_N37) );
  GTECH_MUX2 U254 ( .A(n239), .B(n242), .S(u5_i_1_), .Z(n241) );
  GTECH_NAND2 U255 ( .A(u5_i_0_), .B(n239), .Z(n242) );
  GTECH_NOT U256 ( .A(u5_i_2_), .Z(n239) );
  GTECH_MUX2 U257 ( .A(n243), .B(u5_N35), .S(u5_i_1_), .Z(u5_N36) );
  GTECH_AND_NOT U258 ( .A(n152), .B(n244), .Z(n243) );
  GTECH_NOT U259 ( .A(n240), .Z(u5_N35) );
  GTECH_NAND2 U260 ( .A(n152), .B(n244), .Z(n240) );
  GTECH_NOT U261 ( .A(u5_i_0_), .Z(n244) );
  GTECH_NOT U262 ( .A(n156), .Z(n152) );
  GTECH_NAND2 U263 ( .A(n150), .B(n151), .Z(n156) );
  GTECH_OR2 U264 ( .A(n245), .B(n246), .Z(n151) );
  GTECH_OR8 U265 ( .A(n247), .B(n237), .C(u5_i_10_), .D(u5_i_11_), .E(u5_i_14_), .F(u5_i_15_), .G(u5_i_12_), .H(u5_i_13_), .Z(n246) );
  GTECH_NAND3 U266 ( .A(u5_i_1_), .B(u5_i_0_), .C(u5_i_2_), .Z(n237) );
  GTECH_OR8 U267 ( .A(u5_i_22_), .B(u5_i_23_), .C(u5_i_20_), .D(u5_i_21_), .E(
        u5_i_18_), .F(u5_i_19_), .G(u5_i_16_), .H(u5_i_17_), .Z(n247) );
  GTECH_OR8 U268 ( .A(u5_i_24_), .B(n248), .C(u5_i_25_), .D(u5_i_26_), .E(
        u5_i_29_), .F(u5_i_30_), .G(u5_i_27_), .H(u5_i_28_), .Z(n245) );
  GTECH_OR8 U269 ( .A(u5_i_8_), .B(u5_i_9_), .C(u5_i_6_), .D(u5_i_7_), .E(
        u5_i_4_), .F(u5_i_5_), .G(u5_i_31_), .H(u5_i_3_), .Z(n248) );
  GTECH_OA21 U270 ( .A(n249), .B(n250), .C(n150), .Z(u4_N9) );
  GTECH_AND_NOT U271 ( .A(n251), .B(n252), .Z(n250) );
  GTECH_MUX2 U272 ( .A(n253), .B(n254), .S(n255), .Z(n249) );
  GTECH_NOR2 U273 ( .A(n256), .B(op[15]), .Z(n254) );
  GTECH_XOR2 U274 ( .A(n256), .B(op[15]), .Z(n253) );
  GTECH_AND_NOT U275 ( .A(n257), .B(n258), .Z(u4_N8) );
  GTECH_XNOR3 U276 ( .A(n259), .B(op[14]), .C(n260), .Z(n257) );
  GTECH_NAND2 U277 ( .A(x[6]), .B(z[0]), .Z(n260) );
  GTECH_AND_NOT U278 ( .A(n261), .B(n258), .Z(u4_N7) );
  GTECH_XNOR3 U279 ( .A(n262), .B(op[13]), .C(n263), .Z(n261) );
  GTECH_NAND2 U280 ( .A(x[5]), .B(z[0]), .Z(n263) );
  GTECH_AND_NOT U281 ( .A(n264), .B(n258), .Z(u4_N6) );
  GTECH_XNOR3 U282 ( .A(n265), .B(op[12]), .C(n266), .Z(n264) );
  GTECH_NAND2 U283 ( .A(x[4]), .B(z[0]), .Z(n266) );
  GTECH_AND_NOT U284 ( .A(n267), .B(n258), .Z(u4_N5) );
  GTECH_XNOR3 U285 ( .A(n268), .B(op[11]), .C(n269), .Z(n267) );
  GTECH_NAND2 U286 ( .A(x[3]), .B(z[0]), .Z(n269) );
  GTECH_AND_NOT U287 ( .A(n270), .B(n258), .Z(u4_N4) );
  GTECH_XNOR3 U288 ( .A(n271), .B(op[10]), .C(n272), .Z(n270) );
  GTECH_NAND2 U289 ( .A(x[2]), .B(z[0]), .Z(n272) );
  GTECH_AND_NOT U290 ( .A(n150), .B(n273), .Z(u4_N3) );
  GTECH_XNOR3 U291 ( .A(n274), .B(op[9]), .C(n275), .Z(n273) );
  GTECH_NAND2 U292 ( .A(x[1]), .B(z[0]), .Z(n275) );
  GTECH_NAND2 U293 ( .A(valid), .B(n150), .Z(u4_N13) );
  GTECH_AND_NOT U294 ( .A(n150), .B(n276), .Z(u4_N10) );
  GTECH_OA22 U295 ( .A(n251), .B(n252), .C(n255), .D(n256), .Z(n276) );
  GTECH_NOT U296 ( .A(op[15]), .Z(n252) );
  GTECH_NOT U297 ( .A(n277), .Z(n251) );
  GTECH_NAND2 U298 ( .A(n255), .B(n256), .Z(n277) );
  GTECH_NAND2 U299 ( .A(x[7]), .B(z[0]), .Z(n256) );
  GTECH_NOT U300 ( .A(n278), .Z(n255) );
  GTECH_ADD_ABC U301 ( .A(n279), .B(op[14]), .C(n259), .COUT(n278) );
  GTECH_ADD_ABC U302 ( .A(n280), .B(op[13]), .C(n262), .COUT(n259) );
  GTECH_ADD_ABC U303 ( .A(n281), .B(op[12]), .C(n265), .COUT(n262) );
  GTECH_ADD_ABC U304 ( .A(n282), .B(op[11]), .C(n268), .COUT(n265) );
  GTECH_ADD_ABC U305 ( .A(n283), .B(op[10]), .C(n271), .COUT(n268) );
  GTECH_ADD_ABC U306 ( .A(n284), .B(op[9]), .C(n285), .COUT(n271) );
  GTECH_NOT U307 ( .A(n274), .Z(n285) );
  GTECH_NAND3 U308 ( .A(x[0]), .B(op[8]), .C(z[0]), .Z(n274) );
  GTECH_AND_NOT U309 ( .A(x[1]), .B(n286), .Z(n284) );
  GTECH_AND_NOT U310 ( .A(x[2]), .B(n286), .Z(n283) );
  GTECH_AND_NOT U311 ( .A(x[3]), .B(n286), .Z(n282) );
  GTECH_AND_NOT U312 ( .A(x[4]), .B(n286), .Z(n281) );
  GTECH_AND_NOT U313 ( .A(x[5]), .B(n286), .Z(n280) );
  GTECH_AND_NOT U314 ( .A(x[6]), .B(n286), .Z(n279) );
  GTECH_NOT U315 ( .A(z[0]), .Z(n286) );
  GTECH_NOT U316 ( .A(n258), .Z(n150) );
  GTECH_OAI2N2 U317 ( .A(n258), .B(n13), .C(b[5]), .D(n287), .Z(u2_N9) );
  GTECH_OAI2N2 U318 ( .A(n258), .B(n14), .C(b[4]), .D(n287), .Z(u2_N8) );
  GTECH_OAI2N2 U319 ( .A(n258), .B(n15), .C(b[3]), .D(n287), .Z(u2_N7) );
  GTECH_OAI2N2 U320 ( .A(n258), .B(n16), .C(b[2]), .D(n287), .Z(u2_N6) );
  GTECH_OAI2N2 U321 ( .A(n258), .B(n17), .C(b[1]), .D(n287), .Z(u2_N5) );
  GTECH_OAI2N2 U322 ( .A(n258), .B(n18), .C(b[0]), .D(n287), .Z(u2_N4) );
  GTECH_AND_NOT U323 ( .A(b[7]), .B(n288), .Z(u2_N11) );
  GTECH_OAI2N2 U324 ( .A(n258), .B(n12), .C(b[6]), .D(n287), .Z(u2_N10) );
  GTECH_NOT U325 ( .A(n288), .Z(n287) );
  GTECH_NAND2 U326 ( .A(n289), .B(n290), .Z(n258) );
  GTECH_NOT U327 ( .A(load), .Z(n289) );
  GTECH_AND_NOT U328 ( .A(a[7]), .B(n288), .Z(u1_N9) );
  GTECH_NAND2 U329 ( .A(n290), .B(n288), .Z(u1_N8) );
  GTECH_AND_NOT U330 ( .A(a[6]), .B(n288), .Z(u1_N7) );
  GTECH_AND_NOT U331 ( .A(a[5]), .B(n288), .Z(u1_N6) );
  GTECH_AND_NOT U332 ( .A(a[4]), .B(n288), .Z(u1_N5) );
  GTECH_AND_NOT U333 ( .A(a[3]), .B(n288), .Z(u1_N4) );
  GTECH_AND_NOT U334 ( .A(a[2]), .B(n288), .Z(u1_N3) );
  GTECH_AND_NOT U335 ( .A(a[1]), .B(n288), .Z(u1_N2) );
  GTECH_AND_NOT U336 ( .A(a[0]), .B(n288), .Z(u1_N1) );
  GTECH_NAND2 U337 ( .A(load), .B(n290), .Z(n288) );
  GTECH_NOT U338 ( .A(reset), .Z(n290) );
  GTECH_NOT U339 ( .A(clk), .Z(n69) );
  GTECH_XNOR2 U340 ( .A(op[8]), .B(n291), .Z(e1_N11) );
  GTECH_NAND2 U341 ( .A(z[0]), .B(x[0]), .Z(n291) );
endmodule

