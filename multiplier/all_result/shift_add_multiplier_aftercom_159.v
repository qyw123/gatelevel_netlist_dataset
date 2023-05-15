
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
         controller_state_1_, controller_state_2_, controller_start, n8, n9,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n133, n135, n138,
         n49, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
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
         n362, n363, n364, n365, n366, n367, n368, n369, n370, n371, n372,
         n373, n374, n375;
  wire   [7:0] A;

  GTECH_FJK2S controller_count_reg_31_ ( .J(n49), .K(n49), .TI(controller_N83), 
        .TE(controller_N98), .CP(clk), .CD(n138), .Q(controller_count_31_), 
        .QN(n158) );
  GTECH_FJK2S controller_count_reg_30_ ( .J(n49), .K(n49), .TI(controller_N82), 
        .TE(controller_N98), .CP(clk), .CD(n138), .Q(controller_count_30_), 
        .QN(n157) );
  GTECH_FJK3 controller_start_reg ( .J(n49), .K(controller_N97), .CP(clk), 
        .CD(n133), .SD(n138), .Q(controller_start), .QN(n135) );
  GTECH_FJK2S controller_state_reg_0_ ( .J(n49), .K(n49), .TI(controller_N93), 
        .TE(controller_N95), .CP(clk), .CD(n138), .Q(controller_state_0_), 
        .QN(n143) );
  GTECH_FJK2S controller_state_reg_1_ ( .J(n49), .K(n49), .TI(controller_N94), 
        .TE(controller_N95), .CP(clk), .CD(n138), .Q(controller_state_1_), 
        .QN(n8) );
  GTECH_FJK1S controller_add_cmd_reg ( .J(n49), .K(n49), .TI(controller_N91), 
        .TE(controller_N102), .CP(clk), .Q(add_cmd), .QN(n9) );
  GTECH_FJK2S shifter_add_temp_reg ( .J(n49), .K(n49), .TI(shifter_N24), .TE(
        shifter_N23), .CP(clk), .CD(n138), .Q(shifter_add_temp) );
  GTECH_FJK2S shifter_temp_reg_4_ ( .J(n49), .K(n49), .TI(shifter_N10), .TE(
        shifter_N22), .CP(clk), .CD(n138), .Q(shifter_temp_4_) );
  GTECH_FJK2S shifter_temp_reg_3_ ( .J(n49), .K(n49), .TI(shifter_N9), .TE(
        shifter_N22), .CP(clk), .CD(n138), .Q(shifter_temp_3_) );
  GTECH_FJK2S shifter_temp_reg_2_ ( .J(n49), .K(n49), .TI(shifter_N8), .TE(
        shifter_N22), .CP(clk), .CD(n138), .Q(shifter_temp_2_) );
  GTECH_FJK2S shifter_temp_reg_1_ ( .J(n49), .K(n49), .TI(shifter_N7), .TE(
        shifter_N22), .CP(clk), .CD(n138), .Q(shifter_temp_1_) );
  GTECH_FJK2S shifter_temp_reg_0_ ( .J(n49), .K(n49), .TI(shifter_N6), .TE(
        shifter_N22), .CP(clk), .CD(n138), .Q(lsb), .QN(n142) );
  GTECH_FJK2S controller_state_reg_2_ ( .J(n49), .K(n49), .TI(controller_N96), 
        .TE(controller_N95), .CP(clk), .CD(n138), .Q(controller_state_2_), 
        .QN(n144) );
  GTECH_FJK2S controller_count_reg_29_ ( .J(n49), .K(n49), .TI(controller_N81), 
        .TE(controller_N98), .CP(clk), .CD(n138), .Q(controller_count_29_), 
        .QN(n156) );
  GTECH_FJK2S controller_count_reg_28_ ( .J(n49), .K(n49), .TI(controller_N80), 
        .TE(controller_N98), .CP(clk), .CD(n138), .Q(controller_count_28_), 
        .QN(n155) );
  GTECH_FJK2S controller_count_reg_27_ ( .J(n49), .K(n49), .TI(controller_N79), 
        .TE(controller_N98), .CP(clk), .CD(n138), .Q(controller_count_27_), 
        .QN(n154) );
  GTECH_FJK2S controller_count_reg_26_ ( .J(n49), .K(n49), .TI(controller_N78), 
        .TE(controller_N98), .CP(clk), .CD(n138), .Q(controller_count_26_), 
        .QN(n153) );
  GTECH_FJK2S controller_count_reg_25_ ( .J(n49), .K(n49), .TI(controller_N77), 
        .TE(controller_N98), .CP(clk), .CD(n138), .Q(controller_count_25_), 
        .QN(n152) );
  GTECH_FJK2S controller_count_reg_24_ ( .J(n49), .K(n49), .TI(controller_N76), 
        .TE(controller_N98), .CP(clk), .CD(n138), .Q(controller_count_24_), 
        .QN(n151) );
  GTECH_FJK2S controller_count_reg_23_ ( .J(n49), .K(n49), .TI(controller_N75), 
        .TE(controller_N98), .CP(clk), .CD(n138), .Q(controller_count_23_), 
        .QN(n150) );
  GTECH_FJK2S controller_count_reg_22_ ( .J(n49), .K(n49), .TI(controller_N74), 
        .TE(controller_N98), .CP(clk), .CD(n138), .Q(controller_count_22_), 
        .QN(n149) );
  GTECH_FJK2S controller_count_reg_21_ ( .J(n49), .K(n49), .TI(controller_N73), 
        .TE(controller_N98), .CP(clk), .CD(n138), .Q(controller_count_21_), 
        .QN(n148) );
  GTECH_FJK2S controller_count_reg_20_ ( .J(n49), .K(n49), .TI(controller_N72), 
        .TE(controller_N98), .CP(clk), .CD(n138), .Q(controller_count_20_), 
        .QN(n147) );
  GTECH_FJK2S controller_count_reg_19_ ( .J(n49), .K(n49), .TI(controller_N71), 
        .TE(controller_N98), .CP(clk), .CD(n138), .Q(controller_count_19_), 
        .QN(n146) );
  GTECH_FJK2S controller_count_reg_18_ ( .J(n49), .K(n49), .TI(controller_N70), 
        .TE(controller_N98), .CP(clk), .CD(n138), .Q(controller_count_18_), 
        .QN(n145) );
  GTECH_FJK2S controller_count_reg_17_ ( .J(n49), .K(n49), .TI(controller_N69), 
        .TE(controller_N98), .CP(clk), .CD(n138), .Q(controller_count_17_), 
        .QN(n176) );
  GTECH_FJK2S controller_count_reg_16_ ( .J(n49), .K(n49), .TI(controller_N68), 
        .TE(controller_N98), .CP(clk), .CD(n138), .Q(controller_count_16_), 
        .QN(n175) );
  GTECH_FJK2S controller_count_reg_15_ ( .J(n49), .K(n49), .TI(controller_N67), 
        .TE(controller_N98), .CP(clk), .CD(n138), .Q(controller_count_15_), 
        .QN(n174) );
  GTECH_FJK2S controller_count_reg_14_ ( .J(n49), .K(n49), .TI(controller_N66), 
        .TE(controller_N98), .CP(clk), .CD(n138), .Q(controller_count_14_), 
        .QN(n173) );
  GTECH_FJK2S controller_count_reg_13_ ( .J(n49), .K(n49), .TI(controller_N65), 
        .TE(controller_N98), .CP(clk), .CD(n138), .Q(controller_count_13_), 
        .QN(n172) );
  GTECH_FJK2S controller_count_reg_12_ ( .J(n49), .K(n49), .TI(controller_N64), 
        .TE(controller_N98), .CP(clk), .CD(n138), .Q(controller_count_12_), 
        .QN(n171) );
  GTECH_FJK2S controller_count_reg_11_ ( .J(n49), .K(n49), .TI(controller_N63), 
        .TE(controller_N98), .CP(clk), .CD(n138), .Q(controller_count_11_), 
        .QN(n170) );
  GTECH_FJK2S controller_count_reg_10_ ( .J(n49), .K(n49), .TI(controller_N62), 
        .TE(controller_N98), .CP(clk), .CD(n138), .Q(controller_count_10_), 
        .QN(n169) );
  GTECH_FJK2S controller_count_reg_9_ ( .J(n49), .K(n49), .TI(controller_N61), 
        .TE(controller_N98), .CP(clk), .CD(n138), .Q(controller_count_9_), 
        .QN(n168) );
  GTECH_FJK2S controller_count_reg_8_ ( .J(n49), .K(n49), .TI(controller_N60), 
        .TE(controller_N98), .CP(clk), .CD(n138), .Q(controller_count_8_), 
        .QN(n167) );
  GTECH_FJK2S controller_count_reg_7_ ( .J(n49), .K(n49), .TI(controller_N59), 
        .TE(controller_N98), .CP(clk), .CD(n138), .Q(controller_count_7_), 
        .QN(n166) );
  GTECH_FJK2S controller_count_reg_6_ ( .J(n49), .K(n49), .TI(controller_N58), 
        .TE(controller_N98), .CP(clk), .CD(n138), .Q(controller_count_6_), 
        .QN(n165) );
  GTECH_FJK2S controller_count_reg_5_ ( .J(n49), .K(n49), .TI(controller_N57), 
        .TE(controller_N98), .CP(clk), .CD(n138), .Q(controller_count_5_), 
        .QN(n164) );
  GTECH_FJK2S controller_count_reg_4_ ( .J(n49), .K(n49), .TI(controller_N56), 
        .TE(controller_N98), .CP(clk), .CD(n138), .Q(controller_count_4_), 
        .QN(n163) );
  GTECH_FJK2S controller_count_reg_3_ ( .J(n49), .K(n49), .TI(controller_N55), 
        .TE(controller_N98), .CP(clk), .CD(n138), .Q(controller_count_3_), 
        .QN(n162) );
  GTECH_FJK2S controller_count_reg_2_ ( .J(n49), .K(n49), .TI(controller_N54), 
        .TE(controller_N98), .CP(clk), .CD(n138), .Q(controller_count_2_), 
        .QN(n161) );
  GTECH_FJK2S controller_count_reg_1_ ( .J(n49), .K(n49), .TI(controller_N53), 
        .TE(controller_N98), .CP(clk), .CD(n138), .Q(controller_count_1_), 
        .QN(n160) );
  GTECH_FJK2S controller_count_reg_0_ ( .J(n49), .K(n49), .TI(controller_N52), 
        .TE(controller_N98), .CP(clk), .CD(n138), .Q(controller_count_0_), 
        .QN(n159) );
  GTECH_FJK2S controller_out_cmd_reg ( .J(n49), .K(n49), .TI(controller_N92), 
        .TE(controller_N95), .CP(clk), .CD(n138), .Q(out_cmd) );
  GTECH_FJK1S controller_shift_cmd_reg ( .J(n49), .K(n49), .TI(controller_N98), 
        .TE(controller_N102), .CP(clk), .Q(n16) );
  GTECH_FJK1S controller_load_cmd_reg ( .J(n49), .K(n49), .TI(controller_N90), 
        .TE(controller_N102), .CP(clk), .Q(load_cmd), .QN(n17) );
  GTECH_FJK2S shifter_temp_reg_8_ ( .J(n49), .K(n49), .TI(shifter_N14), .TE(
        shifter_N22), .CP(clk), .CD(n138), .Q(A[0]), .QN(n18) );
  GTECH_FJK2S shifter_temp_reg_15_ ( .J(n49), .K(n49), .TI(shifter_N21), .TE(
        shifter_N22), .CP(clk), .CD(n138), .Q(A[7]), .QN(n19) );
  GTECH_FJK2S shifter_temp_reg_14_ ( .J(n49), .K(n49), .TI(shifter_N20), .TE(
        shifter_N22), .CP(clk), .CD(n138), .Q(A[6]), .QN(n20) );
  GTECH_FJK2S shifter_temp_reg_13_ ( .J(n49), .K(n49), .TI(shifter_N19), .TE(
        shifter_N22), .CP(clk), .CD(n138), .Q(A[5]), .QN(n21) );
  GTECH_FJK2S shifter_temp_reg_12_ ( .J(n49), .K(n49), .TI(shifter_N18), .TE(
        shifter_N22), .CP(clk), .CD(n138), .Q(A[4]), .QN(n22) );
  GTECH_FJK2S shifter_temp_reg_11_ ( .J(n49), .K(n49), .TI(shifter_N17), .TE(
        shifter_N22), .CP(clk), .CD(n138), .Q(A[3]), .QN(n23) );
  GTECH_FJK2S shifter_temp_reg_10_ ( .J(n49), .K(n49), .TI(shifter_N16), .TE(
        shifter_N22), .CP(clk), .CD(n138), .Q(A[2]), .QN(n24) );
  GTECH_FJK2S shifter_temp_reg_9_ ( .J(n49), .K(n49), .TI(shifter_N15), .TE(
        shifter_N22), .CP(clk), .CD(n138), .Q(A[1]), .QN(n25) );
  GTECH_FJK2S shifter_temp_reg_7_ ( .J(n49), .K(n49), .TI(shifter_N13), .TE(
        shifter_N22), .CP(clk), .CD(n138), .Q(shifter_temp_7_) );
  GTECH_FJK2S shifter_temp_reg_6_ ( .J(n49), .K(n49), .TI(shifter_N12), .TE(
        shifter_N22), .CP(clk), .CD(n138), .Q(shifter_temp_6_) );
  GTECH_FJK2S shifter_temp_reg_5_ ( .J(n49), .K(n49), .TI(shifter_N11), .TE(
        shifter_N22), .CP(clk), .CD(n138), .Q(shifter_temp_5_) );
  GTECH_ZERO U161 ( .Z(n49) );
  GTECH_ONE U162 ( .Z(n133) );
  GTECH_OAI2N2 U163 ( .A(n177), .B(n178), .C(Q[3]), .D(n179), .Z(shifter_N9)
         );
  GTECH_NOT U164 ( .A(shifter_temp_4_), .Z(n178) );
  GTECH_OAI2N2 U165 ( .A(n177), .B(n180), .C(Q[2]), .D(n179), .Z(shifter_N8)
         );
  GTECH_NOT U166 ( .A(shifter_temp_3_), .Z(n180) );
  GTECH_OAI2N2 U167 ( .A(n177), .B(n181), .C(Q[1]), .D(n179), .Z(shifter_N7)
         );
  GTECH_NOT U168 ( .A(shifter_temp_2_), .Z(n181) );
  GTECH_OAI2N2 U169 ( .A(n177), .B(n182), .C(Q[0]), .D(n179), .Z(shifter_N6)
         );
  GTECH_NOT U170 ( .A(shifter_temp_1_), .Z(n182) );
  GTECH_NOT U171 ( .A(n183), .Z(shifter_N24) );
  GTECH_NAND2 U172 ( .A(n183), .B(n184), .Z(shifter_N23) );
  GTECH_NAND2 U173 ( .A(n17), .B(n185), .Z(n183) );
  GTECH_NOT U174 ( .A(n9), .Z(n185) );
  GTECH_NAND2 U175 ( .A(n177), .B(n17), .Z(shifter_N22) );
  GTECH_AND2 U176 ( .A(n186), .B(n187), .Z(shifter_N21) );
  GTECH_OAI22 U177 ( .A(n188), .B(n189), .C(n19), .D(n190), .Z(n187) );
  GTECH_NOT U178 ( .A(n191), .Z(n190) );
  GTECH_NOT U179 ( .A(n184), .Z(n186) );
  GTECH_OAI22 U180 ( .A(n19), .B(n192), .C(n193), .D(n184), .Z(shifter_N20) );
  GTECH_OA21 U181 ( .A(n19), .B(n191), .C(n194), .Z(n193) );
  GTECH_MUX2 U182 ( .A(n195), .B(n196), .S(n188), .Z(n194) );
  GTECH_NAND2 U183 ( .A(n19), .B(D[7]), .Z(n196) );
  GTECH_XOR2 U184 ( .A(n189), .B(n19), .Z(n195) );
  GTECH_NAND2 U185 ( .A(n188), .B(n189), .Z(n191) );
  GTECH_NOT U186 ( .A(D[7]), .Z(n189) );
  GTECH_AND2 U187 ( .A(n197), .B(n198), .Z(n188) );
  GTECH_OR_NOT U188 ( .A(n20), .B(D[6]), .Z(n198) );
  GTECH_OAI21 U189 ( .A(D[6]), .B(n199), .C(n200), .Z(n197) );
  GTECH_OAI22 U190 ( .A(n20), .B(n192), .C(n201), .D(n184), .Z(shifter_N19) );
  GTECH_XOR3 U191 ( .A(n20), .B(D[6]), .C(n200), .Z(n201) );
  GTECH_OAI21 U192 ( .A(n21), .B(n202), .C(n203), .Z(n200) );
  GTECH_OAI21 U193 ( .A(D[5]), .B(n204), .C(n205), .Z(n203) );
  GTECH_NOT U194 ( .A(D[5]), .Z(n202) );
  GTECH_OAI22 U195 ( .A(n21), .B(n192), .C(n206), .D(n184), .Z(shifter_N18) );
  GTECH_XOR3 U196 ( .A(n21), .B(D[5]), .C(n205), .Z(n206) );
  GTECH_OAI21 U197 ( .A(n22), .B(n207), .C(n208), .Z(n205) );
  GTECH_OAI21 U198 ( .A(D[4]), .B(n209), .C(n210), .Z(n208) );
  GTECH_NOT U199 ( .A(D[4]), .Z(n207) );
  GTECH_OAI22 U200 ( .A(n22), .B(n192), .C(n211), .D(n184), .Z(shifter_N17) );
  GTECH_XOR3 U201 ( .A(n22), .B(D[4]), .C(n210), .Z(n211) );
  GTECH_OAI21 U202 ( .A(n23), .B(n212), .C(n213), .Z(n210) );
  GTECH_OAI21 U203 ( .A(D[3]), .B(n214), .C(n215), .Z(n213) );
  GTECH_NOT U204 ( .A(D[3]), .Z(n212) );
  GTECH_OAI22 U205 ( .A(n23), .B(n192), .C(n216), .D(n184), .Z(shifter_N16) );
  GTECH_XOR3 U206 ( .A(n23), .B(D[3]), .C(n215), .Z(n216) );
  GTECH_OAI21 U207 ( .A(n24), .B(n217), .C(n218), .Z(n215) );
  GTECH_OAI21 U208 ( .A(D[2]), .B(n219), .C(n220), .Z(n218) );
  GTECH_NOT U209 ( .A(D[2]), .Z(n217) );
  GTECH_OAI22 U210 ( .A(n24), .B(n192), .C(n221), .D(n184), .Z(shifter_N15) );
  GTECH_XOR3 U211 ( .A(n24), .B(D[2]), .C(n220), .Z(n221) );
  GTECH_OAI21 U212 ( .A(n25), .B(n222), .C(n223), .Z(n220) );
  GTECH_OAI21 U213 ( .A(D[1]), .B(n224), .C(n225), .Z(n223) );
  GTECH_NOT U214 ( .A(D[1]), .Z(n222) );
  GTECH_OAI22 U215 ( .A(n25), .B(n192), .C(n184), .D(n226), .Z(shifter_N14) );
  GTECH_XOR3 U216 ( .A(n25), .B(D[1]), .C(n225), .Z(n226) );
  GTECH_NOT U217 ( .A(n227), .Z(n225) );
  GTECH_NAND2 U218 ( .A(D[0]), .B(n228), .Z(n227) );
  GTECH_NOT U219 ( .A(n229), .Z(shifter_N13) );
  GTECH_AOI21 U220 ( .A(Q[7]), .B(n179), .C(n230), .Z(n229) );
  GTECH_OAI22 U221 ( .A(n184), .B(n231), .C(n18), .D(n192), .Z(n230) );
  GTECH_XOR2 U222 ( .A(D[0]), .B(n18), .Z(n231) );
  GTECH_OAI2N2 U223 ( .A(n177), .B(n232), .C(Q[6]), .D(n179), .Z(shifter_N12)
         );
  GTECH_NOT U224 ( .A(shifter_temp_7_), .Z(n232) );
  GTECH_OAI2N2 U225 ( .A(n177), .B(n233), .C(Q[5]), .D(n179), .Z(shifter_N11)
         );
  GTECH_NOT U226 ( .A(shifter_temp_6_), .Z(n233) );
  GTECH_OAI2N2 U227 ( .A(n177), .B(n234), .C(Q[4]), .D(n179), .Z(shifter_N10)
         );
  GTECH_NOT U228 ( .A(n17), .Z(n179) );
  GTECH_NOT U229 ( .A(shifter_temp_5_), .Z(n234) );
  GTECH_NOT U230 ( .A(n235), .Z(n177) );
  GTECH_NAND2 U231 ( .A(n184), .B(n192), .Z(n235) );
  GTECH_NAND4 U232 ( .A(n9), .B(n17), .C(n16), .D(n236), .Z(n192) );
  GTECH_NOT U233 ( .A(shifter_add_temp), .Z(n236) );
  GTECH_NAND4 U234 ( .A(shifter_add_temp), .B(n9), .C(n17), .D(n16), .Z(n184)
         );
  GTECH_AND2 U235 ( .A(out_cmd), .B(n224), .Z(out[9]) );
  GTECH_NOT U236 ( .A(n25), .Z(n224) );
  GTECH_AND2 U237 ( .A(out_cmd), .B(n228), .Z(out[8]) );
  GTECH_NOT U238 ( .A(n18), .Z(n228) );
  GTECH_AND2 U239 ( .A(out_cmd), .B(shifter_temp_7_), .Z(out[7]) );
  GTECH_AND2 U240 ( .A(out_cmd), .B(shifter_temp_6_), .Z(out[6]) );
  GTECH_AND2 U241 ( .A(out_cmd), .B(shifter_temp_5_), .Z(out[5]) );
  GTECH_AND2 U242 ( .A(out_cmd), .B(shifter_temp_4_), .Z(out[4]) );
  GTECH_AND2 U243 ( .A(out_cmd), .B(shifter_temp_3_), .Z(out[3]) );
  GTECH_AND2 U244 ( .A(out_cmd), .B(shifter_temp_2_), .Z(out[2]) );
  GTECH_AND2 U245 ( .A(out_cmd), .B(shifter_temp_1_), .Z(out[1]) );
  GTECH_AND2 U246 ( .A(out_cmd), .B(n237), .Z(out[15]) );
  GTECH_NOT U247 ( .A(n19), .Z(n237) );
  GTECH_AND2 U248 ( .A(out_cmd), .B(n199), .Z(out[14]) );
  GTECH_NOT U249 ( .A(n20), .Z(n199) );
  GTECH_AND2 U250 ( .A(out_cmd), .B(n204), .Z(out[13]) );
  GTECH_NOT U251 ( .A(n21), .Z(n204) );
  GTECH_AND2 U252 ( .A(out_cmd), .B(n209), .Z(out[12]) );
  GTECH_NOT U253 ( .A(n22), .Z(n209) );
  GTECH_AND2 U254 ( .A(out_cmd), .B(n214), .Z(out[11]) );
  GTECH_NOT U255 ( .A(n23), .Z(n214) );
  GTECH_AND2 U256 ( .A(out_cmd), .B(n219), .Z(out[10]) );
  GTECH_NOT U257 ( .A(n24), .Z(n219) );
  GTECH_AND2 U258 ( .A(out_cmd), .B(n238), .Z(out[0]) );
  GTECH_AND2 U259 ( .A(n239), .B(controller_N98), .Z(controller_N97) );
  GTECH_NOT U260 ( .A(n240), .Z(controller_N98) );
  GTECH_OAI21 U261 ( .A(n241), .B(n238), .C(n242), .Z(controller_N96) );
  GTECH_OAI21 U262 ( .A(n239), .B(n240), .C(n243), .Z(controller_N94) );
  GTECH_AND2 U263 ( .A(n244), .B(n245), .Z(n243) );
  GTECH_NAND3 U264 ( .A(n143), .B(n238), .C(n246), .Z(n244) );
  GTECH_NOT U265 ( .A(n142), .Z(n238) );
  GTECH_NOR3 U266 ( .A(n247), .B(n248), .C(n249), .Z(controller_N93) );
  GTECH_MUX2 U267 ( .A(n142), .B(n135), .S(n8), .Z(n247) );
  GTECH_AND4 U268 ( .A(n135), .B(n144), .C(n8), .D(n143), .Z(controller_N92)
         );
  GTECH_NOT U269 ( .A(n242), .Z(controller_N91) );
  GTECH_NAND2 U270 ( .A(n246), .B(n248), .Z(n242) );
  GTECH_NOT U271 ( .A(n241), .Z(n246) );
  GTECH_NAND2 U272 ( .A(n144), .B(n250), .Z(n241) );
  GTECH_NOT U273 ( .A(n8), .Z(n250) );
  GTECH_NOT U274 ( .A(n245), .Z(controller_N90) );
  GTECH_NAND3 U275 ( .A(n8), .B(n248), .C(n144), .Z(n245) );
  GTECH_NOT U276 ( .A(n143), .Z(n248) );
  GTECH_OA21 U277 ( .A(n157), .B(n251), .C(n252), .Z(controller_N83) );
  GTECH_NOT U278 ( .A(n158), .Z(n252) );
  GTECH_AND2 U279 ( .A(n253), .B(n254), .Z(controller_N82) );
  GTECH_XOR2 U280 ( .A(n251), .B(n157), .Z(n253) );
  GTECH_NAND2 U281 ( .A(n255), .B(n256), .Z(n251) );
  GTECH_NOT U282 ( .A(n156), .Z(n256) );
  GTECH_NOT U283 ( .A(n257), .Z(n255) );
  GTECH_AND2 U284 ( .A(n258), .B(n254), .Z(controller_N81) );
  GTECH_XOR2 U285 ( .A(n257), .B(n156), .Z(n258) );
  GTECH_NAND2 U286 ( .A(n259), .B(n260), .Z(n257) );
  GTECH_NOT U287 ( .A(n155), .Z(n260) );
  GTECH_NOT U288 ( .A(n261), .Z(n259) );
  GTECH_AND2 U289 ( .A(n262), .B(n254), .Z(controller_N80) );
  GTECH_XOR2 U290 ( .A(n261), .B(n155), .Z(n262) );
  GTECH_NAND2 U291 ( .A(n263), .B(n264), .Z(n261) );
  GTECH_NOT U292 ( .A(n154), .Z(n264) );
  GTECH_NOT U293 ( .A(n265), .Z(n263) );
  GTECH_AND2 U294 ( .A(n266), .B(n254), .Z(controller_N79) );
  GTECH_XOR2 U295 ( .A(n265), .B(n154), .Z(n266) );
  GTECH_NAND2 U296 ( .A(n267), .B(n268), .Z(n265) );
  GTECH_NOT U297 ( .A(n153), .Z(n268) );
  GTECH_NOT U298 ( .A(n269), .Z(n267) );
  GTECH_AND2 U299 ( .A(n270), .B(n254), .Z(controller_N78) );
  GTECH_XOR2 U300 ( .A(n269), .B(n153), .Z(n270) );
  GTECH_NAND2 U301 ( .A(n271), .B(n272), .Z(n269) );
  GTECH_NOT U302 ( .A(n152), .Z(n272) );
  GTECH_NOT U303 ( .A(n273), .Z(n271) );
  GTECH_AND2 U304 ( .A(n274), .B(n254), .Z(controller_N77) );
  GTECH_XOR2 U305 ( .A(n273), .B(n152), .Z(n274) );
  GTECH_NAND2 U306 ( .A(n275), .B(n276), .Z(n273) );
  GTECH_NOT U307 ( .A(n151), .Z(n276) );
  GTECH_NOT U308 ( .A(n277), .Z(n275) );
  GTECH_AND2 U309 ( .A(n278), .B(n254), .Z(controller_N76) );
  GTECH_XOR2 U310 ( .A(n277), .B(n151), .Z(n278) );
  GTECH_NAND2 U311 ( .A(n279), .B(n280), .Z(n277) );
  GTECH_NOT U312 ( .A(n150), .Z(n280) );
  GTECH_NOT U313 ( .A(n281), .Z(n279) );
  GTECH_AND2 U314 ( .A(n282), .B(n254), .Z(controller_N75) );
  GTECH_XOR2 U315 ( .A(n281), .B(n150), .Z(n282) );
  GTECH_NAND2 U316 ( .A(n283), .B(n284), .Z(n281) );
  GTECH_NOT U317 ( .A(n149), .Z(n284) );
  GTECH_NOT U318 ( .A(n285), .Z(n283) );
  GTECH_AND2 U319 ( .A(n286), .B(n254), .Z(controller_N74) );
  GTECH_XOR2 U320 ( .A(n285), .B(n149), .Z(n286) );
  GTECH_NAND2 U321 ( .A(n287), .B(n288), .Z(n285) );
  GTECH_NOT U322 ( .A(n148), .Z(n288) );
  GTECH_NOT U323 ( .A(n289), .Z(n287) );
  GTECH_AND2 U324 ( .A(n290), .B(n254), .Z(controller_N73) );
  GTECH_XOR2 U325 ( .A(n289), .B(n148), .Z(n290) );
  GTECH_NAND2 U326 ( .A(n291), .B(n292), .Z(n289) );
  GTECH_NOT U327 ( .A(n147), .Z(n292) );
  GTECH_NOT U328 ( .A(n293), .Z(n291) );
  GTECH_AND2 U329 ( .A(n294), .B(n254), .Z(controller_N72) );
  GTECH_XOR2 U330 ( .A(n293), .B(n147), .Z(n294) );
  GTECH_NAND2 U331 ( .A(n295), .B(n296), .Z(n293) );
  GTECH_NOT U332 ( .A(n146), .Z(n296) );
  GTECH_NOT U333 ( .A(n297), .Z(n295) );
  GTECH_AND2 U334 ( .A(n298), .B(n254), .Z(controller_N71) );
  GTECH_XOR2 U335 ( .A(n297), .B(n146), .Z(n298) );
  GTECH_NAND2 U336 ( .A(n299), .B(n300), .Z(n297) );
  GTECH_NOT U337 ( .A(n145), .Z(n300) );
  GTECH_NOT U338 ( .A(n301), .Z(n299) );
  GTECH_AND2 U339 ( .A(n302), .B(n254), .Z(controller_N70) );
  GTECH_XOR2 U340 ( .A(n301), .B(n145), .Z(n302) );
  GTECH_NAND2 U341 ( .A(n303), .B(n304), .Z(n301) );
  GTECH_NOT U342 ( .A(n176), .Z(n304) );
  GTECH_NOT U343 ( .A(n305), .Z(n303) );
  GTECH_AND2 U344 ( .A(n306), .B(n254), .Z(controller_N69) );
  GTECH_XOR2 U345 ( .A(n305), .B(n176), .Z(n306) );
  GTECH_NAND2 U346 ( .A(n307), .B(n308), .Z(n305) );
  GTECH_NOT U347 ( .A(n175), .Z(n308) );
  GTECH_NOT U348 ( .A(n309), .Z(n307) );
  GTECH_AND2 U349 ( .A(n310), .B(n254), .Z(controller_N68) );
  GTECH_XOR2 U350 ( .A(n309), .B(n175), .Z(n310) );
  GTECH_NAND2 U351 ( .A(n311), .B(n312), .Z(n309) );
  GTECH_NOT U352 ( .A(n174), .Z(n312) );
  GTECH_NOT U353 ( .A(n313), .Z(n311) );
  GTECH_AND2 U354 ( .A(n314), .B(n254), .Z(controller_N67) );
  GTECH_XOR2 U355 ( .A(n313), .B(n174), .Z(n314) );
  GTECH_NAND2 U356 ( .A(n315), .B(n316), .Z(n313) );
  GTECH_NOT U357 ( .A(n173), .Z(n316) );
  GTECH_NOT U358 ( .A(n317), .Z(n315) );
  GTECH_AND2 U359 ( .A(n318), .B(n254), .Z(controller_N66) );
  GTECH_XOR2 U360 ( .A(n317), .B(n173), .Z(n318) );
  GTECH_NAND2 U361 ( .A(n319), .B(n320), .Z(n317) );
  GTECH_NOT U362 ( .A(n172), .Z(n320) );
  GTECH_NOT U363 ( .A(n321), .Z(n319) );
  GTECH_AND2 U364 ( .A(n322), .B(n254), .Z(controller_N65) );
  GTECH_XOR2 U365 ( .A(n321), .B(n172), .Z(n322) );
  GTECH_NAND2 U366 ( .A(n323), .B(n324), .Z(n321) );
  GTECH_NOT U367 ( .A(n171), .Z(n324) );
  GTECH_NOT U368 ( .A(n325), .Z(n323) );
  GTECH_AND2 U369 ( .A(n326), .B(n254), .Z(controller_N64) );
  GTECH_XOR2 U370 ( .A(n325), .B(n171), .Z(n326) );
  GTECH_NAND2 U371 ( .A(n327), .B(n328), .Z(n325) );
  GTECH_NOT U372 ( .A(n170), .Z(n328) );
  GTECH_NOT U373 ( .A(n329), .Z(n327) );
  GTECH_AND2 U374 ( .A(n330), .B(n254), .Z(controller_N63) );
  GTECH_XOR2 U375 ( .A(n329), .B(n170), .Z(n330) );
  GTECH_NAND2 U376 ( .A(n331), .B(n332), .Z(n329) );
  GTECH_NOT U377 ( .A(n169), .Z(n332) );
  GTECH_NOT U378 ( .A(n333), .Z(n331) );
  GTECH_AND2 U379 ( .A(n334), .B(n254), .Z(controller_N62) );
  GTECH_XOR2 U380 ( .A(n333), .B(n169), .Z(n334) );
  GTECH_NAND2 U381 ( .A(n335), .B(n336), .Z(n333) );
  GTECH_NOT U382 ( .A(n168), .Z(n336) );
  GTECH_NOT U383 ( .A(n337), .Z(n335) );
  GTECH_AND2 U384 ( .A(n338), .B(n254), .Z(controller_N61) );
  GTECH_XOR2 U385 ( .A(n337), .B(n168), .Z(n338) );
  GTECH_NAND2 U386 ( .A(n339), .B(n340), .Z(n337) );
  GTECH_NOT U387 ( .A(n167), .Z(n340) );
  GTECH_NOT U388 ( .A(n341), .Z(n339) );
  GTECH_AND2 U389 ( .A(n342), .B(n254), .Z(controller_N60) );
  GTECH_XOR2 U390 ( .A(n341), .B(n167), .Z(n342) );
  GTECH_NAND2 U391 ( .A(n343), .B(n344), .Z(n341) );
  GTECH_NOT U392 ( .A(n166), .Z(n344) );
  GTECH_NOT U393 ( .A(n345), .Z(n343) );
  GTECH_AND2 U394 ( .A(n346), .B(n254), .Z(controller_N59) );
  GTECH_XOR2 U395 ( .A(n345), .B(n166), .Z(n346) );
  GTECH_NAND2 U396 ( .A(n347), .B(n348), .Z(n345) );
  GTECH_NOT U397 ( .A(n165), .Z(n348) );
  GTECH_NOT U398 ( .A(n349), .Z(n347) );
  GTECH_AND2 U399 ( .A(n350), .B(n254), .Z(controller_N58) );
  GTECH_XOR2 U400 ( .A(n349), .B(n165), .Z(n350) );
  GTECH_NAND2 U401 ( .A(n351), .B(n352), .Z(n349) );
  GTECH_NOT U402 ( .A(n164), .Z(n352) );
  GTECH_NOT U403 ( .A(n353), .Z(n351) );
  GTECH_AND2 U404 ( .A(n354), .B(n254), .Z(controller_N57) );
  GTECH_XOR2 U405 ( .A(n353), .B(n164), .Z(n354) );
  GTECH_NAND2 U406 ( .A(n355), .B(n356), .Z(n353) );
  GTECH_NOT U407 ( .A(n163), .Z(n356) );
  GTECH_NOT U408 ( .A(n357), .Z(n355) );
  GTECH_AND2 U409 ( .A(n358), .B(n254), .Z(controller_N56) );
  GTECH_XOR2 U410 ( .A(n357), .B(n163), .Z(n358) );
  GTECH_NAND2 U411 ( .A(n359), .B(n360), .Z(n357) );
  GTECH_NOT U412 ( .A(n162), .Z(n360) );
  GTECH_NOT U413 ( .A(n361), .Z(n359) );
  GTECH_AND2 U414 ( .A(n362), .B(n254), .Z(controller_N55) );
  GTECH_XOR2 U415 ( .A(n361), .B(n162), .Z(n362) );
  GTECH_NAND3 U416 ( .A(n363), .B(n364), .C(n365), .Z(n361) );
  GTECH_NOT U417 ( .A(n161), .Z(n364) );
  GTECH_OAI22 U418 ( .A(n161), .B(n366), .C(n239), .D(n367), .Z(controller_N54) );
  GTECH_MUX2 U419 ( .A(n363), .B(n368), .S(n161), .Z(n367) );
  GTECH_NAND2 U420 ( .A(n365), .B(n363), .Z(n368) );
  GTECH_NOT U421 ( .A(n160), .Z(n363) );
  GTECH_NOT U422 ( .A(n254), .Z(n239) );
  GTECH_MUX2 U423 ( .A(controller_N52), .B(n369), .S(n160), .Z(controller_N53)
         );
  GTECH_AND2 U424 ( .A(n254), .B(n365), .Z(n369) );
  GTECH_NOT U425 ( .A(n159), .Z(n365) );
  GTECH_NOT U426 ( .A(n366), .Z(controller_N52) );
  GTECH_NAND2 U427 ( .A(n159), .B(n254), .Z(n366) );
  GTECH_OAI21 U428 ( .A(n370), .B(n371), .C(n158), .Z(n254) );
  GTECH_NAND8 U429 ( .A(n175), .B(n174), .C(n176), .D(n372), .E(n168), .F(n167), .G(n169), .H(n373), .Z(n371) );
  GTECH_AND4 U430 ( .A(n166), .B(n165), .C(n164), .D(n163), .Z(n373) );
  GTECH_AND4 U431 ( .A(n173), .B(n172), .C(n171), .D(n170), .Z(n372) );
  GTECH_NAND8 U432 ( .A(n157), .B(n156), .C(n162), .D(n374), .E(n150), .F(n149), .G(n151), .H(n375), .Z(n370) );
  GTECH_AND4 U433 ( .A(n148), .B(n147), .C(n146), .D(n145), .Z(n375) );
  GTECH_AND4 U434 ( .A(n155), .B(n154), .C(n153), .D(n152), .Z(n374) );
  GTECH_AND2 U435 ( .A(controller_N95), .B(n138), .Z(controller_N102) );
  GTECH_NOT U436 ( .A(rst), .Z(n138) );
  GTECH_NAND2 U437 ( .A(n249), .B(n240), .Z(controller_N95) );
  GTECH_NAND3 U438 ( .A(n143), .B(n249), .C(n8), .Z(n240) );
  GTECH_NOT U439 ( .A(n144), .Z(n249) );
endmodule

