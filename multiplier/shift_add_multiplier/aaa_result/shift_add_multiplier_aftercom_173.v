
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
         n10, n32, n56, n59, n62, n65, n68, n71, n74, n77, n84, n89, n92, n95,
         n98, n101, n104, n107, n110, n113, n116, n119, n122, n125, n128, n131,
         n134, n137, n140, n143, n146, n149, n152, n155, n158, n161, n164,
         n167, n170, n173, n176, n179, n182, n185, n188, n189, n27, n28, n192,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, n292,
         n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, n303,
         n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n314,
         n315, n316, n317, n318, n319, n320, n321, n322, n323, n324, n325,
         n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, n336,
         n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347,
         n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358,
         n359, n360, n361, n362, n363, n364, n365, n366, n367, n368, n369,
         n370, n371, n372, n373, n374, n375, n376, n377, n378, n379, n380,
         n381, n382, n383, n384, n385, n386, n387, n388, n389, n390, n391;
  wire   [7:0] A;

  GTECH_FJK3S controller_count_reg_31_ ( .J(n28), .K(n28), .TI(controller_N83), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_31_), .QN(n192) );
  GTECH_FJK3S controller_count_reg_30_ ( .J(n28), .K(n28), .TI(controller_N82), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_30_), .QN(n188) );
  GTECH_FJK3 controller_start_reg ( .J(n28), .K(controller_N97), .CP(clk), 
        .CD(n27), .SD(n189), .Q(controller_start), .QN(n185) );
  GTECH_FJK3S controller_state_reg_0_ ( .J(n28), .K(n28), .TI(controller_N93), 
        .TE(controller_N95), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_state_0_), .QN(n182) );
  GTECH_FJK3S controller_state_reg_2_ ( .J(n28), .K(n28), .TI(controller_N96), 
        .TE(controller_N95), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_state_2_), .QN(n179) );
  GTECH_FJK3S controller_count_reg_29_ ( .J(n28), .K(n28), .TI(controller_N81), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_29_), .QN(n176) );
  GTECH_FJK3S controller_count_reg_28_ ( .J(n28), .K(n28), .TI(controller_N80), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_28_), .QN(n173) );
  GTECH_FJK3S controller_count_reg_27_ ( .J(n28), .K(n28), .TI(controller_N79), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_27_), .QN(n170) );
  GTECH_FJK3S controller_count_reg_26_ ( .J(n28), .K(n28), .TI(controller_N78), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_26_), .QN(n167) );
  GTECH_FJK3S controller_count_reg_25_ ( .J(n28), .K(n28), .TI(controller_N77), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_25_), .QN(n164) );
  GTECH_FJK3S controller_count_reg_24_ ( .J(n28), .K(n28), .TI(controller_N76), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_24_), .QN(n161) );
  GTECH_FJK3S controller_count_reg_23_ ( .J(n28), .K(n28), .TI(controller_N75), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_23_), .QN(n158) );
  GTECH_FJK3S controller_count_reg_22_ ( .J(n28), .K(n28), .TI(controller_N74), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_22_), .QN(n155) );
  GTECH_FJK3S controller_count_reg_21_ ( .J(n28), .K(n28), .TI(controller_N73), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_21_), .QN(n152) );
  GTECH_FJK3S controller_count_reg_20_ ( .J(n28), .K(n28), .TI(controller_N72), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_20_), .QN(n149) );
  GTECH_FJK3S controller_count_reg_19_ ( .J(n28), .K(n28), .TI(controller_N71), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_19_), .QN(n146) );
  GTECH_FJK3S controller_count_reg_18_ ( .J(n28), .K(n28), .TI(controller_N70), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_18_), .QN(n143) );
  GTECH_FJK3S controller_count_reg_17_ ( .J(n28), .K(n28), .TI(controller_N69), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_17_), .QN(n140) );
  GTECH_FJK3S controller_count_reg_16_ ( .J(n28), .K(n28), .TI(controller_N68), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_16_), .QN(n137) );
  GTECH_FJK3S controller_count_reg_15_ ( .J(n28), .K(n28), .TI(controller_N67), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_15_), .QN(n134) );
  GTECH_FJK3S controller_count_reg_14_ ( .J(n28), .K(n28), .TI(controller_N66), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_14_), .QN(n131) );
  GTECH_FJK3S controller_count_reg_13_ ( .J(n28), .K(n28), .TI(controller_N65), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_13_), .QN(n128) );
  GTECH_FJK3S controller_count_reg_12_ ( .J(n28), .K(n28), .TI(controller_N64), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_12_), .QN(n125) );
  GTECH_FJK3S controller_count_reg_11_ ( .J(n28), .K(n28), .TI(controller_N63), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_11_), .QN(n122) );
  GTECH_FJK3S controller_count_reg_10_ ( .J(n28), .K(n28), .TI(controller_N62), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_10_), .QN(n119) );
  GTECH_FJK3S controller_count_reg_9_ ( .J(n28), .K(n28), .TI(controller_N61), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_9_), .QN(n116) );
  GTECH_FJK3S controller_count_reg_8_ ( .J(n28), .K(n28), .TI(controller_N60), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_8_), .QN(n113) );
  GTECH_FJK3S controller_count_reg_7_ ( .J(n28), .K(n28), .TI(controller_N59), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_7_), .QN(n110) );
  GTECH_FJK3S controller_count_reg_6_ ( .J(n28), .K(n28), .TI(controller_N58), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_6_), .QN(n107) );
  GTECH_FJK3S controller_count_reg_5_ ( .J(n28), .K(n28), .TI(controller_N57), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_5_), .QN(n104) );
  GTECH_FJK3S controller_count_reg_4_ ( .J(n28), .K(n28), .TI(controller_N56), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_4_), .QN(n101) );
  GTECH_FJK3S controller_count_reg_3_ ( .J(n28), .K(n28), .TI(controller_N55), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_3_), .QN(n98) );
  GTECH_FJK3S controller_count_reg_2_ ( .J(n28), .K(n28), .TI(controller_N54), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_2_), .QN(n95) );
  GTECH_FJK3S controller_count_reg_1_ ( .J(n28), .K(n28), .TI(controller_N53), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_1_), .QN(n92) );
  GTECH_FJK3S controller_count_reg_0_ ( .J(n28), .K(n28), .TI(controller_N52), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_0_), .QN(n89) );
  GTECH_FJK1S controller_shift_cmd_reg ( .J(n28), .K(n28), .TI(controller_N98), 
        .TE(controller_N102), .CP(clk), .Q(n8) );
  GTECH_FJK1S controller_add_cmd_reg ( .J(n28), .K(n28), .TI(controller_N91), 
        .TE(controller_N102), .CP(clk), .Q(add_cmd), .QN(n9) );
  GTECH_FJK3S controller_state_reg_1_ ( .J(n28), .K(n28), .TI(controller_N94), 
        .TE(controller_N95), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_state_1_), .QN(n84) );
  GTECH_FJK1S controller_load_cmd_reg ( .J(n28), .K(n28), .TI(controller_N90), 
        .TE(controller_N102), .CP(clk), .Q(load_cmd), .QN(n10) );
  GTECH_FJK3S shifter_add_temp_reg ( .J(n28), .K(n28), .TI(shifter_N24), .TE(
        shifter_N23), .CP(clk), .CD(n189), .SD(n27), .Q(shifter_add_temp) );
  GTECH_FJK3S shifter_temp_reg_8_ ( .J(n28), .K(n28), .TI(shifter_N14), .TE(
        shifter_N22), .CP(clk), .CD(n189), .SD(n27), .Q(A[0]), .QN(n77) );
  GTECH_FJK3S shifter_temp_reg_15_ ( .J(n28), .K(n28), .TI(shifter_N21), .TE(
        shifter_N22), .CP(clk), .CD(n189), .SD(n27), .Q(A[7]), .QN(n74) );
  GTECH_FJK3S shifter_temp_reg_14_ ( .J(n28), .K(n28), .TI(shifter_N20), .TE(
        shifter_N22), .CP(clk), .CD(n189), .SD(n27), .Q(A[6]), .QN(n71) );
  GTECH_FJK3S shifter_temp_reg_13_ ( .J(n28), .K(n28), .TI(shifter_N19), .TE(
        shifter_N22), .CP(clk), .CD(n189), .SD(n27), .Q(A[5]), .QN(n68) );
  GTECH_FJK3S shifter_temp_reg_12_ ( .J(n28), .K(n28), .TI(shifter_N18), .TE(
        shifter_N22), .CP(clk), .CD(n189), .SD(n27), .Q(A[4]), .QN(n65) );
  GTECH_FJK3S shifter_temp_reg_11_ ( .J(n28), .K(n28), .TI(shifter_N17), .TE(
        shifter_N22), .CP(clk), .CD(n189), .SD(n27), .Q(A[3]), .QN(n62) );
  GTECH_FJK3S shifter_temp_reg_10_ ( .J(n28), .K(n28), .TI(shifter_N16), .TE(
        shifter_N22), .CP(clk), .CD(n189), .SD(n27), .Q(A[2]), .QN(n59) );
  GTECH_FJK3S shifter_temp_reg_9_ ( .J(n28), .K(n28), .TI(shifter_N15), .TE(
        shifter_N22), .CP(clk), .CD(n189), .SD(n27), .Q(A[1]), .QN(n56) );
  GTECH_FJK3S shifter_temp_reg_7_ ( .J(n28), .K(n28), .TI(shifter_N13), .TE(
        shifter_N22), .CP(clk), .CD(n189), .SD(n27), .Q(shifter_temp_7_) );
  GTECH_FJK3S shifter_temp_reg_6_ ( .J(n28), .K(n28), .TI(shifter_N12), .TE(
        shifter_N22), .CP(clk), .CD(n189), .SD(n27), .Q(shifter_temp_6_) );
  GTECH_FJK3S shifter_temp_reg_5_ ( .J(n28), .K(n28), .TI(shifter_N11), .TE(
        shifter_N22), .CP(clk), .CD(n189), .SD(n27), .Q(shifter_temp_5_) );
  GTECH_FJK3S shifter_temp_reg_4_ ( .J(n28), .K(n28), .TI(shifter_N10), .TE(
        shifter_N22), .CP(clk), .CD(n189), .SD(n27), .Q(shifter_temp_4_) );
  GTECH_FJK3S shifter_temp_reg_3_ ( .J(n28), .K(n28), .TI(shifter_N9), .TE(
        shifter_N22), .CP(clk), .CD(n189), .SD(n27), .Q(shifter_temp_3_) );
  GTECH_FJK3S shifter_temp_reg_2_ ( .J(n28), .K(n28), .TI(shifter_N8), .TE(
        shifter_N22), .CP(clk), .CD(n189), .SD(n27), .Q(shifter_temp_2_) );
  GTECH_FJK3S shifter_temp_reg_1_ ( .J(n28), .K(n28), .TI(shifter_N7), .TE(
        shifter_N22), .CP(clk), .CD(n189), .SD(n27), .Q(shifter_temp_1_) );
  GTECH_FJK3S shifter_temp_reg_0_ ( .J(n28), .K(n28), .TI(shifter_N6), .TE(
        shifter_N22), .CP(clk), .CD(n189), .SD(n27), .Q(lsb), .QN(n32) );
  GTECH_FJK3S controller_out_cmd_reg ( .J(n28), .K(n28), .TI(controller_N92), 
        .TE(controller_N95), .CP(clk), .CD(n189), .SD(n27), .Q(out_cmd) );
  GTECH_ZERO U210 ( .Z(n28) );
  GTECH_ONE U211 ( .Z(n27) );
  GTECH_OAI2N2 U212 ( .A(n194), .B(n195), .C(Q[3]), .D(n196), .Z(shifter_N9)
         );
  GTECH_NOT U213 ( .A(shifter_temp_4_), .Z(n195) );
  GTECH_OAI2N2 U214 ( .A(n194), .B(n197), .C(Q[2]), .D(n196), .Z(shifter_N8)
         );
  GTECH_NOT U215 ( .A(shifter_temp_3_), .Z(n197) );
  GTECH_OAI2N2 U216 ( .A(n194), .B(n198), .C(Q[1]), .D(n196), .Z(shifter_N7)
         );
  GTECH_NOT U217 ( .A(shifter_temp_2_), .Z(n198) );
  GTECH_OAI2N2 U218 ( .A(n194), .B(n199), .C(Q[0]), .D(n196), .Z(shifter_N6)
         );
  GTECH_NOT U219 ( .A(shifter_temp_1_), .Z(n199) );
  GTECH_NOT U220 ( .A(n200), .Z(shifter_N24) );
  GTECH_NAND2 U221 ( .A(n200), .B(n201), .Z(shifter_N23) );
  GTECH_NAND2 U222 ( .A(n10), .B(n202), .Z(n200) );
  GTECH_NOT U223 ( .A(n9), .Z(n202) );
  GTECH_NAND2 U224 ( .A(n194), .B(n10), .Z(shifter_N22) );
  GTECH_AND2 U225 ( .A(n203), .B(n204), .Z(shifter_N21) );
  GTECH_OAI22 U226 ( .A(n205), .B(n206), .C(n74), .D(n207), .Z(n204) );
  GTECH_NOT U227 ( .A(n208), .Z(n207) );
  GTECH_NOT U228 ( .A(n201), .Z(n203) );
  GTECH_OAI22 U229 ( .A(n74), .B(n209), .C(n210), .D(n201), .Z(shifter_N20) );
  GTECH_OA21 U230 ( .A(n74), .B(n208), .C(n211), .Z(n210) );
  GTECH_MUX2 U231 ( .A(n212), .B(n213), .S(n205), .Z(n211) );
  GTECH_NAND2 U232 ( .A(n74), .B(D[7]), .Z(n213) );
  GTECH_XOR2 U233 ( .A(n206), .B(n74), .Z(n212) );
  GTECH_NAND2 U234 ( .A(n205), .B(n206), .Z(n208) );
  GTECH_NOT U235 ( .A(D[7]), .Z(n206) );
  GTECH_AOI2N2 U236 ( .A(n214), .B(n215), .C(n71), .D(n216), .Z(n205) );
  GTECH_NAND2 U237 ( .A(n71), .B(n216), .Z(n215) );
  GTECH_NOT U238 ( .A(D[6]), .Z(n216) );
  GTECH_OAI22 U239 ( .A(n71), .B(n209), .C(n217), .D(n201), .Z(shifter_N19) );
  GTECH_XOR3 U240 ( .A(n71), .B(D[6]), .C(n214), .Z(n217) );
  GTECH_OAI2N2 U241 ( .A(n68), .B(n218), .C(n219), .D(n220), .Z(n214) );
  GTECH_NAND2 U242 ( .A(n68), .B(n218), .Z(n220) );
  GTECH_NOT U243 ( .A(D[5]), .Z(n218) );
  GTECH_OAI22 U244 ( .A(n68), .B(n209), .C(n221), .D(n201), .Z(shifter_N18) );
  GTECH_XOR3 U245 ( .A(n68), .B(D[5]), .C(n219), .Z(n221) );
  GTECH_OAI2N2 U246 ( .A(n65), .B(n222), .C(n223), .D(n224), .Z(n219) );
  GTECH_NAND2 U247 ( .A(n65), .B(n222), .Z(n224) );
  GTECH_NOT U248 ( .A(D[4]), .Z(n222) );
  GTECH_OAI22 U249 ( .A(n65), .B(n209), .C(n225), .D(n201), .Z(shifter_N17) );
  GTECH_XOR3 U250 ( .A(n65), .B(D[4]), .C(n223), .Z(n225) );
  GTECH_OAI2N2 U251 ( .A(n62), .B(n226), .C(n227), .D(n228), .Z(n223) );
  GTECH_NAND2 U252 ( .A(n62), .B(n226), .Z(n228) );
  GTECH_NOT U253 ( .A(D[3]), .Z(n226) );
  GTECH_OAI22 U254 ( .A(n62), .B(n209), .C(n229), .D(n201), .Z(shifter_N16) );
  GTECH_XOR3 U255 ( .A(n62), .B(D[3]), .C(n227), .Z(n229) );
  GTECH_OAI2N2 U256 ( .A(n59), .B(n230), .C(n231), .D(n232), .Z(n227) );
  GTECH_NAND2 U257 ( .A(n59), .B(n230), .Z(n232) );
  GTECH_NOT U258 ( .A(D[2]), .Z(n230) );
  GTECH_OAI22 U259 ( .A(n59), .B(n209), .C(n233), .D(n201), .Z(shifter_N15) );
  GTECH_XOR3 U260 ( .A(n59), .B(D[2]), .C(n231), .Z(n233) );
  GTECH_OAI22 U261 ( .A(n56), .B(n234), .C(n235), .D(n236), .Z(n231) );
  GTECH_AND2 U262 ( .A(n56), .B(n234), .Z(n235) );
  GTECH_NOT U263 ( .A(D[1]), .Z(n234) );
  GTECH_OAI22 U264 ( .A(n56), .B(n209), .C(n201), .D(n237), .Z(shifter_N14) );
  GTECH_XNOR3 U265 ( .A(D[1]), .B(n236), .C(n56), .Z(n237) );
  GTECH_NAND2 U266 ( .A(D[0]), .B(n238), .Z(n236) );
  GTECH_AO21 U267 ( .A(Q[7]), .B(n196), .C(n239), .Z(shifter_N13) );
  GTECH_OAI22 U268 ( .A(n201), .B(n240), .C(n77), .D(n209), .Z(n239) );
  GTECH_XOR2 U269 ( .A(D[0]), .B(n77), .Z(n240) );
  GTECH_OAI2N2 U270 ( .A(n194), .B(n241), .C(Q[6]), .D(n196), .Z(shifter_N12)
         );
  GTECH_NOT U271 ( .A(shifter_temp_7_), .Z(n241) );
  GTECH_OAI2N2 U272 ( .A(n194), .B(n242), .C(Q[5]), .D(n196), .Z(shifter_N11)
         );
  GTECH_NOT U273 ( .A(shifter_temp_6_), .Z(n242) );
  GTECH_OAI2N2 U274 ( .A(n194), .B(n243), .C(Q[4]), .D(n196), .Z(shifter_N10)
         );
  GTECH_NOT U275 ( .A(n10), .Z(n196) );
  GTECH_NOT U276 ( .A(shifter_temp_5_), .Z(n243) );
  GTECH_NOT U277 ( .A(n244), .Z(n194) );
  GTECH_NAND2 U278 ( .A(n201), .B(n209), .Z(n244) );
  GTECH_NAND4 U279 ( .A(n9), .B(n8), .C(n10), .D(n245), .Z(n209) );
  GTECH_NOT U280 ( .A(shifter_add_temp), .Z(n245) );
  GTECH_NAND4 U281 ( .A(shifter_add_temp), .B(n9), .C(n8), .D(n10), .Z(n201)
         );
  GTECH_AND2 U282 ( .A(out_cmd), .B(n246), .Z(out[9]) );
  GTECH_NOT U283 ( .A(n56), .Z(n246) );
  GTECH_AND2 U284 ( .A(out_cmd), .B(n238), .Z(out[8]) );
  GTECH_NOT U285 ( .A(n77), .Z(n238) );
  GTECH_AND2 U286 ( .A(out_cmd), .B(shifter_temp_7_), .Z(out[7]) );
  GTECH_AND2 U287 ( .A(out_cmd), .B(shifter_temp_6_), .Z(out[6]) );
  GTECH_AND2 U288 ( .A(out_cmd), .B(shifter_temp_5_), .Z(out[5]) );
  GTECH_AND2 U289 ( .A(out_cmd), .B(shifter_temp_4_), .Z(out[4]) );
  GTECH_AND2 U290 ( .A(out_cmd), .B(shifter_temp_3_), .Z(out[3]) );
  GTECH_AND2 U291 ( .A(out_cmd), .B(shifter_temp_2_), .Z(out[2]) );
  GTECH_AND2 U292 ( .A(out_cmd), .B(shifter_temp_1_), .Z(out[1]) );
  GTECH_AND2 U293 ( .A(out_cmd), .B(n247), .Z(out[15]) );
  GTECH_NOT U294 ( .A(n74), .Z(n247) );
  GTECH_AND2 U295 ( .A(out_cmd), .B(n248), .Z(out[14]) );
  GTECH_NOT U296 ( .A(n71), .Z(n248) );
  GTECH_AND2 U297 ( .A(out_cmd), .B(n249), .Z(out[13]) );
  GTECH_NOT U298 ( .A(n68), .Z(n249) );
  GTECH_AND2 U299 ( .A(out_cmd), .B(n250), .Z(out[12]) );
  GTECH_NOT U300 ( .A(n65), .Z(n250) );
  GTECH_AND2 U301 ( .A(out_cmd), .B(n251), .Z(out[11]) );
  GTECH_NOT U302 ( .A(n62), .Z(n251) );
  GTECH_AND2 U303 ( .A(out_cmd), .B(n252), .Z(out[10]) );
  GTECH_NOT U304 ( .A(n59), .Z(n252) );
  GTECH_AND2 U305 ( .A(out_cmd), .B(n253), .Z(out[0]) );
  GTECH_AND2 U306 ( .A(controller_N98), .B(n254), .Z(controller_N97) );
  GTECH_AO21 U307 ( .A(n32), .B(n255), .C(controller_N91), .Z(controller_N96)
         );
  GTECH_AO21 U308 ( .A(controller_N98), .B(n256), .C(n257), .Z(controller_N94)
         );
  GTECH_NAND2 U309 ( .A(n258), .B(n259), .Z(n257) );
  GTECH_NAND3 U310 ( .A(n182), .B(n253), .C(n255), .Z(n258) );
  GTECH_NOT U311 ( .A(n260), .Z(controller_N98) );
  GTECH_AND3 U312 ( .A(n179), .B(n182), .C(n261), .Z(controller_N93) );
  GTECH_MUX2 U313 ( .A(n253), .B(n262), .S(n84), .Z(n261) );
  GTECH_NOT U314 ( .A(n185), .Z(n262) );
  GTECH_NOT U315 ( .A(n32), .Z(n253) );
  GTECH_AND4 U316 ( .A(n185), .B(n179), .C(n84), .D(n182), .Z(controller_N92)
         );
  GTECH_NOT U317 ( .A(n263), .Z(controller_N91) );
  GTECH_NAND2 U318 ( .A(n255), .B(n264), .Z(n263) );
  GTECH_NOT U319 ( .A(n265), .Z(n255) );
  GTECH_NAND2 U320 ( .A(n179), .B(n266), .Z(n265) );
  GTECH_NOT U321 ( .A(n84), .Z(n266) );
  GTECH_NOT U322 ( .A(n259), .Z(controller_N90) );
  GTECH_NAND3 U323 ( .A(n84), .B(n264), .C(n179), .Z(n259) );
  GTECH_NOT U324 ( .A(n182), .Z(n264) );
  GTECH_OA21 U325 ( .A(n188), .B(n267), .C(n268), .Z(controller_N83) );
  GTECH_AND2 U326 ( .A(n269), .B(n256), .Z(controller_N82) );
  GTECH_XOR2 U327 ( .A(n267), .B(n188), .Z(n269) );
  GTECH_NAND2 U328 ( .A(n270), .B(n271), .Z(n267) );
  GTECH_NOT U329 ( .A(n176), .Z(n271) );
  GTECH_NOT U330 ( .A(n272), .Z(n270) );
  GTECH_AND2 U331 ( .A(n273), .B(n256), .Z(controller_N81) );
  GTECH_XOR2 U332 ( .A(n272), .B(n176), .Z(n273) );
  GTECH_NAND2 U333 ( .A(n274), .B(n275), .Z(n272) );
  GTECH_NOT U334 ( .A(n173), .Z(n275) );
  GTECH_NOT U335 ( .A(n276), .Z(n274) );
  GTECH_AND2 U336 ( .A(n277), .B(n256), .Z(controller_N80) );
  GTECH_XOR2 U337 ( .A(n276), .B(n173), .Z(n277) );
  GTECH_NAND2 U338 ( .A(n278), .B(n279), .Z(n276) );
  GTECH_NOT U339 ( .A(n170), .Z(n279) );
  GTECH_NOT U340 ( .A(n280), .Z(n278) );
  GTECH_AND2 U341 ( .A(n281), .B(n256), .Z(controller_N79) );
  GTECH_XOR2 U342 ( .A(n280), .B(n170), .Z(n281) );
  GTECH_NAND2 U343 ( .A(n282), .B(n283), .Z(n280) );
  GTECH_NOT U344 ( .A(n167), .Z(n283) );
  GTECH_NOT U345 ( .A(n284), .Z(n282) );
  GTECH_AND2 U346 ( .A(n285), .B(n256), .Z(controller_N78) );
  GTECH_XOR2 U347 ( .A(n284), .B(n167), .Z(n285) );
  GTECH_NAND2 U348 ( .A(n286), .B(n287), .Z(n284) );
  GTECH_NOT U349 ( .A(n164), .Z(n287) );
  GTECH_NOT U350 ( .A(n288), .Z(n286) );
  GTECH_AND2 U351 ( .A(n289), .B(n256), .Z(controller_N77) );
  GTECH_XOR2 U352 ( .A(n288), .B(n164), .Z(n289) );
  GTECH_NAND2 U353 ( .A(n290), .B(n291), .Z(n288) );
  GTECH_NOT U354 ( .A(n161), .Z(n291) );
  GTECH_NOT U355 ( .A(n292), .Z(n290) );
  GTECH_AND2 U356 ( .A(n293), .B(n256), .Z(controller_N76) );
  GTECH_XOR2 U357 ( .A(n292), .B(n161), .Z(n293) );
  GTECH_NAND2 U358 ( .A(n294), .B(n295), .Z(n292) );
  GTECH_NOT U359 ( .A(n158), .Z(n295) );
  GTECH_NOT U360 ( .A(n296), .Z(n294) );
  GTECH_AND2 U361 ( .A(n297), .B(n256), .Z(controller_N75) );
  GTECH_XOR2 U362 ( .A(n296), .B(n158), .Z(n297) );
  GTECH_NAND2 U363 ( .A(n298), .B(n299), .Z(n296) );
  GTECH_NOT U364 ( .A(n155), .Z(n299) );
  GTECH_NOT U365 ( .A(n300), .Z(n298) );
  GTECH_AND2 U366 ( .A(n301), .B(n256), .Z(controller_N74) );
  GTECH_XOR2 U367 ( .A(n300), .B(n155), .Z(n301) );
  GTECH_NAND2 U368 ( .A(n302), .B(n303), .Z(n300) );
  GTECH_NOT U369 ( .A(n152), .Z(n303) );
  GTECH_NOT U370 ( .A(n304), .Z(n302) );
  GTECH_AND2 U371 ( .A(n305), .B(n256), .Z(controller_N73) );
  GTECH_XOR2 U372 ( .A(n304), .B(n152), .Z(n305) );
  GTECH_NAND2 U373 ( .A(n306), .B(n307), .Z(n304) );
  GTECH_NOT U374 ( .A(n149), .Z(n307) );
  GTECH_NOT U375 ( .A(n308), .Z(n306) );
  GTECH_AND2 U376 ( .A(n309), .B(n256), .Z(controller_N72) );
  GTECH_XOR2 U377 ( .A(n308), .B(n149), .Z(n309) );
  GTECH_NAND2 U378 ( .A(n310), .B(n311), .Z(n308) );
  GTECH_NOT U379 ( .A(n146), .Z(n311) );
  GTECH_NOT U380 ( .A(n312), .Z(n310) );
  GTECH_AND2 U381 ( .A(n313), .B(n256), .Z(controller_N71) );
  GTECH_XOR2 U382 ( .A(n312), .B(n146), .Z(n313) );
  GTECH_NAND2 U383 ( .A(n314), .B(n315), .Z(n312) );
  GTECH_NOT U384 ( .A(n143), .Z(n315) );
  GTECH_NOT U385 ( .A(n316), .Z(n314) );
  GTECH_AND2 U386 ( .A(n317), .B(n256), .Z(controller_N70) );
  GTECH_XOR2 U387 ( .A(n316), .B(n143), .Z(n317) );
  GTECH_NAND2 U388 ( .A(n318), .B(n319), .Z(n316) );
  GTECH_NOT U389 ( .A(n140), .Z(n319) );
  GTECH_NOT U390 ( .A(n320), .Z(n318) );
  GTECH_AND2 U391 ( .A(n321), .B(n256), .Z(controller_N69) );
  GTECH_XOR2 U392 ( .A(n320), .B(n140), .Z(n321) );
  GTECH_NAND2 U393 ( .A(n322), .B(n323), .Z(n320) );
  GTECH_NOT U394 ( .A(n137), .Z(n323) );
  GTECH_NOT U395 ( .A(n324), .Z(n322) );
  GTECH_AND2 U396 ( .A(n325), .B(n256), .Z(controller_N68) );
  GTECH_XOR2 U397 ( .A(n324), .B(n137), .Z(n325) );
  GTECH_NAND2 U398 ( .A(n326), .B(n327), .Z(n324) );
  GTECH_NOT U399 ( .A(n134), .Z(n327) );
  GTECH_NOT U400 ( .A(n328), .Z(n326) );
  GTECH_AND2 U401 ( .A(n329), .B(n256), .Z(controller_N67) );
  GTECH_XOR2 U402 ( .A(n328), .B(n134), .Z(n329) );
  GTECH_NAND2 U403 ( .A(n330), .B(n331), .Z(n328) );
  GTECH_NOT U404 ( .A(n131), .Z(n331) );
  GTECH_NOT U405 ( .A(n332), .Z(n330) );
  GTECH_AND2 U406 ( .A(n333), .B(n256), .Z(controller_N66) );
  GTECH_XOR2 U407 ( .A(n332), .B(n131), .Z(n333) );
  GTECH_NAND2 U408 ( .A(n334), .B(n335), .Z(n332) );
  GTECH_NOT U409 ( .A(n128), .Z(n335) );
  GTECH_NOT U410 ( .A(n336), .Z(n334) );
  GTECH_AND2 U411 ( .A(n337), .B(n256), .Z(controller_N65) );
  GTECH_XOR2 U412 ( .A(n336), .B(n128), .Z(n337) );
  GTECH_NAND2 U413 ( .A(n338), .B(n339), .Z(n336) );
  GTECH_NOT U414 ( .A(n125), .Z(n339) );
  GTECH_NOT U415 ( .A(n340), .Z(n338) );
  GTECH_AND2 U416 ( .A(n341), .B(n256), .Z(controller_N64) );
  GTECH_XOR2 U417 ( .A(n340), .B(n125), .Z(n341) );
  GTECH_NAND2 U418 ( .A(n342), .B(n343), .Z(n340) );
  GTECH_NOT U419 ( .A(n122), .Z(n343) );
  GTECH_NOT U420 ( .A(n344), .Z(n342) );
  GTECH_AND2 U421 ( .A(n345), .B(n256), .Z(controller_N63) );
  GTECH_XOR2 U422 ( .A(n344), .B(n122), .Z(n345) );
  GTECH_NAND2 U423 ( .A(n346), .B(n347), .Z(n344) );
  GTECH_NOT U424 ( .A(n119), .Z(n347) );
  GTECH_NOT U425 ( .A(n348), .Z(n346) );
  GTECH_AND2 U426 ( .A(n349), .B(n256), .Z(controller_N62) );
  GTECH_XOR2 U427 ( .A(n348), .B(n119), .Z(n349) );
  GTECH_NAND2 U428 ( .A(n350), .B(n351), .Z(n348) );
  GTECH_NOT U429 ( .A(n116), .Z(n351) );
  GTECH_NOT U430 ( .A(n352), .Z(n350) );
  GTECH_AND2 U431 ( .A(n353), .B(n256), .Z(controller_N61) );
  GTECH_XOR2 U432 ( .A(n352), .B(n116), .Z(n353) );
  GTECH_NAND2 U433 ( .A(n354), .B(n355), .Z(n352) );
  GTECH_NOT U434 ( .A(n113), .Z(n355) );
  GTECH_NOT U435 ( .A(n356), .Z(n354) );
  GTECH_AND2 U436 ( .A(n357), .B(n256), .Z(controller_N60) );
  GTECH_XOR2 U437 ( .A(n356), .B(n113), .Z(n357) );
  GTECH_NAND2 U438 ( .A(n358), .B(n359), .Z(n356) );
  GTECH_NOT U439 ( .A(n110), .Z(n359) );
  GTECH_NOT U440 ( .A(n360), .Z(n358) );
  GTECH_AND2 U441 ( .A(n361), .B(n256), .Z(controller_N59) );
  GTECH_XOR2 U442 ( .A(n360), .B(n110), .Z(n361) );
  GTECH_NAND2 U443 ( .A(n362), .B(n363), .Z(n360) );
  GTECH_NOT U444 ( .A(n107), .Z(n363) );
  GTECH_NOT U445 ( .A(n364), .Z(n362) );
  GTECH_AND2 U446 ( .A(n365), .B(n256), .Z(controller_N58) );
  GTECH_XOR2 U447 ( .A(n364), .B(n107), .Z(n365) );
  GTECH_NAND2 U448 ( .A(n366), .B(n367), .Z(n364) );
  GTECH_NOT U449 ( .A(n104), .Z(n367) );
  GTECH_NOT U450 ( .A(n368), .Z(n366) );
  GTECH_AND2 U451 ( .A(n369), .B(n256), .Z(controller_N57) );
  GTECH_XOR2 U452 ( .A(n368), .B(n104), .Z(n369) );
  GTECH_NAND2 U453 ( .A(n370), .B(n371), .Z(n368) );
  GTECH_NOT U454 ( .A(n101), .Z(n371) );
  GTECH_NOT U455 ( .A(n372), .Z(n370) );
  GTECH_AND2 U456 ( .A(n373), .B(n256), .Z(controller_N56) );
  GTECH_XOR2 U457 ( .A(n372), .B(n101), .Z(n373) );
  GTECH_NAND2 U458 ( .A(n374), .B(n375), .Z(n372) );
  GTECH_NOT U459 ( .A(n98), .Z(n375) );
  GTECH_NOT U460 ( .A(n376), .Z(n374) );
  GTECH_AND2 U461 ( .A(n377), .B(n256), .Z(controller_N55) );
  GTECH_XOR2 U462 ( .A(n376), .B(n98), .Z(n377) );
  GTECH_NAND3 U463 ( .A(n378), .B(n379), .C(n380), .Z(n376) );
  GTECH_NOT U464 ( .A(n95), .Z(n379) );
  GTECH_OAI22 U465 ( .A(n95), .B(n381), .C(n254), .D(n382), .Z(controller_N54)
         );
  GTECH_MUX2 U466 ( .A(n378), .B(n383), .S(n95), .Z(n382) );
  GTECH_NAND2 U467 ( .A(n380), .B(n378), .Z(n383) );
  GTECH_NOT U468 ( .A(n92), .Z(n378) );
  GTECH_NOT U469 ( .A(n256), .Z(n254) );
  GTECH_MUX2 U470 ( .A(controller_N52), .B(n384), .S(n92), .Z(controller_N53)
         );
  GTECH_AND2 U471 ( .A(n256), .B(n380), .Z(n384) );
  GTECH_NOT U472 ( .A(n89), .Z(n380) );
  GTECH_NOT U473 ( .A(n381), .Z(controller_N52) );
  GTECH_NAND2 U474 ( .A(n89), .B(n256), .Z(n381) );
  GTECH_AO21 U475 ( .A(n385), .B(n386), .C(n268), .Z(n256) );
  GTECH_NOT U476 ( .A(n192), .Z(n268) );
  GTECH_AND8 U477 ( .A(n137), .B(n134), .C(n140), .D(n387), .E(n116), .F(n113), 
        .G(n119), .H(n388), .Z(n386) );
  GTECH_AND4 U478 ( .A(n110), .B(n107), .C(n104), .D(n101), .Z(n388) );
  GTECH_AND4 U479 ( .A(n131), .B(n128), .C(n125), .D(n122), .Z(n387) );
  GTECH_AND8 U480 ( .A(n188), .B(n176), .C(n98), .D(n389), .E(n158), .F(n155), 
        .G(n161), .H(n390), .Z(n385) );
  GTECH_AND4 U481 ( .A(n152), .B(n149), .C(n146), .D(n143), .Z(n390) );
  GTECH_AND4 U482 ( .A(n173), .B(n170), .C(n167), .D(n164), .Z(n389) );
  GTECH_AND2 U483 ( .A(controller_N95), .B(n189), .Z(controller_N102) );
  GTECH_NOT U484 ( .A(rst), .Z(n189) );
  GTECH_NAND2 U485 ( .A(n391), .B(n260), .Z(controller_N95) );
  GTECH_NAND3 U486 ( .A(n182), .B(n391), .C(n84), .Z(n260) );
  GTECH_NOT U487 ( .A(n179), .Z(n391) );
endmodule

