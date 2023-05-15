
module shift_add_multiplier ( clk, rst, D, Q, out );
  input [7:0] D;
  input [7:0] Q;
  output [15:0] out;
  input clk, rst;
  wire   load_cmd, add_cmd, out_cmd, lsb, shifter_N24, shifter_N23,
         shifter_N22, shifter_N21, shifter_N20, shifter_N19, shifter_N18,
         shifter_N17, shifter_N16, shifter_N15, shifter_N14, shifter_N13,
         shifter_N12, shifter_N11, shifter_N10, shifter_N9, shifter_N8,
         shifter_N7, shifter_N6, shifter_add_temp, shifter_temp_1_,
         shifter_temp_2_, shifter_temp_3_, shifter_temp_4_, shifter_temp_5_,
         shifter_temp_6_, shifter_temp_7_, controller_N102, controller_N98,
         controller_N97, controller_N96, controller_N95, controller_N94,
         controller_N93, controller_N92, controller_N91, controller_N90,
         controller_N83, controller_N82, controller_N81, controller_N80,
         controller_N79, controller_N78, controller_N77, controller_N76,
         controller_N75, controller_N74, controller_N73, controller_N72,
         controller_N71, controller_N70, controller_N69, controller_N68,
         controller_N67, controller_N66, controller_N65, controller_N64,
         controller_N63, controller_N62, controller_N61, controller_N60,
         controller_N59, controller_N58, controller_N57, controller_N56,
         controller_N55, controller_N54, controller_N53, controller_N52,
         controller_count_0_, controller_count_1_, controller_count_2_,
         controller_count_3_, controller_count_4_, controller_count_5_,
         controller_count_6_, controller_count_7_, controller_count_8_,
         controller_count_9_, controller_count_10_, controller_count_11_,
         controller_count_12_, controller_count_13_, controller_count_14_,
         controller_count_15_, controller_count_16_, controller_count_17_,
         controller_count_18_, controller_count_19_, controller_count_20_,
         controller_count_21_, controller_count_22_, controller_count_23_,
         controller_count_24_, controller_count_25_, controller_count_26_,
         controller_count_27_, controller_count_28_, controller_count_29_,
         controller_count_30_, controller_count_31_, controller_state_0_,
         controller_state_1_, controller_start, n8, n9, n10, n11, n12, n14,
         n15, n16, n17, n18, n19, n20, n21, n130, n132, n135, n46, n139, n140,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240,
         n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273,
         n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284,
         n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295,
         n296, n297, n298, n299, n300, n301, n302, n303, n304, n305, n306,
         n307, n308, n309, n310, n311, n312, n313, n314, n315, n316, n317,
         n318, n319, n320, n321, n322, n323, n324, n325, n326, n327, n328,
         n329, n330, n331, n332, n333, n334, n335, n336, n337, n338, n339,
         n340, n341, n342, n343, n344, n345, n346, n347, n348, n349, n350,
         n351, n352, n353, n354, n355, n356, n357, n358, n359, n360, n361,
         n362, n363, n364, n365, n366, n367;
  wire   [7:0] A;

  GTECH_FJK2S controller_count_reg_31_ ( .J(n46), .K(n46), .TI(controller_N83), 
        .TE(controller_N98), .CP(clk), .CD(n135), .Q(controller_count_31_), 
        .QN(n157) );
  GTECH_FJK2S controller_count_reg_30_ ( .J(n46), .K(n46), .TI(controller_N82), 
        .TE(controller_N98), .CP(clk), .CD(n135), .Q(controller_count_30_), 
        .QN(n156) );
  GTECH_FJK3 controller_start_reg ( .J(n46), .K(controller_N97), .CP(clk), 
        .CD(n130), .SD(n135), .Q(controller_start), .QN(n132) );
  GTECH_FJK2S controller_state_reg_0_ ( .J(n46), .K(n46), .TI(controller_N93), 
        .TE(controller_N95), .CP(clk), .CD(n135), .Q(controller_state_0_), 
        .QN(n140) );
  GTECH_FJK2S controller_state_reg_2_ ( .J(n46), .K(n46), .TI(controller_N96), 
        .TE(controller_N95), .CP(clk), .CD(n135), .Q(n8) );
  GTECH_FJK2S controller_count_reg_29_ ( .J(n46), .K(n46), .TI(controller_N81), 
        .TE(controller_N98), .CP(clk), .CD(n135), .Q(controller_count_29_), 
        .QN(n155) );
  GTECH_FJK2S controller_count_reg_28_ ( .J(n46), .K(n46), .TI(controller_N80), 
        .TE(controller_N98), .CP(clk), .CD(n135), .Q(controller_count_28_), 
        .QN(n154) );
  GTECH_FJK2S controller_count_reg_27_ ( .J(n46), .K(n46), .TI(controller_N79), 
        .TE(controller_N98), .CP(clk), .CD(n135), .Q(controller_count_27_), 
        .QN(n153) );
  GTECH_FJK2S controller_count_reg_26_ ( .J(n46), .K(n46), .TI(controller_N78), 
        .TE(controller_N98), .CP(clk), .CD(n135), .Q(controller_count_26_), 
        .QN(n152) );
  GTECH_FJK2S controller_count_reg_25_ ( .J(n46), .K(n46), .TI(controller_N77), 
        .TE(controller_N98), .CP(clk), .CD(n135), .Q(controller_count_25_), 
        .QN(n151) );
  GTECH_FJK2S controller_count_reg_24_ ( .J(n46), .K(n46), .TI(controller_N76), 
        .TE(controller_N98), .CP(clk), .CD(n135), .Q(controller_count_24_), 
        .QN(n150) );
  GTECH_FJK2S controller_count_reg_23_ ( .J(n46), .K(n46), .TI(controller_N75), 
        .TE(controller_N98), .CP(clk), .CD(n135), .Q(controller_count_23_), 
        .QN(n149) );
  GTECH_FJK2S controller_count_reg_22_ ( .J(n46), .K(n46), .TI(controller_N74), 
        .TE(controller_N98), .CP(clk), .CD(n135), .Q(controller_count_22_), 
        .QN(n148) );
  GTECH_FJK2S controller_count_reg_21_ ( .J(n46), .K(n46), .TI(controller_N73), 
        .TE(controller_N98), .CP(clk), .CD(n135), .Q(controller_count_21_), 
        .QN(n147) );
  GTECH_FJK2S controller_count_reg_20_ ( .J(n46), .K(n46), .TI(controller_N72), 
        .TE(controller_N98), .CP(clk), .CD(n135), .Q(controller_count_20_), 
        .QN(n146) );
  GTECH_FJK2S controller_count_reg_19_ ( .J(n46), .K(n46), .TI(controller_N71), 
        .TE(controller_N98), .CP(clk), .CD(n135), .Q(controller_count_19_), 
        .QN(n145) );
  GTECH_FJK2S controller_count_reg_18_ ( .J(n46), .K(n46), .TI(controller_N70), 
        .TE(controller_N98), .CP(clk), .CD(n135), .Q(controller_count_18_), 
        .QN(n144) );
  GTECH_FJK2S controller_count_reg_17_ ( .J(n46), .K(n46), .TI(controller_N69), 
        .TE(controller_N98), .CP(clk), .CD(n135), .Q(controller_count_17_), 
        .QN(n143) );
  GTECH_FJK2S controller_count_reg_16_ ( .J(n46), .K(n46), .TI(controller_N68), 
        .TE(controller_N98), .CP(clk), .CD(n135), .Q(controller_count_16_), 
        .QN(n142) );
  GTECH_FJK2S controller_count_reg_15_ ( .J(n46), .K(n46), .TI(controller_N67), 
        .TE(controller_N98), .CP(clk), .CD(n135), .Q(controller_count_15_), 
        .QN(n173) );
  GTECH_FJK2S controller_count_reg_14_ ( .J(n46), .K(n46), .TI(controller_N66), 
        .TE(controller_N98), .CP(clk), .CD(n135), .Q(controller_count_14_), 
        .QN(n172) );
  GTECH_FJK2S controller_count_reg_13_ ( .J(n46), .K(n46), .TI(controller_N65), 
        .TE(controller_N98), .CP(clk), .CD(n135), .Q(controller_count_13_), 
        .QN(n171) );
  GTECH_FJK2S controller_count_reg_12_ ( .J(n46), .K(n46), .TI(controller_N64), 
        .TE(controller_N98), .CP(clk), .CD(n135), .Q(controller_count_12_), 
        .QN(n170) );
  GTECH_FJK2S controller_count_reg_11_ ( .J(n46), .K(n46), .TI(controller_N63), 
        .TE(controller_N98), .CP(clk), .CD(n135), .Q(controller_count_11_), 
        .QN(n169) );
  GTECH_FJK2S controller_count_reg_10_ ( .J(n46), .K(n46), .TI(controller_N62), 
        .TE(controller_N98), .CP(clk), .CD(n135), .Q(controller_count_10_), 
        .QN(n168) );
  GTECH_FJK2S controller_count_reg_9_ ( .J(n46), .K(n46), .TI(controller_N61), 
        .TE(controller_N98), .CP(clk), .CD(n135), .Q(controller_count_9_), 
        .QN(n167) );
  GTECH_FJK2S controller_count_reg_8_ ( .J(n46), .K(n46), .TI(controller_N60), 
        .TE(controller_N98), .CP(clk), .CD(n135), .Q(controller_count_8_), 
        .QN(n166) );
  GTECH_FJK2S controller_count_reg_7_ ( .J(n46), .K(n46), .TI(controller_N59), 
        .TE(controller_N98), .CP(clk), .CD(n135), .Q(controller_count_7_), 
        .QN(n165) );
  GTECH_FJK2S controller_count_reg_6_ ( .J(n46), .K(n46), .TI(controller_N58), 
        .TE(controller_N98), .CP(clk), .CD(n135), .Q(controller_count_6_), 
        .QN(n164) );
  GTECH_FJK2S controller_count_reg_5_ ( .J(n46), .K(n46), .TI(controller_N57), 
        .TE(controller_N98), .CP(clk), .CD(n135), .Q(controller_count_5_), 
        .QN(n163) );
  GTECH_FJK2S controller_count_reg_4_ ( .J(n46), .K(n46), .TI(controller_N56), 
        .TE(controller_N98), .CP(clk), .CD(n135), .Q(controller_count_4_), 
        .QN(n162) );
  GTECH_FJK2S controller_count_reg_3_ ( .J(n46), .K(n46), .TI(controller_N55), 
        .TE(controller_N98), .CP(clk), .CD(n135), .Q(controller_count_3_), 
        .QN(n161) );
  GTECH_FJK2S controller_count_reg_2_ ( .J(n46), .K(n46), .TI(controller_N54), 
        .TE(controller_N98), .CP(clk), .CD(n135), .Q(controller_count_2_), 
        .QN(n160) );
  GTECH_FJK2S controller_count_reg_1_ ( .J(n46), .K(n46), .TI(controller_N53), 
        .TE(controller_N98), .CP(clk), .CD(n135), .Q(controller_count_1_), 
        .QN(n159) );
  GTECH_FJK2S controller_count_reg_0_ ( .J(n46), .K(n46), .TI(controller_N52), 
        .TE(controller_N98), .CP(clk), .CD(n135), .Q(controller_count_0_), 
        .QN(n158) );
  GTECH_FJK1S controller_shift_cmd_reg ( .J(n46), .K(n46), .TI(controller_N98), 
        .TE(controller_N102), .CP(clk), .Q(n9) );
  GTECH_FJK1S controller_add_cmd_reg ( .J(n46), .K(n46), .TI(controller_N91), 
        .TE(controller_N102), .CP(clk), .Q(add_cmd), .QN(n10) );
  GTECH_FJK2S controller_state_reg_1_ ( .J(n46), .K(n46), .TI(controller_N94), 
        .TE(controller_N95), .CP(clk), .CD(n135), .Q(controller_state_1_), 
        .QN(n11) );
  GTECH_FJK1S controller_load_cmd_reg ( .J(n46), .K(n46), .TI(controller_N90), 
        .TE(controller_N102), .CP(clk), .Q(load_cmd), .QN(n12) );
  GTECH_FJK2S shifter_add_temp_reg ( .J(n46), .K(n46), .TI(shifter_N24), .TE(
        shifter_N23), .CP(clk), .CD(n135), .Q(shifter_add_temp) );
  GTECH_FJK2S shifter_temp_reg_8_ ( .J(n46), .K(n46), .TI(shifter_N14), .TE(
        shifter_N22), .CP(clk), .CD(n135), .Q(A[0]), .QN(n14) );
  GTECH_FJK2S shifter_temp_reg_15_ ( .J(n46), .K(n46), .TI(shifter_N21), .TE(
        shifter_N22), .CP(clk), .CD(n135), .Q(A[7]), .QN(n15) );
  GTECH_FJK2S shifter_temp_reg_14_ ( .J(n46), .K(n46), .TI(shifter_N20), .TE(
        shifter_N22), .CP(clk), .CD(n135), .Q(A[6]), .QN(n16) );
  GTECH_FJK2S shifter_temp_reg_13_ ( .J(n46), .K(n46), .TI(shifter_N19), .TE(
        shifter_N22), .CP(clk), .CD(n135), .Q(A[5]), .QN(n17) );
  GTECH_FJK2S shifter_temp_reg_12_ ( .J(n46), .K(n46), .TI(shifter_N18), .TE(
        shifter_N22), .CP(clk), .CD(n135), .Q(A[4]), .QN(n18) );
  GTECH_FJK2S shifter_temp_reg_11_ ( .J(n46), .K(n46), .TI(shifter_N17), .TE(
        shifter_N22), .CP(clk), .CD(n135), .Q(A[3]), .QN(n19) );
  GTECH_FJK2S shifter_temp_reg_10_ ( .J(n46), .K(n46), .TI(shifter_N16), .TE(
        shifter_N22), .CP(clk), .CD(n135), .Q(A[2]), .QN(n20) );
  GTECH_FJK2S shifter_temp_reg_9_ ( .J(n46), .K(n46), .TI(shifter_N15), .TE(
        shifter_N22), .CP(clk), .CD(n135), .Q(A[1]), .QN(n21) );
  GTECH_FJK2S shifter_temp_reg_7_ ( .J(n46), .K(n46), .TI(shifter_N13), .TE(
        shifter_N22), .CP(clk), .CD(n135), .Q(shifter_temp_7_) );
  GTECH_FJK2S shifter_temp_reg_6_ ( .J(n46), .K(n46), .TI(shifter_N12), .TE(
        shifter_N22), .CP(clk), .CD(n135), .Q(shifter_temp_6_) );
  GTECH_FJK2S shifter_temp_reg_5_ ( .J(n46), .K(n46), .TI(shifter_N11), .TE(
        shifter_N22), .CP(clk), .CD(n135), .Q(shifter_temp_5_) );
  GTECH_FJK2S shifter_temp_reg_4_ ( .J(n46), .K(n46), .TI(shifter_N10), .TE(
        shifter_N22), .CP(clk), .CD(n135), .Q(shifter_temp_4_) );
  GTECH_FJK2S shifter_temp_reg_3_ ( .J(n46), .K(n46), .TI(shifter_N9), .TE(
        shifter_N22), .CP(clk), .CD(n135), .Q(shifter_temp_3_) );
  GTECH_FJK2S shifter_temp_reg_2_ ( .J(n46), .K(n46), .TI(shifter_N8), .TE(
        shifter_N22), .CP(clk), .CD(n135), .Q(shifter_temp_2_) );
  GTECH_FJK2S shifter_temp_reg_1_ ( .J(n46), .K(n46), .TI(shifter_N7), .TE(
        shifter_N22), .CP(clk), .CD(n135), .Q(shifter_temp_1_) );
  GTECH_FJK2S shifter_temp_reg_0_ ( .J(n46), .K(n46), .TI(shifter_N6), .TE(
        shifter_N22), .CP(clk), .CD(n135), .Q(lsb), .QN(n139) );
  GTECH_FJK2S controller_out_cmd_reg ( .J(n46), .K(n46), .TI(controller_N92), 
        .TE(controller_N95), .CP(clk), .CD(n135), .Q(out_cmd) );
  GTECH_ZERO U157 ( .Z(n46) );
  GTECH_ONE U158 ( .Z(n130) );
  GTECH_OAI2N2 U159 ( .A(n174), .B(n175), .C(Q[3]), .D(n176), .Z(shifter_N9)
         );
  GTECH_NOT U160 ( .A(shifter_temp_4_), .Z(n175) );
  GTECH_OAI2N2 U161 ( .A(n174), .B(n177), .C(Q[2]), .D(n176), .Z(shifter_N8)
         );
  GTECH_NOT U162 ( .A(shifter_temp_3_), .Z(n177) );
  GTECH_OAI2N2 U163 ( .A(n174), .B(n178), .C(Q[1]), .D(n176), .Z(shifter_N7)
         );
  GTECH_NOT U164 ( .A(shifter_temp_2_), .Z(n178) );
  GTECH_OAI2N2 U165 ( .A(n174), .B(n179), .C(Q[0]), .D(n176), .Z(shifter_N6)
         );
  GTECH_NOT U166 ( .A(shifter_temp_1_), .Z(n179) );
  GTECH_NOT U167 ( .A(n180), .Z(shifter_N24) );
  GTECH_NAND2 U168 ( .A(n180), .B(n181), .Z(shifter_N23) );
  GTECH_NAND2 U169 ( .A(n12), .B(n182), .Z(n180) );
  GTECH_NOT U170 ( .A(n10), .Z(n182) );
  GTECH_NAND2 U171 ( .A(n174), .B(n12), .Z(shifter_N22) );
  GTECH_AND2 U172 ( .A(n183), .B(n184), .Z(shifter_N21) );
  GTECH_OAI2N2 U173 ( .A(n15), .B(n185), .C(D[7]), .D(n186), .Z(n184) );
  GTECH_NOT U174 ( .A(n187), .Z(n185) );
  GTECH_OAI2N2 U175 ( .A(n188), .B(n181), .C(n189), .D(n190), .Z(shifter_N20)
         );
  GTECH_OA21 U176 ( .A(n15), .B(n187), .C(n191), .Z(n188) );
  GTECH_MUX2 U177 ( .A(n192), .B(n193), .S(n194), .Z(n191) );
  GTECH_NAND2 U178 ( .A(n15), .B(D[7]), .Z(n193) );
  GTECH_XOR2 U179 ( .A(n195), .B(n15), .Z(n192) );
  GTECH_NAND2 U180 ( .A(n194), .B(n195), .Z(n187) );
  GTECH_NOT U181 ( .A(D[7]), .Z(n195) );
  GTECH_NOT U182 ( .A(n186), .Z(n194) );
  GTECH_AO22 U183 ( .A(n196), .B(n197), .C(D[6]), .D(n198), .Z(n186) );
  GTECH_OR_NOT U184 ( .A(D[6]), .B(n16), .Z(n197) );
  GTECH_OAI2N2 U185 ( .A(n199), .B(n181), .C(n189), .D(n198), .Z(shifter_N19)
         );
  GTECH_XOR3 U186 ( .A(n16), .B(D[6]), .C(n196), .Z(n199) );
  GTECH_AO22 U187 ( .A(n200), .B(n201), .C(D[5]), .D(n202), .Z(n196) );
  GTECH_OR_NOT U188 ( .A(D[5]), .B(n17), .Z(n201) );
  GTECH_OAI2N2 U189 ( .A(n203), .B(n181), .C(n189), .D(n202), .Z(shifter_N18)
         );
  GTECH_XOR3 U190 ( .A(n17), .B(D[5]), .C(n200), .Z(n203) );
  GTECH_AO22 U191 ( .A(n204), .B(n205), .C(D[4]), .D(n206), .Z(n200) );
  GTECH_OR_NOT U192 ( .A(D[4]), .B(n18), .Z(n205) );
  GTECH_OAI2N2 U193 ( .A(n207), .B(n181), .C(n189), .D(n206), .Z(shifter_N17)
         );
  GTECH_XOR3 U194 ( .A(n18), .B(D[4]), .C(n204), .Z(n207) );
  GTECH_AO22 U195 ( .A(n208), .B(n209), .C(D[3]), .D(n210), .Z(n204) );
  GTECH_OR_NOT U196 ( .A(D[3]), .B(n19), .Z(n209) );
  GTECH_OAI2N2 U197 ( .A(n211), .B(n181), .C(n189), .D(n210), .Z(shifter_N16)
         );
  GTECH_XOR3 U198 ( .A(n19), .B(D[3]), .C(n208), .Z(n211) );
  GTECH_AO22 U199 ( .A(n212), .B(n213), .C(D[2]), .D(n214), .Z(n208) );
  GTECH_OR_NOT U200 ( .A(D[2]), .B(n20), .Z(n213) );
  GTECH_OAI2N2 U201 ( .A(n215), .B(n181), .C(n189), .D(n214), .Z(shifter_N15)
         );
  GTECH_XOR3 U202 ( .A(n20), .B(D[2]), .C(n212), .Z(n215) );
  GTECH_OAI2N2 U203 ( .A(n216), .B(n217), .C(D[1]), .D(n218), .Z(n212) );
  GTECH_AND_NOT U204 ( .A(n21), .B(D[1]), .Z(n216) );
  GTECH_OAI2N2 U205 ( .A(n181), .B(n219), .C(n189), .D(n218), .Z(shifter_N14)
         );
  GTECH_XNOR3 U206 ( .A(D[1]), .B(n217), .C(n21), .Z(n219) );
  GTECH_NAND2 U207 ( .A(D[0]), .B(n220), .Z(n217) );
  GTECH_NOT U208 ( .A(n221), .Z(shifter_N13) );
  GTECH_AOI222 U209 ( .A(Q[7]), .B(n176), .C(n189), .D(n220), .E(n222), .F(
        n183), .Z(n221) );
  GTECH_NOT U210 ( .A(n181), .Z(n183) );
  GTECH_XNOR2 U211 ( .A(D[0]), .B(n14), .Z(n222) );
  GTECH_NOT U212 ( .A(n223), .Z(n189) );
  GTECH_OAI2N2 U213 ( .A(n174), .B(n224), .C(Q[6]), .D(n176), .Z(shifter_N12)
         );
  GTECH_NOT U214 ( .A(shifter_temp_7_), .Z(n224) );
  GTECH_OAI2N2 U215 ( .A(n174), .B(n225), .C(Q[5]), .D(n176), .Z(shifter_N11)
         );
  GTECH_NOT U216 ( .A(shifter_temp_6_), .Z(n225) );
  GTECH_OAI2N2 U217 ( .A(n174), .B(n226), .C(Q[4]), .D(n176), .Z(shifter_N10)
         );
  GTECH_NOT U218 ( .A(n12), .Z(n176) );
  GTECH_NOT U219 ( .A(shifter_temp_5_), .Z(n226) );
  GTECH_NOT U220 ( .A(n227), .Z(n174) );
  GTECH_NAND2 U221 ( .A(n181), .B(n223), .Z(n227) );
  GTECH_NAND4 U222 ( .A(n9), .B(n12), .C(n10), .D(n228), .Z(n223) );
  GTECH_NOT U223 ( .A(shifter_add_temp), .Z(n228) );
  GTECH_NAND4 U224 ( .A(shifter_add_temp), .B(n9), .C(n12), .D(n10), .Z(n181)
         );
  GTECH_AND2 U225 ( .A(out_cmd), .B(n218), .Z(out[9]) );
  GTECH_NOT U226 ( .A(n21), .Z(n218) );
  GTECH_AND2 U227 ( .A(out_cmd), .B(n220), .Z(out[8]) );
  GTECH_NOT U228 ( .A(n14), .Z(n220) );
  GTECH_AND2 U229 ( .A(out_cmd), .B(shifter_temp_7_), .Z(out[7]) );
  GTECH_AND2 U230 ( .A(out_cmd), .B(shifter_temp_6_), .Z(out[6]) );
  GTECH_AND2 U231 ( .A(out_cmd), .B(shifter_temp_5_), .Z(out[5]) );
  GTECH_AND2 U232 ( .A(out_cmd), .B(shifter_temp_4_), .Z(out[4]) );
  GTECH_AND2 U233 ( .A(out_cmd), .B(shifter_temp_3_), .Z(out[3]) );
  GTECH_AND2 U234 ( .A(out_cmd), .B(shifter_temp_2_), .Z(out[2]) );
  GTECH_AND2 U235 ( .A(out_cmd), .B(shifter_temp_1_), .Z(out[1]) );
  GTECH_AND2 U236 ( .A(out_cmd), .B(n190), .Z(out[15]) );
  GTECH_NOT U237 ( .A(n15), .Z(n190) );
  GTECH_AND2 U238 ( .A(out_cmd), .B(n198), .Z(out[14]) );
  GTECH_NOT U239 ( .A(n16), .Z(n198) );
  GTECH_AND2 U240 ( .A(out_cmd), .B(n202), .Z(out[13]) );
  GTECH_NOT U241 ( .A(n17), .Z(n202) );
  GTECH_AND2 U242 ( .A(out_cmd), .B(n206), .Z(out[12]) );
  GTECH_NOT U243 ( .A(n18), .Z(n206) );
  GTECH_AND2 U244 ( .A(out_cmd), .B(n210), .Z(out[11]) );
  GTECH_NOT U245 ( .A(n19), .Z(n210) );
  GTECH_AND2 U246 ( .A(out_cmd), .B(n214), .Z(out[10]) );
  GTECH_NOT U247 ( .A(n20), .Z(n214) );
  GTECH_AND2 U248 ( .A(out_cmd), .B(n229), .Z(out[0]) );
  GTECH_AND2 U249 ( .A(controller_N98), .B(n230), .Z(controller_N97) );
  GTECH_NAND2 U250 ( .A(n231), .B(n232), .Z(controller_N96) );
  GTECH_NAND3 U251 ( .A(n233), .B(n234), .C(n139), .Z(n232) );
  GTECH_AO21 U252 ( .A(controller_N98), .B(n235), .C(n236), .Z(controller_N94)
         );
  GTECH_NAND2 U253 ( .A(n237), .B(n238), .Z(n236) );
  GTECH_NAND3 U254 ( .A(n233), .B(n229), .C(n239), .Z(n237) );
  GTECH_NOT U255 ( .A(n139), .Z(n229) );
  GTECH_NOT U256 ( .A(n240), .Z(controller_N98) );
  GTECH_AND_NOT U257 ( .A(n239), .B(n241), .Z(controller_N93) );
  GTECH_MUX2 U258 ( .A(n139), .B(n132), .S(n11), .Z(n241) );
  GTECH_AND3 U259 ( .A(n239), .B(n11), .C(n132), .Z(controller_N92) );
  GTECH_NOT U260 ( .A(n242), .Z(n239) );
  GTECH_NAND2 U261 ( .A(n140), .B(n234), .Z(n242) );
  GTECH_NOT U262 ( .A(n231), .Z(controller_N91) );
  GTECH_NAND3 U263 ( .A(n243), .B(n234), .C(n233), .Z(n231) );
  GTECH_NOT U264 ( .A(n11), .Z(n233) );
  GTECH_NOT U265 ( .A(n238), .Z(controller_N90) );
  GTECH_NAND3 U266 ( .A(n243), .B(n234), .C(n11), .Z(n238) );
  GTECH_NOT U267 ( .A(n8), .Z(n234) );
  GTECH_NOT U268 ( .A(n140), .Z(n243) );
  GTECH_OA21 U269 ( .A(n156), .B(n244), .C(n245), .Z(controller_N83) );
  GTECH_AND2 U270 ( .A(n246), .B(n235), .Z(controller_N82) );
  GTECH_XOR2 U271 ( .A(n244), .B(n156), .Z(n246) );
  GTECH_NAND2 U272 ( .A(n247), .B(n248), .Z(n244) );
  GTECH_NOT U273 ( .A(n155), .Z(n248) );
  GTECH_NOT U274 ( .A(n249), .Z(n247) );
  GTECH_AND2 U275 ( .A(n250), .B(n235), .Z(controller_N81) );
  GTECH_XOR2 U276 ( .A(n249), .B(n155), .Z(n250) );
  GTECH_NAND2 U277 ( .A(n251), .B(n252), .Z(n249) );
  GTECH_NOT U278 ( .A(n154), .Z(n252) );
  GTECH_NOT U279 ( .A(n253), .Z(n251) );
  GTECH_AND2 U280 ( .A(n254), .B(n235), .Z(controller_N80) );
  GTECH_XOR2 U281 ( .A(n253), .B(n154), .Z(n254) );
  GTECH_NAND2 U282 ( .A(n255), .B(n256), .Z(n253) );
  GTECH_NOT U283 ( .A(n153), .Z(n256) );
  GTECH_NOT U284 ( .A(n257), .Z(n255) );
  GTECH_AND2 U285 ( .A(n258), .B(n235), .Z(controller_N79) );
  GTECH_XOR2 U286 ( .A(n257), .B(n153), .Z(n258) );
  GTECH_NAND2 U287 ( .A(n259), .B(n260), .Z(n257) );
  GTECH_NOT U288 ( .A(n152), .Z(n260) );
  GTECH_NOT U289 ( .A(n261), .Z(n259) );
  GTECH_AND2 U290 ( .A(n262), .B(n235), .Z(controller_N78) );
  GTECH_XOR2 U291 ( .A(n261), .B(n152), .Z(n262) );
  GTECH_NAND2 U292 ( .A(n263), .B(n264), .Z(n261) );
  GTECH_NOT U293 ( .A(n151), .Z(n264) );
  GTECH_NOT U294 ( .A(n265), .Z(n263) );
  GTECH_AND2 U295 ( .A(n266), .B(n235), .Z(controller_N77) );
  GTECH_XOR2 U296 ( .A(n265), .B(n151), .Z(n266) );
  GTECH_NAND2 U297 ( .A(n267), .B(n268), .Z(n265) );
  GTECH_NOT U298 ( .A(n150), .Z(n268) );
  GTECH_NOT U299 ( .A(n269), .Z(n267) );
  GTECH_AND2 U300 ( .A(n270), .B(n235), .Z(controller_N76) );
  GTECH_XOR2 U301 ( .A(n269), .B(n150), .Z(n270) );
  GTECH_NAND2 U302 ( .A(n271), .B(n272), .Z(n269) );
  GTECH_NOT U303 ( .A(n149), .Z(n272) );
  GTECH_NOT U304 ( .A(n273), .Z(n271) );
  GTECH_AND2 U305 ( .A(n274), .B(n235), .Z(controller_N75) );
  GTECH_XOR2 U306 ( .A(n273), .B(n149), .Z(n274) );
  GTECH_NAND2 U307 ( .A(n275), .B(n276), .Z(n273) );
  GTECH_NOT U308 ( .A(n148), .Z(n276) );
  GTECH_NOT U309 ( .A(n277), .Z(n275) );
  GTECH_AND2 U310 ( .A(n278), .B(n235), .Z(controller_N74) );
  GTECH_XOR2 U311 ( .A(n277), .B(n148), .Z(n278) );
  GTECH_NAND2 U312 ( .A(n279), .B(n280), .Z(n277) );
  GTECH_NOT U313 ( .A(n147), .Z(n280) );
  GTECH_NOT U314 ( .A(n281), .Z(n279) );
  GTECH_AND2 U315 ( .A(n282), .B(n235), .Z(controller_N73) );
  GTECH_XOR2 U316 ( .A(n281), .B(n147), .Z(n282) );
  GTECH_NAND2 U317 ( .A(n283), .B(n284), .Z(n281) );
  GTECH_NOT U318 ( .A(n146), .Z(n284) );
  GTECH_NOT U319 ( .A(n285), .Z(n283) );
  GTECH_AND2 U320 ( .A(n286), .B(n235), .Z(controller_N72) );
  GTECH_XOR2 U321 ( .A(n285), .B(n146), .Z(n286) );
  GTECH_NAND2 U322 ( .A(n287), .B(n288), .Z(n285) );
  GTECH_NOT U323 ( .A(n145), .Z(n288) );
  GTECH_NOT U324 ( .A(n289), .Z(n287) );
  GTECH_AND2 U325 ( .A(n290), .B(n235), .Z(controller_N71) );
  GTECH_XOR2 U326 ( .A(n289), .B(n145), .Z(n290) );
  GTECH_NAND2 U327 ( .A(n291), .B(n292), .Z(n289) );
  GTECH_NOT U328 ( .A(n144), .Z(n292) );
  GTECH_NOT U329 ( .A(n293), .Z(n291) );
  GTECH_AND2 U330 ( .A(n294), .B(n235), .Z(controller_N70) );
  GTECH_XOR2 U331 ( .A(n293), .B(n144), .Z(n294) );
  GTECH_NAND2 U332 ( .A(n295), .B(n296), .Z(n293) );
  GTECH_NOT U333 ( .A(n143), .Z(n296) );
  GTECH_NOT U334 ( .A(n297), .Z(n295) );
  GTECH_AND2 U335 ( .A(n298), .B(n235), .Z(controller_N69) );
  GTECH_XOR2 U336 ( .A(n297), .B(n143), .Z(n298) );
  GTECH_NAND2 U337 ( .A(n299), .B(n300), .Z(n297) );
  GTECH_NOT U338 ( .A(n142), .Z(n300) );
  GTECH_NOT U339 ( .A(n301), .Z(n299) );
  GTECH_AND2 U340 ( .A(n302), .B(n235), .Z(controller_N68) );
  GTECH_XOR2 U341 ( .A(n301), .B(n142), .Z(n302) );
  GTECH_NAND2 U342 ( .A(n303), .B(n304), .Z(n301) );
  GTECH_NOT U343 ( .A(n173), .Z(n304) );
  GTECH_NOT U344 ( .A(n305), .Z(n303) );
  GTECH_AND2 U345 ( .A(n306), .B(n235), .Z(controller_N67) );
  GTECH_XOR2 U346 ( .A(n305), .B(n173), .Z(n306) );
  GTECH_NAND2 U347 ( .A(n307), .B(n308), .Z(n305) );
  GTECH_NOT U348 ( .A(n172), .Z(n308) );
  GTECH_NOT U349 ( .A(n309), .Z(n307) );
  GTECH_AND2 U350 ( .A(n310), .B(n235), .Z(controller_N66) );
  GTECH_XOR2 U351 ( .A(n309), .B(n172), .Z(n310) );
  GTECH_NAND2 U352 ( .A(n311), .B(n312), .Z(n309) );
  GTECH_NOT U353 ( .A(n171), .Z(n312) );
  GTECH_NOT U354 ( .A(n313), .Z(n311) );
  GTECH_AND2 U355 ( .A(n314), .B(n235), .Z(controller_N65) );
  GTECH_XOR2 U356 ( .A(n313), .B(n171), .Z(n314) );
  GTECH_NAND2 U357 ( .A(n315), .B(n316), .Z(n313) );
  GTECH_NOT U358 ( .A(n170), .Z(n316) );
  GTECH_NOT U359 ( .A(n317), .Z(n315) );
  GTECH_AND2 U360 ( .A(n318), .B(n235), .Z(controller_N64) );
  GTECH_XOR2 U361 ( .A(n317), .B(n170), .Z(n318) );
  GTECH_NAND2 U362 ( .A(n319), .B(n320), .Z(n317) );
  GTECH_NOT U363 ( .A(n169), .Z(n320) );
  GTECH_NOT U364 ( .A(n321), .Z(n319) );
  GTECH_AND2 U365 ( .A(n322), .B(n235), .Z(controller_N63) );
  GTECH_XOR2 U366 ( .A(n321), .B(n169), .Z(n322) );
  GTECH_NAND2 U367 ( .A(n323), .B(n324), .Z(n321) );
  GTECH_NOT U368 ( .A(n168), .Z(n324) );
  GTECH_NOT U369 ( .A(n325), .Z(n323) );
  GTECH_AND2 U370 ( .A(n326), .B(n235), .Z(controller_N62) );
  GTECH_XOR2 U371 ( .A(n325), .B(n168), .Z(n326) );
  GTECH_NAND2 U372 ( .A(n327), .B(n328), .Z(n325) );
  GTECH_NOT U373 ( .A(n167), .Z(n328) );
  GTECH_NOT U374 ( .A(n329), .Z(n327) );
  GTECH_AND2 U375 ( .A(n330), .B(n235), .Z(controller_N61) );
  GTECH_XOR2 U376 ( .A(n329), .B(n167), .Z(n330) );
  GTECH_NAND2 U377 ( .A(n331), .B(n332), .Z(n329) );
  GTECH_NOT U378 ( .A(n166), .Z(n332) );
  GTECH_NOT U379 ( .A(n333), .Z(n331) );
  GTECH_AND2 U380 ( .A(n334), .B(n235), .Z(controller_N60) );
  GTECH_XOR2 U381 ( .A(n333), .B(n166), .Z(n334) );
  GTECH_NAND2 U382 ( .A(n335), .B(n336), .Z(n333) );
  GTECH_NOT U383 ( .A(n165), .Z(n336) );
  GTECH_NOT U384 ( .A(n337), .Z(n335) );
  GTECH_AND2 U385 ( .A(n338), .B(n235), .Z(controller_N59) );
  GTECH_XOR2 U386 ( .A(n337), .B(n165), .Z(n338) );
  GTECH_NAND2 U387 ( .A(n339), .B(n340), .Z(n337) );
  GTECH_NOT U388 ( .A(n164), .Z(n340) );
  GTECH_NOT U389 ( .A(n341), .Z(n339) );
  GTECH_AND2 U390 ( .A(n342), .B(n235), .Z(controller_N58) );
  GTECH_XOR2 U391 ( .A(n341), .B(n164), .Z(n342) );
  GTECH_NAND2 U392 ( .A(n343), .B(n344), .Z(n341) );
  GTECH_NOT U393 ( .A(n163), .Z(n344) );
  GTECH_NOT U394 ( .A(n345), .Z(n343) );
  GTECH_AND2 U395 ( .A(n346), .B(n235), .Z(controller_N57) );
  GTECH_XOR2 U396 ( .A(n345), .B(n163), .Z(n346) );
  GTECH_NAND2 U397 ( .A(n347), .B(n348), .Z(n345) );
  GTECH_NOT U398 ( .A(n162), .Z(n348) );
  GTECH_NOT U399 ( .A(n349), .Z(n347) );
  GTECH_AND2 U400 ( .A(n350), .B(n235), .Z(controller_N56) );
  GTECH_XOR2 U401 ( .A(n349), .B(n162), .Z(n350) );
  GTECH_NAND2 U402 ( .A(n351), .B(n352), .Z(n349) );
  GTECH_NOT U403 ( .A(n161), .Z(n352) );
  GTECH_NOT U404 ( .A(n353), .Z(n351) );
  GTECH_AND2 U405 ( .A(n354), .B(n235), .Z(controller_N55) );
  GTECH_XOR2 U406 ( .A(n353), .B(n161), .Z(n354) );
  GTECH_NAND3 U407 ( .A(n355), .B(n356), .C(n357), .Z(n353) );
  GTECH_OAI2N2 U408 ( .A(n230), .B(n358), .C(controller_N52), .D(n356), .Z(
        controller_N54) );
  GTECH_NOT U409 ( .A(n160), .Z(n356) );
  GTECH_MUX2 U410 ( .A(n355), .B(n359), .S(n160), .Z(n358) );
  GTECH_NAND2 U411 ( .A(n357), .B(n355), .Z(n359) );
  GTECH_NOT U412 ( .A(n159), .Z(n355) );
  GTECH_NOT U413 ( .A(n235), .Z(n230) );
  GTECH_MUX2 U414 ( .A(controller_N52), .B(n360), .S(n159), .Z(controller_N53)
         );
  GTECH_AND2 U415 ( .A(n235), .B(n357), .Z(n360) );
  GTECH_NOT U416 ( .A(n158), .Z(n357) );
  GTECH_NOT U417 ( .A(n361), .Z(controller_N52) );
  GTECH_NAND2 U418 ( .A(n158), .B(n235), .Z(n361) );
  GTECH_AO21 U419 ( .A(n362), .B(n363), .C(n245), .Z(n235) );
  GTECH_NOT U420 ( .A(n157), .Z(n245) );
  GTECH_AND8 U421 ( .A(n154), .B(n153), .C(n155), .D(n364), .E(n147), .F(n146), 
        .G(n148), .H(n365), .Z(n363) );
  GTECH_AND4 U422 ( .A(n145), .B(n144), .C(n143), .D(n142), .Z(n365) );
  GTECH_AND4 U423 ( .A(n152), .B(n151), .C(n150), .D(n149), .Z(n364) );
  GTECH_AND8 U424 ( .A(n172), .B(n171), .C(n173), .D(n366), .E(n165), .F(n164), 
        .G(n166), .H(n367), .Z(n362) );
  GTECH_AND4 U425 ( .A(n163), .B(n162), .C(n161), .D(n156), .Z(n367) );
  GTECH_AND4 U426 ( .A(n170), .B(n169), .C(n168), .D(n167), .Z(n366) );
  GTECH_AND2 U427 ( .A(controller_N95), .B(n135), .Z(controller_N102) );
  GTECH_NOT U428 ( .A(rst), .Z(n135) );
  GTECH_NAND2 U429 ( .A(n8), .B(n240), .Z(controller_N95) );
  GTECH_NAND3 U430 ( .A(n140), .B(n11), .C(n8), .Z(n240) );
endmodule

