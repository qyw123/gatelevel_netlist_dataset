
module shift_add_multiplier ( clk, rst, D, Q, out );
  input [7:0] D;
  input [7:0] Q;
  output [15:0] out;
  input clk, rst;
  wire   load_cmd, add_cmd, out_cmd, shifter_N24, shifter_N23, shifter_N22,
         shifter_N21, shifter_N20, shifter_N19, shifter_N18, shifter_N17,
         shifter_N16, shifter_N15, shifter_N14, shifter_N13, shifter_N12,
         shifter_N11, shifter_N10, shifter_N9, shifter_N8, shifter_N7,
         shifter_N6, shifter_add_temp, shifter_temp_1_, shifter_temp_2_,
         shifter_temp_3_, shifter_temp_4_, shifter_temp_5_, shifter_temp_6_,
         shifter_temp_7_, controller_N102, controller_N98, controller_N97,
         controller_N96, controller_N95, controller_N94, controller_N93,
         controller_N92, controller_N91, controller_N90, controller_N83,
         controller_N82, controller_N81, controller_N80, controller_N79,
         controller_N78, controller_N77, controller_N76, controller_N75,
         controller_N74, controller_N73, controller_N72, controller_N71,
         controller_N70, controller_N69, controller_N68, controller_N67,
         controller_N66, controller_N65, controller_N64, controller_N63,
         controller_N62, controller_N61, controller_N60, controller_N59,
         controller_N58, controller_N57, controller_N56, controller_N55,
         controller_N54, controller_N53, controller_N52, controller_count_0_,
         controller_count_1_, controller_count_2_, controller_count_3_,
         controller_count_4_, controller_count_5_, controller_count_6_,
         controller_count_7_, controller_count_8_, controller_count_9_,
         controller_count_10_, controller_count_11_, controller_count_12_,
         controller_count_13_, controller_count_14_, controller_count_15_,
         controller_count_16_, controller_count_17_, controller_count_18_,
         controller_count_19_, controller_count_20_, controller_count_21_,
         controller_count_22_, controller_count_23_, controller_count_24_,
         controller_count_25_, controller_count_26_, controller_count_27_,
         controller_count_28_, controller_count_29_, controller_count_30_,
         controller_count_31_, controller_state_0_, controller_state_1_,
         controller_state_2_, controller_start, n8, n14, n15, n17, n18, n19,
         n20, n21, n22, n23, n24, n128, n130, n133, n44, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
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
         n316, n317, n318;
  wire   [7:0] A;

  GTECH_FJK2S controller_count_reg_31_ ( .J(n44), .K(n44), .TI(controller_N83), 
        .TE(controller_N98), .CP(clk), .CD(n133), .Q(controller_count_31_), 
        .QN(n152) );
  GTECH_FJK2S controller_count_reg_30_ ( .J(n44), .K(n44), .TI(controller_N82), 
        .TE(controller_N98), .CP(clk), .CD(n133), .Q(controller_count_30_), 
        .QN(n151) );
  GTECH_FJK3 controller_start_reg ( .J(n44), .K(controller_N97), .CP(clk), 
        .CD(n128), .SD(n133), .Q(controller_start), .QN(n130) );
  GTECH_FJK2S controller_state_reg_0_ ( .J(n44), .K(n44), .TI(controller_N93), 
        .TE(controller_N95), .CP(clk), .CD(n133), .Q(controller_state_0_), 
        .QN(n138) );
  GTECH_FJK2S controller_state_reg_1_ ( .J(n44), .K(n44), .TI(controller_N94), 
        .TE(controller_N95), .CP(clk), .CD(n133), .Q(controller_state_1_), 
        .QN(n139) );
  GTECH_FJK1S controller_load_cmd_reg ( .J(n44), .K(n44), .TI(controller_N90), 
        .TE(controller_N102), .CP(clk), .Q(load_cmd), .QN(n8) );
  GTECH_FJK2S shifter_temp_reg_3_ ( .J(n44), .K(n44), .TI(shifter_N9), .TE(
        shifter_N22), .CP(clk), .CD(n133), .Q(shifter_temp_3_) );
  GTECH_FJK2S shifter_temp_reg_2_ ( .J(n44), .K(n44), .TI(shifter_N8), .TE(
        shifter_N22), .CP(clk), .CD(n133), .Q(shifter_temp_2_) );
  GTECH_FJK2S shifter_temp_reg_1_ ( .J(n44), .K(n44), .TI(shifter_N7), .TE(
        shifter_N22), .CP(clk), .CD(n133), .Q(shifter_temp_1_) );
  GTECH_FJK2S shifter_temp_reg_0_ ( .J(n44), .K(n44), .TI(shifter_N6), .TE(
        shifter_N22), .CP(clk), .CD(n133), .QN(n137) );
  GTECH_FJK2S controller_state_reg_2_ ( .J(n44), .K(n44), .TI(controller_N96), 
        .TE(controller_N95), .CP(clk), .CD(n133), .Q(controller_state_2_), 
        .QN(n140) );
  GTECH_FJK2S controller_count_reg_29_ ( .J(n44), .K(n44), .TI(controller_N81), 
        .TE(controller_N98), .CP(clk), .CD(n133), .Q(controller_count_29_), 
        .QN(n150) );
  GTECH_FJK2S controller_count_reg_28_ ( .J(n44), .K(n44), .TI(controller_N80), 
        .TE(controller_N98), .CP(clk), .CD(n133), .Q(controller_count_28_), 
        .QN(n149) );
  GTECH_FJK2S controller_count_reg_27_ ( .J(n44), .K(n44), .TI(controller_N79), 
        .TE(controller_N98), .CP(clk), .CD(n133), .Q(controller_count_27_), 
        .QN(n148) );
  GTECH_FJK2S controller_count_reg_26_ ( .J(n44), .K(n44), .TI(controller_N78), 
        .TE(controller_N98), .CP(clk), .CD(n133), .Q(controller_count_26_), 
        .QN(n147) );
  GTECH_FJK2S controller_count_reg_25_ ( .J(n44), .K(n44), .TI(controller_N77), 
        .TE(controller_N98), .CP(clk), .CD(n133), .Q(controller_count_25_), 
        .QN(n146) );
  GTECH_FJK2S controller_count_reg_24_ ( .J(n44), .K(n44), .TI(controller_N76), 
        .TE(controller_N98), .CP(clk), .CD(n133), .Q(controller_count_24_), 
        .QN(n145) );
  GTECH_FJK2S controller_count_reg_23_ ( .J(n44), .K(n44), .TI(controller_N75), 
        .TE(controller_N98), .CP(clk), .CD(n133), .Q(controller_count_23_), 
        .QN(n144) );
  GTECH_FJK2S controller_count_reg_22_ ( .J(n44), .K(n44), .TI(controller_N74), 
        .TE(controller_N98), .CP(clk), .CD(n133), .Q(controller_count_22_), 
        .QN(n143) );
  GTECH_FJK2S controller_count_reg_21_ ( .J(n44), .K(n44), .TI(controller_N73), 
        .TE(controller_N98), .CP(clk), .CD(n133), .Q(controller_count_21_), 
        .QN(n142) );
  GTECH_FJK2S controller_count_reg_20_ ( .J(n44), .K(n44), .TI(controller_N72), 
        .TE(controller_N98), .CP(clk), .CD(n133), .Q(controller_count_20_), 
        .QN(n141) );
  GTECH_FJK2S controller_count_reg_19_ ( .J(n44), .K(n44), .TI(controller_N71), 
        .TE(controller_N98), .CP(clk), .CD(n133), .Q(controller_count_19_), 
        .QN(n172) );
  GTECH_FJK2S controller_count_reg_18_ ( .J(n44), .K(n44), .TI(controller_N70), 
        .TE(controller_N98), .CP(clk), .CD(n133), .Q(controller_count_18_), 
        .QN(n171) );
  GTECH_FJK2S controller_count_reg_17_ ( .J(n44), .K(n44), .TI(controller_N69), 
        .TE(controller_N98), .CP(clk), .CD(n133), .Q(controller_count_17_), 
        .QN(n170) );
  GTECH_FJK2S controller_count_reg_16_ ( .J(n44), .K(n44), .TI(controller_N68), 
        .TE(controller_N98), .CP(clk), .CD(n133), .Q(controller_count_16_), 
        .QN(n169) );
  GTECH_FJK2S controller_count_reg_15_ ( .J(n44), .K(n44), .TI(controller_N67), 
        .TE(controller_N98), .CP(clk), .CD(n133), .Q(controller_count_15_), 
        .QN(n168) );
  GTECH_FJK2S controller_count_reg_14_ ( .J(n44), .K(n44), .TI(controller_N66), 
        .TE(controller_N98), .CP(clk), .CD(n133), .Q(controller_count_14_), 
        .QN(n167) );
  GTECH_FJK2S controller_count_reg_13_ ( .J(n44), .K(n44), .TI(controller_N65), 
        .TE(controller_N98), .CP(clk), .CD(n133), .Q(controller_count_13_), 
        .QN(n166) );
  GTECH_FJK2S controller_count_reg_12_ ( .J(n44), .K(n44), .TI(controller_N64), 
        .TE(controller_N98), .CP(clk), .CD(n133), .Q(controller_count_12_), 
        .QN(n165) );
  GTECH_FJK2S controller_count_reg_11_ ( .J(n44), .K(n44), .TI(controller_N63), 
        .TE(controller_N98), .CP(clk), .CD(n133), .Q(controller_count_11_), 
        .QN(n164) );
  GTECH_FJK2S controller_count_reg_10_ ( .J(n44), .K(n44), .TI(controller_N62), 
        .TE(controller_N98), .CP(clk), .CD(n133), .Q(controller_count_10_), 
        .QN(n163) );
  GTECH_FJK2S controller_count_reg_9_ ( .J(n44), .K(n44), .TI(controller_N61), 
        .TE(controller_N98), .CP(clk), .CD(n133), .Q(controller_count_9_), 
        .QN(n162) );
  GTECH_FJK2S controller_count_reg_8_ ( .J(n44), .K(n44), .TI(controller_N60), 
        .TE(controller_N98), .CP(clk), .CD(n133), .Q(controller_count_8_), 
        .QN(n161) );
  GTECH_FJK2S controller_count_reg_7_ ( .J(n44), .K(n44), .TI(controller_N59), 
        .TE(controller_N98), .CP(clk), .CD(n133), .Q(controller_count_7_), 
        .QN(n160) );
  GTECH_FJK2S controller_count_reg_6_ ( .J(n44), .K(n44), .TI(controller_N58), 
        .TE(controller_N98), .CP(clk), .CD(n133), .Q(controller_count_6_), 
        .QN(n159) );
  GTECH_FJK2S controller_count_reg_5_ ( .J(n44), .K(n44), .TI(controller_N57), 
        .TE(controller_N98), .CP(clk), .CD(n133), .Q(controller_count_5_), 
        .QN(n158) );
  GTECH_FJK2S controller_count_reg_4_ ( .J(n44), .K(n44), .TI(controller_N56), 
        .TE(controller_N98), .CP(clk), .CD(n133), .Q(controller_count_4_), 
        .QN(n157) );
  GTECH_FJK2S controller_count_reg_3_ ( .J(n44), .K(n44), .TI(controller_N55), 
        .TE(controller_N98), .CP(clk), .CD(n133), .Q(controller_count_3_), 
        .QN(n156) );
  GTECH_FJK2S controller_count_reg_2_ ( .J(n44), .K(n44), .TI(controller_N54), 
        .TE(controller_N98), .CP(clk), .CD(n133), .Q(controller_count_2_), 
        .QN(n155) );
  GTECH_FJK2S controller_count_reg_1_ ( .J(n44), .K(n44), .TI(controller_N53), 
        .TE(controller_N98), .CP(clk), .CD(n133), .Q(controller_count_1_), 
        .QN(n154) );
  GTECH_FJK2S controller_count_reg_0_ ( .J(n44), .K(n44), .TI(controller_N52), 
        .TE(controller_N98), .CP(clk), .CD(n133), .Q(controller_count_0_), 
        .QN(n153) );
  GTECH_FJK2S controller_out_cmd_reg ( .J(n44), .K(n44), .TI(controller_N92), 
        .TE(controller_N95), .CP(clk), .CD(n133), .Q(out_cmd) );
  GTECH_FJK1S controller_shift_cmd_reg ( .J(n44), .K(n44), .TI(controller_N98), 
        .TE(controller_N102), .CP(clk), .Q(n14) );
  GTECH_FJK1S controller_add_cmd_reg ( .J(n44), .K(n44), .TI(controller_N91), 
        .TE(controller_N102), .CP(clk), .Q(add_cmd), .QN(n15) );
  GTECH_FJK2S shifter_add_temp_reg ( .J(n44), .K(n44), .TI(shifter_N24), .TE(
        shifter_N23), .CP(clk), .CD(n133), .Q(shifter_add_temp) );
  GTECH_FJK2S shifter_temp_reg_8_ ( .J(n44), .K(n44), .TI(shifter_N14), .TE(
        shifter_N22), .CP(clk), .CD(n133), .Q(A[0]), .QN(n17) );
  GTECH_FJK2S shifter_temp_reg_15_ ( .J(n44), .K(n44), .TI(shifter_N21), .TE(
        shifter_N22), .CP(clk), .CD(n133), .Q(A[7]), .QN(n18) );
  GTECH_FJK2S shifter_temp_reg_14_ ( .J(n44), .K(n44), .TI(shifter_N20), .TE(
        shifter_N22), .CP(clk), .CD(n133), .Q(A[6]), .QN(n19) );
  GTECH_FJK2S shifter_temp_reg_13_ ( .J(n44), .K(n44), .TI(shifter_N19), .TE(
        shifter_N22), .CP(clk), .CD(n133), .Q(A[5]), .QN(n20) );
  GTECH_FJK2S shifter_temp_reg_12_ ( .J(n44), .K(n44), .TI(shifter_N18), .TE(
        shifter_N22), .CP(clk), .CD(n133), .Q(A[4]), .QN(n21) );
  GTECH_FJK2S shifter_temp_reg_11_ ( .J(n44), .K(n44), .TI(shifter_N17), .TE(
        shifter_N22), .CP(clk), .CD(n133), .Q(A[3]), .QN(n22) );
  GTECH_FJK2S shifter_temp_reg_10_ ( .J(n44), .K(n44), .TI(shifter_N16), .TE(
        shifter_N22), .CP(clk), .CD(n133), .Q(A[2]), .QN(n23) );
  GTECH_FJK2S shifter_temp_reg_9_ ( .J(n44), .K(n44), .TI(shifter_N15), .TE(
        shifter_N22), .CP(clk), .CD(n133), .Q(A[1]), .QN(n24) );
  GTECH_FJK2S shifter_temp_reg_7_ ( .J(n44), .K(n44), .TI(shifter_N13), .TE(
        shifter_N22), .CP(clk), .CD(n133), .Q(shifter_temp_7_) );
  GTECH_FJK2S shifter_temp_reg_6_ ( .J(n44), .K(n44), .TI(shifter_N12), .TE(
        shifter_N22), .CP(clk), .CD(n133), .Q(shifter_temp_6_) );
  GTECH_FJK2S shifter_temp_reg_5_ ( .J(n44), .K(n44), .TI(shifter_N11), .TE(
        shifter_N22), .CP(clk), .CD(n133), .Q(shifter_temp_5_) );
  GTECH_FJK2S shifter_temp_reg_4_ ( .J(n44), .K(n44), .TI(shifter_N10), .TE(
        shifter_N22), .CP(clk), .CD(n133), .Q(shifter_temp_4_) );
  GTECH_ZERO U156 ( .Z(n44) );
  GTECH_ONE U157 ( .Z(n128) );
  GTECH_OAI2N2 U158 ( .A(n173), .B(n174), .C(Q[3]), .D(n175), .Z(shifter_N9)
         );
  GTECH_NOT U159 ( .A(shifter_temp_4_), .Z(n174) );
  GTECH_OAI2N2 U160 ( .A(n173), .B(n176), .C(Q[2]), .D(n175), .Z(shifter_N8)
         );
  GTECH_NOT U161 ( .A(shifter_temp_3_), .Z(n176) );
  GTECH_OAI2N2 U162 ( .A(n173), .B(n177), .C(Q[1]), .D(n175), .Z(shifter_N7)
         );
  GTECH_NOT U163 ( .A(shifter_temp_2_), .Z(n177) );
  GTECH_OAI2N2 U164 ( .A(n173), .B(n178), .C(Q[0]), .D(n175), .Z(shifter_N6)
         );
  GTECH_NOT U165 ( .A(shifter_temp_1_), .Z(n178) );
  GTECH_OR2 U166 ( .A(n179), .B(shifter_N24), .Z(shifter_N23) );
  GTECH_NOT U167 ( .A(n180), .Z(shifter_N24) );
  GTECH_OR2 U168 ( .A(n15), .B(n175), .Z(n180) );
  GTECH_OR2 U169 ( .A(n175), .B(n181), .Z(shifter_N22) );
  GTECH_AND2 U170 ( .A(n179), .B(n182), .Z(shifter_N21) );
  GTECH_OAI22 U171 ( .A(n183), .B(n184), .C(n18), .D(n185), .Z(n182) );
  GTECH_NOT U172 ( .A(n186), .Z(n185) );
  GTECH_OAI22 U173 ( .A(n18), .B(n187), .C(n188), .D(n189), .Z(shifter_N20) );
  GTECH_OA21 U174 ( .A(n18), .B(n186), .C(n190), .Z(n188) );
  GTECH_MUX2 U175 ( .A(n191), .B(n192), .S(n183), .Z(n190) );
  GTECH_NOT U176 ( .A(n193), .Z(n183) );
  GTECH_OR2 U177 ( .A(n184), .B(n194), .Z(n192) );
  GTECH_XOR2 U178 ( .A(n184), .B(n18), .Z(n191) );
  GTECH_NOT U179 ( .A(D[7]), .Z(n184) );
  GTECH_OR2 U180 ( .A(D[7]), .B(n193), .Z(n186) );
  GTECH_OAI21 U181 ( .A(n19), .B(n195), .C(n196), .Z(n193) );
  GTECH_OAI21 U182 ( .A(D[6]), .B(n197), .C(n198), .Z(n196) );
  GTECH_NOT U183 ( .A(D[6]), .Z(n195) );
  GTECH_OAI22 U184 ( .A(n19), .B(n187), .C(n199), .D(n189), .Z(shifter_N19) );
  GTECH_XOR3 U185 ( .A(n19), .B(D[6]), .C(n198), .Z(n199) );
  GTECH_OAI21 U186 ( .A(n20), .B(n200), .C(n201), .Z(n198) );
  GTECH_OAI21 U187 ( .A(D[5]), .B(n202), .C(n203), .Z(n201) );
  GTECH_NOT U188 ( .A(D[5]), .Z(n200) );
  GTECH_OAI22 U189 ( .A(n20), .B(n187), .C(n204), .D(n189), .Z(shifter_N18) );
  GTECH_XOR3 U190 ( .A(n20), .B(D[5]), .C(n203), .Z(n204) );
  GTECH_OAI21 U191 ( .A(n21), .B(n205), .C(n206), .Z(n203) );
  GTECH_OAI21 U192 ( .A(D[4]), .B(n207), .C(n208), .Z(n206) );
  GTECH_NOT U193 ( .A(D[4]), .Z(n205) );
  GTECH_OAI22 U194 ( .A(n21), .B(n187), .C(n209), .D(n189), .Z(shifter_N17) );
  GTECH_XOR3 U195 ( .A(n21), .B(D[4]), .C(n208), .Z(n209) );
  GTECH_OAI21 U196 ( .A(n22), .B(n210), .C(n211), .Z(n208) );
  GTECH_OAI21 U197 ( .A(D[3]), .B(n212), .C(n213), .Z(n211) );
  GTECH_NOT U198 ( .A(D[3]), .Z(n210) );
  GTECH_OAI22 U199 ( .A(n22), .B(n187), .C(n214), .D(n189), .Z(shifter_N16) );
  GTECH_XOR3 U200 ( .A(n22), .B(D[3]), .C(n213), .Z(n214) );
  GTECH_OAI21 U201 ( .A(n23), .B(n215), .C(n216), .Z(n213) );
  GTECH_OAI21 U202 ( .A(D[2]), .B(n217), .C(n218), .Z(n216) );
  GTECH_NOT U203 ( .A(D[2]), .Z(n215) );
  GTECH_OAI22 U204 ( .A(n23), .B(n187), .C(n219), .D(n189), .Z(shifter_N15) );
  GTECH_XOR3 U205 ( .A(n23), .B(D[2]), .C(n218), .Z(n219) );
  GTECH_OAI21 U206 ( .A(n24), .B(n220), .C(n221), .Z(n218) );
  GTECH_OAI21 U207 ( .A(D[1]), .B(n222), .C(n223), .Z(n221) );
  GTECH_NOT U208 ( .A(D[1]), .Z(n220) );
  GTECH_OAI22 U209 ( .A(n24), .B(n187), .C(n189), .D(n224), .Z(shifter_N14) );
  GTECH_XOR3 U210 ( .A(n24), .B(D[1]), .C(n223), .Z(n224) );
  GTECH_NOT U211 ( .A(n225), .Z(n223) );
  GTECH_OR2 U212 ( .A(n17), .B(n226), .Z(n225) );
  GTECH_NOT U213 ( .A(n227), .Z(shifter_N13) );
  GTECH_AOI222 U214 ( .A(Q[7]), .B(n175), .C(n228), .D(n179), .E(n229), .F(
        n230), .Z(n227) );
  GTECH_XOR2 U215 ( .A(n226), .B(n17), .Z(n228) );
  GTECH_NOT U216 ( .A(D[0]), .Z(n226) );
  GTECH_OAI2N2 U217 ( .A(n173), .B(n231), .C(Q[6]), .D(n175), .Z(shifter_N12)
         );
  GTECH_NOT U218 ( .A(shifter_temp_7_), .Z(n231) );
  GTECH_OAI2N2 U219 ( .A(n173), .B(n232), .C(Q[5]), .D(n175), .Z(shifter_N11)
         );
  GTECH_NOT U220 ( .A(shifter_temp_6_), .Z(n232) );
  GTECH_OAI2N2 U221 ( .A(n173), .B(n233), .C(Q[4]), .D(n175), .Z(shifter_N10)
         );
  GTECH_NOT U222 ( .A(n8), .Z(n175) );
  GTECH_NOT U223 ( .A(shifter_temp_5_), .Z(n233) );
  GTECH_NOT U224 ( .A(n181), .Z(n173) );
  GTECH_OR2 U225 ( .A(n179), .B(n229), .Z(n181) );
  GTECH_NOT U226 ( .A(n187), .Z(n229) );
  GTECH_NAND4 U227 ( .A(n8), .B(n15), .C(n14), .D(n234), .Z(n187) );
  GTECH_NOT U228 ( .A(shifter_add_temp), .Z(n234) );
  GTECH_NOT U229 ( .A(n189), .Z(n179) );
  GTECH_NAND4 U230 ( .A(shifter_add_temp), .B(n8), .C(n15), .D(n14), .Z(n189)
         );
  GTECH_AND2 U231 ( .A(out_cmd), .B(n222), .Z(out[9]) );
  GTECH_NOT U232 ( .A(n24), .Z(n222) );
  GTECH_AND2 U233 ( .A(out_cmd), .B(n230), .Z(out[8]) );
  GTECH_NOT U234 ( .A(n17), .Z(n230) );
  GTECH_AND2 U235 ( .A(out_cmd), .B(shifter_temp_7_), .Z(out[7]) );
  GTECH_AND2 U236 ( .A(out_cmd), .B(shifter_temp_6_), .Z(out[6]) );
  GTECH_AND2 U237 ( .A(out_cmd), .B(shifter_temp_5_), .Z(out[5]) );
  GTECH_AND2 U238 ( .A(out_cmd), .B(shifter_temp_4_), .Z(out[4]) );
  GTECH_AND2 U239 ( .A(out_cmd), .B(shifter_temp_3_), .Z(out[3]) );
  GTECH_AND2 U240 ( .A(out_cmd), .B(shifter_temp_2_), .Z(out[2]) );
  GTECH_AND2 U241 ( .A(out_cmd), .B(shifter_temp_1_), .Z(out[1]) );
  GTECH_AND2 U242 ( .A(out_cmd), .B(n194), .Z(out[15]) );
  GTECH_NOT U243 ( .A(n18), .Z(n194) );
  GTECH_AND2 U244 ( .A(out_cmd), .B(n197), .Z(out[14]) );
  GTECH_NOT U245 ( .A(n19), .Z(n197) );
  GTECH_AND2 U246 ( .A(out_cmd), .B(n202), .Z(out[13]) );
  GTECH_NOT U247 ( .A(n20), .Z(n202) );
  GTECH_AND2 U248 ( .A(out_cmd), .B(n207), .Z(out[12]) );
  GTECH_NOT U249 ( .A(n21), .Z(n207) );
  GTECH_AND2 U250 ( .A(out_cmd), .B(n212), .Z(out[11]) );
  GTECH_NOT U251 ( .A(n22), .Z(n212) );
  GTECH_AND2 U252 ( .A(out_cmd), .B(n217), .Z(out[10]) );
  GTECH_NOT U253 ( .A(n23), .Z(n217) );
  GTECH_AND2 U254 ( .A(out_cmd), .B(n235), .Z(out[0]) );
  GTECH_AND2 U255 ( .A(controller_N98), .B(n236), .Z(controller_N97) );
  GTECH_OAI21 U256 ( .A(n237), .B(n235), .C(n238), .Z(controller_N96) );
  GTECH_OAI21 U257 ( .A(n236), .B(n239), .C(n240), .Z(controller_N94) );
  GTECH_AND2 U258 ( .A(n241), .B(n242), .Z(n240) );
  GTECH_NAND3 U259 ( .A(n138), .B(n235), .C(n243), .Z(n241) );
  GTECH_NOT U260 ( .A(n237), .Z(n243) );
  GTECH_AND3 U261 ( .A(n140), .B(n138), .C(n244), .Z(controller_N93) );
  GTECH_MUX2 U262 ( .A(n235), .B(n245), .S(n139), .Z(n244) );
  GTECH_NOT U263 ( .A(n130), .Z(n245) );
  GTECH_NOT U264 ( .A(n137), .Z(n235) );
  GTECH_AND4 U265 ( .A(n130), .B(n140), .C(n139), .D(n138), .Z(controller_N92)
         );
  GTECH_NOT U266 ( .A(n238), .Z(controller_N91) );
  GTECH_OR2 U267 ( .A(n138), .B(n237), .Z(n238) );
  GTECH_OR2 U268 ( .A(n139), .B(n246), .Z(n237) );
  GTECH_NOT U269 ( .A(n242), .Z(controller_N90) );
  GTECH_NAND3 U270 ( .A(n139), .B(n247), .C(n140), .Z(n242) );
  GTECH_NOT U271 ( .A(n138), .Z(n247) );
  GTECH_OA21 U272 ( .A(n151), .B(n248), .C(n249), .Z(controller_N83) );
  GTECH_NOT U273 ( .A(n152), .Z(n249) );
  GTECH_AND2 U274 ( .A(n250), .B(n251), .Z(controller_N82) );
  GTECH_XOR2 U275 ( .A(n248), .B(n151), .Z(n250) );
  GTECH_OR2 U276 ( .A(n150), .B(n252), .Z(n248) );
  GTECH_AND2 U277 ( .A(n253), .B(n251), .Z(controller_N81) );
  GTECH_XOR2 U278 ( .A(n252), .B(n150), .Z(n253) );
  GTECH_OR2 U279 ( .A(n149), .B(n254), .Z(n252) );
  GTECH_AND2 U280 ( .A(n255), .B(n251), .Z(controller_N80) );
  GTECH_XOR2 U281 ( .A(n254), .B(n149), .Z(n255) );
  GTECH_OR2 U282 ( .A(n148), .B(n256), .Z(n254) );
  GTECH_AND2 U283 ( .A(n257), .B(n251), .Z(controller_N79) );
  GTECH_XOR2 U284 ( .A(n256), .B(n148), .Z(n257) );
  GTECH_OR2 U285 ( .A(n147), .B(n258), .Z(n256) );
  GTECH_AND2 U286 ( .A(n259), .B(n251), .Z(controller_N78) );
  GTECH_XOR2 U287 ( .A(n258), .B(n147), .Z(n259) );
  GTECH_OR2 U288 ( .A(n146), .B(n260), .Z(n258) );
  GTECH_AND2 U289 ( .A(n261), .B(n251), .Z(controller_N77) );
  GTECH_XOR2 U290 ( .A(n260), .B(n146), .Z(n261) );
  GTECH_OR2 U291 ( .A(n145), .B(n262), .Z(n260) );
  GTECH_AND2 U292 ( .A(n263), .B(n251), .Z(controller_N76) );
  GTECH_XOR2 U293 ( .A(n262), .B(n145), .Z(n263) );
  GTECH_OR2 U294 ( .A(n144), .B(n264), .Z(n262) );
  GTECH_AND2 U295 ( .A(n265), .B(n251), .Z(controller_N75) );
  GTECH_XOR2 U296 ( .A(n264), .B(n144), .Z(n265) );
  GTECH_OR2 U297 ( .A(n143), .B(n266), .Z(n264) );
  GTECH_AND2 U298 ( .A(n267), .B(n251), .Z(controller_N74) );
  GTECH_XOR2 U299 ( .A(n266), .B(n143), .Z(n267) );
  GTECH_OR2 U300 ( .A(n142), .B(n268), .Z(n266) );
  GTECH_AND2 U301 ( .A(n269), .B(n251), .Z(controller_N73) );
  GTECH_XOR2 U302 ( .A(n268), .B(n142), .Z(n269) );
  GTECH_OR2 U303 ( .A(n141), .B(n270), .Z(n268) );
  GTECH_AND2 U304 ( .A(n271), .B(n251), .Z(controller_N72) );
  GTECH_XOR2 U305 ( .A(n270), .B(n141), .Z(n271) );
  GTECH_OR2 U306 ( .A(n172), .B(n272), .Z(n270) );
  GTECH_AND2 U307 ( .A(n273), .B(n251), .Z(controller_N71) );
  GTECH_XOR2 U308 ( .A(n272), .B(n172), .Z(n273) );
  GTECH_OR2 U309 ( .A(n171), .B(n274), .Z(n272) );
  GTECH_AND2 U310 ( .A(n275), .B(n251), .Z(controller_N70) );
  GTECH_XOR2 U311 ( .A(n274), .B(n171), .Z(n275) );
  GTECH_OR2 U312 ( .A(n170), .B(n276), .Z(n274) );
  GTECH_AND2 U313 ( .A(n277), .B(n251), .Z(controller_N69) );
  GTECH_XOR2 U314 ( .A(n276), .B(n170), .Z(n277) );
  GTECH_OR2 U315 ( .A(n169), .B(n278), .Z(n276) );
  GTECH_AND2 U316 ( .A(n279), .B(n251), .Z(controller_N68) );
  GTECH_XOR2 U317 ( .A(n278), .B(n169), .Z(n279) );
  GTECH_OR2 U318 ( .A(n168), .B(n280), .Z(n278) );
  GTECH_AND2 U319 ( .A(n281), .B(n251), .Z(controller_N67) );
  GTECH_XOR2 U320 ( .A(n280), .B(n168), .Z(n281) );
  GTECH_OR2 U321 ( .A(n167), .B(n282), .Z(n280) );
  GTECH_AND2 U322 ( .A(n283), .B(n251), .Z(controller_N66) );
  GTECH_XOR2 U323 ( .A(n282), .B(n167), .Z(n283) );
  GTECH_OR2 U324 ( .A(n166), .B(n284), .Z(n282) );
  GTECH_AND2 U325 ( .A(n285), .B(n251), .Z(controller_N65) );
  GTECH_XOR2 U326 ( .A(n284), .B(n166), .Z(n285) );
  GTECH_OR2 U327 ( .A(n165), .B(n286), .Z(n284) );
  GTECH_AND2 U328 ( .A(n287), .B(n251), .Z(controller_N64) );
  GTECH_XOR2 U329 ( .A(n286), .B(n165), .Z(n287) );
  GTECH_OR2 U330 ( .A(n164), .B(n288), .Z(n286) );
  GTECH_AND2 U331 ( .A(n289), .B(n251), .Z(controller_N63) );
  GTECH_XOR2 U332 ( .A(n288), .B(n164), .Z(n289) );
  GTECH_OR2 U333 ( .A(n163), .B(n290), .Z(n288) );
  GTECH_AND2 U334 ( .A(n291), .B(n251), .Z(controller_N62) );
  GTECH_XOR2 U335 ( .A(n290), .B(n163), .Z(n291) );
  GTECH_OR2 U336 ( .A(n162), .B(n292), .Z(n290) );
  GTECH_AND2 U337 ( .A(n293), .B(n251), .Z(controller_N61) );
  GTECH_XOR2 U338 ( .A(n292), .B(n162), .Z(n293) );
  GTECH_OR2 U339 ( .A(n161), .B(n294), .Z(n292) );
  GTECH_AND2 U340 ( .A(n295), .B(n251), .Z(controller_N60) );
  GTECH_XOR2 U341 ( .A(n294), .B(n161), .Z(n295) );
  GTECH_OR2 U342 ( .A(n160), .B(n296), .Z(n294) );
  GTECH_AND2 U343 ( .A(n297), .B(n251), .Z(controller_N59) );
  GTECH_XOR2 U344 ( .A(n296), .B(n160), .Z(n297) );
  GTECH_OR2 U345 ( .A(n159), .B(n298), .Z(n296) );
  GTECH_AND2 U346 ( .A(n299), .B(n251), .Z(controller_N58) );
  GTECH_XOR2 U347 ( .A(n298), .B(n159), .Z(n299) );
  GTECH_OR2 U348 ( .A(n158), .B(n300), .Z(n298) );
  GTECH_AND2 U349 ( .A(n301), .B(n251), .Z(controller_N57) );
  GTECH_XOR2 U350 ( .A(n300), .B(n158), .Z(n301) );
  GTECH_OR2 U351 ( .A(n157), .B(n302), .Z(n300) );
  GTECH_AND2 U352 ( .A(n303), .B(n251), .Z(controller_N56) );
  GTECH_XOR2 U353 ( .A(n302), .B(n157), .Z(n303) );
  GTECH_OR2 U354 ( .A(n156), .B(n304), .Z(n302) );
  GTECH_AND2 U355 ( .A(n305), .B(n251), .Z(controller_N55) );
  GTECH_XOR2 U356 ( .A(n304), .B(n156), .Z(n305) );
  GTECH_NAND3 U357 ( .A(n306), .B(n307), .C(n308), .Z(n304) );
  GTECH_NOT U358 ( .A(n155), .Z(n307) );
  GTECH_OAI22 U359 ( .A(n155), .B(n309), .C(n236), .D(n310), .Z(controller_N54) );
  GTECH_MUX2 U360 ( .A(n306), .B(n311), .S(n155), .Z(n310) );
  GTECH_OR2 U361 ( .A(n154), .B(n153), .Z(n311) );
  GTECH_NOT U362 ( .A(n154), .Z(n306) );
  GTECH_MUX2 U363 ( .A(controller_N52), .B(n312), .S(n154), .Z(controller_N53)
         );
  GTECH_AND2 U364 ( .A(n251), .B(n308), .Z(n312) );
  GTECH_NOT U365 ( .A(n309), .Z(controller_N52) );
  GTECH_OR2 U366 ( .A(n236), .B(n308), .Z(n309) );
  GTECH_NOT U367 ( .A(n153), .Z(n308) );
  GTECH_NOT U368 ( .A(n251), .Z(n236) );
  GTECH_OAI21 U369 ( .A(n313), .B(n314), .C(n152), .Z(n251) );
  GTECH_NAND8 U370 ( .A(n171), .B(n170), .C(n172), .D(n315), .E(n164), .F(n163), .G(n165), .H(n316), .Z(n314) );
  GTECH_AND4 U371 ( .A(n162), .B(n161), .C(n160), .D(n159), .Z(n316) );
  GTECH_AND4 U372 ( .A(n169), .B(n168), .C(n167), .D(n166), .Z(n315) );
  GTECH_NAND8 U373 ( .A(n157), .B(n156), .C(n158), .D(n317), .E(n146), .F(n145), .G(n147), .H(n318), .Z(n313) );
  GTECH_AND4 U374 ( .A(n144), .B(n143), .C(n142), .D(n141), .Z(n318) );
  GTECH_AND4 U375 ( .A(n151), .B(n150), .C(n149), .D(n148), .Z(n317) );
  GTECH_AND2 U376 ( .A(controller_N95), .B(n133), .Z(controller_N102) );
  GTECH_NOT U377 ( .A(rst), .Z(n133) );
  GTECH_OR2 U378 ( .A(controller_N98), .B(n140), .Z(controller_N95) );
  GTECH_NOT U379 ( .A(n239), .Z(controller_N98) );
  GTECH_NAND3 U380 ( .A(n138), .B(n246), .C(n139), .Z(n239) );
  GTECH_NOT U381 ( .A(n140), .Z(n246) );
endmodule

