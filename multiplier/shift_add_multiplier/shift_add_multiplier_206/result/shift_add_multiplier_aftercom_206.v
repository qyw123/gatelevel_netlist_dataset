
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
         n10, n12, n14, n15, n16, n17, n18, n19, n20, n21, n131, n133, n136,
         n47, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238,
         n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249,
         n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260,
         n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271,
         n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282,
         n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, n293,
         n294, n295, n296, n297, n298, n299, n300, n301, n302, n303, n304,
         n305, n306, n307, n308, n309, n310, n311, n312, n313, n314, n315,
         n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n326,
         n327, n328, n329, n330, n331, n332, n333, n334, n335, n336, n337,
         n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, n348,
         n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359,
         n360, n361, n362, n363, n364, n365, n366, n367, n368, n369, n370,
         n371, n372, n373, n374, n375, n376, n377;
  wire   [7:0] A;

  GTECH_FJK2S controller_count_reg_31_ ( .J(n47), .K(n47), .TI(controller_N83), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_31_), 
        .QN(n158) );
  GTECH_FJK2S controller_count_reg_30_ ( .J(n47), .K(n47), .TI(controller_N82), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_30_), 
        .QN(n157) );
  GTECH_FJK3 controller_start_reg ( .J(n47), .K(controller_N97), .CP(clk), 
        .CD(n131), .SD(n136), .Q(controller_start), .QN(n133) );
  GTECH_FJK2S controller_state_reg_0_ ( .J(n47), .K(n47), .TI(controller_N93), 
        .TE(controller_N95), .CP(clk), .CD(n136), .Q(controller_state_0_), 
        .QN(n141) );
  GTECH_FJK2S controller_state_reg_1_ ( .J(n47), .K(n47), .TI(controller_N94), 
        .TE(controller_N95), .CP(clk), .CD(n136), .Q(controller_state_1_), 
        .QN(n8) );
  GTECH_FJK2S controller_state_reg_2_ ( .J(n47), .K(n47), .TI(controller_N96), 
        .TE(controller_N95), .CP(clk), .CD(n136), .Q(controller_state_2_), 
        .QN(n142) );
  GTECH_FJK2S controller_count_reg_29_ ( .J(n47), .K(n47), .TI(controller_N81), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_29_), 
        .QN(n156) );
  GTECH_FJK2S controller_count_reg_28_ ( .J(n47), .K(n47), .TI(controller_N80), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_28_), 
        .QN(n155) );
  GTECH_FJK2S controller_count_reg_27_ ( .J(n47), .K(n47), .TI(controller_N79), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_27_), 
        .QN(n154) );
  GTECH_FJK2S controller_count_reg_26_ ( .J(n47), .K(n47), .TI(controller_N78), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_26_), 
        .QN(n153) );
  GTECH_FJK2S controller_count_reg_25_ ( .J(n47), .K(n47), .TI(controller_N77), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_25_), 
        .QN(n152) );
  GTECH_FJK2S controller_count_reg_24_ ( .J(n47), .K(n47), .TI(controller_N76), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_24_), 
        .QN(n151) );
  GTECH_FJK2S controller_count_reg_23_ ( .J(n47), .K(n47), .TI(controller_N75), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_23_), 
        .QN(n150) );
  GTECH_FJK2S controller_count_reg_22_ ( .J(n47), .K(n47), .TI(controller_N74), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_22_), 
        .QN(n149) );
  GTECH_FJK2S controller_count_reg_21_ ( .J(n47), .K(n47), .TI(controller_N73), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_21_), 
        .QN(n148) );
  GTECH_FJK2S controller_count_reg_20_ ( .J(n47), .K(n47), .TI(controller_N72), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_20_), 
        .QN(n147) );
  GTECH_FJK2S controller_count_reg_19_ ( .J(n47), .K(n47), .TI(controller_N71), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_19_), 
        .QN(n146) );
  GTECH_FJK2S controller_count_reg_18_ ( .J(n47), .K(n47), .TI(controller_N70), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_18_), 
        .QN(n145) );
  GTECH_FJK2S controller_count_reg_17_ ( .J(n47), .K(n47), .TI(controller_N69), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_17_), 
        .QN(n144) );
  GTECH_FJK2S controller_count_reg_16_ ( .J(n47), .K(n47), .TI(controller_N68), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_16_), 
        .QN(n143) );
  GTECH_FJK2S controller_count_reg_15_ ( .J(n47), .K(n47), .TI(controller_N67), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_15_), 
        .QN(n174) );
  GTECH_FJK2S controller_count_reg_14_ ( .J(n47), .K(n47), .TI(controller_N66), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_14_), 
        .QN(n173) );
  GTECH_FJK2S controller_count_reg_13_ ( .J(n47), .K(n47), .TI(controller_N65), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_13_), 
        .QN(n172) );
  GTECH_FJK2S controller_count_reg_12_ ( .J(n47), .K(n47), .TI(controller_N64), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_12_), 
        .QN(n171) );
  GTECH_FJK2S controller_count_reg_11_ ( .J(n47), .K(n47), .TI(controller_N63), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_11_), 
        .QN(n170) );
  GTECH_FJK2S controller_count_reg_10_ ( .J(n47), .K(n47), .TI(controller_N62), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_10_), 
        .QN(n169) );
  GTECH_FJK2S controller_count_reg_9_ ( .J(n47), .K(n47), .TI(controller_N61), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_9_), 
        .QN(n168) );
  GTECH_FJK2S controller_count_reg_8_ ( .J(n47), .K(n47), .TI(controller_N60), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_8_), 
        .QN(n167) );
  GTECH_FJK2S controller_count_reg_7_ ( .J(n47), .K(n47), .TI(controller_N59), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_7_), 
        .QN(n166) );
  GTECH_FJK2S controller_count_reg_6_ ( .J(n47), .K(n47), .TI(controller_N58), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_6_), 
        .QN(n165) );
  GTECH_FJK2S controller_count_reg_5_ ( .J(n47), .K(n47), .TI(controller_N57), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_5_), 
        .QN(n164) );
  GTECH_FJK2S controller_count_reg_4_ ( .J(n47), .K(n47), .TI(controller_N56), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_4_), 
        .QN(n163) );
  GTECH_FJK2S controller_count_reg_3_ ( .J(n47), .K(n47), .TI(controller_N55), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_3_), 
        .QN(n162) );
  GTECH_FJK2S controller_count_reg_2_ ( .J(n47), .K(n47), .TI(controller_N54), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_2_), 
        .QN(n161) );
  GTECH_FJK2S controller_count_reg_1_ ( .J(n47), .K(n47), .TI(controller_N53), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_1_), 
        .QN(n160) );
  GTECH_FJK2S controller_count_reg_0_ ( .J(n47), .K(n47), .TI(controller_N52), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_0_), 
        .QN(n159) );
  GTECH_FJK1S controller_shift_cmd_reg ( .J(n47), .K(n47), .TI(controller_N98), 
        .TE(controller_N102), .CP(clk), .Q(n9) );
  GTECH_FJK1S controller_add_cmd_reg ( .J(n47), .K(n47), .TI(controller_N91), 
        .TE(controller_N102), .CP(clk), .Q(add_cmd), .QN(n10) );
  GTECH_FJK2S controller_out_cmd_reg ( .J(n47), .K(n47), .TI(controller_N92), 
        .TE(controller_N95), .CP(clk), .CD(n136), .Q(out_cmd) );
  GTECH_FJK1S controller_load_cmd_reg ( .J(n47), .K(n47), .TI(controller_N90), 
        .TE(controller_N102), .CP(clk), .Q(load_cmd), .QN(n12) );
  GTECH_FJK2S shifter_add_temp_reg ( .J(n47), .K(n47), .TI(shifter_N24), .TE(
        shifter_N23), .CP(clk), .CD(n136), .Q(shifter_add_temp) );
  GTECH_FJK2S shifter_temp_reg_8_ ( .J(n47), .K(n47), .TI(shifter_N14), .TE(
        shifter_N22), .CP(clk), .CD(n136), .Q(A[0]), .QN(n14) );
  GTECH_FJK2S shifter_temp_reg_15_ ( .J(n47), .K(n47), .TI(shifter_N21), .TE(
        shifter_N22), .CP(clk), .CD(n136), .Q(A[7]), .QN(n15) );
  GTECH_FJK2S shifter_temp_reg_14_ ( .J(n47), .K(n47), .TI(shifter_N20), .TE(
        shifter_N22), .CP(clk), .CD(n136), .Q(A[6]), .QN(n16) );
  GTECH_FJK2S shifter_temp_reg_13_ ( .J(n47), .K(n47), .TI(shifter_N19), .TE(
        shifter_N22), .CP(clk), .CD(n136), .Q(A[5]), .QN(n17) );
  GTECH_FJK2S shifter_temp_reg_12_ ( .J(n47), .K(n47), .TI(shifter_N18), .TE(
        shifter_N22), .CP(clk), .CD(n136), .Q(A[4]), .QN(n18) );
  GTECH_FJK2S shifter_temp_reg_11_ ( .J(n47), .K(n47), .TI(shifter_N17), .TE(
        shifter_N22), .CP(clk), .CD(n136), .Q(A[3]), .QN(n19) );
  GTECH_FJK2S shifter_temp_reg_10_ ( .J(n47), .K(n47), .TI(shifter_N16), .TE(
        shifter_N22), .CP(clk), .CD(n136), .Q(A[2]), .QN(n20) );
  GTECH_FJK2S shifter_temp_reg_9_ ( .J(n47), .K(n47), .TI(shifter_N15), .TE(
        shifter_N22), .CP(clk), .CD(n136), .Q(A[1]), .QN(n21) );
  GTECH_FJK2S shifter_temp_reg_7_ ( .J(n47), .K(n47), .TI(shifter_N13), .TE(
        shifter_N22), .CP(clk), .CD(n136), .Q(shifter_temp_7_) );
  GTECH_FJK2S shifter_temp_reg_6_ ( .J(n47), .K(n47), .TI(shifter_N12), .TE(
        shifter_N22), .CP(clk), .CD(n136), .Q(shifter_temp_6_) );
  GTECH_FJK2S shifter_temp_reg_5_ ( .J(n47), .K(n47), .TI(shifter_N11), .TE(
        shifter_N22), .CP(clk), .CD(n136), .Q(shifter_temp_5_) );
  GTECH_FJK2S shifter_temp_reg_4_ ( .J(n47), .K(n47), .TI(shifter_N10), .TE(
        shifter_N22), .CP(clk), .CD(n136), .Q(shifter_temp_4_) );
  GTECH_FJK2S shifter_temp_reg_3_ ( .J(n47), .K(n47), .TI(shifter_N9), .TE(
        shifter_N22), .CP(clk), .CD(n136), .Q(shifter_temp_3_) );
  GTECH_FJK2S shifter_temp_reg_2_ ( .J(n47), .K(n47), .TI(shifter_N8), .TE(
        shifter_N22), .CP(clk), .CD(n136), .Q(shifter_temp_2_) );
  GTECH_FJK2S shifter_temp_reg_1_ ( .J(n47), .K(n47), .TI(shifter_N7), .TE(
        shifter_N22), .CP(clk), .CD(n136), .Q(shifter_temp_1_) );
  GTECH_FJK2S shifter_temp_reg_0_ ( .J(n47), .K(n47), .TI(shifter_N6), .TE(
        shifter_N22), .CP(clk), .CD(n136), .Q(lsb), .QN(n140) );
  GTECH_ZERO U159 ( .Z(n47) );
  GTECH_ONE U160 ( .Z(n131) );
  GTECH_OAI2N2 U161 ( .A(n175), .B(n176), .C(Q[3]), .D(n177), .Z(shifter_N9)
         );
  GTECH_NOT U162 ( .A(shifter_temp_4_), .Z(n176) );
  GTECH_OAI2N2 U163 ( .A(n175), .B(n178), .C(Q[2]), .D(n177), .Z(shifter_N8)
         );
  GTECH_NOT U164 ( .A(shifter_temp_3_), .Z(n178) );
  GTECH_OAI2N2 U165 ( .A(n175), .B(n179), .C(Q[1]), .D(n177), .Z(shifter_N7)
         );
  GTECH_NOT U166 ( .A(shifter_temp_2_), .Z(n179) );
  GTECH_OAI2N2 U167 ( .A(n175), .B(n180), .C(Q[0]), .D(n177), .Z(shifter_N6)
         );
  GTECH_NOT U168 ( .A(shifter_temp_1_), .Z(n180) );
  GTECH_NOT U169 ( .A(n181), .Z(shifter_N24) );
  GTECH_NAND2 U170 ( .A(n181), .B(n182), .Z(shifter_N23) );
  GTECH_NAND2 U171 ( .A(n12), .B(n183), .Z(n181) );
  GTECH_NOT U172 ( .A(n10), .Z(n183) );
  GTECH_NAND2 U173 ( .A(n175), .B(n12), .Z(shifter_N22) );
  GTECH_AND2 U174 ( .A(n184), .B(n185), .Z(shifter_N21) );
  GTECH_OAI22 U175 ( .A(n186), .B(n187), .C(n15), .D(n188), .Z(n185) );
  GTECH_NOT U176 ( .A(n182), .Z(n184) );
  GTECH_OAI22 U177 ( .A(n15), .B(n189), .C(n190), .D(n182), .Z(shifter_N20) );
  GTECH_AOI21 U178 ( .A(n188), .B(n191), .C(n192), .Z(n190) );
  GTECH_MUX2 U179 ( .A(n193), .B(n194), .S(n186), .Z(n192) );
  GTECH_AND2 U180 ( .A(n15), .B(D[7]), .Z(n194) );
  GTECH_XOR2 U181 ( .A(n15), .B(D[7]), .Z(n193) );
  GTECH_NOT U182 ( .A(n195), .Z(n188) );
  GTECH_NAND2 U183 ( .A(n186), .B(n187), .Z(n195) );
  GTECH_NOT U184 ( .A(D[7]), .Z(n187) );
  GTECH_AND2 U185 ( .A(n196), .B(n197), .Z(n186) );
  GTECH_OR_NOT U186 ( .A(n16), .B(D[6]), .Z(n197) );
  GTECH_OAI21 U187 ( .A(D[6]), .B(n198), .C(n199), .Z(n196) );
  GTECH_OAI22 U188 ( .A(n16), .B(n189), .C(n200), .D(n182), .Z(shifter_N19) );
  GTECH_XOR3 U189 ( .A(n16), .B(D[6]), .C(n199), .Z(n200) );
  GTECH_OAI21 U190 ( .A(n17), .B(n201), .C(n202), .Z(n199) );
  GTECH_OAI21 U191 ( .A(D[5]), .B(n203), .C(n204), .Z(n202) );
  GTECH_NOT U192 ( .A(D[5]), .Z(n201) );
  GTECH_OAI22 U193 ( .A(n17), .B(n189), .C(n205), .D(n182), .Z(shifter_N18) );
  GTECH_XOR3 U194 ( .A(n17), .B(D[5]), .C(n204), .Z(n205) );
  GTECH_OAI21 U195 ( .A(n18), .B(n206), .C(n207), .Z(n204) );
  GTECH_OAI21 U196 ( .A(D[4]), .B(n208), .C(n209), .Z(n207) );
  GTECH_NOT U197 ( .A(D[4]), .Z(n206) );
  GTECH_OAI22 U198 ( .A(n18), .B(n189), .C(n210), .D(n182), .Z(shifter_N17) );
  GTECH_XOR3 U199 ( .A(n18), .B(D[4]), .C(n209), .Z(n210) );
  GTECH_OAI21 U200 ( .A(n19), .B(n211), .C(n212), .Z(n209) );
  GTECH_OAI21 U201 ( .A(D[3]), .B(n213), .C(n214), .Z(n212) );
  GTECH_NOT U202 ( .A(D[3]), .Z(n211) );
  GTECH_OAI22 U203 ( .A(n19), .B(n189), .C(n215), .D(n182), .Z(shifter_N16) );
  GTECH_XOR3 U204 ( .A(n19), .B(D[3]), .C(n214), .Z(n215) );
  GTECH_OAI21 U205 ( .A(n20), .B(n216), .C(n217), .Z(n214) );
  GTECH_OAI21 U206 ( .A(D[2]), .B(n218), .C(n219), .Z(n217) );
  GTECH_NOT U207 ( .A(D[2]), .Z(n216) );
  GTECH_OAI22 U208 ( .A(n20), .B(n189), .C(n220), .D(n182), .Z(shifter_N15) );
  GTECH_XOR3 U209 ( .A(n20), .B(D[2]), .C(n219), .Z(n220) );
  GTECH_OAI21 U210 ( .A(n21), .B(n221), .C(n222), .Z(n219) );
  GTECH_OAI21 U211 ( .A(D[1]), .B(n223), .C(n224), .Z(n222) );
  GTECH_NOT U212 ( .A(D[1]), .Z(n221) );
  GTECH_OAI22 U213 ( .A(n21), .B(n189), .C(n182), .D(n225), .Z(shifter_N14) );
  GTECH_XOR3 U214 ( .A(n21), .B(D[1]), .C(n224), .Z(n225) );
  GTECH_NOT U215 ( .A(n226), .Z(n224) );
  GTECH_NAND2 U216 ( .A(D[0]), .B(n227), .Z(n226) );
  GTECH_NOT U217 ( .A(n228), .Z(shifter_N13) );
  GTECH_AOI21 U218 ( .A(Q[7]), .B(n177), .C(n229), .Z(n228) );
  GTECH_OAI22 U219 ( .A(n182), .B(n230), .C(n14), .D(n189), .Z(n229) );
  GTECH_XOR2 U220 ( .A(D[0]), .B(n14), .Z(n230) );
  GTECH_OAI2N2 U221 ( .A(n175), .B(n231), .C(Q[6]), .D(n177), .Z(shifter_N12)
         );
  GTECH_NOT U222 ( .A(shifter_temp_7_), .Z(n231) );
  GTECH_OAI2N2 U223 ( .A(n175), .B(n232), .C(Q[5]), .D(n177), .Z(shifter_N11)
         );
  GTECH_NOT U224 ( .A(shifter_temp_6_), .Z(n232) );
  GTECH_OAI2N2 U225 ( .A(n175), .B(n233), .C(Q[4]), .D(n177), .Z(shifter_N10)
         );
  GTECH_NOT U226 ( .A(n12), .Z(n177) );
  GTECH_NOT U227 ( .A(shifter_temp_5_), .Z(n233) );
  GTECH_NOT U228 ( .A(n234), .Z(n175) );
  GTECH_NAND2 U229 ( .A(n189), .B(n182), .Z(n234) );
  GTECH_NAND2 U230 ( .A(shifter_add_temp), .B(n235), .Z(n182) );
  GTECH_NAND2 U231 ( .A(n235), .B(n236), .Z(n189) );
  GTECH_NOT U232 ( .A(shifter_add_temp), .Z(n236) );
  GTECH_NOT U233 ( .A(n237), .Z(n235) );
  GTECH_NAND3 U234 ( .A(n12), .B(n10), .C(n9), .Z(n237) );
  GTECH_AND2 U235 ( .A(out_cmd), .B(n223), .Z(out[9]) );
  GTECH_NOT U236 ( .A(n21), .Z(n223) );
  GTECH_AND2 U237 ( .A(out_cmd), .B(n227), .Z(out[8]) );
  GTECH_NOT U238 ( .A(n14), .Z(n227) );
  GTECH_AND2 U239 ( .A(out_cmd), .B(shifter_temp_7_), .Z(out[7]) );
  GTECH_AND2 U240 ( .A(out_cmd), .B(shifter_temp_6_), .Z(out[6]) );
  GTECH_AND2 U241 ( .A(out_cmd), .B(shifter_temp_5_), .Z(out[5]) );
  GTECH_AND2 U242 ( .A(out_cmd), .B(shifter_temp_4_), .Z(out[4]) );
  GTECH_AND2 U243 ( .A(out_cmd), .B(shifter_temp_3_), .Z(out[3]) );
  GTECH_AND2 U244 ( .A(out_cmd), .B(shifter_temp_2_), .Z(out[2]) );
  GTECH_AND2 U245 ( .A(out_cmd), .B(shifter_temp_1_), .Z(out[1]) );
  GTECH_AND2 U246 ( .A(out_cmd), .B(n191), .Z(out[15]) );
  GTECH_NOT U247 ( .A(n15), .Z(n191) );
  GTECH_AND2 U248 ( .A(out_cmd), .B(n198), .Z(out[14]) );
  GTECH_NOT U249 ( .A(n16), .Z(n198) );
  GTECH_AND2 U250 ( .A(out_cmd), .B(n203), .Z(out[13]) );
  GTECH_NOT U251 ( .A(n17), .Z(n203) );
  GTECH_AND2 U252 ( .A(out_cmd), .B(n208), .Z(out[12]) );
  GTECH_NOT U253 ( .A(n18), .Z(n208) );
  GTECH_AND2 U254 ( .A(out_cmd), .B(n213), .Z(out[11]) );
  GTECH_NOT U255 ( .A(n19), .Z(n213) );
  GTECH_AND2 U256 ( .A(out_cmd), .B(n218), .Z(out[10]) );
  GTECH_NOT U257 ( .A(n20), .Z(n218) );
  GTECH_AND2 U258 ( .A(out_cmd), .B(n238), .Z(out[0]) );
  GTECH_AND2 U259 ( .A(controller_N98), .B(n239), .Z(controller_N97) );
  GTECH_NOT U260 ( .A(n240), .Z(controller_N98) );
  GTECH_OAI21 U261 ( .A(n241), .B(n238), .C(n242), .Z(controller_N96) );
  GTECH_OAI21 U262 ( .A(n239), .B(n240), .C(n243), .Z(controller_N94) );
  GTECH_AND2 U263 ( .A(n244), .B(n245), .Z(n243) );
  GTECH_NAND3 U264 ( .A(n141), .B(n238), .C(n246), .Z(n244) );
  GTECH_AND3 U265 ( .A(n142), .B(n141), .C(n247), .Z(controller_N93) );
  GTECH_MUX2 U266 ( .A(n238), .B(n248), .S(n8), .Z(n247) );
  GTECH_NOT U267 ( .A(n133), .Z(n248) );
  GTECH_NOT U268 ( .A(n140), .Z(n238) );
  GTECH_AND4 U269 ( .A(n133), .B(n142), .C(n8), .D(n141), .Z(controller_N92)
         );
  GTECH_NOT U270 ( .A(n242), .Z(controller_N91) );
  GTECH_NAND2 U271 ( .A(n246), .B(n249), .Z(n242) );
  GTECH_NOT U272 ( .A(n241), .Z(n246) );
  GTECH_NAND2 U273 ( .A(n142), .B(n250), .Z(n241) );
  GTECH_NOT U274 ( .A(n8), .Z(n250) );
  GTECH_NOT U275 ( .A(n245), .Z(controller_N90) );
  GTECH_NAND3 U276 ( .A(n8), .B(n249), .C(n142), .Z(n245) );
  GTECH_NOT U277 ( .A(n141), .Z(n249) );
  GTECH_AOI21 U278 ( .A(n251), .B(n252), .C(n158), .Z(controller_N83) );
  GTECH_NOT U279 ( .A(n157), .Z(n252) );
  GTECH_NOT U280 ( .A(n253), .Z(n251) );
  GTECH_AND2 U281 ( .A(n254), .B(n255), .Z(controller_N82) );
  GTECH_XOR2 U282 ( .A(n253), .B(n157), .Z(n254) );
  GTECH_NAND2 U283 ( .A(n256), .B(n257), .Z(n253) );
  GTECH_NOT U284 ( .A(n156), .Z(n257) );
  GTECH_NOT U285 ( .A(n258), .Z(n256) );
  GTECH_AND2 U286 ( .A(n259), .B(n255), .Z(controller_N81) );
  GTECH_XOR2 U287 ( .A(n258), .B(n156), .Z(n259) );
  GTECH_NAND2 U288 ( .A(n260), .B(n261), .Z(n258) );
  GTECH_NOT U289 ( .A(n155), .Z(n261) );
  GTECH_NOT U290 ( .A(n262), .Z(n260) );
  GTECH_AND2 U291 ( .A(n263), .B(n255), .Z(controller_N80) );
  GTECH_XOR2 U292 ( .A(n262), .B(n155), .Z(n263) );
  GTECH_NAND2 U293 ( .A(n264), .B(n265), .Z(n262) );
  GTECH_NOT U294 ( .A(n154), .Z(n265) );
  GTECH_NOT U295 ( .A(n266), .Z(n264) );
  GTECH_AND2 U296 ( .A(n267), .B(n255), .Z(controller_N79) );
  GTECH_XOR2 U297 ( .A(n266), .B(n154), .Z(n267) );
  GTECH_NAND2 U298 ( .A(n268), .B(n269), .Z(n266) );
  GTECH_NOT U299 ( .A(n153), .Z(n269) );
  GTECH_NOT U300 ( .A(n270), .Z(n268) );
  GTECH_AND2 U301 ( .A(n271), .B(n255), .Z(controller_N78) );
  GTECH_XOR2 U302 ( .A(n270), .B(n153), .Z(n271) );
  GTECH_NAND2 U303 ( .A(n272), .B(n273), .Z(n270) );
  GTECH_NOT U304 ( .A(n152), .Z(n273) );
  GTECH_NOT U305 ( .A(n274), .Z(n272) );
  GTECH_AND2 U306 ( .A(n275), .B(n255), .Z(controller_N77) );
  GTECH_XOR2 U307 ( .A(n274), .B(n152), .Z(n275) );
  GTECH_NAND2 U308 ( .A(n276), .B(n277), .Z(n274) );
  GTECH_NOT U309 ( .A(n151), .Z(n277) );
  GTECH_NOT U310 ( .A(n278), .Z(n276) );
  GTECH_AND2 U311 ( .A(n279), .B(n255), .Z(controller_N76) );
  GTECH_XOR2 U312 ( .A(n278), .B(n151), .Z(n279) );
  GTECH_NAND2 U313 ( .A(n280), .B(n281), .Z(n278) );
  GTECH_NOT U314 ( .A(n150), .Z(n281) );
  GTECH_NOT U315 ( .A(n282), .Z(n280) );
  GTECH_AND2 U316 ( .A(n283), .B(n255), .Z(controller_N75) );
  GTECH_XOR2 U317 ( .A(n282), .B(n150), .Z(n283) );
  GTECH_NAND2 U318 ( .A(n284), .B(n285), .Z(n282) );
  GTECH_NOT U319 ( .A(n149), .Z(n285) );
  GTECH_NOT U320 ( .A(n286), .Z(n284) );
  GTECH_AND2 U321 ( .A(n287), .B(n255), .Z(controller_N74) );
  GTECH_XOR2 U322 ( .A(n286), .B(n149), .Z(n287) );
  GTECH_NAND2 U323 ( .A(n288), .B(n289), .Z(n286) );
  GTECH_NOT U324 ( .A(n148), .Z(n289) );
  GTECH_NOT U325 ( .A(n290), .Z(n288) );
  GTECH_AND2 U326 ( .A(n291), .B(n255), .Z(controller_N73) );
  GTECH_XOR2 U327 ( .A(n290), .B(n148), .Z(n291) );
  GTECH_NAND2 U328 ( .A(n292), .B(n293), .Z(n290) );
  GTECH_NOT U329 ( .A(n147), .Z(n293) );
  GTECH_NOT U330 ( .A(n294), .Z(n292) );
  GTECH_AND2 U331 ( .A(n295), .B(n255), .Z(controller_N72) );
  GTECH_XOR2 U332 ( .A(n294), .B(n147), .Z(n295) );
  GTECH_NAND2 U333 ( .A(n296), .B(n297), .Z(n294) );
  GTECH_NOT U334 ( .A(n146), .Z(n297) );
  GTECH_NOT U335 ( .A(n298), .Z(n296) );
  GTECH_AND2 U336 ( .A(n299), .B(n255), .Z(controller_N71) );
  GTECH_XOR2 U337 ( .A(n298), .B(n146), .Z(n299) );
  GTECH_NAND2 U338 ( .A(n300), .B(n301), .Z(n298) );
  GTECH_NOT U339 ( .A(n145), .Z(n301) );
  GTECH_NOT U340 ( .A(n302), .Z(n300) );
  GTECH_AND2 U341 ( .A(n303), .B(n255), .Z(controller_N70) );
  GTECH_XOR2 U342 ( .A(n302), .B(n145), .Z(n303) );
  GTECH_NAND2 U343 ( .A(n304), .B(n305), .Z(n302) );
  GTECH_NOT U344 ( .A(n144), .Z(n305) );
  GTECH_NOT U345 ( .A(n306), .Z(n304) );
  GTECH_AND2 U346 ( .A(n307), .B(n255), .Z(controller_N69) );
  GTECH_XOR2 U347 ( .A(n306), .B(n144), .Z(n307) );
  GTECH_NAND2 U348 ( .A(n308), .B(n309), .Z(n306) );
  GTECH_NOT U349 ( .A(n143), .Z(n309) );
  GTECH_NOT U350 ( .A(n310), .Z(n308) );
  GTECH_AND2 U351 ( .A(n311), .B(n255), .Z(controller_N68) );
  GTECH_XOR2 U352 ( .A(n310), .B(n143), .Z(n311) );
  GTECH_NAND2 U353 ( .A(n312), .B(n313), .Z(n310) );
  GTECH_NOT U354 ( .A(n174), .Z(n313) );
  GTECH_NOT U355 ( .A(n314), .Z(n312) );
  GTECH_AND2 U356 ( .A(n315), .B(n255), .Z(controller_N67) );
  GTECH_XOR2 U357 ( .A(n314), .B(n174), .Z(n315) );
  GTECH_NAND2 U358 ( .A(n316), .B(n317), .Z(n314) );
  GTECH_NOT U359 ( .A(n173), .Z(n317) );
  GTECH_NOT U360 ( .A(n318), .Z(n316) );
  GTECH_AND2 U361 ( .A(n319), .B(n255), .Z(controller_N66) );
  GTECH_XOR2 U362 ( .A(n318), .B(n173), .Z(n319) );
  GTECH_NAND2 U363 ( .A(n320), .B(n321), .Z(n318) );
  GTECH_NOT U364 ( .A(n172), .Z(n321) );
  GTECH_NOT U365 ( .A(n322), .Z(n320) );
  GTECH_AND2 U366 ( .A(n323), .B(n255), .Z(controller_N65) );
  GTECH_XOR2 U367 ( .A(n322), .B(n172), .Z(n323) );
  GTECH_NAND2 U368 ( .A(n324), .B(n325), .Z(n322) );
  GTECH_NOT U369 ( .A(n171), .Z(n325) );
  GTECH_NOT U370 ( .A(n326), .Z(n324) );
  GTECH_AND2 U371 ( .A(n327), .B(n255), .Z(controller_N64) );
  GTECH_XOR2 U372 ( .A(n326), .B(n171), .Z(n327) );
  GTECH_NAND2 U373 ( .A(n328), .B(n329), .Z(n326) );
  GTECH_NOT U374 ( .A(n170), .Z(n329) );
  GTECH_NOT U375 ( .A(n330), .Z(n328) );
  GTECH_AND2 U376 ( .A(n331), .B(n255), .Z(controller_N63) );
  GTECH_XOR2 U377 ( .A(n330), .B(n170), .Z(n331) );
  GTECH_NAND2 U378 ( .A(n332), .B(n333), .Z(n330) );
  GTECH_NOT U379 ( .A(n169), .Z(n333) );
  GTECH_NOT U380 ( .A(n334), .Z(n332) );
  GTECH_AND2 U381 ( .A(n335), .B(n255), .Z(controller_N62) );
  GTECH_XOR2 U382 ( .A(n334), .B(n169), .Z(n335) );
  GTECH_NAND2 U383 ( .A(n336), .B(n337), .Z(n334) );
  GTECH_NOT U384 ( .A(n168), .Z(n337) );
  GTECH_NOT U385 ( .A(n338), .Z(n336) );
  GTECH_AND2 U386 ( .A(n339), .B(n255), .Z(controller_N61) );
  GTECH_XOR2 U387 ( .A(n338), .B(n168), .Z(n339) );
  GTECH_NAND2 U388 ( .A(n340), .B(n341), .Z(n338) );
  GTECH_NOT U389 ( .A(n167), .Z(n341) );
  GTECH_NOT U390 ( .A(n342), .Z(n340) );
  GTECH_AND2 U391 ( .A(n343), .B(n255), .Z(controller_N60) );
  GTECH_XOR2 U392 ( .A(n342), .B(n167), .Z(n343) );
  GTECH_NAND2 U393 ( .A(n344), .B(n345), .Z(n342) );
  GTECH_NOT U394 ( .A(n166), .Z(n345) );
  GTECH_NOT U395 ( .A(n346), .Z(n344) );
  GTECH_AND2 U396 ( .A(n347), .B(n255), .Z(controller_N59) );
  GTECH_XOR2 U397 ( .A(n346), .B(n166), .Z(n347) );
  GTECH_NAND2 U398 ( .A(n348), .B(n349), .Z(n346) );
  GTECH_NOT U399 ( .A(n165), .Z(n349) );
  GTECH_NOT U400 ( .A(n350), .Z(n348) );
  GTECH_AND2 U401 ( .A(n351), .B(n255), .Z(controller_N58) );
  GTECH_XOR2 U402 ( .A(n350), .B(n165), .Z(n351) );
  GTECH_NAND2 U403 ( .A(n352), .B(n353), .Z(n350) );
  GTECH_NOT U404 ( .A(n164), .Z(n353) );
  GTECH_NOT U405 ( .A(n354), .Z(n352) );
  GTECH_AND2 U406 ( .A(n355), .B(n255), .Z(controller_N57) );
  GTECH_XOR2 U407 ( .A(n354), .B(n164), .Z(n355) );
  GTECH_NAND2 U408 ( .A(n356), .B(n357), .Z(n354) );
  GTECH_NOT U409 ( .A(n163), .Z(n357) );
  GTECH_NOT U410 ( .A(n358), .Z(n356) );
  GTECH_AND2 U411 ( .A(n359), .B(n255), .Z(controller_N56) );
  GTECH_XOR2 U412 ( .A(n358), .B(n163), .Z(n359) );
  GTECH_NAND2 U413 ( .A(n360), .B(n361), .Z(n358) );
  GTECH_NOT U414 ( .A(n162), .Z(n361) );
  GTECH_NOT U415 ( .A(n362), .Z(n360) );
  GTECH_AND2 U416 ( .A(n363), .B(n255), .Z(controller_N55) );
  GTECH_XOR2 U417 ( .A(n362), .B(n162), .Z(n363) );
  GTECH_NAND3 U418 ( .A(n364), .B(n365), .C(n366), .Z(n362) );
  GTECH_NOT U419 ( .A(n161), .Z(n365) );
  GTECH_OAI22 U420 ( .A(n161), .B(n367), .C(n239), .D(n368), .Z(controller_N54) );
  GTECH_MUX2 U421 ( .A(n364), .B(n369), .S(n161), .Z(n368) );
  GTECH_NAND2 U422 ( .A(n366), .B(n364), .Z(n369) );
  GTECH_NOT U423 ( .A(n160), .Z(n364) );
  GTECH_NOT U424 ( .A(n255), .Z(n239) );
  GTECH_MUX2 U425 ( .A(controller_N52), .B(n370), .S(n160), .Z(controller_N53)
         );
  GTECH_AND2 U426 ( .A(n255), .B(n366), .Z(n370) );
  GTECH_NOT U427 ( .A(n159), .Z(n366) );
  GTECH_NOT U428 ( .A(n367), .Z(controller_N52) );
  GTECH_NAND2 U429 ( .A(n159), .B(n255), .Z(n367) );
  GTECH_OAI21 U430 ( .A(n371), .B(n372), .C(n158), .Z(n255) );
  GTECH_NAND8 U431 ( .A(n173), .B(n172), .C(n174), .D(n373), .E(n166), .F(n165), .G(n167), .H(n374), .Z(n372) );
  GTECH_AND4 U432 ( .A(n164), .B(n163), .C(n162), .D(n157), .Z(n374) );
  GTECH_AND4 U433 ( .A(n171), .B(n170), .C(n169), .D(n168), .Z(n373) );
  GTECH_NAND8 U434 ( .A(n155), .B(n154), .C(n156), .D(n375), .E(n148), .F(n147), .G(n149), .H(n376), .Z(n371) );
  GTECH_AND4 U435 ( .A(n146), .B(n145), .C(n144), .D(n143), .Z(n376) );
  GTECH_AND4 U436 ( .A(n153), .B(n152), .C(n151), .D(n150), .Z(n375) );
  GTECH_AND2 U437 ( .A(controller_N95), .B(n136), .Z(controller_N102) );
  GTECH_NOT U438 ( .A(rst), .Z(n136) );
  GTECH_NAND2 U439 ( .A(n377), .B(n240), .Z(controller_N95) );
  GTECH_NAND3 U440 ( .A(n141), .B(n377), .C(n8), .Z(n240) );
  GTECH_NOT U441 ( .A(n142), .Z(n377) );
endmodule

