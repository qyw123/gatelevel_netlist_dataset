
module frequency_counter ( clk, reset, signal, period, period_load, segments, 
        digit, dbg_state, dbg_clk_count, dbg_edge_count );
  input [11:0] period;
  output [6:0] segments;
  output [1:0] dbg_state;
  output [2:0] dbg_clk_count;
  output [2:0] dbg_edge_count;
  input clk, reset, signal, period_load;
  output digit;
  wire   N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20, N21,
         update_digits, N62, N112, N114, N116, N118, N120, N122, N124, N126,
         N128, N130, N132, N133, N134, N136, N138, N140, N142, N144, N146,
         N147, N148, N150, N151, N152, N154, N156, N158, N159, N160, N162,
         N164, N166, N167, N168, N169, N170, edge_detect0_q2, edge_detect0_q1,
         edge_detect0_q0, seven_segment0_N22, seven_segment0_N20,
         seven_segment0_N18, seven_segment0_N16, seven_segment0_N14,
         seven_segment0_N12, seven_segment0_N10, seven_segment0_N9,
         seven_segment0_N8, seven_segment0_N6, n13, n14, n15, n16, n20, n22,
         n25, n26, n27, n28, n29, n30, n31, n32, n82, n83, n164, n168,
         sub_85_carry_2_, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n185, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352;
  wire   [8:0] clk_counter;
  wire   [3:0] edge_counter;
  wire   [11:0] update_period;
  wire   [3:0] ten_count;
  wire   [3:0] unit_count;
  wire   [0:3] seven_segment0_unit_count_reg;
  wire   [0:3] seven_segment0_ten_count_reg;

  GTECH_FJK1S update_period_reg_11_ ( .J(n83), .K(n83), .TI(N21), .TE(N20), 
        .CP(clk), .Q(update_period[11]) );
  GTECH_FJK1S update_period_reg_10_ ( .J(n83), .K(n83), .TI(N19), .TE(N20), 
        .CP(clk), .Q(update_period[10]) );
  GTECH_FJK1S update_period_reg_9_ ( .J(n83), .K(n83), .TI(N18), .TE(N20), 
        .CP(clk), .Q(update_period[9]) );
  GTECH_FJK1S update_period_reg_8_ ( .J(n83), .K(n83), .TI(N17), .TE(N20), 
        .CP(clk), .Q(update_period[8]) );
  GTECH_FJK1S update_period_reg_7_ ( .J(n83), .K(n83), .TI(N16), .TE(N20), 
        .CP(clk), .Q(update_period[7]) );
  GTECH_FJK1S update_period_reg_6_ ( .J(n83), .K(n83), .TI(N15), .TE(N20), 
        .CP(clk), .Q(update_period[6]) );
  GTECH_FJK1S update_period_reg_5_ ( .J(n83), .K(n83), .TI(N14), .TE(N20), 
        .CP(clk), .Q(update_period[5]) );
  GTECH_FJK1S update_period_reg_4_ ( .J(n83), .K(n83), .TI(N13), .TE(N20), 
        .CP(clk), .Q(update_period[4]) );
  GTECH_FJK1S update_period_reg_3_ ( .J(n83), .K(n83), .TI(N12), .TE(N20), 
        .CP(clk), .Q(update_period[3]) );
  GTECH_FJK1S update_period_reg_2_ ( .J(n83), .K(n83), .TI(N11), .TE(N20), 
        .CP(clk), .Q(update_period[2]) );
  GTECH_FJK1S update_period_reg_1_ ( .J(n83), .K(n83), .TI(N10), .TE(N20), 
        .CP(clk), .Q(update_period[1]), .QN(n185) );
  GTECH_FJK1S update_period_reg_0_ ( .J(n83), .K(n83), .TI(N9), .TE(N20), .CP(
        clk), .Q(update_period[0]) );
  GTECH_FD2 edge_detect0_q0_reg ( .D(signal), .CP(clk), .CD(n82), .Q(
        edge_detect0_q0) );
  GTECH_FD2 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .CD(n82), .Q(
        edge_detect0_q1) );
  GTECH_FD2 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .CD(n82), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK1S edge_counter_reg_5_ ( .J(n83), .K(n83), .TI(N146), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[1]), .QN(n183) );
  GTECH_FJK1S edge_counter_reg_6_ ( .J(n83), .K(n83), .TI(N148), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[2]), .QN(n182) );
  GTECH_FJK1S state_reg_0_ ( .J(n83), .K(n83), .TI(N150), .TE(N151), .CP(clk), 
        .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK1S state_reg_1_ ( .J(n83), .K(n83), .TI(N152), .TE(N151), .CP(clk), 
        .Q(dbg_state[1]), .QN(n168) );
  GTECH_FJK1S update_digits_reg ( .J(n83), .K(n83), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits), .QN(n15) );
  GTECH_FJK1S clk_counter_reg_10_ ( .J(n83), .K(n83), .TI(N132), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[1]), .QN(n181) );
  GTECH_FJK1S clk_counter_reg_0_ ( .J(n83), .K(n83), .TI(N112), .TE(N133), 
        .CP(clk), .Q(clk_counter[0]), .QN(n180) );
  GTECH_FJK1S clk_counter_reg_1_ ( .J(n83), .K(n83), .TI(N114), .TE(N133), 
        .CP(clk), .Q(clk_counter[1]), .QN(n179) );
  GTECH_FJK1S clk_counter_reg_2_ ( .J(n83), .K(n83), .TI(N116), .TE(N133), 
        .CP(clk), .Q(clk_counter[2]), .QN(n178) );
  GTECH_FJK1S clk_counter_reg_3_ ( .J(n83), .K(n83), .TI(N118), .TE(N133), 
        .CP(clk), .Q(clk_counter[3]), .QN(n177) );
  GTECH_FJK1S clk_counter_reg_4_ ( .J(n83), .K(n83), .TI(N120), .TE(N133), 
        .CP(clk), .Q(clk_counter[4]), .QN(n176) );
  GTECH_FJK1S clk_counter_reg_5_ ( .J(n83), .K(n83), .TI(N122), .TE(N133), 
        .CP(clk), .Q(clk_counter[5]), .QN(n175) );
  GTECH_FJK1S clk_counter_reg_6_ ( .J(n83), .K(n83), .TI(N124), .TE(N133), 
        .CP(clk), .Q(clk_counter[6]), .QN(n174) );
  GTECH_FJK1S clk_counter_reg_7_ ( .J(n83), .K(n83), .TI(N126), .TE(N133), 
        .CP(clk), .Q(clk_counter[7]), .QN(n173) );
  GTECH_FJK1S clk_counter_reg_8_ ( .J(n83), .K(n83), .TI(N128), .TE(N133), 
        .CP(clk), .Q(clk_counter[8]), .QN(n172) );
  GTECH_FJK1S clk_counter_reg_9_ ( .J(n83), .K(n83), .TI(N130), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[0]), .QN(n171) );
  GTECH_FJK1S clk_counter_reg_11_ ( .J(n83), .K(n83), .TI(N134), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[2]), .QN(n170) );
  GTECH_FJK1S edge_counter_reg_4_ ( .J(n83), .K(n83), .TI(N144), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[0]), .QN(n169) );
  GTECH_FJK1S edge_counter_reg_0_ ( .J(n83), .K(n83), .TI(N136), .TE(N147), 
        .CP(clk), .Q(N62), .QN(n16) );
  GTECH_FJK1S unit_count_reg_0_ ( .J(n83), .K(n83), .TI(N162), .TE(N167), .CP(
        clk), .Q(unit_count[0]) );
  GTECH_FJK1S edge_counter_reg_1_ ( .J(n83), .K(n83), .TI(N138), .TE(N147), 
        .CP(clk), .Q(sub_85_carry_2_) );
  GTECH_FJK1S unit_count_reg_1_ ( .J(n83), .K(n83), .TI(N164), .TE(N167), .CP(
        clk), .Q(unit_count[1]) );
  GTECH_FJK1S edge_counter_reg_2_ ( .J(n83), .K(n83), .TI(N140), .TE(N147), 
        .CP(clk), .Q(edge_counter[2]), .QN(n20) );
  GTECH_FJK1S unit_count_reg_2_ ( .J(n83), .K(n83), .TI(N166), .TE(N167), .CP(
        clk), .Q(unit_count[2]) );
  GTECH_FJK1S edge_counter_reg_3_ ( .J(n83), .K(n83), .TI(N142), .TE(N147), 
        .CP(clk), .Q(edge_counter[3]), .QN(n22) );
  GTECH_FJK1S unit_count_reg_3_ ( .J(n83), .K(n83), .TI(N168), .TE(N167), .CP(
        clk), .Q(unit_count[3]) );
  GTECH_FJK1S ten_count_reg_0_ ( .J(n83), .K(n83), .TI(N154), .TE(N159), .CP(
        clk), .Q(ten_count[0]) );
  GTECH_FJK1S ten_count_reg_1_ ( .J(n83), .K(n83), .TI(N156), .TE(N159), .CP(
        clk), .Q(ten_count[1]) );
  GTECH_FJK1S ten_count_reg_2_ ( .J(n83), .K(n83), .TI(N158), .TE(N159), .CP(
        clk), .Q(ten_count[2]) );
  GTECH_FJK1S ten_count_reg_3_ ( .J(n83), .K(n83), .TI(N160), .TE(N159), .CP(
        clk), .Q(ten_count[3]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_0_ ( .J(n83), .K(n83), .TI(
        seven_segment0_N16), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[0]), .QN(n25) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_1_ ( .J(n83), .K(n83), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[1]), .QN(n26) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_2_ ( .J(n83), .K(n83), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[2]), .QN(n27) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_3_ ( .J(n83), .K(n83), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[3]), .QN(n28) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_0_ ( .J(n83), .K(n83), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[0]), .QN(n29) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_1_ ( .J(n83), .K(n83), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[1]), .QN(n30) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_2_ ( .J(n83), .K(n83), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[2]), .QN(n31) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_3_ ( .J(n83), .K(n83), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[3]), .QN(n32) );
  GTECH_FD2 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .CD(
        n82), .Q(digit), .QN(n164) );
  GTECH_ZERO U177 ( .Z(n83) );
  GTECH_ONE U178 ( .Z(n82) );
  GTECH_NAND2 U179 ( .A(n15), .B(n196), .Z(seven_segment0_N9) );
  GTECH_AND_NOT U180 ( .A(ten_count[0]), .B(reset), .Z(seven_segment0_N8) );
  GTECH_AND_NOT U181 ( .A(n164), .B(reset), .Z(seven_segment0_N6) );
  GTECH_AND_NOT U182 ( .A(unit_count[3]), .B(reset), .Z(seven_segment0_N22) );
  GTECH_AND_NOT U183 ( .A(unit_count[2]), .B(reset), .Z(seven_segment0_N20) );
  GTECH_AND_NOT U184 ( .A(unit_count[1]), .B(reset), .Z(seven_segment0_N18) );
  GTECH_AND_NOT U185 ( .A(unit_count[0]), .B(reset), .Z(seven_segment0_N16) );
  GTECH_AND_NOT U186 ( .A(ten_count[3]), .B(reset), .Z(seven_segment0_N14) );
  GTECH_AND_NOT U187 ( .A(ten_count[2]), .B(reset), .Z(seven_segment0_N12) );
  GTECH_AND_NOT U188 ( .A(ten_count[1]), .B(reset), .Z(seven_segment0_N10) );
  GTECH_NAND2 U189 ( .A(n197), .B(n198), .Z(segments[6]) );
  GTECH_OA21 U190 ( .A(n199), .B(n200), .C(n201), .Z(n198) );
  GTECH_OA21 U191 ( .A(n202), .B(n203), .C(n204), .Z(n197) );
  GTECH_NAND2 U192 ( .A(n204), .B(n205), .Z(segments[5]) );
  GTECH_OAI21 U193 ( .A(n202), .B(n203), .C(n206), .Z(segments[3]) );
  GTECH_AND_NOT U194 ( .A(n207), .B(segments[4]), .Z(n206) );
  GTECH_OAI21 U195 ( .A(n208), .B(n200), .C(n209), .Z(segments[4]) );
  GTECH_OA21 U196 ( .A(n210), .B(n211), .C(n201), .Z(n209) );
  GTECH_NAND3 U197 ( .A(n200), .B(n203), .C(n204), .Z(segments[2]) );
  GTECH_NOT U198 ( .A(n212), .Z(n204) );
  GTECH_NAND2 U199 ( .A(n207), .B(n211), .Z(n212) );
  GTECH_NAND3 U200 ( .A(n200), .B(n203), .C(n213), .Z(segments[1]) );
  GTECH_OA21 U201 ( .A(n214), .B(n211), .C(n201), .Z(n213) );
  GTECH_NAND3 U202 ( .A(n215), .B(n202), .C(n199), .Z(n211) );
  GTECH_NAND4 U203 ( .A(n201), .B(n205), .C(n207), .D(n203), .Z(segments[0])
         );
  GTECH_NAND3 U204 ( .A(n208), .B(n214), .C(n199), .Z(n203) );
  GTECH_NAND4 U205 ( .A(n199), .B(n210), .C(n208), .D(n202), .Z(n207) );
  GTECH_NOT U206 ( .A(n216), .Z(n202) );
  GTECH_NOT U207 ( .A(n215), .Z(n208) );
  GTECH_OAI21 U208 ( .A(n215), .B(n217), .C(n218), .Z(n205) );
  GTECH_NOT U209 ( .A(n200), .Z(n218) );
  GTECH_NAND2 U210 ( .A(n210), .B(n216), .Z(n200) );
  GTECH_NOT U211 ( .A(n199), .Z(n217) );
  GTECH_NAND4 U212 ( .A(n216), .B(n199), .C(n215), .D(n214), .Z(n201) );
  GTECH_NOT U213 ( .A(n210), .Z(n214) );
  GTECH_MUX2 U214 ( .A(n30), .B(n26), .S(n164), .Z(n210) );
  GTECH_MUX2 U215 ( .A(n29), .B(n25), .S(n164), .Z(n215) );
  GTECH_MUX2 U216 ( .A(n32), .B(n28), .S(n164), .Z(n199) );
  GTECH_MUX2 U217 ( .A(n31), .B(n27), .S(n164), .Z(n216) );
  GTECH_AO21 U218 ( .A(period[0]), .B(n219), .C(reset), .Z(N9) );
  GTECH_AND_NOT U219 ( .A(period[11]), .B(n220), .Z(N21) );
  GTECH_NAND2 U220 ( .A(n196), .B(n220), .Z(N20) );
  GTECH_AO21 U221 ( .A(period[10]), .B(n219), .C(reset), .Z(N19) );
  GTECH_AND_NOT U222 ( .A(period[9]), .B(n220), .Z(N18) );
  GTECH_AND_NOT U223 ( .A(period[8]), .B(n220), .Z(N17) );
  GTECH_AND_NOT U224 ( .A(N170), .B(n22), .Z(N168) );
  GTECH_NAND2 U225 ( .A(n221), .B(n222), .Z(N167) );
  GTECH_AND_NOT U226 ( .A(N170), .B(n20), .Z(N166) );
  GTECH_AND_NOT U227 ( .A(sub_85_carry_2_), .B(n223), .Z(N164) );
  GTECH_AND_NOT U228 ( .A(N170), .B(n16), .Z(N162) );
  GTECH_NOT U229 ( .A(n223), .Z(N170) );
  GTECH_NAND2 U230 ( .A(n224), .B(n196), .Z(n223) );
  GTECH_NOT U231 ( .A(n222), .Z(n224) );
  GTECH_AND_NOT U232 ( .A(N152), .B(n225), .Z(N160) );
  GTECH_XOR2 U233 ( .A(n226), .B(ten_count[3]), .Z(n225) );
  GTECH_OR_NOT U234 ( .A(n227), .B(ten_count[2]), .Z(n226) );
  GTECH_AO21 U235 ( .A(period[7]), .B(n219), .C(reset), .Z(N16) );
  GTECH_OAI21 U236 ( .A(n228), .B(n229), .C(n230), .Z(N159) );
  GTECH_AND_NOT U237 ( .A(N152), .B(n231), .Z(N158) );
  GTECH_XOR2 U238 ( .A(n227), .B(ten_count[2]), .Z(n231) );
  GTECH_AND_NOT U239 ( .A(n232), .B(n233), .Z(N156) );
  GTECH_OA21 U240 ( .A(ten_count[0]), .B(ten_count[1]), .C(n227), .Z(n232) );
  GTECH_NAND2 U241 ( .A(ten_count[1]), .B(ten_count[0]), .Z(n227) );
  GTECH_AND_NOT U242 ( .A(N152), .B(ten_count[0]), .Z(N154) );
  GTECH_NAND2 U243 ( .A(n234), .B(n168), .Z(N151) );
  GTECH_OA21 U244 ( .A(n14), .B(n235), .C(n221), .Z(n234) );
  GTECH_NOT U245 ( .A(n236), .Z(n221) );
  GTECH_OAI21 U246 ( .A(n237), .B(n228), .C(n196), .Z(n236) );
  GTECH_AND_NOT U247 ( .A(period[6]), .B(n220), .Z(N15) );
  GTECH_OAI21 U248 ( .A(n233), .B(n235), .C(n238), .Z(N148) );
  GTECH_MUX2 U249 ( .A(n239), .B(n240), .S(n182), .Z(n238) );
  GTECH_OR3 U250 ( .A(n183), .B(n241), .C(n242), .Z(n240) );
  GTECH_AND_NOT U251 ( .A(n243), .B(n244), .Z(n239) );
  GTECH_MUX2 U252 ( .A(n233), .B(n241), .S(n183), .Z(n243) );
  GTECH_NAND3 U253 ( .A(n245), .B(n222), .C(n230), .Z(N147) );
  GTECH_AND_NOT U254 ( .A(n196), .B(n246), .Z(n230) );
  GTECH_AND3 U255 ( .A(n237), .B(n168), .C(n235), .Z(n246) );
  GTECH_NAND4 U256 ( .A(n183), .B(n182), .C(n169), .D(n247), .Z(n235) );
  GTECH_NAND2 U257 ( .A(n14), .B(n248), .Z(n222) );
  GTECH_NOT U258 ( .A(n168), .Z(n248) );
  GTECH_NAND3 U259 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n245) );
  GTECH_MUX2 U260 ( .A(n244), .B(n249), .S(n183), .Z(N146) );
  GTECH_OAI21 U261 ( .A(n242), .B(n241), .C(n250), .Z(n249) );
  GTECH_OAI21 U262 ( .A(n251), .B(n241), .C(n252), .Z(n244) );
  GTECH_AO21 U263 ( .A(n247), .B(n169), .C(n233), .Z(n252) );
  GTECH_NOT U264 ( .A(n242), .Z(n251) );
  GTECH_NAND3 U265 ( .A(n253), .B(n254), .C(n255), .Z(n242) );
  GTECH_NOT U266 ( .A(n169), .Z(n253) );
  GTECH_NAND2 U267 ( .A(n256), .B(n250), .Z(N144) );
  GTECH_NAND3 U268 ( .A(N152), .B(n247), .C(n169), .Z(n250) );
  GTECH_MUX2 U269 ( .A(n257), .B(n258), .S(n169), .Z(n256) );
  GTECH_NAND3 U270 ( .A(n255), .B(n254), .C(N150), .Z(n258) );
  GTECH_OA21 U271 ( .A(n233), .B(n247), .C(n259), .Z(n257) );
  GTECH_OAI21 U272 ( .A(n22), .B(n260), .C(N150), .Z(n259) );
  GTECH_NAND2 U273 ( .A(n261), .B(n254), .Z(n247) );
  GTECH_NOT U274 ( .A(n22), .Z(n254) );
  GTECH_OAI21 U275 ( .A(n241), .B(n262), .C(n263), .Z(N142) );
  GTECH_MUX2 U276 ( .A(n264), .B(n265), .S(n22), .Z(n263) );
  GTECH_NAND2 U277 ( .A(N152), .B(n261), .Z(n265) );
  GTECH_XOR2 U278 ( .A(n22), .B(n255), .Z(n262) );
  GTECH_NOT U279 ( .A(n260), .Z(n255) );
  GTECH_NAND3 U280 ( .A(n266), .B(n267), .C(sub_85_carry_2_), .Z(n260) );
  GTECH_NOT U281 ( .A(n20), .Z(n267) );
  GTECH_NAND2 U282 ( .A(n268), .B(n264), .Z(N140) );
  GTECH_NAND2 U283 ( .A(n269), .B(N152), .Z(n264) );
  GTECH_NOT U284 ( .A(n233), .Z(N152) );
  GTECH_NOT U285 ( .A(n261), .Z(n269) );
  GTECH_NAND2 U286 ( .A(n20), .B(n270), .Z(n261) );
  GTECH_NOT U287 ( .A(sub_85_carry_2_), .Z(n270) );
  GTECH_MUX2 U288 ( .A(n271), .B(n272), .S(n20), .Z(n268) );
  GTECH_NAND3 U289 ( .A(sub_85_carry_2_), .B(n266), .C(N150), .Z(n272) );
  GTECH_NOT U290 ( .A(n16), .Z(n266) );
  GTECH_AND_NOT U291 ( .A(n273), .B(n274), .Z(n271) );
  GTECH_MUX2 U292 ( .A(n241), .B(n233), .S(sub_85_carry_2_), .Z(n273) );
  GTECH_AO21 U293 ( .A(period[5]), .B(n219), .C(reset), .Z(N14) );
  GTECH_MUX2 U294 ( .A(n275), .B(n274), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_NOT U295 ( .A(n276), .Z(n274) );
  GTECH_OAI21 U296 ( .A(n16), .B(n241), .C(n233), .Z(n275) );
  GTECH_OAI21 U297 ( .A(n16), .B(n233), .C(n276), .Z(N136) );
  GTECH_NAND2 U298 ( .A(n16), .B(N150), .Z(n276) );
  GTECH_NOT U299 ( .A(n241), .Z(N150) );
  GTECH_NAND2 U300 ( .A(n277), .B(n196), .Z(n241) );
  GTECH_NOT U301 ( .A(n229), .Z(n277) );
  GTECH_NAND2 U302 ( .A(n168), .B(n278), .Z(n233) );
  GTECH_NOT U303 ( .A(N169), .Z(n278) );
  GTECH_NAND2 U304 ( .A(n196), .B(n237), .Z(N169) );
  GTECH_NOT U305 ( .A(n14), .Z(n237) );
  GTECH_OA21 U306 ( .A(n279), .B(n280), .C(n281), .Z(N134) );
  GTECH_NOR2 U307 ( .A(n282), .B(n181), .Z(n280) );
  GTECH_NAND2 U308 ( .A(n196), .B(n229), .Z(N133) );
  GTECH_NAND2 U309 ( .A(n168), .B(n14), .Z(n229) );
  GTECH_AND_NOT U310 ( .A(n283), .B(n284), .Z(N132) );
  GTECH_XOR2 U311 ( .A(n282), .B(n181), .Z(n283) );
  GTECH_NAND2 U312 ( .A(n285), .B(n286), .Z(n282) );
  GTECH_NOT U313 ( .A(n287), .Z(n285) );
  GTECH_AND_NOT U314 ( .A(n288), .B(n284), .Z(N130) );
  GTECH_XOR2 U315 ( .A(n287), .B(n171), .Z(n288) );
  GTECH_NAND2 U316 ( .A(n289), .B(n290), .Z(n287) );
  GTECH_NOT U317 ( .A(n172), .Z(n290) );
  GTECH_NOT U318 ( .A(n291), .Z(n289) );
  GTECH_AND_NOT U319 ( .A(period[4]), .B(n220), .Z(N13) );
  GTECH_AND_NOT U320 ( .A(n292), .B(n284), .Z(N128) );
  GTECH_XOR2 U321 ( .A(n291), .B(n172), .Z(n292) );
  GTECH_NAND2 U322 ( .A(n293), .B(n294), .Z(n291) );
  GTECH_NOT U323 ( .A(n295), .Z(n293) );
  GTECH_AND_NOT U324 ( .A(n296), .B(n284), .Z(N126) );
  GTECH_XOR2 U325 ( .A(n295), .B(n173), .Z(n296) );
  GTECH_NAND2 U326 ( .A(n297), .B(n298), .Z(n295) );
  GTECH_NOT U327 ( .A(n174), .Z(n298) );
  GTECH_NOT U328 ( .A(n299), .Z(n297) );
  GTECH_AND_NOT U329 ( .A(n300), .B(n284), .Z(N124) );
  GTECH_XOR2 U330 ( .A(n299), .B(n174), .Z(n300) );
  GTECH_NAND2 U331 ( .A(n301), .B(n302), .Z(n299) );
  GTECH_NOT U332 ( .A(n175), .Z(n302) );
  GTECH_NOT U333 ( .A(n303), .Z(n301) );
  GTECH_AND_NOT U334 ( .A(n304), .B(n284), .Z(N122) );
  GTECH_XOR2 U335 ( .A(n303), .B(n175), .Z(n304) );
  GTECH_NAND2 U336 ( .A(n305), .B(n306), .Z(n303) );
  GTECH_NOT U337 ( .A(n307), .Z(n305) );
  GTECH_AND_NOT U338 ( .A(n308), .B(n284), .Z(N120) );
  GTECH_XOR2 U339 ( .A(n307), .B(n176), .Z(n308) );
  GTECH_NAND2 U340 ( .A(n309), .B(n310), .Z(n307) );
  GTECH_NOT U341 ( .A(n311), .Z(n309) );
  GTECH_AO21 U342 ( .A(period[3]), .B(n219), .C(reset), .Z(N12) );
  GTECH_AND_NOT U343 ( .A(n312), .B(n284), .Z(N118) );
  GTECH_XOR2 U344 ( .A(n311), .B(n177), .Z(n312) );
  GTECH_NAND3 U345 ( .A(n313), .B(n314), .C(n315), .Z(n311) );
  GTECH_NOT U346 ( .A(n178), .Z(n315) );
  GTECH_OAI22 U347 ( .A(n178), .B(n316), .C(n284), .D(n317), .Z(N116) );
  GTECH_MUX2 U348 ( .A(n313), .B(n318), .S(n178), .Z(n317) );
  GTECH_NAND2 U349 ( .A(n313), .B(n314), .Z(n318) );
  GTECH_NOT U350 ( .A(n180), .Z(n314) );
  GTECH_MUX2 U351 ( .A(N112), .B(n319), .S(n179), .Z(N114) );
  GTECH_AND_NOT U352 ( .A(n281), .B(n180), .Z(n319) );
  GTECH_NOT U353 ( .A(n316), .Z(N112) );
  GTECH_NAND2 U354 ( .A(n281), .B(n180), .Z(n316) );
  GTECH_NOT U355 ( .A(n284), .Z(n281) );
  GTECH_NAND2 U356 ( .A(n228), .B(n196), .Z(n284) );
  GTECH_NOT U357 ( .A(n320), .Z(n228) );
  GTECH_AOI222 U358 ( .A(n321), .B(n322), .C(update_period[11]), .D(n170), .E(
        n323), .F(n324), .Z(n320) );
  GTECH_OAI2N2 U359 ( .A(n325), .B(n326), .C(n327), .D(n328), .Z(n323) );
  GTECH_OAI21 U360 ( .A(n329), .B(n286), .C(n330), .Z(n328) );
  GTECH_NAND3 U361 ( .A(n331), .B(update_period[8]), .C(n172), .Z(n330) );
  GTECH_AND3 U362 ( .A(n331), .B(n327), .C(n324), .Z(n322) );
  GTECH_NAND2 U363 ( .A(n332), .B(n279), .Z(n324) );
  GTECH_NOT U364 ( .A(n170), .Z(n279) );
  GTECH_NOT U365 ( .A(update_period[11]), .Z(n332) );
  GTECH_NAND2 U366 ( .A(n326), .B(n325), .Z(n327) );
  GTECH_NOT U367 ( .A(n181), .Z(n325) );
  GTECH_NOT U368 ( .A(update_period[10]), .Z(n326) );
  GTECH_NAND2 U369 ( .A(n286), .B(n329), .Z(n331) );
  GTECH_NOT U370 ( .A(update_period[9]), .Z(n329) );
  GTECH_NOT U371 ( .A(n171), .Z(n286) );
  GTECH_OA22 U372 ( .A(n172), .B(update_period[8]), .C(n333), .D(n334), .Z(
        n321) );
  GTECH_OAI21 U373 ( .A(n294), .B(n335), .C(n336), .Z(n334) );
  GTECH_NAND3 U374 ( .A(n337), .B(update_period[6]), .C(n174), .Z(n336) );
  GTECH_OAI2N2 U375 ( .A(n338), .B(n339), .C(n340), .D(n341), .Z(n333) );
  GTECH_ADD_ABC U376 ( .A(n342), .B(n175), .C(update_period[5]), .COUT(n341)
         );
  GTECH_AND_NOT U377 ( .A(update_period[4]), .B(n306), .Z(n342) );
  GTECH_NOT U378 ( .A(n176), .Z(n306) );
  GTECH_OAI21 U379 ( .A(update_period[4]), .B(n176), .C(n340), .Z(n339) );
  GTECH_NOT U380 ( .A(n343), .Z(n340) );
  GTECH_OAI21 U381 ( .A(update_period[6]), .B(n174), .C(n337), .Z(n343) );
  GTECH_NAND2 U382 ( .A(n335), .B(n294), .Z(n337) );
  GTECH_NOT U383 ( .A(n173), .Z(n294) );
  GTECH_NOT U384 ( .A(update_period[7]), .Z(n335) );
  GTECH_OAI22 U385 ( .A(update_period[5]), .B(n175), .C(n344), .D(n345), .Z(
        n338) );
  GTECH_OAI21 U386 ( .A(n310), .B(n346), .C(n347), .Z(n345) );
  GTECH_NAND3 U387 ( .A(n348), .B(update_period[2]), .C(n178), .Z(n347) );
  GTECH_AND3 U388 ( .A(n349), .B(n350), .C(n348), .Z(n344) );
  GTECH_NAND2 U389 ( .A(n346), .B(n310), .Z(n348) );
  GTECH_NOT U390 ( .A(n177), .Z(n310) );
  GTECH_NOT U391 ( .A(update_period[3]), .Z(n346) );
  GTECH_OAI21 U392 ( .A(n351), .B(n313), .C(n185), .Z(n350) );
  GTECH_NOT U393 ( .A(n179), .Z(n313) );
  GTECH_OA21 U394 ( .A(n178), .B(update_period[2]), .C(n352), .Z(n349) );
  GTECH_OR_NOT U395 ( .A(n179), .B(n351), .Z(n352) );
  GTECH_NAND2 U396 ( .A(update_period[0]), .B(n180), .Z(n351) );
  GTECH_AO21 U397 ( .A(period[2]), .B(n219), .C(reset), .Z(N11) );
  GTECH_AO21 U398 ( .A(period[1]), .B(n219), .C(reset), .Z(N10) );
  GTECH_NOT U399 ( .A(n220), .Z(n219) );
  GTECH_NAND2 U400 ( .A(period_load), .B(n196), .Z(n220) );
  GTECH_NOT U401 ( .A(reset), .Z(n196) );
endmodule

