
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
         n10, n40, n43, n46, n49, n52, n55, n58, n61, n68, n72, n75, n78, n81,
         n84, n87, n90, n93, n96, n99, n102, n105, n108, n111, n114, n117,
         n120, n123, n126, n129, n132, n135, n138, n141, n144, n147, n150,
         n153, n156, n159, n162, n165, n184, n187, n190, n191, n29, n30, n194,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294,
         n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309, n310, n311, n312, n313, n314, n315, n316,
         n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, n327,
         n328, n329, n330, n331, n332, n333, n334, n335, n336, n337, n338,
         n339, n340, n341, n342, n343, n344, n345, n346, n347, n348, n349,
         n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, n360,
         n361, n362, n363, n364, n365, n366, n367, n368, n369, n370, n371,
         n372, n373, n374, n375, n376, n377, n378, n379, n380, n381, n382,
         n383, n384, n385, n386, n387, n388, n389, n390, n391, n392, n393,
         n394;
  wire   [7:0] A;

  GTECH_FJK3S controller_count_reg_31_ ( .J(n30), .K(n30), .TI(controller_N83), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_31_), .QN(n194) );
  GTECH_FJK3S controller_count_reg_30_ ( .J(n30), .K(n30), .TI(controller_N82), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_30_), .QN(n190) );
  GTECH_FJK3 controller_start_reg ( .J(n30), .K(controller_N97), .CP(clk), 
        .CD(n29), .SD(n191), .Q(controller_start), .QN(n187) );
  GTECH_FJK3S controller_state_reg_0_ ( .J(n30), .K(n30), .TI(controller_N93), 
        .TE(controller_N95), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_state_0_), .QN(n184) );
  GTECH_FJK1S controller_add_cmd_reg ( .J(n30), .K(n30), .TI(controller_N91), 
        .TE(controller_N102), .CP(clk), .Q(add_cmd), .QN(n8) );
  GTECH_FJK3S shifter_add_temp_reg ( .J(n30), .K(n30), .TI(shifter_N24), .TE(
        shifter_N23), .CP(clk), .CD(n191), .SD(n29), .Q(shifter_add_temp) );
  GTECH_FJK3S shifter_temp_reg_4_ ( .J(n30), .K(n30), .TI(shifter_N10), .TE(
        shifter_N22), .CP(clk), .CD(n191), .SD(n29), .Q(shifter_temp_4_) );
  GTECH_FJK3S shifter_temp_reg_3_ ( .J(n30), .K(n30), .TI(shifter_N9), .TE(
        shifter_N22), .CP(clk), .CD(n191), .SD(n29), .Q(shifter_temp_3_) );
  GTECH_FJK3S shifter_temp_reg_2_ ( .J(n30), .K(n30), .TI(shifter_N8), .TE(
        shifter_N22), .CP(clk), .CD(n191), .SD(n29), .Q(shifter_temp_2_) );
  GTECH_FJK3S shifter_temp_reg_1_ ( .J(n30), .K(n30), .TI(shifter_N7), .TE(
        shifter_N22), .CP(clk), .CD(n191), .SD(n29), .Q(shifter_temp_1_) );
  GTECH_FJK3S shifter_temp_reg_0_ ( .J(n30), .K(n30), .TI(shifter_N6), .TE(
        shifter_N22), .CP(clk), .CD(n191), .SD(n29), .Q(lsb), .QN(n165) );
  GTECH_FJK3S controller_state_reg_2_ ( .J(n30), .K(n30), .TI(controller_N96), 
        .TE(controller_N95), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_state_2_), .QN(n162) );
  GTECH_FJK3S controller_count_reg_29_ ( .J(n30), .K(n30), .TI(controller_N81), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_29_), .QN(n159) );
  GTECH_FJK3S controller_count_reg_28_ ( .J(n30), .K(n30), .TI(controller_N80), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_28_), .QN(n156) );
  GTECH_FJK3S controller_count_reg_27_ ( .J(n30), .K(n30), .TI(controller_N79), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_27_), .QN(n153) );
  GTECH_FJK3S controller_count_reg_26_ ( .J(n30), .K(n30), .TI(controller_N78), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_26_), .QN(n150) );
  GTECH_FJK3S controller_count_reg_25_ ( .J(n30), .K(n30), .TI(controller_N77), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_25_), .QN(n147) );
  GTECH_FJK3S controller_count_reg_24_ ( .J(n30), .K(n30), .TI(controller_N76), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_24_), .QN(n144) );
  GTECH_FJK3S controller_count_reg_23_ ( .J(n30), .K(n30), .TI(controller_N75), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_23_), .QN(n141) );
  GTECH_FJK3S controller_count_reg_22_ ( .J(n30), .K(n30), .TI(controller_N74), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_22_), .QN(n138) );
  GTECH_FJK3S controller_count_reg_21_ ( .J(n30), .K(n30), .TI(controller_N73), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_21_), .QN(n135) );
  GTECH_FJK3S controller_count_reg_20_ ( .J(n30), .K(n30), .TI(controller_N72), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_20_), .QN(n132) );
  GTECH_FJK3S controller_count_reg_19_ ( .J(n30), .K(n30), .TI(controller_N71), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_19_), .QN(n129) );
  GTECH_FJK3S controller_count_reg_18_ ( .J(n30), .K(n30), .TI(controller_N70), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_18_), .QN(n126) );
  GTECH_FJK3S controller_count_reg_17_ ( .J(n30), .K(n30), .TI(controller_N69), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_17_), .QN(n123) );
  GTECH_FJK3S controller_count_reg_16_ ( .J(n30), .K(n30), .TI(controller_N68), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_16_), .QN(n120) );
  GTECH_FJK3S controller_count_reg_15_ ( .J(n30), .K(n30), .TI(controller_N67), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_15_), .QN(n117) );
  GTECH_FJK3S controller_count_reg_14_ ( .J(n30), .K(n30), .TI(controller_N66), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_14_), .QN(n114) );
  GTECH_FJK3S controller_count_reg_13_ ( .J(n30), .K(n30), .TI(controller_N65), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_13_), .QN(n111) );
  GTECH_FJK3S controller_count_reg_12_ ( .J(n30), .K(n30), .TI(controller_N64), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_12_), .QN(n108) );
  GTECH_FJK3S controller_count_reg_11_ ( .J(n30), .K(n30), .TI(controller_N63), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_11_), .QN(n105) );
  GTECH_FJK3S controller_count_reg_10_ ( .J(n30), .K(n30), .TI(controller_N62), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_10_), .QN(n102) );
  GTECH_FJK3S controller_count_reg_9_ ( .J(n30), .K(n30), .TI(controller_N61), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_9_), .QN(n99) );
  GTECH_FJK3S controller_count_reg_8_ ( .J(n30), .K(n30), .TI(controller_N60), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_8_), .QN(n96) );
  GTECH_FJK3S controller_count_reg_7_ ( .J(n30), .K(n30), .TI(controller_N59), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_7_), .QN(n93) );
  GTECH_FJK3S controller_count_reg_6_ ( .J(n30), .K(n30), .TI(controller_N58), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_6_), .QN(n90) );
  GTECH_FJK3S controller_count_reg_5_ ( .J(n30), .K(n30), .TI(controller_N57), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_5_), .QN(n87) );
  GTECH_FJK3S controller_count_reg_4_ ( .J(n30), .K(n30), .TI(controller_N56), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_4_), .QN(n84) );
  GTECH_FJK3S controller_count_reg_3_ ( .J(n30), .K(n30), .TI(controller_N55), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_3_), .QN(n81) );
  GTECH_FJK3S controller_count_reg_2_ ( .J(n30), .K(n30), .TI(controller_N54), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_2_), .QN(n78) );
  GTECH_FJK3S controller_count_reg_1_ ( .J(n30), .K(n30), .TI(controller_N53), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_1_), .QN(n75) );
  GTECH_FJK3S controller_count_reg_0_ ( .J(n30), .K(n30), .TI(controller_N52), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_0_), .QN(n72) );
  GTECH_FJK1S controller_shift_cmd_reg ( .J(n30), .K(n30), .TI(controller_N98), 
        .TE(controller_N102), .CP(clk), .Q(n9) );
  GTECH_FJK3S controller_state_reg_1_ ( .J(n30), .K(n30), .TI(controller_N94), 
        .TE(controller_N95), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_state_1_), .QN(n68) );
  GTECH_FJK3S controller_out_cmd_reg ( .J(n30), .K(n30), .TI(controller_N92), 
        .TE(controller_N95), .CP(clk), .CD(n191), .SD(n29), .Q(out_cmd) );
  GTECH_FJK1S controller_load_cmd_reg ( .J(n30), .K(n30), .TI(controller_N90), 
        .TE(controller_N102), .CP(clk), .Q(load_cmd), .QN(n10) );
  GTECH_FJK3S shifter_temp_reg_8_ ( .J(n30), .K(n30), .TI(shifter_N14), .TE(
        shifter_N22), .CP(clk), .CD(n191), .SD(n29), .Q(A[0]), .QN(n61) );
  GTECH_FJK3S shifter_temp_reg_15_ ( .J(n30), .K(n30), .TI(shifter_N21), .TE(
        shifter_N22), .CP(clk), .CD(n191), .SD(n29), .Q(A[7]), .QN(n58) );
  GTECH_FJK3S shifter_temp_reg_14_ ( .J(n30), .K(n30), .TI(shifter_N20), .TE(
        shifter_N22), .CP(clk), .CD(n191), .SD(n29), .Q(A[6]), .QN(n55) );
  GTECH_FJK3S shifter_temp_reg_13_ ( .J(n30), .K(n30), .TI(shifter_N19), .TE(
        shifter_N22), .CP(clk), .CD(n191), .SD(n29), .Q(A[5]), .QN(n52) );
  GTECH_FJK3S shifter_temp_reg_12_ ( .J(n30), .K(n30), .TI(shifter_N18), .TE(
        shifter_N22), .CP(clk), .CD(n191), .SD(n29), .Q(A[4]), .QN(n49) );
  GTECH_FJK3S shifter_temp_reg_11_ ( .J(n30), .K(n30), .TI(shifter_N17), .TE(
        shifter_N22), .CP(clk), .CD(n191), .SD(n29), .Q(A[3]), .QN(n46) );
  GTECH_FJK3S shifter_temp_reg_10_ ( .J(n30), .K(n30), .TI(shifter_N16), .TE(
        shifter_N22), .CP(clk), .CD(n191), .SD(n29), .Q(A[2]), .QN(n43) );
  GTECH_FJK3S shifter_temp_reg_9_ ( .J(n30), .K(n30), .TI(shifter_N15), .TE(
        shifter_N22), .CP(clk), .CD(n191), .SD(n29), .Q(A[1]), .QN(n40) );
  GTECH_FJK3S shifter_temp_reg_7_ ( .J(n30), .K(n30), .TI(shifter_N13), .TE(
        shifter_N22), .CP(clk), .CD(n191), .SD(n29), .Q(shifter_temp_7_) );
  GTECH_FJK3S shifter_temp_reg_6_ ( .J(n30), .K(n30), .TI(shifter_N12), .TE(
        shifter_N22), .CP(clk), .CD(n191), .SD(n29), .Q(shifter_temp_6_) );
  GTECH_FJK3S shifter_temp_reg_5_ ( .J(n30), .K(n30), .TI(shifter_N11), .TE(
        shifter_N22), .CP(clk), .CD(n191), .SD(n29), .Q(shifter_temp_5_) );
  GTECH_ZERO U212 ( .Z(n30) );
  GTECH_ONE U213 ( .Z(n29) );
  GTECH_OAI2N2 U214 ( .A(n196), .B(n197), .C(Q[3]), .D(n198), .Z(shifter_N9)
         );
  GTECH_NOT U215 ( .A(shifter_temp_4_), .Z(n197) );
  GTECH_OAI2N2 U216 ( .A(n196), .B(n199), .C(Q[2]), .D(n198), .Z(shifter_N8)
         );
  GTECH_NOT U217 ( .A(shifter_temp_3_), .Z(n199) );
  GTECH_OAI2N2 U218 ( .A(n196), .B(n200), .C(Q[1]), .D(n198), .Z(shifter_N7)
         );
  GTECH_NOT U219 ( .A(shifter_temp_2_), .Z(n200) );
  GTECH_OAI2N2 U220 ( .A(n196), .B(n201), .C(Q[0]), .D(n198), .Z(shifter_N6)
         );
  GTECH_NOT U221 ( .A(shifter_temp_1_), .Z(n201) );
  GTECH_NOT U222 ( .A(n202), .Z(shifter_N24) );
  GTECH_NAND2 U223 ( .A(n202), .B(n203), .Z(shifter_N23) );
  GTECH_NAND2 U224 ( .A(n10), .B(n204), .Z(n202) );
  GTECH_NOT U225 ( .A(n8), .Z(n204) );
  GTECH_NAND2 U226 ( .A(n196), .B(n10), .Z(shifter_N22) );
  GTECH_AND2 U227 ( .A(n205), .B(n206), .Z(shifter_N21) );
  GTECH_OAI22 U228 ( .A(n207), .B(n208), .C(n58), .D(n209), .Z(n206) );
  GTECH_NOT U229 ( .A(n210), .Z(n209) );
  GTECH_OAI22 U230 ( .A(n58), .B(n211), .C(n212), .D(n203), .Z(shifter_N20) );
  GTECH_OA21 U231 ( .A(n58), .B(n210), .C(n213), .Z(n212) );
  GTECH_MUX2 U232 ( .A(n214), .B(n215), .S(n207), .Z(n213) );
  GTECH_NAND2 U233 ( .A(n58), .B(D[7]), .Z(n215) );
  GTECH_XNOR2 U234 ( .A(n58), .B(D[7]), .Z(n214) );
  GTECH_NAND2 U235 ( .A(n207), .B(n208), .Z(n210) );
  GTECH_NOT U236 ( .A(D[7]), .Z(n208) );
  GTECH_AND2 U237 ( .A(n216), .B(n217), .Z(n207) );
  GTECH_OR_NOT U238 ( .A(n55), .B(D[6]), .Z(n217) );
  GTECH_OAI21 U239 ( .A(D[6]), .B(n218), .C(n219), .Z(n216) );
  GTECH_OAI22 U240 ( .A(n55), .B(n211), .C(n220), .D(n203), .Z(shifter_N19) );
  GTECH_XOR3 U241 ( .A(n55), .B(D[6]), .C(n219), .Z(n220) );
  GTECH_OAI21 U242 ( .A(n52), .B(n221), .C(n222), .Z(n219) );
  GTECH_OAI21 U243 ( .A(D[5]), .B(n223), .C(n224), .Z(n222) );
  GTECH_NOT U244 ( .A(D[5]), .Z(n221) );
  GTECH_OAI22 U245 ( .A(n52), .B(n211), .C(n225), .D(n203), .Z(shifter_N18) );
  GTECH_XOR3 U246 ( .A(n52), .B(D[5]), .C(n224), .Z(n225) );
  GTECH_OAI21 U247 ( .A(n49), .B(n226), .C(n227), .Z(n224) );
  GTECH_OAI21 U248 ( .A(D[4]), .B(n228), .C(n229), .Z(n227) );
  GTECH_NOT U249 ( .A(D[4]), .Z(n226) );
  GTECH_OAI22 U250 ( .A(n49), .B(n211), .C(n230), .D(n203), .Z(shifter_N17) );
  GTECH_XOR3 U251 ( .A(n49), .B(D[4]), .C(n229), .Z(n230) );
  GTECH_OAI21 U252 ( .A(n46), .B(n231), .C(n232), .Z(n229) );
  GTECH_OAI21 U253 ( .A(D[3]), .B(n233), .C(n234), .Z(n232) );
  GTECH_NOT U254 ( .A(D[3]), .Z(n231) );
  GTECH_OAI22 U255 ( .A(n46), .B(n211), .C(n235), .D(n203), .Z(shifter_N16) );
  GTECH_XOR3 U256 ( .A(n46), .B(D[3]), .C(n234), .Z(n235) );
  GTECH_OAI21 U257 ( .A(n43), .B(n236), .C(n237), .Z(n234) );
  GTECH_OAI21 U258 ( .A(D[2]), .B(n238), .C(n239), .Z(n237) );
  GTECH_NOT U259 ( .A(D[2]), .Z(n236) );
  GTECH_OAI22 U260 ( .A(n43), .B(n211), .C(n240), .D(n203), .Z(shifter_N15) );
  GTECH_XOR3 U261 ( .A(n43), .B(D[2]), .C(n239), .Z(n240) );
  GTECH_OAI21 U262 ( .A(n40), .B(n241), .C(n242), .Z(n239) );
  GTECH_OAI21 U263 ( .A(D[1]), .B(n243), .C(n244), .Z(n242) );
  GTECH_NOT U264 ( .A(D[1]), .Z(n241) );
  GTECH_OAI22 U265 ( .A(n40), .B(n211), .C(n203), .D(n245), .Z(shifter_N14) );
  GTECH_XOR3 U266 ( .A(n40), .B(D[1]), .C(n244), .Z(n245) );
  GTECH_NOT U267 ( .A(n246), .Z(n244) );
  GTECH_NAND2 U268 ( .A(D[0]), .B(n247), .Z(n246) );
  GTECH_AO21 U269 ( .A(Q[7]), .B(n198), .C(n248), .Z(shifter_N13) );
  GTECH_OAI2N2 U270 ( .A(n61), .B(n211), .C(n249), .D(n205), .Z(n248) );
  GTECH_NOT U271 ( .A(n203), .Z(n205) );
  GTECH_XNOR2 U272 ( .A(n61), .B(D[0]), .Z(n249) );
  GTECH_OAI2N2 U273 ( .A(n196), .B(n250), .C(Q[6]), .D(n198), .Z(shifter_N12)
         );
  GTECH_NOT U274 ( .A(shifter_temp_7_), .Z(n250) );
  GTECH_OAI2N2 U275 ( .A(n196), .B(n251), .C(Q[5]), .D(n198), .Z(shifter_N11)
         );
  GTECH_NOT U276 ( .A(shifter_temp_6_), .Z(n251) );
  GTECH_OAI2N2 U277 ( .A(n196), .B(n252), .C(Q[4]), .D(n198), .Z(shifter_N10)
         );
  GTECH_NOT U278 ( .A(n10), .Z(n198) );
  GTECH_NOT U279 ( .A(shifter_temp_5_), .Z(n252) );
  GTECH_NOT U280 ( .A(n253), .Z(n196) );
  GTECH_NAND2 U281 ( .A(n203), .B(n211), .Z(n253) );
  GTECH_NAND4 U282 ( .A(n9), .B(n8), .C(n10), .D(n254), .Z(n211) );
  GTECH_NOT U283 ( .A(shifter_add_temp), .Z(n254) );
  GTECH_NAND4 U284 ( .A(shifter_add_temp), .B(n9), .C(n8), .D(n10), .Z(n203)
         );
  GTECH_AND2 U285 ( .A(out_cmd), .B(n243), .Z(out[9]) );
  GTECH_NOT U286 ( .A(n40), .Z(n243) );
  GTECH_AND2 U287 ( .A(out_cmd), .B(n247), .Z(out[8]) );
  GTECH_NOT U288 ( .A(n61), .Z(n247) );
  GTECH_AND2 U289 ( .A(out_cmd), .B(shifter_temp_7_), .Z(out[7]) );
  GTECH_AND2 U290 ( .A(out_cmd), .B(shifter_temp_6_), .Z(out[6]) );
  GTECH_AND2 U291 ( .A(out_cmd), .B(shifter_temp_5_), .Z(out[5]) );
  GTECH_AND2 U292 ( .A(out_cmd), .B(shifter_temp_4_), .Z(out[4]) );
  GTECH_AND2 U293 ( .A(out_cmd), .B(shifter_temp_3_), .Z(out[3]) );
  GTECH_AND2 U294 ( .A(out_cmd), .B(shifter_temp_2_), .Z(out[2]) );
  GTECH_AND2 U295 ( .A(out_cmd), .B(shifter_temp_1_), .Z(out[1]) );
  GTECH_AND2 U296 ( .A(out_cmd), .B(n255), .Z(out[15]) );
  GTECH_NOT U297 ( .A(n58), .Z(n255) );
  GTECH_AND2 U298 ( .A(out_cmd), .B(n218), .Z(out[14]) );
  GTECH_NOT U299 ( .A(n55), .Z(n218) );
  GTECH_AND2 U300 ( .A(out_cmd), .B(n223), .Z(out[13]) );
  GTECH_NOT U301 ( .A(n52), .Z(n223) );
  GTECH_AND2 U302 ( .A(out_cmd), .B(n228), .Z(out[12]) );
  GTECH_NOT U303 ( .A(n49), .Z(n228) );
  GTECH_AND2 U304 ( .A(out_cmd), .B(n233), .Z(out[11]) );
  GTECH_NOT U305 ( .A(n46), .Z(n233) );
  GTECH_AND2 U306 ( .A(out_cmd), .B(n238), .Z(out[10]) );
  GTECH_NOT U307 ( .A(n43), .Z(n238) );
  GTECH_AND2 U308 ( .A(out_cmd), .B(n256), .Z(out[0]) );
  GTECH_AND2 U309 ( .A(controller_N98), .B(n257), .Z(controller_N97) );
  GTECH_NOT U310 ( .A(n258), .Z(controller_N98) );
  GTECH_OAI21 U311 ( .A(n259), .B(n256), .C(n260), .Z(controller_N96) );
  GTECH_OAI21 U312 ( .A(n257), .B(n258), .C(n261), .Z(controller_N94) );
  GTECH_AND2 U313 ( .A(n262), .B(n263), .Z(n261) );
  GTECH_NAND3 U314 ( .A(n184), .B(n256), .C(n264), .Z(n262) );
  GTECH_AND3 U315 ( .A(n162), .B(n184), .C(n265), .Z(controller_N93) );
  GTECH_MUX2 U316 ( .A(n256), .B(n266), .S(n68), .Z(n265) );
  GTECH_NOT U317 ( .A(n187), .Z(n266) );
  GTECH_NOT U318 ( .A(n165), .Z(n256) );
  GTECH_AND4 U319 ( .A(n187), .B(n162), .C(n68), .D(n184), .Z(controller_N92)
         );
  GTECH_NOT U320 ( .A(n260), .Z(controller_N91) );
  GTECH_NAND2 U321 ( .A(n264), .B(n267), .Z(n260) );
  GTECH_NOT U322 ( .A(n259), .Z(n264) );
  GTECH_NAND2 U323 ( .A(n162), .B(n268), .Z(n259) );
  GTECH_NOT U324 ( .A(n68), .Z(n268) );
  GTECH_NOT U325 ( .A(n263), .Z(controller_N90) );
  GTECH_NAND3 U326 ( .A(n68), .B(n267), .C(n162), .Z(n263) );
  GTECH_NOT U327 ( .A(n184), .Z(n267) );
  GTECH_OA21 U328 ( .A(n190), .B(n269), .C(n270), .Z(controller_N83) );
  GTECH_NOT U329 ( .A(n194), .Z(n270) );
  GTECH_AND_NOT U330 ( .A(n271), .B(n272), .Z(controller_N82) );
  GTECH_XNOR2 U331 ( .A(n190), .B(n269), .Z(n272) );
  GTECH_NAND2 U332 ( .A(n273), .B(n274), .Z(n269) );
  GTECH_NOT U333 ( .A(n159), .Z(n274) );
  GTECH_AND2 U334 ( .A(n275), .B(n271), .Z(controller_N81) );
  GTECH_XNOR2 U335 ( .A(n159), .B(n273), .Z(n275) );
  GTECH_NOT U336 ( .A(n276), .Z(n273) );
  GTECH_NAND2 U337 ( .A(n277), .B(n278), .Z(n276) );
  GTECH_NOT U338 ( .A(n156), .Z(n278) );
  GTECH_AND2 U339 ( .A(n279), .B(n271), .Z(controller_N80) );
  GTECH_XNOR2 U340 ( .A(n156), .B(n277), .Z(n279) );
  GTECH_NOT U341 ( .A(n280), .Z(n277) );
  GTECH_NAND2 U342 ( .A(n281), .B(n282), .Z(n280) );
  GTECH_NOT U343 ( .A(n153), .Z(n282) );
  GTECH_AND2 U344 ( .A(n283), .B(n271), .Z(controller_N79) );
  GTECH_XNOR2 U345 ( .A(n153), .B(n281), .Z(n283) );
  GTECH_NOT U346 ( .A(n284), .Z(n281) );
  GTECH_NAND2 U347 ( .A(n285), .B(n286), .Z(n284) );
  GTECH_NOT U348 ( .A(n150), .Z(n286) );
  GTECH_AND2 U349 ( .A(n287), .B(n271), .Z(controller_N78) );
  GTECH_XNOR2 U350 ( .A(n150), .B(n285), .Z(n287) );
  GTECH_NOT U351 ( .A(n288), .Z(n285) );
  GTECH_NAND2 U352 ( .A(n289), .B(n290), .Z(n288) );
  GTECH_NOT U353 ( .A(n147), .Z(n290) );
  GTECH_AND2 U354 ( .A(n291), .B(n271), .Z(controller_N77) );
  GTECH_XNOR2 U355 ( .A(n147), .B(n289), .Z(n291) );
  GTECH_NOT U356 ( .A(n292), .Z(n289) );
  GTECH_NAND2 U357 ( .A(n293), .B(n294), .Z(n292) );
  GTECH_NOT U358 ( .A(n144), .Z(n294) );
  GTECH_AND2 U359 ( .A(n295), .B(n271), .Z(controller_N76) );
  GTECH_XNOR2 U360 ( .A(n144), .B(n293), .Z(n295) );
  GTECH_NOT U361 ( .A(n296), .Z(n293) );
  GTECH_NAND2 U362 ( .A(n297), .B(n298), .Z(n296) );
  GTECH_NOT U363 ( .A(n141), .Z(n298) );
  GTECH_AND2 U364 ( .A(n299), .B(n271), .Z(controller_N75) );
  GTECH_XNOR2 U365 ( .A(n141), .B(n297), .Z(n299) );
  GTECH_NOT U366 ( .A(n300), .Z(n297) );
  GTECH_NAND2 U367 ( .A(n301), .B(n302), .Z(n300) );
  GTECH_NOT U368 ( .A(n138), .Z(n302) );
  GTECH_AND2 U369 ( .A(n303), .B(n271), .Z(controller_N74) );
  GTECH_XNOR2 U370 ( .A(n138), .B(n301), .Z(n303) );
  GTECH_NOT U371 ( .A(n304), .Z(n301) );
  GTECH_NAND2 U372 ( .A(n305), .B(n306), .Z(n304) );
  GTECH_NOT U373 ( .A(n135), .Z(n306) );
  GTECH_AND2 U374 ( .A(n307), .B(n271), .Z(controller_N73) );
  GTECH_XNOR2 U375 ( .A(n135), .B(n305), .Z(n307) );
  GTECH_NOT U376 ( .A(n308), .Z(n305) );
  GTECH_NAND2 U377 ( .A(n309), .B(n310), .Z(n308) );
  GTECH_NOT U378 ( .A(n132), .Z(n310) );
  GTECH_AND2 U379 ( .A(n311), .B(n271), .Z(controller_N72) );
  GTECH_XNOR2 U380 ( .A(n132), .B(n309), .Z(n311) );
  GTECH_NOT U381 ( .A(n312), .Z(n309) );
  GTECH_NAND2 U382 ( .A(n313), .B(n314), .Z(n312) );
  GTECH_NOT U383 ( .A(n129), .Z(n314) );
  GTECH_AND2 U384 ( .A(n315), .B(n271), .Z(controller_N71) );
  GTECH_XNOR2 U385 ( .A(n129), .B(n313), .Z(n315) );
  GTECH_NOT U386 ( .A(n316), .Z(n313) );
  GTECH_NAND2 U387 ( .A(n317), .B(n318), .Z(n316) );
  GTECH_NOT U388 ( .A(n126), .Z(n318) );
  GTECH_AND2 U389 ( .A(n319), .B(n271), .Z(controller_N70) );
  GTECH_XNOR2 U390 ( .A(n126), .B(n317), .Z(n319) );
  GTECH_NOT U391 ( .A(n320), .Z(n317) );
  GTECH_NAND2 U392 ( .A(n321), .B(n322), .Z(n320) );
  GTECH_NOT U393 ( .A(n123), .Z(n322) );
  GTECH_AND2 U394 ( .A(n323), .B(n271), .Z(controller_N69) );
  GTECH_XNOR2 U395 ( .A(n123), .B(n321), .Z(n323) );
  GTECH_NOT U396 ( .A(n324), .Z(n321) );
  GTECH_NAND2 U397 ( .A(n325), .B(n326), .Z(n324) );
  GTECH_NOT U398 ( .A(n120), .Z(n326) );
  GTECH_AND2 U399 ( .A(n327), .B(n271), .Z(controller_N68) );
  GTECH_XNOR2 U400 ( .A(n120), .B(n325), .Z(n327) );
  GTECH_NOT U401 ( .A(n328), .Z(n325) );
  GTECH_NAND2 U402 ( .A(n329), .B(n330), .Z(n328) );
  GTECH_NOT U403 ( .A(n117), .Z(n330) );
  GTECH_AND2 U404 ( .A(n331), .B(n271), .Z(controller_N67) );
  GTECH_XNOR2 U405 ( .A(n117), .B(n329), .Z(n331) );
  GTECH_NOT U406 ( .A(n332), .Z(n329) );
  GTECH_NAND2 U407 ( .A(n333), .B(n334), .Z(n332) );
  GTECH_NOT U408 ( .A(n114), .Z(n334) );
  GTECH_AND2 U409 ( .A(n335), .B(n271), .Z(controller_N66) );
  GTECH_XNOR2 U410 ( .A(n114), .B(n333), .Z(n335) );
  GTECH_NOT U411 ( .A(n336), .Z(n333) );
  GTECH_NAND2 U412 ( .A(n337), .B(n338), .Z(n336) );
  GTECH_NOT U413 ( .A(n111), .Z(n338) );
  GTECH_AND2 U414 ( .A(n339), .B(n271), .Z(controller_N65) );
  GTECH_XNOR2 U415 ( .A(n111), .B(n337), .Z(n339) );
  GTECH_NOT U416 ( .A(n340), .Z(n337) );
  GTECH_NAND2 U417 ( .A(n341), .B(n342), .Z(n340) );
  GTECH_NOT U418 ( .A(n108), .Z(n342) );
  GTECH_AND2 U419 ( .A(n343), .B(n271), .Z(controller_N64) );
  GTECH_XNOR2 U420 ( .A(n108), .B(n341), .Z(n343) );
  GTECH_NOT U421 ( .A(n344), .Z(n341) );
  GTECH_NAND2 U422 ( .A(n345), .B(n346), .Z(n344) );
  GTECH_NOT U423 ( .A(n105), .Z(n346) );
  GTECH_AND2 U424 ( .A(n347), .B(n271), .Z(controller_N63) );
  GTECH_XNOR2 U425 ( .A(n105), .B(n345), .Z(n347) );
  GTECH_NOT U426 ( .A(n348), .Z(n345) );
  GTECH_NAND2 U427 ( .A(n349), .B(n350), .Z(n348) );
  GTECH_NOT U428 ( .A(n102), .Z(n350) );
  GTECH_AND2 U429 ( .A(n351), .B(n271), .Z(controller_N62) );
  GTECH_XNOR2 U430 ( .A(n102), .B(n349), .Z(n351) );
  GTECH_NOT U431 ( .A(n352), .Z(n349) );
  GTECH_NAND2 U432 ( .A(n353), .B(n354), .Z(n352) );
  GTECH_NOT U433 ( .A(n99), .Z(n354) );
  GTECH_AND2 U434 ( .A(n355), .B(n271), .Z(controller_N61) );
  GTECH_XNOR2 U435 ( .A(n99), .B(n353), .Z(n355) );
  GTECH_NOT U436 ( .A(n356), .Z(n353) );
  GTECH_NAND2 U437 ( .A(n357), .B(n358), .Z(n356) );
  GTECH_NOT U438 ( .A(n96), .Z(n358) );
  GTECH_AND2 U439 ( .A(n359), .B(n271), .Z(controller_N60) );
  GTECH_XNOR2 U440 ( .A(n96), .B(n357), .Z(n359) );
  GTECH_NOT U441 ( .A(n360), .Z(n357) );
  GTECH_NAND2 U442 ( .A(n361), .B(n362), .Z(n360) );
  GTECH_NOT U443 ( .A(n93), .Z(n362) );
  GTECH_AND2 U444 ( .A(n363), .B(n271), .Z(controller_N59) );
  GTECH_XNOR2 U445 ( .A(n93), .B(n361), .Z(n363) );
  GTECH_NOT U446 ( .A(n364), .Z(n361) );
  GTECH_NAND2 U447 ( .A(n365), .B(n366), .Z(n364) );
  GTECH_NOT U448 ( .A(n90), .Z(n366) );
  GTECH_AND2 U449 ( .A(n367), .B(n271), .Z(controller_N58) );
  GTECH_XNOR2 U450 ( .A(n90), .B(n365), .Z(n367) );
  GTECH_NOT U451 ( .A(n368), .Z(n365) );
  GTECH_NAND2 U452 ( .A(n369), .B(n370), .Z(n368) );
  GTECH_NOT U453 ( .A(n87), .Z(n370) );
  GTECH_AND2 U454 ( .A(n371), .B(n271), .Z(controller_N57) );
  GTECH_XNOR2 U455 ( .A(n87), .B(n369), .Z(n371) );
  GTECH_NOT U456 ( .A(n372), .Z(n369) );
  GTECH_NAND2 U457 ( .A(n373), .B(n374), .Z(n372) );
  GTECH_NOT U458 ( .A(n84), .Z(n374) );
  GTECH_AND2 U459 ( .A(n375), .B(n271), .Z(controller_N56) );
  GTECH_XNOR2 U460 ( .A(n84), .B(n373), .Z(n375) );
  GTECH_NOT U461 ( .A(n376), .Z(n373) );
  GTECH_NAND2 U462 ( .A(n377), .B(n378), .Z(n376) );
  GTECH_NOT U463 ( .A(n81), .Z(n378) );
  GTECH_AND2 U464 ( .A(n379), .B(n271), .Z(controller_N55) );
  GTECH_XNOR2 U465 ( .A(n81), .B(n377), .Z(n379) );
  GTECH_NOT U466 ( .A(n380), .Z(n377) );
  GTECH_NAND3 U467 ( .A(n381), .B(n382), .C(n383), .Z(n380) );
  GTECH_NOT U468 ( .A(n78), .Z(n382) );
  GTECH_OAI22 U469 ( .A(n78), .B(n384), .C(n257), .D(n385), .Z(controller_N54)
         );
  GTECH_MUX2 U470 ( .A(n381), .B(n386), .S(n78), .Z(n385) );
  GTECH_NAND2 U471 ( .A(n383), .B(n381), .Z(n386) );
  GTECH_NOT U472 ( .A(n75), .Z(n381) );
  GTECH_NOT U473 ( .A(n271), .Z(n257) );
  GTECH_MUX2 U474 ( .A(controller_N52), .B(n387), .S(n75), .Z(controller_N53)
         );
  GTECH_AND2 U475 ( .A(n271), .B(n383), .Z(n387) );
  GTECH_NOT U476 ( .A(n72), .Z(n383) );
  GTECH_NOT U477 ( .A(n384), .Z(controller_N52) );
  GTECH_NAND2 U478 ( .A(n72), .B(n271), .Z(n384) );
  GTECH_OAI21 U479 ( .A(n388), .B(n389), .C(n194), .Z(n271) );
  GTECH_NAND8 U480 ( .A(n96), .B(n93), .C(n99), .D(n390), .E(n159), .F(n156), 
        .G(n190), .H(n391), .Z(n389) );
  GTECH_AND4 U481 ( .A(n153), .B(n150), .C(n147), .D(n144), .Z(n391) );
  GTECH_AND4 U482 ( .A(n90), .B(n87), .C(n84), .D(n81), .Z(n390) );
  GTECH_NAND8 U483 ( .A(n138), .B(n135), .C(n141), .D(n392), .E(n117), .F(n114), .G(n120), .H(n393), .Z(n388) );
  GTECH_AND4 U484 ( .A(n111), .B(n108), .C(n105), .D(n102), .Z(n393) );
  GTECH_AND4 U485 ( .A(n132), .B(n129), .C(n126), .D(n123), .Z(n392) );
  GTECH_AND2 U486 ( .A(controller_N95), .B(n191), .Z(controller_N102) );
  GTECH_NOT U487 ( .A(rst), .Z(n191) );
  GTECH_NAND2 U488 ( .A(n394), .B(n258), .Z(controller_N95) );
  GTECH_NAND3 U489 ( .A(n184), .B(n394), .C(n68), .Z(n258) );
  GTECH_NOT U490 ( .A(n162), .Z(n394) );
endmodule

