
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
         seven_segment0_N8, seven_segment0_N6, n13, n14, n15, n16, n17, n21,
         n23, n26, n28, n30, n32, n34, n81, n162, sub_85_carry_2_, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n179, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, n241,
         n242, n243, n244, n245, n246, n247, n248, n249, n250, n251, n252,
         n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263,
         n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274,
         n275, n276, n277, n278, n279, n280, n281, n282, n283, n284, n285,
         n286, n287, n288, n289, n290, n291, n292, n293, n294, n295, n296,
         n297, n298, n299, n300, n301, n302, n303, n304, n305, n306, n307,
         n308, n309, n310, n311, n312, n313, n314, n315, n316, n317, n318,
         n319, n320, n321, n322, n323, n324, n325, n326, n327, n328, n329,
         n330, n331, n332, n333, n334, n335, n336, n337, n338;
  wire   [8:0] clk_counter;
  wire   [3:0] edge_counter;
  wire   [11:0] update_period;
  wire   [3:0] ten_count;
  wire   [3:0] unit_count;
  wire   [0:3] seven_segment0_unit_count_reg;
  wire   [0:3] seven_segment0_ten_count_reg;

  GTECH_FJK1S update_period_reg_11_ ( .J(n81), .K(n81), .TI(N21), .TE(N20), 
        .CP(clk), .Q(update_period[11]) );
  GTECH_FJK1S update_period_reg_10_ ( .J(n81), .K(n81), .TI(N19), .TE(N20), 
        .CP(clk), .Q(update_period[10]) );
  GTECH_FJK1S update_period_reg_9_ ( .J(n81), .K(n81), .TI(N18), .TE(N20), 
        .CP(clk), .Q(update_period[9]) );
  GTECH_FJK1S update_period_reg_8_ ( .J(n81), .K(n81), .TI(N17), .TE(N20), 
        .CP(clk), .Q(update_period[8]) );
  GTECH_FJK1S update_period_reg_7_ ( .J(n81), .K(n81), .TI(N16), .TE(N20), 
        .CP(clk), .Q(update_period[7]) );
  GTECH_FJK1S update_period_reg_6_ ( .J(n81), .K(n81), .TI(N15), .TE(N20), 
        .CP(clk), .Q(update_period[6]) );
  GTECH_FJK1S update_period_reg_5_ ( .J(n81), .K(n81), .TI(N14), .TE(N20), 
        .CP(clk), .Q(update_period[5]) );
  GTECH_FJK1S update_period_reg_4_ ( .J(n81), .K(n81), .TI(N13), .TE(N20), 
        .CP(clk), .Q(update_period[4]) );
  GTECH_FJK1S update_period_reg_3_ ( .J(n81), .K(n81), .TI(N12), .TE(N20), 
        .CP(clk), .Q(update_period[3]) );
  GTECH_FJK1S update_period_reg_2_ ( .J(n81), .K(n81), .TI(N11), .TE(N20), 
        .CP(clk), .Q(update_period[2]) );
  GTECH_FJK1S update_period_reg_1_ ( .J(n81), .K(n81), .TI(N10), .TE(N20), 
        .CP(clk), .Q(update_period[1]), .QN(n179) );
  GTECH_FJK1S update_period_reg_0_ ( .J(n81), .K(n81), .TI(N9), .TE(N20), .CP(
        clk), .Q(update_period[0]) );
  GTECH_FD1 edge_detect0_q0_reg ( .D(signal), .CP(clk), .Q(edge_detect0_q0) );
  GTECH_FD1 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .Q(
        edge_detect0_q1) );
  GTECH_FD1 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK1S edge_counter_reg_5_ ( .J(n81), .K(n81), .TI(N146), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[1]), .QN(n177) );
  GTECH_FJK1S edge_counter_reg_6_ ( .J(n81), .K(n81), .TI(N148), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[2]), .QN(n176) );
  GTECH_FJK1S state_reg_0_ ( .J(n81), .K(n81), .TI(N150), .TE(N151), .CP(clk), 
        .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK1S state_reg_1_ ( .J(n81), .K(n81), .TI(N152), .TE(N151), .CP(clk), 
        .Q(dbg_state[1]), .QN(n15) );
  GTECH_FJK1S clk_counter_reg_10_ ( .J(n81), .K(n81), .TI(N132), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[1]), .QN(n175) );
  GTECH_FJK1S clk_counter_reg_0_ ( .J(n81), .K(n81), .TI(N112), .TE(N133), 
        .CP(clk), .Q(clk_counter[0]), .QN(n174) );
  GTECH_FJK1S clk_counter_reg_1_ ( .J(n81), .K(n81), .TI(N114), .TE(N133), 
        .CP(clk), .Q(clk_counter[1]), .QN(n173) );
  GTECH_FJK1S clk_counter_reg_2_ ( .J(n81), .K(n81), .TI(N116), .TE(N133), 
        .CP(clk), .Q(clk_counter[2]), .QN(n172) );
  GTECH_FJK1S clk_counter_reg_3_ ( .J(n81), .K(n81), .TI(N118), .TE(N133), 
        .CP(clk), .Q(clk_counter[3]), .QN(n171) );
  GTECH_FJK1S clk_counter_reg_4_ ( .J(n81), .K(n81), .TI(N120), .TE(N133), 
        .CP(clk), .Q(clk_counter[4]), .QN(n170) );
  GTECH_FJK1S clk_counter_reg_5_ ( .J(n81), .K(n81), .TI(N122), .TE(N133), 
        .CP(clk), .Q(clk_counter[5]), .QN(n169) );
  GTECH_FJK1S clk_counter_reg_6_ ( .J(n81), .K(n81), .TI(N124), .TE(N133), 
        .CP(clk), .Q(clk_counter[6]), .QN(n168) );
  GTECH_FJK1S clk_counter_reg_7_ ( .J(n81), .K(n81), .TI(N126), .TE(N133), 
        .CP(clk), .Q(clk_counter[7]), .QN(n167) );
  GTECH_FJK1S clk_counter_reg_8_ ( .J(n81), .K(n81), .TI(N128), .TE(N133), 
        .CP(clk), .Q(clk_counter[8]), .QN(n166) );
  GTECH_FJK1S clk_counter_reg_9_ ( .J(n81), .K(n81), .TI(N130), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[0]), .QN(n165) );
  GTECH_FJK1S clk_counter_reg_11_ ( .J(n81), .K(n81), .TI(N134), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[2]), .QN(n164) );
  GTECH_FJK1S update_digits_reg ( .J(n81), .K(n81), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits), .QN(n16) );
  GTECH_FJK1S edge_counter_reg_4_ ( .J(n81), .K(n81), .TI(N144), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[0]), .QN(n163) );
  GTECH_FJK1S edge_counter_reg_0_ ( .J(n81), .K(n81), .TI(N136), .TE(N147), 
        .CP(clk), .Q(N62), .QN(n17) );
  GTECH_FJK1S unit_count_reg_0_ ( .J(n81), .K(n81), .TI(N162), .TE(N167), .CP(
        clk), .Q(unit_count[0]) );
  GTECH_FJK1S edge_counter_reg_1_ ( .J(n81), .K(n81), .TI(N138), .TE(N147), 
        .CP(clk), .Q(sub_85_carry_2_) );
  GTECH_FJK1S unit_count_reg_1_ ( .J(n81), .K(n81), .TI(N164), .TE(N167), .CP(
        clk), .Q(unit_count[1]) );
  GTECH_FJK1S edge_counter_reg_2_ ( .J(n81), .K(n81), .TI(N140), .TE(N147), 
        .CP(clk), .Q(edge_counter[2]), .QN(n21) );
  GTECH_FJK1S unit_count_reg_2_ ( .J(n81), .K(n81), .TI(N166), .TE(N167), .CP(
        clk), .Q(unit_count[2]) );
  GTECH_FJK1S edge_counter_reg_3_ ( .J(n81), .K(n81), .TI(N142), .TE(N147), 
        .CP(clk), .Q(edge_counter[3]), .QN(n23) );
  GTECH_FJK1S unit_count_reg_3_ ( .J(n81), .K(n81), .TI(N168), .TE(N167), .CP(
        clk), .Q(unit_count[3]) );
  GTECH_FJK1S ten_count_reg_0_ ( .J(n81), .K(n81), .TI(N154), .TE(N159), .CP(
        clk), .Q(ten_count[0]) );
  GTECH_FJK1S ten_count_reg_1_ ( .J(n81), .K(n81), .TI(N156), .TE(N159), .CP(
        clk), .Q(ten_count[1]) );
  GTECH_FJK1S ten_count_reg_2_ ( .J(n81), .K(n81), .TI(N158), .TE(N159), .CP(
        clk), .Q(ten_count[2]) );
  GTECH_FJK1S ten_count_reg_3_ ( .J(n81), .K(n81), .TI(N160), .TE(N159), .CP(
        clk), .Q(n26) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_0_ ( .J(n81), .K(n81), .TI(
        seven_segment0_N16), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[0]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_1_ ( .J(n81), .K(n81), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[1]), .QN(n28) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_2_ ( .J(n81), .K(n81), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[2]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_3_ ( .J(n81), .K(n81), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[3]), .QN(n30) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_0_ ( .J(n81), .K(n81), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[0]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_1_ ( .J(n81), .K(n81), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[1]), .QN(n32) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_2_ ( .J(n81), .K(n81), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[2]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_3_ ( .J(n81), .K(n81), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[3]), .QN(n34) );
  GTECH_FD1 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .Q(
        digit), .QN(n162) );
  GTECH_ZERO U170 ( .Z(n81) );
  GTECH_OR_NOT U171 ( .A(reset), .B(n16), .Z(seven_segment0_N9) );
  GTECH_AND2 U172 ( .A(ten_count[0]), .B(n190), .Z(seven_segment0_N8) );
  GTECH_AND2 U173 ( .A(n162), .B(n190), .Z(seven_segment0_N6) );
  GTECH_AND2 U174 ( .A(unit_count[3]), .B(n190), .Z(seven_segment0_N22) );
  GTECH_AND2 U175 ( .A(unit_count[2]), .B(n190), .Z(seven_segment0_N20) );
  GTECH_AND2 U176 ( .A(unit_count[1]), .B(n190), .Z(seven_segment0_N18) );
  GTECH_AND2 U177 ( .A(unit_count[0]), .B(n190), .Z(seven_segment0_N16) );
  GTECH_AND2 U178 ( .A(n26), .B(n190), .Z(seven_segment0_N14) );
  GTECH_AND2 U179 ( .A(ten_count[2]), .B(n190), .Z(seven_segment0_N12) );
  GTECH_AND2 U180 ( .A(ten_count[1]), .B(n190), .Z(seven_segment0_N10) );
  GTECH_OR_NOT U181 ( .A(n191), .B(n192), .Z(segments[6]) );
  GTECH_OR_NOT U182 ( .A(n191), .B(n193), .Z(segments[5]) );
  GTECH_OA21 U183 ( .A(n194), .B(n195), .C(n196), .Z(n193) );
  GTECH_OAI21 U184 ( .A(n197), .B(n198), .C(n199), .Z(segments[3]) );
  GTECH_AND_NOT U185 ( .A(n200), .B(segments[4]), .Z(n199) );
  GTECH_OAI21 U186 ( .A(n201), .B(n198), .C(n196), .Z(segments[4]) );
  GTECH_OR_NOT U187 ( .A(n191), .B(n202), .Z(segments[2]) );
  GTECH_OAI21 U188 ( .A(n203), .B(n204), .C(n200), .Z(n191) );
  GTECH_OR_NOT U189 ( .A(n201), .B(n194), .Z(n204) );
  GTECH_NOT U190 ( .A(n197), .Z(n203) );
  GTECH_NAND3 U191 ( .A(n192), .B(n205), .C(n202), .Z(segments[1]) );
  GTECH_NOT U192 ( .A(n206), .Z(n202) );
  GTECH_OAI21 U193 ( .A(n198), .B(n207), .C(n195), .Z(n206) );
  GTECH_NAND3 U194 ( .A(n208), .B(n207), .C(n194), .Z(n205) );
  GTECH_NAND3 U195 ( .A(n200), .B(n196), .C(n209), .Z(segments[0]) );
  GTECH_OA21 U196 ( .A(n198), .B(n207), .C(n192), .Z(n209) );
  GTECH_NOT U197 ( .A(n210), .Z(n192) );
  GTECH_OAI22 U198 ( .A(n197), .B(n198), .C(n194), .D(n195), .Z(n210) );
  GTECH_NOT U199 ( .A(n201), .Z(n207) );
  GTECH_OR_NOT U200 ( .A(n208), .B(n194), .Z(n198) );
  GTECH_OR_NOT U201 ( .A(n201), .B(n211), .Z(n196) );
  GTECH_NOT U202 ( .A(n195), .Z(n211) );
  GTECH_OR_NOT U203 ( .A(n197), .B(n208), .Z(n195) );
  GTECH_NAND4 U204 ( .A(n197), .B(n201), .C(n208), .D(n194), .Z(n200) );
  GTECH_MUX2 U205 ( .A(n34), .B(n30), .S(n162), .Z(n194) );
  GTECH_MUX2 U206 ( .A(n32), .B(n28), .S(n162), .Z(n208) );
  GTECH_MUX2 U207 ( .A(seven_segment0_ten_count_reg[0]), .B(
        seven_segment0_unit_count_reg[0]), .S(n162), .Z(n201) );
  GTECH_MUX2 U208 ( .A(seven_segment0_ten_count_reg[2]), .B(
        seven_segment0_unit_count_reg[2]), .S(n162), .Z(n197) );
  GTECH_AO21 U209 ( .A(period[0]), .B(n212), .C(reset), .Z(N9) );
  GTECH_AND2 U210 ( .A(period[11]), .B(n212), .Z(N21) );
  GTECH_OR_NOT U211 ( .A(n212), .B(n190), .Z(N20) );
  GTECH_AO21 U212 ( .A(period[10]), .B(n212), .C(reset), .Z(N19) );
  GTECH_AND2 U213 ( .A(period[9]), .B(n212), .Z(N18) );
  GTECH_AND2 U214 ( .A(period[8]), .B(n212), .Z(N17) );
  GTECH_AND2 U215 ( .A(N170), .B(n213), .Z(N168) );
  GTECH_OR_NOT U216 ( .A(n214), .B(n215), .Z(N167) );
  GTECH_AND2 U217 ( .A(N170), .B(n216), .Z(N166) );
  GTECH_AND2 U218 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U219 ( .A(N170), .B(n217), .Z(N162) );
  GTECH_NOT U220 ( .A(n218), .Z(N170) );
  GTECH_OR_NOT U221 ( .A(reset), .B(n214), .Z(n218) );
  GTECH_NOT U222 ( .A(n219), .Z(n214) );
  GTECH_MUX2 U223 ( .A(n220), .B(n221), .S(n26), .Z(N160) );
  GTECH_OAI21 U224 ( .A(ten_count[2]), .B(n222), .C(n223), .Z(n221) );
  GTECH_NOT U225 ( .A(n224), .Z(n223) );
  GTECH_AND2 U226 ( .A(n225), .B(ten_count[2]), .Z(n220) );
  GTECH_AO21 U227 ( .A(period[7]), .B(n212), .C(reset), .Z(N16) );
  GTECH_OAI21 U228 ( .A(n226), .B(n227), .C(n228), .Z(N159) );
  GTECH_MUX2 U229 ( .A(n225), .B(n224), .S(ten_count[2]), .Z(N158) );
  GTECH_OAI21 U230 ( .A(ten_count[1]), .B(n222), .C(n229), .Z(n224) );
  GTECH_NOT U231 ( .A(n230), .Z(n225) );
  GTECH_NAND3 U232 ( .A(ten_count[1]), .B(ten_count[0]), .C(N152), .Z(n230) );
  GTECH_MUX2 U233 ( .A(n231), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U234 ( .A(N152), .B(ten_count[0]), .Z(n231) );
  GTECH_NOT U235 ( .A(n229), .Z(N154) );
  GTECH_OR_NOT U236 ( .A(ten_count[0]), .B(N152), .Z(n229) );
  GTECH_OR_NOT U237 ( .A(n232), .B(n233), .Z(N151) );
  GTECH_OA21 U238 ( .A(n14), .B(n234), .C(n215), .Z(n233) );
  GTECH_NOT U239 ( .A(n235), .Z(n215) );
  GTECH_OAI21 U240 ( .A(n236), .B(n226), .C(n190), .Z(n235) );
  GTECH_AND2 U241 ( .A(period[6]), .B(n212), .Z(N15) );
  GTECH_OAI21 U242 ( .A(n222), .B(n234), .C(n237), .Z(N148) );
  GTECH_MUX2 U243 ( .A(n238), .B(n239), .S(n176), .Z(n237) );
  GTECH_OR3 U244 ( .A(n177), .B(n240), .C(n241), .Z(n239) );
  GTECH_AND_NOT U245 ( .A(n242), .B(n243), .Z(n238) );
  GTECH_MUX2 U246 ( .A(n222), .B(n240), .S(n177), .Z(n242) );
  GTECH_NAND3 U247 ( .A(n244), .B(n219), .C(n228), .Z(N147) );
  GTECH_OA21 U248 ( .A(n232), .B(n245), .C(n190), .Z(n228) );
  GTECH_OR_NOT U249 ( .A(n14), .B(n234), .Z(n245) );
  GTECH_NAND4 U250 ( .A(n177), .B(n176), .C(n163), .D(n246), .Z(n234) );
  GTECH_NOT U251 ( .A(n15), .Z(n232) );
  GTECH_OR_NOT U252 ( .A(n15), .B(n14), .Z(n219) );
  GTECH_NAND3 U253 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n244) );
  GTECH_MUX2 U254 ( .A(n243), .B(n247), .S(n177), .Z(N146) );
  GTECH_OAI21 U255 ( .A(n241), .B(n240), .C(n248), .Z(n247) );
  GTECH_OAI21 U256 ( .A(n249), .B(n240), .C(n250), .Z(n243) );
  GTECH_AO21 U257 ( .A(n246), .B(n163), .C(n222), .Z(n250) );
  GTECH_NOT U258 ( .A(n241), .Z(n249) );
  GTECH_NAND3 U259 ( .A(n251), .B(n213), .C(n252), .Z(n241) );
  GTECH_NOT U260 ( .A(n163), .Z(n251) );
  GTECH_OR_NOT U261 ( .A(n253), .B(n248), .Z(N144) );
  GTECH_NAND3 U262 ( .A(N152), .B(n246), .C(n163), .Z(n248) );
  GTECH_MUX2 U263 ( .A(n254), .B(n255), .S(n163), .Z(n253) );
  GTECH_AND3 U264 ( .A(n213), .B(N150), .C(n252), .Z(n255) );
  GTECH_NOT U265 ( .A(n23), .Z(n213) );
  GTECH_OAI21 U266 ( .A(n246), .B(n222), .C(n256), .Z(n254) );
  GTECH_OAI21 U267 ( .A(n23), .B(n257), .C(N150), .Z(n256) );
  GTECH_OR_NOT U268 ( .A(n23), .B(n258), .Z(n246) );
  GTECH_OAI21 U269 ( .A(n240), .B(n259), .C(n260), .Z(N142) );
  GTECH_MUX2 U270 ( .A(n261), .B(n262), .S(n23), .Z(n260) );
  GTECH_OR_NOT U271 ( .A(n263), .B(N152), .Z(n262) );
  GTECH_NOT U272 ( .A(n222), .Z(N152) );
  GTECH_XOR2 U273 ( .A(n23), .B(n252), .Z(n259) );
  GTECH_NOT U274 ( .A(n257), .Z(n252) );
  GTECH_NAND3 U275 ( .A(n217), .B(n216), .C(sub_85_carry_2_), .Z(n257) );
  GTECH_NOT U276 ( .A(n21), .Z(n216) );
  GTECH_OR_NOT U277 ( .A(n264), .B(n265), .Z(N140) );
  GTECH_MUX2 U278 ( .A(n266), .B(n267), .S(n21), .Z(n265) );
  GTECH_NAND3 U279 ( .A(sub_85_carry_2_), .B(n217), .C(N150), .Z(n267) );
  GTECH_NOT U280 ( .A(n240), .Z(N150) );
  GTECH_NOT U281 ( .A(n17), .Z(n217) );
  GTECH_AND2 U282 ( .A(n268), .B(n269), .Z(n266) );
  GTECH_MUX2 U283 ( .A(n240), .B(n222), .S(sub_85_carry_2_), .Z(n268) );
  GTECH_NOT U284 ( .A(n261), .Z(n264) );
  GTECH_OR_NOT U285 ( .A(n222), .B(n263), .Z(n261) );
  GTECH_NOT U286 ( .A(n258), .Z(n263) );
  GTECH_OR_NOT U287 ( .A(sub_85_carry_2_), .B(n21), .Z(n258) );
  GTECH_AO21 U288 ( .A(period[5]), .B(n212), .C(reset), .Z(N14) );
  GTECH_MUX2 U289 ( .A(n270), .B(n271), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_NOT U290 ( .A(n269), .Z(n271) );
  GTECH_OAI21 U291 ( .A(n17), .B(n240), .C(n222), .Z(n270) );
  GTECH_OAI21 U292 ( .A(n17), .B(n222), .C(n269), .Z(N136) );
  GTECH_OR_NOT U293 ( .A(n240), .B(n17), .Z(n269) );
  GTECH_OR_NOT U294 ( .A(reset), .B(n272), .Z(n240) );
  GTECH_OR_NOT U295 ( .A(N169), .B(n15), .Z(n222) );
  GTECH_OR_NOT U296 ( .A(n14), .B(n190), .Z(N169) );
  GTECH_AND2 U297 ( .A(n273), .B(n274), .Z(N134) );
  GTECH_OAI21 U298 ( .A(n175), .B(n275), .C(n164), .Z(n274) );
  GTECH_OR_NOT U299 ( .A(n272), .B(n190), .Z(N133) );
  GTECH_NOT U300 ( .A(reset), .Z(n190) );
  GTECH_NOT U301 ( .A(n227), .Z(n272) );
  GTECH_OR_NOT U302 ( .A(n236), .B(n15), .Z(n227) );
  GTECH_NOT U303 ( .A(n14), .Z(n236) );
  GTECH_AND2 U304 ( .A(n276), .B(n273), .Z(N132) );
  GTECH_XOR2 U305 ( .A(n275), .B(n175), .Z(n276) );
  GTECH_OR_NOT U306 ( .A(n165), .B(n277), .Z(n275) );
  GTECH_NOT U307 ( .A(n278), .Z(n277) );
  GTECH_AND2 U308 ( .A(n279), .B(n273), .Z(N130) );
  GTECH_XOR2 U309 ( .A(n278), .B(n165), .Z(n279) );
  GTECH_OR_NOT U310 ( .A(n166), .B(n280), .Z(n278) );
  GTECH_NOT U311 ( .A(n281), .Z(n280) );
  GTECH_AND2 U312 ( .A(period[4]), .B(n212), .Z(N13) );
  GTECH_AND2 U313 ( .A(n282), .B(n273), .Z(N128) );
  GTECH_XOR2 U314 ( .A(n281), .B(n166), .Z(n282) );
  GTECH_OR_NOT U315 ( .A(n167), .B(n283), .Z(n281) );
  GTECH_NOT U316 ( .A(n284), .Z(n283) );
  GTECH_AND2 U317 ( .A(n285), .B(n273), .Z(N126) );
  GTECH_XOR2 U318 ( .A(n284), .B(n167), .Z(n285) );
  GTECH_OR_NOT U319 ( .A(n168), .B(n286), .Z(n284) );
  GTECH_NOT U320 ( .A(n287), .Z(n286) );
  GTECH_AND2 U321 ( .A(n288), .B(n273), .Z(N124) );
  GTECH_XOR2 U322 ( .A(n287), .B(n168), .Z(n288) );
  GTECH_OR_NOT U323 ( .A(n169), .B(n289), .Z(n287) );
  GTECH_NOT U324 ( .A(n290), .Z(n289) );
  GTECH_AND2 U325 ( .A(n291), .B(n273), .Z(N122) );
  GTECH_XOR2 U326 ( .A(n290), .B(n169), .Z(n291) );
  GTECH_OR_NOT U327 ( .A(n170), .B(n292), .Z(n290) );
  GTECH_NOT U328 ( .A(n293), .Z(n292) );
  GTECH_AND2 U329 ( .A(n294), .B(n273), .Z(N120) );
  GTECH_XOR2 U330 ( .A(n293), .B(n170), .Z(n294) );
  GTECH_OR_NOT U331 ( .A(n171), .B(n295), .Z(n293) );
  GTECH_NOT U332 ( .A(n296), .Z(n295) );
  GTECH_AO21 U333 ( .A(period[3]), .B(n212), .C(reset), .Z(N12) );
  GTECH_AND2 U334 ( .A(n297), .B(n273), .Z(N118) );
  GTECH_XOR2 U335 ( .A(n296), .B(n171), .Z(n297) );
  GTECH_NAND3 U336 ( .A(n298), .B(n299), .C(n300), .Z(n296) );
  GTECH_NOT U337 ( .A(n172), .Z(n300) );
  GTECH_OAI22 U338 ( .A(n172), .B(n301), .C(n302), .D(n303), .Z(N116) );
  GTECH_MUX2 U339 ( .A(n298), .B(n304), .S(n172), .Z(n303) );
  GTECH_OR_NOT U340 ( .A(n174), .B(n298), .Z(n304) );
  GTECH_MUX2 U341 ( .A(N112), .B(n305), .S(n173), .Z(N114) );
  GTECH_AND2 U342 ( .A(n273), .B(n299), .Z(n305) );
  GTECH_NOT U343 ( .A(n301), .Z(N112) );
  GTECH_OR_NOT U344 ( .A(n299), .B(n273), .Z(n301) );
  GTECH_NOT U345 ( .A(n302), .Z(n273) );
  GTECH_OR_NOT U346 ( .A(reset), .B(n226), .Z(n302) );
  GTECH_NOT U347 ( .A(n306), .Z(n226) );
  GTECH_AOI222 U348 ( .A(n307), .B(n308), .C(update_period[11]), .D(n164), .E(
        n309), .F(n310), .Z(n306) );
  GTECH_AO22 U349 ( .A(n175), .B(update_period[10]), .C(n311), .D(n312), .Z(
        n309) );
  GTECH_AO22 U350 ( .A(n165), .B(update_period[9]), .C(n313), .D(n166), .Z(
        n312) );
  GTECH_AND2 U351 ( .A(n314), .B(update_period[8]), .Z(n313) );
  GTECH_AND3 U352 ( .A(n310), .B(n314), .C(n311), .Z(n308) );
  GTECH_OR_NOT U353 ( .A(n175), .B(n315), .Z(n311) );
  GTECH_NOT U354 ( .A(update_period[10]), .Z(n315) );
  GTECH_OR_NOT U355 ( .A(n165), .B(n316), .Z(n314) );
  GTECH_NOT U356 ( .A(update_period[9]), .Z(n316) );
  GTECH_OR_NOT U357 ( .A(n164), .B(n317), .Z(n310) );
  GTECH_NOT U358 ( .A(update_period[11]), .Z(n317) );
  GTECH_OA22 U359 ( .A(n166), .B(update_period[8]), .C(n318), .D(n319), .Z(
        n307) );
  GTECH_AO22 U360 ( .A(n320), .B(n168), .C(n167), .D(update_period[7]), .Z(
        n319) );
  GTECH_AND2 U361 ( .A(n321), .B(update_period[6]), .Z(n320) );
  GTECH_AO22 U362 ( .A(n322), .B(n323), .C(n324), .D(n325), .Z(n318) );
  GTECH_ADD_ABC U363 ( .A(n326), .B(n169), .C(update_period[5]), .COUT(n325)
         );
  GTECH_AND2 U364 ( .A(update_period[4]), .B(n170), .Z(n326) );
  GTECH_OA22 U365 ( .A(n169), .B(update_period[5]), .C(n327), .D(n328), .Z(
        n323) );
  GTECH_AND3 U366 ( .A(n329), .B(n330), .C(n331), .Z(n328) );
  GTECH_OAI21 U367 ( .A(n332), .B(n298), .C(n179), .Z(n330) );
  GTECH_NOT U368 ( .A(n173), .Z(n298) );
  GTECH_OA21 U369 ( .A(n172), .B(update_period[2]), .C(n333), .Z(n329) );
  GTECH_OR_NOT U370 ( .A(n173), .B(n332), .Z(n333) );
  GTECH_OR_NOT U371 ( .A(n299), .B(update_period[0]), .Z(n332) );
  GTECH_AO22 U372 ( .A(n334), .B(n172), .C(n171), .D(update_period[3]), .Z(
        n327) );
  GTECH_AND2 U373 ( .A(n331), .B(update_period[2]), .Z(n334) );
  GTECH_OR_NOT U374 ( .A(n171), .B(n335), .Z(n331) );
  GTECH_NOT U375 ( .A(update_period[3]), .Z(n335) );
  GTECH_OA21 U376 ( .A(n170), .B(update_period[4]), .C(n324), .Z(n322) );
  GTECH_NOT U377 ( .A(n336), .Z(n324) );
  GTECH_OAI21 U378 ( .A(update_period[6]), .B(n168), .C(n321), .Z(n336) );
  GTECH_OR_NOT U379 ( .A(n167), .B(n337), .Z(n321) );
  GTECH_NOT U380 ( .A(update_period[7]), .Z(n337) );
  GTECH_NOT U381 ( .A(n174), .Z(n299) );
  GTECH_AO21 U382 ( .A(period[2]), .B(n212), .C(reset), .Z(N11) );
  GTECH_AO21 U383 ( .A(period[1]), .B(n212), .C(reset), .Z(N10) );
  GTECH_NOT U384 ( .A(n338), .Z(n212) );
  GTECH_OR_NOT U385 ( .A(reset), .B(period_load), .Z(n338) );
endmodule

