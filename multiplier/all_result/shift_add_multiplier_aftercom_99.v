
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
         controller_state_1_, controller_start, n8, n9, n12, n13, n15, n16,
         n17, n18, n19, n20, n21, n22, n132, n134, n137, n48, n140, n141, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n225, n226, n227, n228, n229, n230, n231,
         n232, n233, n234, n235, n236, n237, n238, n239, n240, n241, n242,
         n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, n253,
         n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, n264,
         n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, n275,
         n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286,
         n287, n288, n289, n290, n291, n292, n293, n294, n295, n296, n297,
         n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, n308,
         n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, n319,
         n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330,
         n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343, n344, n345, n346;
  wire   [7:0] A;

  GTECH_FJK2S controller_count_reg_31_ ( .J(n48), .K(n48), .TI(controller_N83), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_31_), 
        .QN(n160) );
  GTECH_FJK2S controller_count_reg_30_ ( .J(n48), .K(n48), .TI(controller_N82), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_30_), 
        .QN(n159) );
  GTECH_FJK3 controller_start_reg ( .J(n48), .K(controller_N97), .CP(clk), 
        .CD(n132), .SD(n137), .Q(controller_start), .QN(n134) );
  GTECH_FJK2S controller_state_reg_0_ ( .J(n48), .K(n48), .TI(controller_N93), 
        .TE(controller_N95), .CP(clk), .CD(n137), .Q(controller_state_0_), 
        .QN(n143) );
  GTECH_FJK2S controller_state_reg_1_ ( .J(n48), .K(n48), .TI(controller_N94), 
        .TE(controller_N95), .CP(clk), .CD(n137), .Q(controller_state_1_), 
        .QN(n8) );
  GTECH_FJK2S controller_state_reg_2_ ( .J(n48), .K(n48), .TI(controller_N96), 
        .TE(controller_N95), .CP(clk), .CD(n137), .Q(n9) );
  GTECH_FJK2S controller_count_reg_29_ ( .J(n48), .K(n48), .TI(controller_N81), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_29_), 
        .QN(n158) );
  GTECH_FJK2S controller_count_reg_28_ ( .J(n48), .K(n48), .TI(controller_N80), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_28_), 
        .QN(n157) );
  GTECH_FJK2S controller_count_reg_27_ ( .J(n48), .K(n48), .TI(controller_N79), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_27_), 
        .QN(n156) );
  GTECH_FJK2S controller_count_reg_26_ ( .J(n48), .K(n48), .TI(controller_N78), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_26_), 
        .QN(n155) );
  GTECH_FJK2S controller_count_reg_25_ ( .J(n48), .K(n48), .TI(controller_N77), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_25_), 
        .QN(n154) );
  GTECH_FJK2S controller_count_reg_24_ ( .J(n48), .K(n48), .TI(controller_N76), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_24_), 
        .QN(n153) );
  GTECH_FJK2S controller_count_reg_23_ ( .J(n48), .K(n48), .TI(controller_N75), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_23_), 
        .QN(n152) );
  GTECH_FJK2S controller_count_reg_22_ ( .J(n48), .K(n48), .TI(controller_N74), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_22_), 
        .QN(n151) );
  GTECH_FJK2S controller_count_reg_21_ ( .J(n48), .K(n48), .TI(controller_N73), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_21_), 
        .QN(n150) );
  GTECH_FJK2S controller_count_reg_20_ ( .J(n48), .K(n48), .TI(controller_N72), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_20_), 
        .QN(n149) );
  GTECH_FJK2S controller_count_reg_19_ ( .J(n48), .K(n48), .TI(controller_N71), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_19_), 
        .QN(n148) );
  GTECH_FJK2S controller_count_reg_18_ ( .J(n48), .K(n48), .TI(controller_N70), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_18_), 
        .QN(n147) );
  GTECH_FJK2S controller_count_reg_17_ ( .J(n48), .K(n48), .TI(controller_N69), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_17_), 
        .QN(n146) );
  GTECH_FJK2S controller_count_reg_16_ ( .J(n48), .K(n48), .TI(controller_N68), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_16_), 
        .QN(n145) );
  GTECH_FJK2S controller_count_reg_15_ ( .J(n48), .K(n48), .TI(controller_N67), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_15_), 
        .QN(n144) );
  GTECH_FJK2S controller_count_reg_14_ ( .J(n48), .K(n48), .TI(controller_N66), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_14_), 
        .QN(n175) );
  GTECH_FJK2S controller_count_reg_13_ ( .J(n48), .K(n48), .TI(controller_N65), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_13_), 
        .QN(n174) );
  GTECH_FJK2S controller_count_reg_12_ ( .J(n48), .K(n48), .TI(controller_N64), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_12_), 
        .QN(n173) );
  GTECH_FJK2S controller_count_reg_11_ ( .J(n48), .K(n48), .TI(controller_N63), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_11_), 
        .QN(n172) );
  GTECH_FJK2S controller_count_reg_10_ ( .J(n48), .K(n48), .TI(controller_N62), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_10_), 
        .QN(n171) );
  GTECH_FJK2S controller_count_reg_9_ ( .J(n48), .K(n48), .TI(controller_N61), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_9_), 
        .QN(n170) );
  GTECH_FJK2S controller_count_reg_8_ ( .J(n48), .K(n48), .TI(controller_N60), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_8_), 
        .QN(n169) );
  GTECH_FJK2S controller_count_reg_7_ ( .J(n48), .K(n48), .TI(controller_N59), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_7_), 
        .QN(n168) );
  GTECH_FJK2S controller_count_reg_6_ ( .J(n48), .K(n48), .TI(controller_N58), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_6_), 
        .QN(n167) );
  GTECH_FJK2S controller_count_reg_5_ ( .J(n48), .K(n48), .TI(controller_N57), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_5_), 
        .QN(n166) );
  GTECH_FJK2S controller_count_reg_4_ ( .J(n48), .K(n48), .TI(controller_N56), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_4_), 
        .QN(n165) );
  GTECH_FJK2S controller_count_reg_3_ ( .J(n48), .K(n48), .TI(controller_N55), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_3_), 
        .QN(n164) );
  GTECH_FJK2S controller_count_reg_2_ ( .J(n48), .K(n48), .TI(controller_N54), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_2_), 
        .QN(n163) );
  GTECH_FJK2S controller_count_reg_1_ ( .J(n48), .K(n48), .TI(controller_N53), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_1_), 
        .QN(n162) );
  GTECH_FJK2S controller_count_reg_0_ ( .J(n48), .K(n48), .TI(controller_N52), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_0_), 
        .QN(n161) );
  GTECH_FJK2S controller_out_cmd_reg ( .J(n48), .K(n48), .TI(controller_N92), 
        .TE(controller_N95), .CP(clk), .CD(n137), .Q(out_cmd) );
  GTECH_FJK1S controller_shift_cmd_reg ( .J(n48), .K(n48), .TI(controller_N98), 
        .TE(controller_N102), .CP(clk), .QN(n140) );
  GTECH_FJK1S controller_load_cmd_reg ( .J(n48), .K(n48), .TI(controller_N90), 
        .TE(controller_N102), .CP(clk), .Q(load_cmd), .QN(n12) );
  GTECH_FJK1S controller_add_cmd_reg ( .J(n48), .K(n48), .TI(controller_N91), 
        .TE(controller_N102), .CP(clk), .Q(add_cmd), .QN(n13) );
  GTECH_FJK2S shifter_add_temp_reg ( .J(n48), .K(n48), .TI(shifter_N24), .TE(
        shifter_N23), .CP(clk), .CD(n137), .Q(shifter_add_temp) );
  GTECH_FJK2S shifter_temp_reg_8_ ( .J(n48), .K(n48), .TI(shifter_N14), .TE(
        shifter_N22), .CP(clk), .CD(n137), .Q(A[0]), .QN(n15) );
  GTECH_FJK2S shifter_temp_reg_15_ ( .J(n48), .K(n48), .TI(shifter_N21), .TE(
        shifter_N22), .CP(clk), .CD(n137), .Q(A[7]), .QN(n16) );
  GTECH_FJK2S shifter_temp_reg_14_ ( .J(n48), .K(n48), .TI(shifter_N20), .TE(
        shifter_N22), .CP(clk), .CD(n137), .Q(A[6]), .QN(n17) );
  GTECH_FJK2S shifter_temp_reg_13_ ( .J(n48), .K(n48), .TI(shifter_N19), .TE(
        shifter_N22), .CP(clk), .CD(n137), .Q(A[5]), .QN(n18) );
  GTECH_FJK2S shifter_temp_reg_12_ ( .J(n48), .K(n48), .TI(shifter_N18), .TE(
        shifter_N22), .CP(clk), .CD(n137), .Q(A[4]), .QN(n19) );
  GTECH_FJK2S shifter_temp_reg_11_ ( .J(n48), .K(n48), .TI(shifter_N17), .TE(
        shifter_N22), .CP(clk), .CD(n137), .Q(A[3]), .QN(n20) );
  GTECH_FJK2S shifter_temp_reg_10_ ( .J(n48), .K(n48), .TI(shifter_N16), .TE(
        shifter_N22), .CP(clk), .CD(n137), .Q(A[2]), .QN(n21) );
  GTECH_FJK2S shifter_temp_reg_9_ ( .J(n48), .K(n48), .TI(shifter_N15), .TE(
        shifter_N22), .CP(clk), .CD(n137), .Q(A[1]), .QN(n22) );
  GTECH_FJK2S shifter_temp_reg_7_ ( .J(n48), .K(n48), .TI(shifter_N13), .TE(
        shifter_N22), .CP(clk), .CD(n137), .Q(shifter_temp_7_) );
  GTECH_FJK2S shifter_temp_reg_6_ ( .J(n48), .K(n48), .TI(shifter_N12), .TE(
        shifter_N22), .CP(clk), .CD(n137), .Q(shifter_temp_6_) );
  GTECH_FJK2S shifter_temp_reg_5_ ( .J(n48), .K(n48), .TI(shifter_N11), .TE(
        shifter_N22), .CP(clk), .CD(n137), .Q(shifter_temp_5_) );
  GTECH_FJK2S shifter_temp_reg_4_ ( .J(n48), .K(n48), .TI(shifter_N10), .TE(
        shifter_N22), .CP(clk), .CD(n137), .Q(shifter_temp_4_) );
  GTECH_FJK2S shifter_temp_reg_3_ ( .J(n48), .K(n48), .TI(shifter_N9), .TE(
        shifter_N22), .CP(clk), .CD(n137), .Q(shifter_temp_3_) );
  GTECH_FJK2S shifter_temp_reg_2_ ( .J(n48), .K(n48), .TI(shifter_N8), .TE(
        shifter_N22), .CP(clk), .CD(n137), .Q(shifter_temp_2_) );
  GTECH_FJK2S shifter_temp_reg_1_ ( .J(n48), .K(n48), .TI(shifter_N7), .TE(
        shifter_N22), .CP(clk), .CD(n137), .Q(shifter_temp_1_) );
  GTECH_FJK2S shifter_temp_reg_0_ ( .J(n48), .K(n48), .TI(shifter_N6), .TE(
        shifter_N22), .CP(clk), .CD(n137), .Q(lsb), .QN(n141) );
  GTECH_ZERO U159 ( .Z(n48) );
  GTECH_ONE U160 ( .Z(n132) );
  GTECH_OAI2N2 U161 ( .A(n176), .B(n177), .C(Q[3]), .D(n178), .Z(shifter_N9)
         );
  GTECH_NOT U162 ( .A(shifter_temp_4_), .Z(n177) );
  GTECH_OAI2N2 U163 ( .A(n176), .B(n179), .C(Q[2]), .D(n178), .Z(shifter_N8)
         );
  GTECH_NOT U164 ( .A(shifter_temp_3_), .Z(n179) );
  GTECH_OAI2N2 U165 ( .A(n176), .B(n180), .C(Q[1]), .D(n178), .Z(shifter_N7)
         );
  GTECH_NOT U166 ( .A(shifter_temp_2_), .Z(n180) );
  GTECH_OAI2N2 U167 ( .A(n176), .B(n181), .C(Q[0]), .D(n178), .Z(shifter_N6)
         );
  GTECH_NOT U168 ( .A(shifter_temp_1_), .Z(n181) );
  GTECH_NOT U169 ( .A(n182), .Z(shifter_N24) );
  GTECH_OR_NOT U170 ( .A(n183), .B(n182), .Z(shifter_N23) );
  GTECH_OR_NOT U171 ( .A(n13), .B(n12), .Z(n182) );
  GTECH_OR_NOT U172 ( .A(n178), .B(n176), .Z(shifter_N22) );
  GTECH_AND2 U173 ( .A(n183), .B(n184), .Z(shifter_N21) );
  GTECH_OAI22 U174 ( .A(n185), .B(n186), .C(n16), .D(n187), .Z(n184) );
  GTECH_NOT U175 ( .A(n188), .Z(n187) );
  GTECH_OAI22 U176 ( .A(n16), .B(n189), .C(n190), .D(n191), .Z(shifter_N20) );
  GTECH_OA21 U177 ( .A(n16), .B(n188), .C(n192), .Z(n190) );
  GTECH_MUX2 U178 ( .A(n193), .B(n194), .S(n185), .Z(n192) );
  GTECH_OR_NOT U179 ( .A(n186), .B(n16), .Z(n194) );
  GTECH_XOR2 U180 ( .A(n186), .B(n16), .Z(n193) );
  GTECH_NOT U181 ( .A(D[7]), .Z(n186) );
  GTECH_OR_NOT U182 ( .A(D[7]), .B(n185), .Z(n188) );
  GTECH_AND2 U183 ( .A(n195), .B(n196), .Z(n185) );
  GTECH_OR_NOT U184 ( .A(n17), .B(D[6]), .Z(n196) );
  GTECH_OAI21 U185 ( .A(D[6]), .B(n197), .C(n198), .Z(n195) );
  GTECH_OAI22 U186 ( .A(n17), .B(n189), .C(n199), .D(n191), .Z(shifter_N19) );
  GTECH_XOR3 U187 ( .A(n17), .B(D[6]), .C(n198), .Z(n199) );
  GTECH_OAI21 U188 ( .A(n18), .B(n200), .C(n201), .Z(n198) );
  GTECH_OAI21 U189 ( .A(D[5]), .B(n202), .C(n203), .Z(n201) );
  GTECH_NOT U190 ( .A(D[5]), .Z(n200) );
  GTECH_OAI22 U191 ( .A(n18), .B(n189), .C(n204), .D(n191), .Z(shifter_N18) );
  GTECH_XOR3 U192 ( .A(n18), .B(D[5]), .C(n203), .Z(n204) );
  GTECH_OAI21 U193 ( .A(n19), .B(n205), .C(n206), .Z(n203) );
  GTECH_OAI21 U194 ( .A(D[4]), .B(n207), .C(n208), .Z(n206) );
  GTECH_NOT U195 ( .A(D[4]), .Z(n205) );
  GTECH_OAI22 U196 ( .A(n19), .B(n189), .C(n209), .D(n191), .Z(shifter_N17) );
  GTECH_XOR3 U197 ( .A(n19), .B(D[4]), .C(n208), .Z(n209) );
  GTECH_OAI21 U198 ( .A(n20), .B(n210), .C(n211), .Z(n208) );
  GTECH_OAI21 U199 ( .A(D[3]), .B(n212), .C(n213), .Z(n211) );
  GTECH_NOT U200 ( .A(D[3]), .Z(n210) );
  GTECH_OAI22 U201 ( .A(n20), .B(n189), .C(n214), .D(n191), .Z(shifter_N16) );
  GTECH_XOR3 U202 ( .A(n20), .B(D[3]), .C(n213), .Z(n214) );
  GTECH_OAI21 U203 ( .A(n21), .B(n215), .C(n216), .Z(n213) );
  GTECH_OAI21 U204 ( .A(D[2]), .B(n217), .C(n218), .Z(n216) );
  GTECH_NOT U205 ( .A(D[2]), .Z(n215) );
  GTECH_OAI22 U206 ( .A(n21), .B(n189), .C(n219), .D(n191), .Z(shifter_N15) );
  GTECH_XOR3 U207 ( .A(n21), .B(D[2]), .C(n218), .Z(n219) );
  GTECH_OAI21 U208 ( .A(n22), .B(n220), .C(n221), .Z(n218) );
  GTECH_OAI21 U209 ( .A(D[1]), .B(n222), .C(n223), .Z(n221) );
  GTECH_NOT U210 ( .A(D[1]), .Z(n220) );
  GTECH_OAI22 U211 ( .A(n22), .B(n189), .C(n191), .D(n224), .Z(shifter_N14) );
  GTECH_XOR3 U212 ( .A(n22), .B(D[1]), .C(n223), .Z(n224) );
  GTECH_NOT U213 ( .A(n225), .Z(n223) );
  GTECH_OR_NOT U214 ( .A(n15), .B(D[0]), .Z(n225) );
  GTECH_NOT U215 ( .A(n226), .Z(shifter_N13) );
  GTECH_AOI222 U216 ( .A(Q[7]), .B(n178), .C(n227), .D(n228), .E(n229), .F(
        n183), .Z(n226) );
  GTECH_NOT U217 ( .A(n191), .Z(n183) );
  GTECH_XNOR2 U218 ( .A(D[0]), .B(n15), .Z(n229) );
  GTECH_OAI2N2 U219 ( .A(n176), .B(n230), .C(Q[6]), .D(n178), .Z(shifter_N12)
         );
  GTECH_NOT U220 ( .A(shifter_temp_7_), .Z(n230) );
  GTECH_OAI2N2 U221 ( .A(n176), .B(n231), .C(Q[5]), .D(n178), .Z(shifter_N11)
         );
  GTECH_NOT U222 ( .A(shifter_temp_6_), .Z(n231) );
  GTECH_OAI2N2 U223 ( .A(n176), .B(n232), .C(Q[4]), .D(n178), .Z(shifter_N10)
         );
  GTECH_NOT U224 ( .A(n12), .Z(n178) );
  GTECH_NOT U225 ( .A(shifter_temp_5_), .Z(n232) );
  GTECH_NOT U226 ( .A(n233), .Z(n176) );
  GTECH_OR_NOT U227 ( .A(n227), .B(n191), .Z(n233) );
  GTECH_NAND4 U228 ( .A(shifter_add_temp), .B(n13), .C(n12), .D(n234), .Z(n191) );
  GTECH_NOT U229 ( .A(n189), .Z(n227) );
  GTECH_NAND4 U230 ( .A(n13), .B(n12), .C(n234), .D(n235), .Z(n189) );
  GTECH_NOT U231 ( .A(shifter_add_temp), .Z(n235) );
  GTECH_NOT U232 ( .A(n140), .Z(n234) );
  GTECH_AND2 U233 ( .A(out_cmd), .B(n222), .Z(out[9]) );
  GTECH_NOT U234 ( .A(n22), .Z(n222) );
  GTECH_AND2 U235 ( .A(out_cmd), .B(n228), .Z(out[8]) );
  GTECH_NOT U236 ( .A(n15), .Z(n228) );
  GTECH_AND2 U237 ( .A(out_cmd), .B(shifter_temp_7_), .Z(out[7]) );
  GTECH_AND2 U238 ( .A(out_cmd), .B(shifter_temp_6_), .Z(out[6]) );
  GTECH_AND2 U239 ( .A(out_cmd), .B(shifter_temp_5_), .Z(out[5]) );
  GTECH_AND2 U240 ( .A(out_cmd), .B(shifter_temp_4_), .Z(out[4]) );
  GTECH_AND2 U241 ( .A(out_cmd), .B(shifter_temp_3_), .Z(out[3]) );
  GTECH_AND2 U242 ( .A(out_cmd), .B(shifter_temp_2_), .Z(out[2]) );
  GTECH_AND2 U243 ( .A(out_cmd), .B(shifter_temp_1_), .Z(out[1]) );
  GTECH_AND2 U244 ( .A(out_cmd), .B(n236), .Z(out[15]) );
  GTECH_NOT U245 ( .A(n16), .Z(n236) );
  GTECH_AND2 U246 ( .A(out_cmd), .B(n197), .Z(out[14]) );
  GTECH_NOT U247 ( .A(n17), .Z(n197) );
  GTECH_AND2 U248 ( .A(out_cmd), .B(n202), .Z(out[13]) );
  GTECH_NOT U249 ( .A(n18), .Z(n202) );
  GTECH_AND2 U250 ( .A(out_cmd), .B(n207), .Z(out[12]) );
  GTECH_NOT U251 ( .A(n19), .Z(n207) );
  GTECH_AND2 U252 ( .A(out_cmd), .B(n212), .Z(out[11]) );
  GTECH_NOT U253 ( .A(n20), .Z(n212) );
  GTECH_AND2 U254 ( .A(out_cmd), .B(n217), .Z(out[10]) );
  GTECH_NOT U255 ( .A(n21), .Z(n217) );
  GTECH_AND2 U256 ( .A(out_cmd), .B(n237), .Z(out[0]) );
  GTECH_AND2 U257 ( .A(controller_N98), .B(n238), .Z(controller_N97) );
  GTECH_OAI21 U258 ( .A(n239), .B(n237), .C(n240), .Z(controller_N96) );
  GTECH_OAI21 U259 ( .A(n238), .B(n241), .C(n242), .Z(controller_N94) );
  GTECH_AND2 U260 ( .A(n243), .B(n244), .Z(n242) );
  GTECH_OR3 U261 ( .A(n141), .B(n245), .C(n239), .Z(n243) );
  GTECH_AND3 U262 ( .A(n143), .B(n246), .C(n247), .Z(controller_N93) );
  GTECH_MUX2 U263 ( .A(n237), .B(n248), .S(n8), .Z(n247) );
  GTECH_NOT U264 ( .A(n134), .Z(n248) );
  GTECH_NOT U265 ( .A(n141), .Z(n237) );
  GTECH_AND4 U266 ( .A(n134), .B(n8), .C(n143), .D(n246), .Z(controller_N92)
         );
  GTECH_NOT U267 ( .A(n240), .Z(controller_N91) );
  GTECH_OR_NOT U268 ( .A(n143), .B(n249), .Z(n240) );
  GTECH_NOT U269 ( .A(n239), .Z(n249) );
  GTECH_OR_NOT U270 ( .A(n9), .B(n250), .Z(n239) );
  GTECH_NOT U271 ( .A(n244), .Z(controller_N90) );
  GTECH_OR3 U272 ( .A(n9), .B(n143), .C(n250), .Z(n244) );
  GTECH_OA21 U273 ( .A(n159), .B(n251), .C(n252), .Z(controller_N83) );
  GTECH_NOT U274 ( .A(n160), .Z(n252) );
  GTECH_AND2 U275 ( .A(n253), .B(n254), .Z(controller_N82) );
  GTECH_XOR2 U276 ( .A(n251), .B(n159), .Z(n253) );
  GTECH_OR_NOT U277 ( .A(n158), .B(n255), .Z(n251) );
  GTECH_NOT U278 ( .A(n256), .Z(n255) );
  GTECH_AND2 U279 ( .A(n257), .B(n254), .Z(controller_N81) );
  GTECH_XOR2 U280 ( .A(n256), .B(n158), .Z(n257) );
  GTECH_OR_NOT U281 ( .A(n157), .B(n258), .Z(n256) );
  GTECH_NOT U282 ( .A(n259), .Z(n258) );
  GTECH_AND2 U283 ( .A(n260), .B(n254), .Z(controller_N80) );
  GTECH_XOR2 U284 ( .A(n259), .B(n157), .Z(n260) );
  GTECH_OR_NOT U285 ( .A(n156), .B(n261), .Z(n259) );
  GTECH_NOT U286 ( .A(n262), .Z(n261) );
  GTECH_AND2 U287 ( .A(n263), .B(n254), .Z(controller_N79) );
  GTECH_XOR2 U288 ( .A(n262), .B(n156), .Z(n263) );
  GTECH_OR_NOT U289 ( .A(n155), .B(n264), .Z(n262) );
  GTECH_NOT U290 ( .A(n265), .Z(n264) );
  GTECH_AND2 U291 ( .A(n266), .B(n254), .Z(controller_N78) );
  GTECH_XOR2 U292 ( .A(n265), .B(n155), .Z(n266) );
  GTECH_OR_NOT U293 ( .A(n154), .B(n267), .Z(n265) );
  GTECH_NOT U294 ( .A(n268), .Z(n267) );
  GTECH_AND2 U295 ( .A(n269), .B(n254), .Z(controller_N77) );
  GTECH_XOR2 U296 ( .A(n268), .B(n154), .Z(n269) );
  GTECH_OR_NOT U297 ( .A(n153), .B(n270), .Z(n268) );
  GTECH_NOT U298 ( .A(n271), .Z(n270) );
  GTECH_AND2 U299 ( .A(n272), .B(n254), .Z(controller_N76) );
  GTECH_XOR2 U300 ( .A(n271), .B(n153), .Z(n272) );
  GTECH_OR_NOT U301 ( .A(n152), .B(n273), .Z(n271) );
  GTECH_NOT U302 ( .A(n274), .Z(n273) );
  GTECH_AND2 U303 ( .A(n275), .B(n254), .Z(controller_N75) );
  GTECH_XOR2 U304 ( .A(n274), .B(n152), .Z(n275) );
  GTECH_OR_NOT U305 ( .A(n151), .B(n276), .Z(n274) );
  GTECH_NOT U306 ( .A(n277), .Z(n276) );
  GTECH_AND2 U307 ( .A(n278), .B(n254), .Z(controller_N74) );
  GTECH_XOR2 U308 ( .A(n277), .B(n151), .Z(n278) );
  GTECH_OR_NOT U309 ( .A(n150), .B(n279), .Z(n277) );
  GTECH_NOT U310 ( .A(n280), .Z(n279) );
  GTECH_AND2 U311 ( .A(n281), .B(n254), .Z(controller_N73) );
  GTECH_XOR2 U312 ( .A(n280), .B(n150), .Z(n281) );
  GTECH_OR_NOT U313 ( .A(n149), .B(n282), .Z(n280) );
  GTECH_NOT U314 ( .A(n283), .Z(n282) );
  GTECH_AND2 U315 ( .A(n284), .B(n254), .Z(controller_N72) );
  GTECH_XOR2 U316 ( .A(n283), .B(n149), .Z(n284) );
  GTECH_OR_NOT U317 ( .A(n148), .B(n285), .Z(n283) );
  GTECH_NOT U318 ( .A(n286), .Z(n285) );
  GTECH_AND2 U319 ( .A(n287), .B(n254), .Z(controller_N71) );
  GTECH_XOR2 U320 ( .A(n286), .B(n148), .Z(n287) );
  GTECH_OR_NOT U321 ( .A(n147), .B(n288), .Z(n286) );
  GTECH_NOT U322 ( .A(n289), .Z(n288) );
  GTECH_AND2 U323 ( .A(n290), .B(n254), .Z(controller_N70) );
  GTECH_XOR2 U324 ( .A(n289), .B(n147), .Z(n290) );
  GTECH_OR_NOT U325 ( .A(n146), .B(n291), .Z(n289) );
  GTECH_NOT U326 ( .A(n292), .Z(n291) );
  GTECH_AND2 U327 ( .A(n293), .B(n254), .Z(controller_N69) );
  GTECH_XOR2 U328 ( .A(n292), .B(n146), .Z(n293) );
  GTECH_OR_NOT U329 ( .A(n145), .B(n294), .Z(n292) );
  GTECH_NOT U330 ( .A(n295), .Z(n294) );
  GTECH_AND2 U331 ( .A(n296), .B(n254), .Z(controller_N68) );
  GTECH_XOR2 U332 ( .A(n295), .B(n145), .Z(n296) );
  GTECH_OR_NOT U333 ( .A(n144), .B(n297), .Z(n295) );
  GTECH_NOT U334 ( .A(n298), .Z(n297) );
  GTECH_AND2 U335 ( .A(n299), .B(n254), .Z(controller_N67) );
  GTECH_XOR2 U336 ( .A(n298), .B(n144), .Z(n299) );
  GTECH_OR_NOT U337 ( .A(n175), .B(n300), .Z(n298) );
  GTECH_NOT U338 ( .A(n301), .Z(n300) );
  GTECH_AND2 U339 ( .A(n302), .B(n254), .Z(controller_N66) );
  GTECH_XOR2 U340 ( .A(n301), .B(n175), .Z(n302) );
  GTECH_OR_NOT U341 ( .A(n174), .B(n303), .Z(n301) );
  GTECH_NOT U342 ( .A(n304), .Z(n303) );
  GTECH_AND2 U343 ( .A(n305), .B(n254), .Z(controller_N65) );
  GTECH_XOR2 U344 ( .A(n304), .B(n174), .Z(n305) );
  GTECH_OR_NOT U345 ( .A(n173), .B(n306), .Z(n304) );
  GTECH_NOT U346 ( .A(n307), .Z(n306) );
  GTECH_AND2 U347 ( .A(n308), .B(n254), .Z(controller_N64) );
  GTECH_XOR2 U348 ( .A(n307), .B(n173), .Z(n308) );
  GTECH_OR_NOT U349 ( .A(n172), .B(n309), .Z(n307) );
  GTECH_NOT U350 ( .A(n310), .Z(n309) );
  GTECH_AND2 U351 ( .A(n311), .B(n254), .Z(controller_N63) );
  GTECH_XOR2 U352 ( .A(n310), .B(n172), .Z(n311) );
  GTECH_OR_NOT U353 ( .A(n171), .B(n312), .Z(n310) );
  GTECH_NOT U354 ( .A(n313), .Z(n312) );
  GTECH_AND2 U355 ( .A(n314), .B(n254), .Z(controller_N62) );
  GTECH_XOR2 U356 ( .A(n313), .B(n171), .Z(n314) );
  GTECH_OR_NOT U357 ( .A(n170), .B(n315), .Z(n313) );
  GTECH_NOT U358 ( .A(n316), .Z(n315) );
  GTECH_AND2 U359 ( .A(n317), .B(n254), .Z(controller_N61) );
  GTECH_XOR2 U360 ( .A(n316), .B(n170), .Z(n317) );
  GTECH_OR_NOT U361 ( .A(n169), .B(n318), .Z(n316) );
  GTECH_NOT U362 ( .A(n319), .Z(n318) );
  GTECH_AND2 U363 ( .A(n320), .B(n254), .Z(controller_N60) );
  GTECH_XOR2 U364 ( .A(n319), .B(n169), .Z(n320) );
  GTECH_OR_NOT U365 ( .A(n168), .B(n321), .Z(n319) );
  GTECH_NOT U366 ( .A(n322), .Z(n321) );
  GTECH_AND2 U367 ( .A(n323), .B(n254), .Z(controller_N59) );
  GTECH_XOR2 U368 ( .A(n322), .B(n168), .Z(n323) );
  GTECH_OR_NOT U369 ( .A(n167), .B(n324), .Z(n322) );
  GTECH_NOT U370 ( .A(n325), .Z(n324) );
  GTECH_AND2 U371 ( .A(n326), .B(n254), .Z(controller_N58) );
  GTECH_XOR2 U372 ( .A(n325), .B(n167), .Z(n326) );
  GTECH_OR_NOT U373 ( .A(n166), .B(n327), .Z(n325) );
  GTECH_NOT U374 ( .A(n328), .Z(n327) );
  GTECH_AND2 U375 ( .A(n329), .B(n254), .Z(controller_N57) );
  GTECH_XOR2 U376 ( .A(n328), .B(n166), .Z(n329) );
  GTECH_OR_NOT U377 ( .A(n165), .B(n330), .Z(n328) );
  GTECH_NOT U378 ( .A(n331), .Z(n330) );
  GTECH_AND2 U379 ( .A(n332), .B(n254), .Z(controller_N56) );
  GTECH_XOR2 U380 ( .A(n331), .B(n165), .Z(n332) );
  GTECH_OR_NOT U381 ( .A(n164), .B(n333), .Z(n331) );
  GTECH_NOT U382 ( .A(n334), .Z(n333) );
  GTECH_AND2 U383 ( .A(n335), .B(n254), .Z(controller_N55) );
  GTECH_XOR2 U384 ( .A(n334), .B(n164), .Z(n335) );
  GTECH_OR3 U385 ( .A(n163), .B(n162), .C(n161), .Z(n334) );
  GTECH_OAI2N2 U386 ( .A(n163), .B(n336), .C(n337), .D(n254), .Z(
        controller_N54) );
  GTECH_MUX2 U387 ( .A(n162), .B(n338), .S(n163), .Z(n337) );
  GTECH_AND_NOT U388 ( .A(n339), .B(n162), .Z(n338) );
  GTECH_MUX2 U389 ( .A(controller_N52), .B(n340), .S(n162), .Z(controller_N53)
         );
  GTECH_AND2 U390 ( .A(n254), .B(n339), .Z(n340) );
  GTECH_NOT U391 ( .A(n161), .Z(n339) );
  GTECH_NOT U392 ( .A(n336), .Z(controller_N52) );
  GTECH_OR_NOT U393 ( .A(n238), .B(n161), .Z(n336) );
  GTECH_NOT U394 ( .A(n254), .Z(n238) );
  GTECH_OAI21 U395 ( .A(n341), .B(n342), .C(n160), .Z(n254) );
  GTECH_NAND8 U396 ( .A(n174), .B(n173), .C(n175), .D(n343), .E(n167), .F(n166), .G(n168), .H(n344), .Z(n342) );
  GTECH_AND4 U397 ( .A(n165), .B(n164), .C(n159), .D(n158), .Z(n344) );
  GTECH_AND4 U398 ( .A(n172), .B(n171), .C(n170), .D(n169), .Z(n343) );
  GTECH_NAND8 U399 ( .A(n156), .B(n155), .C(n157), .D(n345), .E(n149), .F(n148), .G(n150), .H(n346), .Z(n341) );
  GTECH_AND4 U400 ( .A(n147), .B(n146), .C(n145), .D(n144), .Z(n346) );
  GTECH_AND4 U401 ( .A(n154), .B(n153), .C(n152), .D(n151), .Z(n345) );
  GTECH_AND2 U402 ( .A(controller_N95), .B(n137), .Z(controller_N102) );
  GTECH_NOT U403 ( .A(rst), .Z(n137) );
  GTECH_OR_NOT U404 ( .A(controller_N98), .B(n9), .Z(controller_N95) );
  GTECH_NOT U405 ( .A(n241), .Z(controller_N98) );
  GTECH_OR3 U406 ( .A(n245), .B(n250), .C(n246), .Z(n241) );
  GTECH_NOT U407 ( .A(n9), .Z(n246) );
  GTECH_NOT U408 ( .A(n8), .Z(n250) );
  GTECH_NOT U409 ( .A(n143), .Z(n245) );
endmodule

