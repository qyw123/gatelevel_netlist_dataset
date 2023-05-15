
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
         n383, n384, n385, n386, n387, n388, n389, n390, n391, n392, n393;
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
  GTECH_NOT U230 ( .A(n203), .Z(n205) );
  GTECH_OAI22 U231 ( .A(n58), .B(n211), .C(n212), .D(n203), .Z(shifter_N20) );
  GTECH_OA21 U232 ( .A(n58), .B(n210), .C(n213), .Z(n212) );
  GTECH_MUX2 U233 ( .A(n214), .B(n215), .S(n207), .Z(n213) );
  GTECH_NAND2 U234 ( .A(n58), .B(D[7]), .Z(n215) );
  GTECH_XOR2 U235 ( .A(n208), .B(n58), .Z(n214) );
  GTECH_NAND2 U236 ( .A(n207), .B(n208), .Z(n210) );
  GTECH_NOT U237 ( .A(D[7]), .Z(n208) );
  GTECH_AND2 U238 ( .A(n216), .B(n217), .Z(n207) );
  GTECH_OR_NOT U239 ( .A(n55), .B(D[6]), .Z(n217) );
  GTECH_OAI21 U240 ( .A(D[6]), .B(n218), .C(n219), .Z(n216) );
  GTECH_OAI22 U241 ( .A(n55), .B(n211), .C(n203), .D(n220), .Z(shifter_N19) );
  GTECH_ADD_ABC U242 ( .A(D[6]), .B(n219), .C(n55), .S(n220) );
  GTECH_OAI21 U243 ( .A(n52), .B(n221), .C(n222), .Z(n219) );
  GTECH_OAI21 U244 ( .A(D[5]), .B(n223), .C(n224), .Z(n222) );
  GTECH_NOT U245 ( .A(D[5]), .Z(n221) );
  GTECH_OAI22 U246 ( .A(n52), .B(n211), .C(n203), .D(n225), .Z(shifter_N18) );
  GTECH_ADD_ABC U247 ( .A(D[5]), .B(n224), .C(n52), .S(n225) );
  GTECH_OAI21 U248 ( .A(n49), .B(n226), .C(n227), .Z(n224) );
  GTECH_OAI21 U249 ( .A(D[4]), .B(n228), .C(n229), .Z(n227) );
  GTECH_NOT U250 ( .A(D[4]), .Z(n226) );
  GTECH_OAI22 U251 ( .A(n49), .B(n211), .C(n203), .D(n230), .Z(shifter_N17) );
  GTECH_ADD_ABC U252 ( .A(D[4]), .B(n229), .C(n49), .S(n230) );
  GTECH_OAI21 U253 ( .A(n46), .B(n231), .C(n232), .Z(n229) );
  GTECH_OAI21 U254 ( .A(D[3]), .B(n233), .C(n234), .Z(n232) );
  GTECH_NOT U255 ( .A(D[3]), .Z(n231) );
  GTECH_OAI22 U256 ( .A(n46), .B(n211), .C(n203), .D(n235), .Z(shifter_N16) );
  GTECH_ADD_ABC U257 ( .A(D[3]), .B(n234), .C(n46), .S(n235) );
  GTECH_OAI21 U258 ( .A(n43), .B(n236), .C(n237), .Z(n234) );
  GTECH_OAI21 U259 ( .A(D[2]), .B(n238), .C(n239), .Z(n237) );
  GTECH_NOT U260 ( .A(D[2]), .Z(n236) );
  GTECH_OAI22 U261 ( .A(n43), .B(n211), .C(n203), .D(n240), .Z(shifter_N15) );
  GTECH_ADD_ABC U262 ( .A(D[2]), .B(n239), .C(n43), .S(n240) );
  GTECH_OAI21 U263 ( .A(n241), .B(n242), .C(n243), .Z(n239) );
  GTECH_OR_NOT U264 ( .A(n40), .B(D[1]), .Z(n243) );
  GTECH_AND_NOT U265 ( .A(n40), .B(D[1]), .Z(n241) );
  GTECH_OAI22 U266 ( .A(n40), .B(n211), .C(n203), .D(n244), .Z(shifter_N14) );
  GTECH_XNOR3 U267 ( .A(n40), .B(D[1]), .C(n242), .Z(n244) );
  GTECH_NAND2 U268 ( .A(D[0]), .B(n245), .Z(n242) );
  GTECH_AO21 U269 ( .A(Q[7]), .B(n198), .C(n246), .Z(shifter_N13) );
  GTECH_OAI22 U270 ( .A(n203), .B(n247), .C(n61), .D(n211), .Z(n246) );
  GTECH_XOR2 U271 ( .A(D[0]), .B(n61), .Z(n247) );
  GTECH_OAI2N2 U272 ( .A(n196), .B(n248), .C(Q[6]), .D(n198), .Z(shifter_N12)
         );
  GTECH_NOT U273 ( .A(shifter_temp_7_), .Z(n248) );
  GTECH_OAI2N2 U274 ( .A(n196), .B(n249), .C(Q[5]), .D(n198), .Z(shifter_N11)
         );
  GTECH_NOT U275 ( .A(shifter_temp_6_), .Z(n249) );
  GTECH_OAI2N2 U276 ( .A(n196), .B(n250), .C(Q[4]), .D(n198), .Z(shifter_N10)
         );
  GTECH_NOT U277 ( .A(n10), .Z(n198) );
  GTECH_NOT U278 ( .A(shifter_temp_5_), .Z(n250) );
  GTECH_NOT U279 ( .A(n251), .Z(n196) );
  GTECH_NAND2 U280 ( .A(n203), .B(n211), .Z(n251) );
  GTECH_NAND4 U281 ( .A(n9), .B(n8), .C(n10), .D(n252), .Z(n211) );
  GTECH_NOT U282 ( .A(shifter_add_temp), .Z(n252) );
  GTECH_NAND4 U283 ( .A(shifter_add_temp), .B(n9), .C(n8), .D(n10), .Z(n203)
         );
  GTECH_AND2 U284 ( .A(out_cmd), .B(n253), .Z(out[9]) );
  GTECH_NOT U285 ( .A(n40), .Z(n253) );
  GTECH_AND2 U286 ( .A(out_cmd), .B(n245), .Z(out[8]) );
  GTECH_NOT U287 ( .A(n61), .Z(n245) );
  GTECH_AND2 U288 ( .A(out_cmd), .B(shifter_temp_7_), .Z(out[7]) );
  GTECH_AND2 U289 ( .A(out_cmd), .B(shifter_temp_6_), .Z(out[6]) );
  GTECH_AND2 U290 ( .A(out_cmd), .B(shifter_temp_5_), .Z(out[5]) );
  GTECH_AND2 U291 ( .A(out_cmd), .B(shifter_temp_4_), .Z(out[4]) );
  GTECH_AND2 U292 ( .A(out_cmd), .B(shifter_temp_3_), .Z(out[3]) );
  GTECH_AND2 U293 ( .A(out_cmd), .B(shifter_temp_2_), .Z(out[2]) );
  GTECH_AND2 U294 ( .A(out_cmd), .B(shifter_temp_1_), .Z(out[1]) );
  GTECH_AND2 U295 ( .A(out_cmd), .B(n254), .Z(out[15]) );
  GTECH_NOT U296 ( .A(n58), .Z(n254) );
  GTECH_AND2 U297 ( .A(out_cmd), .B(n218), .Z(out[14]) );
  GTECH_NOT U298 ( .A(n55), .Z(n218) );
  GTECH_AND2 U299 ( .A(out_cmd), .B(n223), .Z(out[13]) );
  GTECH_NOT U300 ( .A(n52), .Z(n223) );
  GTECH_AND2 U301 ( .A(out_cmd), .B(n228), .Z(out[12]) );
  GTECH_NOT U302 ( .A(n49), .Z(n228) );
  GTECH_AND2 U303 ( .A(out_cmd), .B(n233), .Z(out[11]) );
  GTECH_NOT U304 ( .A(n46), .Z(n233) );
  GTECH_AND2 U305 ( .A(out_cmd), .B(n238), .Z(out[10]) );
  GTECH_NOT U306 ( .A(n43), .Z(n238) );
  GTECH_AND2 U307 ( .A(out_cmd), .B(n255), .Z(out[0]) );
  GTECH_AND2 U308 ( .A(controller_N98), .B(n256), .Z(controller_N97) );
  GTECH_NOT U309 ( .A(n257), .Z(controller_N98) );
  GTECH_OAI21 U310 ( .A(n258), .B(n255), .C(n259), .Z(controller_N96) );
  GTECH_OAI21 U311 ( .A(n256), .B(n257), .C(n260), .Z(controller_N94) );
  GTECH_AND2 U312 ( .A(n261), .B(n262), .Z(n260) );
  GTECH_NAND3 U313 ( .A(n184), .B(n255), .C(n263), .Z(n261) );
  GTECH_AND3 U314 ( .A(n162), .B(n184), .C(n264), .Z(controller_N93) );
  GTECH_MUX2 U315 ( .A(n255), .B(n265), .S(n68), .Z(n264) );
  GTECH_NOT U316 ( .A(n187), .Z(n265) );
  GTECH_NOT U317 ( .A(n165), .Z(n255) );
  GTECH_AND4 U318 ( .A(n187), .B(n162), .C(n68), .D(n184), .Z(controller_N92)
         );
  GTECH_NOT U319 ( .A(n259), .Z(controller_N91) );
  GTECH_NAND2 U320 ( .A(n263), .B(n266), .Z(n259) );
  GTECH_NOT U321 ( .A(n258), .Z(n263) );
  GTECH_NAND2 U322 ( .A(n162), .B(n267), .Z(n258) );
  GTECH_NOT U323 ( .A(n68), .Z(n267) );
  GTECH_NOT U324 ( .A(n262), .Z(controller_N90) );
  GTECH_NAND3 U325 ( .A(n68), .B(n266), .C(n162), .Z(n262) );
  GTECH_NOT U326 ( .A(n184), .Z(n266) );
  GTECH_OA21 U327 ( .A(n190), .B(n268), .C(n269), .Z(controller_N83) );
  GTECH_NOT U328 ( .A(n194), .Z(n269) );
  GTECH_AND2 U329 ( .A(n270), .B(n271), .Z(controller_N82) );
  GTECH_XOR2 U330 ( .A(n268), .B(n190), .Z(n270) );
  GTECH_NAND2 U331 ( .A(n272), .B(n273), .Z(n268) );
  GTECH_NOT U332 ( .A(n159), .Z(n273) );
  GTECH_NOT U333 ( .A(n274), .Z(n272) );
  GTECH_AND2 U334 ( .A(n275), .B(n271), .Z(controller_N81) );
  GTECH_XOR2 U335 ( .A(n274), .B(n159), .Z(n275) );
  GTECH_NAND2 U336 ( .A(n276), .B(n277), .Z(n274) );
  GTECH_NOT U337 ( .A(n156), .Z(n277) );
  GTECH_NOT U338 ( .A(n278), .Z(n276) );
  GTECH_AND2 U339 ( .A(n279), .B(n271), .Z(controller_N80) );
  GTECH_XOR2 U340 ( .A(n278), .B(n156), .Z(n279) );
  GTECH_NAND2 U341 ( .A(n280), .B(n281), .Z(n278) );
  GTECH_NOT U342 ( .A(n153), .Z(n281) );
  GTECH_NOT U343 ( .A(n282), .Z(n280) );
  GTECH_AND2 U344 ( .A(n283), .B(n271), .Z(controller_N79) );
  GTECH_XOR2 U345 ( .A(n282), .B(n153), .Z(n283) );
  GTECH_NAND2 U346 ( .A(n284), .B(n285), .Z(n282) );
  GTECH_NOT U347 ( .A(n150), .Z(n285) );
  GTECH_NOT U348 ( .A(n286), .Z(n284) );
  GTECH_AND2 U349 ( .A(n287), .B(n271), .Z(controller_N78) );
  GTECH_XOR2 U350 ( .A(n286), .B(n150), .Z(n287) );
  GTECH_NAND2 U351 ( .A(n288), .B(n289), .Z(n286) );
  GTECH_NOT U352 ( .A(n147), .Z(n289) );
  GTECH_NOT U353 ( .A(n290), .Z(n288) );
  GTECH_AND2 U354 ( .A(n291), .B(n271), .Z(controller_N77) );
  GTECH_XOR2 U355 ( .A(n290), .B(n147), .Z(n291) );
  GTECH_NAND2 U356 ( .A(n292), .B(n293), .Z(n290) );
  GTECH_NOT U357 ( .A(n144), .Z(n293) );
  GTECH_NOT U358 ( .A(n294), .Z(n292) );
  GTECH_AND2 U359 ( .A(n295), .B(n271), .Z(controller_N76) );
  GTECH_XOR2 U360 ( .A(n294), .B(n144), .Z(n295) );
  GTECH_NAND2 U361 ( .A(n296), .B(n297), .Z(n294) );
  GTECH_NOT U362 ( .A(n141), .Z(n297) );
  GTECH_NOT U363 ( .A(n298), .Z(n296) );
  GTECH_AND2 U364 ( .A(n299), .B(n271), .Z(controller_N75) );
  GTECH_XOR2 U365 ( .A(n298), .B(n141), .Z(n299) );
  GTECH_NAND2 U366 ( .A(n300), .B(n301), .Z(n298) );
  GTECH_NOT U367 ( .A(n138), .Z(n301) );
  GTECH_NOT U368 ( .A(n302), .Z(n300) );
  GTECH_AND2 U369 ( .A(n303), .B(n271), .Z(controller_N74) );
  GTECH_XOR2 U370 ( .A(n302), .B(n138), .Z(n303) );
  GTECH_NAND2 U371 ( .A(n304), .B(n305), .Z(n302) );
  GTECH_NOT U372 ( .A(n135), .Z(n305) );
  GTECH_NOT U373 ( .A(n306), .Z(n304) );
  GTECH_AND2 U374 ( .A(n307), .B(n271), .Z(controller_N73) );
  GTECH_XOR2 U375 ( .A(n306), .B(n135), .Z(n307) );
  GTECH_NAND2 U376 ( .A(n308), .B(n309), .Z(n306) );
  GTECH_NOT U377 ( .A(n132), .Z(n309) );
  GTECH_NOT U378 ( .A(n310), .Z(n308) );
  GTECH_AND2 U379 ( .A(n311), .B(n271), .Z(controller_N72) );
  GTECH_XOR2 U380 ( .A(n310), .B(n132), .Z(n311) );
  GTECH_NAND2 U381 ( .A(n312), .B(n313), .Z(n310) );
  GTECH_NOT U382 ( .A(n129), .Z(n313) );
  GTECH_NOT U383 ( .A(n314), .Z(n312) );
  GTECH_AND2 U384 ( .A(n315), .B(n271), .Z(controller_N71) );
  GTECH_XOR2 U385 ( .A(n314), .B(n129), .Z(n315) );
  GTECH_NAND2 U386 ( .A(n316), .B(n317), .Z(n314) );
  GTECH_NOT U387 ( .A(n126), .Z(n317) );
  GTECH_NOT U388 ( .A(n318), .Z(n316) );
  GTECH_AND2 U389 ( .A(n319), .B(n271), .Z(controller_N70) );
  GTECH_XOR2 U390 ( .A(n318), .B(n126), .Z(n319) );
  GTECH_NAND2 U391 ( .A(n320), .B(n321), .Z(n318) );
  GTECH_NOT U392 ( .A(n123), .Z(n321) );
  GTECH_NOT U393 ( .A(n322), .Z(n320) );
  GTECH_AND2 U394 ( .A(n323), .B(n271), .Z(controller_N69) );
  GTECH_XOR2 U395 ( .A(n322), .B(n123), .Z(n323) );
  GTECH_NAND2 U396 ( .A(n324), .B(n325), .Z(n322) );
  GTECH_NOT U397 ( .A(n120), .Z(n325) );
  GTECH_NOT U398 ( .A(n326), .Z(n324) );
  GTECH_AND2 U399 ( .A(n327), .B(n271), .Z(controller_N68) );
  GTECH_XOR2 U400 ( .A(n326), .B(n120), .Z(n327) );
  GTECH_NAND2 U401 ( .A(n328), .B(n329), .Z(n326) );
  GTECH_NOT U402 ( .A(n117), .Z(n329) );
  GTECH_NOT U403 ( .A(n330), .Z(n328) );
  GTECH_AND2 U404 ( .A(n331), .B(n271), .Z(controller_N67) );
  GTECH_XOR2 U405 ( .A(n330), .B(n117), .Z(n331) );
  GTECH_NAND2 U406 ( .A(n332), .B(n333), .Z(n330) );
  GTECH_NOT U407 ( .A(n114), .Z(n333) );
  GTECH_NOT U408 ( .A(n334), .Z(n332) );
  GTECH_AND2 U409 ( .A(n335), .B(n271), .Z(controller_N66) );
  GTECH_XOR2 U410 ( .A(n334), .B(n114), .Z(n335) );
  GTECH_NAND2 U411 ( .A(n336), .B(n337), .Z(n334) );
  GTECH_NOT U412 ( .A(n111), .Z(n337) );
  GTECH_NOT U413 ( .A(n338), .Z(n336) );
  GTECH_AND2 U414 ( .A(n339), .B(n271), .Z(controller_N65) );
  GTECH_XOR2 U415 ( .A(n338), .B(n111), .Z(n339) );
  GTECH_NAND2 U416 ( .A(n340), .B(n341), .Z(n338) );
  GTECH_NOT U417 ( .A(n108), .Z(n341) );
  GTECH_NOT U418 ( .A(n342), .Z(n340) );
  GTECH_AND2 U419 ( .A(n343), .B(n271), .Z(controller_N64) );
  GTECH_XOR2 U420 ( .A(n342), .B(n108), .Z(n343) );
  GTECH_NAND2 U421 ( .A(n344), .B(n345), .Z(n342) );
  GTECH_NOT U422 ( .A(n105), .Z(n345) );
  GTECH_NOT U423 ( .A(n346), .Z(n344) );
  GTECH_AND2 U424 ( .A(n347), .B(n271), .Z(controller_N63) );
  GTECH_XOR2 U425 ( .A(n346), .B(n105), .Z(n347) );
  GTECH_NAND2 U426 ( .A(n348), .B(n349), .Z(n346) );
  GTECH_NOT U427 ( .A(n102), .Z(n349) );
  GTECH_NOT U428 ( .A(n350), .Z(n348) );
  GTECH_AND2 U429 ( .A(n351), .B(n271), .Z(controller_N62) );
  GTECH_XOR2 U430 ( .A(n350), .B(n102), .Z(n351) );
  GTECH_NAND2 U431 ( .A(n352), .B(n353), .Z(n350) );
  GTECH_NOT U432 ( .A(n99), .Z(n353) );
  GTECH_NOT U433 ( .A(n354), .Z(n352) );
  GTECH_AND2 U434 ( .A(n355), .B(n271), .Z(controller_N61) );
  GTECH_XOR2 U435 ( .A(n354), .B(n99), .Z(n355) );
  GTECH_NAND2 U436 ( .A(n356), .B(n357), .Z(n354) );
  GTECH_NOT U437 ( .A(n96), .Z(n357) );
  GTECH_NOT U438 ( .A(n358), .Z(n356) );
  GTECH_AND2 U439 ( .A(n359), .B(n271), .Z(controller_N60) );
  GTECH_XOR2 U440 ( .A(n358), .B(n96), .Z(n359) );
  GTECH_NAND2 U441 ( .A(n360), .B(n361), .Z(n358) );
  GTECH_NOT U442 ( .A(n93), .Z(n361) );
  GTECH_NOT U443 ( .A(n362), .Z(n360) );
  GTECH_AND2 U444 ( .A(n363), .B(n271), .Z(controller_N59) );
  GTECH_XOR2 U445 ( .A(n362), .B(n93), .Z(n363) );
  GTECH_NAND2 U446 ( .A(n364), .B(n365), .Z(n362) );
  GTECH_NOT U447 ( .A(n90), .Z(n365) );
  GTECH_NOT U448 ( .A(n366), .Z(n364) );
  GTECH_AND2 U449 ( .A(n367), .B(n271), .Z(controller_N58) );
  GTECH_XOR2 U450 ( .A(n366), .B(n90), .Z(n367) );
  GTECH_NAND2 U451 ( .A(n368), .B(n369), .Z(n366) );
  GTECH_NOT U452 ( .A(n87), .Z(n369) );
  GTECH_NOT U453 ( .A(n370), .Z(n368) );
  GTECH_AND2 U454 ( .A(n371), .B(n271), .Z(controller_N57) );
  GTECH_XOR2 U455 ( .A(n370), .B(n87), .Z(n371) );
  GTECH_NAND2 U456 ( .A(n372), .B(n373), .Z(n370) );
  GTECH_NOT U457 ( .A(n84), .Z(n373) );
  GTECH_NOT U458 ( .A(n374), .Z(n372) );
  GTECH_AND2 U459 ( .A(n375), .B(n271), .Z(controller_N56) );
  GTECH_XOR2 U460 ( .A(n374), .B(n84), .Z(n375) );
  GTECH_NAND2 U461 ( .A(n376), .B(n377), .Z(n374) );
  GTECH_NOT U462 ( .A(n81), .Z(n377) );
  GTECH_NOT U463 ( .A(n378), .Z(n376) );
  GTECH_AND2 U464 ( .A(n379), .B(n271), .Z(controller_N55) );
  GTECH_XOR2 U465 ( .A(n378), .B(n81), .Z(n379) );
  GTECH_NAND3 U466 ( .A(n380), .B(n381), .C(n382), .Z(n378) );
  GTECH_NOT U467 ( .A(n78), .Z(n381) );
  GTECH_OAI22 U468 ( .A(n78), .B(n383), .C(n256), .D(n384), .Z(controller_N54)
         );
  GTECH_MUX2 U469 ( .A(n380), .B(n385), .S(n78), .Z(n384) );
  GTECH_NAND2 U470 ( .A(n382), .B(n380), .Z(n385) );
  GTECH_NOT U471 ( .A(n75), .Z(n380) );
  GTECH_NOT U472 ( .A(n271), .Z(n256) );
  GTECH_MUX2 U473 ( .A(controller_N52), .B(n386), .S(n75), .Z(controller_N53)
         );
  GTECH_AND2 U474 ( .A(n271), .B(n382), .Z(n386) );
  GTECH_NOT U475 ( .A(n72), .Z(n382) );
  GTECH_NOT U476 ( .A(n383), .Z(controller_N52) );
  GTECH_NAND2 U477 ( .A(n72), .B(n271), .Z(n383) );
  GTECH_OAI21 U478 ( .A(n387), .B(n388), .C(n194), .Z(n271) );
  GTECH_NAND8 U479 ( .A(n96), .B(n93), .C(n99), .D(n389), .E(n159), .F(n156), 
        .G(n190), .H(n390), .Z(n388) );
  GTECH_AND4 U480 ( .A(n153), .B(n150), .C(n147), .D(n144), .Z(n390) );
  GTECH_AND4 U481 ( .A(n90), .B(n87), .C(n84), .D(n81), .Z(n389) );
  GTECH_NAND8 U482 ( .A(n138), .B(n135), .C(n141), .D(n391), .E(n117), .F(n114), .G(n120), .H(n392), .Z(n387) );
  GTECH_AND4 U483 ( .A(n111), .B(n108), .C(n105), .D(n102), .Z(n392) );
  GTECH_AND4 U484 ( .A(n132), .B(n129), .C(n126), .D(n123), .Z(n391) );
  GTECH_AND2 U485 ( .A(controller_N95), .B(n191), .Z(controller_N102) );
  GTECH_NOT U486 ( .A(rst), .Z(n191) );
  GTECH_NAND2 U487 ( .A(n393), .B(n257), .Z(controller_N95) );
  GTECH_NAND3 U488 ( .A(n184), .B(n393), .C(n68), .Z(n257) );
  GTECH_NOT U489 ( .A(n162), .Z(n393) );
endmodule

