
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
         seven_segment0_N8, seven_segment0_N6, n13, n14, n15, n16, n18, n20,
         n22, n25, n26, n27, n28, n29, n30, n31, n32, n82, n160, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n181, n192, n193, n194, n195, n196, n197, n198,
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
         n342, n343, n344, n345, n346;
  wire   [8:0] clk_counter;
  wire   [3:0] edge_counter;
  wire   [11:0] update_period;
  wire   [3:0] ten_count;
  wire   [3:0] unit_count;
  wire   [0:3] seven_segment0_unit_count_reg;
  wire   [0:3] seven_segment0_ten_count_reg;

  GTECH_FJK1S update_period_reg_11_ ( .J(n82), .K(n82), .TI(N21), .TE(N20), 
        .CP(clk), .Q(update_period[11]) );
  GTECH_FJK1S update_period_reg_10_ ( .J(n82), .K(n82), .TI(N19), .TE(N20), 
        .CP(clk), .Q(update_period[10]) );
  GTECH_FJK1S update_period_reg_9_ ( .J(n82), .K(n82), .TI(N18), .TE(N20), 
        .CP(clk), .Q(update_period[9]) );
  GTECH_FJK1S update_period_reg_8_ ( .J(n82), .K(n82), .TI(N17), .TE(N20), 
        .CP(clk), .Q(update_period[8]) );
  GTECH_FJK1S update_period_reg_7_ ( .J(n82), .K(n82), .TI(N16), .TE(N20), 
        .CP(clk), .Q(update_period[7]) );
  GTECH_FJK1S update_period_reg_6_ ( .J(n82), .K(n82), .TI(N15), .TE(N20), 
        .CP(clk), .Q(update_period[6]) );
  GTECH_FJK1S update_period_reg_5_ ( .J(n82), .K(n82), .TI(N14), .TE(N20), 
        .CP(clk), .Q(update_period[5]) );
  GTECH_FJK1S update_period_reg_4_ ( .J(n82), .K(n82), .TI(N13), .TE(N20), 
        .CP(clk), .Q(update_period[4]) );
  GTECH_FJK1S update_period_reg_3_ ( .J(n82), .K(n82), .TI(N12), .TE(N20), 
        .CP(clk), .Q(update_period[3]) );
  GTECH_FJK1S update_period_reg_2_ ( .J(n82), .K(n82), .TI(N11), .TE(N20), 
        .CP(clk), .Q(update_period[2]) );
  GTECH_FJK1S update_period_reg_1_ ( .J(n82), .K(n82), .TI(N10), .TE(N20), 
        .CP(clk), .Q(update_period[1]), .QN(n181) );
  GTECH_FJK1S update_period_reg_0_ ( .J(n82), .K(n82), .TI(N9), .TE(N20), .CP(
        clk), .Q(update_period[0]) );
  GTECH_FD1 edge_detect0_q0_reg ( .D(signal), .CP(clk), .Q(edge_detect0_q0) );
  GTECH_FD1 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .Q(
        edge_detect0_q1) );
  GTECH_FD1 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK1S edge_counter_reg_5_ ( .J(n82), .K(n82), .TI(N146), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[1]), .QN(n179) );
  GTECH_FJK1S edge_counter_reg_6_ ( .J(n82), .K(n82), .TI(N148), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[2]), .QN(n178) );
  GTECH_FJK1S state_reg_0_ ( .J(n82), .K(n82), .TI(N150), .TE(N151), .CP(clk), 
        .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK1S state_reg_1_ ( .J(n82), .K(n82), .TI(N152), .TE(N151), .CP(clk), 
        .Q(dbg_state[1]), .QN(n164) );
  GTECH_FJK1S update_digits_reg ( .J(n82), .K(n82), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits), .QN(n15) );
  GTECH_FJK1S clk_counter_reg_10_ ( .J(n82), .K(n82), .TI(N132), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[1]), .QN(n177) );
  GTECH_FJK1S clk_counter_reg_0_ ( .J(n82), .K(n82), .TI(N112), .TE(N133), 
        .CP(clk), .Q(clk_counter[0]), .QN(n176) );
  GTECH_FJK1S clk_counter_reg_1_ ( .J(n82), .K(n82), .TI(N114), .TE(N133), 
        .CP(clk), .Q(clk_counter[1]), .QN(n175) );
  GTECH_FJK1S clk_counter_reg_2_ ( .J(n82), .K(n82), .TI(N116), .TE(N133), 
        .CP(clk), .Q(clk_counter[2]), .QN(n174) );
  GTECH_FJK1S clk_counter_reg_3_ ( .J(n82), .K(n82), .TI(N118), .TE(N133), 
        .CP(clk), .Q(clk_counter[3]), .QN(n173) );
  GTECH_FJK1S clk_counter_reg_4_ ( .J(n82), .K(n82), .TI(N120), .TE(N133), 
        .CP(clk), .Q(clk_counter[4]), .QN(n172) );
  GTECH_FJK1S clk_counter_reg_5_ ( .J(n82), .K(n82), .TI(N122), .TE(N133), 
        .CP(clk), .Q(clk_counter[5]), .QN(n171) );
  GTECH_FJK1S clk_counter_reg_6_ ( .J(n82), .K(n82), .TI(N124), .TE(N133), 
        .CP(clk), .Q(clk_counter[6]), .QN(n170) );
  GTECH_FJK1S clk_counter_reg_7_ ( .J(n82), .K(n82), .TI(N126), .TE(N133), 
        .CP(clk), .Q(clk_counter[7]), .QN(n169) );
  GTECH_FJK1S clk_counter_reg_8_ ( .J(n82), .K(n82), .TI(N128), .TE(N133), 
        .CP(clk), .Q(clk_counter[8]), .QN(n168) );
  GTECH_FJK1S clk_counter_reg_9_ ( .J(n82), .K(n82), .TI(N130), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[0]), .QN(n167) );
  GTECH_FJK1S clk_counter_reg_11_ ( .J(n82), .K(n82), .TI(N134), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[2]), .QN(n166) );
  GTECH_FJK1S edge_counter_reg_4_ ( .J(n82), .K(n82), .TI(N144), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[0]), .QN(n165) );
  GTECH_FJK1S edge_counter_reg_0_ ( .J(n82), .K(n82), .TI(N136), .TE(N147), 
        .CP(clk), .Q(N62), .QN(n16) );
  GTECH_FJK1S unit_count_reg_0_ ( .J(n82), .K(n82), .TI(N162), .TE(N167), .CP(
        clk), .Q(unit_count[0]) );
  GTECH_FJK1S edge_counter_reg_1_ ( .J(n82), .K(n82), .TI(N138), .TE(N147), 
        .CP(clk), .Q(edge_counter[1]), .QN(n18) );
  GTECH_FJK1S unit_count_reg_1_ ( .J(n82), .K(n82), .TI(N164), .TE(N167), .CP(
        clk), .Q(unit_count[1]) );
  GTECH_FJK1S edge_counter_reg_2_ ( .J(n82), .K(n82), .TI(N140), .TE(N147), 
        .CP(clk), .Q(edge_counter[2]), .QN(n20) );
  GTECH_FJK1S unit_count_reg_2_ ( .J(n82), .K(n82), .TI(N166), .TE(N167), .CP(
        clk), .Q(unit_count[2]) );
  GTECH_FJK1S edge_counter_reg_3_ ( .J(n82), .K(n82), .TI(N142), .TE(N147), 
        .CP(clk), .Q(edge_counter[3]), .QN(n22) );
  GTECH_FJK1S unit_count_reg_3_ ( .J(n82), .K(n82), .TI(N168), .TE(N167), .CP(
        clk), .Q(unit_count[3]) );
  GTECH_FJK1S ten_count_reg_0_ ( .J(n82), .K(n82), .TI(N154), .TE(N159), .CP(
        clk), .Q(ten_count[0]) );
  GTECH_FJK1S ten_count_reg_1_ ( .J(n82), .K(n82), .TI(N156), .TE(N159), .CP(
        clk), .Q(ten_count[1]) );
  GTECH_FJK1S ten_count_reg_2_ ( .J(n82), .K(n82), .TI(N158), .TE(N159), .CP(
        clk), .Q(ten_count[2]) );
  GTECH_FJK1S ten_count_reg_3_ ( .J(n82), .K(n82), .TI(N160), .TE(N159), .CP(
        clk), .Q(ten_count[3]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_0_ ( .J(n82), .K(n82), .TI(
        seven_segment0_N16), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[0]), .QN(n25) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_1_ ( .J(n82), .K(n82), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[1]), .QN(n26) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_2_ ( .J(n82), .K(n82), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[2]), .QN(n27) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_3_ ( .J(n82), .K(n82), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[3]), .QN(n28) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_0_ ( .J(n82), .K(n82), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[0]), .QN(n29) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_1_ ( .J(n82), .K(n82), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[1]), .QN(n30) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_2_ ( .J(n82), .K(n82), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[2]), .QN(n31) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_3_ ( .J(n82), .K(n82), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[3]), .QN(n32) );
  GTECH_FD1 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .Q(
        digit), .QN(n160) );
  GTECH_ZERO U173 ( .Z(n82) );
  GTECH_NAND2 U174 ( .A(n15), .B(n192), .Z(seven_segment0_N9) );
  GTECH_AND_NOT U175 ( .A(ten_count[0]), .B(reset), .Z(seven_segment0_N8) );
  GTECH_AND_NOT U176 ( .A(n160), .B(reset), .Z(seven_segment0_N6) );
  GTECH_AND_NOT U177 ( .A(unit_count[3]), .B(reset), .Z(seven_segment0_N22) );
  GTECH_AND_NOT U178 ( .A(unit_count[2]), .B(reset), .Z(seven_segment0_N20) );
  GTECH_AND_NOT U179 ( .A(unit_count[1]), .B(reset), .Z(seven_segment0_N18) );
  GTECH_AND_NOT U180 ( .A(unit_count[0]), .B(reset), .Z(seven_segment0_N16) );
  GTECH_AND_NOT U181 ( .A(ten_count[3]), .B(reset), .Z(seven_segment0_N14) );
  GTECH_AND_NOT U182 ( .A(ten_count[2]), .B(reset), .Z(seven_segment0_N12) );
  GTECH_AND_NOT U183 ( .A(ten_count[1]), .B(reset), .Z(seven_segment0_N10) );
  GTECH_NAND2 U184 ( .A(n193), .B(n194), .Z(segments[6]) );
  GTECH_OA21 U185 ( .A(n195), .B(n196), .C(n197), .Z(n194) );
  GTECH_OA21 U186 ( .A(n198), .B(n199), .C(n200), .Z(n193) );
  GTECH_NAND2 U187 ( .A(n200), .B(n201), .Z(segments[5]) );
  GTECH_OAI21 U188 ( .A(n198), .B(n199), .C(n202), .Z(segments[3]) );
  GTECH_AND_NOT U189 ( .A(n203), .B(segments[4]), .Z(n202) );
  GTECH_OAI21 U190 ( .A(n204), .B(n196), .C(n205), .Z(segments[4]) );
  GTECH_OA21 U191 ( .A(n206), .B(n207), .C(n197), .Z(n205) );
  GTECH_NAND3 U192 ( .A(n196), .B(n199), .C(n200), .Z(segments[2]) );
  GTECH_NOT U193 ( .A(n208), .Z(n200) );
  GTECH_NAND2 U194 ( .A(n203), .B(n207), .Z(n208) );
  GTECH_NAND3 U195 ( .A(n196), .B(n199), .C(n209), .Z(segments[1]) );
  GTECH_OA21 U196 ( .A(n210), .B(n207), .C(n197), .Z(n209) );
  GTECH_NAND3 U197 ( .A(n211), .B(n198), .C(n195), .Z(n207) );
  GTECH_NAND4 U198 ( .A(n197), .B(n201), .C(n203), .D(n199), .Z(segments[0])
         );
  GTECH_NAND3 U199 ( .A(n204), .B(n210), .C(n195), .Z(n199) );
  GTECH_NAND4 U200 ( .A(n195), .B(n206), .C(n204), .D(n198), .Z(n203) );
  GTECH_NOT U201 ( .A(n212), .Z(n198) );
  GTECH_NOT U202 ( .A(n211), .Z(n204) );
  GTECH_OAI21 U203 ( .A(n211), .B(n213), .C(n214), .Z(n201) );
  GTECH_NOT U204 ( .A(n196), .Z(n214) );
  GTECH_NAND2 U205 ( .A(n206), .B(n212), .Z(n196) );
  GTECH_NOT U206 ( .A(n195), .Z(n213) );
  GTECH_NAND4 U207 ( .A(n212), .B(n195), .C(n211), .D(n210), .Z(n197) );
  GTECH_NOT U208 ( .A(n206), .Z(n210) );
  GTECH_MUX2 U209 ( .A(n30), .B(n26), .S(n160), .Z(n206) );
  GTECH_MUX2 U210 ( .A(n29), .B(n25), .S(n160), .Z(n211) );
  GTECH_MUX2 U211 ( .A(n32), .B(n28), .S(n160), .Z(n195) );
  GTECH_MUX2 U212 ( .A(n31), .B(n27), .S(n160), .Z(n212) );
  GTECH_AO21 U213 ( .A(period[0]), .B(n215), .C(reset), .Z(N9) );
  GTECH_AND_NOT U214 ( .A(period[11]), .B(n216), .Z(N21) );
  GTECH_NAND2 U215 ( .A(n192), .B(n216), .Z(N20) );
  GTECH_AO21 U216 ( .A(period[10]), .B(n215), .C(reset), .Z(N19) );
  GTECH_AND_NOT U217 ( .A(period[9]), .B(n216), .Z(N18) );
  GTECH_AND_NOT U218 ( .A(period[8]), .B(n216), .Z(N17) );
  GTECH_AND_NOT U219 ( .A(N170), .B(n22), .Z(N168) );
  GTECH_NAND2 U220 ( .A(n217), .B(n218), .Z(N167) );
  GTECH_AND_NOT U221 ( .A(N170), .B(n20), .Z(N166) );
  GTECH_AND_NOT U222 ( .A(N170), .B(n18), .Z(N164) );
  GTECH_AND_NOT U223 ( .A(N170), .B(n16), .Z(N162) );
  GTECH_NOT U224 ( .A(n219), .Z(N170) );
  GTECH_NAND2 U225 ( .A(n220), .B(n192), .Z(n219) );
  GTECH_NOT U226 ( .A(n218), .Z(n220) );
  GTECH_AND_NOT U227 ( .A(N152), .B(n221), .Z(N160) );
  GTECH_XOR2 U228 ( .A(n222), .B(ten_count[3]), .Z(n221) );
  GTECH_OR_NOT U229 ( .A(n223), .B(ten_count[2]), .Z(n222) );
  GTECH_AO21 U230 ( .A(period[7]), .B(n215), .C(reset), .Z(N16) );
  GTECH_OAI21 U231 ( .A(n224), .B(n225), .C(n226), .Z(N159) );
  GTECH_AND_NOT U232 ( .A(N152), .B(n227), .Z(N158) );
  GTECH_XOR2 U233 ( .A(n223), .B(ten_count[2]), .Z(n227) );
  GTECH_AND_NOT U234 ( .A(n228), .B(n229), .Z(N156) );
  GTECH_OA21 U235 ( .A(ten_count[0]), .B(ten_count[1]), .C(n223), .Z(n228) );
  GTECH_NAND2 U236 ( .A(ten_count[1]), .B(ten_count[0]), .Z(n223) );
  GTECH_AND_NOT U237 ( .A(N152), .B(ten_count[0]), .Z(N154) );
  GTECH_NAND2 U238 ( .A(n230), .B(n164), .Z(N151) );
  GTECH_OA21 U239 ( .A(n14), .B(n231), .C(n217), .Z(n230) );
  GTECH_NOT U240 ( .A(n232), .Z(n217) );
  GTECH_OAI21 U241 ( .A(n233), .B(n224), .C(n192), .Z(n232) );
  GTECH_AND_NOT U242 ( .A(period[6]), .B(n216), .Z(N15) );
  GTECH_OAI21 U243 ( .A(n229), .B(n231), .C(n234), .Z(N148) );
  GTECH_MUX2 U244 ( .A(n235), .B(n236), .S(n178), .Z(n234) );
  GTECH_OR3 U245 ( .A(n179), .B(n237), .C(n238), .Z(n236) );
  GTECH_AND_NOT U246 ( .A(n239), .B(n240), .Z(n235) );
  GTECH_MUX2 U247 ( .A(n229), .B(n237), .S(n179), .Z(n239) );
  GTECH_NAND3 U248 ( .A(n241), .B(n218), .C(n226), .Z(N147) );
  GTECH_AND_NOT U249 ( .A(n192), .B(n242), .Z(n226) );
  GTECH_AND3 U250 ( .A(n233), .B(n164), .C(n231), .Z(n242) );
  GTECH_NAND4 U251 ( .A(n179), .B(n178), .C(n165), .D(n243), .Z(n231) );
  GTECH_NAND2 U252 ( .A(n14), .B(n244), .Z(n218) );
  GTECH_NOT U253 ( .A(n164), .Z(n244) );
  GTECH_NAND3 U254 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n241) );
  GTECH_MUX2 U255 ( .A(n240), .B(n245), .S(n179), .Z(N146) );
  GTECH_OAI21 U256 ( .A(n238), .B(n237), .C(n246), .Z(n245) );
  GTECH_OAI21 U257 ( .A(n247), .B(n237), .C(n248), .Z(n240) );
  GTECH_AO21 U258 ( .A(n243), .B(n165), .C(n229), .Z(n248) );
  GTECH_NOT U259 ( .A(n238), .Z(n247) );
  GTECH_NAND3 U260 ( .A(n249), .B(n250), .C(n251), .Z(n238) );
  GTECH_NOT U261 ( .A(n165), .Z(n249) );
  GTECH_NAND2 U262 ( .A(n252), .B(n246), .Z(N144) );
  GTECH_NAND3 U263 ( .A(N152), .B(n243), .C(n165), .Z(n246) );
  GTECH_MUX2 U264 ( .A(n253), .B(n254), .S(n165), .Z(n252) );
  GTECH_NAND3 U265 ( .A(n251), .B(n250), .C(N150), .Z(n254) );
  GTECH_OA21 U266 ( .A(n229), .B(n243), .C(n255), .Z(n253) );
  GTECH_OAI21 U267 ( .A(n22), .B(n256), .C(N150), .Z(n255) );
  GTECH_OAI21 U268 ( .A(n257), .B(n258), .C(n250), .Z(n243) );
  GTECH_NOT U269 ( .A(n22), .Z(n250) );
  GTECH_MUX2 U270 ( .A(n259), .B(n260), .S(n22), .Z(N142) );
  GTECH_OAI21 U271 ( .A(n256), .B(n237), .C(n261), .Z(n260) );
  GTECH_OAI21 U272 ( .A(n257), .B(n258), .C(N152), .Z(n261) );
  GTECH_OAI21 U273 ( .A(n251), .B(n237), .C(n262), .Z(n259) );
  GTECH_NOT U274 ( .A(n256), .Z(n251) );
  GTECH_NAND3 U275 ( .A(n257), .B(n258), .C(n263), .Z(n256) );
  GTECH_NOT U276 ( .A(n20), .Z(n258) );
  GTECH_NAND2 U277 ( .A(n264), .B(n262), .Z(N140) );
  GTECH_NAND3 U278 ( .A(n18), .B(N152), .C(n20), .Z(n262) );
  GTECH_NOT U279 ( .A(n229), .Z(N152) );
  GTECH_MUX2 U280 ( .A(n265), .B(n266), .S(n20), .Z(n264) );
  GTECH_NAND3 U281 ( .A(n263), .B(n257), .C(N150), .Z(n266) );
  GTECH_NOT U282 ( .A(n18), .Z(n257) );
  GTECH_NOT U283 ( .A(n16), .Z(n263) );
  GTECH_AND_NOT U284 ( .A(n267), .B(n268), .Z(n265) );
  GTECH_MUX2 U285 ( .A(n229), .B(n237), .S(n18), .Z(n267) );
  GTECH_AO21 U286 ( .A(period[5]), .B(n215), .C(reset), .Z(N14) );
  GTECH_MUX2 U287 ( .A(n268), .B(n269), .S(n18), .Z(N138) );
  GTECH_OAI21 U288 ( .A(n16), .B(n237), .C(n229), .Z(n269) );
  GTECH_NOT U289 ( .A(n270), .Z(n268) );
  GTECH_OAI21 U290 ( .A(n16), .B(n229), .C(n270), .Z(N136) );
  GTECH_NAND2 U291 ( .A(n16), .B(N150), .Z(n270) );
  GTECH_NOT U292 ( .A(n237), .Z(N150) );
  GTECH_NAND2 U293 ( .A(n271), .B(n192), .Z(n237) );
  GTECH_NOT U294 ( .A(n225), .Z(n271) );
  GTECH_NAND2 U295 ( .A(n164), .B(n272), .Z(n229) );
  GTECH_NOT U296 ( .A(N169), .Z(n272) );
  GTECH_NAND2 U297 ( .A(n192), .B(n233), .Z(N169) );
  GTECH_NOT U298 ( .A(n14), .Z(n233) );
  GTECH_OA21 U299 ( .A(n273), .B(n274), .C(n275), .Z(N134) );
  GTECH_NOR2 U300 ( .A(n276), .B(n177), .Z(n274) );
  GTECH_NAND2 U301 ( .A(n192), .B(n225), .Z(N133) );
  GTECH_NAND2 U302 ( .A(n164), .B(n14), .Z(n225) );
  GTECH_AND_NOT U303 ( .A(n277), .B(n278), .Z(N132) );
  GTECH_XOR2 U304 ( .A(n276), .B(n177), .Z(n277) );
  GTECH_NAND2 U305 ( .A(n279), .B(n280), .Z(n276) );
  GTECH_NOT U306 ( .A(n281), .Z(n279) );
  GTECH_AND_NOT U307 ( .A(n282), .B(n278), .Z(N130) );
  GTECH_XOR2 U308 ( .A(n281), .B(n167), .Z(n282) );
  GTECH_NAND2 U309 ( .A(n283), .B(n284), .Z(n281) );
  GTECH_NOT U310 ( .A(n168), .Z(n284) );
  GTECH_NOT U311 ( .A(n285), .Z(n283) );
  GTECH_AND_NOT U312 ( .A(period[4]), .B(n216), .Z(N13) );
  GTECH_AND_NOT U313 ( .A(n286), .B(n278), .Z(N128) );
  GTECH_XOR2 U314 ( .A(n285), .B(n168), .Z(n286) );
  GTECH_NAND2 U315 ( .A(n287), .B(n288), .Z(n285) );
  GTECH_NOT U316 ( .A(n289), .Z(n287) );
  GTECH_AND_NOT U317 ( .A(n290), .B(n278), .Z(N126) );
  GTECH_XOR2 U318 ( .A(n289), .B(n169), .Z(n290) );
  GTECH_NAND2 U319 ( .A(n291), .B(n292), .Z(n289) );
  GTECH_NOT U320 ( .A(n170), .Z(n292) );
  GTECH_NOT U321 ( .A(n293), .Z(n291) );
  GTECH_AND_NOT U322 ( .A(n294), .B(n278), .Z(N124) );
  GTECH_XOR2 U323 ( .A(n293), .B(n170), .Z(n294) );
  GTECH_NAND2 U324 ( .A(n295), .B(n296), .Z(n293) );
  GTECH_NOT U325 ( .A(n171), .Z(n296) );
  GTECH_NOT U326 ( .A(n297), .Z(n295) );
  GTECH_AND_NOT U327 ( .A(n298), .B(n278), .Z(N122) );
  GTECH_XOR2 U328 ( .A(n297), .B(n171), .Z(n298) );
  GTECH_NAND2 U329 ( .A(n299), .B(n300), .Z(n297) );
  GTECH_NOT U330 ( .A(n172), .Z(n300) );
  GTECH_NOT U331 ( .A(n301), .Z(n299) );
  GTECH_AND_NOT U332 ( .A(n302), .B(n278), .Z(N120) );
  GTECH_XOR2 U333 ( .A(n301), .B(n172), .Z(n302) );
  GTECH_NAND2 U334 ( .A(n303), .B(n304), .Z(n301) );
  GTECH_NOT U335 ( .A(n305), .Z(n303) );
  GTECH_AO21 U336 ( .A(period[3]), .B(n215), .C(reset), .Z(N12) );
  GTECH_AND_NOT U337 ( .A(n306), .B(n278), .Z(N118) );
  GTECH_XOR2 U338 ( .A(n305), .B(n173), .Z(n306) );
  GTECH_NAND3 U339 ( .A(n307), .B(n308), .C(n309), .Z(n305) );
  GTECH_NOT U340 ( .A(n174), .Z(n309) );
  GTECH_OAI22 U341 ( .A(n174), .B(n310), .C(n278), .D(n311), .Z(N116) );
  GTECH_MUX2 U342 ( .A(n307), .B(n312), .S(n174), .Z(n311) );
  GTECH_NAND2 U343 ( .A(n307), .B(n308), .Z(n312) );
  GTECH_NOT U344 ( .A(n176), .Z(n308) );
  GTECH_MUX2 U345 ( .A(N112), .B(n313), .S(n175), .Z(N114) );
  GTECH_AND_NOT U346 ( .A(n275), .B(n176), .Z(n313) );
  GTECH_NOT U347 ( .A(n310), .Z(N112) );
  GTECH_NAND2 U348 ( .A(n275), .B(n176), .Z(n310) );
  GTECH_NOT U349 ( .A(n278), .Z(n275) );
  GTECH_NAND2 U350 ( .A(n224), .B(n192), .Z(n278) );
  GTECH_NOT U351 ( .A(n314), .Z(n224) );
  GTECH_AOI222 U352 ( .A(n315), .B(n316), .C(update_period[11]), .D(n166), .E(
        n317), .F(n318), .Z(n314) );
  GTECH_OAI2N2 U353 ( .A(n319), .B(n320), .C(n321), .D(n322), .Z(n317) );
  GTECH_OAI21 U354 ( .A(n323), .B(n280), .C(n324), .Z(n322) );
  GTECH_NAND3 U355 ( .A(n325), .B(update_period[8]), .C(n168), .Z(n324) );
  GTECH_AND3 U356 ( .A(n325), .B(n321), .C(n318), .Z(n316) );
  GTECH_NAND2 U357 ( .A(n326), .B(n273), .Z(n318) );
  GTECH_NOT U358 ( .A(n166), .Z(n273) );
  GTECH_NOT U359 ( .A(update_period[11]), .Z(n326) );
  GTECH_NAND2 U360 ( .A(n320), .B(n319), .Z(n321) );
  GTECH_NOT U361 ( .A(n177), .Z(n319) );
  GTECH_NOT U362 ( .A(update_period[10]), .Z(n320) );
  GTECH_NAND2 U363 ( .A(n280), .B(n323), .Z(n325) );
  GTECH_NOT U364 ( .A(update_period[9]), .Z(n323) );
  GTECH_NOT U365 ( .A(n167), .Z(n280) );
  GTECH_OA22 U366 ( .A(n168), .B(update_period[8]), .C(n327), .D(n328), .Z(
        n315) );
  GTECH_OAI21 U367 ( .A(n288), .B(n329), .C(n330), .Z(n328) );
  GTECH_NAND3 U368 ( .A(n331), .B(update_period[6]), .C(n170), .Z(n330) );
  GTECH_OAI21 U369 ( .A(n332), .B(n333), .C(n334), .Z(n327) );
  GTECH_OR3 U370 ( .A(n335), .B(n332), .C(n336), .Z(n334) );
  GTECH_OAI22 U371 ( .A(update_period[5]), .B(n171), .C(n337), .D(n338), .Z(
        n336) );
  GTECH_OAI21 U372 ( .A(n304), .B(n339), .C(n340), .Z(n338) );
  GTECH_NAND3 U373 ( .A(n341), .B(update_period[2]), .C(n174), .Z(n340) );
  GTECH_AND3 U374 ( .A(n342), .B(n343), .C(n341), .Z(n337) );
  GTECH_NAND2 U375 ( .A(n339), .B(n304), .Z(n341) );
  GTECH_NOT U376 ( .A(n173), .Z(n304) );
  GTECH_NOT U377 ( .A(update_period[3]), .Z(n339) );
  GTECH_OAI21 U378 ( .A(n344), .B(n307), .C(n181), .Z(n343) );
  GTECH_NOT U379 ( .A(n175), .Z(n307) );
  GTECH_OA21 U380 ( .A(n174), .B(update_period[2]), .C(n345), .Z(n342) );
  GTECH_OR_NOT U381 ( .A(n175), .B(n344), .Z(n345) );
  GTECH_NAND2 U382 ( .A(update_period[0]), .B(n176), .Z(n344) );
  GTECH_NOR2 U383 ( .A(update_period[4]), .B(n172), .Z(n335) );
  GTECH_OAI21 U384 ( .A(update_period[5]), .B(n171), .C(n346), .Z(n333) );
  GTECH_AO22 U385 ( .A(update_period[5]), .B(n171), .C(update_period[4]), .D(
        n172), .Z(n346) );
  GTECH_OAI21 U386 ( .A(update_period[6]), .B(n170), .C(n331), .Z(n332) );
  GTECH_NAND2 U387 ( .A(n329), .B(n288), .Z(n331) );
  GTECH_NOT U388 ( .A(n169), .Z(n288) );
  GTECH_NOT U389 ( .A(update_period[7]), .Z(n329) );
  GTECH_AO21 U390 ( .A(period[2]), .B(n215), .C(reset), .Z(N11) );
  GTECH_AO21 U391 ( .A(period[1]), .B(n215), .C(reset), .Z(N10) );
  GTECH_NOT U392 ( .A(n216), .Z(n215) );
  GTECH_NAND2 U393 ( .A(period_load), .B(n192), .Z(n216) );
  GTECH_NOT U394 ( .A(reset), .Z(n192) );
endmodule

