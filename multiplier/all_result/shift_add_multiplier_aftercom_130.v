
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
         controller_state_1_, controller_state_2_, controller_start, n37, n40,
         n43, n46, n49, n52, n55, n58, n61, n67, n73, n76, n79, n82, n85, n88,
         n91, n94, n97, n100, n103, n106, n109, n112, n115, n118, n121, n124,
         n127, n130, n133, n136, n139, n142, n145, n148, n151, n154, n157,
         n160, n163, n166, n184, n187, n190, n193, n194, n26, n27, n197, n198,
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
         n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, n352,
         n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363,
         n364, n365, n366, n367, n368, n369, n370, n371, n372, n373, n374,
         n375, n376, n377, n378, n379, n380, n381, n382, n383, n384, n385,
         n386, n387, n388, n389, n390, n391, n392, n393, n394, n395, n396;
  wire   [7:0] A;

  GTECH_FJK3S controller_count_reg_31_ ( .J(n27), .K(n27), .TI(controller_N83), 
        .TE(controller_N98), .CP(clk), .CD(n194), .SD(n26), .Q(
        controller_count_31_), .QN(n197) );
  GTECH_FJK3S controller_count_reg_30_ ( .J(n27), .K(n27), .TI(controller_N82), 
        .TE(controller_N98), .CP(clk), .CD(n194), .SD(n26), .Q(
        controller_count_30_), .QN(n193) );
  GTECH_FJK3 controller_start_reg ( .J(n27), .K(controller_N97), .CP(clk), 
        .CD(n26), .SD(n194), .Q(controller_start), .QN(n190) );
  GTECH_FJK3S controller_state_reg_0_ ( .J(n27), .K(n27), .TI(controller_N93), 
        .TE(controller_N95), .CP(clk), .CD(n194), .SD(n26), .Q(
        controller_state_0_), .QN(n187) );
  GTECH_FJK3S controller_add_cmd_reg ( .J(n27), .K(n27), .TI(controller_N91), 
        .TE(controller_N102), .CP(clk), .CD(n26), .SD(n26), .Q(add_cmd), .QN(
        n184) );
  GTECH_FJK3S shifter_add_temp_reg ( .J(n27), .K(n27), .TI(shifter_N24), .TE(
        shifter_N23), .CP(clk), .CD(n194), .SD(n26), .Q(shifter_add_temp) );
  GTECH_FJK3S shifter_temp_reg_4_ ( .J(n27), .K(n27), .TI(shifter_N10), .TE(
        shifter_N22), .CP(clk), .CD(n194), .SD(n26), .Q(shifter_temp_4_) );
  GTECH_FJK3S shifter_temp_reg_3_ ( .J(n27), .K(n27), .TI(shifter_N9), .TE(
        shifter_N22), .CP(clk), .CD(n194), .SD(n26), .Q(shifter_temp_3_) );
  GTECH_FJK3S shifter_temp_reg_2_ ( .J(n27), .K(n27), .TI(shifter_N8), .TE(
        shifter_N22), .CP(clk), .CD(n194), .SD(n26), .Q(shifter_temp_2_) );
  GTECH_FJK3S shifter_temp_reg_1_ ( .J(n27), .K(n27), .TI(shifter_N7), .TE(
        shifter_N22), .CP(clk), .CD(n194), .SD(n26), .Q(shifter_temp_1_) );
  GTECH_FJK3S shifter_temp_reg_0_ ( .J(n27), .K(n27), .TI(shifter_N6), .TE(
        shifter_N22), .CP(clk), .CD(n194), .SD(n26), .Q(lsb), .QN(n166) );
  GTECH_FJK3S controller_state_reg_2_ ( .J(n27), .K(n27), .TI(controller_N96), 
        .TE(controller_N95), .CP(clk), .CD(n194), .SD(n26), .Q(
        controller_state_2_), .QN(n163) );
  GTECH_FJK3S controller_count_reg_29_ ( .J(n27), .K(n27), .TI(controller_N81), 
        .TE(controller_N98), .CP(clk), .CD(n194), .SD(n26), .Q(
        controller_count_29_), .QN(n160) );
  GTECH_FJK3S controller_count_reg_28_ ( .J(n27), .K(n27), .TI(controller_N80), 
        .TE(controller_N98), .CP(clk), .CD(n194), .SD(n26), .Q(
        controller_count_28_), .QN(n157) );
  GTECH_FJK3S controller_count_reg_27_ ( .J(n27), .K(n27), .TI(controller_N79), 
        .TE(controller_N98), .CP(clk), .CD(n194), .SD(n26), .Q(
        controller_count_27_), .QN(n154) );
  GTECH_FJK3S controller_count_reg_26_ ( .J(n27), .K(n27), .TI(controller_N78), 
        .TE(controller_N98), .CP(clk), .CD(n194), .SD(n26), .Q(
        controller_count_26_), .QN(n151) );
  GTECH_FJK3S controller_count_reg_25_ ( .J(n27), .K(n27), .TI(controller_N77), 
        .TE(controller_N98), .CP(clk), .CD(n194), .SD(n26), .Q(
        controller_count_25_), .QN(n148) );
  GTECH_FJK3S controller_count_reg_24_ ( .J(n27), .K(n27), .TI(controller_N76), 
        .TE(controller_N98), .CP(clk), .CD(n194), .SD(n26), .Q(
        controller_count_24_), .QN(n145) );
  GTECH_FJK3S controller_count_reg_23_ ( .J(n27), .K(n27), .TI(controller_N75), 
        .TE(controller_N98), .CP(clk), .CD(n194), .SD(n26), .Q(
        controller_count_23_), .QN(n142) );
  GTECH_FJK3S controller_count_reg_22_ ( .J(n27), .K(n27), .TI(controller_N74), 
        .TE(controller_N98), .CP(clk), .CD(n194), .SD(n26), .Q(
        controller_count_22_), .QN(n139) );
  GTECH_FJK3S controller_count_reg_21_ ( .J(n27), .K(n27), .TI(controller_N73), 
        .TE(controller_N98), .CP(clk), .CD(n194), .SD(n26), .Q(
        controller_count_21_), .QN(n136) );
  GTECH_FJK3S controller_count_reg_20_ ( .J(n27), .K(n27), .TI(controller_N72), 
        .TE(controller_N98), .CP(clk), .CD(n194), .SD(n26), .Q(
        controller_count_20_), .QN(n133) );
  GTECH_FJK3S controller_count_reg_19_ ( .J(n27), .K(n27), .TI(controller_N71), 
        .TE(controller_N98), .CP(clk), .CD(n194), .SD(n26), .Q(
        controller_count_19_), .QN(n130) );
  GTECH_FJK3S controller_count_reg_18_ ( .J(n27), .K(n27), .TI(controller_N70), 
        .TE(controller_N98), .CP(clk), .CD(n194), .SD(n26), .Q(
        controller_count_18_), .QN(n127) );
  GTECH_FJK3S controller_count_reg_17_ ( .J(n27), .K(n27), .TI(controller_N69), 
        .TE(controller_N98), .CP(clk), .CD(n194), .SD(n26), .Q(
        controller_count_17_), .QN(n124) );
  GTECH_FJK3S controller_count_reg_16_ ( .J(n27), .K(n27), .TI(controller_N68), 
        .TE(controller_N98), .CP(clk), .CD(n194), .SD(n26), .Q(
        controller_count_16_), .QN(n121) );
  GTECH_FJK3S controller_count_reg_15_ ( .J(n27), .K(n27), .TI(controller_N67), 
        .TE(controller_N98), .CP(clk), .CD(n194), .SD(n26), .Q(
        controller_count_15_), .QN(n118) );
  GTECH_FJK3S controller_count_reg_14_ ( .J(n27), .K(n27), .TI(controller_N66), 
        .TE(controller_N98), .CP(clk), .CD(n194), .SD(n26), .Q(
        controller_count_14_), .QN(n115) );
  GTECH_FJK3S controller_count_reg_13_ ( .J(n27), .K(n27), .TI(controller_N65), 
        .TE(controller_N98), .CP(clk), .CD(n194), .SD(n26), .Q(
        controller_count_13_), .QN(n112) );
  GTECH_FJK3S controller_count_reg_12_ ( .J(n27), .K(n27), .TI(controller_N64), 
        .TE(controller_N98), .CP(clk), .CD(n194), .SD(n26), .Q(
        controller_count_12_), .QN(n109) );
  GTECH_FJK3S controller_count_reg_11_ ( .J(n27), .K(n27), .TI(controller_N63), 
        .TE(controller_N98), .CP(clk), .CD(n194), .SD(n26), .Q(
        controller_count_11_), .QN(n106) );
  GTECH_FJK3S controller_count_reg_10_ ( .J(n27), .K(n27), .TI(controller_N62), 
        .TE(controller_N98), .CP(clk), .CD(n194), .SD(n26), .Q(
        controller_count_10_), .QN(n103) );
  GTECH_FJK3S controller_count_reg_9_ ( .J(n27), .K(n27), .TI(controller_N61), 
        .TE(controller_N98), .CP(clk), .CD(n194), .SD(n26), .Q(
        controller_count_9_), .QN(n100) );
  GTECH_FJK3S controller_count_reg_8_ ( .J(n27), .K(n27), .TI(controller_N60), 
        .TE(controller_N98), .CP(clk), .CD(n194), .SD(n26), .Q(
        controller_count_8_), .QN(n97) );
  GTECH_FJK3S controller_count_reg_7_ ( .J(n27), .K(n27), .TI(controller_N59), 
        .TE(controller_N98), .CP(clk), .CD(n194), .SD(n26), .Q(
        controller_count_7_), .QN(n94) );
  GTECH_FJK3S controller_count_reg_6_ ( .J(n27), .K(n27), .TI(controller_N58), 
        .TE(controller_N98), .CP(clk), .CD(n194), .SD(n26), .Q(
        controller_count_6_), .QN(n91) );
  GTECH_FJK3S controller_count_reg_5_ ( .J(n27), .K(n27), .TI(controller_N57), 
        .TE(controller_N98), .CP(clk), .CD(n194), .SD(n26), .Q(
        controller_count_5_), .QN(n88) );
  GTECH_FJK3S controller_count_reg_4_ ( .J(n27), .K(n27), .TI(controller_N56), 
        .TE(controller_N98), .CP(clk), .CD(n194), .SD(n26), .Q(
        controller_count_4_), .QN(n85) );
  GTECH_FJK3S controller_count_reg_3_ ( .J(n27), .K(n27), .TI(controller_N55), 
        .TE(controller_N98), .CP(clk), .CD(n194), .SD(n26), .Q(
        controller_count_3_), .QN(n82) );
  GTECH_FJK3S controller_count_reg_2_ ( .J(n27), .K(n27), .TI(controller_N54), 
        .TE(controller_N98), .CP(clk), .CD(n194), .SD(n26), .Q(
        controller_count_2_), .QN(n79) );
  GTECH_FJK3S controller_count_reg_1_ ( .J(n27), .K(n27), .TI(controller_N53), 
        .TE(controller_N98), .CP(clk), .CD(n194), .SD(n26), .Q(
        controller_count_1_), .QN(n76) );
  GTECH_FJK3S controller_count_reg_0_ ( .J(n27), .K(n27), .TI(controller_N52), 
        .TE(controller_N98), .CP(clk), .CD(n194), .SD(n26), .Q(
        controller_count_0_), .QN(n73) );
  GTECH_FJK3S controller_shift_cmd_reg ( .J(n27), .K(n27), .TI(controller_N98), 
        .TE(controller_N102), .CP(clk), .CD(n26), .SD(n26), .Q(shift_cmd) );
  GTECH_FJK3S controller_state_reg_1_ ( .J(n27), .K(n27), .TI(controller_N94), 
        .TE(controller_N95), .CP(clk), .CD(n194), .SD(n26), .Q(
        controller_state_1_), .QN(n67) );
  GTECH_FJK3S controller_out_cmd_reg ( .J(n27), .K(n27), .TI(controller_N92), 
        .TE(controller_N95), .CP(clk), .CD(n194), .SD(n26), .Q(out_cmd) );
  GTECH_FJK3S controller_load_cmd_reg ( .J(n27), .K(n27), .TI(controller_N90), 
        .TE(controller_N102), .CP(clk), .CD(n26), .SD(n26), .Q(load_cmd), .QN(
        n61) );
  GTECH_FJK3S shifter_temp_reg_8_ ( .J(n27), .K(n27), .TI(shifter_N14), .TE(
        shifter_N22), .CP(clk), .CD(n194), .SD(n26), .Q(A[0]), .QN(n58) );
  GTECH_FJK3S shifter_temp_reg_15_ ( .J(n27), .K(n27), .TI(shifter_N21), .TE(
        shifter_N22), .CP(clk), .CD(n194), .SD(n26), .Q(A[7]), .QN(n55) );
  GTECH_FJK3S shifter_temp_reg_14_ ( .J(n27), .K(n27), .TI(shifter_N20), .TE(
        shifter_N22), .CP(clk), .CD(n194), .SD(n26), .Q(A[6]), .QN(n52) );
  GTECH_FJK3S shifter_temp_reg_13_ ( .J(n27), .K(n27), .TI(shifter_N19), .TE(
        shifter_N22), .CP(clk), .CD(n194), .SD(n26), .Q(A[5]), .QN(n49) );
  GTECH_FJK3S shifter_temp_reg_12_ ( .J(n27), .K(n27), .TI(shifter_N18), .TE(
        shifter_N22), .CP(clk), .CD(n194), .SD(n26), .Q(A[4]), .QN(n46) );
  GTECH_FJK3S shifter_temp_reg_11_ ( .J(n27), .K(n27), .TI(shifter_N17), .TE(
        shifter_N22), .CP(clk), .CD(n194), .SD(n26), .Q(A[3]), .QN(n43) );
  GTECH_FJK3S shifter_temp_reg_10_ ( .J(n27), .K(n27), .TI(shifter_N16), .TE(
        shifter_N22), .CP(clk), .CD(n194), .SD(n26), .Q(A[2]), .QN(n40) );
  GTECH_FJK3S shifter_temp_reg_9_ ( .J(n27), .K(n27), .TI(shifter_N15), .TE(
        shifter_N22), .CP(clk), .CD(n194), .SD(n26), .Q(A[1]), .QN(n37) );
  GTECH_FJK3S shifter_temp_reg_7_ ( .J(n27), .K(n27), .TI(shifter_N13), .TE(
        shifter_N22), .CP(clk), .CD(n194), .SD(n26), .Q(shifter_temp_7_) );
  GTECH_FJK3S shifter_temp_reg_6_ ( .J(n27), .K(n27), .TI(shifter_N12), .TE(
        shifter_N22), .CP(clk), .CD(n194), .SD(n26), .Q(shifter_temp_6_) );
  GTECH_FJK3S shifter_temp_reg_5_ ( .J(n27), .K(n27), .TI(shifter_N11), .TE(
        shifter_N22), .CP(clk), .CD(n194), .SD(n26), .Q(shifter_temp_5_) );
  GTECH_ZERO U215 ( .Z(n27) );
  GTECH_ONE U216 ( .Z(n26) );
  GTECH_OAI2N2 U217 ( .A(n198), .B(n199), .C(Q[3]), .D(n200), .Z(shifter_N9)
         );
  GTECH_NOT U218 ( .A(shifter_temp_4_), .Z(n199) );
  GTECH_OAI2N2 U219 ( .A(n198), .B(n201), .C(Q[2]), .D(n200), .Z(shifter_N8)
         );
  GTECH_NOT U220 ( .A(shifter_temp_3_), .Z(n201) );
  GTECH_OAI2N2 U221 ( .A(n198), .B(n202), .C(Q[1]), .D(n200), .Z(shifter_N7)
         );
  GTECH_NOT U222 ( .A(shifter_temp_2_), .Z(n202) );
  GTECH_OAI2N2 U223 ( .A(n198), .B(n203), .C(Q[0]), .D(n200), .Z(shifter_N6)
         );
  GTECH_NOT U224 ( .A(shifter_temp_1_), .Z(n203) );
  GTECH_NOT U225 ( .A(n204), .Z(shifter_N24) );
  GTECH_NAND2 U226 ( .A(n204), .B(n205), .Z(shifter_N23) );
  GTECH_NAND2 U227 ( .A(n61), .B(n206), .Z(n204) );
  GTECH_NOT U228 ( .A(n184), .Z(n206) );
  GTECH_NAND2 U229 ( .A(n198), .B(n61), .Z(shifter_N22) );
  GTECH_AND2 U230 ( .A(n207), .B(n208), .Z(shifter_N21) );
  GTECH_OAI22 U231 ( .A(n209), .B(n210), .C(n55), .D(n211), .Z(n208) );
  GTECH_NOT U232 ( .A(n212), .Z(n211) );
  GTECH_NOT U233 ( .A(n205), .Z(n207) );
  GTECH_OAI22 U234 ( .A(n55), .B(n213), .C(n214), .D(n205), .Z(shifter_N20) );
  GTECH_OA21 U235 ( .A(n55), .B(n212), .C(n215), .Z(n214) );
  GTECH_MUX2 U236 ( .A(n216), .B(n217), .S(n209), .Z(n215) );
  GTECH_NAND2 U237 ( .A(n55), .B(D[7]), .Z(n217) );
  GTECH_XOR2 U238 ( .A(n210), .B(n55), .Z(n216) );
  GTECH_NAND2 U239 ( .A(n209), .B(n210), .Z(n212) );
  GTECH_NOT U240 ( .A(D[7]), .Z(n210) );
  GTECH_AND2 U241 ( .A(n218), .B(n219), .Z(n209) );
  GTECH_OR_NOT U242 ( .A(n52), .B(D[6]), .Z(n219) );
  GTECH_OAI21 U243 ( .A(D[6]), .B(n220), .C(n221), .Z(n218) );
  GTECH_OAI22 U244 ( .A(n52), .B(n213), .C(n222), .D(n205), .Z(shifter_N19) );
  GTECH_XOR3 U245 ( .A(n52), .B(D[6]), .C(n221), .Z(n222) );
  GTECH_OAI21 U246 ( .A(n49), .B(n223), .C(n224), .Z(n221) );
  GTECH_OAI21 U247 ( .A(D[5]), .B(n225), .C(n226), .Z(n224) );
  GTECH_NOT U248 ( .A(D[5]), .Z(n223) );
  GTECH_OAI22 U249 ( .A(n49), .B(n213), .C(n227), .D(n205), .Z(shifter_N18) );
  GTECH_XOR3 U250 ( .A(n49), .B(D[5]), .C(n226), .Z(n227) );
  GTECH_OAI21 U251 ( .A(n46), .B(n228), .C(n229), .Z(n226) );
  GTECH_OAI21 U252 ( .A(D[4]), .B(n230), .C(n231), .Z(n229) );
  GTECH_NOT U253 ( .A(D[4]), .Z(n228) );
  GTECH_OAI22 U254 ( .A(n46), .B(n213), .C(n232), .D(n205), .Z(shifter_N17) );
  GTECH_XOR3 U255 ( .A(n46), .B(D[4]), .C(n231), .Z(n232) );
  GTECH_OAI21 U256 ( .A(n43), .B(n233), .C(n234), .Z(n231) );
  GTECH_OAI21 U257 ( .A(D[3]), .B(n235), .C(n236), .Z(n234) );
  GTECH_NOT U258 ( .A(D[3]), .Z(n233) );
  GTECH_OAI22 U259 ( .A(n43), .B(n213), .C(n237), .D(n205), .Z(shifter_N16) );
  GTECH_XOR3 U260 ( .A(n43), .B(D[3]), .C(n236), .Z(n237) );
  GTECH_OAI21 U261 ( .A(n40), .B(n238), .C(n239), .Z(n236) );
  GTECH_OAI21 U262 ( .A(D[2]), .B(n240), .C(n241), .Z(n239) );
  GTECH_NOT U263 ( .A(D[2]), .Z(n238) );
  GTECH_OAI22 U264 ( .A(n40), .B(n213), .C(n242), .D(n205), .Z(shifter_N15) );
  GTECH_XOR3 U265 ( .A(n40), .B(D[2]), .C(n241), .Z(n242) );
  GTECH_OAI21 U266 ( .A(n37), .B(n243), .C(n244), .Z(n241) );
  GTECH_OAI21 U267 ( .A(D[1]), .B(n245), .C(n246), .Z(n244) );
  GTECH_NOT U268 ( .A(D[1]), .Z(n243) );
  GTECH_OAI22 U269 ( .A(n37), .B(n213), .C(n205), .D(n247), .Z(shifter_N14) );
  GTECH_XOR3 U270 ( .A(n37), .B(D[1]), .C(n246), .Z(n247) );
  GTECH_NOT U271 ( .A(n248), .Z(n246) );
  GTECH_NAND2 U272 ( .A(D[0]), .B(n249), .Z(n248) );
  GTECH_AO21 U273 ( .A(Q[7]), .B(n200), .C(n250), .Z(shifter_N13) );
  GTECH_OAI22 U274 ( .A(n205), .B(n251), .C(n58), .D(n213), .Z(n250) );
  GTECH_XOR2 U275 ( .A(D[0]), .B(n58), .Z(n251) );
  GTECH_OAI2N2 U276 ( .A(n198), .B(n252), .C(Q[6]), .D(n200), .Z(shifter_N12)
         );
  GTECH_NOT U277 ( .A(shifter_temp_7_), .Z(n252) );
  GTECH_OAI2N2 U278 ( .A(n198), .B(n253), .C(Q[5]), .D(n200), .Z(shifter_N11)
         );
  GTECH_NOT U279 ( .A(shifter_temp_6_), .Z(n253) );
  GTECH_OAI2N2 U280 ( .A(n198), .B(n254), .C(Q[4]), .D(n200), .Z(shifter_N10)
         );
  GTECH_NOT U281 ( .A(n61), .Z(n200) );
  GTECH_NOT U282 ( .A(shifter_temp_5_), .Z(n254) );
  GTECH_NOT U283 ( .A(n255), .Z(n198) );
  GTECH_NAND2 U284 ( .A(n205), .B(n213), .Z(n255) );
  GTECH_NAND4 U285 ( .A(shift_cmd), .B(n61), .C(n184), .D(n256), .Z(n213) );
  GTECH_NOT U286 ( .A(shifter_add_temp), .Z(n256) );
  GTECH_NAND4 U287 ( .A(shifter_add_temp), .B(shift_cmd), .C(n61), .D(n184), 
        .Z(n205) );
  GTECH_AND2 U288 ( .A(out_cmd), .B(n245), .Z(out[9]) );
  GTECH_NOT U289 ( .A(n37), .Z(n245) );
  GTECH_AND2 U290 ( .A(out_cmd), .B(n249), .Z(out[8]) );
  GTECH_NOT U291 ( .A(n58), .Z(n249) );
  GTECH_AND2 U292 ( .A(out_cmd), .B(shifter_temp_7_), .Z(out[7]) );
  GTECH_AND2 U293 ( .A(out_cmd), .B(shifter_temp_6_), .Z(out[6]) );
  GTECH_AND2 U294 ( .A(out_cmd), .B(shifter_temp_5_), .Z(out[5]) );
  GTECH_AND2 U295 ( .A(out_cmd), .B(shifter_temp_4_), .Z(out[4]) );
  GTECH_AND2 U296 ( .A(out_cmd), .B(shifter_temp_3_), .Z(out[3]) );
  GTECH_AND2 U297 ( .A(out_cmd), .B(shifter_temp_2_), .Z(out[2]) );
  GTECH_AND2 U298 ( .A(out_cmd), .B(shifter_temp_1_), .Z(out[1]) );
  GTECH_AND2 U299 ( .A(out_cmd), .B(n257), .Z(out[15]) );
  GTECH_NOT U300 ( .A(n55), .Z(n257) );
  GTECH_AND2 U301 ( .A(out_cmd), .B(n220), .Z(out[14]) );
  GTECH_NOT U302 ( .A(n52), .Z(n220) );
  GTECH_AND2 U303 ( .A(out_cmd), .B(n225), .Z(out[13]) );
  GTECH_NOT U304 ( .A(n49), .Z(n225) );
  GTECH_AND2 U305 ( .A(out_cmd), .B(n230), .Z(out[12]) );
  GTECH_NOT U306 ( .A(n46), .Z(n230) );
  GTECH_AND2 U307 ( .A(out_cmd), .B(n235), .Z(out[11]) );
  GTECH_NOT U308 ( .A(n43), .Z(n235) );
  GTECH_AND2 U309 ( .A(out_cmd), .B(n240), .Z(out[10]) );
  GTECH_NOT U310 ( .A(n40), .Z(n240) );
  GTECH_AND2 U311 ( .A(out_cmd), .B(n258), .Z(out[0]) );
  GTECH_AND2 U312 ( .A(controller_N98), .B(n259), .Z(controller_N97) );
  GTECH_NOT U313 ( .A(n260), .Z(controller_N98) );
  GTECH_OAI21 U314 ( .A(n261), .B(n258), .C(n262), .Z(controller_N96) );
  GTECH_OAI21 U315 ( .A(n259), .B(n260), .C(n263), .Z(controller_N94) );
  GTECH_AND2 U316 ( .A(n264), .B(n265), .Z(n263) );
  GTECH_NAND3 U317 ( .A(n187), .B(n258), .C(n266), .Z(n264) );
  GTECH_AND3 U318 ( .A(n163), .B(n187), .C(n267), .Z(controller_N93) );
  GTECH_MUX2 U319 ( .A(n258), .B(n268), .S(n67), .Z(n267) );
  GTECH_NOT U320 ( .A(n190), .Z(n268) );
  GTECH_NOT U321 ( .A(n166), .Z(n258) );
  GTECH_AND4 U322 ( .A(n190), .B(n163), .C(n67), .D(n187), .Z(controller_N92)
         );
  GTECH_NOT U323 ( .A(n262), .Z(controller_N91) );
  GTECH_NAND2 U324 ( .A(n266), .B(n269), .Z(n262) );
  GTECH_NOT U325 ( .A(n261), .Z(n266) );
  GTECH_NAND2 U326 ( .A(n163), .B(n270), .Z(n261) );
  GTECH_NOT U327 ( .A(n67), .Z(n270) );
  GTECH_NOT U328 ( .A(n265), .Z(controller_N90) );
  GTECH_NAND3 U329 ( .A(n67), .B(n269), .C(n163), .Z(n265) );
  GTECH_NOT U330 ( .A(n187), .Z(n269) );
  GTECH_OA21 U331 ( .A(n193), .B(n271), .C(n272), .Z(controller_N83) );
  GTECH_NOT U332 ( .A(n197), .Z(n272) );
  GTECH_AND2 U333 ( .A(n273), .B(n274), .Z(controller_N82) );
  GTECH_XOR2 U334 ( .A(n271), .B(n193), .Z(n273) );
  GTECH_NAND2 U335 ( .A(n275), .B(n276), .Z(n271) );
  GTECH_NOT U336 ( .A(n160), .Z(n276) );
  GTECH_NOT U337 ( .A(n277), .Z(n275) );
  GTECH_AND2 U338 ( .A(n278), .B(n274), .Z(controller_N81) );
  GTECH_XOR2 U339 ( .A(n277), .B(n160), .Z(n278) );
  GTECH_NAND2 U340 ( .A(n279), .B(n280), .Z(n277) );
  GTECH_NOT U341 ( .A(n157), .Z(n280) );
  GTECH_NOT U342 ( .A(n281), .Z(n279) );
  GTECH_AND2 U343 ( .A(n282), .B(n274), .Z(controller_N80) );
  GTECH_XOR2 U344 ( .A(n281), .B(n157), .Z(n282) );
  GTECH_NAND2 U345 ( .A(n283), .B(n284), .Z(n281) );
  GTECH_NOT U346 ( .A(n154), .Z(n284) );
  GTECH_NOT U347 ( .A(n285), .Z(n283) );
  GTECH_AND2 U348 ( .A(n286), .B(n274), .Z(controller_N79) );
  GTECH_XOR2 U349 ( .A(n285), .B(n154), .Z(n286) );
  GTECH_NAND2 U350 ( .A(n287), .B(n288), .Z(n285) );
  GTECH_NOT U351 ( .A(n151), .Z(n288) );
  GTECH_NOT U352 ( .A(n289), .Z(n287) );
  GTECH_AND2 U353 ( .A(n290), .B(n274), .Z(controller_N78) );
  GTECH_XOR2 U354 ( .A(n289), .B(n151), .Z(n290) );
  GTECH_NAND2 U355 ( .A(n291), .B(n292), .Z(n289) );
  GTECH_NOT U356 ( .A(n148), .Z(n292) );
  GTECH_NOT U357 ( .A(n293), .Z(n291) );
  GTECH_AND2 U358 ( .A(n294), .B(n274), .Z(controller_N77) );
  GTECH_XOR2 U359 ( .A(n293), .B(n148), .Z(n294) );
  GTECH_NAND2 U360 ( .A(n295), .B(n296), .Z(n293) );
  GTECH_NOT U361 ( .A(n145), .Z(n296) );
  GTECH_NOT U362 ( .A(n297), .Z(n295) );
  GTECH_AND2 U363 ( .A(n298), .B(n274), .Z(controller_N76) );
  GTECH_XOR2 U364 ( .A(n297), .B(n145), .Z(n298) );
  GTECH_NAND2 U365 ( .A(n299), .B(n300), .Z(n297) );
  GTECH_NOT U366 ( .A(n142), .Z(n300) );
  GTECH_NOT U367 ( .A(n301), .Z(n299) );
  GTECH_AND2 U368 ( .A(n302), .B(n274), .Z(controller_N75) );
  GTECH_XOR2 U369 ( .A(n301), .B(n142), .Z(n302) );
  GTECH_NAND2 U370 ( .A(n303), .B(n304), .Z(n301) );
  GTECH_NOT U371 ( .A(n139), .Z(n304) );
  GTECH_NOT U372 ( .A(n305), .Z(n303) );
  GTECH_AND2 U373 ( .A(n306), .B(n274), .Z(controller_N74) );
  GTECH_XOR2 U374 ( .A(n305), .B(n139), .Z(n306) );
  GTECH_NAND2 U375 ( .A(n307), .B(n308), .Z(n305) );
  GTECH_NOT U376 ( .A(n136), .Z(n308) );
  GTECH_NOT U377 ( .A(n309), .Z(n307) );
  GTECH_AND2 U378 ( .A(n310), .B(n274), .Z(controller_N73) );
  GTECH_XOR2 U379 ( .A(n309), .B(n136), .Z(n310) );
  GTECH_NAND2 U380 ( .A(n311), .B(n312), .Z(n309) );
  GTECH_NOT U381 ( .A(n133), .Z(n312) );
  GTECH_NOT U382 ( .A(n313), .Z(n311) );
  GTECH_AND2 U383 ( .A(n314), .B(n274), .Z(controller_N72) );
  GTECH_XOR2 U384 ( .A(n313), .B(n133), .Z(n314) );
  GTECH_NAND2 U385 ( .A(n315), .B(n316), .Z(n313) );
  GTECH_NOT U386 ( .A(n130), .Z(n316) );
  GTECH_NOT U387 ( .A(n317), .Z(n315) );
  GTECH_AND2 U388 ( .A(n318), .B(n274), .Z(controller_N71) );
  GTECH_XOR2 U389 ( .A(n317), .B(n130), .Z(n318) );
  GTECH_NAND2 U390 ( .A(n319), .B(n320), .Z(n317) );
  GTECH_NOT U391 ( .A(n127), .Z(n320) );
  GTECH_NOT U392 ( .A(n321), .Z(n319) );
  GTECH_AND2 U393 ( .A(n322), .B(n274), .Z(controller_N70) );
  GTECH_XOR2 U394 ( .A(n321), .B(n127), .Z(n322) );
  GTECH_NAND2 U395 ( .A(n323), .B(n324), .Z(n321) );
  GTECH_NOT U396 ( .A(n124), .Z(n324) );
  GTECH_NOT U397 ( .A(n325), .Z(n323) );
  GTECH_AND2 U398 ( .A(n326), .B(n274), .Z(controller_N69) );
  GTECH_XOR2 U399 ( .A(n325), .B(n124), .Z(n326) );
  GTECH_NAND2 U400 ( .A(n327), .B(n328), .Z(n325) );
  GTECH_NOT U401 ( .A(n121), .Z(n328) );
  GTECH_NOT U402 ( .A(n329), .Z(n327) );
  GTECH_AND2 U403 ( .A(n330), .B(n274), .Z(controller_N68) );
  GTECH_XOR2 U404 ( .A(n329), .B(n121), .Z(n330) );
  GTECH_NAND2 U405 ( .A(n331), .B(n332), .Z(n329) );
  GTECH_NOT U406 ( .A(n118), .Z(n332) );
  GTECH_NOT U407 ( .A(n333), .Z(n331) );
  GTECH_AND2 U408 ( .A(n334), .B(n274), .Z(controller_N67) );
  GTECH_XOR2 U409 ( .A(n333), .B(n118), .Z(n334) );
  GTECH_NAND2 U410 ( .A(n335), .B(n336), .Z(n333) );
  GTECH_NOT U411 ( .A(n115), .Z(n336) );
  GTECH_NOT U412 ( .A(n337), .Z(n335) );
  GTECH_AND2 U413 ( .A(n338), .B(n274), .Z(controller_N66) );
  GTECH_XOR2 U414 ( .A(n337), .B(n115), .Z(n338) );
  GTECH_NAND2 U415 ( .A(n339), .B(n340), .Z(n337) );
  GTECH_NOT U416 ( .A(n112), .Z(n340) );
  GTECH_NOT U417 ( .A(n341), .Z(n339) );
  GTECH_AND2 U418 ( .A(n342), .B(n274), .Z(controller_N65) );
  GTECH_XOR2 U419 ( .A(n341), .B(n112), .Z(n342) );
  GTECH_NAND2 U420 ( .A(n343), .B(n344), .Z(n341) );
  GTECH_NOT U421 ( .A(n109), .Z(n344) );
  GTECH_NOT U422 ( .A(n345), .Z(n343) );
  GTECH_AND2 U423 ( .A(n346), .B(n274), .Z(controller_N64) );
  GTECH_XOR2 U424 ( .A(n345), .B(n109), .Z(n346) );
  GTECH_NAND2 U425 ( .A(n347), .B(n348), .Z(n345) );
  GTECH_NOT U426 ( .A(n106), .Z(n348) );
  GTECH_NOT U427 ( .A(n349), .Z(n347) );
  GTECH_AND2 U428 ( .A(n350), .B(n274), .Z(controller_N63) );
  GTECH_XOR2 U429 ( .A(n349), .B(n106), .Z(n350) );
  GTECH_NAND2 U430 ( .A(n351), .B(n352), .Z(n349) );
  GTECH_NOT U431 ( .A(n103), .Z(n352) );
  GTECH_NOT U432 ( .A(n353), .Z(n351) );
  GTECH_AND2 U433 ( .A(n354), .B(n274), .Z(controller_N62) );
  GTECH_XOR2 U434 ( .A(n353), .B(n103), .Z(n354) );
  GTECH_NAND2 U435 ( .A(n355), .B(n356), .Z(n353) );
  GTECH_NOT U436 ( .A(n100), .Z(n356) );
  GTECH_NOT U437 ( .A(n357), .Z(n355) );
  GTECH_AND2 U438 ( .A(n358), .B(n274), .Z(controller_N61) );
  GTECH_XOR2 U439 ( .A(n357), .B(n100), .Z(n358) );
  GTECH_NAND2 U440 ( .A(n359), .B(n360), .Z(n357) );
  GTECH_NOT U441 ( .A(n97), .Z(n360) );
  GTECH_NOT U442 ( .A(n361), .Z(n359) );
  GTECH_AND2 U443 ( .A(n362), .B(n274), .Z(controller_N60) );
  GTECH_XOR2 U444 ( .A(n361), .B(n97), .Z(n362) );
  GTECH_NAND2 U445 ( .A(n363), .B(n364), .Z(n361) );
  GTECH_NOT U446 ( .A(n94), .Z(n364) );
  GTECH_NOT U447 ( .A(n365), .Z(n363) );
  GTECH_AND2 U448 ( .A(n366), .B(n274), .Z(controller_N59) );
  GTECH_XOR2 U449 ( .A(n365), .B(n94), .Z(n366) );
  GTECH_NAND2 U450 ( .A(n367), .B(n368), .Z(n365) );
  GTECH_NOT U451 ( .A(n91), .Z(n368) );
  GTECH_NOT U452 ( .A(n369), .Z(n367) );
  GTECH_AND2 U453 ( .A(n370), .B(n274), .Z(controller_N58) );
  GTECH_XOR2 U454 ( .A(n369), .B(n91), .Z(n370) );
  GTECH_NAND2 U455 ( .A(n371), .B(n372), .Z(n369) );
  GTECH_NOT U456 ( .A(n88), .Z(n372) );
  GTECH_NOT U457 ( .A(n373), .Z(n371) );
  GTECH_AND2 U458 ( .A(n374), .B(n274), .Z(controller_N57) );
  GTECH_XOR2 U459 ( .A(n373), .B(n88), .Z(n374) );
  GTECH_NAND2 U460 ( .A(n375), .B(n376), .Z(n373) );
  GTECH_NOT U461 ( .A(n85), .Z(n376) );
  GTECH_NOT U462 ( .A(n377), .Z(n375) );
  GTECH_AND2 U463 ( .A(n378), .B(n274), .Z(controller_N56) );
  GTECH_XOR2 U464 ( .A(n377), .B(n85), .Z(n378) );
  GTECH_NAND2 U465 ( .A(n379), .B(n380), .Z(n377) );
  GTECH_NOT U466 ( .A(n82), .Z(n380) );
  GTECH_NOT U467 ( .A(n381), .Z(n379) );
  GTECH_AND2 U468 ( .A(n382), .B(n274), .Z(controller_N55) );
  GTECH_XOR2 U469 ( .A(n381), .B(n82), .Z(n382) );
  GTECH_NAND3 U470 ( .A(n383), .B(n384), .C(n385), .Z(n381) );
  GTECH_NOT U471 ( .A(n79), .Z(n384) );
  GTECH_OAI22 U472 ( .A(n79), .B(n386), .C(n259), .D(n387), .Z(controller_N54)
         );
  GTECH_MUX2 U473 ( .A(n383), .B(n388), .S(n79), .Z(n387) );
  GTECH_NAND2 U474 ( .A(n385), .B(n383), .Z(n388) );
  GTECH_NOT U475 ( .A(n76), .Z(n383) );
  GTECH_NOT U476 ( .A(n274), .Z(n259) );
  GTECH_MUX2 U477 ( .A(controller_N52), .B(n389), .S(n76), .Z(controller_N53)
         );
  GTECH_AND2 U478 ( .A(n274), .B(n385), .Z(n389) );
  GTECH_NOT U479 ( .A(n73), .Z(n385) );
  GTECH_NOT U480 ( .A(n386), .Z(controller_N52) );
  GTECH_NAND2 U481 ( .A(n73), .B(n274), .Z(n386) );
  GTECH_OAI21 U482 ( .A(n390), .B(n391), .C(n197), .Z(n274) );
  GTECH_NAND8 U483 ( .A(n94), .B(n91), .C(n97), .D(n392), .E(n157), .F(n154), 
        .G(n160), .H(n393), .Z(n391) );
  GTECH_AND4 U484 ( .A(n151), .B(n148), .C(n145), .D(n142), .Z(n393) );
  GTECH_AND4 U485 ( .A(n88), .B(n85), .C(n82), .D(n193), .Z(n392) );
  GTECH_NAND8 U486 ( .A(n136), .B(n133), .C(n139), .D(n394), .E(n115), .F(n112), .G(n118), .H(n395), .Z(n390) );
  GTECH_AND4 U487 ( .A(n109), .B(n106), .C(n103), .D(n100), .Z(n395) );
  GTECH_AND4 U488 ( .A(n130), .B(n127), .C(n124), .D(n121), .Z(n394) );
  GTECH_AND2 U489 ( .A(controller_N95), .B(n194), .Z(controller_N102) );
  GTECH_NOT U490 ( .A(rst), .Z(n194) );
  GTECH_NAND2 U491 ( .A(n396), .B(n260), .Z(controller_N95) );
  GTECH_NAND3 U492 ( .A(n187), .B(n396), .C(n67), .Z(n260) );
  GTECH_NOT U493 ( .A(n163), .Z(n396) );
endmodule

