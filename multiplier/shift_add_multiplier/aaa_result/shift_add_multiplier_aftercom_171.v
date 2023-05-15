
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
         n10, n29, n53, n56, n59, n62, n65, n68, n71, n74, n86, n89, n92, n95,
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
         n381, n382, n383, n384, n385, n386, n387, n388, n389, n390, n391,
         n392;
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
  GTECH_FJK3S controller_state_reg_1_ ( .J(n28), .K(n28), .TI(controller_N94), 
        .TE(controller_N95), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_state_1_), .QN(n179) );
  GTECH_FJK3S controller_state_reg_2_ ( .J(n28), .K(n28), .TI(controller_N96), 
        .TE(controller_N95), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_state_2_), .QN(n176) );
  GTECH_FJK3S controller_count_reg_29_ ( .J(n28), .K(n28), .TI(controller_N81), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_29_), .QN(n173) );
  GTECH_FJK3S controller_count_reg_28_ ( .J(n28), .K(n28), .TI(controller_N80), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_28_), .QN(n170) );
  GTECH_FJK3S controller_count_reg_27_ ( .J(n28), .K(n28), .TI(controller_N79), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_27_), .QN(n167) );
  GTECH_FJK3S controller_count_reg_26_ ( .J(n28), .K(n28), .TI(controller_N78), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_26_), .QN(n164) );
  GTECH_FJK3S controller_count_reg_25_ ( .J(n28), .K(n28), .TI(controller_N77), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_25_), .QN(n161) );
  GTECH_FJK3S controller_count_reg_24_ ( .J(n28), .K(n28), .TI(controller_N76), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_24_), .QN(n158) );
  GTECH_FJK3S controller_count_reg_23_ ( .J(n28), .K(n28), .TI(controller_N75), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_23_), .QN(n155) );
  GTECH_FJK3S controller_count_reg_22_ ( .J(n28), .K(n28), .TI(controller_N74), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_22_), .QN(n152) );
  GTECH_FJK3S controller_count_reg_21_ ( .J(n28), .K(n28), .TI(controller_N73), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_21_), .QN(n149) );
  GTECH_FJK3S controller_count_reg_20_ ( .J(n28), .K(n28), .TI(controller_N72), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_20_), .QN(n146) );
  GTECH_FJK3S controller_count_reg_19_ ( .J(n28), .K(n28), .TI(controller_N71), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_19_), .QN(n143) );
  GTECH_FJK3S controller_count_reg_18_ ( .J(n28), .K(n28), .TI(controller_N70), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_18_), .QN(n140) );
  GTECH_FJK3S controller_count_reg_17_ ( .J(n28), .K(n28), .TI(controller_N69), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_17_), .QN(n137) );
  GTECH_FJK3S controller_count_reg_16_ ( .J(n28), .K(n28), .TI(controller_N68), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_16_), .QN(n134) );
  GTECH_FJK3S controller_count_reg_15_ ( .J(n28), .K(n28), .TI(controller_N67), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_15_), .QN(n131) );
  GTECH_FJK3S controller_count_reg_14_ ( .J(n28), .K(n28), .TI(controller_N66), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_14_), .QN(n128) );
  GTECH_FJK3S controller_count_reg_13_ ( .J(n28), .K(n28), .TI(controller_N65), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_13_), .QN(n125) );
  GTECH_FJK3S controller_count_reg_12_ ( .J(n28), .K(n28), .TI(controller_N64), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_12_), .QN(n122) );
  GTECH_FJK3S controller_count_reg_11_ ( .J(n28), .K(n28), .TI(controller_N63), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_11_), .QN(n119) );
  GTECH_FJK3S controller_count_reg_10_ ( .J(n28), .K(n28), .TI(controller_N62), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_10_), .QN(n116) );
  GTECH_FJK3S controller_count_reg_9_ ( .J(n28), .K(n28), .TI(controller_N61), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_9_), .QN(n113) );
  GTECH_FJK3S controller_count_reg_8_ ( .J(n28), .K(n28), .TI(controller_N60), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_8_), .QN(n110) );
  GTECH_FJK3S controller_count_reg_7_ ( .J(n28), .K(n28), .TI(controller_N59), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_7_), .QN(n107) );
  GTECH_FJK3S controller_count_reg_6_ ( .J(n28), .K(n28), .TI(controller_N58), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_6_), .QN(n104) );
  GTECH_FJK3S controller_count_reg_5_ ( .J(n28), .K(n28), .TI(controller_N57), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_5_), .QN(n101) );
  GTECH_FJK3S controller_count_reg_4_ ( .J(n28), .K(n28), .TI(controller_N56), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_4_), .QN(n98) );
  GTECH_FJK3S controller_count_reg_3_ ( .J(n28), .K(n28), .TI(controller_N55), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_3_), .QN(n95) );
  GTECH_FJK3S controller_count_reg_2_ ( .J(n28), .K(n28), .TI(controller_N54), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_2_), .QN(n92) );
  GTECH_FJK3S controller_count_reg_1_ ( .J(n28), .K(n28), .TI(controller_N53), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_1_), .QN(n89) );
  GTECH_FJK3S controller_count_reg_0_ ( .J(n28), .K(n28), .TI(controller_N52), 
        .TE(controller_N98), .CP(clk), .CD(n189), .SD(n27), .Q(
        controller_count_0_), .QN(n86) );
  GTECH_FJK1S controller_shift_cmd_reg ( .J(n28), .K(n28), .TI(controller_N98), 
        .TE(controller_N102), .CP(clk), .Q(n8) );
  GTECH_FJK1S controller_add_cmd_reg ( .J(n28), .K(n28), .TI(controller_N91), 
        .TE(controller_N102), .CP(clk), .Q(add_cmd), .QN(n9) );
  GTECH_FJK3S controller_out_cmd_reg ( .J(n28), .K(n28), .TI(controller_N92), 
        .TE(controller_N95), .CP(clk), .CD(n189), .SD(n27), .Q(out_cmd) );
  GTECH_FJK1S controller_load_cmd_reg ( .J(n28), .K(n28), .TI(controller_N90), 
        .TE(controller_N102), .CP(clk), .Q(load_cmd), .QN(n10) );
  GTECH_FJK3S shifter_add_temp_reg ( .J(n28), .K(n28), .TI(shifter_N24), .TE(
        shifter_N23), .CP(clk), .CD(n189), .SD(n27), .Q(shifter_add_temp) );
  GTECH_FJK3S shifter_temp_reg_8_ ( .J(n28), .K(n28), .TI(shifter_N14), .TE(
        shifter_N22), .CP(clk), .CD(n189), .SD(n27), .Q(A[0]), .QN(n74) );
  GTECH_FJK3S shifter_temp_reg_15_ ( .J(n28), .K(n28), .TI(shifter_N21), .TE(
        shifter_N22), .CP(clk), .CD(n189), .SD(n27), .Q(A[7]), .QN(n71) );
  GTECH_FJK3S shifter_temp_reg_14_ ( .J(n28), .K(n28), .TI(shifter_N20), .TE(
        shifter_N22), .CP(clk), .CD(n189), .SD(n27), .Q(A[6]), .QN(n68) );
  GTECH_FJK3S shifter_temp_reg_13_ ( .J(n28), .K(n28), .TI(shifter_N19), .TE(
        shifter_N22), .CP(clk), .CD(n189), .SD(n27), .Q(A[5]), .QN(n65) );
  GTECH_FJK3S shifter_temp_reg_12_ ( .J(n28), .K(n28), .TI(shifter_N18), .TE(
        shifter_N22), .CP(clk), .CD(n189), .SD(n27), .Q(A[4]), .QN(n62) );
  GTECH_FJK3S shifter_temp_reg_11_ ( .J(n28), .K(n28), .TI(shifter_N17), .TE(
        shifter_N22), .CP(clk), .CD(n189), .SD(n27), .Q(A[3]), .QN(n59) );
  GTECH_FJK3S shifter_temp_reg_10_ ( .J(n28), .K(n28), .TI(shifter_N16), .TE(
        shifter_N22), .CP(clk), .CD(n189), .SD(n27), .Q(A[2]), .QN(n56) );
  GTECH_FJK3S shifter_temp_reg_9_ ( .J(n28), .K(n28), .TI(shifter_N15), .TE(
        shifter_N22), .CP(clk), .CD(n189), .SD(n27), .Q(A[1]), .QN(n53) );
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
        shifter_N22), .CP(clk), .CD(n189), .SD(n27), .Q(lsb), .QN(n29) );
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
  GTECH_OAI22 U226 ( .A(n205), .B(n206), .C(n71), .D(n207), .Z(n204) );
  GTECH_NOT U227 ( .A(n208), .Z(n207) );
  GTECH_NOT U228 ( .A(n201), .Z(n203) );
  GTECH_OAI22 U229 ( .A(n71), .B(n209), .C(n210), .D(n201), .Z(shifter_N20) );
  GTECH_OA21 U230 ( .A(n71), .B(n208), .C(n211), .Z(n210) );
  GTECH_MUX2 U231 ( .A(n212), .B(n213), .S(n205), .Z(n211) );
  GTECH_NAND2 U232 ( .A(n71), .B(D[7]), .Z(n213) );
  GTECH_XOR2 U233 ( .A(n206), .B(n71), .Z(n212) );
  GTECH_NAND2 U234 ( .A(n205), .B(n206), .Z(n208) );
  GTECH_NOT U235 ( .A(D[7]), .Z(n206) );
  GTECH_OA21 U236 ( .A(n68), .B(n214), .C(n215), .Z(n205) );
  GTECH_OAI21 U237 ( .A(D[6]), .B(n216), .C(n217), .Z(n215) );
  GTECH_NOT U238 ( .A(D[6]), .Z(n214) );
  GTECH_OAI22 U239 ( .A(n68), .B(n209), .C(n218), .D(n201), .Z(shifter_N19) );
  GTECH_XOR3 U240 ( .A(n68), .B(D[6]), .C(n217), .Z(n218) );
  GTECH_OAI21 U241 ( .A(n65), .B(n219), .C(n220), .Z(n217) );
  GTECH_OAI21 U242 ( .A(D[5]), .B(n221), .C(n222), .Z(n220) );
  GTECH_NOT U243 ( .A(D[5]), .Z(n219) );
  GTECH_OAI22 U244 ( .A(n65), .B(n209), .C(n223), .D(n201), .Z(shifter_N18) );
  GTECH_XOR3 U245 ( .A(n65), .B(D[5]), .C(n222), .Z(n223) );
  GTECH_OAI21 U246 ( .A(n62), .B(n224), .C(n225), .Z(n222) );
  GTECH_OAI21 U247 ( .A(D[4]), .B(n226), .C(n227), .Z(n225) );
  GTECH_NOT U248 ( .A(D[4]), .Z(n224) );
  GTECH_OAI22 U249 ( .A(n62), .B(n209), .C(n228), .D(n201), .Z(shifter_N17) );
  GTECH_XOR3 U250 ( .A(n62), .B(D[4]), .C(n227), .Z(n228) );
  GTECH_OAI21 U251 ( .A(n59), .B(n229), .C(n230), .Z(n227) );
  GTECH_OAI21 U252 ( .A(D[3]), .B(n231), .C(n232), .Z(n230) );
  GTECH_NOT U253 ( .A(D[3]), .Z(n229) );
  GTECH_OAI22 U254 ( .A(n59), .B(n209), .C(n233), .D(n201), .Z(shifter_N16) );
  GTECH_XOR3 U255 ( .A(n59), .B(D[3]), .C(n232), .Z(n233) );
  GTECH_OAI21 U256 ( .A(n56), .B(n234), .C(n235), .Z(n232) );
  GTECH_OAI21 U257 ( .A(D[2]), .B(n236), .C(n237), .Z(n235) );
  GTECH_NOT U258 ( .A(D[2]), .Z(n234) );
  GTECH_OAI22 U259 ( .A(n56), .B(n209), .C(n238), .D(n201), .Z(shifter_N15) );
  GTECH_XOR3 U260 ( .A(n56), .B(D[2]), .C(n237), .Z(n238) );
  GTECH_OAI21 U261 ( .A(n53), .B(n239), .C(n240), .Z(n237) );
  GTECH_OAI21 U262 ( .A(D[1]), .B(n241), .C(n242), .Z(n240) );
  GTECH_NOT U263 ( .A(D[1]), .Z(n239) );
  GTECH_OAI22 U264 ( .A(n53), .B(n209), .C(n201), .D(n243), .Z(shifter_N14) );
  GTECH_XOR3 U265 ( .A(n53), .B(D[1]), .C(n242), .Z(n243) );
  GTECH_NOT U266 ( .A(n244), .Z(n242) );
  GTECH_NAND2 U267 ( .A(D[0]), .B(n245), .Z(n244) );
  GTECH_AO21 U268 ( .A(Q[7]), .B(n196), .C(n246), .Z(shifter_N13) );
  GTECH_OAI22 U269 ( .A(n201), .B(n247), .C(n74), .D(n209), .Z(n246) );
  GTECH_XOR2 U270 ( .A(D[0]), .B(n74), .Z(n247) );
  GTECH_OAI2N2 U271 ( .A(n194), .B(n248), .C(Q[6]), .D(n196), .Z(shifter_N12)
         );
  GTECH_NOT U272 ( .A(shifter_temp_7_), .Z(n248) );
  GTECH_OAI2N2 U273 ( .A(n194), .B(n249), .C(Q[5]), .D(n196), .Z(shifter_N11)
         );
  GTECH_NOT U274 ( .A(shifter_temp_6_), .Z(n249) );
  GTECH_OAI2N2 U275 ( .A(n194), .B(n250), .C(Q[4]), .D(n196), .Z(shifter_N10)
         );
  GTECH_NOT U276 ( .A(n10), .Z(n196) );
  GTECH_NOT U277 ( .A(shifter_temp_5_), .Z(n250) );
  GTECH_NOT U278 ( .A(n251), .Z(n194) );
  GTECH_NAND2 U279 ( .A(n201), .B(n209), .Z(n251) );
  GTECH_NAND4 U280 ( .A(n9), .B(n8), .C(n10), .D(n252), .Z(n209) );
  GTECH_NOT U281 ( .A(shifter_add_temp), .Z(n252) );
  GTECH_NAND4 U282 ( .A(shifter_add_temp), .B(n9), .C(n8), .D(n10), .Z(n201)
         );
  GTECH_AND2 U283 ( .A(out_cmd), .B(n241), .Z(out[9]) );
  GTECH_NOT U284 ( .A(n53), .Z(n241) );
  GTECH_AND2 U285 ( .A(out_cmd), .B(n245), .Z(out[8]) );
  GTECH_NOT U286 ( .A(n74), .Z(n245) );
  GTECH_AND2 U287 ( .A(out_cmd), .B(shifter_temp_7_), .Z(out[7]) );
  GTECH_AND2 U288 ( .A(out_cmd), .B(shifter_temp_6_), .Z(out[6]) );
  GTECH_AND2 U289 ( .A(out_cmd), .B(shifter_temp_5_), .Z(out[5]) );
  GTECH_AND2 U290 ( .A(out_cmd), .B(shifter_temp_4_), .Z(out[4]) );
  GTECH_AND2 U291 ( .A(out_cmd), .B(shifter_temp_3_), .Z(out[3]) );
  GTECH_AND2 U292 ( .A(out_cmd), .B(shifter_temp_2_), .Z(out[2]) );
  GTECH_AND2 U293 ( .A(out_cmd), .B(shifter_temp_1_), .Z(out[1]) );
  GTECH_AND2 U294 ( .A(out_cmd), .B(n253), .Z(out[15]) );
  GTECH_NOT U295 ( .A(n71), .Z(n253) );
  GTECH_AND2 U296 ( .A(out_cmd), .B(n216), .Z(out[14]) );
  GTECH_NOT U297 ( .A(n68), .Z(n216) );
  GTECH_AND2 U298 ( .A(out_cmd), .B(n221), .Z(out[13]) );
  GTECH_NOT U299 ( .A(n65), .Z(n221) );
  GTECH_AND2 U300 ( .A(out_cmd), .B(n226), .Z(out[12]) );
  GTECH_NOT U301 ( .A(n62), .Z(n226) );
  GTECH_AND2 U302 ( .A(out_cmd), .B(n231), .Z(out[11]) );
  GTECH_NOT U303 ( .A(n59), .Z(n231) );
  GTECH_AND2 U304 ( .A(out_cmd), .B(n236), .Z(out[10]) );
  GTECH_NOT U305 ( .A(n56), .Z(n236) );
  GTECH_AND2 U306 ( .A(out_cmd), .B(n254), .Z(out[0]) );
  GTECH_AND2 U307 ( .A(controller_N98), .B(n255), .Z(controller_N97) );
  GTECH_NOT U308 ( .A(n256), .Z(controller_N98) );
  GTECH_NAND2 U309 ( .A(n257), .B(n258), .Z(controller_N96) );
  GTECH_NAND3 U310 ( .A(n176), .B(n259), .C(n29), .Z(n258) );
  GTECH_OAI21 U311 ( .A(n255), .B(n256), .C(n260), .Z(controller_N94) );
  GTECH_AND2 U312 ( .A(n261), .B(n262), .Z(n260) );
  GTECH_NAND3 U313 ( .A(n259), .B(n254), .C(n263), .Z(n261) );
  GTECH_NOT U314 ( .A(n29), .Z(n254) );
  GTECH_AND_NOT U315 ( .A(n263), .B(n264), .Z(controller_N93) );
  GTECH_MUX2 U316 ( .A(n29), .B(n185), .S(n179), .Z(n264) );
  GTECH_AND3 U317 ( .A(n263), .B(n179), .C(n185), .Z(controller_N92) );
  GTECH_NOT U318 ( .A(n265), .Z(n263) );
  GTECH_NAND2 U319 ( .A(n176), .B(n182), .Z(n265) );
  GTECH_NOT U320 ( .A(n257), .Z(controller_N91) );
  GTECH_NAND3 U321 ( .A(n259), .B(n266), .C(n176), .Z(n257) );
  GTECH_NOT U322 ( .A(n179), .Z(n259) );
  GTECH_NOT U323 ( .A(n262), .Z(controller_N90) );
  GTECH_NAND3 U324 ( .A(n179), .B(n266), .C(n176), .Z(n262) );
  GTECH_NOT U325 ( .A(n182), .Z(n266) );
  GTECH_OA21 U326 ( .A(n188), .B(n267), .C(n268), .Z(controller_N83) );
  GTECH_NOT U327 ( .A(n192), .Z(n268) );
  GTECH_AND2 U328 ( .A(n269), .B(n270), .Z(controller_N82) );
  GTECH_XOR2 U329 ( .A(n267), .B(n188), .Z(n269) );
  GTECH_NAND2 U330 ( .A(n271), .B(n272), .Z(n267) );
  GTECH_NOT U331 ( .A(n173), .Z(n272) );
  GTECH_NOT U332 ( .A(n273), .Z(n271) );
  GTECH_AND2 U333 ( .A(n274), .B(n270), .Z(controller_N81) );
  GTECH_XOR2 U334 ( .A(n273), .B(n173), .Z(n274) );
  GTECH_NAND2 U335 ( .A(n275), .B(n276), .Z(n273) );
  GTECH_NOT U336 ( .A(n170), .Z(n276) );
  GTECH_NOT U337 ( .A(n277), .Z(n275) );
  GTECH_AND2 U338 ( .A(n278), .B(n270), .Z(controller_N80) );
  GTECH_XOR2 U339 ( .A(n277), .B(n170), .Z(n278) );
  GTECH_NAND2 U340 ( .A(n279), .B(n280), .Z(n277) );
  GTECH_NOT U341 ( .A(n167), .Z(n280) );
  GTECH_NOT U342 ( .A(n281), .Z(n279) );
  GTECH_AND2 U343 ( .A(n282), .B(n270), .Z(controller_N79) );
  GTECH_XOR2 U344 ( .A(n281), .B(n167), .Z(n282) );
  GTECH_NAND2 U345 ( .A(n283), .B(n284), .Z(n281) );
  GTECH_NOT U346 ( .A(n164), .Z(n284) );
  GTECH_NOT U347 ( .A(n285), .Z(n283) );
  GTECH_AND2 U348 ( .A(n286), .B(n270), .Z(controller_N78) );
  GTECH_XOR2 U349 ( .A(n285), .B(n164), .Z(n286) );
  GTECH_NAND2 U350 ( .A(n287), .B(n288), .Z(n285) );
  GTECH_NOT U351 ( .A(n161), .Z(n288) );
  GTECH_NOT U352 ( .A(n289), .Z(n287) );
  GTECH_AND2 U353 ( .A(n290), .B(n270), .Z(controller_N77) );
  GTECH_XOR2 U354 ( .A(n289), .B(n161), .Z(n290) );
  GTECH_NAND2 U355 ( .A(n291), .B(n292), .Z(n289) );
  GTECH_NOT U356 ( .A(n158), .Z(n292) );
  GTECH_NOT U357 ( .A(n293), .Z(n291) );
  GTECH_AND2 U358 ( .A(n294), .B(n270), .Z(controller_N76) );
  GTECH_XOR2 U359 ( .A(n293), .B(n158), .Z(n294) );
  GTECH_NAND2 U360 ( .A(n295), .B(n296), .Z(n293) );
  GTECH_NOT U361 ( .A(n155), .Z(n296) );
  GTECH_NOT U362 ( .A(n297), .Z(n295) );
  GTECH_AND2 U363 ( .A(n298), .B(n270), .Z(controller_N75) );
  GTECH_XOR2 U364 ( .A(n297), .B(n155), .Z(n298) );
  GTECH_NAND2 U365 ( .A(n299), .B(n300), .Z(n297) );
  GTECH_NOT U366 ( .A(n152), .Z(n300) );
  GTECH_NOT U367 ( .A(n301), .Z(n299) );
  GTECH_AND2 U368 ( .A(n302), .B(n270), .Z(controller_N74) );
  GTECH_XOR2 U369 ( .A(n301), .B(n152), .Z(n302) );
  GTECH_NAND2 U370 ( .A(n303), .B(n304), .Z(n301) );
  GTECH_NOT U371 ( .A(n149), .Z(n304) );
  GTECH_NOT U372 ( .A(n305), .Z(n303) );
  GTECH_AND2 U373 ( .A(n306), .B(n270), .Z(controller_N73) );
  GTECH_XOR2 U374 ( .A(n305), .B(n149), .Z(n306) );
  GTECH_NAND2 U375 ( .A(n307), .B(n308), .Z(n305) );
  GTECH_NOT U376 ( .A(n146), .Z(n308) );
  GTECH_NOT U377 ( .A(n309), .Z(n307) );
  GTECH_AND2 U378 ( .A(n310), .B(n270), .Z(controller_N72) );
  GTECH_XOR2 U379 ( .A(n309), .B(n146), .Z(n310) );
  GTECH_NAND2 U380 ( .A(n311), .B(n312), .Z(n309) );
  GTECH_NOT U381 ( .A(n143), .Z(n312) );
  GTECH_NOT U382 ( .A(n313), .Z(n311) );
  GTECH_AND2 U383 ( .A(n314), .B(n270), .Z(controller_N71) );
  GTECH_XOR2 U384 ( .A(n313), .B(n143), .Z(n314) );
  GTECH_NAND2 U385 ( .A(n315), .B(n316), .Z(n313) );
  GTECH_NOT U386 ( .A(n140), .Z(n316) );
  GTECH_NOT U387 ( .A(n317), .Z(n315) );
  GTECH_AND2 U388 ( .A(n318), .B(n270), .Z(controller_N70) );
  GTECH_XOR2 U389 ( .A(n317), .B(n140), .Z(n318) );
  GTECH_NAND2 U390 ( .A(n319), .B(n320), .Z(n317) );
  GTECH_NOT U391 ( .A(n137), .Z(n320) );
  GTECH_NOT U392 ( .A(n321), .Z(n319) );
  GTECH_AND2 U393 ( .A(n322), .B(n270), .Z(controller_N69) );
  GTECH_XOR2 U394 ( .A(n321), .B(n137), .Z(n322) );
  GTECH_NAND2 U395 ( .A(n323), .B(n324), .Z(n321) );
  GTECH_NOT U396 ( .A(n134), .Z(n324) );
  GTECH_NOT U397 ( .A(n325), .Z(n323) );
  GTECH_AND2 U398 ( .A(n326), .B(n270), .Z(controller_N68) );
  GTECH_XOR2 U399 ( .A(n325), .B(n134), .Z(n326) );
  GTECH_NAND2 U400 ( .A(n327), .B(n328), .Z(n325) );
  GTECH_NOT U401 ( .A(n131), .Z(n328) );
  GTECH_NOT U402 ( .A(n329), .Z(n327) );
  GTECH_AND2 U403 ( .A(n330), .B(n270), .Z(controller_N67) );
  GTECH_XOR2 U404 ( .A(n329), .B(n131), .Z(n330) );
  GTECH_NAND2 U405 ( .A(n331), .B(n332), .Z(n329) );
  GTECH_NOT U406 ( .A(n128), .Z(n332) );
  GTECH_NOT U407 ( .A(n333), .Z(n331) );
  GTECH_AND2 U408 ( .A(n334), .B(n270), .Z(controller_N66) );
  GTECH_XOR2 U409 ( .A(n333), .B(n128), .Z(n334) );
  GTECH_NAND2 U410 ( .A(n335), .B(n336), .Z(n333) );
  GTECH_NOT U411 ( .A(n125), .Z(n336) );
  GTECH_NOT U412 ( .A(n337), .Z(n335) );
  GTECH_AND2 U413 ( .A(n338), .B(n270), .Z(controller_N65) );
  GTECH_XOR2 U414 ( .A(n337), .B(n125), .Z(n338) );
  GTECH_NAND2 U415 ( .A(n339), .B(n340), .Z(n337) );
  GTECH_NOT U416 ( .A(n122), .Z(n340) );
  GTECH_NOT U417 ( .A(n341), .Z(n339) );
  GTECH_AND2 U418 ( .A(n342), .B(n270), .Z(controller_N64) );
  GTECH_XOR2 U419 ( .A(n341), .B(n122), .Z(n342) );
  GTECH_NAND2 U420 ( .A(n343), .B(n344), .Z(n341) );
  GTECH_NOT U421 ( .A(n119), .Z(n344) );
  GTECH_NOT U422 ( .A(n345), .Z(n343) );
  GTECH_AND2 U423 ( .A(n346), .B(n270), .Z(controller_N63) );
  GTECH_XOR2 U424 ( .A(n345), .B(n119), .Z(n346) );
  GTECH_NAND2 U425 ( .A(n347), .B(n348), .Z(n345) );
  GTECH_NOT U426 ( .A(n116), .Z(n348) );
  GTECH_NOT U427 ( .A(n349), .Z(n347) );
  GTECH_AND2 U428 ( .A(n350), .B(n270), .Z(controller_N62) );
  GTECH_XOR2 U429 ( .A(n349), .B(n116), .Z(n350) );
  GTECH_NAND2 U430 ( .A(n351), .B(n352), .Z(n349) );
  GTECH_NOT U431 ( .A(n113), .Z(n352) );
  GTECH_NOT U432 ( .A(n353), .Z(n351) );
  GTECH_AND2 U433 ( .A(n354), .B(n270), .Z(controller_N61) );
  GTECH_XOR2 U434 ( .A(n353), .B(n113), .Z(n354) );
  GTECH_NAND2 U435 ( .A(n355), .B(n356), .Z(n353) );
  GTECH_NOT U436 ( .A(n110), .Z(n356) );
  GTECH_NOT U437 ( .A(n357), .Z(n355) );
  GTECH_AND2 U438 ( .A(n358), .B(n270), .Z(controller_N60) );
  GTECH_XOR2 U439 ( .A(n357), .B(n110), .Z(n358) );
  GTECH_NAND2 U440 ( .A(n359), .B(n360), .Z(n357) );
  GTECH_NOT U441 ( .A(n107), .Z(n360) );
  GTECH_NOT U442 ( .A(n361), .Z(n359) );
  GTECH_AND2 U443 ( .A(n362), .B(n270), .Z(controller_N59) );
  GTECH_XOR2 U444 ( .A(n361), .B(n107), .Z(n362) );
  GTECH_NAND2 U445 ( .A(n363), .B(n364), .Z(n361) );
  GTECH_NOT U446 ( .A(n104), .Z(n364) );
  GTECH_NOT U447 ( .A(n365), .Z(n363) );
  GTECH_AND2 U448 ( .A(n366), .B(n270), .Z(controller_N58) );
  GTECH_XOR2 U449 ( .A(n365), .B(n104), .Z(n366) );
  GTECH_NAND2 U450 ( .A(n367), .B(n368), .Z(n365) );
  GTECH_NOT U451 ( .A(n101), .Z(n368) );
  GTECH_NOT U452 ( .A(n369), .Z(n367) );
  GTECH_AND2 U453 ( .A(n370), .B(n270), .Z(controller_N57) );
  GTECH_XOR2 U454 ( .A(n369), .B(n101), .Z(n370) );
  GTECH_NAND2 U455 ( .A(n371), .B(n372), .Z(n369) );
  GTECH_NOT U456 ( .A(n98), .Z(n372) );
  GTECH_NOT U457 ( .A(n373), .Z(n371) );
  GTECH_AND2 U458 ( .A(n374), .B(n270), .Z(controller_N56) );
  GTECH_XOR2 U459 ( .A(n373), .B(n98), .Z(n374) );
  GTECH_NAND2 U460 ( .A(n375), .B(n376), .Z(n373) );
  GTECH_NOT U461 ( .A(n95), .Z(n376) );
  GTECH_NOT U462 ( .A(n377), .Z(n375) );
  GTECH_AND2 U463 ( .A(n378), .B(n270), .Z(controller_N55) );
  GTECH_XOR2 U464 ( .A(n377), .B(n95), .Z(n378) );
  GTECH_NAND3 U465 ( .A(n379), .B(n380), .C(n381), .Z(n377) );
  GTECH_NOT U466 ( .A(n92), .Z(n380) );
  GTECH_OAI22 U467 ( .A(n92), .B(n382), .C(n255), .D(n383), .Z(controller_N54)
         );
  GTECH_MUX2 U468 ( .A(n379), .B(n384), .S(n92), .Z(n383) );
  GTECH_NAND2 U469 ( .A(n381), .B(n379), .Z(n384) );
  GTECH_NOT U470 ( .A(n89), .Z(n379) );
  GTECH_NOT U471 ( .A(n270), .Z(n255) );
  GTECH_MUX2 U472 ( .A(controller_N52), .B(n385), .S(n89), .Z(controller_N53)
         );
  GTECH_AND2 U473 ( .A(n270), .B(n381), .Z(n385) );
  GTECH_NOT U474 ( .A(n86), .Z(n381) );
  GTECH_NOT U475 ( .A(n382), .Z(controller_N52) );
  GTECH_NAND2 U476 ( .A(n86), .B(n270), .Z(n382) );
  GTECH_OAI21 U477 ( .A(n386), .B(n387), .C(n192), .Z(n270) );
  GTECH_NAND8 U478 ( .A(n95), .B(n188), .C(n98), .D(n388), .E(n158), .F(n155), 
        .G(n161), .H(n389), .Z(n387) );
  GTECH_AND4 U479 ( .A(n152), .B(n149), .C(n146), .D(n143), .Z(n389) );
  GTECH_AND4 U480 ( .A(n173), .B(n170), .C(n167), .D(n164), .Z(n388) );
  GTECH_NAND8 U481 ( .A(n137), .B(n134), .C(n140), .D(n390), .E(n116), .F(n113), .G(n119), .H(n391), .Z(n386) );
  GTECH_AND4 U482 ( .A(n110), .B(n107), .C(n104), .D(n101), .Z(n391) );
  GTECH_AND4 U483 ( .A(n131), .B(n128), .C(n125), .D(n122), .Z(n390) );
  GTECH_AND2 U484 ( .A(controller_N95), .B(n189), .Z(controller_N102) );
  GTECH_NOT U485 ( .A(rst), .Z(n189) );
  GTECH_NAND2 U486 ( .A(n392), .B(n256), .Z(controller_N95) );
  GTECH_NAND3 U487 ( .A(n179), .B(n392), .C(n182), .Z(n256) );
  GTECH_NOT U488 ( .A(n176), .Z(n392) );
endmodule

