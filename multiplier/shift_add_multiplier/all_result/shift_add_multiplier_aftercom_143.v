
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
         n10, n34, n58, n61, n64, n67, n70, n73, n76, n79, n88, n91, n94, n97,
         n100, n103, n106, n109, n112, n115, n118, n121, n124, n127, n130,
         n133, n136, n139, n142, n145, n148, n151, n154, n157, n160, n163,
         n166, n169, n172, n175, n178, n181, n184, n187, n190, n191, n29, n30,
         n194, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
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
         n360, n361, n362, n363, n364, n365, n366;
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
  GTECH_FJK3S controller_state_reg_2_ ( .J(n30), .K(n30), .TI(controller_N96), 
        .TE(controller_N95), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_state_2_), .QN(n181) );
  GTECH_FJK3S controller_state_reg_1_ ( .J(n30), .K(n30), .TI(controller_N94), 
        .TE(controller_N95), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_state_1_), .QN(n178) );
  GTECH_FJK3S controller_count_reg_29_ ( .J(n30), .K(n30), .TI(controller_N81), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_29_), .QN(n175) );
  GTECH_FJK3S controller_count_reg_28_ ( .J(n30), .K(n30), .TI(controller_N80), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_28_), .QN(n172) );
  GTECH_FJK3S controller_count_reg_27_ ( .J(n30), .K(n30), .TI(controller_N79), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_27_), .QN(n169) );
  GTECH_FJK3S controller_count_reg_26_ ( .J(n30), .K(n30), .TI(controller_N78), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_26_), .QN(n166) );
  GTECH_FJK3S controller_count_reg_25_ ( .J(n30), .K(n30), .TI(controller_N77), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_25_), .QN(n163) );
  GTECH_FJK3S controller_count_reg_24_ ( .J(n30), .K(n30), .TI(controller_N76), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_24_), .QN(n160) );
  GTECH_FJK3S controller_count_reg_23_ ( .J(n30), .K(n30), .TI(controller_N75), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_23_), .QN(n157) );
  GTECH_FJK3S controller_count_reg_22_ ( .J(n30), .K(n30), .TI(controller_N74), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_22_), .QN(n154) );
  GTECH_FJK3S controller_count_reg_21_ ( .J(n30), .K(n30), .TI(controller_N73), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_21_), .QN(n151) );
  GTECH_FJK3S controller_count_reg_20_ ( .J(n30), .K(n30), .TI(controller_N72), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_20_), .QN(n148) );
  GTECH_FJK3S controller_count_reg_19_ ( .J(n30), .K(n30), .TI(controller_N71), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_19_), .QN(n145) );
  GTECH_FJK3S controller_count_reg_18_ ( .J(n30), .K(n30), .TI(controller_N70), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_18_), .QN(n142) );
  GTECH_FJK3S controller_count_reg_17_ ( .J(n30), .K(n30), .TI(controller_N69), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_17_), .QN(n139) );
  GTECH_FJK3S controller_count_reg_16_ ( .J(n30), .K(n30), .TI(controller_N68), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_16_), .QN(n136) );
  GTECH_FJK3S controller_count_reg_15_ ( .J(n30), .K(n30), .TI(controller_N67), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_15_), .QN(n133) );
  GTECH_FJK3S controller_count_reg_14_ ( .J(n30), .K(n30), .TI(controller_N66), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_14_), .QN(n130) );
  GTECH_FJK3S controller_count_reg_13_ ( .J(n30), .K(n30), .TI(controller_N65), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_13_), .QN(n127) );
  GTECH_FJK3S controller_count_reg_12_ ( .J(n30), .K(n30), .TI(controller_N64), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_12_), .QN(n124) );
  GTECH_FJK3S controller_count_reg_11_ ( .J(n30), .K(n30), .TI(controller_N63), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_11_), .QN(n121) );
  GTECH_FJK3S controller_count_reg_10_ ( .J(n30), .K(n30), .TI(controller_N62), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_10_), .QN(n118) );
  GTECH_FJK3S controller_count_reg_9_ ( .J(n30), .K(n30), .TI(controller_N61), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_9_), .QN(n115) );
  GTECH_FJK3S controller_count_reg_8_ ( .J(n30), .K(n30), .TI(controller_N60), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_8_), .QN(n112) );
  GTECH_FJK3S controller_count_reg_7_ ( .J(n30), .K(n30), .TI(controller_N59), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_7_), .QN(n109) );
  GTECH_FJK3S controller_count_reg_6_ ( .J(n30), .K(n30), .TI(controller_N58), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_6_), .QN(n106) );
  GTECH_FJK3S controller_count_reg_5_ ( .J(n30), .K(n30), .TI(controller_N57), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_5_), .QN(n103) );
  GTECH_FJK3S controller_count_reg_4_ ( .J(n30), .K(n30), .TI(controller_N56), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_4_), .QN(n100) );
  GTECH_FJK3S controller_count_reg_3_ ( .J(n30), .K(n30), .TI(controller_N55), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_3_), .QN(n97) );
  GTECH_FJK3S controller_count_reg_2_ ( .J(n30), .K(n30), .TI(controller_N54), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_2_), .QN(n94) );
  GTECH_FJK3S controller_count_reg_1_ ( .J(n30), .K(n30), .TI(controller_N53), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_1_), .QN(n91) );
  GTECH_FJK3S controller_count_reg_0_ ( .J(n30), .K(n30), .TI(controller_N52), 
        .TE(controller_N98), .CP(clk), .CD(n191), .SD(n29), .Q(
        controller_count_0_), .QN(n88) );
  GTECH_FJK1S controller_shift_cmd_reg ( .J(n30), .K(n30), .TI(controller_N98), 
        .TE(controller_N102), .CP(clk), .Q(n8) );
  GTECH_FJK1S controller_load_cmd_reg ( .J(n30), .K(n30), .TI(controller_N90), 
        .TE(controller_N102), .CP(clk), .Q(load_cmd), .QN(n9) );
  GTECH_FJK1S controller_add_cmd_reg ( .J(n30), .K(n30), .TI(controller_N91), 
        .TE(controller_N102), .CP(clk), .Q(add_cmd), .QN(n10) );
  GTECH_FJK3S shifter_add_temp_reg ( .J(n30), .K(n30), .TI(shifter_N24), .TE(
        shifter_N23), .CP(clk), .CD(n191), .SD(n29), .Q(shifter_add_temp) );
  GTECH_FJK3S shifter_temp_reg_8_ ( .J(n30), .K(n30), .TI(shifter_N14), .TE(
        shifter_N22), .CP(clk), .CD(n191), .SD(n29), .Q(A[0]), .QN(n79) );
  GTECH_FJK3S shifter_temp_reg_15_ ( .J(n30), .K(n30), .TI(shifter_N21), .TE(
        shifter_N22), .CP(clk), .CD(n191), .SD(n29), .Q(A[7]), .QN(n76) );
  GTECH_FJK3S shifter_temp_reg_14_ ( .J(n30), .K(n30), .TI(shifter_N20), .TE(
        shifter_N22), .CP(clk), .CD(n191), .SD(n29), .Q(A[6]), .QN(n73) );
  GTECH_FJK3S shifter_temp_reg_13_ ( .J(n30), .K(n30), .TI(shifter_N19), .TE(
        shifter_N22), .CP(clk), .CD(n191), .SD(n29), .Q(A[5]), .QN(n70) );
  GTECH_FJK3S shifter_temp_reg_12_ ( .J(n30), .K(n30), .TI(shifter_N18), .TE(
        shifter_N22), .CP(clk), .CD(n191), .SD(n29), .Q(A[4]), .QN(n67) );
  GTECH_FJK3S shifter_temp_reg_11_ ( .J(n30), .K(n30), .TI(shifter_N17), .TE(
        shifter_N22), .CP(clk), .CD(n191), .SD(n29), .Q(A[3]), .QN(n64) );
  GTECH_FJK3S shifter_temp_reg_10_ ( .J(n30), .K(n30), .TI(shifter_N16), .TE(
        shifter_N22), .CP(clk), .CD(n191), .SD(n29), .Q(A[2]), .QN(n61) );
  GTECH_FJK3S shifter_temp_reg_9_ ( .J(n30), .K(n30), .TI(shifter_N15), .TE(
        shifter_N22), .CP(clk), .CD(n191), .SD(n29), .Q(A[1]), .QN(n58) );
  GTECH_FJK3S shifter_temp_reg_7_ ( .J(n30), .K(n30), .TI(shifter_N13), .TE(
        shifter_N22), .CP(clk), .CD(n191), .SD(n29), .Q(shifter_temp_7_) );
  GTECH_FJK3S shifter_temp_reg_6_ ( .J(n30), .K(n30), .TI(shifter_N12), .TE(
        shifter_N22), .CP(clk), .CD(n191), .SD(n29), .Q(shifter_temp_6_) );
  GTECH_FJK3S shifter_temp_reg_5_ ( .J(n30), .K(n30), .TI(shifter_N11), .TE(
        shifter_N22), .CP(clk), .CD(n191), .SD(n29), .Q(shifter_temp_5_) );
  GTECH_FJK3S shifter_temp_reg_4_ ( .J(n30), .K(n30), .TI(shifter_N10), .TE(
        shifter_N22), .CP(clk), .CD(n191), .SD(n29), .Q(shifter_temp_4_) );
  GTECH_FJK3S shifter_temp_reg_3_ ( .J(n30), .K(n30), .TI(shifter_N9), .TE(
        shifter_N22), .CP(clk), .CD(n191), .SD(n29), .Q(shifter_temp_3_) );
  GTECH_FJK3S shifter_temp_reg_2_ ( .J(n30), .K(n30), .TI(shifter_N8), .TE(
        shifter_N22), .CP(clk), .CD(n191), .SD(n29), .Q(shifter_temp_2_) );
  GTECH_FJK3S shifter_temp_reg_1_ ( .J(n30), .K(n30), .TI(shifter_N7), .TE(
        shifter_N22), .CP(clk), .CD(n191), .SD(n29), .Q(shifter_temp_1_) );
  GTECH_FJK3S shifter_temp_reg_0_ ( .J(n30), .K(n30), .TI(shifter_N6), .TE(
        shifter_N22), .CP(clk), .CD(n191), .SD(n29), .Q(lsb), .QN(n34) );
  GTECH_FJK3S controller_out_cmd_reg ( .J(n30), .K(n30), .TI(controller_N92), 
        .TE(controller_N95), .CP(clk), .CD(n191), .SD(n29), .Q(out_cmd) );
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
  GTECH_OR_NOT U223 ( .A(n203), .B(n202), .Z(shifter_N23) );
  GTECH_OR_NOT U224 ( .A(n10), .B(n9), .Z(n202) );
  GTECH_OR_NOT U225 ( .A(n198), .B(n196), .Z(shifter_N22) );
  GTECH_AND2 U226 ( .A(n203), .B(n204), .Z(shifter_N21) );
  GTECH_OAI22 U227 ( .A(n205), .B(n206), .C(n76), .D(n207), .Z(n204) );
  GTECH_NOT U228 ( .A(n208), .Z(n207) );
  GTECH_OAI22 U229 ( .A(n76), .B(n209), .C(n210), .D(n211), .Z(shifter_N20) );
  GTECH_OA21 U230 ( .A(n76), .B(n208), .C(n212), .Z(n210) );
  GTECH_MUX2 U231 ( .A(n213), .B(n214), .S(n205), .Z(n212) );
  GTECH_OR_NOT U232 ( .A(n206), .B(n76), .Z(n214) );
  GTECH_XOR2 U233 ( .A(n206), .B(n76), .Z(n213) );
  GTECH_NOT U234 ( .A(D[7]), .Z(n206) );
  GTECH_OR_NOT U235 ( .A(D[7]), .B(n205), .Z(n208) );
  GTECH_AND2 U236 ( .A(n215), .B(n216), .Z(n205) );
  GTECH_OR_NOT U237 ( .A(n73), .B(D[6]), .Z(n216) );
  GTECH_OAI21 U238 ( .A(D[6]), .B(n217), .C(n218), .Z(n215) );
  GTECH_OAI22 U239 ( .A(n73), .B(n209), .C(n219), .D(n211), .Z(shifter_N19) );
  GTECH_XOR3 U240 ( .A(n73), .B(D[6]), .C(n218), .Z(n219) );
  GTECH_OAI21 U241 ( .A(n70), .B(n220), .C(n221), .Z(n218) );
  GTECH_OAI21 U242 ( .A(D[5]), .B(n222), .C(n223), .Z(n221) );
  GTECH_NOT U243 ( .A(D[5]), .Z(n220) );
  GTECH_OAI22 U244 ( .A(n70), .B(n209), .C(n224), .D(n211), .Z(shifter_N18) );
  GTECH_XOR3 U245 ( .A(n70), .B(D[5]), .C(n223), .Z(n224) );
  GTECH_OAI21 U246 ( .A(n67), .B(n225), .C(n226), .Z(n223) );
  GTECH_OAI21 U247 ( .A(D[4]), .B(n227), .C(n228), .Z(n226) );
  GTECH_NOT U248 ( .A(D[4]), .Z(n225) );
  GTECH_OAI22 U249 ( .A(n67), .B(n209), .C(n229), .D(n211), .Z(shifter_N17) );
  GTECH_XOR3 U250 ( .A(n67), .B(D[4]), .C(n228), .Z(n229) );
  GTECH_OAI21 U251 ( .A(n64), .B(n230), .C(n231), .Z(n228) );
  GTECH_OAI21 U252 ( .A(D[3]), .B(n232), .C(n233), .Z(n231) );
  GTECH_NOT U253 ( .A(D[3]), .Z(n230) );
  GTECH_OAI22 U254 ( .A(n64), .B(n209), .C(n234), .D(n211), .Z(shifter_N16) );
  GTECH_XOR3 U255 ( .A(n64), .B(D[3]), .C(n233), .Z(n234) );
  GTECH_OAI21 U256 ( .A(n61), .B(n235), .C(n236), .Z(n233) );
  GTECH_OAI21 U257 ( .A(D[2]), .B(n237), .C(n238), .Z(n236) );
  GTECH_NOT U258 ( .A(D[2]), .Z(n235) );
  GTECH_OAI22 U259 ( .A(n61), .B(n209), .C(n239), .D(n211), .Z(shifter_N15) );
  GTECH_XOR3 U260 ( .A(n61), .B(D[2]), .C(n238), .Z(n239) );
  GTECH_OAI21 U261 ( .A(n58), .B(n240), .C(n241), .Z(n238) );
  GTECH_OAI21 U262 ( .A(D[1]), .B(n242), .C(n243), .Z(n241) );
  GTECH_NOT U263 ( .A(D[1]), .Z(n240) );
  GTECH_OAI22 U264 ( .A(n58), .B(n209), .C(n211), .D(n244), .Z(shifter_N14) );
  GTECH_XOR3 U265 ( .A(n58), .B(D[1]), .C(n243), .Z(n244) );
  GTECH_NOT U266 ( .A(n245), .Z(n243) );
  GTECH_OR_NOT U267 ( .A(n79), .B(D[0]), .Z(n245) );
  GTECH_AO21 U268 ( .A(Q[7]), .B(n198), .C(n246), .Z(shifter_N13) );
  GTECH_OAI22 U269 ( .A(n211), .B(n247), .C(n79), .D(n209), .Z(n246) );
  GTECH_XOR2 U270 ( .A(D[0]), .B(n79), .Z(n247) );
  GTECH_OAI2N2 U271 ( .A(n196), .B(n248), .C(Q[6]), .D(n198), .Z(shifter_N12)
         );
  GTECH_NOT U272 ( .A(shifter_temp_7_), .Z(n248) );
  GTECH_OAI2N2 U273 ( .A(n196), .B(n249), .C(Q[5]), .D(n198), .Z(shifter_N11)
         );
  GTECH_NOT U274 ( .A(shifter_temp_6_), .Z(n249) );
  GTECH_OAI2N2 U275 ( .A(n196), .B(n250), .C(Q[4]), .D(n198), .Z(shifter_N10)
         );
  GTECH_NOT U276 ( .A(n9), .Z(n198) );
  GTECH_NOT U277 ( .A(shifter_temp_5_), .Z(n250) );
  GTECH_NOT U278 ( .A(n251), .Z(n196) );
  GTECH_OR_NOT U279 ( .A(n203), .B(n209), .Z(n251) );
  GTECH_NAND4 U280 ( .A(n9), .B(n8), .C(n10), .D(n252), .Z(n209) );
  GTECH_NOT U281 ( .A(shifter_add_temp), .Z(n252) );
  GTECH_NOT U282 ( .A(n211), .Z(n203) );
  GTECH_NAND4 U283 ( .A(shifter_add_temp), .B(n9), .C(n8), .D(n10), .Z(n211)
         );
  GTECH_AND2 U284 ( .A(out_cmd), .B(n242), .Z(out[9]) );
  GTECH_NOT U285 ( .A(n58), .Z(n242) );
  GTECH_AND2 U286 ( .A(out_cmd), .B(n253), .Z(out[8]) );
  GTECH_NOT U287 ( .A(n79), .Z(n253) );
  GTECH_AND2 U288 ( .A(out_cmd), .B(shifter_temp_7_), .Z(out[7]) );
  GTECH_AND2 U289 ( .A(out_cmd), .B(shifter_temp_6_), .Z(out[6]) );
  GTECH_AND2 U290 ( .A(out_cmd), .B(shifter_temp_5_), .Z(out[5]) );
  GTECH_AND2 U291 ( .A(out_cmd), .B(shifter_temp_4_), .Z(out[4]) );
  GTECH_AND2 U292 ( .A(out_cmd), .B(shifter_temp_3_), .Z(out[3]) );
  GTECH_AND2 U293 ( .A(out_cmd), .B(shifter_temp_2_), .Z(out[2]) );
  GTECH_AND2 U294 ( .A(out_cmd), .B(shifter_temp_1_), .Z(out[1]) );
  GTECH_AND2 U295 ( .A(out_cmd), .B(n254), .Z(out[15]) );
  GTECH_NOT U296 ( .A(n76), .Z(n254) );
  GTECH_AND2 U297 ( .A(out_cmd), .B(n217), .Z(out[14]) );
  GTECH_NOT U298 ( .A(n73), .Z(n217) );
  GTECH_AND2 U299 ( .A(out_cmd), .B(n222), .Z(out[13]) );
  GTECH_NOT U300 ( .A(n70), .Z(n222) );
  GTECH_AND2 U301 ( .A(out_cmd), .B(n227), .Z(out[12]) );
  GTECH_NOT U302 ( .A(n67), .Z(n227) );
  GTECH_AND2 U303 ( .A(out_cmd), .B(n232), .Z(out[11]) );
  GTECH_NOT U304 ( .A(n64), .Z(n232) );
  GTECH_AND2 U305 ( .A(out_cmd), .B(n237), .Z(out[10]) );
  GTECH_NOT U306 ( .A(n61), .Z(n237) );
  GTECH_AND2 U307 ( .A(out_cmd), .B(n255), .Z(out[0]) );
  GTECH_AND2 U308 ( .A(controller_N98), .B(n256), .Z(controller_N97) );
  GTECH_OAI21 U309 ( .A(n255), .B(n257), .C(n258), .Z(controller_N96) );
  GTECH_OR_NOT U310 ( .A(n178), .B(n181), .Z(n257) );
  GTECH_OAI21 U311 ( .A(n256), .B(n259), .C(n260), .Z(controller_N94) );
  GTECH_AND2 U312 ( .A(n261), .B(n262), .Z(n260) );
  GTECH_NAND3 U313 ( .A(n263), .B(n255), .C(n264), .Z(n261) );
  GTECH_NOT U314 ( .A(n34), .Z(n255) );
  GTECH_AND_NOT U315 ( .A(n264), .B(n265), .Z(controller_N93) );
  GTECH_MUX2 U316 ( .A(n34), .B(n187), .S(n178), .Z(n265) );
  GTECH_AND3 U317 ( .A(n264), .B(n178), .C(n187), .Z(controller_N92) );
  GTECH_NOT U318 ( .A(n266), .Z(n264) );
  GTECH_OR_NOT U319 ( .A(n267), .B(n181), .Z(n266) );
  GTECH_NOT U320 ( .A(n258), .Z(controller_N91) );
  GTECH_NAND3 U321 ( .A(n263), .B(n267), .C(n181), .Z(n258) );
  GTECH_NOT U322 ( .A(n178), .Z(n263) );
  GTECH_NOT U323 ( .A(n262), .Z(controller_N90) );
  GTECH_NAND3 U324 ( .A(n178), .B(n267), .C(n181), .Z(n262) );
  GTECH_NOT U325 ( .A(n184), .Z(n267) );
  GTECH_OA21 U326 ( .A(n190), .B(n268), .C(n269), .Z(controller_N83) );
  GTECH_NOT U327 ( .A(n194), .Z(n269) );
  GTECH_AND2 U328 ( .A(n270), .B(n271), .Z(controller_N82) );
  GTECH_XOR2 U329 ( .A(n268), .B(n190), .Z(n270) );
  GTECH_OR_NOT U330 ( .A(n175), .B(n272), .Z(n268) );
  GTECH_NOT U331 ( .A(n273), .Z(n272) );
  GTECH_AND2 U332 ( .A(n274), .B(n271), .Z(controller_N81) );
  GTECH_XOR2 U333 ( .A(n273), .B(n175), .Z(n274) );
  GTECH_OR_NOT U334 ( .A(n172), .B(n275), .Z(n273) );
  GTECH_NOT U335 ( .A(n276), .Z(n275) );
  GTECH_AND2 U336 ( .A(n277), .B(n271), .Z(controller_N80) );
  GTECH_XOR2 U337 ( .A(n276), .B(n172), .Z(n277) );
  GTECH_OR_NOT U338 ( .A(n169), .B(n278), .Z(n276) );
  GTECH_NOT U339 ( .A(n279), .Z(n278) );
  GTECH_AND2 U340 ( .A(n280), .B(n271), .Z(controller_N79) );
  GTECH_XOR2 U341 ( .A(n279), .B(n169), .Z(n280) );
  GTECH_OR_NOT U342 ( .A(n166), .B(n281), .Z(n279) );
  GTECH_NOT U343 ( .A(n282), .Z(n281) );
  GTECH_AND2 U344 ( .A(n283), .B(n271), .Z(controller_N78) );
  GTECH_XOR2 U345 ( .A(n282), .B(n166), .Z(n283) );
  GTECH_OR_NOT U346 ( .A(n163), .B(n284), .Z(n282) );
  GTECH_NOT U347 ( .A(n285), .Z(n284) );
  GTECH_AND2 U348 ( .A(n286), .B(n271), .Z(controller_N77) );
  GTECH_XOR2 U349 ( .A(n285), .B(n163), .Z(n286) );
  GTECH_OR_NOT U350 ( .A(n160), .B(n287), .Z(n285) );
  GTECH_NOT U351 ( .A(n288), .Z(n287) );
  GTECH_AND2 U352 ( .A(n289), .B(n271), .Z(controller_N76) );
  GTECH_XOR2 U353 ( .A(n288), .B(n160), .Z(n289) );
  GTECH_OR_NOT U354 ( .A(n157), .B(n290), .Z(n288) );
  GTECH_NOT U355 ( .A(n291), .Z(n290) );
  GTECH_AND2 U356 ( .A(n292), .B(n271), .Z(controller_N75) );
  GTECH_XOR2 U357 ( .A(n291), .B(n157), .Z(n292) );
  GTECH_OR_NOT U358 ( .A(n154), .B(n293), .Z(n291) );
  GTECH_NOT U359 ( .A(n294), .Z(n293) );
  GTECH_AND2 U360 ( .A(n295), .B(n271), .Z(controller_N74) );
  GTECH_XOR2 U361 ( .A(n294), .B(n154), .Z(n295) );
  GTECH_OR_NOT U362 ( .A(n151), .B(n296), .Z(n294) );
  GTECH_NOT U363 ( .A(n297), .Z(n296) );
  GTECH_AND2 U364 ( .A(n298), .B(n271), .Z(controller_N73) );
  GTECH_XOR2 U365 ( .A(n297), .B(n151), .Z(n298) );
  GTECH_OR_NOT U366 ( .A(n148), .B(n299), .Z(n297) );
  GTECH_NOT U367 ( .A(n300), .Z(n299) );
  GTECH_AND2 U368 ( .A(n301), .B(n271), .Z(controller_N72) );
  GTECH_XOR2 U369 ( .A(n300), .B(n148), .Z(n301) );
  GTECH_OR_NOT U370 ( .A(n145), .B(n302), .Z(n300) );
  GTECH_NOT U371 ( .A(n303), .Z(n302) );
  GTECH_AND2 U372 ( .A(n304), .B(n271), .Z(controller_N71) );
  GTECH_XOR2 U373 ( .A(n303), .B(n145), .Z(n304) );
  GTECH_OR_NOT U374 ( .A(n142), .B(n305), .Z(n303) );
  GTECH_NOT U375 ( .A(n306), .Z(n305) );
  GTECH_AND2 U376 ( .A(n307), .B(n271), .Z(controller_N70) );
  GTECH_XOR2 U377 ( .A(n306), .B(n142), .Z(n307) );
  GTECH_OR_NOT U378 ( .A(n139), .B(n308), .Z(n306) );
  GTECH_NOT U379 ( .A(n309), .Z(n308) );
  GTECH_AND2 U380 ( .A(n310), .B(n271), .Z(controller_N69) );
  GTECH_XOR2 U381 ( .A(n309), .B(n139), .Z(n310) );
  GTECH_OR_NOT U382 ( .A(n136), .B(n311), .Z(n309) );
  GTECH_NOT U383 ( .A(n312), .Z(n311) );
  GTECH_AND2 U384 ( .A(n313), .B(n271), .Z(controller_N68) );
  GTECH_XOR2 U385 ( .A(n312), .B(n136), .Z(n313) );
  GTECH_OR_NOT U386 ( .A(n133), .B(n314), .Z(n312) );
  GTECH_NOT U387 ( .A(n315), .Z(n314) );
  GTECH_AND2 U388 ( .A(n316), .B(n271), .Z(controller_N67) );
  GTECH_XOR2 U389 ( .A(n315), .B(n133), .Z(n316) );
  GTECH_OR_NOT U390 ( .A(n130), .B(n317), .Z(n315) );
  GTECH_NOT U391 ( .A(n318), .Z(n317) );
  GTECH_AND2 U392 ( .A(n319), .B(n271), .Z(controller_N66) );
  GTECH_XOR2 U393 ( .A(n318), .B(n130), .Z(n319) );
  GTECH_OR_NOT U394 ( .A(n127), .B(n320), .Z(n318) );
  GTECH_NOT U395 ( .A(n321), .Z(n320) );
  GTECH_AND2 U396 ( .A(n322), .B(n271), .Z(controller_N65) );
  GTECH_XOR2 U397 ( .A(n321), .B(n127), .Z(n322) );
  GTECH_OR_NOT U398 ( .A(n124), .B(n323), .Z(n321) );
  GTECH_NOT U399 ( .A(n324), .Z(n323) );
  GTECH_AND2 U400 ( .A(n325), .B(n271), .Z(controller_N64) );
  GTECH_XOR2 U401 ( .A(n324), .B(n124), .Z(n325) );
  GTECH_OR_NOT U402 ( .A(n121), .B(n326), .Z(n324) );
  GTECH_NOT U403 ( .A(n327), .Z(n326) );
  GTECH_AND2 U404 ( .A(n328), .B(n271), .Z(controller_N63) );
  GTECH_XOR2 U405 ( .A(n327), .B(n121), .Z(n328) );
  GTECH_OR_NOT U406 ( .A(n118), .B(n329), .Z(n327) );
  GTECH_NOT U407 ( .A(n330), .Z(n329) );
  GTECH_AND2 U408 ( .A(n331), .B(n271), .Z(controller_N62) );
  GTECH_XOR2 U409 ( .A(n330), .B(n118), .Z(n331) );
  GTECH_OR_NOT U410 ( .A(n115), .B(n332), .Z(n330) );
  GTECH_NOT U411 ( .A(n333), .Z(n332) );
  GTECH_AND2 U412 ( .A(n334), .B(n271), .Z(controller_N61) );
  GTECH_XOR2 U413 ( .A(n333), .B(n115), .Z(n334) );
  GTECH_OR_NOT U414 ( .A(n112), .B(n335), .Z(n333) );
  GTECH_NOT U415 ( .A(n336), .Z(n335) );
  GTECH_AND2 U416 ( .A(n337), .B(n271), .Z(controller_N60) );
  GTECH_XOR2 U417 ( .A(n336), .B(n112), .Z(n337) );
  GTECH_OR_NOT U418 ( .A(n109), .B(n338), .Z(n336) );
  GTECH_NOT U419 ( .A(n339), .Z(n338) );
  GTECH_AND2 U420 ( .A(n340), .B(n271), .Z(controller_N59) );
  GTECH_XOR2 U421 ( .A(n339), .B(n109), .Z(n340) );
  GTECH_OR_NOT U422 ( .A(n106), .B(n341), .Z(n339) );
  GTECH_NOT U423 ( .A(n342), .Z(n341) );
  GTECH_AND2 U424 ( .A(n343), .B(n271), .Z(controller_N58) );
  GTECH_XOR2 U425 ( .A(n342), .B(n106), .Z(n343) );
  GTECH_OR_NOT U426 ( .A(n103), .B(n344), .Z(n342) );
  GTECH_NOT U427 ( .A(n345), .Z(n344) );
  GTECH_AND2 U428 ( .A(n346), .B(n271), .Z(controller_N57) );
  GTECH_XOR2 U429 ( .A(n345), .B(n103), .Z(n346) );
  GTECH_OR_NOT U430 ( .A(n100), .B(n347), .Z(n345) );
  GTECH_NOT U431 ( .A(n348), .Z(n347) );
  GTECH_AND2 U432 ( .A(n349), .B(n271), .Z(controller_N56) );
  GTECH_XOR2 U433 ( .A(n348), .B(n100), .Z(n349) );
  GTECH_OR_NOT U434 ( .A(n97), .B(n350), .Z(n348) );
  GTECH_NOT U435 ( .A(n351), .Z(n350) );
  GTECH_AND2 U436 ( .A(n352), .B(n271), .Z(controller_N55) );
  GTECH_XOR2 U437 ( .A(n351), .B(n97), .Z(n352) );
  GTECH_NAND3 U438 ( .A(n353), .B(n354), .C(n355), .Z(n351) );
  GTECH_NOT U439 ( .A(n94), .Z(n354) );
  GTECH_OAI22 U440 ( .A(n94), .B(n356), .C(n256), .D(n357), .Z(controller_N54)
         );
  GTECH_MUX2 U441 ( .A(n353), .B(n358), .S(n94), .Z(n357) );
  GTECH_OR_NOT U442 ( .A(n91), .B(n355), .Z(n358) );
  GTECH_NOT U443 ( .A(n91), .Z(n353) );
  GTECH_MUX2 U444 ( .A(controller_N52), .B(n359), .S(n91), .Z(controller_N53)
         );
  GTECH_AND2 U445 ( .A(n271), .B(n355), .Z(n359) );
  GTECH_NOT U446 ( .A(n88), .Z(n355) );
  GTECH_NOT U447 ( .A(n356), .Z(controller_N52) );
  GTECH_OR_NOT U448 ( .A(n256), .B(n88), .Z(n356) );
  GTECH_NOT U449 ( .A(n271), .Z(n256) );
  GTECH_OAI21 U450 ( .A(n360), .B(n361), .C(n194), .Z(n271) );
  GTECH_NAND8 U451 ( .A(n190), .B(n175), .C(n97), .D(n362), .E(n157), .F(n154), 
        .G(n160), .H(n363), .Z(n361) );
  GTECH_AND4 U452 ( .A(n151), .B(n148), .C(n145), .D(n142), .Z(n363) );
  GTECH_AND4 U453 ( .A(n172), .B(n169), .C(n166), .D(n163), .Z(n362) );
  GTECH_NAND8 U454 ( .A(n136), .B(n133), .C(n139), .D(n364), .E(n115), .F(n112), .G(n118), .H(n365), .Z(n360) );
  GTECH_AND4 U455 ( .A(n109), .B(n106), .C(n103), .D(n100), .Z(n365) );
  GTECH_AND4 U456 ( .A(n130), .B(n127), .C(n124), .D(n121), .Z(n364) );
  GTECH_AND2 U457 ( .A(controller_N95), .B(n191), .Z(controller_N102) );
  GTECH_NOT U458 ( .A(rst), .Z(n191) );
  GTECH_OR_NOT U459 ( .A(controller_N98), .B(n366), .Z(controller_N95) );
  GTECH_NOT U460 ( .A(n259), .Z(controller_N98) );
  GTECH_NAND3 U461 ( .A(n178), .B(n366), .C(n184), .Z(n259) );
  GTECH_NOT U462 ( .A(n181), .Z(n366) );
endmodule

