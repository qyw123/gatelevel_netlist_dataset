
module shift_add_multiplier ( clk, rst, D, Q, out );
  input [7:0] D;
  input [7:0] Q;
  output [15:0] out;
  input clk, rst;
  wire   load_cmd, add_cmd, shift_cmd, out_cmd, lsb, shifter_N24, shifter_N23,
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
         controller_state_1_, controller_state_2_, controller_start, n8, n11,
         n12, n13, n14, n15, n16, n17, n18, n127, n129, n132, n43, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257,
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301,
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n332, n333;
  wire   [7:0] A;

  GTECH_FJK2S controller_count_reg_31_ ( .J(n43), .K(n43), .TI(controller_N83), 
        .TE(controller_N98), .CP(clk), .CD(n132), .Q(controller_count_31_), 
        .QN(n153) );
  GTECH_FJK2S controller_count_reg_30_ ( .J(n43), .K(n43), .TI(controller_N82), 
        .TE(controller_N98), .CP(clk), .CD(n132), .Q(controller_count_30_), 
        .QN(n152) );
  GTECH_FJK3 controller_start_reg ( .J(n43), .K(controller_N97), .CP(clk), 
        .CD(n127), .SD(n132), .Q(controller_start), .QN(n129) );
  GTECH_FJK2S controller_state_reg_0_ ( .J(n43), .K(n43), .TI(controller_N93), 
        .TE(controller_N95), .CP(clk), .CD(n132), .Q(controller_state_0_), 
        .QN(n138) );
  GTECH_FJK2S controller_state_reg_2_ ( .J(n43), .K(n43), .TI(controller_N96), 
        .TE(controller_N95), .CP(clk), .CD(n132), .Q(controller_state_2_), 
        .QN(n139) );
  GTECH_FJK2S controller_state_reg_1_ ( .J(n43), .K(n43), .TI(controller_N94), 
        .TE(controller_N95), .CP(clk), .CD(n132), .Q(controller_state_1_), 
        .QN(n8) );
  GTECH_FJK2S controller_count_reg_29_ ( .J(n43), .K(n43), .TI(controller_N81), 
        .TE(controller_N98), .CP(clk), .CD(n132), .Q(controller_count_29_), 
        .QN(n151) );
  GTECH_FJK2S controller_count_reg_28_ ( .J(n43), .K(n43), .TI(controller_N80), 
        .TE(controller_N98), .CP(clk), .CD(n132), .Q(controller_count_28_), 
        .QN(n150) );
  GTECH_FJK2S controller_count_reg_27_ ( .J(n43), .K(n43), .TI(controller_N79), 
        .TE(controller_N98), .CP(clk), .CD(n132), .Q(controller_count_27_), 
        .QN(n149) );
  GTECH_FJK2S controller_count_reg_26_ ( .J(n43), .K(n43), .TI(controller_N78), 
        .TE(controller_N98), .CP(clk), .CD(n132), .Q(controller_count_26_), 
        .QN(n148) );
  GTECH_FJK2S controller_count_reg_25_ ( .J(n43), .K(n43), .TI(controller_N77), 
        .TE(controller_N98), .CP(clk), .CD(n132), .Q(controller_count_25_), 
        .QN(n147) );
  GTECH_FJK2S controller_count_reg_24_ ( .J(n43), .K(n43), .TI(controller_N76), 
        .TE(controller_N98), .CP(clk), .CD(n132), .Q(controller_count_24_), 
        .QN(n146) );
  GTECH_FJK2S controller_count_reg_23_ ( .J(n43), .K(n43), .TI(controller_N75), 
        .TE(controller_N98), .CP(clk), .CD(n132), .Q(controller_count_23_), 
        .QN(n145) );
  GTECH_FJK2S controller_count_reg_22_ ( .J(n43), .K(n43), .TI(controller_N74), 
        .TE(controller_N98), .CP(clk), .CD(n132), .Q(controller_count_22_), 
        .QN(n144) );
  GTECH_FJK2S controller_count_reg_21_ ( .J(n43), .K(n43), .TI(controller_N73), 
        .TE(controller_N98), .CP(clk), .CD(n132), .Q(controller_count_21_), 
        .QN(n143) );
  GTECH_FJK2S controller_count_reg_20_ ( .J(n43), .K(n43), .TI(controller_N72), 
        .TE(controller_N98), .CP(clk), .CD(n132), .Q(controller_count_20_), 
        .QN(n142) );
  GTECH_FJK2S controller_count_reg_19_ ( .J(n43), .K(n43), .TI(controller_N71), 
        .TE(controller_N98), .CP(clk), .CD(n132), .Q(controller_count_19_), 
        .QN(n141) );
  GTECH_FJK2S controller_count_reg_18_ ( .J(n43), .K(n43), .TI(controller_N70), 
        .TE(controller_N98), .CP(clk), .CD(n132), .Q(controller_count_18_), 
        .QN(n140) );
  GTECH_FJK2S controller_count_reg_17_ ( .J(n43), .K(n43), .TI(controller_N69), 
        .TE(controller_N98), .CP(clk), .CD(n132), .Q(controller_count_17_), 
        .QN(n171) );
  GTECH_FJK2S controller_count_reg_16_ ( .J(n43), .K(n43), .TI(controller_N68), 
        .TE(controller_N98), .CP(clk), .CD(n132), .Q(controller_count_16_), 
        .QN(n170) );
  GTECH_FJK2S controller_count_reg_15_ ( .J(n43), .K(n43), .TI(controller_N67), 
        .TE(controller_N98), .CP(clk), .CD(n132), .Q(controller_count_15_), 
        .QN(n169) );
  GTECH_FJK2S controller_count_reg_14_ ( .J(n43), .K(n43), .TI(controller_N66), 
        .TE(controller_N98), .CP(clk), .CD(n132), .Q(controller_count_14_), 
        .QN(n168) );
  GTECH_FJK2S controller_count_reg_13_ ( .J(n43), .K(n43), .TI(controller_N65), 
        .TE(controller_N98), .CP(clk), .CD(n132), .Q(controller_count_13_), 
        .QN(n167) );
  GTECH_FJK2S controller_count_reg_12_ ( .J(n43), .K(n43), .TI(controller_N64), 
        .TE(controller_N98), .CP(clk), .CD(n132), .Q(controller_count_12_), 
        .QN(n166) );
  GTECH_FJK2S controller_count_reg_11_ ( .J(n43), .K(n43), .TI(controller_N63), 
        .TE(controller_N98), .CP(clk), .CD(n132), .Q(controller_count_11_), 
        .QN(n165) );
  GTECH_FJK2S controller_count_reg_10_ ( .J(n43), .K(n43), .TI(controller_N62), 
        .TE(controller_N98), .CP(clk), .CD(n132), .Q(controller_count_10_), 
        .QN(n164) );
  GTECH_FJK2S controller_count_reg_9_ ( .J(n43), .K(n43), .TI(controller_N61), 
        .TE(controller_N98), .CP(clk), .CD(n132), .Q(controller_count_9_), 
        .QN(n163) );
  GTECH_FJK2S controller_count_reg_8_ ( .J(n43), .K(n43), .TI(controller_N60), 
        .TE(controller_N98), .CP(clk), .CD(n132), .Q(controller_count_8_), 
        .QN(n162) );
  GTECH_FJK2S controller_count_reg_7_ ( .J(n43), .K(n43), .TI(controller_N59), 
        .TE(controller_N98), .CP(clk), .CD(n132), .Q(controller_count_7_), 
        .QN(n161) );
  GTECH_FJK2S controller_count_reg_6_ ( .J(n43), .K(n43), .TI(controller_N58), 
        .TE(controller_N98), .CP(clk), .CD(n132), .Q(controller_count_6_), 
        .QN(n160) );
  GTECH_FJK2S controller_count_reg_5_ ( .J(n43), .K(n43), .TI(controller_N57), 
        .TE(controller_N98), .CP(clk), .CD(n132), .Q(controller_count_5_), 
        .QN(n159) );
  GTECH_FJK2S controller_count_reg_4_ ( .J(n43), .K(n43), .TI(controller_N56), 
        .TE(controller_N98), .CP(clk), .CD(n132), .Q(controller_count_4_), 
        .QN(n158) );
  GTECH_FJK2S controller_count_reg_3_ ( .J(n43), .K(n43), .TI(controller_N55), 
        .TE(controller_N98), .CP(clk), .CD(n132), .Q(controller_count_3_), 
        .QN(n157) );
  GTECH_FJK2S controller_count_reg_2_ ( .J(n43), .K(n43), .TI(controller_N54), 
        .TE(controller_N98), .CP(clk), .CD(n132), .Q(controller_count_2_), 
        .QN(n156) );
  GTECH_FJK2S controller_count_reg_1_ ( .J(n43), .K(n43), .TI(controller_N53), 
        .TE(controller_N98), .CP(clk), .CD(n132), .Q(controller_count_1_), 
        .QN(n155) );
  GTECH_FJK2S controller_count_reg_0_ ( .J(n43), .K(n43), .TI(controller_N52), 
        .TE(controller_N98), .CP(clk), .CD(n132), .Q(controller_count_0_), 
        .QN(n154) );
  GTECH_FJK1S controller_shift_cmd_reg ( .J(n43), .K(n43), .TI(controller_N98), 
        .TE(controller_N102), .CP(clk), .Q(shift_cmd) );
  GTECH_FJK1S controller_load_cmd_reg ( .J(n43), .K(n43), .TI(controller_N90), 
        .TE(controller_N102), .CP(clk), .Q(load_cmd), .QN(n135) );
  GTECH_FJK1S controller_add_cmd_reg ( .J(n43), .K(n43), .TI(controller_N91), 
        .TE(controller_N102), .CP(clk), .Q(add_cmd), .QN(n136) );
  GTECH_FJK2S shifter_add_temp_reg ( .J(n43), .K(n43), .TI(shifter_N24), .TE(
        shifter_N23), .CP(clk), .CD(n132), .Q(shifter_add_temp) );
  GTECH_FJK2S shifter_temp_reg_8_ ( .J(n43), .K(n43), .TI(shifter_N14), .TE(
        shifter_N22), .CP(clk), .CD(n132), .Q(A[0]), .QN(n11) );
  GTECH_FJK2S shifter_temp_reg_15_ ( .J(n43), .K(n43), .TI(shifter_N21), .TE(
        shifter_N22), .CP(clk), .CD(n132), .Q(A[7]), .QN(n12) );
  GTECH_FJK2S shifter_temp_reg_14_ ( .J(n43), .K(n43), .TI(shifter_N20), .TE(
        shifter_N22), .CP(clk), .CD(n132), .Q(A[6]), .QN(n13) );
  GTECH_FJK2S shifter_temp_reg_13_ ( .J(n43), .K(n43), .TI(shifter_N19), .TE(
        shifter_N22), .CP(clk), .CD(n132), .Q(A[5]), .QN(n14) );
  GTECH_FJK2S shifter_temp_reg_12_ ( .J(n43), .K(n43), .TI(shifter_N18), .TE(
        shifter_N22), .CP(clk), .CD(n132), .Q(A[4]), .QN(n15) );
  GTECH_FJK2S shifter_temp_reg_11_ ( .J(n43), .K(n43), .TI(shifter_N17), .TE(
        shifter_N22), .CP(clk), .CD(n132), .Q(A[3]), .QN(n16) );
  GTECH_FJK2S shifter_temp_reg_10_ ( .J(n43), .K(n43), .TI(shifter_N16), .TE(
        shifter_N22), .CP(clk), .CD(n132), .Q(A[2]), .QN(n17) );
  GTECH_FJK2S shifter_temp_reg_9_ ( .J(n43), .K(n43), .TI(shifter_N15), .TE(
        shifter_N22), .CP(clk), .CD(n132), .Q(A[1]), .QN(n18) );
  GTECH_FJK2S shifter_temp_reg_7_ ( .J(n43), .K(n43), .TI(shifter_N13), .TE(
        shifter_N22), .CP(clk), .CD(n132), .Q(shifter_temp_7_) );
  GTECH_FJK2S shifter_temp_reg_6_ ( .J(n43), .K(n43), .TI(shifter_N12), .TE(
        shifter_N22), .CP(clk), .CD(n132), .Q(shifter_temp_6_) );
  GTECH_FJK2S shifter_temp_reg_5_ ( .J(n43), .K(n43), .TI(shifter_N11), .TE(
        shifter_N22), .CP(clk), .CD(n132), .Q(shifter_temp_5_) );
  GTECH_FJK2S shifter_temp_reg_4_ ( .J(n43), .K(n43), .TI(shifter_N10), .TE(
        shifter_N22), .CP(clk), .CD(n132), .Q(shifter_temp_4_) );
  GTECH_FJK2S shifter_temp_reg_3_ ( .J(n43), .K(n43), .TI(shifter_N9), .TE(
        shifter_N22), .CP(clk), .CD(n132), .Q(shifter_temp_3_) );
  GTECH_FJK2S shifter_temp_reg_2_ ( .J(n43), .K(n43), .TI(shifter_N8), .TE(
        shifter_N22), .CP(clk), .CD(n132), .Q(shifter_temp_2_) );
  GTECH_FJK2S shifter_temp_reg_1_ ( .J(n43), .K(n43), .TI(shifter_N7), .TE(
        shifter_N22), .CP(clk), .CD(n132), .Q(shifter_temp_1_) );
  GTECH_FJK2S shifter_temp_reg_0_ ( .J(n43), .K(n43), .TI(shifter_N6), .TE(
        shifter_N22), .CP(clk), .CD(n132), .Q(lsb), .QN(n137) );
  GTECH_FJK2S controller_out_cmd_reg ( .J(n43), .K(n43), .TI(controller_N92), 
        .TE(controller_N95), .CP(clk), .CD(n132), .Q(out_cmd) );
  GTECH_ZERO U157 ( .Z(n43) );
  GTECH_ONE U158 ( .Z(n127) );
  GTECH_OAI2N2 U159 ( .A(n172), .B(n173), .C(Q[3]), .D(n174), .Z(shifter_N9)
         );
  GTECH_OAI2N2 U160 ( .A(n172), .B(n175), .C(Q[2]), .D(n174), .Z(shifter_N8)
         );
  GTECH_OAI2N2 U161 ( .A(n172), .B(n176), .C(Q[1]), .D(n174), .Z(shifter_N7)
         );
  GTECH_OAI2N2 U162 ( .A(n172), .B(n177), .C(Q[0]), .D(n174), .Z(shifter_N6)
         );
  GTECH_NOT U163 ( .A(n178), .Z(shifter_N24) );
  GTECH_OR_NOT U164 ( .A(n179), .B(n178), .Z(shifter_N23) );
  GTECH_OR_NOT U165 ( .A(n136), .B(n135), .Z(n178) );
  GTECH_OR_NOT U166 ( .A(n174), .B(n172), .Z(shifter_N22) );
  GTECH_AND_NOT U167 ( .A(n179), .B(n180), .Z(shifter_N21) );
  GTECH_OA22 U168 ( .A(n12), .B(n181), .C(n182), .D(n183), .Z(n180) );
  GTECH_NOT U169 ( .A(n184), .Z(n181) );
  GTECH_NOT U170 ( .A(n185), .Z(n179) );
  GTECH_OAI22 U171 ( .A(n12), .B(n186), .C(n187), .D(n185), .Z(shifter_N20) );
  GTECH_OA21 U172 ( .A(n12), .B(n184), .C(n188), .Z(n187) );
  GTECH_MUX2 U173 ( .A(n189), .B(n190), .S(n182), .Z(n188) );
  GTECH_OR_NOT U174 ( .A(n183), .B(n12), .Z(n190) );
  GTECH_XOR2 U175 ( .A(n183), .B(n12), .Z(n189) );
  GTECH_NOT U176 ( .A(D[7]), .Z(n183) );
  GTECH_OR_NOT U177 ( .A(D[7]), .B(n182), .Z(n184) );
  GTECH_AOI2N2 U178 ( .A(n191), .B(n192), .C(n13), .D(n193), .Z(n182) );
  GTECH_NOT U179 ( .A(D[6]), .Z(n193) );
  GTECH_OR_NOT U180 ( .A(D[6]), .B(n13), .Z(n192) );
  GTECH_OAI22 U181 ( .A(n13), .B(n186), .C(n194), .D(n185), .Z(shifter_N19) );
  GTECH_XOR3 U182 ( .A(n13), .B(D[6]), .C(n191), .Z(n194) );
  GTECH_OAI2N2 U183 ( .A(n14), .B(n195), .C(n196), .D(n197), .Z(n191) );
  GTECH_OR_NOT U184 ( .A(D[5]), .B(n14), .Z(n197) );
  GTECH_NOT U185 ( .A(D[5]), .Z(n195) );
  GTECH_OAI22 U186 ( .A(n14), .B(n186), .C(n198), .D(n185), .Z(shifter_N18) );
  GTECH_XOR3 U187 ( .A(n14), .B(D[5]), .C(n196), .Z(n198) );
  GTECH_OAI2N2 U188 ( .A(n15), .B(n199), .C(n200), .D(n201), .Z(n196) );
  GTECH_OR_NOT U189 ( .A(D[4]), .B(n15), .Z(n201) );
  GTECH_NOT U190 ( .A(D[4]), .Z(n199) );
  GTECH_OAI22 U191 ( .A(n15), .B(n186), .C(n202), .D(n185), .Z(shifter_N17) );
  GTECH_XOR3 U192 ( .A(n15), .B(D[4]), .C(n200), .Z(n202) );
  GTECH_OAI2N2 U193 ( .A(n16), .B(n203), .C(n204), .D(n205), .Z(n200) );
  GTECH_OR_NOT U194 ( .A(D[3]), .B(n16), .Z(n205) );
  GTECH_NOT U195 ( .A(D[3]), .Z(n203) );
  GTECH_OAI22 U196 ( .A(n16), .B(n186), .C(n206), .D(n185), .Z(shifter_N16) );
  GTECH_XOR3 U197 ( .A(n16), .B(D[3]), .C(n204), .Z(n206) );
  GTECH_OAI2N2 U198 ( .A(n17), .B(n207), .C(n208), .D(n209), .Z(n204) );
  GTECH_OR_NOT U199 ( .A(D[2]), .B(n17), .Z(n209) );
  GTECH_NOT U200 ( .A(D[2]), .Z(n207) );
  GTECH_OAI22 U201 ( .A(n17), .B(n186), .C(n210), .D(n185), .Z(shifter_N15) );
  GTECH_XOR3 U202 ( .A(n17), .B(D[2]), .C(n208), .Z(n210) );
  GTECH_OAI21 U203 ( .A(n211), .B(n212), .C(n213), .Z(n208) );
  GTECH_OR_NOT U204 ( .A(n18), .B(D[1]), .Z(n213) );
  GTECH_AND_NOT U205 ( .A(n18), .B(D[1]), .Z(n211) );
  GTECH_OAI22 U206 ( .A(n18), .B(n186), .C(n185), .D(n214), .Z(shifter_N14) );
  GTECH_XNOR3 U207 ( .A(D[1]), .B(n212), .C(n18), .Z(n214) );
  GTECH_OR_NOT U208 ( .A(n11), .B(D[0]), .Z(n212) );
  GTECH_AO21 U209 ( .A(Q[7]), .B(n174), .C(n215), .Z(shifter_N13) );
  GTECH_OAI22 U210 ( .A(n185), .B(n216), .C(n11), .D(n186), .Z(n215) );
  GTECH_XOR2 U211 ( .A(D[0]), .B(n11), .Z(n216) );
  GTECH_OAI2N2 U212 ( .A(n172), .B(n217), .C(Q[6]), .D(n174), .Z(shifter_N12)
         );
  GTECH_OAI2N2 U213 ( .A(n172), .B(n218), .C(Q[5]), .D(n174), .Z(shifter_N11)
         );
  GTECH_OAI2N2 U214 ( .A(n172), .B(n219), .C(Q[4]), .D(n174), .Z(shifter_N10)
         );
  GTECH_NOT U215 ( .A(n135), .Z(n174) );
  GTECH_NOT U216 ( .A(n220), .Z(n172) );
  GTECH_OR_NOT U217 ( .A(n221), .B(n185), .Z(n220) );
  GTECH_NAND4 U218 ( .A(shifter_add_temp), .B(shift_cmd), .C(n136), .D(n135), 
        .Z(n185) );
  GTECH_NOT U219 ( .A(n186), .Z(n221) );
  GTECH_NAND4 U220 ( .A(shift_cmd), .B(n136), .C(n135), .D(n222), .Z(n186) );
  GTECH_NOT U221 ( .A(shifter_add_temp), .Z(n222) );
  GTECH_AND_NOT U222 ( .A(out_cmd), .B(n18), .Z(out[9]) );
  GTECH_AND_NOT U223 ( .A(out_cmd), .B(n11), .Z(out[8]) );
  GTECH_AND_NOT U224 ( .A(out_cmd), .B(n217), .Z(out[7]) );
  GTECH_NOT U225 ( .A(shifter_temp_7_), .Z(n217) );
  GTECH_AND_NOT U226 ( .A(out_cmd), .B(n218), .Z(out[6]) );
  GTECH_NOT U227 ( .A(shifter_temp_6_), .Z(n218) );
  GTECH_AND_NOT U228 ( .A(out_cmd), .B(n219), .Z(out[5]) );
  GTECH_NOT U229 ( .A(shifter_temp_5_), .Z(n219) );
  GTECH_AND_NOT U230 ( .A(out_cmd), .B(n173), .Z(out[4]) );
  GTECH_NOT U231 ( .A(shifter_temp_4_), .Z(n173) );
  GTECH_AND_NOT U232 ( .A(out_cmd), .B(n175), .Z(out[3]) );
  GTECH_NOT U233 ( .A(shifter_temp_3_), .Z(n175) );
  GTECH_AND_NOT U234 ( .A(out_cmd), .B(n176), .Z(out[2]) );
  GTECH_NOT U235 ( .A(shifter_temp_2_), .Z(n176) );
  GTECH_AND_NOT U236 ( .A(out_cmd), .B(n177), .Z(out[1]) );
  GTECH_NOT U237 ( .A(shifter_temp_1_), .Z(n177) );
  GTECH_AND_NOT U238 ( .A(out_cmd), .B(n12), .Z(out[15]) );
  GTECH_AND_NOT U239 ( .A(out_cmd), .B(n13), .Z(out[14]) );
  GTECH_AND_NOT U240 ( .A(out_cmd), .B(n14), .Z(out[13]) );
  GTECH_AND_NOT U241 ( .A(out_cmd), .B(n15), .Z(out[12]) );
  GTECH_AND_NOT U242 ( .A(out_cmd), .B(n16), .Z(out[11]) );
  GTECH_AND_NOT U243 ( .A(out_cmd), .B(n17), .Z(out[10]) );
  GTECH_AND_NOT U244 ( .A(out_cmd), .B(n137), .Z(out[0]) );
  GTECH_NOT U245 ( .A(rst), .Z(n132) );
  GTECH_AND_NOT U246 ( .A(controller_N98), .B(n223), .Z(controller_N97) );
  GTECH_OAI21 U247 ( .A(n224), .B(n225), .C(n226), .Z(controller_N96) );
  GTECH_OAI21 U248 ( .A(n227), .B(n228), .C(n229), .Z(controller_N94) );
  GTECH_OA21 U249 ( .A(n224), .B(n230), .C(n231), .Z(n229) );
  GTECH_OR_NOT U250 ( .A(n137), .B(n138), .Z(n230) );
  GTECH_AND3 U251 ( .A(n139), .B(n138), .C(n232), .Z(controller_N93) );
  GTECH_MUX2 U252 ( .A(n225), .B(n233), .S(n8), .Z(n232) );
  GTECH_NOT U253 ( .A(n129), .Z(n233) );
  GTECH_NOT U254 ( .A(n137), .Z(n225) );
  GTECH_AND4 U255 ( .A(n129), .B(n139), .C(n8), .D(n138), .Z(controller_N92)
         );
  GTECH_NOT U256 ( .A(n226), .Z(controller_N91) );
  GTECH_OR_NOT U257 ( .A(n138), .B(n234), .Z(n226) );
  GTECH_NOT U258 ( .A(n224), .Z(n234) );
  GTECH_OR_NOT U259 ( .A(n8), .B(n139), .Z(n224) );
  GTECH_NOT U260 ( .A(n231), .Z(controller_N90) );
  GTECH_NAND3 U261 ( .A(n8), .B(n235), .C(n139), .Z(n231) );
  GTECH_NOT U262 ( .A(n138), .Z(n235) );
  GTECH_OA21 U263 ( .A(n152), .B(n236), .C(n237), .Z(controller_N83) );
  GTECH_NOT U264 ( .A(n153), .Z(n237) );
  GTECH_AND_NOT U265 ( .A(n238), .B(n227), .Z(controller_N82) );
  GTECH_XOR2 U266 ( .A(n236), .B(n152), .Z(n238) );
  GTECH_OR_NOT U267 ( .A(n151), .B(n239), .Z(n236) );
  GTECH_NOT U268 ( .A(n240), .Z(n239) );
  GTECH_AND_NOT U269 ( .A(n241), .B(n227), .Z(controller_N81) );
  GTECH_XOR2 U270 ( .A(n240), .B(n151), .Z(n241) );
  GTECH_OR_NOT U271 ( .A(n150), .B(n242), .Z(n240) );
  GTECH_NOT U272 ( .A(n243), .Z(n242) );
  GTECH_AND_NOT U273 ( .A(n244), .B(n227), .Z(controller_N80) );
  GTECH_XOR2 U274 ( .A(n243), .B(n150), .Z(n244) );
  GTECH_OR_NOT U275 ( .A(n149), .B(n245), .Z(n243) );
  GTECH_NOT U276 ( .A(n246), .Z(n245) );
  GTECH_AND_NOT U277 ( .A(n247), .B(n227), .Z(controller_N79) );
  GTECH_XOR2 U278 ( .A(n246), .B(n149), .Z(n247) );
  GTECH_OR_NOT U279 ( .A(n148), .B(n248), .Z(n246) );
  GTECH_NOT U280 ( .A(n249), .Z(n248) );
  GTECH_AND_NOT U281 ( .A(n250), .B(n227), .Z(controller_N78) );
  GTECH_XOR2 U282 ( .A(n249), .B(n148), .Z(n250) );
  GTECH_OR_NOT U283 ( .A(n147), .B(n251), .Z(n249) );
  GTECH_NOT U284 ( .A(n252), .Z(n251) );
  GTECH_AND_NOT U285 ( .A(n253), .B(n227), .Z(controller_N77) );
  GTECH_XOR2 U286 ( .A(n252), .B(n147), .Z(n253) );
  GTECH_OR_NOT U287 ( .A(n146), .B(n254), .Z(n252) );
  GTECH_NOT U288 ( .A(n255), .Z(n254) );
  GTECH_AND_NOT U289 ( .A(n256), .B(n227), .Z(controller_N76) );
  GTECH_XOR2 U290 ( .A(n255), .B(n146), .Z(n256) );
  GTECH_OR_NOT U291 ( .A(n145), .B(n257), .Z(n255) );
  GTECH_NOT U292 ( .A(n258), .Z(n257) );
  GTECH_AND_NOT U293 ( .A(n259), .B(n227), .Z(controller_N75) );
  GTECH_XOR2 U294 ( .A(n258), .B(n145), .Z(n259) );
  GTECH_OR_NOT U295 ( .A(n144), .B(n260), .Z(n258) );
  GTECH_NOT U296 ( .A(n261), .Z(n260) );
  GTECH_AND_NOT U297 ( .A(n262), .B(n227), .Z(controller_N74) );
  GTECH_XOR2 U298 ( .A(n261), .B(n144), .Z(n262) );
  GTECH_OR_NOT U299 ( .A(n143), .B(n263), .Z(n261) );
  GTECH_NOT U300 ( .A(n264), .Z(n263) );
  GTECH_AND_NOT U301 ( .A(n265), .B(n227), .Z(controller_N73) );
  GTECH_XOR2 U302 ( .A(n264), .B(n143), .Z(n265) );
  GTECH_OR_NOT U303 ( .A(n142), .B(n266), .Z(n264) );
  GTECH_NOT U304 ( .A(n267), .Z(n266) );
  GTECH_AND_NOT U305 ( .A(n268), .B(n227), .Z(controller_N72) );
  GTECH_XOR2 U306 ( .A(n267), .B(n142), .Z(n268) );
  GTECH_OR_NOT U307 ( .A(n141), .B(n269), .Z(n267) );
  GTECH_NOT U308 ( .A(n270), .Z(n269) );
  GTECH_AND_NOT U309 ( .A(n271), .B(n227), .Z(controller_N71) );
  GTECH_XOR2 U310 ( .A(n270), .B(n141), .Z(n271) );
  GTECH_OR_NOT U311 ( .A(n140), .B(n272), .Z(n270) );
  GTECH_NOT U312 ( .A(n273), .Z(n272) );
  GTECH_AND_NOT U313 ( .A(n274), .B(n227), .Z(controller_N70) );
  GTECH_XOR2 U314 ( .A(n273), .B(n140), .Z(n274) );
  GTECH_OR_NOT U315 ( .A(n171), .B(n275), .Z(n273) );
  GTECH_NOT U316 ( .A(n276), .Z(n275) );
  GTECH_AND_NOT U317 ( .A(n277), .B(n227), .Z(controller_N69) );
  GTECH_XOR2 U318 ( .A(n276), .B(n171), .Z(n277) );
  GTECH_OR_NOT U319 ( .A(n170), .B(n278), .Z(n276) );
  GTECH_NOT U320 ( .A(n279), .Z(n278) );
  GTECH_AND_NOT U321 ( .A(n280), .B(n227), .Z(controller_N68) );
  GTECH_XOR2 U322 ( .A(n279), .B(n170), .Z(n280) );
  GTECH_OR_NOT U323 ( .A(n169), .B(n281), .Z(n279) );
  GTECH_NOT U324 ( .A(n282), .Z(n281) );
  GTECH_AND_NOT U325 ( .A(n283), .B(n227), .Z(controller_N67) );
  GTECH_XOR2 U326 ( .A(n282), .B(n169), .Z(n283) );
  GTECH_OR_NOT U327 ( .A(n168), .B(n284), .Z(n282) );
  GTECH_NOT U328 ( .A(n285), .Z(n284) );
  GTECH_AND_NOT U329 ( .A(n286), .B(n227), .Z(controller_N66) );
  GTECH_XOR2 U330 ( .A(n285), .B(n168), .Z(n286) );
  GTECH_OR_NOT U331 ( .A(n167), .B(n287), .Z(n285) );
  GTECH_NOT U332 ( .A(n288), .Z(n287) );
  GTECH_AND_NOT U333 ( .A(n289), .B(n227), .Z(controller_N65) );
  GTECH_XOR2 U334 ( .A(n288), .B(n167), .Z(n289) );
  GTECH_OR_NOT U335 ( .A(n166), .B(n290), .Z(n288) );
  GTECH_NOT U336 ( .A(n291), .Z(n290) );
  GTECH_AND_NOT U337 ( .A(n292), .B(n227), .Z(controller_N64) );
  GTECH_XOR2 U338 ( .A(n291), .B(n166), .Z(n292) );
  GTECH_OR_NOT U339 ( .A(n165), .B(n293), .Z(n291) );
  GTECH_NOT U340 ( .A(n294), .Z(n293) );
  GTECH_AND_NOT U341 ( .A(n295), .B(n227), .Z(controller_N63) );
  GTECH_XOR2 U342 ( .A(n294), .B(n165), .Z(n295) );
  GTECH_OR_NOT U343 ( .A(n164), .B(n296), .Z(n294) );
  GTECH_NOT U344 ( .A(n297), .Z(n296) );
  GTECH_AND_NOT U345 ( .A(n298), .B(n227), .Z(controller_N62) );
  GTECH_XOR2 U346 ( .A(n297), .B(n164), .Z(n298) );
  GTECH_OR_NOT U347 ( .A(n163), .B(n299), .Z(n297) );
  GTECH_NOT U348 ( .A(n300), .Z(n299) );
  GTECH_AND_NOT U349 ( .A(n301), .B(n227), .Z(controller_N61) );
  GTECH_XOR2 U350 ( .A(n300), .B(n163), .Z(n301) );
  GTECH_OR_NOT U351 ( .A(n162), .B(n302), .Z(n300) );
  GTECH_NOT U352 ( .A(n303), .Z(n302) );
  GTECH_AND_NOT U353 ( .A(n304), .B(n227), .Z(controller_N60) );
  GTECH_XOR2 U354 ( .A(n303), .B(n162), .Z(n304) );
  GTECH_OR_NOT U355 ( .A(n161), .B(n305), .Z(n303) );
  GTECH_NOT U356 ( .A(n306), .Z(n305) );
  GTECH_AND_NOT U357 ( .A(n307), .B(n227), .Z(controller_N59) );
  GTECH_XOR2 U358 ( .A(n306), .B(n161), .Z(n307) );
  GTECH_OR_NOT U359 ( .A(n160), .B(n308), .Z(n306) );
  GTECH_NOT U360 ( .A(n309), .Z(n308) );
  GTECH_AND_NOT U361 ( .A(n310), .B(n227), .Z(controller_N58) );
  GTECH_XOR2 U362 ( .A(n309), .B(n160), .Z(n310) );
  GTECH_OR_NOT U363 ( .A(n159), .B(n311), .Z(n309) );
  GTECH_NOT U364 ( .A(n312), .Z(n311) );
  GTECH_AND_NOT U365 ( .A(n313), .B(n227), .Z(controller_N57) );
  GTECH_XOR2 U366 ( .A(n312), .B(n159), .Z(n313) );
  GTECH_OR_NOT U367 ( .A(n158), .B(n314), .Z(n312) );
  GTECH_NOT U368 ( .A(n315), .Z(n314) );
  GTECH_AND_NOT U369 ( .A(n316), .B(n227), .Z(controller_N56) );
  GTECH_XOR2 U370 ( .A(n315), .B(n158), .Z(n316) );
  GTECH_OR_NOT U371 ( .A(n157), .B(n317), .Z(n315) );
  GTECH_NOT U372 ( .A(n318), .Z(n317) );
  GTECH_AND_NOT U373 ( .A(n319), .B(n227), .Z(controller_N55) );
  GTECH_XOR2 U374 ( .A(n318), .B(n157), .Z(n319) );
  GTECH_NAND3 U375 ( .A(n320), .B(n321), .C(n322), .Z(n318) );
  GTECH_NOT U376 ( .A(n156), .Z(n321) );
  GTECH_OAI22 U377 ( .A(n156), .B(n323), .C(n227), .D(n324), .Z(controller_N54) );
  GTECH_MUX2 U378 ( .A(n320), .B(n325), .S(n156), .Z(n324) );
  GTECH_OR_NOT U379 ( .A(n155), .B(n322), .Z(n325) );
  GTECH_NOT U380 ( .A(n154), .Z(n322) );
  GTECH_NOT U381 ( .A(n155), .Z(n320) );
  GTECH_MUX2 U382 ( .A(controller_N52), .B(n326), .S(n155), .Z(controller_N53)
         );
  GTECH_AND_NOT U383 ( .A(n223), .B(n154), .Z(n326) );
  GTECH_NOT U384 ( .A(n323), .Z(controller_N52) );
  GTECH_OR_NOT U385 ( .A(n227), .B(n154), .Z(n323) );
  GTECH_NOT U386 ( .A(n223), .Z(n227) );
  GTECH_OAI21 U387 ( .A(n327), .B(n328), .C(n153), .Z(n223) );
  GTECH_NAND8 U388 ( .A(n170), .B(n169), .C(n171), .D(n329), .E(n163), .F(n162), .G(n164), .H(n330), .Z(n328) );
  GTECH_AND4 U389 ( .A(n161), .B(n160), .C(n159), .D(n158), .Z(n330) );
  GTECH_AND4 U390 ( .A(n168), .B(n167), .C(n166), .D(n165), .Z(n329) );
  GTECH_NAND8 U391 ( .A(n152), .B(n151), .C(n157), .D(n331), .E(n145), .F(n144), .G(n146), .H(n332), .Z(n327) );
  GTECH_AND4 U392 ( .A(n143), .B(n142), .C(n141), .D(n140), .Z(n332) );
  GTECH_AND4 U393 ( .A(n150), .B(n149), .C(n148), .D(n147), .Z(n331) );
  GTECH_AND_NOT U394 ( .A(controller_N95), .B(rst), .Z(controller_N102) );
  GTECH_OR_NOT U395 ( .A(controller_N98), .B(n333), .Z(controller_N95) );
  GTECH_NOT U396 ( .A(n228), .Z(controller_N98) );
  GTECH_NAND3 U397 ( .A(n138), .B(n333), .C(n8), .Z(n228) );
  GTECH_NOT U398 ( .A(n139), .Z(n333) );
endmodule

