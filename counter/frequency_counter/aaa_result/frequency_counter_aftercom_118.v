
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
         n174, n175, n176, n177, n178, n179, n181, n192, n193, n194, n195,
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
         n339, n340, n341, n342, n343, n344, n345, n346, n347, n348;
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
  GTECH_OAI21 U201 ( .A(n211), .B(n212), .C(n213), .Z(n201) );
  GTECH_NOT U202 ( .A(n196), .Z(n213) );
  GTECH_NAND2 U203 ( .A(n206), .B(n214), .Z(n196) );
  GTECH_NOT U204 ( .A(n210), .Z(n206) );
  GTECH_NAND4 U205 ( .A(n214), .B(n195), .C(n211), .D(n210), .Z(n197) );
  GTECH_OAI22 U206 ( .A(n215), .B(n26), .C(n160), .D(n30), .Z(n210) );
  GTECH_NOT U207 ( .A(n204), .Z(n211) );
  GTECH_OAI22 U208 ( .A(n215), .B(n25), .C(n160), .D(n29), .Z(n204) );
  GTECH_NOT U209 ( .A(n212), .Z(n195) );
  GTECH_OAI22 U210 ( .A(n215), .B(n28), .C(n160), .D(n32), .Z(n212) );
  GTECH_NOT U211 ( .A(n198), .Z(n214) );
  GTECH_OAI22 U212 ( .A(n215), .B(n27), .C(n160), .D(n31), .Z(n198) );
  GTECH_NOT U213 ( .A(n160), .Z(n215) );
  GTECH_AO21 U214 ( .A(period[0]), .B(n216), .C(reset), .Z(N9) );
  GTECH_AND_NOT U215 ( .A(period[11]), .B(n217), .Z(N21) );
  GTECH_NAND2 U216 ( .A(n192), .B(n217), .Z(N20) );
  GTECH_AO21 U217 ( .A(period[10]), .B(n216), .C(reset), .Z(N19) );
  GTECH_AND_NOT U218 ( .A(period[9]), .B(n217), .Z(N18) );
  GTECH_AND_NOT U219 ( .A(period[8]), .B(n217), .Z(N17) );
  GTECH_AND_NOT U220 ( .A(N170), .B(n22), .Z(N168) );
  GTECH_NAND2 U221 ( .A(n218), .B(n219), .Z(N167) );
  GTECH_AND_NOT U222 ( .A(N170), .B(n20), .Z(N166) );
  GTECH_AND_NOT U223 ( .A(sub_85_carry_2_), .B(n220), .Z(N164) );
  GTECH_AND_NOT U224 ( .A(N170), .B(n16), .Z(N162) );
  GTECH_NOT U225 ( .A(n220), .Z(N170) );
  GTECH_NAND2 U226 ( .A(n221), .B(n192), .Z(n220) );
  GTECH_NOT U227 ( .A(n219), .Z(n221) );
  GTECH_AND_NOT U228 ( .A(N152), .B(n222), .Z(N160) );
  GTECH_XOR2 U229 ( .A(n223), .B(ten_count[3]), .Z(n222) );
  GTECH_OR_NOT U230 ( .A(n224), .B(ten_count[2]), .Z(n223) );
  GTECH_AO21 U231 ( .A(period[7]), .B(n216), .C(reset), .Z(N16) );
  GTECH_OAI21 U232 ( .A(n225), .B(n226), .C(n227), .Z(N159) );
  GTECH_AND_NOT U233 ( .A(N152), .B(n228), .Z(N158) );
  GTECH_XOR2 U234 ( .A(n224), .B(ten_count[2]), .Z(n228) );
  GTECH_AND_NOT U235 ( .A(n229), .B(n230), .Z(N156) );
  GTECH_OA21 U236 ( .A(ten_count[0]), .B(ten_count[1]), .C(n224), .Z(n229) );
  GTECH_NAND2 U237 ( .A(ten_count[1]), .B(ten_count[0]), .Z(n224) );
  GTECH_AND_NOT U238 ( .A(N152), .B(ten_count[0]), .Z(N154) );
  GTECH_NAND2 U239 ( .A(n231), .B(n164), .Z(N151) );
  GTECH_OA21 U240 ( .A(n14), .B(n232), .C(n218), .Z(n231) );
  GTECH_NOT U241 ( .A(n233), .Z(n218) );
  GTECH_OAI21 U242 ( .A(n234), .B(n225), .C(n192), .Z(n233) );
  GTECH_AND_NOT U243 ( .A(period[6]), .B(n217), .Z(N15) );
  GTECH_OAI21 U244 ( .A(n230), .B(n232), .C(n235), .Z(N148) );
  GTECH_OA21 U245 ( .A(n178), .B(n236), .C(n237), .Z(n235) );
  GTECH_NAND4 U246 ( .A(n238), .B(N150), .C(n239), .D(n178), .Z(n237) );
  GTECH_AND_NOT U247 ( .A(n240), .B(n241), .Z(n236) );
  GTECH_OAI22 U248 ( .A(n230), .B(n179), .C(n242), .D(n238), .Z(n241) );
  GTECH_NAND3 U249 ( .A(n243), .B(n219), .C(n227), .Z(N147) );
  GTECH_AND_NOT U250 ( .A(n192), .B(n244), .Z(n227) );
  GTECH_AND3 U251 ( .A(n234), .B(n164), .C(n232), .Z(n244) );
  GTECH_NAND4 U252 ( .A(n179), .B(n178), .C(n165), .D(n245), .Z(n232) );
  GTECH_NAND2 U253 ( .A(n14), .B(n246), .Z(n219) );
  GTECH_NOT U254 ( .A(n164), .Z(n246) );
  GTECH_NAND3 U255 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n243) );
  GTECH_OAI22 U256 ( .A(n247), .B(n238), .C(n179), .D(n240), .Z(N146) );
  GTECH_OA21 U257 ( .A(n239), .B(n242), .C(n248), .Z(n240) );
  GTECH_AO21 U258 ( .A(n245), .B(n165), .C(n230), .Z(n248) );
  GTECH_NOT U259 ( .A(n249), .Z(n239) );
  GTECH_NOT U260 ( .A(n179), .Z(n238) );
  GTECH_OA21 U261 ( .A(n249), .B(n242), .C(n250), .Z(n247) );
  GTECH_NAND3 U262 ( .A(n251), .B(n252), .C(n253), .Z(n249) );
  GTECH_NOT U263 ( .A(n165), .Z(n251) );
  GTECH_NAND2 U264 ( .A(n254), .B(n250), .Z(N144) );
  GTECH_NAND3 U265 ( .A(N152), .B(n245), .C(n165), .Z(n250) );
  GTECH_OA21 U266 ( .A(n165), .B(n255), .C(n256), .Z(n254) );
  GTECH_NAND4 U267 ( .A(n253), .B(n252), .C(N150), .D(n165), .Z(n256) );
  GTECH_NOT U268 ( .A(n257), .Z(n253) );
  GTECH_OA21 U269 ( .A(n230), .B(n245), .C(n258), .Z(n255) );
  GTECH_OAI21 U270 ( .A(n22), .B(n257), .C(N150), .Z(n258) );
  GTECH_NAND2 U271 ( .A(n259), .B(n252), .Z(n245) );
  GTECH_NOT U272 ( .A(n22), .Z(n252) );
  GTECH_OAI21 U273 ( .A(n242), .B(n260), .C(n261), .Z(N142) );
  GTECH_OA21 U274 ( .A(n22), .B(n262), .C(n263), .Z(n261) );
  GTECH_NAND3 U275 ( .A(N152), .B(n259), .C(n22), .Z(n263) );
  GTECH_XNOR2 U276 ( .A(n257), .B(n22), .Z(n260) );
  GTECH_NAND3 U277 ( .A(n264), .B(n265), .C(sub_85_carry_2_), .Z(n257) );
  GTECH_NOT U278 ( .A(n20), .Z(n265) );
  GTECH_NAND3 U279 ( .A(n262), .B(n266), .C(n267), .Z(N140) );
  GTECH_NAND4 U280 ( .A(sub_85_carry_2_), .B(n264), .C(N150), .D(n20), .Z(n267) );
  GTECH_NOT U281 ( .A(n16), .Z(n264) );
  GTECH_AO21 U282 ( .A(n268), .B(n269), .C(n20), .Z(n266) );
  GTECH_OA22 U283 ( .A(sub_85_carry_2_), .B(n242), .C(n270), .D(n230), .Z(n269) );
  GTECH_NAND2 U284 ( .A(n271), .B(N152), .Z(n262) );
  GTECH_NOT U285 ( .A(n230), .Z(N152) );
  GTECH_NOT U286 ( .A(n259), .Z(n271) );
  GTECH_NAND2 U287 ( .A(n20), .B(n270), .Z(n259) );
  GTECH_AO21 U288 ( .A(period[5]), .B(n216), .C(reset), .Z(N14) );
  GTECH_OAI22 U289 ( .A(sub_85_carry_2_), .B(n272), .C(n270), .D(n268), .Z(
        N138) );
  GTECH_NOT U290 ( .A(sub_85_carry_2_), .Z(n270) );
  GTECH_OA21 U291 ( .A(n16), .B(n242), .C(n230), .Z(n272) );
  GTECH_OAI21 U292 ( .A(n16), .B(n230), .C(n268), .Z(N136) );
  GTECH_NAND2 U293 ( .A(n16), .B(N150), .Z(n268) );
  GTECH_NOT U294 ( .A(n242), .Z(N150) );
  GTECH_NAND2 U295 ( .A(n273), .B(n192), .Z(n242) );
  GTECH_NOT U296 ( .A(n226), .Z(n273) );
  GTECH_NAND2 U297 ( .A(n164), .B(n274), .Z(n230) );
  GTECH_NOT U298 ( .A(N169), .Z(n274) );
  GTECH_NAND2 U299 ( .A(n192), .B(n234), .Z(N169) );
  GTECH_NOT U300 ( .A(n14), .Z(n234) );
  GTECH_OA21 U301 ( .A(n275), .B(n276), .C(n277), .Z(N134) );
  GTECH_NOR2 U302 ( .A(n278), .B(n177), .Z(n276) );
  GTECH_NAND2 U303 ( .A(n192), .B(n226), .Z(N133) );
  GTECH_NAND2 U304 ( .A(n164), .B(n14), .Z(n226) );
  GTECH_AND_NOT U305 ( .A(n279), .B(n280), .Z(N132) );
  GTECH_XOR2 U306 ( .A(n278), .B(n177), .Z(n279) );
  GTECH_NAND2 U307 ( .A(n281), .B(n282), .Z(n278) );
  GTECH_NOT U308 ( .A(n283), .Z(n281) );
  GTECH_AND_NOT U309 ( .A(n284), .B(n280), .Z(N130) );
  GTECH_XOR2 U310 ( .A(n283), .B(n167), .Z(n284) );
  GTECH_NAND2 U311 ( .A(n285), .B(n286), .Z(n283) );
  GTECH_NOT U312 ( .A(n168), .Z(n286) );
  GTECH_NOT U313 ( .A(n287), .Z(n285) );
  GTECH_AND_NOT U314 ( .A(period[4]), .B(n217), .Z(N13) );
  GTECH_AND_NOT U315 ( .A(n288), .B(n280), .Z(N128) );
  GTECH_XOR2 U316 ( .A(n287), .B(n168), .Z(n288) );
  GTECH_NAND2 U317 ( .A(n289), .B(n290), .Z(n287) );
  GTECH_NOT U318 ( .A(n291), .Z(n289) );
  GTECH_AND_NOT U319 ( .A(n292), .B(n280), .Z(N126) );
  GTECH_XOR2 U320 ( .A(n291), .B(n169), .Z(n292) );
  GTECH_NAND2 U321 ( .A(n293), .B(n294), .Z(n291) );
  GTECH_NOT U322 ( .A(n170), .Z(n294) );
  GTECH_NOT U323 ( .A(n295), .Z(n293) );
  GTECH_AND_NOT U324 ( .A(n296), .B(n280), .Z(N124) );
  GTECH_XOR2 U325 ( .A(n295), .B(n170), .Z(n296) );
  GTECH_NAND2 U326 ( .A(n297), .B(n298), .Z(n295) );
  GTECH_NOT U327 ( .A(n171), .Z(n298) );
  GTECH_NOT U328 ( .A(n299), .Z(n297) );
  GTECH_AND_NOT U329 ( .A(n300), .B(n280), .Z(N122) );
  GTECH_XOR2 U330 ( .A(n299), .B(n171), .Z(n300) );
  GTECH_NAND2 U331 ( .A(n301), .B(n302), .Z(n299) );
  GTECH_NOT U332 ( .A(n303), .Z(n301) );
  GTECH_AND_NOT U333 ( .A(n304), .B(n280), .Z(N120) );
  GTECH_XOR2 U334 ( .A(n303), .B(n172), .Z(n304) );
  GTECH_NAND2 U335 ( .A(n305), .B(n306), .Z(n303) );
  GTECH_NOT U336 ( .A(n307), .Z(n305) );
  GTECH_AO21 U337 ( .A(period[3]), .B(n216), .C(reset), .Z(N12) );
  GTECH_AND_NOT U338 ( .A(n308), .B(n280), .Z(N118) );
  GTECH_XOR2 U339 ( .A(n307), .B(n173), .Z(n308) );
  GTECH_NAND3 U340 ( .A(n309), .B(n310), .C(n311), .Z(n307) );
  GTECH_NOT U341 ( .A(n174), .Z(n311) );
  GTECH_OAI22 U342 ( .A(n174), .B(n312), .C(n280), .D(n313), .Z(N116) );
  GTECH_OAI21 U343 ( .A(n175), .B(n174), .C(n314), .Z(n313) );
  GTECH_OAI21 U344 ( .A(n176), .B(n175), .C(n174), .Z(n314) );
  GTECH_OAI21 U345 ( .A(n175), .B(n312), .C(n315), .Z(N114) );
  GTECH_NAND3 U346 ( .A(n277), .B(n310), .C(n175), .Z(n315) );
  GTECH_NOT U347 ( .A(n176), .Z(n310) );
  GTECH_NOT U348 ( .A(n312), .Z(N112) );
  GTECH_NAND2 U349 ( .A(n277), .B(n176), .Z(n312) );
  GTECH_NOT U350 ( .A(n280), .Z(n277) );
  GTECH_NAND2 U351 ( .A(n225), .B(n192), .Z(n280) );
  GTECH_NOT U352 ( .A(n316), .Z(n225) );
  GTECH_AOI222 U353 ( .A(n317), .B(n318), .C(update_period[11]), .D(n166), .E(
        n319), .F(n320), .Z(n316) );
  GTECH_OAI2N2 U354 ( .A(n321), .B(n322), .C(n323), .D(n324), .Z(n319) );
  GTECH_OAI21 U355 ( .A(n325), .B(n282), .C(n326), .Z(n324) );
  GTECH_NAND3 U356 ( .A(n327), .B(update_period[8]), .C(n168), .Z(n326) );
  GTECH_AND3 U357 ( .A(n327), .B(n323), .C(n320), .Z(n318) );
  GTECH_NAND2 U358 ( .A(n328), .B(n275), .Z(n320) );
  GTECH_NOT U359 ( .A(n166), .Z(n275) );
  GTECH_NOT U360 ( .A(update_period[11]), .Z(n328) );
  GTECH_NAND2 U361 ( .A(n322), .B(n321), .Z(n323) );
  GTECH_NOT U362 ( .A(n177), .Z(n321) );
  GTECH_NOT U363 ( .A(update_period[10]), .Z(n322) );
  GTECH_NAND2 U364 ( .A(n282), .B(n325), .Z(n327) );
  GTECH_NOT U365 ( .A(update_period[9]), .Z(n325) );
  GTECH_NOT U366 ( .A(n167), .Z(n282) );
  GTECH_OA22 U367 ( .A(n168), .B(update_period[8]), .C(n329), .D(n330), .Z(
        n317) );
  GTECH_OAI21 U368 ( .A(n290), .B(n331), .C(n332), .Z(n330) );
  GTECH_NAND3 U369 ( .A(n333), .B(update_period[6]), .C(n170), .Z(n332) );
  GTECH_OAI2N2 U370 ( .A(n334), .B(n335), .C(n336), .D(n337), .Z(n329) );
  GTECH_ADD_ABC U371 ( .A(n338), .B(n171), .C(update_period[5]), .COUT(n337)
         );
  GTECH_AND_NOT U372 ( .A(update_period[4]), .B(n302), .Z(n338) );
  GTECH_NOT U373 ( .A(n172), .Z(n302) );
  GTECH_OAI21 U374 ( .A(update_period[4]), .B(n172), .C(n336), .Z(n335) );
  GTECH_NOT U375 ( .A(n339), .Z(n336) );
  GTECH_OAI21 U376 ( .A(update_period[6]), .B(n170), .C(n333), .Z(n339) );
  GTECH_NAND2 U377 ( .A(n331), .B(n290), .Z(n333) );
  GTECH_NOT U378 ( .A(n169), .Z(n290) );
  GTECH_NOT U379 ( .A(update_period[7]), .Z(n331) );
  GTECH_OAI22 U380 ( .A(update_period[5]), .B(n171), .C(n340), .D(n341), .Z(
        n334) );
  GTECH_OAI21 U381 ( .A(n306), .B(n342), .C(n343), .Z(n341) );
  GTECH_NAND3 U382 ( .A(n344), .B(update_period[2]), .C(n174), .Z(n343) );
  GTECH_AND3 U383 ( .A(n345), .B(n346), .C(n344), .Z(n340) );
  GTECH_NAND2 U384 ( .A(n342), .B(n306), .Z(n344) );
  GTECH_NOT U385 ( .A(n173), .Z(n306) );
  GTECH_NOT U386 ( .A(update_period[3]), .Z(n342) );
  GTECH_OAI21 U387 ( .A(n347), .B(n309), .C(n181), .Z(n346) );
  GTECH_NOT U388 ( .A(n175), .Z(n309) );
  GTECH_OA21 U389 ( .A(n174), .B(update_period[2]), .C(n348), .Z(n345) );
  GTECH_OR_NOT U390 ( .A(n175), .B(n347), .Z(n348) );
  GTECH_NAND2 U391 ( .A(update_period[0]), .B(n176), .Z(n347) );
  GTECH_AO21 U392 ( .A(period[2]), .B(n216), .C(reset), .Z(N11) );
  GTECH_AO21 U393 ( .A(period[1]), .B(n216), .C(reset), .Z(N10) );
  GTECH_NOT U394 ( .A(n217), .Z(n216) );
  GTECH_NAND2 U395 ( .A(period_load), .B(n192), .Z(n217) );
  GTECH_NOT U396 ( .A(reset), .Z(n192) );
endmodule

