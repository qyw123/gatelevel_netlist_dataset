
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
         controller_state_1_, controller_start, n8, n15, n16, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n59, n137, n140, n48, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234,
         n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, n245,
         n246, n247, n248, n249, n250, n251, n252, n253, n254, n255, n256,
         n257, n258, n259, n260, n261, n262, n263, n264, n265, n266, n267,
         n268, n269, n270, n271, n272, n273, n274, n275, n276, n277, n278,
         n279, n280, n281, n282, n283, n284, n285, n286, n287, n288, n289,
         n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, n300,
         n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311,
         n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322,
         n323, n324, n325, n326, n327, n328, n329, n330, n331, n332, n333,
         n334, n335, n336, n337, n338, n339, n340, n341, n342, n343, n344,
         n345, n346, n347, n348, n349, n350, n351, n352, n353, n354, n355,
         n356, n357, n358, n359, n360, n361, n362, n363, n364, n365, n366,
         n367, n368, n369, n370, n371, n372, n373, n374, n375, n376, n377,
         n378, n379;
  wire   [7:0] A;

  GTECH_FJK2S controller_count_reg_31_ ( .J(n48), .K(n48), .TI(controller_N83), 
        .TE(controller_N98), .CP(clk), .CD(n140), .Q(controller_count_31_), 
        .QN(n161) );
  GTECH_FJK2S controller_count_reg_30_ ( .J(n48), .K(n48), .TI(controller_N82), 
        .TE(controller_N98), .CP(clk), .CD(n140), .Q(controller_count_30_), 
        .QN(n160) );
  GTECH_FJK3 controller_start_reg ( .J(n48), .K(controller_N97), .CP(clk), 
        .CD(n59), .SD(n140), .Q(controller_start), .QN(n137) );
  GTECH_FJK2S controller_state_reg_0_ ( .J(n48), .K(n48), .TI(controller_N93), 
        .TE(controller_N95), .CP(clk), .CD(n140), .Q(controller_state_0_), 
        .QN(n145) );
  GTECH_FJK2S controller_add_cmd_reg ( .J(n48), .K(n48), .TI(controller_N91), 
        .TE(controller_N102), .CP(clk), .CD(n59), .Q(add_cmd), .QN(n8) );
  GTECH_FJK2S shifter_add_temp_reg ( .J(n48), .K(n48), .TI(shifter_N24), .TE(
        shifter_N23), .CP(clk), .CD(n140), .Q(shifter_add_temp) );
  GTECH_FJK2S shifter_temp_reg_4_ ( .J(n48), .K(n48), .TI(shifter_N10), .TE(
        shifter_N22), .CP(clk), .CD(n140), .Q(shifter_temp_4_) );
  GTECH_FJK2S shifter_temp_reg_3_ ( .J(n48), .K(n48), .TI(shifter_N9), .TE(
        shifter_N22), .CP(clk), .CD(n140), .Q(shifter_temp_3_) );
  GTECH_FJK2S shifter_temp_reg_2_ ( .J(n48), .K(n48), .TI(shifter_N8), .TE(
        shifter_N22), .CP(clk), .CD(n140), .Q(shifter_temp_2_) );
  GTECH_FJK2S shifter_temp_reg_1_ ( .J(n48), .K(n48), .TI(shifter_N7), .TE(
        shifter_N22), .CP(clk), .CD(n140), .Q(shifter_temp_1_) );
  GTECH_FJK2S shifter_temp_reg_0_ ( .J(n48), .K(n48), .TI(shifter_N6), .TE(
        shifter_N22), .CP(clk), .CD(n140), .Q(lsb), .QN(n144) );
  GTECH_FJK2S controller_state_reg_2_ ( .J(n48), .K(n48), .TI(controller_N96), 
        .TE(controller_N95), .CP(clk), .CD(n140), .QN(n146) );
  GTECH_FJK2S controller_count_reg_29_ ( .J(n48), .K(n48), .TI(controller_N81), 
        .TE(controller_N98), .CP(clk), .CD(n140), .Q(controller_count_29_), 
        .QN(n159) );
  GTECH_FJK2S controller_count_reg_28_ ( .J(n48), .K(n48), .TI(controller_N80), 
        .TE(controller_N98), .CP(clk), .CD(n140), .Q(controller_count_28_), 
        .QN(n158) );
  GTECH_FJK2S controller_count_reg_27_ ( .J(n48), .K(n48), .TI(controller_N79), 
        .TE(controller_N98), .CP(clk), .CD(n140), .Q(controller_count_27_), 
        .QN(n157) );
  GTECH_FJK2S controller_count_reg_26_ ( .J(n48), .K(n48), .TI(controller_N78), 
        .TE(controller_N98), .CP(clk), .CD(n140), .Q(controller_count_26_), 
        .QN(n156) );
  GTECH_FJK2S controller_count_reg_25_ ( .J(n48), .K(n48), .TI(controller_N77), 
        .TE(controller_N98), .CP(clk), .CD(n140), .Q(controller_count_25_), 
        .QN(n155) );
  GTECH_FJK2S controller_count_reg_24_ ( .J(n48), .K(n48), .TI(controller_N76), 
        .TE(controller_N98), .CP(clk), .CD(n140), .Q(controller_count_24_), 
        .QN(n154) );
  GTECH_FJK2S controller_count_reg_23_ ( .J(n48), .K(n48), .TI(controller_N75), 
        .TE(controller_N98), .CP(clk), .CD(n140), .Q(controller_count_23_), 
        .QN(n153) );
  GTECH_FJK2S controller_count_reg_22_ ( .J(n48), .K(n48), .TI(controller_N74), 
        .TE(controller_N98), .CP(clk), .CD(n140), .Q(controller_count_22_), 
        .QN(n152) );
  GTECH_FJK2S controller_count_reg_21_ ( .J(n48), .K(n48), .TI(controller_N73), 
        .TE(controller_N98), .CP(clk), .CD(n140), .Q(controller_count_21_), 
        .QN(n151) );
  GTECH_FJK2S controller_count_reg_20_ ( .J(n48), .K(n48), .TI(controller_N72), 
        .TE(controller_N98), .CP(clk), .CD(n140), .Q(controller_count_20_), 
        .QN(n150) );
  GTECH_FJK2S controller_count_reg_19_ ( .J(n48), .K(n48), .TI(controller_N71), 
        .TE(controller_N98), .CP(clk), .CD(n140), .Q(controller_count_19_), 
        .QN(n149) );
  GTECH_FJK2S controller_count_reg_18_ ( .J(n48), .K(n48), .TI(controller_N70), 
        .TE(controller_N98), .CP(clk), .CD(n140), .Q(controller_count_18_), 
        .QN(n148) );
  GTECH_FJK2S controller_count_reg_17_ ( .J(n48), .K(n48), .TI(controller_N69), 
        .TE(controller_N98), .CP(clk), .CD(n140), .Q(controller_count_17_), 
        .QN(n147) );
  GTECH_FJK2S controller_count_reg_16_ ( .J(n48), .K(n48), .TI(controller_N68), 
        .TE(controller_N98), .CP(clk), .CD(n140), .Q(controller_count_16_), 
        .QN(n178) );
  GTECH_FJK2S controller_count_reg_15_ ( .J(n48), .K(n48), .TI(controller_N67), 
        .TE(controller_N98), .CP(clk), .CD(n140), .Q(controller_count_15_), 
        .QN(n177) );
  GTECH_FJK2S controller_count_reg_14_ ( .J(n48), .K(n48), .TI(controller_N66), 
        .TE(controller_N98), .CP(clk), .CD(n140), .Q(controller_count_14_), 
        .QN(n176) );
  GTECH_FJK2S controller_count_reg_13_ ( .J(n48), .K(n48), .TI(controller_N65), 
        .TE(controller_N98), .CP(clk), .CD(n140), .Q(controller_count_13_), 
        .QN(n175) );
  GTECH_FJK2S controller_count_reg_12_ ( .J(n48), .K(n48), .TI(controller_N64), 
        .TE(controller_N98), .CP(clk), .CD(n140), .Q(controller_count_12_), 
        .QN(n174) );
  GTECH_FJK2S controller_count_reg_11_ ( .J(n48), .K(n48), .TI(controller_N63), 
        .TE(controller_N98), .CP(clk), .CD(n140), .Q(controller_count_11_), 
        .QN(n173) );
  GTECH_FJK2S controller_count_reg_10_ ( .J(n48), .K(n48), .TI(controller_N62), 
        .TE(controller_N98), .CP(clk), .CD(n140), .Q(controller_count_10_), 
        .QN(n172) );
  GTECH_FJK2S controller_count_reg_9_ ( .J(n48), .K(n48), .TI(controller_N61), 
        .TE(controller_N98), .CP(clk), .CD(n140), .Q(controller_count_9_), 
        .QN(n171) );
  GTECH_FJK2S controller_count_reg_8_ ( .J(n48), .K(n48), .TI(controller_N60), 
        .TE(controller_N98), .CP(clk), .CD(n140), .Q(controller_count_8_), 
        .QN(n170) );
  GTECH_FJK2S controller_count_reg_7_ ( .J(n48), .K(n48), .TI(controller_N59), 
        .TE(controller_N98), .CP(clk), .CD(n140), .Q(controller_count_7_), 
        .QN(n169) );
  GTECH_FJK2S controller_count_reg_6_ ( .J(n48), .K(n48), .TI(controller_N58), 
        .TE(controller_N98), .CP(clk), .CD(n140), .Q(controller_count_6_), 
        .QN(n168) );
  GTECH_FJK2S controller_count_reg_5_ ( .J(n48), .K(n48), .TI(controller_N57), 
        .TE(controller_N98), .CP(clk), .CD(n140), .Q(controller_count_5_), 
        .QN(n167) );
  GTECH_FJK2S controller_count_reg_4_ ( .J(n48), .K(n48), .TI(controller_N56), 
        .TE(controller_N98), .CP(clk), .CD(n140), .Q(controller_count_4_), 
        .QN(n166) );
  GTECH_FJK2S controller_count_reg_3_ ( .J(n48), .K(n48), .TI(controller_N55), 
        .TE(controller_N98), .CP(clk), .CD(n140), .Q(controller_count_3_), 
        .QN(n165) );
  GTECH_FJK2S controller_count_reg_2_ ( .J(n48), .K(n48), .TI(controller_N54), 
        .TE(controller_N98), .CP(clk), .CD(n140), .Q(controller_count_2_), 
        .QN(n164) );
  GTECH_FJK2S controller_count_reg_1_ ( .J(n48), .K(n48), .TI(controller_N53), 
        .TE(controller_N98), .CP(clk), .CD(n140), .Q(controller_count_1_), 
        .QN(n163) );
  GTECH_FJK2S controller_count_reg_0_ ( .J(n48), .K(n48), .TI(controller_N52), 
        .TE(controller_N98), .CP(clk), .CD(n140), .Q(controller_count_0_), 
        .QN(n162) );
  GTECH_FJK2S controller_shift_cmd_reg ( .J(n48), .K(n48), .TI(controller_N98), 
        .TE(controller_N102), .CP(clk), .CD(n59), .Q(n15) );
  GTECH_FJK2S controller_state_reg_1_ ( .J(n48), .K(n48), .TI(controller_N94), 
        .TE(controller_N95), .CP(clk), .CD(n140), .Q(controller_state_1_), 
        .QN(n16) );
  GTECH_FJK2S controller_out_cmd_reg ( .J(n48), .K(n48), .TI(controller_N92), 
        .TE(controller_N95), .CP(clk), .CD(n140), .Q(out_cmd) );
  GTECH_FJK2S controller_load_cmd_reg ( .J(n48), .K(n48), .TI(controller_N90), 
        .TE(controller_N102), .CP(clk), .CD(n59), .Q(load_cmd), .QN(n18) );
  GTECH_FJK2S shifter_temp_reg_8_ ( .J(n48), .K(n48), .TI(shifter_N14), .TE(
        shifter_N22), .CP(clk), .CD(n140), .Q(A[0]), .QN(n19) );
  GTECH_FJK2S shifter_temp_reg_15_ ( .J(n48), .K(n48), .TI(shifter_N21), .TE(
        shifter_N22), .CP(clk), .CD(n140), .Q(A[7]), .QN(n20) );
  GTECH_FJK2S shifter_temp_reg_14_ ( .J(n48), .K(n48), .TI(shifter_N20), .TE(
        shifter_N22), .CP(clk), .CD(n140), .Q(A[6]), .QN(n21) );
  GTECH_FJK2S shifter_temp_reg_13_ ( .J(n48), .K(n48), .TI(shifter_N19), .TE(
        shifter_N22), .CP(clk), .CD(n140), .Q(A[5]), .QN(n22) );
  GTECH_FJK2S shifter_temp_reg_12_ ( .J(n48), .K(n48), .TI(shifter_N18), .TE(
        shifter_N22), .CP(clk), .CD(n140), .Q(A[4]), .QN(n23) );
  GTECH_FJK2S shifter_temp_reg_11_ ( .J(n48), .K(n48), .TI(shifter_N17), .TE(
        shifter_N22), .CP(clk), .CD(n140), .Q(A[3]), .QN(n24) );
  GTECH_FJK2S shifter_temp_reg_10_ ( .J(n48), .K(n48), .TI(shifter_N16), .TE(
        shifter_N22), .CP(clk), .CD(n140), .Q(A[2]), .QN(n25) );
  GTECH_FJK2S shifter_temp_reg_9_ ( .J(n48), .K(n48), .TI(shifter_N15), .TE(
        shifter_N22), .CP(clk), .CD(n140), .Q(A[1]), .QN(n26) );
  GTECH_FJK2S shifter_temp_reg_7_ ( .J(n48), .K(n48), .TI(shifter_N13), .TE(
        shifter_N22), .CP(clk), .CD(n140), .Q(shifter_temp_7_) );
  GTECH_FJK2S shifter_temp_reg_6_ ( .J(n48), .K(n48), .TI(shifter_N12), .TE(
        shifter_N22), .CP(clk), .CD(n140), .Q(shifter_temp_6_) );
  GTECH_FJK2S shifter_temp_reg_5_ ( .J(n48), .K(n48), .TI(shifter_N11), .TE(
        shifter_N22), .CP(clk), .CD(n140), .Q(shifter_temp_5_) );
  GTECH_ZERO U162 ( .Z(n48) );
  GTECH_ONE U163 ( .Z(n59) );
  GTECH_OAI2N2 U164 ( .A(n179), .B(n180), .C(Q[3]), .D(n181), .Z(shifter_N9)
         );
  GTECH_NOT U165 ( .A(shifter_temp_4_), .Z(n180) );
  GTECH_OAI2N2 U166 ( .A(n179), .B(n182), .C(Q[2]), .D(n181), .Z(shifter_N8)
         );
  GTECH_NOT U167 ( .A(shifter_temp_3_), .Z(n182) );
  GTECH_OAI2N2 U168 ( .A(n179), .B(n183), .C(Q[1]), .D(n181), .Z(shifter_N7)
         );
  GTECH_NOT U169 ( .A(shifter_temp_2_), .Z(n183) );
  GTECH_OAI2N2 U170 ( .A(n179), .B(n184), .C(Q[0]), .D(n181), .Z(shifter_N6)
         );
  GTECH_NOT U171 ( .A(shifter_temp_1_), .Z(n184) );
  GTECH_NOT U172 ( .A(n185), .Z(shifter_N24) );
  GTECH_NAND2 U173 ( .A(n185), .B(n186), .Z(shifter_N23) );
  GTECH_NAND2 U174 ( .A(n18), .B(n187), .Z(n185) );
  GTECH_NOT U175 ( .A(n8), .Z(n187) );
  GTECH_NAND2 U176 ( .A(n179), .B(n18), .Z(shifter_N22) );
  GTECH_AND2 U177 ( .A(n188), .B(n189), .Z(shifter_N21) );
  GTECH_OAI2N2 U178 ( .A(n20), .B(n190), .C(D[7]), .D(n191), .Z(n189) );
  GTECH_NOT U179 ( .A(n192), .Z(n190) );
  GTECH_OAI2N2 U180 ( .A(n193), .B(n186), .C(n194), .D(n195), .Z(shifter_N20)
         );
  GTECH_OA21 U181 ( .A(n20), .B(n192), .C(n196), .Z(n193) );
  GTECH_MUX2 U182 ( .A(n197), .B(n198), .S(n199), .Z(n196) );
  GTECH_NAND2 U183 ( .A(n20), .B(D[7]), .Z(n198) );
  GTECH_XOR2 U184 ( .A(n200), .B(n20), .Z(n197) );
  GTECH_NAND2 U185 ( .A(n199), .B(n200), .Z(n192) );
  GTECH_NOT U186 ( .A(D[7]), .Z(n200) );
  GTECH_NOT U187 ( .A(n191), .Z(n199) );
  GTECH_OAI21 U188 ( .A(n21), .B(n201), .C(n202), .Z(n191) );
  GTECH_OAI21 U189 ( .A(D[6]), .B(n203), .C(n204), .Z(n202) );
  GTECH_NOT U190 ( .A(D[6]), .Z(n201) );
  GTECH_OAI2N2 U191 ( .A(n205), .B(n186), .C(n194), .D(n203), .Z(shifter_N19)
         );
  GTECH_XOR3 U192 ( .A(n21), .B(D[6]), .C(n204), .Z(n205) );
  GTECH_OAI21 U193 ( .A(n22), .B(n206), .C(n207), .Z(n204) );
  GTECH_OAI21 U194 ( .A(D[5]), .B(n208), .C(n209), .Z(n207) );
  GTECH_NOT U195 ( .A(D[5]), .Z(n206) );
  GTECH_OAI2N2 U196 ( .A(n210), .B(n186), .C(n194), .D(n208), .Z(shifter_N18)
         );
  GTECH_XOR3 U197 ( .A(n22), .B(D[5]), .C(n209), .Z(n210) );
  GTECH_OAI21 U198 ( .A(n23), .B(n211), .C(n212), .Z(n209) );
  GTECH_OAI21 U199 ( .A(D[4]), .B(n213), .C(n214), .Z(n212) );
  GTECH_NOT U200 ( .A(D[4]), .Z(n211) );
  GTECH_OAI2N2 U201 ( .A(n215), .B(n186), .C(n194), .D(n213), .Z(shifter_N17)
         );
  GTECH_XOR3 U202 ( .A(n23), .B(D[4]), .C(n214), .Z(n215) );
  GTECH_OAI21 U203 ( .A(n24), .B(n216), .C(n217), .Z(n214) );
  GTECH_OAI21 U204 ( .A(D[3]), .B(n218), .C(n219), .Z(n217) );
  GTECH_NOT U205 ( .A(D[3]), .Z(n216) );
  GTECH_OAI2N2 U206 ( .A(n220), .B(n186), .C(n194), .D(n218), .Z(shifter_N16)
         );
  GTECH_XOR3 U207 ( .A(n24), .B(D[3]), .C(n219), .Z(n220) );
  GTECH_OAI21 U208 ( .A(n25), .B(n221), .C(n222), .Z(n219) );
  GTECH_OAI21 U209 ( .A(D[2]), .B(n223), .C(n224), .Z(n222) );
  GTECH_NOT U210 ( .A(D[2]), .Z(n221) );
  GTECH_OAI2N2 U211 ( .A(n225), .B(n186), .C(n194), .D(n223), .Z(shifter_N15)
         );
  GTECH_XOR3 U212 ( .A(n25), .B(D[2]), .C(n224), .Z(n225) );
  GTECH_OAI21 U213 ( .A(n26), .B(n226), .C(n227), .Z(n224) );
  GTECH_OAI21 U214 ( .A(D[1]), .B(n228), .C(n229), .Z(n227) );
  GTECH_NOT U215 ( .A(D[1]), .Z(n226) );
  GTECH_OAI2N2 U216 ( .A(n186), .B(n230), .C(n194), .D(n228), .Z(shifter_N14)
         );
  GTECH_XOR3 U217 ( .A(n26), .B(D[1]), .C(n229), .Z(n230) );
  GTECH_NOT U218 ( .A(n231), .Z(n229) );
  GTECH_NAND2 U219 ( .A(D[0]), .B(n232), .Z(n231) );
  GTECH_NOT U220 ( .A(n233), .Z(shifter_N13) );
  GTECH_AOI222 U221 ( .A(Q[7]), .B(n181), .C(n194), .D(n232), .E(n234), .F(
        n188), .Z(n233) );
  GTECH_NOT U222 ( .A(n186), .Z(n188) );
  GTECH_XNOR2 U223 ( .A(D[0]), .B(n19), .Z(n234) );
  GTECH_NOT U224 ( .A(n235), .Z(n194) );
  GTECH_OAI2N2 U225 ( .A(n179), .B(n236), .C(Q[6]), .D(n181), .Z(shifter_N12)
         );
  GTECH_NOT U226 ( .A(shifter_temp_7_), .Z(n236) );
  GTECH_OAI2N2 U227 ( .A(n179), .B(n237), .C(Q[5]), .D(n181), .Z(shifter_N11)
         );
  GTECH_NOT U228 ( .A(shifter_temp_6_), .Z(n237) );
  GTECH_OAI2N2 U229 ( .A(n179), .B(n238), .C(Q[4]), .D(n181), .Z(shifter_N10)
         );
  GTECH_NOT U230 ( .A(n18), .Z(n181) );
  GTECH_NOT U231 ( .A(shifter_temp_5_), .Z(n238) );
  GTECH_NOT U232 ( .A(n239), .Z(n179) );
  GTECH_NAND2 U233 ( .A(n186), .B(n235), .Z(n239) );
  GTECH_NAND4 U234 ( .A(n8), .B(n18), .C(n15), .D(n240), .Z(n235) );
  GTECH_NOT U235 ( .A(shifter_add_temp), .Z(n240) );
  GTECH_NAND4 U236 ( .A(shifter_add_temp), .B(n8), .C(n18), .D(n15), .Z(n186)
         );
  GTECH_AND2 U237 ( .A(out_cmd), .B(n228), .Z(out[9]) );
  GTECH_NOT U238 ( .A(n26), .Z(n228) );
  GTECH_AND2 U239 ( .A(out_cmd), .B(n232), .Z(out[8]) );
  GTECH_NOT U240 ( .A(n19), .Z(n232) );
  GTECH_AND2 U241 ( .A(out_cmd), .B(shifter_temp_7_), .Z(out[7]) );
  GTECH_AND2 U242 ( .A(out_cmd), .B(shifter_temp_6_), .Z(out[6]) );
  GTECH_AND2 U243 ( .A(out_cmd), .B(shifter_temp_5_), .Z(out[5]) );
  GTECH_AND2 U244 ( .A(out_cmd), .B(shifter_temp_4_), .Z(out[4]) );
  GTECH_AND2 U245 ( .A(out_cmd), .B(shifter_temp_3_), .Z(out[3]) );
  GTECH_AND2 U246 ( .A(out_cmd), .B(shifter_temp_2_), .Z(out[2]) );
  GTECH_AND2 U247 ( .A(out_cmd), .B(shifter_temp_1_), .Z(out[1]) );
  GTECH_AND2 U248 ( .A(out_cmd), .B(n195), .Z(out[15]) );
  GTECH_NOT U249 ( .A(n20), .Z(n195) );
  GTECH_AND2 U250 ( .A(out_cmd), .B(n203), .Z(out[14]) );
  GTECH_NOT U251 ( .A(n21), .Z(n203) );
  GTECH_AND2 U252 ( .A(out_cmd), .B(n208), .Z(out[13]) );
  GTECH_NOT U253 ( .A(n22), .Z(n208) );
  GTECH_AND2 U254 ( .A(out_cmd), .B(n213), .Z(out[12]) );
  GTECH_NOT U255 ( .A(n23), .Z(n213) );
  GTECH_AND2 U256 ( .A(out_cmd), .B(n218), .Z(out[11]) );
  GTECH_NOT U257 ( .A(n24), .Z(n218) );
  GTECH_AND2 U258 ( .A(out_cmd), .B(n223), .Z(out[10]) );
  GTECH_NOT U259 ( .A(n25), .Z(n223) );
  GTECH_AND2 U260 ( .A(out_cmd), .B(n241), .Z(out[0]) );
  GTECH_AND2 U261 ( .A(controller_N98), .B(n242), .Z(controller_N97) );
  GTECH_NOT U262 ( .A(n243), .Z(controller_N98) );
  GTECH_OAI21 U263 ( .A(n244), .B(n241), .C(n245), .Z(controller_N96) );
  GTECH_OAI21 U264 ( .A(n242), .B(n243), .C(n246), .Z(controller_N94) );
  GTECH_AND2 U265 ( .A(n247), .B(n248), .Z(n246) );
  GTECH_NAND3 U266 ( .A(n145), .B(n241), .C(n249), .Z(n247) );
  GTECH_AND3 U267 ( .A(n146), .B(n145), .C(n250), .Z(controller_N93) );
  GTECH_MUX2 U268 ( .A(n241), .B(n251), .S(n16), .Z(n250) );
  GTECH_NOT U269 ( .A(n137), .Z(n251) );
  GTECH_NOT U270 ( .A(n144), .Z(n241) );
  GTECH_AND4 U271 ( .A(n137), .B(n146), .C(n16), .D(n145), .Z(controller_N92)
         );
  GTECH_NOT U272 ( .A(n245), .Z(controller_N91) );
  GTECH_NAND2 U273 ( .A(n249), .B(n252), .Z(n245) );
  GTECH_NOT U274 ( .A(n244), .Z(n249) );
  GTECH_NAND2 U275 ( .A(n146), .B(n253), .Z(n244) );
  GTECH_NOT U276 ( .A(n16), .Z(n253) );
  GTECH_NOT U277 ( .A(n248), .Z(controller_N90) );
  GTECH_NAND3 U278 ( .A(n16), .B(n252), .C(n146), .Z(n248) );
  GTECH_NOT U279 ( .A(n145), .Z(n252) );
  GTECH_OA21 U280 ( .A(n160), .B(n254), .C(n255), .Z(controller_N83) );
  GTECH_NOT U281 ( .A(n161), .Z(n255) );
  GTECH_AND2 U282 ( .A(n256), .B(n257), .Z(controller_N82) );
  GTECH_XOR2 U283 ( .A(n254), .B(n160), .Z(n256) );
  GTECH_NAND2 U284 ( .A(n258), .B(n259), .Z(n254) );
  GTECH_NOT U285 ( .A(n159), .Z(n259) );
  GTECH_NOT U286 ( .A(n260), .Z(n258) );
  GTECH_AND2 U287 ( .A(n261), .B(n257), .Z(controller_N81) );
  GTECH_XOR2 U288 ( .A(n260), .B(n159), .Z(n261) );
  GTECH_NAND2 U289 ( .A(n262), .B(n263), .Z(n260) );
  GTECH_NOT U290 ( .A(n158), .Z(n263) );
  GTECH_NOT U291 ( .A(n264), .Z(n262) );
  GTECH_AND2 U292 ( .A(n265), .B(n257), .Z(controller_N80) );
  GTECH_XOR2 U293 ( .A(n264), .B(n158), .Z(n265) );
  GTECH_NAND2 U294 ( .A(n266), .B(n267), .Z(n264) );
  GTECH_NOT U295 ( .A(n157), .Z(n267) );
  GTECH_NOT U296 ( .A(n268), .Z(n266) );
  GTECH_AND2 U297 ( .A(n269), .B(n257), .Z(controller_N79) );
  GTECH_XOR2 U298 ( .A(n268), .B(n157), .Z(n269) );
  GTECH_NAND2 U299 ( .A(n270), .B(n271), .Z(n268) );
  GTECH_NOT U300 ( .A(n156), .Z(n271) );
  GTECH_NOT U301 ( .A(n272), .Z(n270) );
  GTECH_AND2 U302 ( .A(n273), .B(n257), .Z(controller_N78) );
  GTECH_XOR2 U303 ( .A(n272), .B(n156), .Z(n273) );
  GTECH_NAND2 U304 ( .A(n274), .B(n275), .Z(n272) );
  GTECH_NOT U305 ( .A(n155), .Z(n275) );
  GTECH_NOT U306 ( .A(n276), .Z(n274) );
  GTECH_AND2 U307 ( .A(n277), .B(n257), .Z(controller_N77) );
  GTECH_XOR2 U308 ( .A(n276), .B(n155), .Z(n277) );
  GTECH_NAND2 U309 ( .A(n278), .B(n279), .Z(n276) );
  GTECH_NOT U310 ( .A(n154), .Z(n279) );
  GTECH_NOT U311 ( .A(n280), .Z(n278) );
  GTECH_AND2 U312 ( .A(n281), .B(n257), .Z(controller_N76) );
  GTECH_XOR2 U313 ( .A(n280), .B(n154), .Z(n281) );
  GTECH_NAND2 U314 ( .A(n282), .B(n283), .Z(n280) );
  GTECH_NOT U315 ( .A(n153), .Z(n283) );
  GTECH_NOT U316 ( .A(n284), .Z(n282) );
  GTECH_AND2 U317 ( .A(n285), .B(n257), .Z(controller_N75) );
  GTECH_XOR2 U318 ( .A(n284), .B(n153), .Z(n285) );
  GTECH_NAND2 U319 ( .A(n286), .B(n287), .Z(n284) );
  GTECH_NOT U320 ( .A(n152), .Z(n287) );
  GTECH_NOT U321 ( .A(n288), .Z(n286) );
  GTECH_AND2 U322 ( .A(n289), .B(n257), .Z(controller_N74) );
  GTECH_XOR2 U323 ( .A(n288), .B(n152), .Z(n289) );
  GTECH_NAND2 U324 ( .A(n290), .B(n291), .Z(n288) );
  GTECH_NOT U325 ( .A(n151), .Z(n291) );
  GTECH_NOT U326 ( .A(n292), .Z(n290) );
  GTECH_AND2 U327 ( .A(n293), .B(n257), .Z(controller_N73) );
  GTECH_XOR2 U328 ( .A(n292), .B(n151), .Z(n293) );
  GTECH_NAND2 U329 ( .A(n294), .B(n295), .Z(n292) );
  GTECH_NOT U330 ( .A(n150), .Z(n295) );
  GTECH_NOT U331 ( .A(n296), .Z(n294) );
  GTECH_AND2 U332 ( .A(n297), .B(n257), .Z(controller_N72) );
  GTECH_XOR2 U333 ( .A(n296), .B(n150), .Z(n297) );
  GTECH_NAND2 U334 ( .A(n298), .B(n299), .Z(n296) );
  GTECH_NOT U335 ( .A(n149), .Z(n299) );
  GTECH_NOT U336 ( .A(n300), .Z(n298) );
  GTECH_AND2 U337 ( .A(n301), .B(n257), .Z(controller_N71) );
  GTECH_XOR2 U338 ( .A(n300), .B(n149), .Z(n301) );
  GTECH_NAND2 U339 ( .A(n302), .B(n303), .Z(n300) );
  GTECH_NOT U340 ( .A(n148), .Z(n303) );
  GTECH_NOT U341 ( .A(n304), .Z(n302) );
  GTECH_AND2 U342 ( .A(n305), .B(n257), .Z(controller_N70) );
  GTECH_XOR2 U343 ( .A(n304), .B(n148), .Z(n305) );
  GTECH_NAND2 U344 ( .A(n306), .B(n307), .Z(n304) );
  GTECH_NOT U345 ( .A(n147), .Z(n307) );
  GTECH_NOT U346 ( .A(n308), .Z(n306) );
  GTECH_AND2 U347 ( .A(n309), .B(n257), .Z(controller_N69) );
  GTECH_XOR2 U348 ( .A(n308), .B(n147), .Z(n309) );
  GTECH_NAND2 U349 ( .A(n310), .B(n311), .Z(n308) );
  GTECH_NOT U350 ( .A(n178), .Z(n311) );
  GTECH_NOT U351 ( .A(n312), .Z(n310) );
  GTECH_AND2 U352 ( .A(n313), .B(n257), .Z(controller_N68) );
  GTECH_XOR2 U353 ( .A(n312), .B(n178), .Z(n313) );
  GTECH_NAND2 U354 ( .A(n314), .B(n315), .Z(n312) );
  GTECH_NOT U355 ( .A(n177), .Z(n315) );
  GTECH_NOT U356 ( .A(n316), .Z(n314) );
  GTECH_AND2 U357 ( .A(n317), .B(n257), .Z(controller_N67) );
  GTECH_XOR2 U358 ( .A(n316), .B(n177), .Z(n317) );
  GTECH_NAND2 U359 ( .A(n318), .B(n319), .Z(n316) );
  GTECH_NOT U360 ( .A(n176), .Z(n319) );
  GTECH_NOT U361 ( .A(n320), .Z(n318) );
  GTECH_AND2 U362 ( .A(n321), .B(n257), .Z(controller_N66) );
  GTECH_XOR2 U363 ( .A(n320), .B(n176), .Z(n321) );
  GTECH_NAND2 U364 ( .A(n322), .B(n323), .Z(n320) );
  GTECH_NOT U365 ( .A(n175), .Z(n323) );
  GTECH_NOT U366 ( .A(n324), .Z(n322) );
  GTECH_AND2 U367 ( .A(n325), .B(n257), .Z(controller_N65) );
  GTECH_XOR2 U368 ( .A(n324), .B(n175), .Z(n325) );
  GTECH_NAND2 U369 ( .A(n326), .B(n327), .Z(n324) );
  GTECH_NOT U370 ( .A(n174), .Z(n327) );
  GTECH_NOT U371 ( .A(n328), .Z(n326) );
  GTECH_AND2 U372 ( .A(n329), .B(n257), .Z(controller_N64) );
  GTECH_XOR2 U373 ( .A(n328), .B(n174), .Z(n329) );
  GTECH_NAND2 U374 ( .A(n330), .B(n331), .Z(n328) );
  GTECH_NOT U375 ( .A(n173), .Z(n331) );
  GTECH_NOT U376 ( .A(n332), .Z(n330) );
  GTECH_AND2 U377 ( .A(n333), .B(n257), .Z(controller_N63) );
  GTECH_XOR2 U378 ( .A(n332), .B(n173), .Z(n333) );
  GTECH_NAND2 U379 ( .A(n334), .B(n335), .Z(n332) );
  GTECH_NOT U380 ( .A(n172), .Z(n335) );
  GTECH_NOT U381 ( .A(n336), .Z(n334) );
  GTECH_AND2 U382 ( .A(n337), .B(n257), .Z(controller_N62) );
  GTECH_XOR2 U383 ( .A(n336), .B(n172), .Z(n337) );
  GTECH_NAND2 U384 ( .A(n338), .B(n339), .Z(n336) );
  GTECH_NOT U385 ( .A(n171), .Z(n339) );
  GTECH_NOT U386 ( .A(n340), .Z(n338) );
  GTECH_AND2 U387 ( .A(n341), .B(n257), .Z(controller_N61) );
  GTECH_XOR2 U388 ( .A(n340), .B(n171), .Z(n341) );
  GTECH_NAND2 U389 ( .A(n342), .B(n343), .Z(n340) );
  GTECH_NOT U390 ( .A(n170), .Z(n343) );
  GTECH_NOT U391 ( .A(n344), .Z(n342) );
  GTECH_AND2 U392 ( .A(n345), .B(n257), .Z(controller_N60) );
  GTECH_XOR2 U393 ( .A(n344), .B(n170), .Z(n345) );
  GTECH_NAND2 U394 ( .A(n346), .B(n347), .Z(n344) );
  GTECH_NOT U395 ( .A(n169), .Z(n347) );
  GTECH_NOT U396 ( .A(n348), .Z(n346) );
  GTECH_AND2 U397 ( .A(n349), .B(n257), .Z(controller_N59) );
  GTECH_XOR2 U398 ( .A(n348), .B(n169), .Z(n349) );
  GTECH_NAND2 U399 ( .A(n350), .B(n351), .Z(n348) );
  GTECH_NOT U400 ( .A(n168), .Z(n351) );
  GTECH_NOT U401 ( .A(n352), .Z(n350) );
  GTECH_AND2 U402 ( .A(n353), .B(n257), .Z(controller_N58) );
  GTECH_XOR2 U403 ( .A(n352), .B(n168), .Z(n353) );
  GTECH_NAND2 U404 ( .A(n354), .B(n355), .Z(n352) );
  GTECH_NOT U405 ( .A(n167), .Z(n355) );
  GTECH_NOT U406 ( .A(n356), .Z(n354) );
  GTECH_AND2 U407 ( .A(n357), .B(n257), .Z(controller_N57) );
  GTECH_XOR2 U408 ( .A(n356), .B(n167), .Z(n357) );
  GTECH_NAND2 U409 ( .A(n358), .B(n359), .Z(n356) );
  GTECH_NOT U410 ( .A(n166), .Z(n359) );
  GTECH_NOT U411 ( .A(n360), .Z(n358) );
  GTECH_AND2 U412 ( .A(n361), .B(n257), .Z(controller_N56) );
  GTECH_XOR2 U413 ( .A(n360), .B(n166), .Z(n361) );
  GTECH_NAND2 U414 ( .A(n362), .B(n363), .Z(n360) );
  GTECH_NOT U415 ( .A(n165), .Z(n363) );
  GTECH_NOT U416 ( .A(n364), .Z(n362) );
  GTECH_AND2 U417 ( .A(n365), .B(n257), .Z(controller_N55) );
  GTECH_XOR2 U418 ( .A(n364), .B(n165), .Z(n365) );
  GTECH_NAND3 U419 ( .A(n366), .B(n367), .C(n368), .Z(n364) );
  GTECH_OAI2N2 U420 ( .A(n242), .B(n369), .C(controller_N52), .D(n367), .Z(
        controller_N54) );
  GTECH_NOT U421 ( .A(n164), .Z(n367) );
  GTECH_MUX2 U422 ( .A(n366), .B(n370), .S(n164), .Z(n369) );
  GTECH_NAND2 U423 ( .A(n368), .B(n366), .Z(n370) );
  GTECH_NOT U424 ( .A(n163), .Z(n366) );
  GTECH_NOT U425 ( .A(n257), .Z(n242) );
  GTECH_MUX2 U426 ( .A(controller_N52), .B(n371), .S(n163), .Z(controller_N53)
         );
  GTECH_AND2 U427 ( .A(n257), .B(n368), .Z(n371) );
  GTECH_NOT U428 ( .A(n162), .Z(n368) );
  GTECH_NOT U429 ( .A(n372), .Z(controller_N52) );
  GTECH_NAND2 U430 ( .A(n162), .B(n257), .Z(n372) );
  GTECH_OAI21 U431 ( .A(n373), .B(n374), .C(n161), .Z(n257) );
  GTECH_NAND8 U432 ( .A(n177), .B(n176), .C(n178), .D(n375), .E(n170), .F(n169), .G(n171), .H(n376), .Z(n374) );
  GTECH_AND4 U433 ( .A(n168), .B(n167), .C(n166), .D(n165), .Z(n376) );
  GTECH_AND4 U434 ( .A(n175), .B(n174), .C(n173), .D(n172), .Z(n375) );
  GTECH_NAND8 U435 ( .A(n159), .B(n158), .C(n160), .D(n377), .E(n152), .F(n151), .G(n153), .H(n378), .Z(n373) );
  GTECH_AND4 U436 ( .A(n150), .B(n149), .C(n148), .D(n147), .Z(n378) );
  GTECH_AND4 U437 ( .A(n157), .B(n156), .C(n155), .D(n154), .Z(n377) );
  GTECH_AND2 U438 ( .A(controller_N95), .B(n140), .Z(controller_N102) );
  GTECH_NOT U439 ( .A(rst), .Z(n140) );
  GTECH_NAND2 U440 ( .A(n379), .B(n243), .Z(controller_N95) );
  GTECH_NAND3 U441 ( .A(n145), .B(n379), .C(n16), .Z(n243) );
  GTECH_NOT U442 ( .A(n146), .Z(n379) );
endmodule

