
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
         n25, n26, n27, n28, n29, n30, n31, n32, n82, n160, n164,
         sub_85_carry_2_, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n192, n193, n194, n195,
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
         n339, n340, n341, n342, n343, n344;
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
        .CP(clk), .Q(update_period[1]) );
  GTECH_FJK1S update_period_reg_0_ ( .J(n82), .K(n82), .TI(N9), .TE(N20), .CP(
        clk), .Q(update_period[0]), .QN(n180) );
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
        .CP(clk), .Q(sub_85_carry_2_) );
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
  GTECH_NAND3 U184 ( .A(n193), .B(n194), .C(n195), .Z(segments[6]) );
  GTECH_NAND2 U185 ( .A(n196), .B(n197), .Z(segments[3]) );
  GTECH_NOT U186 ( .A(segments[4]), .Z(n197) );
  GTECH_NAND3 U187 ( .A(n198), .B(n193), .C(n199), .Z(segments[4]) );
  GTECH_OR_NOT U188 ( .A(n200), .B(n201), .Z(n199) );
  GTECH_NOT U189 ( .A(n202), .Z(n196) );
  GTECH_NAND3 U190 ( .A(n200), .B(n203), .C(n204), .Z(segments[2]) );
  GTECH_NOT U191 ( .A(segments[5]), .Z(n203) );
  GTECH_NAND3 U192 ( .A(n193), .B(n194), .C(n205), .Z(segments[5]) );
  GTECH_OA21 U193 ( .A(n206), .B(n200), .C(n207), .Z(n205) );
  GTECH_NAND2 U194 ( .A(n208), .B(n209), .Z(n193) );
  GTECH_NAND4 U195 ( .A(n204), .B(n200), .C(n198), .D(n194), .Z(segments[1])
         );
  GTECH_NAND2 U196 ( .A(n208), .B(n210), .Z(n194) );
  GTECH_NOT U197 ( .A(n211), .Z(n208) );
  GTECH_NAND3 U198 ( .A(n212), .B(n213), .C(n201), .Z(n211) );
  GTECH_NAND2 U199 ( .A(n214), .B(n195), .Z(segments[0]) );
  GTECH_AND_NOT U200 ( .A(n215), .B(n202), .Z(n195) );
  GTECH_OAI21 U201 ( .A(n213), .B(n204), .C(n207), .Z(n202) );
  GTECH_NAND3 U202 ( .A(n210), .B(n213), .C(n206), .Z(n207) );
  GTECH_NOT U203 ( .A(n216), .Z(n213) );
  GTECH_OA21 U204 ( .A(n200), .B(n212), .C(n198), .Z(n215) );
  GTECH_NAND4 U205 ( .A(n201), .B(n216), .C(n212), .D(n209), .Z(n198) );
  GTECH_OA21 U206 ( .A(n217), .B(n200), .C(n204), .Z(n214) );
  GTECH_NAND2 U207 ( .A(n206), .B(n209), .Z(n204) );
  GTECH_NOT U208 ( .A(n210), .Z(n209) );
  GTECH_NOT U209 ( .A(n218), .Z(n206) );
  GTECH_NAND2 U210 ( .A(n212), .B(n217), .Z(n218) );
  GTECH_MUX2 U211 ( .A(n32), .B(n28), .S(n160), .Z(n212) );
  GTECH_NAND2 U212 ( .A(n216), .B(n210), .Z(n200) );
  GTECH_MUX2 U213 ( .A(n30), .B(n26), .S(n160), .Z(n210) );
  GTECH_MUX2 U214 ( .A(n31), .B(n27), .S(n160), .Z(n216) );
  GTECH_NOT U215 ( .A(n201), .Z(n217) );
  GTECH_MUX2 U216 ( .A(n29), .B(n25), .S(n160), .Z(n201) );
  GTECH_AO21 U217 ( .A(period[0]), .B(n219), .C(reset), .Z(N9) );
  GTECH_AND_NOT U218 ( .A(period[11]), .B(n220), .Z(N21) );
  GTECH_NAND2 U219 ( .A(n192), .B(n220), .Z(N20) );
  GTECH_AO21 U220 ( .A(period[10]), .B(n219), .C(reset), .Z(N19) );
  GTECH_AND_NOT U221 ( .A(period[9]), .B(n220), .Z(N18) );
  GTECH_AND_NOT U222 ( .A(period[8]), .B(n220), .Z(N17) );
  GTECH_AND_NOT U223 ( .A(N170), .B(n22), .Z(N168) );
  GTECH_NAND2 U224 ( .A(n221), .B(n222), .Z(N167) );
  GTECH_AND_NOT U225 ( .A(N170), .B(n20), .Z(N166) );
  GTECH_AND_NOT U226 ( .A(sub_85_carry_2_), .B(n223), .Z(N164) );
  GTECH_AND_NOT U227 ( .A(N170), .B(n16), .Z(N162) );
  GTECH_NOT U228 ( .A(n223), .Z(N170) );
  GTECH_NAND2 U229 ( .A(n224), .B(n192), .Z(n223) );
  GTECH_NOT U230 ( .A(n222), .Z(n224) );
  GTECH_AND_NOT U231 ( .A(N152), .B(n225), .Z(N160) );
  GTECH_XOR2 U232 ( .A(n226), .B(ten_count[3]), .Z(n225) );
  GTECH_OR_NOT U233 ( .A(n227), .B(ten_count[2]), .Z(n226) );
  GTECH_AO21 U234 ( .A(period[7]), .B(n219), .C(reset), .Z(N16) );
  GTECH_OAI21 U235 ( .A(n228), .B(n229), .C(n230), .Z(N159) );
  GTECH_AND_NOT U236 ( .A(N152), .B(n231), .Z(N158) );
  GTECH_XOR2 U237 ( .A(n227), .B(ten_count[2]), .Z(n231) );
  GTECH_AND_NOT U238 ( .A(n232), .B(n233), .Z(N156) );
  GTECH_OA21 U239 ( .A(ten_count[0]), .B(ten_count[1]), .C(n227), .Z(n232) );
  GTECH_NAND2 U240 ( .A(ten_count[1]), .B(ten_count[0]), .Z(n227) );
  GTECH_AND_NOT U241 ( .A(N152), .B(ten_count[0]), .Z(N154) );
  GTECH_NAND2 U242 ( .A(n234), .B(n164), .Z(N151) );
  GTECH_OA21 U243 ( .A(n14), .B(n235), .C(n221), .Z(n234) );
  GTECH_NOT U244 ( .A(n236), .Z(n221) );
  GTECH_OAI21 U245 ( .A(n237), .B(n228), .C(n192), .Z(n236) );
  GTECH_AND_NOT U246 ( .A(period[6]), .B(n220), .Z(N15) );
  GTECH_OAI21 U247 ( .A(n233), .B(n235), .C(n238), .Z(N148) );
  GTECH_MUX2 U248 ( .A(n239), .B(n240), .S(n178), .Z(n238) );
  GTECH_OR3 U249 ( .A(n179), .B(n241), .C(n242), .Z(n240) );
  GTECH_AND_NOT U250 ( .A(n243), .B(n244), .Z(n239) );
  GTECH_MUX2 U251 ( .A(n233), .B(n241), .S(n179), .Z(n243) );
  GTECH_NAND3 U252 ( .A(n245), .B(n222), .C(n230), .Z(N147) );
  GTECH_AND_NOT U253 ( .A(n192), .B(n246), .Z(n230) );
  GTECH_AND3 U254 ( .A(n237), .B(n164), .C(n235), .Z(n246) );
  GTECH_NAND4 U255 ( .A(n179), .B(n178), .C(n165), .D(n247), .Z(n235) );
  GTECH_NAND2 U256 ( .A(n14), .B(n248), .Z(n222) );
  GTECH_NOT U257 ( .A(n164), .Z(n248) );
  GTECH_NAND3 U258 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n245) );
  GTECH_MUX2 U259 ( .A(n244), .B(n249), .S(n179), .Z(N146) );
  GTECH_OAI21 U260 ( .A(n242), .B(n241), .C(n250), .Z(n249) );
  GTECH_OAI21 U261 ( .A(n251), .B(n241), .C(n252), .Z(n244) );
  GTECH_AO21 U262 ( .A(n247), .B(n165), .C(n233), .Z(n252) );
  GTECH_NOT U263 ( .A(n242), .Z(n251) );
  GTECH_NAND3 U264 ( .A(n253), .B(n254), .C(n255), .Z(n242) );
  GTECH_NOT U265 ( .A(n165), .Z(n253) );
  GTECH_NAND2 U266 ( .A(n256), .B(n250), .Z(N144) );
  GTECH_NAND3 U267 ( .A(N152), .B(n247), .C(n165), .Z(n250) );
  GTECH_MUX2 U268 ( .A(n257), .B(n258), .S(n165), .Z(n256) );
  GTECH_NAND3 U269 ( .A(n255), .B(n254), .C(N150), .Z(n258) );
  GTECH_OA21 U270 ( .A(n233), .B(n247), .C(n259), .Z(n257) );
  GTECH_OAI21 U271 ( .A(n22), .B(n260), .C(N150), .Z(n259) );
  GTECH_NAND2 U272 ( .A(n261), .B(n254), .Z(n247) );
  GTECH_NOT U273 ( .A(n22), .Z(n254) );
  GTECH_OAI21 U274 ( .A(n241), .B(n262), .C(n263), .Z(N142) );
  GTECH_MUX2 U275 ( .A(n264), .B(n265), .S(n22), .Z(n263) );
  GTECH_NAND2 U276 ( .A(N152), .B(n261), .Z(n265) );
  GTECH_XOR2 U277 ( .A(n22), .B(n255), .Z(n262) );
  GTECH_NOT U278 ( .A(n260), .Z(n255) );
  GTECH_NAND3 U279 ( .A(n266), .B(n267), .C(sub_85_carry_2_), .Z(n260) );
  GTECH_NOT U280 ( .A(n20), .Z(n267) );
  GTECH_NAND2 U281 ( .A(n268), .B(n264), .Z(N140) );
  GTECH_NAND2 U282 ( .A(n269), .B(N152), .Z(n264) );
  GTECH_NOT U283 ( .A(n233), .Z(N152) );
  GTECH_NOT U284 ( .A(n261), .Z(n269) );
  GTECH_NAND2 U285 ( .A(n20), .B(n270), .Z(n261) );
  GTECH_NOT U286 ( .A(sub_85_carry_2_), .Z(n270) );
  GTECH_MUX2 U287 ( .A(n271), .B(n272), .S(n20), .Z(n268) );
  GTECH_NAND3 U288 ( .A(sub_85_carry_2_), .B(n266), .C(N150), .Z(n272) );
  GTECH_NOT U289 ( .A(n16), .Z(n266) );
  GTECH_AND_NOT U290 ( .A(n273), .B(n274), .Z(n271) );
  GTECH_MUX2 U291 ( .A(n241), .B(n233), .S(sub_85_carry_2_), .Z(n273) );
  GTECH_AO21 U292 ( .A(period[5]), .B(n219), .C(reset), .Z(N14) );
  GTECH_MUX2 U293 ( .A(n275), .B(n274), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_NOT U294 ( .A(n276), .Z(n274) );
  GTECH_OAI21 U295 ( .A(n16), .B(n241), .C(n233), .Z(n275) );
  GTECH_OAI21 U296 ( .A(n16), .B(n233), .C(n276), .Z(N136) );
  GTECH_NAND2 U297 ( .A(n16), .B(N150), .Z(n276) );
  GTECH_NOT U298 ( .A(n241), .Z(N150) );
  GTECH_NAND2 U299 ( .A(n277), .B(n192), .Z(n241) );
  GTECH_NOT U300 ( .A(n229), .Z(n277) );
  GTECH_NAND2 U301 ( .A(n164), .B(n278), .Z(n233) );
  GTECH_NOT U302 ( .A(N169), .Z(n278) );
  GTECH_NAND2 U303 ( .A(n192), .B(n237), .Z(N169) );
  GTECH_NOT U304 ( .A(n14), .Z(n237) );
  GTECH_AND_NOT U305 ( .A(n279), .B(n280), .Z(N134) );
  GTECH_OA21 U306 ( .A(n281), .B(n177), .C(n166), .Z(n280) );
  GTECH_NAND2 U307 ( .A(n192), .B(n229), .Z(N133) );
  GTECH_NAND2 U308 ( .A(n164), .B(n14), .Z(n229) );
  GTECH_AND_NOT U309 ( .A(n282), .B(n283), .Z(N132) );
  GTECH_XOR2 U310 ( .A(n281), .B(n177), .Z(n282) );
  GTECH_NAND2 U311 ( .A(n284), .B(n285), .Z(n281) );
  GTECH_NOT U312 ( .A(n167), .Z(n285) );
  GTECH_NOT U313 ( .A(n286), .Z(n284) );
  GTECH_AND_NOT U314 ( .A(n287), .B(n283), .Z(N130) );
  GTECH_XOR2 U315 ( .A(n286), .B(n167), .Z(n287) );
  GTECH_NAND2 U316 ( .A(n288), .B(n289), .Z(n286) );
  GTECH_NOT U317 ( .A(n168), .Z(n289) );
  GTECH_NOT U318 ( .A(n290), .Z(n288) );
  GTECH_AND_NOT U319 ( .A(period[4]), .B(n220), .Z(N13) );
  GTECH_AND_NOT U320 ( .A(n291), .B(n283), .Z(N128) );
  GTECH_XOR2 U321 ( .A(n290), .B(n168), .Z(n291) );
  GTECH_NAND2 U322 ( .A(n292), .B(n293), .Z(n290) );
  GTECH_NOT U323 ( .A(n169), .Z(n293) );
  GTECH_NOT U324 ( .A(n294), .Z(n292) );
  GTECH_AND_NOT U325 ( .A(n295), .B(n283), .Z(N126) );
  GTECH_XOR2 U326 ( .A(n294), .B(n169), .Z(n295) );
  GTECH_NAND2 U327 ( .A(n296), .B(n297), .Z(n294) );
  GTECH_NOT U328 ( .A(n298), .Z(n296) );
  GTECH_AND_NOT U329 ( .A(n299), .B(n283), .Z(N124) );
  GTECH_XOR2 U330 ( .A(n298), .B(n170), .Z(n299) );
  GTECH_NAND2 U331 ( .A(n300), .B(n301), .Z(n298) );
  GTECH_NOT U332 ( .A(n171), .Z(n301) );
  GTECH_NOT U333 ( .A(n302), .Z(n300) );
  GTECH_AND_NOT U334 ( .A(n303), .B(n283), .Z(N122) );
  GTECH_XOR2 U335 ( .A(n302), .B(n171), .Z(n303) );
  GTECH_NAND2 U336 ( .A(n304), .B(n305), .Z(n302) );
  GTECH_NOT U337 ( .A(n172), .Z(n305) );
  GTECH_NOT U338 ( .A(n306), .Z(n304) );
  GTECH_AND_NOT U339 ( .A(n307), .B(n283), .Z(N120) );
  GTECH_XOR2 U340 ( .A(n306), .B(n172), .Z(n307) );
  GTECH_NAND2 U341 ( .A(n308), .B(n309), .Z(n306) );
  GTECH_NOT U342 ( .A(n310), .Z(n308) );
  GTECH_AO21 U343 ( .A(period[3]), .B(n219), .C(reset), .Z(N12) );
  GTECH_AND_NOT U344 ( .A(n311), .B(n283), .Z(N118) );
  GTECH_XOR2 U345 ( .A(n310), .B(n173), .Z(n311) );
  GTECH_NAND3 U346 ( .A(n312), .B(n313), .C(n314), .Z(n310) );
  GTECH_OAI2N2 U347 ( .A(n283), .B(n315), .C(N112), .D(n314), .Z(N116) );
  GTECH_NOT U348 ( .A(n174), .Z(n314) );
  GTECH_MUX2 U349 ( .A(n312), .B(n316), .S(n174), .Z(n315) );
  GTECH_NAND2 U350 ( .A(n312), .B(n313), .Z(n316) );
  GTECH_NOT U351 ( .A(n175), .Z(n312) );
  GTECH_MUX2 U352 ( .A(N112), .B(n317), .S(n175), .Z(N114) );
  GTECH_AND_NOT U353 ( .A(n279), .B(n176), .Z(n317) );
  GTECH_NOT U354 ( .A(n318), .Z(N112) );
  GTECH_NAND2 U355 ( .A(n279), .B(n176), .Z(n318) );
  GTECH_NOT U356 ( .A(n283), .Z(n279) );
  GTECH_NAND2 U357 ( .A(n228), .B(n192), .Z(n283) );
  GTECH_NAND2 U358 ( .A(n319), .B(n320), .Z(n228) );
  GTECH_OR3 U359 ( .A(n321), .B(n322), .C(n323), .Z(n320) );
  GTECH_OAI2N2 U360 ( .A(update_period[9]), .B(n167), .C(n324), .D(n325), .Z(
        n323) );
  GTECH_AOI2N2 U361 ( .A(update_period[7]), .B(n169), .C(n326), .D(n327), .Z(
        n325) );
  GTECH_OAI21 U362 ( .A(update_period[7]), .B(n169), .C(n170), .Z(n327) );
  GTECH_OA21 U363 ( .A(n328), .B(n329), .C(n330), .Z(n324) );
  GTECH_OR3 U364 ( .A(n329), .B(n331), .C(n332), .Z(n330) );
  GTECH_OAI2N2 U365 ( .A(n171), .B(update_period[5]), .C(n333), .D(n334), .Z(
        n332) );
  GTECH_OA21 U366 ( .A(n309), .B(n335), .C(n336), .Z(n334) );
  GTECH_NAND3 U367 ( .A(n337), .B(update_period[2]), .C(n174), .Z(n336) );
  GTECH_NAND3 U368 ( .A(n338), .B(n339), .C(n337), .Z(n333) );
  GTECH_NAND2 U369 ( .A(n335), .B(n309), .Z(n337) );
  GTECH_NOT U370 ( .A(n173), .Z(n309) );
  GTECH_NOT U371 ( .A(update_period[3]), .Z(n335) );
  GTECH_OAI2N2 U372 ( .A(n313), .B(n180), .C(update_period[1]), .D(n175), .Z(
        n339) );
  GTECH_NOT U373 ( .A(n176), .Z(n313) );
  GTECH_OA22 U374 ( .A(n175), .B(update_period[1]), .C(n174), .D(
        update_period[2]), .Z(n338) );
  GTECH_NOR2 U375 ( .A(n172), .B(update_period[4]), .Z(n331) );
  GTECH_OAI2N2 U376 ( .A(update_period[7]), .B(n169), .C(n297), .D(n326), .Z(
        n329) );
  GTECH_NOT U377 ( .A(update_period[6]), .Z(n326) );
  GTECH_NOT U378 ( .A(n170), .Z(n297) );
  GTECH_AOI22 U379 ( .A(n171), .B(update_period[5]), .C(update_period[4]), .D(
        n340), .Z(n328) );
  GTECH_OA21 U380 ( .A(update_period[5]), .B(n171), .C(n172), .Z(n340) );
  GTECH_NOR2 U381 ( .A(update_period[8]), .B(n168), .Z(n321) );
  GTECH_AOI2N2 U382 ( .A(n166), .B(update_period[11]), .C(n322), .D(n341), .Z(
        n319) );
  GTECH_AOI222 U383 ( .A(update_period[9]), .B(n167), .C(n342), .D(
        update_period[8]), .E(update_period[10]), .F(n177), .Z(n341) );
  GTECH_OA21 U384 ( .A(n167), .B(update_period[9]), .C(n168), .Z(n342) );
  GTECH_OAI2N2 U385 ( .A(update_period[11]), .B(n166), .C(n343), .D(n344), .Z(
        n322) );
  GTECH_NOT U386 ( .A(update_period[10]), .Z(n344) );
  GTECH_NOT U387 ( .A(n177), .Z(n343) );
  GTECH_AO21 U388 ( .A(period[2]), .B(n219), .C(reset), .Z(N11) );
  GTECH_AO21 U389 ( .A(period[1]), .B(n219), .C(reset), .Z(N10) );
  GTECH_NOT U390 ( .A(n220), .Z(n219) );
  GTECH_NAND2 U391 ( .A(period_load), .B(n192), .Z(n220) );
  GTECH_NOT U392 ( .A(reset), .Z(n192) );
endmodule

