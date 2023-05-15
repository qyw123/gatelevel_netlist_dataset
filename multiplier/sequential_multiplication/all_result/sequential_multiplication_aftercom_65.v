
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
         n16, n17, n18, n68, n132, n69, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, n241,
         n242, n243, n244, n245, n246, n247, n248, n249, n250, n251, n252,
         n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263,
         n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274,
         n275, n276, n277, n278, n279, n280, n281, n282, n283, n284, n285,
         n286, n287, n288, n289, n290, n291, n292, n293, n294, n295, n296,
         n297, n298, n299;
  wire   [7:0] x;
  wire   [7:0] z;

  GTECH_FJK1S u1_q_reg_0_ ( .J(n69), .K(n69), .TI(u1_N1), .TE(u1_N8), .CP(clk), 
        .Q(x[0]) );
  GTECH_FJK1S u1_q_reg_1_ ( .J(n69), .K(n69), .TI(u1_N2), .TE(u1_N8), .CP(clk), 
        .Q(x[1]) );
  GTECH_FJK1S u1_q_reg_2_ ( .J(n69), .K(n69), .TI(u1_N3), .TE(u1_N8), .CP(clk), 
        .Q(x[2]) );
  GTECH_FJK1S u1_q_reg_3_ ( .J(n69), .K(n69), .TI(u1_N4), .TE(u1_N8), .CP(clk), 
        .Q(x[3]) );
  GTECH_FJK1S u1_q_reg_4_ ( .J(n69), .K(n69), .TI(u1_N5), .TE(u1_N8), .CP(clk), 
        .Q(x[4]) );
  GTECH_FJK1S u1_q_reg_5_ ( .J(n69), .K(n69), .TI(u1_N6), .TE(u1_N8), .CP(clk), 
        .Q(x[5]) );
  GTECH_FJK1S u1_q_reg_6_ ( .J(n69), .K(n69), .TI(u1_N7), .TE(u1_N8), .CP(clk), 
        .Q(x[6]) );
  GTECH_FJK1S u1_q_reg_7_ ( .J(n69), .K(n69), .TI(u1_N9), .TE(u1_N8), .CP(clk), 
        .Q(x[7]) );
  GTECH_FD2 u2_q1_reg_7_ ( .D(u2_N11), .CP(clk), .CD(n132), .Q(z[7]), .QN(n12)
         );
  GTECH_FD2 u2_q1_reg_6_ ( .D(u2_N10), .CP(clk), .CD(n132), .Q(z[6]), .QN(n13)
         );
  GTECH_FD2 u2_q1_reg_5_ ( .D(u2_N9), .CP(clk), .CD(n132), .Q(z[5]), .QN(n14)
         );
  GTECH_FD2 u2_q1_reg_4_ ( .D(u2_N8), .CP(clk), .CD(n132), .Q(z[4]), .QN(n15)
         );
  GTECH_FD2 u2_q1_reg_3_ ( .D(u2_N7), .CP(clk), .CD(n132), .Q(z[3]), .QN(n16)
         );
  GTECH_FD2 u2_q1_reg_2_ ( .D(u2_N6), .CP(clk), .CD(n132), .Q(z[2]), .QN(n17)
         );
  GTECH_FD2 u2_q1_reg_1_ ( .D(u2_N5), .CP(clk), .CD(n132), .Q(z[1]), .QN(n18)
         );
  GTECH_FD2 u2_q1_reg_0_ ( .D(u2_N4), .CP(clk), .CD(n132), .Q(z[0]) );
  GTECH_FJK1S u5_i_reg_31_ ( .J(n69), .K(n69), .TI(u5_N67), .TE(u5_N66), .CP(
        clk), .Q(u5_i_31_) );
  GTECH_FD2 u5_l_reg ( .D(u5_N68), .CP(clk), .CD(n132), .Q(valid), .QN(e1_N14)
         );
  GTECH_FJK1S u5_i_reg_0_ ( .J(n69), .K(n69), .TI(u5_N35), .TE(u5_N66), .CP(
        clk), .Q(u5_i_0_) );
  GTECH_FJK1S u5_i_reg_1_ ( .J(n69), .K(n69), .TI(u5_N36), .TE(u5_N66), .CP(
        clk), .Q(u5_i_1_) );
  GTECH_FJK1S u5_i_reg_2_ ( .J(n69), .K(n69), .TI(u5_N37), .TE(u5_N66), .CP(
        clk), .Q(u5_i_2_) );
  GTECH_FJK1S u5_i_reg_3_ ( .J(n69), .K(n69), .TI(u5_N38), .TE(u5_N66), .CP(
        clk), .Q(u5_i_3_) );
  GTECH_FJK1S u5_i_reg_4_ ( .J(n69), .K(n69), .TI(u5_N39), .TE(u5_N66), .CP(
        clk), .Q(u5_i_4_) );
  GTECH_FJK1S u5_i_reg_5_ ( .J(n69), .K(n69), .TI(u5_N40), .TE(u5_N66), .CP(
        clk), .Q(u5_i_5_) );
  GTECH_FJK1S u5_i_reg_6_ ( .J(n69), .K(n69), .TI(u5_N41), .TE(u5_N66), .CP(
        clk), .Q(u5_i_6_) );
  GTECH_FJK1S u5_i_reg_7_ ( .J(n69), .K(n69), .TI(u5_N42), .TE(u5_N66), .CP(
        clk), .Q(u5_i_7_) );
  GTECH_FJK1S u5_i_reg_8_ ( .J(n69), .K(n69), .TI(u5_N43), .TE(u5_N66), .CP(
        clk), .Q(u5_i_8_) );
  GTECH_FJK1S u5_i_reg_9_ ( .J(n69), .K(n69), .TI(u5_N44), .TE(u5_N66), .CP(
        clk), .Q(u5_i_9_) );
  GTECH_FJK1S u5_i_reg_10_ ( .J(n69), .K(n69), .TI(u5_N45), .TE(u5_N66), .CP(
        clk), .Q(u5_i_10_) );
  GTECH_FJK1S u5_i_reg_11_ ( .J(n69), .K(n69), .TI(u5_N46), .TE(u5_N66), .CP(
        clk), .Q(u5_i_11_) );
  GTECH_FJK1S u5_i_reg_12_ ( .J(n69), .K(n69), .TI(u5_N47), .TE(u5_N66), .CP(
        clk), .Q(u5_i_12_) );
  GTECH_FJK1S u5_i_reg_13_ ( .J(n69), .K(n69), .TI(u5_N48), .TE(u5_N66), .CP(
        clk), .Q(u5_i_13_) );
  GTECH_FJK1S u5_i_reg_14_ ( .J(n69), .K(n69), .TI(u5_N49), .TE(u5_N66), .CP(
        clk), .Q(u5_i_14_) );
  GTECH_FJK1S u5_i_reg_15_ ( .J(n69), .K(n69), .TI(u5_N50), .TE(u5_N66), .CP(
        clk), .Q(u5_i_15_) );
  GTECH_FJK1S u5_i_reg_16_ ( .J(n69), .K(n69), .TI(u5_N51), .TE(u5_N66), .CP(
        clk), .Q(u5_i_16_) );
  GTECH_FJK1S u5_i_reg_17_ ( .J(n69), .K(n69), .TI(u5_N52), .TE(u5_N66), .CP(
        clk), .Q(u5_i_17_) );
  GTECH_FJK1S u5_i_reg_18_ ( .J(n69), .K(n69), .TI(u5_N53), .TE(u5_N66), .CP(
        clk), .Q(u5_i_18_) );
  GTECH_FJK1S u5_i_reg_19_ ( .J(n69), .K(n69), .TI(u5_N54), .TE(u5_N66), .CP(
        clk), .Q(u5_i_19_) );
  GTECH_FJK1S u5_i_reg_20_ ( .J(n69), .K(n69), .TI(u5_N55), .TE(u5_N66), .CP(
        clk), .Q(u5_i_20_) );
  GTECH_FJK1S u5_i_reg_21_ ( .J(n69), .K(n69), .TI(u5_N56), .TE(u5_N66), .CP(
        clk), .Q(u5_i_21_) );
  GTECH_FJK1S u5_i_reg_22_ ( .J(n69), .K(n69), .TI(u5_N57), .TE(u5_N66), .CP(
        clk), .Q(u5_i_22_) );
  GTECH_FJK1S u5_i_reg_23_ ( .J(n69), .K(n69), .TI(u5_N58), .TE(u5_N66), .CP(
        clk), .Q(u5_i_23_) );
  GTECH_FJK1S u5_i_reg_24_ ( .J(n69), .K(n69), .TI(u5_N59), .TE(u5_N66), .CP(
        clk), .Q(u5_i_24_) );
  GTECH_FJK1S u5_i_reg_25_ ( .J(n69), .K(n69), .TI(u5_N60), .TE(u5_N66), .CP(
        clk), .Q(u5_i_25_) );
  GTECH_FJK1S u5_i_reg_26_ ( .J(n69), .K(n69), .TI(u5_N61), .TE(u5_N66), .CP(
        clk), .Q(u5_i_26_) );
  GTECH_FJK1S u5_i_reg_27_ ( .J(n69), .K(n69), .TI(u5_N62), .TE(u5_N66), .CP(
        clk), .Q(u5_i_27_) );
  GTECH_FJK1S u5_i_reg_28_ ( .J(n69), .K(n69), .TI(u5_N63), .TE(u5_N66), .CP(
        clk), .Q(u5_i_28_) );
  GTECH_FJK1S u5_i_reg_29_ ( .J(n69), .K(n69), .TI(u5_N64), .TE(u5_N66), .CP(
        clk), .Q(u5_i_29_) );
  GTECH_FJK1S u5_i_reg_30_ ( .J(n69), .K(n69), .TI(u5_N65), .TE(u5_N66), .CP(
        clk), .Q(u5_i_30_) );
  GTECH_FJK1S u4_q2_reg_7_ ( .J(n69), .K(n69), .TI(u4_N10), .TE(u4_N13), .CP(
        clk), .Q(op[15]) );
  GTECH_FJK1S u4_q2_reg_0_ ( .J(n69), .K(n69), .TI(u4_N3), .TE(u4_N13), .CP(
        clk), .Q(op[8]) );
  GTECH_FJK1S u4_q2_reg_1_ ( .J(n69), .K(n69), .TI(u4_N4), .TE(u4_N13), .CP(
        clk), .Q(op[9]) );
  GTECH_FJK1S u4_q2_reg_2_ ( .J(n69), .K(n69), .TI(u4_N5), .TE(u4_N13), .CP(
        clk), .Q(op[10]) );
  GTECH_FJK1S u4_q2_reg_3_ ( .J(n69), .K(n69), .TI(u4_N6), .TE(u4_N13), .CP(
        clk), .Q(op[11]) );
  GTECH_FJK1S u4_q2_reg_4_ ( .J(n69), .K(n69), .TI(u4_N7), .TE(u4_N13), .CP(
        clk), .Q(op[12]) );
  GTECH_FJK1S u4_q2_reg_5_ ( .J(n69), .K(n69), .TI(u4_N8), .TE(u4_N13), .CP(
        clk), .Q(op[13]) );
  GTECH_FJK1S u4_q2_reg_6_ ( .J(n69), .K(n69), .TI(u4_N9), .TE(u4_N13), .CP(
        clk), .Q(op[14]) );
  GTECH_FJK1S e1_q3_reg_7_ ( .J(n69), .K(n69), .TI(e1_N11), .TE(e1_N14), .CP(
        n68), .Q(op[7]) );
  GTECH_FJK1S e1_q3_reg_6_ ( .J(n69), .K(n69), .TI(op[7]), .TE(e1_N14), .CP(
        n68), .Q(op[6]) );
  GTECH_FJK1S e1_q3_reg_5_ ( .J(n69), .K(n69), .TI(op[6]), .TE(e1_N14), .CP(
        n68), .Q(op[5]) );
  GTECH_FJK1S e1_q3_reg_4_ ( .J(n69), .K(n69), .TI(op[5]), .TE(e1_N14), .CP(
        n68), .Q(op[4]) );
  GTECH_FJK1S e1_q3_reg_3_ ( .J(n69), .K(n69), .TI(op[4]), .TE(e1_N14), .CP(
        n68), .Q(op[3]) );
  GTECH_FJK1S e1_q3_reg_2_ ( .J(n69), .K(n69), .TI(op[3]), .TE(e1_N14), .CP(
        n68), .Q(op[2]) );
  GTECH_FJK1S e1_q3_reg_1_ ( .J(n69), .K(n69), .TI(op[2]), .TE(e1_N14), .CP(
        n68), .Q(op[1]) );
  GTECH_FJK1S e1_q3_reg_0_ ( .J(n69), .K(n69), .TI(op[1]), .TE(e1_N14), .CP(
        n68), .Q(op[0]) );
  GTECH_ZERO U146 ( .Z(n69) );
  GTECH_ONE U147 ( .Z(n132) );
  GTECH_AND2 U148 ( .A(n159), .B(n160), .Z(u5_N68) );
  GTECH_NOT U149 ( .A(n161), .Z(n160) );
  GTECH_AND2 U150 ( .A(n162), .B(n163), .Z(u5_N67) );
  GTECH_XNOR2 U151 ( .A(u5_i_31_), .B(n164), .Z(n163) );
  GTECH_OR_NOT U152 ( .A(n165), .B(u5_i_30_), .Z(n164) );
  GTECH_NAND2 U153 ( .A(n159), .B(n166), .Z(u5_N66) );
  GTECH_AND2 U154 ( .A(n162), .B(n167), .Z(u5_N65) );
  GTECH_XNOR2 U155 ( .A(u5_i_30_), .B(n165), .Z(n167) );
  GTECH_NAND2 U156 ( .A(u5_i_29_), .B(n168), .Z(n165) );
  GTECH_NOT U157 ( .A(n169), .Z(n168) );
  GTECH_AND2 U158 ( .A(n162), .B(n170), .Z(u5_N64) );
  GTECH_XNOR2 U159 ( .A(u5_i_29_), .B(n169), .Z(n170) );
  GTECH_NAND2 U160 ( .A(u5_i_28_), .B(n171), .Z(n169) );
  GTECH_NOT U161 ( .A(n172), .Z(n171) );
  GTECH_AND2 U162 ( .A(n162), .B(n173), .Z(u5_N63) );
  GTECH_XNOR2 U163 ( .A(u5_i_28_), .B(n172), .Z(n173) );
  GTECH_NAND2 U164 ( .A(u5_i_27_), .B(n174), .Z(n172) );
  GTECH_NOT U165 ( .A(n175), .Z(n174) );
  GTECH_AND2 U166 ( .A(n162), .B(n176), .Z(u5_N62) );
  GTECH_XNOR2 U167 ( .A(u5_i_27_), .B(n175), .Z(n176) );
  GTECH_NAND2 U168 ( .A(u5_i_26_), .B(n177), .Z(n175) );
  GTECH_NOT U169 ( .A(n178), .Z(n177) );
  GTECH_AND2 U170 ( .A(n162), .B(n179), .Z(u5_N61) );
  GTECH_XNOR2 U171 ( .A(u5_i_26_), .B(n178), .Z(n179) );
  GTECH_NAND2 U172 ( .A(u5_i_25_), .B(n180), .Z(n178) );
  GTECH_NOT U173 ( .A(n181), .Z(n180) );
  GTECH_AND2 U174 ( .A(n162), .B(n182), .Z(u5_N60) );
  GTECH_XNOR2 U175 ( .A(u5_i_25_), .B(n181), .Z(n182) );
  GTECH_NAND2 U176 ( .A(u5_i_24_), .B(n183), .Z(n181) );
  GTECH_NOT U177 ( .A(n184), .Z(n183) );
  GTECH_AND2 U178 ( .A(n162), .B(n185), .Z(u5_N59) );
  GTECH_XNOR2 U179 ( .A(u5_i_24_), .B(n184), .Z(n185) );
  GTECH_NAND2 U180 ( .A(u5_i_23_), .B(n186), .Z(n184) );
  GTECH_NOT U181 ( .A(n187), .Z(n186) );
  GTECH_AND2 U182 ( .A(n162), .B(n188), .Z(u5_N58) );
  GTECH_XNOR2 U183 ( .A(u5_i_23_), .B(n187), .Z(n188) );
  GTECH_NAND2 U184 ( .A(u5_i_22_), .B(n189), .Z(n187) );
  GTECH_NOT U185 ( .A(n190), .Z(n189) );
  GTECH_AND2 U186 ( .A(n162), .B(n191), .Z(u5_N57) );
  GTECH_XNOR2 U187 ( .A(u5_i_22_), .B(n190), .Z(n191) );
  GTECH_NAND2 U188 ( .A(u5_i_21_), .B(n192), .Z(n190) );
  GTECH_NOT U189 ( .A(n193), .Z(n192) );
  GTECH_AND2 U190 ( .A(n162), .B(n194), .Z(u5_N56) );
  GTECH_XNOR2 U191 ( .A(u5_i_21_), .B(n193), .Z(n194) );
  GTECH_NAND2 U192 ( .A(u5_i_20_), .B(n195), .Z(n193) );
  GTECH_NOT U193 ( .A(n196), .Z(n195) );
  GTECH_AND2 U194 ( .A(n162), .B(n197), .Z(u5_N55) );
  GTECH_XNOR2 U195 ( .A(u5_i_20_), .B(n196), .Z(n197) );
  GTECH_NAND2 U196 ( .A(u5_i_19_), .B(n198), .Z(n196) );
  GTECH_NOT U197 ( .A(n199), .Z(n198) );
  GTECH_AND2 U198 ( .A(n162), .B(n200), .Z(u5_N54) );
  GTECH_XNOR2 U199 ( .A(u5_i_19_), .B(n199), .Z(n200) );
  GTECH_NAND2 U200 ( .A(u5_i_18_), .B(n201), .Z(n199) );
  GTECH_NOT U201 ( .A(n202), .Z(n201) );
  GTECH_AND2 U202 ( .A(n162), .B(n203), .Z(u5_N53) );
  GTECH_XNOR2 U203 ( .A(u5_i_18_), .B(n202), .Z(n203) );
  GTECH_NAND2 U204 ( .A(u5_i_17_), .B(n204), .Z(n202) );
  GTECH_NOT U205 ( .A(n205), .Z(n204) );
  GTECH_AND2 U206 ( .A(n162), .B(n206), .Z(u5_N52) );
  GTECH_XNOR2 U207 ( .A(u5_i_17_), .B(n205), .Z(n206) );
  GTECH_NAND2 U208 ( .A(u5_i_16_), .B(n207), .Z(n205) );
  GTECH_NOT U209 ( .A(n208), .Z(n207) );
  GTECH_AND2 U210 ( .A(n162), .B(n209), .Z(u5_N51) );
  GTECH_XNOR2 U211 ( .A(u5_i_16_), .B(n208), .Z(n209) );
  GTECH_NAND2 U212 ( .A(u5_i_15_), .B(n210), .Z(n208) );
  GTECH_NOT U213 ( .A(n211), .Z(n210) );
  GTECH_AND2 U214 ( .A(n162), .B(n212), .Z(u5_N50) );
  GTECH_XNOR2 U215 ( .A(u5_i_15_), .B(n211), .Z(n212) );
  GTECH_NAND2 U216 ( .A(u5_i_14_), .B(n213), .Z(n211) );
  GTECH_NOT U217 ( .A(n214), .Z(n213) );
  GTECH_AND2 U218 ( .A(n162), .B(n215), .Z(u5_N49) );
  GTECH_XNOR2 U219 ( .A(u5_i_14_), .B(n214), .Z(n215) );
  GTECH_NAND2 U220 ( .A(u5_i_13_), .B(n216), .Z(n214) );
  GTECH_NOT U221 ( .A(n217), .Z(n216) );
  GTECH_AND2 U222 ( .A(n162), .B(n218), .Z(u5_N48) );
  GTECH_XNOR2 U223 ( .A(u5_i_13_), .B(n217), .Z(n218) );
  GTECH_NAND2 U224 ( .A(u5_i_12_), .B(n219), .Z(n217) );
  GTECH_NOT U225 ( .A(n220), .Z(n219) );
  GTECH_AND2 U226 ( .A(n162), .B(n221), .Z(u5_N47) );
  GTECH_XNOR2 U227 ( .A(u5_i_12_), .B(n220), .Z(n221) );
  GTECH_NAND2 U228 ( .A(u5_i_11_), .B(n222), .Z(n220) );
  GTECH_NOT U229 ( .A(n223), .Z(n222) );
  GTECH_AND2 U230 ( .A(n162), .B(n224), .Z(u5_N46) );
  GTECH_XNOR2 U231 ( .A(u5_i_11_), .B(n223), .Z(n224) );
  GTECH_NAND2 U232 ( .A(u5_i_10_), .B(n225), .Z(n223) );
  GTECH_NOT U233 ( .A(n226), .Z(n225) );
  GTECH_AND2 U234 ( .A(n162), .B(n227), .Z(u5_N45) );
  GTECH_XNOR2 U235 ( .A(u5_i_10_), .B(n226), .Z(n227) );
  GTECH_NAND2 U236 ( .A(u5_i_9_), .B(n228), .Z(n226) );
  GTECH_NOT U237 ( .A(n229), .Z(n228) );
  GTECH_AND2 U238 ( .A(n162), .B(n230), .Z(u5_N44) );
  GTECH_XNOR2 U239 ( .A(u5_i_9_), .B(n229), .Z(n230) );
  GTECH_NAND2 U240 ( .A(u5_i_8_), .B(n231), .Z(n229) );
  GTECH_NOT U241 ( .A(n232), .Z(n231) );
  GTECH_AND2 U242 ( .A(n162), .B(n233), .Z(u5_N43) );
  GTECH_XNOR2 U243 ( .A(u5_i_8_), .B(n232), .Z(n233) );
  GTECH_NAND2 U244 ( .A(u5_i_7_), .B(n234), .Z(n232) );
  GTECH_NOT U245 ( .A(n235), .Z(n234) );
  GTECH_AND2 U246 ( .A(n162), .B(n236), .Z(u5_N42) );
  GTECH_XNOR2 U247 ( .A(u5_i_7_), .B(n235), .Z(n236) );
  GTECH_NAND2 U248 ( .A(u5_i_6_), .B(n237), .Z(n235) );
  GTECH_NOT U249 ( .A(n238), .Z(n237) );
  GTECH_AND2 U250 ( .A(n162), .B(n239), .Z(u5_N41) );
  GTECH_XNOR2 U251 ( .A(u5_i_6_), .B(n238), .Z(n239) );
  GTECH_NAND2 U252 ( .A(u5_i_5_), .B(n240), .Z(n238) );
  GTECH_NOT U253 ( .A(n241), .Z(n240) );
  GTECH_AND2 U254 ( .A(n162), .B(n242), .Z(u5_N40) );
  GTECH_XNOR2 U255 ( .A(u5_i_5_), .B(n241), .Z(n242) );
  GTECH_NAND2 U256 ( .A(u5_i_4_), .B(n243), .Z(n241) );
  GTECH_NOT U257 ( .A(n244), .Z(n243) );
  GTECH_AND2 U258 ( .A(n162), .B(n245), .Z(u5_N39) );
  GTECH_XNOR2 U259 ( .A(u5_i_4_), .B(n244), .Z(n245) );
  GTECH_NAND2 U260 ( .A(u5_i_3_), .B(n246), .Z(n244) );
  GTECH_NOT U261 ( .A(n247), .Z(n246) );
  GTECH_AND2 U262 ( .A(n162), .B(n248), .Z(u5_N38) );
  GTECH_XNOR2 U263 ( .A(u5_i_3_), .B(n247), .Z(n248) );
  GTECH_OAI22 U264 ( .A(n249), .B(n250), .C(n166), .D(n251), .Z(u5_N37) );
  GTECH_MUX2 U265 ( .A(n249), .B(n252), .S(u5_i_1_), .Z(n251) );
  GTECH_NAND2 U266 ( .A(u5_i_0_), .B(n249), .Z(n252) );
  GTECH_NOT U267 ( .A(u5_i_2_), .Z(n249) );
  GTECH_MUX2 U268 ( .A(n253), .B(u5_N35), .S(u5_i_1_), .Z(u5_N36) );
  GTECH_AND2 U269 ( .A(n162), .B(u5_i_0_), .Z(n253) );
  GTECH_NOT U270 ( .A(n250), .Z(u5_N35) );
  GTECH_NAND2 U271 ( .A(n162), .B(n254), .Z(n250) );
  GTECH_NOT U272 ( .A(u5_i_0_), .Z(n254) );
  GTECH_NOT U273 ( .A(n166), .Z(n162) );
  GTECH_NAND2 U274 ( .A(n159), .B(n161), .Z(n166) );
  GTECH_NAND2 U275 ( .A(n255), .B(n256), .Z(n161) );
  GTECH_NOR8 U276 ( .A(u5_i_27_), .B(u5_i_28_), .C(u5_i_29_), .D(u5_i_30_), 
        .E(u5_i_25_), .F(u5_i_26_), .G(u5_i_24_), .H(n257), .Z(n256) );
  GTECH_OR8 U277 ( .A(u5_i_8_), .B(u5_i_9_), .C(u5_i_6_), .D(u5_i_7_), .E(
        u5_i_4_), .F(u5_i_5_), .G(u5_i_31_), .H(u5_i_3_), .Z(n257) );
  GTECH_NOR8 U278 ( .A(u5_i_12_), .B(u5_i_13_), .C(u5_i_14_), .D(u5_i_15_), 
        .E(u5_i_10_), .F(u5_i_11_), .G(n258), .H(n247), .Z(n255) );
  GTECH_NAND3 U279 ( .A(u5_i_1_), .B(u5_i_0_), .C(u5_i_2_), .Z(n247) );
  GTECH_OR8 U280 ( .A(u5_i_22_), .B(u5_i_23_), .C(u5_i_20_), .D(u5_i_21_), .E(
        u5_i_18_), .F(u5_i_19_), .G(u5_i_16_), .H(u5_i_17_), .Z(n258) );
  GTECH_AND2 U281 ( .A(n159), .B(n259), .Z(u4_N9) );
  GTECH_OAI21 U282 ( .A(n260), .B(n261), .C(n262), .Z(n259) );
  GTECH_MUX2 U283 ( .A(n263), .B(n264), .S(n265), .Z(n262) );
  GTECH_OR_NOT U284 ( .A(n266), .B(n260), .Z(n264) );
  GTECH_XNOR2 U285 ( .A(op[15]), .B(n266), .Z(n263) );
  GTECH_NOT U286 ( .A(op[15]), .Z(n260) );
  GTECH_AND2 U287 ( .A(n159), .B(n267), .Z(u4_N8) );
  GTECH_XOR3 U288 ( .A(n268), .B(n269), .C(op[14]), .Z(n267) );
  GTECH_AND2 U289 ( .A(x[6]), .B(z[0]), .Z(n268) );
  GTECH_AND2 U290 ( .A(n159), .B(n270), .Z(u4_N7) );
  GTECH_XOR3 U291 ( .A(n271), .B(n272), .C(op[13]), .Z(n270) );
  GTECH_AND2 U292 ( .A(x[5]), .B(z[0]), .Z(n271) );
  GTECH_AND2 U293 ( .A(n159), .B(n273), .Z(u4_N6) );
  GTECH_XOR3 U294 ( .A(n274), .B(n275), .C(op[12]), .Z(n273) );
  GTECH_AND2 U295 ( .A(x[4]), .B(z[0]), .Z(n274) );
  GTECH_AND2 U296 ( .A(n159), .B(n276), .Z(u4_N5) );
  GTECH_XOR3 U297 ( .A(n277), .B(n278), .C(op[11]), .Z(n276) );
  GTECH_AND2 U298 ( .A(x[3]), .B(z[0]), .Z(n277) );
  GTECH_AND2 U299 ( .A(n159), .B(n279), .Z(u4_N4) );
  GTECH_XOR3 U300 ( .A(n280), .B(n281), .C(op[10]), .Z(n279) );
  GTECH_AND2 U301 ( .A(x[2]), .B(z[0]), .Z(n280) );
  GTECH_AND2 U302 ( .A(n159), .B(n282), .Z(u4_N3) );
  GTECH_XOR3 U303 ( .A(n283), .B(n284), .C(op[9]), .Z(n282) );
  GTECH_AND2 U304 ( .A(x[1]), .B(z[0]), .Z(n283) );
  GTECH_NAND2 U305 ( .A(valid), .B(n159), .Z(u4_N13) );
  GTECH_AND2 U306 ( .A(n159), .B(n285), .Z(u4_N10) );
  GTECH_OAI2N2 U307 ( .A(n265), .B(n266), .C(n261), .D(op[15]), .Z(n285) );
  GTECH_NAND2 U308 ( .A(n265), .B(n266), .Z(n261) );
  GTECH_NAND2 U309 ( .A(x[7]), .B(z[0]), .Z(n266) );
  GTECH_NOT U310 ( .A(n286), .Z(n265) );
  GTECH_ADD_ABC U311 ( .A(n287), .B(op[14]), .C(n269), .COUT(n286) );
  GTECH_ADD_ABC U312 ( .A(n288), .B(op[13]), .C(n272), .COUT(n269) );
  GTECH_ADD_ABC U313 ( .A(n289), .B(op[12]), .C(n275), .COUT(n272) );
  GTECH_ADD_ABC U314 ( .A(n290), .B(op[11]), .C(n278), .COUT(n275) );
  GTECH_ADD_ABC U315 ( .A(n291), .B(op[10]), .C(n281), .COUT(n278) );
  GTECH_ADD_ABC U316 ( .A(n292), .B(op[9]), .C(n284), .COUT(n281) );
  GTECH_NOT U317 ( .A(n293), .Z(n284) );
  GTECH_NAND3 U318 ( .A(x[0]), .B(op[8]), .C(z[0]), .Z(n293) );
  GTECH_AND2 U319 ( .A(x[1]), .B(z[0]), .Z(n292) );
  GTECH_AND2 U320 ( .A(x[2]), .B(z[0]), .Z(n291) );
  GTECH_AND2 U321 ( .A(x[3]), .B(z[0]), .Z(n290) );
  GTECH_AND2 U322 ( .A(x[4]), .B(z[0]), .Z(n289) );
  GTECH_AND2 U323 ( .A(x[5]), .B(z[0]), .Z(n288) );
  GTECH_AND2 U324 ( .A(x[6]), .B(z[0]), .Z(n287) );
  GTECH_NOT U325 ( .A(n294), .Z(n159) );
  GTECH_OAI2N2 U326 ( .A(n294), .B(n13), .C(b[5]), .D(n295), .Z(u2_N9) );
  GTECH_OAI2N2 U327 ( .A(n294), .B(n14), .C(b[4]), .D(n295), .Z(u2_N8) );
  GTECH_OAI2N2 U328 ( .A(n294), .B(n15), .C(b[3]), .D(n295), .Z(u2_N7) );
  GTECH_OAI2N2 U329 ( .A(n294), .B(n16), .C(b[2]), .D(n295), .Z(u2_N6) );
  GTECH_OAI2N2 U330 ( .A(n294), .B(n17), .C(b[1]), .D(n295), .Z(u2_N5) );
  GTECH_OAI2N2 U331 ( .A(n294), .B(n18), .C(b[0]), .D(n295), .Z(u2_N4) );
  GTECH_AND2 U332 ( .A(b[7]), .B(n295), .Z(u2_N11) );
  GTECH_OAI2N2 U333 ( .A(n294), .B(n12), .C(b[6]), .D(n295), .Z(u2_N10) );
  GTECH_NAND2 U334 ( .A(n296), .B(n297), .Z(n294) );
  GTECH_NOT U335 ( .A(load), .Z(n296) );
  GTECH_AND2 U336 ( .A(a[7]), .B(n295), .Z(u1_N9) );
  GTECH_NAND2 U337 ( .A(n297), .B(n298), .Z(u1_N8) );
  GTECH_AND2 U338 ( .A(a[6]), .B(n295), .Z(u1_N7) );
  GTECH_AND2 U339 ( .A(a[5]), .B(n295), .Z(u1_N6) );
  GTECH_AND2 U340 ( .A(a[4]), .B(n295), .Z(u1_N5) );
  GTECH_AND2 U341 ( .A(a[3]), .B(n295), .Z(u1_N4) );
  GTECH_AND2 U342 ( .A(a[2]), .B(n295), .Z(u1_N3) );
  GTECH_AND2 U343 ( .A(a[1]), .B(n295), .Z(u1_N2) );
  GTECH_AND2 U344 ( .A(a[0]), .B(n295), .Z(u1_N1) );
  GTECH_NOT U345 ( .A(n298), .Z(n295) );
  GTECH_NAND2 U346 ( .A(load), .B(n297), .Z(n298) );
  GTECH_NOT U347 ( .A(reset), .Z(n297) );
  GTECH_NOT U348 ( .A(clk), .Z(n68) );
  GTECH_XNOR2 U349 ( .A(op[8]), .B(n299), .Z(e1_N11) );
  GTECH_NAND2 U350 ( .A(z[0]), .B(x[0]), .Z(n299) );
endmodule

