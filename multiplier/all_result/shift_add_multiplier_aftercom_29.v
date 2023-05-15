
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
         n10, n11, n13, n14, n15, n16, n17, n18, n19, n20, n131, n133, n136,
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
         n338, n339, n340, n341, n342, n343;
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
  GTECH_FJK2S controller_state_reg_2_ ( .J(n47), .K(n47), .TI(controller_N96), 
        .TE(controller_N95), .CP(clk), .CD(n136), .Q(controller_state_2_), 
        .QN(n142) );
  GTECH_FJK2S controller_state_reg_1_ ( .J(n47), .K(n47), .TI(controller_N94), 
        .TE(controller_N95), .CP(clk), .CD(n136), .Q(controller_state_1_), 
        .QN(n8) );
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
  GTECH_FJK1S controller_load_cmd_reg ( .J(n47), .K(n47), .TI(controller_N90), 
        .TE(controller_N102), .CP(clk), .Q(load_cmd), .QN(n10) );
  GTECH_FJK1S controller_add_cmd_reg ( .J(n47), .K(n47), .TI(controller_N91), 
        .TE(controller_N102), .CP(clk), .Q(add_cmd), .QN(n11) );
  GTECH_FJK2S shifter_add_temp_reg ( .J(n47), .K(n47), .TI(shifter_N24), .TE(
        shifter_N23), .CP(clk), .CD(n136), .Q(shifter_add_temp) );
  GTECH_FJK2S shifter_temp_reg_8_ ( .J(n47), .K(n47), .TI(shifter_N14), .TE(
        shifter_N22), .CP(clk), .CD(n136), .Q(A[0]), .QN(n13) );
  GTECH_FJK2S shifter_temp_reg_15_ ( .J(n47), .K(n47), .TI(shifter_N21), .TE(
        shifter_N22), .CP(clk), .CD(n136), .Q(A[7]), .QN(n14) );
  GTECH_FJK2S shifter_temp_reg_14_ ( .J(n47), .K(n47), .TI(shifter_N20), .TE(
        shifter_N22), .CP(clk), .CD(n136), .Q(A[6]), .QN(n15) );
  GTECH_FJK2S shifter_temp_reg_13_ ( .J(n47), .K(n47), .TI(shifter_N19), .TE(
        shifter_N22), .CP(clk), .CD(n136), .Q(A[5]), .QN(n16) );
  GTECH_FJK2S shifter_temp_reg_12_ ( .J(n47), .K(n47), .TI(shifter_N18), .TE(
        shifter_N22), .CP(clk), .CD(n136), .Q(A[4]), .QN(n17) );
  GTECH_FJK2S shifter_temp_reg_11_ ( .J(n47), .K(n47), .TI(shifter_N17), .TE(
        shifter_N22), .CP(clk), .CD(n136), .Q(A[3]), .QN(n18) );
  GTECH_FJK2S shifter_temp_reg_10_ ( .J(n47), .K(n47), .TI(shifter_N16), .TE(
        shifter_N22), .CP(clk), .CD(n136), .Q(A[2]), .QN(n19) );
  GTECH_FJK2S shifter_temp_reg_9_ ( .J(n47), .K(n47), .TI(shifter_N15), .TE(
        shifter_N22), .CP(clk), .CD(n136), .Q(A[1]), .QN(n20) );
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
  GTECH_FJK2S controller_out_cmd_reg ( .J(n47), .K(n47), .TI(controller_N92), 
        .TE(controller_N95), .CP(clk), .CD(n136), .Q(out_cmd) );
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
  GTECH_OR_NOT U170 ( .A(n182), .B(n181), .Z(shifter_N23) );
  GTECH_OR_NOT U171 ( .A(n11), .B(n10), .Z(n181) );
  GTECH_OR_NOT U172 ( .A(n177), .B(n175), .Z(shifter_N22) );
  GTECH_AND2 U173 ( .A(n182), .B(n183), .Z(shifter_N21) );
  GTECH_OAI22 U174 ( .A(n184), .B(n185), .C(n14), .D(n186), .Z(n183) );
  GTECH_NOT U175 ( .A(n187), .Z(n186) );
  GTECH_OAI22 U176 ( .A(n14), .B(n188), .C(n189), .D(n190), .Z(shifter_N20) );
  GTECH_OA21 U177 ( .A(n14), .B(n187), .C(n191), .Z(n189) );
  GTECH_MUX2 U178 ( .A(n192), .B(n193), .S(n184), .Z(n191) );
  GTECH_OR_NOT U179 ( .A(n185), .B(n14), .Z(n193) );
  GTECH_XOR2 U180 ( .A(n185), .B(n14), .Z(n192) );
  GTECH_NOT U181 ( .A(D[7]), .Z(n185) );
  GTECH_OR_NOT U182 ( .A(D[7]), .B(n184), .Z(n187) );
  GTECH_AND2 U183 ( .A(n194), .B(n195), .Z(n184) );
  GTECH_OR_NOT U184 ( .A(n15), .B(D[6]), .Z(n195) );
  GTECH_OAI21 U185 ( .A(D[6]), .B(n196), .C(n197), .Z(n194) );
  GTECH_OAI22 U186 ( .A(n15), .B(n188), .C(n190), .D(n198), .Z(shifter_N19) );
  GTECH_ADD_ABC U187 ( .A(D[6]), .B(n197), .C(n15), .S(n198) );
  GTECH_OAI21 U188 ( .A(n16), .B(n199), .C(n200), .Z(n197) );
  GTECH_OAI21 U189 ( .A(D[5]), .B(n201), .C(n202), .Z(n200) );
  GTECH_NOT U190 ( .A(D[5]), .Z(n199) );
  GTECH_OAI22 U191 ( .A(n16), .B(n188), .C(n190), .D(n203), .Z(shifter_N18) );
  GTECH_ADD_ABC U192 ( .A(D[5]), .B(n202), .C(n16), .S(n203) );
  GTECH_OAI21 U193 ( .A(n17), .B(n204), .C(n205), .Z(n202) );
  GTECH_OAI21 U194 ( .A(D[4]), .B(n206), .C(n207), .Z(n205) );
  GTECH_NOT U195 ( .A(D[4]), .Z(n204) );
  GTECH_OAI22 U196 ( .A(n17), .B(n188), .C(n190), .D(n208), .Z(shifter_N17) );
  GTECH_ADD_ABC U197 ( .A(D[4]), .B(n207), .C(n17), .S(n208) );
  GTECH_OAI21 U198 ( .A(n18), .B(n209), .C(n210), .Z(n207) );
  GTECH_OAI21 U199 ( .A(D[3]), .B(n211), .C(n212), .Z(n210) );
  GTECH_NOT U200 ( .A(D[3]), .Z(n209) );
  GTECH_OAI22 U201 ( .A(n18), .B(n188), .C(n190), .D(n213), .Z(shifter_N16) );
  GTECH_ADD_ABC U202 ( .A(D[3]), .B(n212), .C(n18), .S(n213) );
  GTECH_OAI21 U203 ( .A(n19), .B(n214), .C(n215), .Z(n212) );
  GTECH_OAI21 U204 ( .A(D[2]), .B(n216), .C(n217), .Z(n215) );
  GTECH_NOT U205 ( .A(D[2]), .Z(n214) );
  GTECH_OAI22 U206 ( .A(n19), .B(n188), .C(n190), .D(n218), .Z(shifter_N15) );
  GTECH_ADD_ABC U207 ( .A(D[2]), .B(n217), .C(n19), .S(n218) );
  GTECH_OAI21 U208 ( .A(n219), .B(n220), .C(n221), .Z(n217) );
  GTECH_OR_NOT U209 ( .A(n20), .B(D[1]), .Z(n221) );
  GTECH_AND_NOT U210 ( .A(n20), .B(D[1]), .Z(n219) );
  GTECH_OAI22 U211 ( .A(n20), .B(n188), .C(n190), .D(n222), .Z(shifter_N14) );
  GTECH_XNOR3 U212 ( .A(n20), .B(D[1]), .C(n220), .Z(n222) );
  GTECH_OR_NOT U213 ( .A(n13), .B(D[0]), .Z(n220) );
  GTECH_AO21 U214 ( .A(Q[7]), .B(n177), .C(n223), .Z(shifter_N13) );
  GTECH_OAI22 U215 ( .A(n190), .B(n224), .C(n13), .D(n188), .Z(n223) );
  GTECH_XOR2 U216 ( .A(D[0]), .B(n13), .Z(n224) );
  GTECH_OAI2N2 U217 ( .A(n175), .B(n225), .C(Q[6]), .D(n177), .Z(shifter_N12)
         );
  GTECH_NOT U218 ( .A(shifter_temp_7_), .Z(n225) );
  GTECH_OAI2N2 U219 ( .A(n175), .B(n226), .C(Q[5]), .D(n177), .Z(shifter_N11)
         );
  GTECH_NOT U220 ( .A(shifter_temp_6_), .Z(n226) );
  GTECH_OAI2N2 U221 ( .A(n175), .B(n227), .C(Q[4]), .D(n177), .Z(shifter_N10)
         );
  GTECH_NOT U222 ( .A(n10), .Z(n177) );
  GTECH_NOT U223 ( .A(shifter_temp_5_), .Z(n227) );
  GTECH_NOT U224 ( .A(n228), .Z(n175) );
  GTECH_OR_NOT U225 ( .A(n182), .B(n188), .Z(n228) );
  GTECH_NAND4 U226 ( .A(n9), .B(n11), .C(n10), .D(n229), .Z(n188) );
  GTECH_NOT U227 ( .A(shifter_add_temp), .Z(n229) );
  GTECH_NOT U228 ( .A(n190), .Z(n182) );
  GTECH_NAND4 U229 ( .A(shifter_add_temp), .B(n9), .C(n11), .D(n10), .Z(n190)
         );
  GTECH_AND2 U230 ( .A(out_cmd), .B(n230), .Z(out[9]) );
  GTECH_NOT U231 ( .A(n20), .Z(n230) );
  GTECH_AND2 U232 ( .A(out_cmd), .B(n231), .Z(out[8]) );
  GTECH_NOT U233 ( .A(n13), .Z(n231) );
  GTECH_AND2 U234 ( .A(out_cmd), .B(shifter_temp_7_), .Z(out[7]) );
  GTECH_AND2 U235 ( .A(out_cmd), .B(shifter_temp_6_), .Z(out[6]) );
  GTECH_AND2 U236 ( .A(out_cmd), .B(shifter_temp_5_), .Z(out[5]) );
  GTECH_AND2 U237 ( .A(out_cmd), .B(shifter_temp_4_), .Z(out[4]) );
  GTECH_AND2 U238 ( .A(out_cmd), .B(shifter_temp_3_), .Z(out[3]) );
  GTECH_AND2 U239 ( .A(out_cmd), .B(shifter_temp_2_), .Z(out[2]) );
  GTECH_AND2 U240 ( .A(out_cmd), .B(shifter_temp_1_), .Z(out[1]) );
  GTECH_AND2 U241 ( .A(out_cmd), .B(n232), .Z(out[15]) );
  GTECH_NOT U242 ( .A(n14), .Z(n232) );
  GTECH_AND2 U243 ( .A(out_cmd), .B(n196), .Z(out[14]) );
  GTECH_NOT U244 ( .A(n15), .Z(n196) );
  GTECH_AND2 U245 ( .A(out_cmd), .B(n201), .Z(out[13]) );
  GTECH_NOT U246 ( .A(n16), .Z(n201) );
  GTECH_AND2 U247 ( .A(out_cmd), .B(n206), .Z(out[12]) );
  GTECH_NOT U248 ( .A(n17), .Z(n206) );
  GTECH_AND2 U249 ( .A(out_cmd), .B(n211), .Z(out[11]) );
  GTECH_NOT U250 ( .A(n18), .Z(n211) );
  GTECH_AND2 U251 ( .A(out_cmd), .B(n216), .Z(out[10]) );
  GTECH_NOT U252 ( .A(n19), .Z(n216) );
  GTECH_AND2 U253 ( .A(out_cmd), .B(n233), .Z(out[0]) );
  GTECH_AND2 U254 ( .A(controller_N98), .B(n234), .Z(controller_N97) );
  GTECH_OAI21 U255 ( .A(n235), .B(n233), .C(n236), .Z(controller_N96) );
  GTECH_OAI21 U256 ( .A(n234), .B(n237), .C(n238), .Z(controller_N94) );
  GTECH_AND2 U257 ( .A(n239), .B(n240), .Z(n238) );
  GTECH_NAND3 U258 ( .A(n141), .B(n233), .C(n241), .Z(n239) );
  GTECH_AND3 U259 ( .A(n142), .B(n141), .C(n242), .Z(controller_N93) );
  GTECH_MUX2 U260 ( .A(n233), .B(n243), .S(n8), .Z(n242) );
  GTECH_NOT U261 ( .A(n133), .Z(n243) );
  GTECH_NOT U262 ( .A(n140), .Z(n233) );
  GTECH_AND4 U263 ( .A(n133), .B(n142), .C(n8), .D(n141), .Z(controller_N92)
         );
  GTECH_NOT U264 ( .A(n236), .Z(controller_N91) );
  GTECH_OR_NOT U265 ( .A(n141), .B(n241), .Z(n236) );
  GTECH_NOT U266 ( .A(n235), .Z(n241) );
  GTECH_OR_NOT U267 ( .A(n8), .B(n142), .Z(n235) );
  GTECH_NOT U268 ( .A(n240), .Z(controller_N90) );
  GTECH_NAND3 U269 ( .A(n8), .B(n244), .C(n142), .Z(n240) );
  GTECH_NOT U270 ( .A(n141), .Z(n244) );
  GTECH_OA21 U271 ( .A(n157), .B(n245), .C(n246), .Z(controller_N83) );
  GTECH_NOT U272 ( .A(n158), .Z(n246) );
  GTECH_AND2 U273 ( .A(n247), .B(n248), .Z(controller_N82) );
  GTECH_XOR2 U274 ( .A(n245), .B(n157), .Z(n247) );
  GTECH_OR_NOT U275 ( .A(n156), .B(n249), .Z(n245) );
  GTECH_NOT U276 ( .A(n250), .Z(n249) );
  GTECH_AND2 U277 ( .A(n251), .B(n248), .Z(controller_N81) );
  GTECH_XOR2 U278 ( .A(n250), .B(n156), .Z(n251) );
  GTECH_OR_NOT U279 ( .A(n155), .B(n252), .Z(n250) );
  GTECH_NOT U280 ( .A(n253), .Z(n252) );
  GTECH_AND2 U281 ( .A(n254), .B(n248), .Z(controller_N80) );
  GTECH_XOR2 U282 ( .A(n253), .B(n155), .Z(n254) );
  GTECH_OR_NOT U283 ( .A(n154), .B(n255), .Z(n253) );
  GTECH_NOT U284 ( .A(n256), .Z(n255) );
  GTECH_AND2 U285 ( .A(n257), .B(n248), .Z(controller_N79) );
  GTECH_XOR2 U286 ( .A(n256), .B(n154), .Z(n257) );
  GTECH_OR_NOT U287 ( .A(n153), .B(n258), .Z(n256) );
  GTECH_NOT U288 ( .A(n259), .Z(n258) );
  GTECH_AND2 U289 ( .A(n260), .B(n248), .Z(controller_N78) );
  GTECH_XOR2 U290 ( .A(n259), .B(n153), .Z(n260) );
  GTECH_OR_NOT U291 ( .A(n152), .B(n261), .Z(n259) );
  GTECH_NOT U292 ( .A(n262), .Z(n261) );
  GTECH_AND2 U293 ( .A(n263), .B(n248), .Z(controller_N77) );
  GTECH_XOR2 U294 ( .A(n262), .B(n152), .Z(n263) );
  GTECH_OR_NOT U295 ( .A(n151), .B(n264), .Z(n262) );
  GTECH_NOT U296 ( .A(n265), .Z(n264) );
  GTECH_AND2 U297 ( .A(n266), .B(n248), .Z(controller_N76) );
  GTECH_XOR2 U298 ( .A(n265), .B(n151), .Z(n266) );
  GTECH_OR_NOT U299 ( .A(n150), .B(n267), .Z(n265) );
  GTECH_NOT U300 ( .A(n268), .Z(n267) );
  GTECH_AND2 U301 ( .A(n269), .B(n248), .Z(controller_N75) );
  GTECH_XOR2 U302 ( .A(n268), .B(n150), .Z(n269) );
  GTECH_OR_NOT U303 ( .A(n149), .B(n270), .Z(n268) );
  GTECH_NOT U304 ( .A(n271), .Z(n270) );
  GTECH_AND2 U305 ( .A(n272), .B(n248), .Z(controller_N74) );
  GTECH_XOR2 U306 ( .A(n271), .B(n149), .Z(n272) );
  GTECH_OR_NOT U307 ( .A(n148), .B(n273), .Z(n271) );
  GTECH_NOT U308 ( .A(n274), .Z(n273) );
  GTECH_AND2 U309 ( .A(n275), .B(n248), .Z(controller_N73) );
  GTECH_XOR2 U310 ( .A(n274), .B(n148), .Z(n275) );
  GTECH_OR_NOT U311 ( .A(n147), .B(n276), .Z(n274) );
  GTECH_NOT U312 ( .A(n277), .Z(n276) );
  GTECH_AND2 U313 ( .A(n278), .B(n248), .Z(controller_N72) );
  GTECH_XOR2 U314 ( .A(n277), .B(n147), .Z(n278) );
  GTECH_OR_NOT U315 ( .A(n146), .B(n279), .Z(n277) );
  GTECH_NOT U316 ( .A(n280), .Z(n279) );
  GTECH_AND2 U317 ( .A(n281), .B(n248), .Z(controller_N71) );
  GTECH_XOR2 U318 ( .A(n280), .B(n146), .Z(n281) );
  GTECH_OR_NOT U319 ( .A(n145), .B(n282), .Z(n280) );
  GTECH_NOT U320 ( .A(n283), .Z(n282) );
  GTECH_AND2 U321 ( .A(n284), .B(n248), .Z(controller_N70) );
  GTECH_XOR2 U322 ( .A(n283), .B(n145), .Z(n284) );
  GTECH_OR_NOT U323 ( .A(n144), .B(n285), .Z(n283) );
  GTECH_NOT U324 ( .A(n286), .Z(n285) );
  GTECH_AND2 U325 ( .A(n287), .B(n248), .Z(controller_N69) );
  GTECH_XOR2 U326 ( .A(n286), .B(n144), .Z(n287) );
  GTECH_OR_NOT U327 ( .A(n143), .B(n288), .Z(n286) );
  GTECH_NOT U328 ( .A(n289), .Z(n288) );
  GTECH_AND2 U329 ( .A(n290), .B(n248), .Z(controller_N68) );
  GTECH_XOR2 U330 ( .A(n289), .B(n143), .Z(n290) );
  GTECH_OR_NOT U331 ( .A(n174), .B(n291), .Z(n289) );
  GTECH_NOT U332 ( .A(n292), .Z(n291) );
  GTECH_AND2 U333 ( .A(n293), .B(n248), .Z(controller_N67) );
  GTECH_XOR2 U334 ( .A(n292), .B(n174), .Z(n293) );
  GTECH_OR_NOT U335 ( .A(n173), .B(n294), .Z(n292) );
  GTECH_NOT U336 ( .A(n295), .Z(n294) );
  GTECH_AND2 U337 ( .A(n296), .B(n248), .Z(controller_N66) );
  GTECH_XOR2 U338 ( .A(n295), .B(n173), .Z(n296) );
  GTECH_OR_NOT U339 ( .A(n172), .B(n297), .Z(n295) );
  GTECH_NOT U340 ( .A(n298), .Z(n297) );
  GTECH_AND2 U341 ( .A(n299), .B(n248), .Z(controller_N65) );
  GTECH_XOR2 U342 ( .A(n298), .B(n172), .Z(n299) );
  GTECH_OR_NOT U343 ( .A(n171), .B(n300), .Z(n298) );
  GTECH_NOT U344 ( .A(n301), .Z(n300) );
  GTECH_AND2 U345 ( .A(n302), .B(n248), .Z(controller_N64) );
  GTECH_XOR2 U346 ( .A(n301), .B(n171), .Z(n302) );
  GTECH_OR_NOT U347 ( .A(n170), .B(n303), .Z(n301) );
  GTECH_NOT U348 ( .A(n304), .Z(n303) );
  GTECH_AND2 U349 ( .A(n305), .B(n248), .Z(controller_N63) );
  GTECH_XOR2 U350 ( .A(n304), .B(n170), .Z(n305) );
  GTECH_OR_NOT U351 ( .A(n169), .B(n306), .Z(n304) );
  GTECH_NOT U352 ( .A(n307), .Z(n306) );
  GTECH_AND2 U353 ( .A(n308), .B(n248), .Z(controller_N62) );
  GTECH_XOR2 U354 ( .A(n307), .B(n169), .Z(n308) );
  GTECH_OR_NOT U355 ( .A(n168), .B(n309), .Z(n307) );
  GTECH_NOT U356 ( .A(n310), .Z(n309) );
  GTECH_AND2 U357 ( .A(n311), .B(n248), .Z(controller_N61) );
  GTECH_XOR2 U358 ( .A(n310), .B(n168), .Z(n311) );
  GTECH_OR_NOT U359 ( .A(n167), .B(n312), .Z(n310) );
  GTECH_NOT U360 ( .A(n313), .Z(n312) );
  GTECH_AND2 U361 ( .A(n314), .B(n248), .Z(controller_N60) );
  GTECH_XOR2 U362 ( .A(n313), .B(n167), .Z(n314) );
  GTECH_OR_NOT U363 ( .A(n166), .B(n315), .Z(n313) );
  GTECH_NOT U364 ( .A(n316), .Z(n315) );
  GTECH_AND2 U365 ( .A(n317), .B(n248), .Z(controller_N59) );
  GTECH_XOR2 U366 ( .A(n316), .B(n166), .Z(n317) );
  GTECH_OR_NOT U367 ( .A(n165), .B(n318), .Z(n316) );
  GTECH_NOT U368 ( .A(n319), .Z(n318) );
  GTECH_AND2 U369 ( .A(n320), .B(n248), .Z(controller_N58) );
  GTECH_XOR2 U370 ( .A(n319), .B(n165), .Z(n320) );
  GTECH_OR_NOT U371 ( .A(n164), .B(n321), .Z(n319) );
  GTECH_NOT U372 ( .A(n322), .Z(n321) );
  GTECH_AND2 U373 ( .A(n323), .B(n248), .Z(controller_N57) );
  GTECH_XOR2 U374 ( .A(n322), .B(n164), .Z(n323) );
  GTECH_OR_NOT U375 ( .A(n163), .B(n324), .Z(n322) );
  GTECH_NOT U376 ( .A(n325), .Z(n324) );
  GTECH_AND2 U377 ( .A(n326), .B(n248), .Z(controller_N56) );
  GTECH_XOR2 U378 ( .A(n325), .B(n163), .Z(n326) );
  GTECH_OR_NOT U379 ( .A(n162), .B(n327), .Z(n325) );
  GTECH_NOT U380 ( .A(n328), .Z(n327) );
  GTECH_AND2 U381 ( .A(n329), .B(n248), .Z(controller_N55) );
  GTECH_XOR2 U382 ( .A(n328), .B(n162), .Z(n329) );
  GTECH_NAND3 U383 ( .A(n330), .B(n331), .C(n332), .Z(n328) );
  GTECH_NOT U384 ( .A(n161), .Z(n331) );
  GTECH_OAI22 U385 ( .A(n161), .B(n333), .C(n234), .D(n334), .Z(controller_N54) );
  GTECH_MUX2 U386 ( .A(n330), .B(n335), .S(n161), .Z(n334) );
  GTECH_OR_NOT U387 ( .A(n160), .B(n332), .Z(n335) );
  GTECH_NOT U388 ( .A(n160), .Z(n330) );
  GTECH_MUX2 U389 ( .A(controller_N52), .B(n336), .S(n160), .Z(controller_N53)
         );
  GTECH_AND2 U390 ( .A(n248), .B(n332), .Z(n336) );
  GTECH_NOT U391 ( .A(n159), .Z(n332) );
  GTECH_NOT U392 ( .A(n333), .Z(controller_N52) );
  GTECH_OR_NOT U393 ( .A(n234), .B(n159), .Z(n333) );
  GTECH_NOT U394 ( .A(n248), .Z(n234) );
  GTECH_OAI21 U395 ( .A(n337), .B(n338), .C(n158), .Z(n248) );
  GTECH_NAND8 U396 ( .A(n173), .B(n172), .C(n174), .D(n339), .E(n166), .F(n165), .G(n167), .H(n340), .Z(n338) );
  GTECH_AND4 U397 ( .A(n164), .B(n163), .C(n162), .D(n157), .Z(n340) );
  GTECH_AND4 U398 ( .A(n171), .B(n170), .C(n169), .D(n168), .Z(n339) );
  GTECH_NAND8 U399 ( .A(n155), .B(n154), .C(n156), .D(n341), .E(n148), .F(n147), .G(n149), .H(n342), .Z(n337) );
  GTECH_AND4 U400 ( .A(n146), .B(n145), .C(n144), .D(n143), .Z(n342) );
  GTECH_AND4 U401 ( .A(n153), .B(n152), .C(n151), .D(n150), .Z(n341) );
  GTECH_AND2 U402 ( .A(controller_N95), .B(n136), .Z(controller_N102) );
  GTECH_NOT U403 ( .A(rst), .Z(n136) );
  GTECH_OR_NOT U404 ( .A(controller_N98), .B(n343), .Z(controller_N95) );
  GTECH_NOT U405 ( .A(n237), .Z(controller_N98) );
  GTECH_NAND3 U406 ( .A(n141), .B(n343), .C(n8), .Z(n237) );
  GTECH_NOT U407 ( .A(n142), .Z(n343) );
endmodule

