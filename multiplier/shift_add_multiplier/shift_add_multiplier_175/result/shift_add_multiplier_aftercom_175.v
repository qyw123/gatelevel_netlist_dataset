
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
         n10, n39, n42, n45, n48, n51, n54, n57, n60, n67, n71, n74, n77, n80,
         n83, n86, n89, n92, n95, n98, n101, n104, n107, n110, n113, n116,
         n119, n122, n125, n128, n131, n134, n137, n140, n143, n146, n149,
         n152, n155, n158, n161, n164, n183, n186, n189, n190, n28, n29, n193,
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
         n371, n372, n373, n374, n375, n376, n377, n378, n379, n380, n381,
         n382, n383, n384, n385;
  wire   [7:0] A;

  GTECH_FJK3S controller_count_reg_31_ ( .J(n29), .K(n29), .TI(controller_N83), 
        .TE(controller_N98), .CP(clk), .CD(n190), .SD(n28), .Q(
        controller_count_31_), .QN(n193) );
  GTECH_FJK3S controller_count_reg_30_ ( .J(n29), .K(n29), .TI(controller_N82), 
        .TE(controller_N98), .CP(clk), .CD(n190), .SD(n28), .Q(
        controller_count_30_), .QN(n189) );
  GTECH_FJK3 controller_start_reg ( .J(n29), .K(controller_N97), .CP(clk), 
        .CD(n28), .SD(n190), .Q(controller_start), .QN(n186) );
  GTECH_FJK3S controller_state_reg_0_ ( .J(n29), .K(n29), .TI(controller_N93), 
        .TE(controller_N95), .CP(clk), .CD(n190), .SD(n28), .Q(
        controller_state_0_), .QN(n183) );
  GTECH_FJK1S controller_add_cmd_reg ( .J(n29), .K(n29), .TI(controller_N91), 
        .TE(controller_N102), .CP(clk), .Q(add_cmd), .QN(n8) );
  GTECH_FJK3S shifter_add_temp_reg ( .J(n29), .K(n29), .TI(shifter_N24), .TE(
        shifter_N23), .CP(clk), .CD(n190), .SD(n28), .Q(shifter_add_temp) );
  GTECH_FJK3S shifter_temp_reg_4_ ( .J(n29), .K(n29), .TI(shifter_N10), .TE(
        shifter_N22), .CP(clk), .CD(n190), .SD(n28), .Q(shifter_temp_4_) );
  GTECH_FJK3S shifter_temp_reg_3_ ( .J(n29), .K(n29), .TI(shifter_N9), .TE(
        shifter_N22), .CP(clk), .CD(n190), .SD(n28), .Q(shifter_temp_3_) );
  GTECH_FJK3S shifter_temp_reg_2_ ( .J(n29), .K(n29), .TI(shifter_N8), .TE(
        shifter_N22), .CP(clk), .CD(n190), .SD(n28), .Q(shifter_temp_2_) );
  GTECH_FJK3S shifter_temp_reg_1_ ( .J(n29), .K(n29), .TI(shifter_N7), .TE(
        shifter_N22), .CP(clk), .CD(n190), .SD(n28), .Q(shifter_temp_1_) );
  GTECH_FJK3S shifter_temp_reg_0_ ( .J(n29), .K(n29), .TI(shifter_N6), .TE(
        shifter_N22), .CP(clk), .CD(n190), .SD(n28), .Q(lsb), .QN(n164) );
  GTECH_FJK3S controller_state_reg_2_ ( .J(n29), .K(n29), .TI(controller_N96), 
        .TE(controller_N95), .CP(clk), .CD(n190), .SD(n28), .Q(
        controller_state_2_), .QN(n161) );
  GTECH_FJK3S controller_count_reg_29_ ( .J(n29), .K(n29), .TI(controller_N81), 
        .TE(controller_N98), .CP(clk), .CD(n190), .SD(n28), .Q(
        controller_count_29_), .QN(n158) );
  GTECH_FJK3S controller_count_reg_28_ ( .J(n29), .K(n29), .TI(controller_N80), 
        .TE(controller_N98), .CP(clk), .CD(n190), .SD(n28), .Q(
        controller_count_28_), .QN(n155) );
  GTECH_FJK3S controller_count_reg_27_ ( .J(n29), .K(n29), .TI(controller_N79), 
        .TE(controller_N98), .CP(clk), .CD(n190), .SD(n28), .Q(
        controller_count_27_), .QN(n152) );
  GTECH_FJK3S controller_count_reg_26_ ( .J(n29), .K(n29), .TI(controller_N78), 
        .TE(controller_N98), .CP(clk), .CD(n190), .SD(n28), .Q(
        controller_count_26_), .QN(n149) );
  GTECH_FJK3S controller_count_reg_25_ ( .J(n29), .K(n29), .TI(controller_N77), 
        .TE(controller_N98), .CP(clk), .CD(n190), .SD(n28), .Q(
        controller_count_25_), .QN(n146) );
  GTECH_FJK3S controller_count_reg_24_ ( .J(n29), .K(n29), .TI(controller_N76), 
        .TE(controller_N98), .CP(clk), .CD(n190), .SD(n28), .Q(
        controller_count_24_), .QN(n143) );
  GTECH_FJK3S controller_count_reg_23_ ( .J(n29), .K(n29), .TI(controller_N75), 
        .TE(controller_N98), .CP(clk), .CD(n190), .SD(n28), .Q(
        controller_count_23_), .QN(n140) );
  GTECH_FJK3S controller_count_reg_22_ ( .J(n29), .K(n29), .TI(controller_N74), 
        .TE(controller_N98), .CP(clk), .CD(n190), .SD(n28), .Q(
        controller_count_22_), .QN(n137) );
  GTECH_FJK3S controller_count_reg_21_ ( .J(n29), .K(n29), .TI(controller_N73), 
        .TE(controller_N98), .CP(clk), .CD(n190), .SD(n28), .Q(
        controller_count_21_), .QN(n134) );
  GTECH_FJK3S controller_count_reg_20_ ( .J(n29), .K(n29), .TI(controller_N72), 
        .TE(controller_N98), .CP(clk), .CD(n190), .SD(n28), .Q(
        controller_count_20_), .QN(n131) );
  GTECH_FJK3S controller_count_reg_19_ ( .J(n29), .K(n29), .TI(controller_N71), 
        .TE(controller_N98), .CP(clk), .CD(n190), .SD(n28), .Q(
        controller_count_19_), .QN(n128) );
  GTECH_FJK3S controller_count_reg_18_ ( .J(n29), .K(n29), .TI(controller_N70), 
        .TE(controller_N98), .CP(clk), .CD(n190), .SD(n28), .Q(
        controller_count_18_), .QN(n125) );
  GTECH_FJK3S controller_count_reg_17_ ( .J(n29), .K(n29), .TI(controller_N69), 
        .TE(controller_N98), .CP(clk), .CD(n190), .SD(n28), .Q(
        controller_count_17_), .QN(n122) );
  GTECH_FJK3S controller_count_reg_16_ ( .J(n29), .K(n29), .TI(controller_N68), 
        .TE(controller_N98), .CP(clk), .CD(n190), .SD(n28), .Q(
        controller_count_16_), .QN(n119) );
  GTECH_FJK3S controller_count_reg_15_ ( .J(n29), .K(n29), .TI(controller_N67), 
        .TE(controller_N98), .CP(clk), .CD(n190), .SD(n28), .Q(
        controller_count_15_), .QN(n116) );
  GTECH_FJK3S controller_count_reg_14_ ( .J(n29), .K(n29), .TI(controller_N66), 
        .TE(controller_N98), .CP(clk), .CD(n190), .SD(n28), .Q(
        controller_count_14_), .QN(n113) );
  GTECH_FJK3S controller_count_reg_13_ ( .J(n29), .K(n29), .TI(controller_N65), 
        .TE(controller_N98), .CP(clk), .CD(n190), .SD(n28), .Q(
        controller_count_13_), .QN(n110) );
  GTECH_FJK3S controller_count_reg_12_ ( .J(n29), .K(n29), .TI(controller_N64), 
        .TE(controller_N98), .CP(clk), .CD(n190), .SD(n28), .Q(
        controller_count_12_), .QN(n107) );
  GTECH_FJK3S controller_count_reg_11_ ( .J(n29), .K(n29), .TI(controller_N63), 
        .TE(controller_N98), .CP(clk), .CD(n190), .SD(n28), .Q(
        controller_count_11_), .QN(n104) );
  GTECH_FJK3S controller_count_reg_10_ ( .J(n29), .K(n29), .TI(controller_N62), 
        .TE(controller_N98), .CP(clk), .CD(n190), .SD(n28), .Q(
        controller_count_10_), .QN(n101) );
  GTECH_FJK3S controller_count_reg_9_ ( .J(n29), .K(n29), .TI(controller_N61), 
        .TE(controller_N98), .CP(clk), .CD(n190), .SD(n28), .Q(
        controller_count_9_), .QN(n98) );
  GTECH_FJK3S controller_count_reg_8_ ( .J(n29), .K(n29), .TI(controller_N60), 
        .TE(controller_N98), .CP(clk), .CD(n190), .SD(n28), .Q(
        controller_count_8_), .QN(n95) );
  GTECH_FJK3S controller_count_reg_7_ ( .J(n29), .K(n29), .TI(controller_N59), 
        .TE(controller_N98), .CP(clk), .CD(n190), .SD(n28), .Q(
        controller_count_7_), .QN(n92) );
  GTECH_FJK3S controller_count_reg_6_ ( .J(n29), .K(n29), .TI(controller_N58), 
        .TE(controller_N98), .CP(clk), .CD(n190), .SD(n28), .Q(
        controller_count_6_), .QN(n89) );
  GTECH_FJK3S controller_count_reg_5_ ( .J(n29), .K(n29), .TI(controller_N57), 
        .TE(controller_N98), .CP(clk), .CD(n190), .SD(n28), .Q(
        controller_count_5_), .QN(n86) );
  GTECH_FJK3S controller_count_reg_4_ ( .J(n29), .K(n29), .TI(controller_N56), 
        .TE(controller_N98), .CP(clk), .CD(n190), .SD(n28), .Q(
        controller_count_4_), .QN(n83) );
  GTECH_FJK3S controller_count_reg_3_ ( .J(n29), .K(n29), .TI(controller_N55), 
        .TE(controller_N98), .CP(clk), .CD(n190), .SD(n28), .Q(
        controller_count_3_), .QN(n80) );
  GTECH_FJK3S controller_count_reg_2_ ( .J(n29), .K(n29), .TI(controller_N54), 
        .TE(controller_N98), .CP(clk), .CD(n190), .SD(n28), .Q(
        controller_count_2_), .QN(n77) );
  GTECH_FJK3S controller_count_reg_1_ ( .J(n29), .K(n29), .TI(controller_N53), 
        .TE(controller_N98), .CP(clk), .CD(n190), .SD(n28), .Q(
        controller_count_1_), .QN(n74) );
  GTECH_FJK3S controller_count_reg_0_ ( .J(n29), .K(n29), .TI(controller_N52), 
        .TE(controller_N98), .CP(clk), .CD(n190), .SD(n28), .Q(
        controller_count_0_), .QN(n71) );
  GTECH_FJK1S controller_shift_cmd_reg ( .J(n29), .K(n29), .TI(controller_N98), 
        .TE(controller_N102), .CP(clk), .Q(n9) );
  GTECH_FJK3S controller_state_reg_1_ ( .J(n29), .K(n29), .TI(controller_N94), 
        .TE(controller_N95), .CP(clk), .CD(n190), .SD(n28), .Q(
        controller_state_1_), .QN(n67) );
  GTECH_FJK3S controller_out_cmd_reg ( .J(n29), .K(n29), .TI(controller_N92), 
        .TE(controller_N95), .CP(clk), .CD(n190), .SD(n28), .Q(out_cmd) );
  GTECH_FJK1S controller_load_cmd_reg ( .J(n29), .K(n29), .TI(controller_N90), 
        .TE(controller_N102), .CP(clk), .Q(load_cmd), .QN(n10) );
  GTECH_FJK3S shifter_temp_reg_8_ ( .J(n29), .K(n29), .TI(shifter_N14), .TE(
        shifter_N22), .CP(clk), .CD(n190), .SD(n28), .Q(A[0]), .QN(n60) );
  GTECH_FJK3S shifter_temp_reg_15_ ( .J(n29), .K(n29), .TI(shifter_N21), .TE(
        shifter_N22), .CP(clk), .CD(n190), .SD(n28), .Q(A[7]), .QN(n57) );
  GTECH_FJK3S shifter_temp_reg_14_ ( .J(n29), .K(n29), .TI(shifter_N20), .TE(
        shifter_N22), .CP(clk), .CD(n190), .SD(n28), .Q(A[6]), .QN(n54) );
  GTECH_FJK3S shifter_temp_reg_13_ ( .J(n29), .K(n29), .TI(shifter_N19), .TE(
        shifter_N22), .CP(clk), .CD(n190), .SD(n28), .Q(A[5]), .QN(n51) );
  GTECH_FJK3S shifter_temp_reg_12_ ( .J(n29), .K(n29), .TI(shifter_N18), .TE(
        shifter_N22), .CP(clk), .CD(n190), .SD(n28), .Q(A[4]), .QN(n48) );
  GTECH_FJK3S shifter_temp_reg_11_ ( .J(n29), .K(n29), .TI(shifter_N17), .TE(
        shifter_N22), .CP(clk), .CD(n190), .SD(n28), .Q(A[3]), .QN(n45) );
  GTECH_FJK3S shifter_temp_reg_10_ ( .J(n29), .K(n29), .TI(shifter_N16), .TE(
        shifter_N22), .CP(clk), .CD(n190), .SD(n28), .Q(A[2]), .QN(n42) );
  GTECH_FJK3S shifter_temp_reg_9_ ( .J(n29), .K(n29), .TI(shifter_N15), .TE(
        shifter_N22), .CP(clk), .CD(n190), .SD(n28), .Q(A[1]), .QN(n39) );
  GTECH_FJK3S shifter_temp_reg_7_ ( .J(n29), .K(n29), .TI(shifter_N13), .TE(
        shifter_N22), .CP(clk), .CD(n190), .SD(n28), .Q(shifter_temp_7_) );
  GTECH_FJK3S shifter_temp_reg_6_ ( .J(n29), .K(n29), .TI(shifter_N12), .TE(
        shifter_N22), .CP(clk), .CD(n190), .SD(n28), .Q(shifter_temp_6_) );
  GTECH_FJK3S shifter_temp_reg_5_ ( .J(n29), .K(n29), .TI(shifter_N11), .TE(
        shifter_N22), .CP(clk), .CD(n190), .SD(n28), .Q(shifter_temp_5_) );
  GTECH_ZERO U211 ( .Z(n29) );
  GTECH_ONE U212 ( .Z(n28) );
  GTECH_OAI2N2 U213 ( .A(n195), .B(n196), .C(Q[3]), .D(n197), .Z(shifter_N9)
         );
  GTECH_OAI2N2 U214 ( .A(n195), .B(n198), .C(Q[2]), .D(n197), .Z(shifter_N8)
         );
  GTECH_OAI2N2 U215 ( .A(n195), .B(n199), .C(Q[1]), .D(n197), .Z(shifter_N7)
         );
  GTECH_OAI2N2 U216 ( .A(n195), .B(n200), .C(Q[0]), .D(n197), .Z(shifter_N6)
         );
  GTECH_NOT U217 ( .A(n201), .Z(shifter_N24) );
  GTECH_NAND2 U218 ( .A(n201), .B(n202), .Z(shifter_N23) );
  GTECH_NAND2 U219 ( .A(n10), .B(n203), .Z(n201) );
  GTECH_NOT U220 ( .A(n8), .Z(n203) );
  GTECH_NAND2 U221 ( .A(n195), .B(n10), .Z(shifter_N22) );
  GTECH_AND_NOT U222 ( .A(n204), .B(n205), .Z(shifter_N21) );
  GTECH_OA22 U223 ( .A(n57), .B(n206), .C(n207), .D(n208), .Z(n205) );
  GTECH_NOT U224 ( .A(n209), .Z(n206) );
  GTECH_NOT U225 ( .A(n202), .Z(n204) );
  GTECH_OAI22 U226 ( .A(n57), .B(n210), .C(n211), .D(n202), .Z(shifter_N20) );
  GTECH_OA21 U227 ( .A(n57), .B(n209), .C(n212), .Z(n211) );
  GTECH_MUX2 U228 ( .A(n213), .B(n214), .S(n207), .Z(n212) );
  GTECH_NAND2 U229 ( .A(n57), .B(D[7]), .Z(n214) );
  GTECH_XOR2 U230 ( .A(n208), .B(n57), .Z(n213) );
  GTECH_NAND2 U231 ( .A(n207), .B(n208), .Z(n209) );
  GTECH_NOT U232 ( .A(D[7]), .Z(n208) );
  GTECH_AOI2N2 U233 ( .A(n215), .B(n216), .C(n54), .D(n217), .Z(n207) );
  GTECH_NOT U234 ( .A(D[6]), .Z(n217) );
  GTECH_OR_NOT U235 ( .A(D[6]), .B(n54), .Z(n216) );
  GTECH_OAI22 U236 ( .A(n54), .B(n210), .C(n218), .D(n202), .Z(shifter_N19) );
  GTECH_XOR3 U237 ( .A(n54), .B(D[6]), .C(n215), .Z(n218) );
  GTECH_OAI2N2 U238 ( .A(n51), .B(n219), .C(n220), .D(n221), .Z(n215) );
  GTECH_OR_NOT U239 ( .A(D[5]), .B(n51), .Z(n221) );
  GTECH_NOT U240 ( .A(D[5]), .Z(n219) );
  GTECH_OAI22 U241 ( .A(n51), .B(n210), .C(n222), .D(n202), .Z(shifter_N18) );
  GTECH_XOR3 U242 ( .A(n51), .B(D[5]), .C(n220), .Z(n222) );
  GTECH_OAI2N2 U243 ( .A(n48), .B(n223), .C(n224), .D(n225), .Z(n220) );
  GTECH_OR_NOT U244 ( .A(D[4]), .B(n48), .Z(n225) );
  GTECH_NOT U245 ( .A(D[4]), .Z(n223) );
  GTECH_OAI22 U246 ( .A(n48), .B(n210), .C(n226), .D(n202), .Z(shifter_N17) );
  GTECH_XOR3 U247 ( .A(n48), .B(D[4]), .C(n224), .Z(n226) );
  GTECH_OAI2N2 U248 ( .A(n45), .B(n227), .C(n228), .D(n229), .Z(n224) );
  GTECH_OR_NOT U249 ( .A(D[3]), .B(n45), .Z(n229) );
  GTECH_NOT U250 ( .A(D[3]), .Z(n227) );
  GTECH_OAI22 U251 ( .A(n45), .B(n210), .C(n230), .D(n202), .Z(shifter_N16) );
  GTECH_XOR3 U252 ( .A(n45), .B(D[3]), .C(n228), .Z(n230) );
  GTECH_OAI2N2 U253 ( .A(n42), .B(n231), .C(n232), .D(n233), .Z(n228) );
  GTECH_OR_NOT U254 ( .A(D[2]), .B(n42), .Z(n233) );
  GTECH_NOT U255 ( .A(D[2]), .Z(n231) );
  GTECH_OAI22 U256 ( .A(n42), .B(n210), .C(n234), .D(n202), .Z(shifter_N15) );
  GTECH_XOR3 U257 ( .A(n42), .B(D[2]), .C(n232), .Z(n234) );
  GTECH_OAI21 U258 ( .A(n235), .B(n236), .C(n237), .Z(n232) );
  GTECH_OR_NOT U259 ( .A(n39), .B(D[1]), .Z(n237) );
  GTECH_AND_NOT U260 ( .A(n39), .B(D[1]), .Z(n235) );
  GTECH_OAI22 U261 ( .A(n39), .B(n210), .C(n202), .D(n238), .Z(shifter_N14) );
  GTECH_XNOR3 U262 ( .A(D[1]), .B(n236), .C(n39), .Z(n238) );
  GTECH_NAND2 U263 ( .A(D[0]), .B(n239), .Z(n236) );
  GTECH_NOT U264 ( .A(n60), .Z(n239) );
  GTECH_AO21 U265 ( .A(Q[7]), .B(n197), .C(n240), .Z(shifter_N13) );
  GTECH_OAI22 U266 ( .A(n202), .B(n241), .C(n60), .D(n210), .Z(n240) );
  GTECH_XOR2 U267 ( .A(D[0]), .B(n60), .Z(n241) );
  GTECH_OAI2N2 U268 ( .A(n195), .B(n242), .C(Q[6]), .D(n197), .Z(shifter_N12)
         );
  GTECH_OAI2N2 U269 ( .A(n195), .B(n243), .C(Q[5]), .D(n197), .Z(shifter_N11)
         );
  GTECH_OAI2N2 U270 ( .A(n195), .B(n244), .C(Q[4]), .D(n197), .Z(shifter_N10)
         );
  GTECH_NOT U271 ( .A(n10), .Z(n197) );
  GTECH_NOT U272 ( .A(n245), .Z(n195) );
  GTECH_NAND2 U273 ( .A(n210), .B(n202), .Z(n245) );
  GTECH_NAND4 U274 ( .A(shifter_add_temp), .B(n9), .C(n8), .D(n10), .Z(n202)
         );
  GTECH_NAND4 U275 ( .A(n9), .B(n8), .C(n10), .D(n246), .Z(n210) );
  GTECH_NOT U276 ( .A(shifter_add_temp), .Z(n246) );
  GTECH_AND_NOT U277 ( .A(out_cmd), .B(n39), .Z(out[9]) );
  GTECH_AND_NOT U278 ( .A(out_cmd), .B(n60), .Z(out[8]) );
  GTECH_AND_NOT U279 ( .A(out_cmd), .B(n242), .Z(out[7]) );
  GTECH_NOT U280 ( .A(shifter_temp_7_), .Z(n242) );
  GTECH_AND_NOT U281 ( .A(out_cmd), .B(n243), .Z(out[6]) );
  GTECH_NOT U282 ( .A(shifter_temp_6_), .Z(n243) );
  GTECH_AND_NOT U283 ( .A(out_cmd), .B(n244), .Z(out[5]) );
  GTECH_NOT U284 ( .A(shifter_temp_5_), .Z(n244) );
  GTECH_AND_NOT U285 ( .A(out_cmd), .B(n196), .Z(out[4]) );
  GTECH_NOT U286 ( .A(shifter_temp_4_), .Z(n196) );
  GTECH_AND_NOT U287 ( .A(out_cmd), .B(n198), .Z(out[3]) );
  GTECH_NOT U288 ( .A(shifter_temp_3_), .Z(n198) );
  GTECH_AND_NOT U289 ( .A(out_cmd), .B(n199), .Z(out[2]) );
  GTECH_NOT U290 ( .A(shifter_temp_2_), .Z(n199) );
  GTECH_AND_NOT U291 ( .A(out_cmd), .B(n200), .Z(out[1]) );
  GTECH_NOT U292 ( .A(shifter_temp_1_), .Z(n200) );
  GTECH_AND_NOT U293 ( .A(out_cmd), .B(n57), .Z(out[15]) );
  GTECH_AND_NOT U294 ( .A(out_cmd), .B(n54), .Z(out[14]) );
  GTECH_AND_NOT U295 ( .A(out_cmd), .B(n51), .Z(out[13]) );
  GTECH_AND_NOT U296 ( .A(out_cmd), .B(n48), .Z(out[12]) );
  GTECH_AND_NOT U297 ( .A(out_cmd), .B(n45), .Z(out[11]) );
  GTECH_AND_NOT U298 ( .A(out_cmd), .B(n42), .Z(out[10]) );
  GTECH_AND_NOT U299 ( .A(out_cmd), .B(n164), .Z(out[0]) );
  GTECH_NOT U300 ( .A(rst), .Z(n190) );
  GTECH_AND_NOT U301 ( .A(controller_N98), .B(n247), .Z(controller_N97) );
  GTECH_NOT U302 ( .A(n248), .Z(controller_N98) );
  GTECH_OAI21 U303 ( .A(n249), .B(n250), .C(n251), .Z(controller_N96) );
  GTECH_OAI21 U304 ( .A(n252), .B(n248), .C(n253), .Z(controller_N94) );
  GTECH_OA21 U305 ( .A(n249), .B(n254), .C(n255), .Z(n253) );
  GTECH_NAND2 U306 ( .A(n183), .B(n250), .Z(n254) );
  GTECH_AND3 U307 ( .A(n161), .B(n183), .C(n256), .Z(controller_N93) );
  GTECH_MUX2 U308 ( .A(n250), .B(n257), .S(n67), .Z(n256) );
  GTECH_NOT U309 ( .A(n186), .Z(n257) );
  GTECH_NOT U310 ( .A(n164), .Z(n250) );
  GTECH_AND4 U311 ( .A(n186), .B(n161), .C(n67), .D(n183), .Z(controller_N92)
         );
  GTECH_NOT U312 ( .A(n251), .Z(controller_N91) );
  GTECH_NAND2 U313 ( .A(n258), .B(n259), .Z(n251) );
  GTECH_NOT U314 ( .A(n249), .Z(n258) );
  GTECH_NAND2 U315 ( .A(n161), .B(n260), .Z(n249) );
  GTECH_NOT U316 ( .A(n67), .Z(n260) );
  GTECH_NOT U317 ( .A(n255), .Z(controller_N90) );
  GTECH_NAND3 U318 ( .A(n67), .B(n259), .C(n161), .Z(n255) );
  GTECH_NOT U319 ( .A(n183), .Z(n259) );
  GTECH_OA21 U320 ( .A(n189), .B(n261), .C(n262), .Z(controller_N83) );
  GTECH_NOT U321 ( .A(n193), .Z(n262) );
  GTECH_AND_NOT U322 ( .A(n263), .B(n252), .Z(controller_N82) );
  GTECH_XOR2 U323 ( .A(n261), .B(n189), .Z(n263) );
  GTECH_NAND2 U324 ( .A(n264), .B(n265), .Z(n261) );
  GTECH_NOT U325 ( .A(n158), .Z(n265) );
  GTECH_NOT U326 ( .A(n266), .Z(n264) );
  GTECH_AND_NOT U327 ( .A(n267), .B(n252), .Z(controller_N81) );
  GTECH_XOR2 U328 ( .A(n266), .B(n158), .Z(n267) );
  GTECH_NAND2 U329 ( .A(n268), .B(n269), .Z(n266) );
  GTECH_NOT U330 ( .A(n155), .Z(n269) );
  GTECH_NOT U331 ( .A(n270), .Z(n268) );
  GTECH_AND_NOT U332 ( .A(n271), .B(n252), .Z(controller_N80) );
  GTECH_XOR2 U333 ( .A(n270), .B(n155), .Z(n271) );
  GTECH_NAND2 U334 ( .A(n272), .B(n273), .Z(n270) );
  GTECH_NOT U335 ( .A(n152), .Z(n273) );
  GTECH_NOT U336 ( .A(n274), .Z(n272) );
  GTECH_AND_NOT U337 ( .A(n275), .B(n252), .Z(controller_N79) );
  GTECH_XOR2 U338 ( .A(n274), .B(n152), .Z(n275) );
  GTECH_NAND2 U339 ( .A(n276), .B(n277), .Z(n274) );
  GTECH_NOT U340 ( .A(n149), .Z(n277) );
  GTECH_NOT U341 ( .A(n278), .Z(n276) );
  GTECH_AND_NOT U342 ( .A(n279), .B(n252), .Z(controller_N78) );
  GTECH_XOR2 U343 ( .A(n278), .B(n149), .Z(n279) );
  GTECH_NAND2 U344 ( .A(n280), .B(n281), .Z(n278) );
  GTECH_NOT U345 ( .A(n146), .Z(n281) );
  GTECH_NOT U346 ( .A(n282), .Z(n280) );
  GTECH_AND_NOT U347 ( .A(n283), .B(n252), .Z(controller_N77) );
  GTECH_XOR2 U348 ( .A(n282), .B(n146), .Z(n283) );
  GTECH_NAND2 U349 ( .A(n284), .B(n285), .Z(n282) );
  GTECH_NOT U350 ( .A(n143), .Z(n285) );
  GTECH_NOT U351 ( .A(n286), .Z(n284) );
  GTECH_AND_NOT U352 ( .A(n287), .B(n252), .Z(controller_N76) );
  GTECH_XOR2 U353 ( .A(n286), .B(n143), .Z(n287) );
  GTECH_NAND2 U354 ( .A(n288), .B(n289), .Z(n286) );
  GTECH_NOT U355 ( .A(n140), .Z(n289) );
  GTECH_NOT U356 ( .A(n290), .Z(n288) );
  GTECH_AND_NOT U357 ( .A(n291), .B(n252), .Z(controller_N75) );
  GTECH_XOR2 U358 ( .A(n290), .B(n140), .Z(n291) );
  GTECH_NAND2 U359 ( .A(n292), .B(n293), .Z(n290) );
  GTECH_NOT U360 ( .A(n137), .Z(n293) );
  GTECH_NOT U361 ( .A(n294), .Z(n292) );
  GTECH_AND_NOT U362 ( .A(n295), .B(n252), .Z(controller_N74) );
  GTECH_XOR2 U363 ( .A(n294), .B(n137), .Z(n295) );
  GTECH_NAND2 U364 ( .A(n296), .B(n297), .Z(n294) );
  GTECH_NOT U365 ( .A(n134), .Z(n297) );
  GTECH_NOT U366 ( .A(n298), .Z(n296) );
  GTECH_AND_NOT U367 ( .A(n299), .B(n252), .Z(controller_N73) );
  GTECH_XOR2 U368 ( .A(n298), .B(n134), .Z(n299) );
  GTECH_NAND2 U369 ( .A(n300), .B(n301), .Z(n298) );
  GTECH_NOT U370 ( .A(n131), .Z(n301) );
  GTECH_NOT U371 ( .A(n302), .Z(n300) );
  GTECH_AND_NOT U372 ( .A(n303), .B(n252), .Z(controller_N72) );
  GTECH_XOR2 U373 ( .A(n302), .B(n131), .Z(n303) );
  GTECH_NAND2 U374 ( .A(n304), .B(n305), .Z(n302) );
  GTECH_NOT U375 ( .A(n128), .Z(n305) );
  GTECH_NOT U376 ( .A(n306), .Z(n304) );
  GTECH_AND_NOT U377 ( .A(n307), .B(n252), .Z(controller_N71) );
  GTECH_XOR2 U378 ( .A(n306), .B(n128), .Z(n307) );
  GTECH_NAND2 U379 ( .A(n308), .B(n309), .Z(n306) );
  GTECH_NOT U380 ( .A(n125), .Z(n309) );
  GTECH_NOT U381 ( .A(n310), .Z(n308) );
  GTECH_AND_NOT U382 ( .A(n311), .B(n252), .Z(controller_N70) );
  GTECH_XOR2 U383 ( .A(n310), .B(n125), .Z(n311) );
  GTECH_NAND2 U384 ( .A(n312), .B(n313), .Z(n310) );
  GTECH_NOT U385 ( .A(n122), .Z(n313) );
  GTECH_NOT U386 ( .A(n314), .Z(n312) );
  GTECH_AND_NOT U387 ( .A(n315), .B(n252), .Z(controller_N69) );
  GTECH_XOR2 U388 ( .A(n314), .B(n122), .Z(n315) );
  GTECH_NAND2 U389 ( .A(n316), .B(n317), .Z(n314) );
  GTECH_NOT U390 ( .A(n119), .Z(n317) );
  GTECH_NOT U391 ( .A(n318), .Z(n316) );
  GTECH_AND_NOT U392 ( .A(n319), .B(n252), .Z(controller_N68) );
  GTECH_XOR2 U393 ( .A(n318), .B(n119), .Z(n319) );
  GTECH_NAND2 U394 ( .A(n320), .B(n321), .Z(n318) );
  GTECH_NOT U395 ( .A(n116), .Z(n321) );
  GTECH_NOT U396 ( .A(n322), .Z(n320) );
  GTECH_AND_NOT U397 ( .A(n323), .B(n252), .Z(controller_N67) );
  GTECH_XOR2 U398 ( .A(n322), .B(n116), .Z(n323) );
  GTECH_NAND2 U399 ( .A(n324), .B(n325), .Z(n322) );
  GTECH_NOT U400 ( .A(n113), .Z(n325) );
  GTECH_NOT U401 ( .A(n326), .Z(n324) );
  GTECH_AND_NOT U402 ( .A(n327), .B(n252), .Z(controller_N66) );
  GTECH_XOR2 U403 ( .A(n326), .B(n113), .Z(n327) );
  GTECH_NAND2 U404 ( .A(n328), .B(n329), .Z(n326) );
  GTECH_NOT U405 ( .A(n110), .Z(n329) );
  GTECH_NOT U406 ( .A(n330), .Z(n328) );
  GTECH_AND_NOT U407 ( .A(n331), .B(n252), .Z(controller_N65) );
  GTECH_XOR2 U408 ( .A(n330), .B(n110), .Z(n331) );
  GTECH_NAND2 U409 ( .A(n332), .B(n333), .Z(n330) );
  GTECH_NOT U410 ( .A(n107), .Z(n333) );
  GTECH_NOT U411 ( .A(n334), .Z(n332) );
  GTECH_AND_NOT U412 ( .A(n335), .B(n252), .Z(controller_N64) );
  GTECH_XOR2 U413 ( .A(n334), .B(n107), .Z(n335) );
  GTECH_NAND2 U414 ( .A(n336), .B(n337), .Z(n334) );
  GTECH_NOT U415 ( .A(n104), .Z(n337) );
  GTECH_NOT U416 ( .A(n338), .Z(n336) );
  GTECH_AND_NOT U417 ( .A(n339), .B(n252), .Z(controller_N63) );
  GTECH_XOR2 U418 ( .A(n338), .B(n104), .Z(n339) );
  GTECH_NAND2 U419 ( .A(n340), .B(n341), .Z(n338) );
  GTECH_NOT U420 ( .A(n101), .Z(n341) );
  GTECH_NOT U421 ( .A(n342), .Z(n340) );
  GTECH_AND_NOT U422 ( .A(n343), .B(n252), .Z(controller_N62) );
  GTECH_XOR2 U423 ( .A(n342), .B(n101), .Z(n343) );
  GTECH_NAND2 U424 ( .A(n344), .B(n345), .Z(n342) );
  GTECH_NOT U425 ( .A(n98), .Z(n345) );
  GTECH_NOT U426 ( .A(n346), .Z(n344) );
  GTECH_AND_NOT U427 ( .A(n347), .B(n252), .Z(controller_N61) );
  GTECH_XOR2 U428 ( .A(n346), .B(n98), .Z(n347) );
  GTECH_NAND2 U429 ( .A(n348), .B(n349), .Z(n346) );
  GTECH_NOT U430 ( .A(n95), .Z(n349) );
  GTECH_NOT U431 ( .A(n350), .Z(n348) );
  GTECH_AND_NOT U432 ( .A(n351), .B(n252), .Z(controller_N60) );
  GTECH_XOR2 U433 ( .A(n350), .B(n95), .Z(n351) );
  GTECH_NAND2 U434 ( .A(n352), .B(n353), .Z(n350) );
  GTECH_NOT U435 ( .A(n92), .Z(n353) );
  GTECH_NOT U436 ( .A(n354), .Z(n352) );
  GTECH_AND_NOT U437 ( .A(n355), .B(n252), .Z(controller_N59) );
  GTECH_XOR2 U438 ( .A(n354), .B(n92), .Z(n355) );
  GTECH_NAND2 U439 ( .A(n356), .B(n357), .Z(n354) );
  GTECH_NOT U440 ( .A(n89), .Z(n357) );
  GTECH_NOT U441 ( .A(n358), .Z(n356) );
  GTECH_AND_NOT U442 ( .A(n359), .B(n252), .Z(controller_N58) );
  GTECH_XOR2 U443 ( .A(n358), .B(n89), .Z(n359) );
  GTECH_NAND2 U444 ( .A(n360), .B(n361), .Z(n358) );
  GTECH_NOT U445 ( .A(n86), .Z(n361) );
  GTECH_NOT U446 ( .A(n362), .Z(n360) );
  GTECH_AND_NOT U447 ( .A(n363), .B(n252), .Z(controller_N57) );
  GTECH_XOR2 U448 ( .A(n362), .B(n86), .Z(n363) );
  GTECH_NAND2 U449 ( .A(n364), .B(n365), .Z(n362) );
  GTECH_NOT U450 ( .A(n83), .Z(n365) );
  GTECH_NOT U451 ( .A(n366), .Z(n364) );
  GTECH_AND_NOT U452 ( .A(n367), .B(n252), .Z(controller_N56) );
  GTECH_XOR2 U453 ( .A(n366), .B(n83), .Z(n367) );
  GTECH_NAND2 U454 ( .A(n368), .B(n369), .Z(n366) );
  GTECH_NOT U455 ( .A(n80), .Z(n369) );
  GTECH_NOT U456 ( .A(n370), .Z(n368) );
  GTECH_AND_NOT U457 ( .A(n371), .B(n252), .Z(controller_N55) );
  GTECH_XOR2 U458 ( .A(n370), .B(n80), .Z(n371) );
  GTECH_NAND3 U459 ( .A(n372), .B(n373), .C(n374), .Z(n370) );
  GTECH_NOT U460 ( .A(n77), .Z(n373) );
  GTECH_OAI22 U461 ( .A(n77), .B(n375), .C(n252), .D(n376), .Z(controller_N54)
         );
  GTECH_MUX2 U462 ( .A(n372), .B(n377), .S(n77), .Z(n376) );
  GTECH_NAND2 U463 ( .A(n374), .B(n372), .Z(n377) );
  GTECH_NOT U464 ( .A(n71), .Z(n374) );
  GTECH_NOT U465 ( .A(n74), .Z(n372) );
  GTECH_NOT U466 ( .A(n247), .Z(n252) );
  GTECH_MUX2 U467 ( .A(controller_N52), .B(n378), .S(n74), .Z(controller_N53)
         );
  GTECH_AND_NOT U468 ( .A(n247), .B(n71), .Z(n378) );
  GTECH_NOT U469 ( .A(n375), .Z(controller_N52) );
  GTECH_NAND2 U470 ( .A(n71), .B(n247), .Z(n375) );
  GTECH_OAI21 U471 ( .A(n379), .B(n380), .C(n193), .Z(n247) );
  GTECH_NAND8 U472 ( .A(n95), .B(n92), .C(n98), .D(n381), .E(n158), .F(n155), 
        .G(n189), .H(n382), .Z(n380) );
  GTECH_AND4 U473 ( .A(n152), .B(n149), .C(n146), .D(n143), .Z(n382) );
  GTECH_AND4 U474 ( .A(n89), .B(n86), .C(n83), .D(n80), .Z(n381) );
  GTECH_NAND8 U475 ( .A(n137), .B(n134), .C(n140), .D(n383), .E(n116), .F(n113), .G(n119), .H(n384), .Z(n379) );
  GTECH_AND4 U476 ( .A(n110), .B(n107), .C(n104), .D(n101), .Z(n384) );
  GTECH_AND4 U477 ( .A(n131), .B(n128), .C(n125), .D(n122), .Z(n383) );
  GTECH_AND_NOT U478 ( .A(controller_N95), .B(rst), .Z(controller_N102) );
  GTECH_NAND2 U479 ( .A(n385), .B(n248), .Z(controller_N95) );
  GTECH_NAND3 U480 ( .A(n183), .B(n385), .C(n67), .Z(n248) );
  GTECH_NOT U481 ( .A(n161), .Z(n385) );
endmodule

