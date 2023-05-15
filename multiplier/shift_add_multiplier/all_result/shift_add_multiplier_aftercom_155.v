
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
         n10, n33, n57, n60, n63, n66, n69, n72, n75, n78, n90, n93, n96, n99,
         n102, n105, n108, n111, n114, n117, n120, n123, n126, n129, n132,
         n135, n138, n141, n144, n147, n150, n153, n156, n159, n162, n165,
         n168, n171, n174, n177, n180, n183, n186, n189, n192, n193, n31, n32,
         n196, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
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
         n373, n374, n375, n376, n377, n378, n379, n380, n381, n382, n383,
         n384, n385, n386, n387, n388, n389, n390, n391, n392, n393, n394,
         n395, n396, n397;
  wire   [7:0] A;

  GTECH_FJK3S controller_count_reg_31_ ( .J(n32), .K(n32), .TI(controller_N83), 
        .TE(controller_N98), .CP(clk), .CD(n193), .SD(n31), .Q(
        controller_count_31_), .QN(n196) );
  GTECH_FJK3S controller_count_reg_30_ ( .J(n32), .K(n32), .TI(controller_N82), 
        .TE(controller_N98), .CP(clk), .CD(n193), .SD(n31), .Q(
        controller_count_30_), .QN(n192) );
  GTECH_FJK3 controller_start_reg ( .J(n32), .K(controller_N97), .CP(clk), 
        .CD(n31), .SD(n193), .Q(controller_start), .QN(n189) );
  GTECH_FJK3S controller_state_reg_0_ ( .J(n32), .K(n32), .TI(controller_N93), 
        .TE(controller_N95), .CP(clk), .CD(n193), .SD(n31), .Q(
        controller_state_0_), .QN(n186) );
  GTECH_FJK3S controller_state_reg_1_ ( .J(n32), .K(n32), .TI(controller_N94), 
        .TE(controller_N95), .CP(clk), .CD(n193), .SD(n31), .Q(
        controller_state_1_), .QN(n183) );
  GTECH_FJK3S controller_state_reg_2_ ( .J(n32), .K(n32), .TI(controller_N96), 
        .TE(controller_N95), .CP(clk), .CD(n193), .SD(n31), .Q(
        controller_state_2_), .QN(n180) );
  GTECH_FJK3S controller_count_reg_29_ ( .J(n32), .K(n32), .TI(controller_N81), 
        .TE(controller_N98), .CP(clk), .CD(n193), .SD(n31), .Q(
        controller_count_29_), .QN(n177) );
  GTECH_FJK3S controller_count_reg_28_ ( .J(n32), .K(n32), .TI(controller_N80), 
        .TE(controller_N98), .CP(clk), .CD(n193), .SD(n31), .Q(
        controller_count_28_), .QN(n174) );
  GTECH_FJK3S controller_count_reg_27_ ( .J(n32), .K(n32), .TI(controller_N79), 
        .TE(controller_N98), .CP(clk), .CD(n193), .SD(n31), .Q(
        controller_count_27_), .QN(n171) );
  GTECH_FJK3S controller_count_reg_26_ ( .J(n32), .K(n32), .TI(controller_N78), 
        .TE(controller_N98), .CP(clk), .CD(n193), .SD(n31), .Q(
        controller_count_26_), .QN(n168) );
  GTECH_FJK3S controller_count_reg_25_ ( .J(n32), .K(n32), .TI(controller_N77), 
        .TE(controller_N98), .CP(clk), .CD(n193), .SD(n31), .Q(
        controller_count_25_), .QN(n165) );
  GTECH_FJK3S controller_count_reg_24_ ( .J(n32), .K(n32), .TI(controller_N76), 
        .TE(controller_N98), .CP(clk), .CD(n193), .SD(n31), .Q(
        controller_count_24_), .QN(n162) );
  GTECH_FJK3S controller_count_reg_23_ ( .J(n32), .K(n32), .TI(controller_N75), 
        .TE(controller_N98), .CP(clk), .CD(n193), .SD(n31), .Q(
        controller_count_23_), .QN(n159) );
  GTECH_FJK3S controller_count_reg_22_ ( .J(n32), .K(n32), .TI(controller_N74), 
        .TE(controller_N98), .CP(clk), .CD(n193), .SD(n31), .Q(
        controller_count_22_), .QN(n156) );
  GTECH_FJK3S controller_count_reg_21_ ( .J(n32), .K(n32), .TI(controller_N73), 
        .TE(controller_N98), .CP(clk), .CD(n193), .SD(n31), .Q(
        controller_count_21_), .QN(n153) );
  GTECH_FJK3S controller_count_reg_20_ ( .J(n32), .K(n32), .TI(controller_N72), 
        .TE(controller_N98), .CP(clk), .CD(n193), .SD(n31), .Q(
        controller_count_20_), .QN(n150) );
  GTECH_FJK3S controller_count_reg_19_ ( .J(n32), .K(n32), .TI(controller_N71), 
        .TE(controller_N98), .CP(clk), .CD(n193), .SD(n31), .Q(
        controller_count_19_), .QN(n147) );
  GTECH_FJK3S controller_count_reg_18_ ( .J(n32), .K(n32), .TI(controller_N70), 
        .TE(controller_N98), .CP(clk), .CD(n193), .SD(n31), .Q(
        controller_count_18_), .QN(n144) );
  GTECH_FJK3S controller_count_reg_17_ ( .J(n32), .K(n32), .TI(controller_N69), 
        .TE(controller_N98), .CP(clk), .CD(n193), .SD(n31), .Q(
        controller_count_17_), .QN(n141) );
  GTECH_FJK3S controller_count_reg_16_ ( .J(n32), .K(n32), .TI(controller_N68), 
        .TE(controller_N98), .CP(clk), .CD(n193), .SD(n31), .Q(
        controller_count_16_), .QN(n138) );
  GTECH_FJK3S controller_count_reg_15_ ( .J(n32), .K(n32), .TI(controller_N67), 
        .TE(controller_N98), .CP(clk), .CD(n193), .SD(n31), .Q(
        controller_count_15_), .QN(n135) );
  GTECH_FJK3S controller_count_reg_14_ ( .J(n32), .K(n32), .TI(controller_N66), 
        .TE(controller_N98), .CP(clk), .CD(n193), .SD(n31), .Q(
        controller_count_14_), .QN(n132) );
  GTECH_FJK3S controller_count_reg_13_ ( .J(n32), .K(n32), .TI(controller_N65), 
        .TE(controller_N98), .CP(clk), .CD(n193), .SD(n31), .Q(
        controller_count_13_), .QN(n129) );
  GTECH_FJK3S controller_count_reg_12_ ( .J(n32), .K(n32), .TI(controller_N64), 
        .TE(controller_N98), .CP(clk), .CD(n193), .SD(n31), .Q(
        controller_count_12_), .QN(n126) );
  GTECH_FJK3S controller_count_reg_11_ ( .J(n32), .K(n32), .TI(controller_N63), 
        .TE(controller_N98), .CP(clk), .CD(n193), .SD(n31), .Q(
        controller_count_11_), .QN(n123) );
  GTECH_FJK3S controller_count_reg_10_ ( .J(n32), .K(n32), .TI(controller_N62), 
        .TE(controller_N98), .CP(clk), .CD(n193), .SD(n31), .Q(
        controller_count_10_), .QN(n120) );
  GTECH_FJK3S controller_count_reg_9_ ( .J(n32), .K(n32), .TI(controller_N61), 
        .TE(controller_N98), .CP(clk), .CD(n193), .SD(n31), .Q(
        controller_count_9_), .QN(n117) );
  GTECH_FJK3S controller_count_reg_8_ ( .J(n32), .K(n32), .TI(controller_N60), 
        .TE(controller_N98), .CP(clk), .CD(n193), .SD(n31), .Q(
        controller_count_8_), .QN(n114) );
  GTECH_FJK3S controller_count_reg_7_ ( .J(n32), .K(n32), .TI(controller_N59), 
        .TE(controller_N98), .CP(clk), .CD(n193), .SD(n31), .Q(
        controller_count_7_), .QN(n111) );
  GTECH_FJK3S controller_count_reg_6_ ( .J(n32), .K(n32), .TI(controller_N58), 
        .TE(controller_N98), .CP(clk), .CD(n193), .SD(n31), .Q(
        controller_count_6_), .QN(n108) );
  GTECH_FJK3S controller_count_reg_5_ ( .J(n32), .K(n32), .TI(controller_N57), 
        .TE(controller_N98), .CP(clk), .CD(n193), .SD(n31), .Q(
        controller_count_5_), .QN(n105) );
  GTECH_FJK3S controller_count_reg_4_ ( .J(n32), .K(n32), .TI(controller_N56), 
        .TE(controller_N98), .CP(clk), .CD(n193), .SD(n31), .Q(
        controller_count_4_), .QN(n102) );
  GTECH_FJK3S controller_count_reg_3_ ( .J(n32), .K(n32), .TI(controller_N55), 
        .TE(controller_N98), .CP(clk), .CD(n193), .SD(n31), .Q(
        controller_count_3_), .QN(n99) );
  GTECH_FJK3S controller_count_reg_2_ ( .J(n32), .K(n32), .TI(controller_N54), 
        .TE(controller_N98), .CP(clk), .CD(n193), .SD(n31), .Q(
        controller_count_2_), .QN(n96) );
  GTECH_FJK3S controller_count_reg_1_ ( .J(n32), .K(n32), .TI(controller_N53), 
        .TE(controller_N98), .CP(clk), .CD(n193), .SD(n31), .Q(
        controller_count_1_), .QN(n93) );
  GTECH_FJK3S controller_count_reg_0_ ( .J(n32), .K(n32), .TI(controller_N52), 
        .TE(controller_N98), .CP(clk), .CD(n193), .SD(n31), .Q(
        controller_count_0_), .QN(n90) );
  GTECH_FJK1S controller_shift_cmd_reg ( .J(n32), .K(n32), .TI(controller_N98), 
        .TE(controller_N102), .CP(clk), .Q(n8) );
  GTECH_FJK1S controller_add_cmd_reg ( .J(n32), .K(n32), .TI(controller_N91), 
        .TE(controller_N102), .CP(clk), .Q(add_cmd), .QN(n9) );
  GTECH_FJK3S controller_out_cmd_reg ( .J(n32), .K(n32), .TI(controller_N92), 
        .TE(controller_N95), .CP(clk), .CD(n193), .SD(n31), .Q(out_cmd) );
  GTECH_FJK1S controller_load_cmd_reg ( .J(n32), .K(n32), .TI(controller_N90), 
        .TE(controller_N102), .CP(clk), .Q(load_cmd), .QN(n10) );
  GTECH_FJK3S shifter_add_temp_reg ( .J(n32), .K(n32), .TI(shifter_N24), .TE(
        shifter_N23), .CP(clk), .CD(n193), .SD(n31), .Q(shifter_add_temp) );
  GTECH_FJK3S shifter_temp_reg_8_ ( .J(n32), .K(n32), .TI(shifter_N14), .TE(
        shifter_N22), .CP(clk), .CD(n193), .SD(n31), .Q(A[0]), .QN(n78) );
  GTECH_FJK3S shifter_temp_reg_15_ ( .J(n32), .K(n32), .TI(shifter_N21), .TE(
        shifter_N22), .CP(clk), .CD(n193), .SD(n31), .Q(A[7]), .QN(n75) );
  GTECH_FJK3S shifter_temp_reg_14_ ( .J(n32), .K(n32), .TI(shifter_N20), .TE(
        shifter_N22), .CP(clk), .CD(n193), .SD(n31), .Q(A[6]), .QN(n72) );
  GTECH_FJK3S shifter_temp_reg_13_ ( .J(n32), .K(n32), .TI(shifter_N19), .TE(
        shifter_N22), .CP(clk), .CD(n193), .SD(n31), .Q(A[5]), .QN(n69) );
  GTECH_FJK3S shifter_temp_reg_12_ ( .J(n32), .K(n32), .TI(shifter_N18), .TE(
        shifter_N22), .CP(clk), .CD(n193), .SD(n31), .Q(A[4]), .QN(n66) );
  GTECH_FJK3S shifter_temp_reg_11_ ( .J(n32), .K(n32), .TI(shifter_N17), .TE(
        shifter_N22), .CP(clk), .CD(n193), .SD(n31), .Q(A[3]), .QN(n63) );
  GTECH_FJK3S shifter_temp_reg_10_ ( .J(n32), .K(n32), .TI(shifter_N16), .TE(
        shifter_N22), .CP(clk), .CD(n193), .SD(n31), .Q(A[2]), .QN(n60) );
  GTECH_FJK3S shifter_temp_reg_9_ ( .J(n32), .K(n32), .TI(shifter_N15), .TE(
        shifter_N22), .CP(clk), .CD(n193), .SD(n31), .Q(A[1]), .QN(n57) );
  GTECH_FJK3S shifter_temp_reg_7_ ( .J(n32), .K(n32), .TI(shifter_N13), .TE(
        shifter_N22), .CP(clk), .CD(n193), .SD(n31), .Q(shifter_temp_7_) );
  GTECH_FJK3S shifter_temp_reg_6_ ( .J(n32), .K(n32), .TI(shifter_N12), .TE(
        shifter_N22), .CP(clk), .CD(n193), .SD(n31), .Q(shifter_temp_6_) );
  GTECH_FJK3S shifter_temp_reg_5_ ( .J(n32), .K(n32), .TI(shifter_N11), .TE(
        shifter_N22), .CP(clk), .CD(n193), .SD(n31), .Q(shifter_temp_5_) );
  GTECH_FJK3S shifter_temp_reg_4_ ( .J(n32), .K(n32), .TI(shifter_N10), .TE(
        shifter_N22), .CP(clk), .CD(n193), .SD(n31), .Q(shifter_temp_4_) );
  GTECH_FJK3S shifter_temp_reg_3_ ( .J(n32), .K(n32), .TI(shifter_N9), .TE(
        shifter_N22), .CP(clk), .CD(n193), .SD(n31), .Q(shifter_temp_3_) );
  GTECH_FJK3S shifter_temp_reg_2_ ( .J(n32), .K(n32), .TI(shifter_N8), .TE(
        shifter_N22), .CP(clk), .CD(n193), .SD(n31), .Q(shifter_temp_2_) );
  GTECH_FJK3S shifter_temp_reg_1_ ( .J(n32), .K(n32), .TI(shifter_N7), .TE(
        shifter_N22), .CP(clk), .CD(n193), .SD(n31), .Q(shifter_temp_1_) );
  GTECH_FJK3S shifter_temp_reg_0_ ( .J(n32), .K(n32), .TI(shifter_N6), .TE(
        shifter_N22), .CP(clk), .CD(n193), .SD(n31), .Q(lsb), .QN(n33) );
  GTECH_ZERO U214 ( .Z(n32) );
  GTECH_ONE U215 ( .Z(n31) );
  GTECH_OAI2N2 U216 ( .A(n198), .B(n199), .C(Q[3]), .D(n200), .Z(shifter_N9)
         );
  GTECH_NOT U217 ( .A(shifter_temp_4_), .Z(n199) );
  GTECH_OAI2N2 U218 ( .A(n198), .B(n201), .C(Q[2]), .D(n200), .Z(shifter_N8)
         );
  GTECH_NOT U219 ( .A(shifter_temp_3_), .Z(n201) );
  GTECH_OAI2N2 U220 ( .A(n198), .B(n202), .C(Q[1]), .D(n200), .Z(shifter_N7)
         );
  GTECH_NOT U221 ( .A(shifter_temp_2_), .Z(n202) );
  GTECH_OAI2N2 U222 ( .A(n198), .B(n203), .C(Q[0]), .D(n200), .Z(shifter_N6)
         );
  GTECH_NOT U223 ( .A(shifter_temp_1_), .Z(n203) );
  GTECH_NOT U224 ( .A(n204), .Z(shifter_N24) );
  GTECH_NAND2 U225 ( .A(n204), .B(n205), .Z(shifter_N23) );
  GTECH_NAND2 U226 ( .A(n10), .B(n206), .Z(n204) );
  GTECH_NOT U227 ( .A(n9), .Z(n206) );
  GTECH_NAND2 U228 ( .A(n198), .B(n10), .Z(shifter_N22) );
  GTECH_AND2 U229 ( .A(n207), .B(n208), .Z(shifter_N21) );
  GTECH_OAI22 U230 ( .A(n209), .B(n210), .C(n75), .D(n211), .Z(n208) );
  GTECH_NOT U231 ( .A(n212), .Z(n211) );
  GTECH_NOT U232 ( .A(n205), .Z(n207) );
  GTECH_OAI22 U233 ( .A(n75), .B(n213), .C(n214), .D(n205), .Z(shifter_N20) );
  GTECH_OA21 U234 ( .A(n75), .B(n212), .C(n215), .Z(n214) );
  GTECH_MUX2 U235 ( .A(n216), .B(n217), .S(n209), .Z(n215) );
  GTECH_NAND2 U236 ( .A(n75), .B(D[7]), .Z(n217) );
  GTECH_XOR2 U237 ( .A(n210), .B(n75), .Z(n216) );
  GTECH_NAND2 U238 ( .A(n209), .B(n210), .Z(n212) );
  GTECH_NOT U239 ( .A(D[7]), .Z(n210) );
  GTECH_AND2 U240 ( .A(n218), .B(n219), .Z(n209) );
  GTECH_OR_NOT U241 ( .A(n72), .B(D[6]), .Z(n219) );
  GTECH_OAI21 U242 ( .A(D[6]), .B(n220), .C(n221), .Z(n218) );
  GTECH_OAI22 U243 ( .A(n72), .B(n213), .C(n222), .D(n205), .Z(shifter_N19) );
  GTECH_XOR3 U244 ( .A(n72), .B(D[6]), .C(n221), .Z(n222) );
  GTECH_OAI21 U245 ( .A(n69), .B(n223), .C(n224), .Z(n221) );
  GTECH_OAI21 U246 ( .A(D[5]), .B(n225), .C(n226), .Z(n224) );
  GTECH_NOT U247 ( .A(D[5]), .Z(n223) );
  GTECH_OAI22 U248 ( .A(n69), .B(n213), .C(n227), .D(n205), .Z(shifter_N18) );
  GTECH_XOR3 U249 ( .A(n69), .B(D[5]), .C(n226), .Z(n227) );
  GTECH_OAI21 U250 ( .A(n66), .B(n228), .C(n229), .Z(n226) );
  GTECH_OAI21 U251 ( .A(D[4]), .B(n230), .C(n231), .Z(n229) );
  GTECH_NOT U252 ( .A(D[4]), .Z(n228) );
  GTECH_OAI22 U253 ( .A(n66), .B(n213), .C(n232), .D(n205), .Z(shifter_N17) );
  GTECH_XOR3 U254 ( .A(n66), .B(D[4]), .C(n231), .Z(n232) );
  GTECH_OAI21 U255 ( .A(n63), .B(n233), .C(n234), .Z(n231) );
  GTECH_OAI21 U256 ( .A(D[3]), .B(n235), .C(n236), .Z(n234) );
  GTECH_NOT U257 ( .A(D[3]), .Z(n233) );
  GTECH_OAI22 U258 ( .A(n63), .B(n213), .C(n237), .D(n205), .Z(shifter_N16) );
  GTECH_XOR3 U259 ( .A(n63), .B(D[3]), .C(n236), .Z(n237) );
  GTECH_OAI21 U260 ( .A(n60), .B(n238), .C(n239), .Z(n236) );
  GTECH_OAI21 U261 ( .A(D[2]), .B(n240), .C(n241), .Z(n239) );
  GTECH_NOT U262 ( .A(D[2]), .Z(n238) );
  GTECH_OAI22 U263 ( .A(n60), .B(n213), .C(n242), .D(n205), .Z(shifter_N15) );
  GTECH_XOR3 U264 ( .A(n60), .B(D[2]), .C(n241), .Z(n242) );
  GTECH_OAI21 U265 ( .A(n57), .B(n243), .C(n244), .Z(n241) );
  GTECH_OAI21 U266 ( .A(D[1]), .B(n245), .C(n246), .Z(n244) );
  GTECH_NOT U267 ( .A(D[1]), .Z(n243) );
  GTECH_OAI22 U268 ( .A(n57), .B(n213), .C(n205), .D(n247), .Z(shifter_N14) );
  GTECH_XOR3 U269 ( .A(n57), .B(D[1]), .C(n246), .Z(n247) );
  GTECH_NOT U270 ( .A(n248), .Z(n246) );
  GTECH_NAND2 U271 ( .A(D[0]), .B(n249), .Z(n248) );
  GTECH_AO21 U272 ( .A(Q[7]), .B(n200), .C(n250), .Z(shifter_N13) );
  GTECH_OAI22 U273 ( .A(n205), .B(n251), .C(n78), .D(n213), .Z(n250) );
  GTECH_XOR2 U274 ( .A(D[0]), .B(n78), .Z(n251) );
  GTECH_OAI2N2 U275 ( .A(n198), .B(n252), .C(Q[6]), .D(n200), .Z(shifter_N12)
         );
  GTECH_NOT U276 ( .A(shifter_temp_7_), .Z(n252) );
  GTECH_OAI2N2 U277 ( .A(n198), .B(n253), .C(Q[5]), .D(n200), .Z(shifter_N11)
         );
  GTECH_NOT U278 ( .A(shifter_temp_6_), .Z(n253) );
  GTECH_OAI2N2 U279 ( .A(n198), .B(n254), .C(Q[4]), .D(n200), .Z(shifter_N10)
         );
  GTECH_NOT U280 ( .A(n10), .Z(n200) );
  GTECH_NOT U281 ( .A(shifter_temp_5_), .Z(n254) );
  GTECH_NOT U282 ( .A(n255), .Z(n198) );
  GTECH_NAND2 U283 ( .A(n205), .B(n213), .Z(n255) );
  GTECH_NAND4 U284 ( .A(n9), .B(n8), .C(n10), .D(n256), .Z(n213) );
  GTECH_NOT U285 ( .A(shifter_add_temp), .Z(n256) );
  GTECH_NAND4 U286 ( .A(shifter_add_temp), .B(n9), .C(n8), .D(n10), .Z(n205)
         );
  GTECH_AND2 U287 ( .A(out_cmd), .B(n245), .Z(out[9]) );
  GTECH_NOT U288 ( .A(n57), .Z(n245) );
  GTECH_AND2 U289 ( .A(out_cmd), .B(n249), .Z(out[8]) );
  GTECH_NOT U290 ( .A(n78), .Z(n249) );
  GTECH_AND2 U291 ( .A(out_cmd), .B(shifter_temp_7_), .Z(out[7]) );
  GTECH_AND2 U292 ( .A(out_cmd), .B(shifter_temp_6_), .Z(out[6]) );
  GTECH_AND2 U293 ( .A(out_cmd), .B(shifter_temp_5_), .Z(out[5]) );
  GTECH_AND2 U294 ( .A(out_cmd), .B(shifter_temp_4_), .Z(out[4]) );
  GTECH_AND2 U295 ( .A(out_cmd), .B(shifter_temp_3_), .Z(out[3]) );
  GTECH_AND2 U296 ( .A(out_cmd), .B(shifter_temp_2_), .Z(out[2]) );
  GTECH_AND2 U297 ( .A(out_cmd), .B(shifter_temp_1_), .Z(out[1]) );
  GTECH_AND2 U298 ( .A(out_cmd), .B(n257), .Z(out[15]) );
  GTECH_NOT U299 ( .A(n75), .Z(n257) );
  GTECH_AND2 U300 ( .A(out_cmd), .B(n220), .Z(out[14]) );
  GTECH_NOT U301 ( .A(n72), .Z(n220) );
  GTECH_AND2 U302 ( .A(out_cmd), .B(n225), .Z(out[13]) );
  GTECH_NOT U303 ( .A(n69), .Z(n225) );
  GTECH_AND2 U304 ( .A(out_cmd), .B(n230), .Z(out[12]) );
  GTECH_NOT U305 ( .A(n66), .Z(n230) );
  GTECH_AND2 U306 ( .A(out_cmd), .B(n235), .Z(out[11]) );
  GTECH_NOT U307 ( .A(n63), .Z(n235) );
  GTECH_AND2 U308 ( .A(out_cmd), .B(n240), .Z(out[10]) );
  GTECH_NOT U309 ( .A(n60), .Z(n240) );
  GTECH_AND2 U310 ( .A(out_cmd), .B(n258), .Z(out[0]) );
  GTECH_AND2 U311 ( .A(controller_N98), .B(n259), .Z(controller_N97) );
  GTECH_NOT U312 ( .A(n260), .Z(controller_N98) );
  GTECH_NAND2 U313 ( .A(n261), .B(n262), .Z(controller_N96) );
  GTECH_NAND3 U314 ( .A(n180), .B(n263), .C(n33), .Z(n262) );
  GTECH_OAI21 U315 ( .A(n259), .B(n260), .C(n264), .Z(controller_N94) );
  GTECH_AND2 U316 ( .A(n265), .B(n266), .Z(n264) );
  GTECH_NAND3 U317 ( .A(n263), .B(n258), .C(n267), .Z(n265) );
  GTECH_AND2 U318 ( .A(n268), .B(n267), .Z(controller_N93) );
  GTECH_NOT U319 ( .A(n269), .Z(n267) );
  GTECH_MUX2 U320 ( .A(n258), .B(n270), .S(n183), .Z(n268) );
  GTECH_NOT U321 ( .A(n33), .Z(n258) );
  GTECH_NOR3 U322 ( .A(n270), .B(n263), .C(n269), .Z(controller_N92) );
  GTECH_NAND2 U323 ( .A(n180), .B(n186), .Z(n269) );
  GTECH_NOT U324 ( .A(n189), .Z(n270) );
  GTECH_NOT U325 ( .A(n261), .Z(controller_N91) );
  GTECH_NAND3 U326 ( .A(n263), .B(n271), .C(n180), .Z(n261) );
  GTECH_NOT U327 ( .A(n183), .Z(n263) );
  GTECH_NOT U328 ( .A(n266), .Z(controller_N90) );
  GTECH_NAND3 U329 ( .A(n183), .B(n271), .C(n180), .Z(n266) );
  GTECH_NOT U330 ( .A(n186), .Z(n271) );
  GTECH_OA21 U331 ( .A(n192), .B(n272), .C(n273), .Z(controller_N83) );
  GTECH_NOT U332 ( .A(n196), .Z(n273) );
  GTECH_AND2 U333 ( .A(n274), .B(n275), .Z(controller_N82) );
  GTECH_XOR2 U334 ( .A(n272), .B(n192), .Z(n274) );
  GTECH_NAND2 U335 ( .A(n276), .B(n277), .Z(n272) );
  GTECH_NOT U336 ( .A(n177), .Z(n277) );
  GTECH_NOT U337 ( .A(n278), .Z(n276) );
  GTECH_AND2 U338 ( .A(n279), .B(n275), .Z(controller_N81) );
  GTECH_XOR2 U339 ( .A(n278), .B(n177), .Z(n279) );
  GTECH_NAND2 U340 ( .A(n280), .B(n281), .Z(n278) );
  GTECH_NOT U341 ( .A(n174), .Z(n281) );
  GTECH_NOT U342 ( .A(n282), .Z(n280) );
  GTECH_AND2 U343 ( .A(n283), .B(n275), .Z(controller_N80) );
  GTECH_XOR2 U344 ( .A(n282), .B(n174), .Z(n283) );
  GTECH_NAND2 U345 ( .A(n284), .B(n285), .Z(n282) );
  GTECH_NOT U346 ( .A(n171), .Z(n285) );
  GTECH_NOT U347 ( .A(n286), .Z(n284) );
  GTECH_AND2 U348 ( .A(n287), .B(n275), .Z(controller_N79) );
  GTECH_XOR2 U349 ( .A(n286), .B(n171), .Z(n287) );
  GTECH_NAND2 U350 ( .A(n288), .B(n289), .Z(n286) );
  GTECH_NOT U351 ( .A(n168), .Z(n289) );
  GTECH_NOT U352 ( .A(n290), .Z(n288) );
  GTECH_AND2 U353 ( .A(n291), .B(n275), .Z(controller_N78) );
  GTECH_XOR2 U354 ( .A(n290), .B(n168), .Z(n291) );
  GTECH_NAND2 U355 ( .A(n292), .B(n293), .Z(n290) );
  GTECH_NOT U356 ( .A(n165), .Z(n293) );
  GTECH_NOT U357 ( .A(n294), .Z(n292) );
  GTECH_AND2 U358 ( .A(n295), .B(n275), .Z(controller_N77) );
  GTECH_XOR2 U359 ( .A(n294), .B(n165), .Z(n295) );
  GTECH_NAND2 U360 ( .A(n296), .B(n297), .Z(n294) );
  GTECH_NOT U361 ( .A(n162), .Z(n297) );
  GTECH_NOT U362 ( .A(n298), .Z(n296) );
  GTECH_AND2 U363 ( .A(n299), .B(n275), .Z(controller_N76) );
  GTECH_XOR2 U364 ( .A(n298), .B(n162), .Z(n299) );
  GTECH_NAND2 U365 ( .A(n300), .B(n301), .Z(n298) );
  GTECH_NOT U366 ( .A(n159), .Z(n301) );
  GTECH_NOT U367 ( .A(n302), .Z(n300) );
  GTECH_AND2 U368 ( .A(n303), .B(n275), .Z(controller_N75) );
  GTECH_XOR2 U369 ( .A(n302), .B(n159), .Z(n303) );
  GTECH_NAND2 U370 ( .A(n304), .B(n305), .Z(n302) );
  GTECH_NOT U371 ( .A(n156), .Z(n305) );
  GTECH_NOT U372 ( .A(n306), .Z(n304) );
  GTECH_AND2 U373 ( .A(n307), .B(n275), .Z(controller_N74) );
  GTECH_XOR2 U374 ( .A(n306), .B(n156), .Z(n307) );
  GTECH_NAND2 U375 ( .A(n308), .B(n309), .Z(n306) );
  GTECH_NOT U376 ( .A(n153), .Z(n309) );
  GTECH_NOT U377 ( .A(n310), .Z(n308) );
  GTECH_AND2 U378 ( .A(n311), .B(n275), .Z(controller_N73) );
  GTECH_XOR2 U379 ( .A(n310), .B(n153), .Z(n311) );
  GTECH_NAND2 U380 ( .A(n312), .B(n313), .Z(n310) );
  GTECH_NOT U381 ( .A(n150), .Z(n313) );
  GTECH_NOT U382 ( .A(n314), .Z(n312) );
  GTECH_AND2 U383 ( .A(n315), .B(n275), .Z(controller_N72) );
  GTECH_XOR2 U384 ( .A(n314), .B(n150), .Z(n315) );
  GTECH_NAND2 U385 ( .A(n316), .B(n317), .Z(n314) );
  GTECH_NOT U386 ( .A(n147), .Z(n317) );
  GTECH_NOT U387 ( .A(n318), .Z(n316) );
  GTECH_AND2 U388 ( .A(n319), .B(n275), .Z(controller_N71) );
  GTECH_XOR2 U389 ( .A(n318), .B(n147), .Z(n319) );
  GTECH_NAND2 U390 ( .A(n320), .B(n321), .Z(n318) );
  GTECH_NOT U391 ( .A(n144), .Z(n321) );
  GTECH_NOT U392 ( .A(n322), .Z(n320) );
  GTECH_AND2 U393 ( .A(n323), .B(n275), .Z(controller_N70) );
  GTECH_XOR2 U394 ( .A(n322), .B(n144), .Z(n323) );
  GTECH_NAND2 U395 ( .A(n324), .B(n325), .Z(n322) );
  GTECH_NOT U396 ( .A(n141), .Z(n325) );
  GTECH_NOT U397 ( .A(n326), .Z(n324) );
  GTECH_AND2 U398 ( .A(n327), .B(n275), .Z(controller_N69) );
  GTECH_XOR2 U399 ( .A(n326), .B(n141), .Z(n327) );
  GTECH_NAND2 U400 ( .A(n328), .B(n329), .Z(n326) );
  GTECH_NOT U401 ( .A(n138), .Z(n329) );
  GTECH_NOT U402 ( .A(n330), .Z(n328) );
  GTECH_AND2 U403 ( .A(n331), .B(n275), .Z(controller_N68) );
  GTECH_XOR2 U404 ( .A(n330), .B(n138), .Z(n331) );
  GTECH_NAND2 U405 ( .A(n332), .B(n333), .Z(n330) );
  GTECH_NOT U406 ( .A(n135), .Z(n333) );
  GTECH_NOT U407 ( .A(n334), .Z(n332) );
  GTECH_AND2 U408 ( .A(n335), .B(n275), .Z(controller_N67) );
  GTECH_XOR2 U409 ( .A(n334), .B(n135), .Z(n335) );
  GTECH_NAND2 U410 ( .A(n336), .B(n337), .Z(n334) );
  GTECH_NOT U411 ( .A(n132), .Z(n337) );
  GTECH_NOT U412 ( .A(n338), .Z(n336) );
  GTECH_AND2 U413 ( .A(n339), .B(n275), .Z(controller_N66) );
  GTECH_XOR2 U414 ( .A(n338), .B(n132), .Z(n339) );
  GTECH_NAND2 U415 ( .A(n340), .B(n341), .Z(n338) );
  GTECH_NOT U416 ( .A(n129), .Z(n341) );
  GTECH_NOT U417 ( .A(n342), .Z(n340) );
  GTECH_AND2 U418 ( .A(n343), .B(n275), .Z(controller_N65) );
  GTECH_XOR2 U419 ( .A(n342), .B(n129), .Z(n343) );
  GTECH_NAND2 U420 ( .A(n344), .B(n345), .Z(n342) );
  GTECH_NOT U421 ( .A(n126), .Z(n345) );
  GTECH_NOT U422 ( .A(n346), .Z(n344) );
  GTECH_AND2 U423 ( .A(n347), .B(n275), .Z(controller_N64) );
  GTECH_XOR2 U424 ( .A(n346), .B(n126), .Z(n347) );
  GTECH_NAND2 U425 ( .A(n348), .B(n349), .Z(n346) );
  GTECH_NOT U426 ( .A(n123), .Z(n349) );
  GTECH_NOT U427 ( .A(n350), .Z(n348) );
  GTECH_AND2 U428 ( .A(n351), .B(n275), .Z(controller_N63) );
  GTECH_XOR2 U429 ( .A(n350), .B(n123), .Z(n351) );
  GTECH_NAND2 U430 ( .A(n352), .B(n353), .Z(n350) );
  GTECH_NOT U431 ( .A(n120), .Z(n353) );
  GTECH_NOT U432 ( .A(n354), .Z(n352) );
  GTECH_AND2 U433 ( .A(n355), .B(n275), .Z(controller_N62) );
  GTECH_XOR2 U434 ( .A(n354), .B(n120), .Z(n355) );
  GTECH_NAND2 U435 ( .A(n356), .B(n357), .Z(n354) );
  GTECH_NOT U436 ( .A(n117), .Z(n357) );
  GTECH_NOT U437 ( .A(n358), .Z(n356) );
  GTECH_AND2 U438 ( .A(n359), .B(n275), .Z(controller_N61) );
  GTECH_XOR2 U439 ( .A(n358), .B(n117), .Z(n359) );
  GTECH_NAND2 U440 ( .A(n360), .B(n361), .Z(n358) );
  GTECH_NOT U441 ( .A(n114), .Z(n361) );
  GTECH_NOT U442 ( .A(n362), .Z(n360) );
  GTECH_AND2 U443 ( .A(n363), .B(n275), .Z(controller_N60) );
  GTECH_XOR2 U444 ( .A(n362), .B(n114), .Z(n363) );
  GTECH_NAND2 U445 ( .A(n364), .B(n365), .Z(n362) );
  GTECH_NOT U446 ( .A(n111), .Z(n365) );
  GTECH_NOT U447 ( .A(n366), .Z(n364) );
  GTECH_AND2 U448 ( .A(n367), .B(n275), .Z(controller_N59) );
  GTECH_XOR2 U449 ( .A(n366), .B(n111), .Z(n367) );
  GTECH_NAND2 U450 ( .A(n368), .B(n369), .Z(n366) );
  GTECH_NOT U451 ( .A(n108), .Z(n369) );
  GTECH_NOT U452 ( .A(n370), .Z(n368) );
  GTECH_AND2 U453 ( .A(n371), .B(n275), .Z(controller_N58) );
  GTECH_XOR2 U454 ( .A(n370), .B(n108), .Z(n371) );
  GTECH_NAND2 U455 ( .A(n372), .B(n373), .Z(n370) );
  GTECH_NOT U456 ( .A(n105), .Z(n373) );
  GTECH_NOT U457 ( .A(n374), .Z(n372) );
  GTECH_AND2 U458 ( .A(n375), .B(n275), .Z(controller_N57) );
  GTECH_XOR2 U459 ( .A(n374), .B(n105), .Z(n375) );
  GTECH_NAND2 U460 ( .A(n376), .B(n377), .Z(n374) );
  GTECH_NOT U461 ( .A(n102), .Z(n377) );
  GTECH_NOT U462 ( .A(n378), .Z(n376) );
  GTECH_AND2 U463 ( .A(n379), .B(n275), .Z(controller_N56) );
  GTECH_XOR2 U464 ( .A(n378), .B(n102), .Z(n379) );
  GTECH_NAND2 U465 ( .A(n380), .B(n381), .Z(n378) );
  GTECH_NOT U466 ( .A(n99), .Z(n381) );
  GTECH_NOT U467 ( .A(n382), .Z(n380) );
  GTECH_AND2 U468 ( .A(n383), .B(n275), .Z(controller_N55) );
  GTECH_XOR2 U469 ( .A(n382), .B(n99), .Z(n383) );
  GTECH_NAND3 U470 ( .A(n384), .B(n385), .C(n386), .Z(n382) );
  GTECH_NOT U471 ( .A(n96), .Z(n385) );
  GTECH_OAI22 U472 ( .A(n96), .B(n387), .C(n259), .D(n388), .Z(controller_N54)
         );
  GTECH_MUX2 U473 ( .A(n384), .B(n389), .S(n96), .Z(n388) );
  GTECH_NAND2 U474 ( .A(n386), .B(n384), .Z(n389) );
  GTECH_NOT U475 ( .A(n93), .Z(n384) );
  GTECH_NOT U476 ( .A(n275), .Z(n259) );
  GTECH_MUX2 U477 ( .A(controller_N52), .B(n390), .S(n93), .Z(controller_N53)
         );
  GTECH_AND2 U478 ( .A(n275), .B(n386), .Z(n390) );
  GTECH_NOT U479 ( .A(n90), .Z(n386) );
  GTECH_NOT U480 ( .A(n387), .Z(controller_N52) );
  GTECH_NAND2 U481 ( .A(n90), .B(n275), .Z(n387) );
  GTECH_OAI21 U482 ( .A(n391), .B(n392), .C(n196), .Z(n275) );
  GTECH_NAND8 U483 ( .A(n192), .B(n177), .C(n99), .D(n393), .E(n159), .F(n156), 
        .G(n162), .H(n394), .Z(n392) );
  GTECH_AND4 U484 ( .A(n153), .B(n150), .C(n147), .D(n144), .Z(n394) );
  GTECH_AND4 U485 ( .A(n174), .B(n171), .C(n168), .D(n165), .Z(n393) );
  GTECH_NAND8 U486 ( .A(n138), .B(n135), .C(n141), .D(n395), .E(n117), .F(n114), .G(n120), .H(n396), .Z(n391) );
  GTECH_AND4 U487 ( .A(n111), .B(n108), .C(n105), .D(n102), .Z(n396) );
  GTECH_AND4 U488 ( .A(n132), .B(n129), .C(n126), .D(n123), .Z(n395) );
  GTECH_AND2 U489 ( .A(controller_N95), .B(n193), .Z(controller_N102) );
  GTECH_NOT U490 ( .A(rst), .Z(n193) );
  GTECH_NAND2 U491 ( .A(n397), .B(n260), .Z(controller_N95) );
  GTECH_NAND3 U492 ( .A(n183), .B(n397), .C(n186), .Z(n260) );
  GTECH_NOT U493 ( .A(n180), .Z(n397) );
endmodule

