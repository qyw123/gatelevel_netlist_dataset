
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
         n23, n28, n29, n30, n32, n33, n34, n78, n156, sub_85_carry_2_, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n174, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247,
         n248, n249, n250, n251, n252, n253, n254, n255, n256, n257, n258,
         n259, n260, n261, n262, n263, n264, n265, n266, n267, n268, n269,
         n270, n271, n272, n273, n274, n275, n276, n277, n278, n279, n280,
         n281, n282, n283, n284, n285, n286, n287, n288, n289, n290, n291,
         n292, n293, n294, n295, n296, n297, n298, n299, n300, n301, n302,
         n303, n304, n305, n306, n307, n308, n309, n310, n311, n312, n313,
         n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, n324,
         n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335,
         n336, n337, n338, n339, n340, n341;
  wire   [8:0] clk_counter;
  wire   [3:0] edge_counter;
  wire   [11:0] update_period;
  wire   [3:0] ten_count;
  wire   [3:0] unit_count;
  wire   [0:3] seven_segment0_unit_count_reg;
  wire   [0:3] seven_segment0_ten_count_reg;

  GTECH_FJK1S update_period_reg_11_ ( .J(n78), .K(n78), .TI(N21), .TE(N20), 
        .CP(clk), .Q(update_period[11]) );
  GTECH_FJK1S update_period_reg_10_ ( .J(n78), .K(n78), .TI(N19), .TE(N20), 
        .CP(clk), .Q(update_period[10]) );
  GTECH_FJK1S update_period_reg_9_ ( .J(n78), .K(n78), .TI(N18), .TE(N20), 
        .CP(clk), .Q(update_period[9]) );
  GTECH_FJK1S update_period_reg_8_ ( .J(n78), .K(n78), .TI(N17), .TE(N20), 
        .CP(clk), .Q(update_period[8]) );
  GTECH_FJK1S update_period_reg_7_ ( .J(n78), .K(n78), .TI(N16), .TE(N20), 
        .CP(clk), .Q(update_period[7]) );
  GTECH_FJK1S update_period_reg_6_ ( .J(n78), .K(n78), .TI(N15), .TE(N20), 
        .CP(clk), .Q(update_period[6]) );
  GTECH_FJK1S update_period_reg_5_ ( .J(n78), .K(n78), .TI(N14), .TE(N20), 
        .CP(clk), .Q(update_period[5]) );
  GTECH_FJK1S update_period_reg_4_ ( .J(n78), .K(n78), .TI(N13), .TE(N20), 
        .CP(clk), .Q(update_period[4]) );
  GTECH_FJK1S update_period_reg_3_ ( .J(n78), .K(n78), .TI(N12), .TE(N20), 
        .CP(clk), .Q(update_period[3]) );
  GTECH_FJK1S update_period_reg_2_ ( .J(n78), .K(n78), .TI(N11), .TE(N20), 
        .CP(clk), .Q(update_period[2]) );
  GTECH_FJK1S update_period_reg_1_ ( .J(n78), .K(n78), .TI(N10), .TE(N20), 
        .CP(clk), .Q(update_period[1]), .QN(n174) );
  GTECH_FJK1S update_period_reg_0_ ( .J(n78), .K(n78), .TI(N9), .TE(N20), .CP(
        clk), .Q(update_period[0]) );
  GTECH_FD1 edge_detect0_q0_reg ( .D(signal), .CP(clk), .Q(edge_detect0_q0) );
  GTECH_FD1 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .Q(
        edge_detect0_q1) );
  GTECH_FD1 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK1S edge_counter_reg_5_ ( .J(n78), .K(n78), .TI(N146), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[1]), .QN(n172) );
  GTECH_FJK1S edge_counter_reg_6_ ( .J(n78), .K(n78), .TI(N148), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[2]), .QN(n171) );
  GTECH_FJK1S state_reg_0_ ( .J(n78), .K(n78), .TI(N150), .TE(N151), .CP(clk), 
        .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK1S state_reg_1_ ( .J(n78), .K(n78), .TI(N152), .TE(N151), .CP(clk), 
        .Q(dbg_state[1]), .QN(n15) );
  GTECH_FJK1S clk_counter_reg_10_ ( .J(n78), .K(n78), .TI(N132), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[1]), .QN(n170) );
  GTECH_FJK1S clk_counter_reg_0_ ( .J(n78), .K(n78), .TI(N112), .TE(N133), 
        .CP(clk), .Q(clk_counter[0]), .QN(n169) );
  GTECH_FJK1S clk_counter_reg_1_ ( .J(n78), .K(n78), .TI(N114), .TE(N133), 
        .CP(clk), .Q(clk_counter[1]), .QN(n168) );
  GTECH_FJK1S clk_counter_reg_2_ ( .J(n78), .K(n78), .TI(N116), .TE(N133), 
        .CP(clk), .Q(clk_counter[2]), .QN(n167) );
  GTECH_FJK1S clk_counter_reg_3_ ( .J(n78), .K(n78), .TI(N118), .TE(N133), 
        .CP(clk), .Q(clk_counter[3]), .QN(n166) );
  GTECH_FJK1S clk_counter_reg_4_ ( .J(n78), .K(n78), .TI(N120), .TE(N133), 
        .CP(clk), .Q(clk_counter[4]), .QN(n165) );
  GTECH_FJK1S clk_counter_reg_5_ ( .J(n78), .K(n78), .TI(N122), .TE(N133), 
        .CP(clk), .Q(clk_counter[5]), .QN(n164) );
  GTECH_FJK1S clk_counter_reg_6_ ( .J(n78), .K(n78), .TI(N124), .TE(N133), 
        .CP(clk), .Q(clk_counter[6]), .QN(n163) );
  GTECH_FJK1S clk_counter_reg_7_ ( .J(n78), .K(n78), .TI(N126), .TE(N133), 
        .CP(clk), .Q(clk_counter[7]), .QN(n162) );
  GTECH_FJK1S clk_counter_reg_8_ ( .J(n78), .K(n78), .TI(N128), .TE(N133), 
        .CP(clk), .Q(clk_counter[8]), .QN(n161) );
  GTECH_FJK1S clk_counter_reg_9_ ( .J(n78), .K(n78), .TI(N130), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[0]), .QN(n160) );
  GTECH_FJK1S clk_counter_reg_11_ ( .J(n78), .K(n78), .TI(N134), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[2]), .QN(n159) );
  GTECH_FJK1S update_digits_reg ( .J(n78), .K(n78), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits), .QN(n16) );
  GTECH_FJK1S edge_counter_reg_4_ ( .J(n78), .K(n78), .TI(N144), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[0]), .QN(n185) );
  GTECH_FJK1S edge_counter_reg_0_ ( .J(n78), .K(n78), .TI(N136), .TE(N147), 
        .CP(clk), .Q(N62), .QN(n17) );
  GTECH_FJK1S unit_count_reg_0_ ( .J(n78), .K(n78), .TI(N162), .TE(N167), .CP(
        clk), .Q(unit_count[0]) );
  GTECH_FJK1S edge_counter_reg_1_ ( .J(n78), .K(n78), .TI(N138), .TE(N147), 
        .CP(clk), .Q(sub_85_carry_2_) );
  GTECH_FJK1S unit_count_reg_1_ ( .J(n78), .K(n78), .TI(N164), .TE(N167), .CP(
        clk), .Q(unit_count[1]) );
  GTECH_FJK1S edge_counter_reg_2_ ( .J(n78), .K(n78), .TI(N140), .TE(N147), 
        .CP(clk), .Q(edge_counter[2]), .QN(n21) );
  GTECH_FJK1S unit_count_reg_2_ ( .J(n78), .K(n78), .TI(N166), .TE(N167), .CP(
        clk), .Q(unit_count[2]) );
  GTECH_FJK1S edge_counter_reg_3_ ( .J(n78), .K(n78), .TI(N142), .TE(N147), 
        .CP(clk), .Q(edge_counter[3]), .QN(n23) );
  GTECH_FJK1S unit_count_reg_3_ ( .J(n78), .K(n78), .TI(N168), .TE(N167), .CP(
        clk), .Q(unit_count[3]) );
  GTECH_FJK1S ten_count_reg_0_ ( .J(n78), .K(n78), .TI(N154), .TE(N159), .CP(
        clk), .Q(ten_count[0]) );
  GTECH_FJK1S ten_count_reg_1_ ( .J(n78), .K(n78), .TI(N156), .TE(N159), .CP(
        clk), .Q(ten_count[1]) );
  GTECH_FJK1S ten_count_reg_2_ ( .J(n78), .K(n78), .TI(N158), .TE(N159), .CP(
        clk), .Q(ten_count[2]) );
  GTECH_FJK1S ten_count_reg_3_ ( .J(n78), .K(n78), .TI(N160), .TE(N159), .CP(
        clk), .Q(ten_count[3]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_0_ ( .J(n78), .K(n78), .TI(
        seven_segment0_N16), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[0]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_1_ ( .J(n78), .K(n78), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[1]), .QN(n28) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_2_ ( .J(n78), .K(n78), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[2]), .QN(n29) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_3_ ( .J(n78), .K(n78), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[3]), .QN(n30) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_0_ ( .J(n78), .K(n78), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[0]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_1_ ( .J(n78), .K(n78), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[1]), .QN(n32) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_2_ ( .J(n78), .K(n78), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[2]), .QN(n33) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_3_ ( .J(n78), .K(n78), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[3]), .QN(n34) );
  GTECH_FD1 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .Q(
        digit), .QN(n156) );
  GTECH_ZERO U167 ( .Z(n78) );
  GTECH_OR_NOT U168 ( .A(reset), .B(n16), .Z(seven_segment0_N9) );
  GTECH_AND2 U169 ( .A(ten_count[0]), .B(n186), .Z(seven_segment0_N8) );
  GTECH_AND2 U170 ( .A(n156), .B(n186), .Z(seven_segment0_N6) );
  GTECH_AND2 U171 ( .A(unit_count[3]), .B(n186), .Z(seven_segment0_N22) );
  GTECH_AND2 U172 ( .A(unit_count[2]), .B(n186), .Z(seven_segment0_N20) );
  GTECH_AND2 U173 ( .A(unit_count[1]), .B(n186), .Z(seven_segment0_N18) );
  GTECH_AND2 U174 ( .A(unit_count[0]), .B(n186), .Z(seven_segment0_N16) );
  GTECH_AND2 U175 ( .A(ten_count[3]), .B(n186), .Z(seven_segment0_N14) );
  GTECH_AND2 U176 ( .A(ten_count[2]), .B(n186), .Z(seven_segment0_N12) );
  GTECH_AND2 U177 ( .A(ten_count[1]), .B(n186), .Z(seven_segment0_N10) );
  GTECH_OAI21 U178 ( .A(n187), .B(n188), .C(n189), .Z(segments[6]) );
  GTECH_NOT U179 ( .A(n190), .Z(n189) );
  GTECH_OR_NOT U180 ( .A(n190), .B(n191), .Z(segments[5]) );
  GTECH_OA21 U181 ( .A(n192), .B(n193), .C(n194), .Z(n191) );
  GTECH_OAI21 U182 ( .A(n195), .B(n196), .C(n197), .Z(n190) );
  GTECH_AO21 U183 ( .A(n198), .B(n199), .C(n200), .Z(n196) );
  GTECH_OAI21 U184 ( .A(n188), .B(n198), .C(n201), .Z(segments[3]) );
  GTECH_AND_NOT U185 ( .A(n197), .B(segments[4]), .Z(n201) );
  GTECH_OAI21 U186 ( .A(n195), .B(n198), .C(n194), .Z(segments[4]) );
  GTECH_NOT U187 ( .A(n202), .Z(segments[2]) );
  GTECH_AND3 U188 ( .A(n203), .B(n193), .C(n199), .Z(n202) );
  GTECH_AOI2N2 U189 ( .A(n192), .B(n195), .C(n200), .D(n198), .Z(n203) );
  GTECH_OR_NOT U190 ( .A(n204), .B(n205), .Z(segments[1]) );
  GTECH_OA21 U191 ( .A(n195), .B(n199), .C(n193), .Z(n205) );
  GTECH_OR3 U192 ( .A(n206), .B(n207), .C(n204), .Z(segments[0]) );
  GTECH_OAI22 U193 ( .A(n208), .B(n198), .C(n187), .D(n188), .Z(n204) );
  GTECH_NOT U194 ( .A(n200), .Z(n188) );
  GTECH_NOT U195 ( .A(n209), .Z(n187) );
  GTECH_OAI21 U196 ( .A(n192), .B(n210), .C(n198), .Z(n209) );
  GTECH_OR_NOT U197 ( .A(n211), .B(n192), .Z(n198) );
  GTECH_NOT U198 ( .A(n194), .Z(n207) );
  GTECH_OR_NOT U199 ( .A(n195), .B(n212), .Z(n194) );
  GTECH_NOT U200 ( .A(n193), .Z(n212) );
  GTECH_OR_NOT U201 ( .A(n210), .B(n200), .Z(n193) );
  GTECH_NOT U202 ( .A(n197), .Z(n206) );
  GTECH_OR3 U203 ( .A(n200), .B(n208), .C(n199), .Z(n197) );
  GTECH_OR_NOT U204 ( .A(n210), .B(n192), .Z(n199) );
  GTECH_MUX2 U205 ( .A(n34), .B(n30), .S(n156), .Z(n192) );
  GTECH_NOT U206 ( .A(n211), .Z(n210) );
  GTECH_MUX2 U207 ( .A(n32), .B(n28), .S(n156), .Z(n211) );
  GTECH_NOT U208 ( .A(n195), .Z(n208) );
  GTECH_MUX2 U209 ( .A(seven_segment0_ten_count_reg[0]), .B(
        seven_segment0_unit_count_reg[0]), .S(n156), .Z(n195) );
  GTECH_MUX2 U210 ( .A(n33), .B(n29), .S(n156), .Z(n200) );
  GTECH_AO21 U211 ( .A(period[0]), .B(n213), .C(reset), .Z(N9) );
  GTECH_AND2 U212 ( .A(period[11]), .B(n213), .Z(N21) );
  GTECH_OR_NOT U213 ( .A(n213), .B(n186), .Z(N20) );
  GTECH_AO21 U214 ( .A(period[10]), .B(n213), .C(reset), .Z(N19) );
  GTECH_AND2 U215 ( .A(period[9]), .B(n213), .Z(N18) );
  GTECH_AND2 U216 ( .A(period[8]), .B(n213), .Z(N17) );
  GTECH_AND2 U217 ( .A(N170), .B(n214), .Z(N168) );
  GTECH_NOT U218 ( .A(n23), .Z(n214) );
  GTECH_OR_NOT U219 ( .A(n215), .B(n216), .Z(N167) );
  GTECH_AND2 U220 ( .A(N170), .B(n217), .Z(N166) );
  GTECH_NOT U221 ( .A(n21), .Z(n217) );
  GTECH_AND2 U222 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U223 ( .A(N170), .B(n218), .Z(N162) );
  GTECH_NOT U224 ( .A(n17), .Z(n218) );
  GTECH_NOT U225 ( .A(n219), .Z(N170) );
  GTECH_OR_NOT U226 ( .A(reset), .B(n215), .Z(n219) );
  GTECH_MUX2 U227 ( .A(n220), .B(n221), .S(ten_count[3]), .Z(N160) );
  GTECH_OAI21 U228 ( .A(ten_count[2]), .B(n222), .C(n223), .Z(n221) );
  GTECH_NOT U229 ( .A(n224), .Z(n223) );
  GTECH_AND2 U230 ( .A(n225), .B(ten_count[2]), .Z(n220) );
  GTECH_AO21 U231 ( .A(period[7]), .B(n213), .C(reset), .Z(N16) );
  GTECH_OAI21 U232 ( .A(n226), .B(n227), .C(n228), .Z(N159) );
  GTECH_NOT U233 ( .A(n229), .Z(n228) );
  GTECH_MUX2 U234 ( .A(n225), .B(n224), .S(ten_count[2]), .Z(N158) );
  GTECH_OAI21 U235 ( .A(ten_count[1]), .B(n222), .C(n230), .Z(n224) );
  GTECH_NOT U236 ( .A(n231), .Z(n225) );
  GTECH_OR3 U237 ( .A(n232), .B(n233), .C(n222), .Z(n231) );
  GTECH_NOT U238 ( .A(ten_count[1]), .Z(n233) );
  GTECH_NOT U239 ( .A(ten_count[0]), .Z(n232) );
  GTECH_MUX2 U240 ( .A(n234), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U241 ( .A(N152), .B(ten_count[0]), .Z(n234) );
  GTECH_NOT U242 ( .A(n230), .Z(N154) );
  GTECH_OR_NOT U243 ( .A(ten_count[0]), .B(N152), .Z(n230) );
  GTECH_OR_NOT U244 ( .A(n235), .B(n236), .Z(N151) );
  GTECH_OA21 U245 ( .A(n14), .B(n237), .C(n216), .Z(n236) );
  GTECH_NOT U246 ( .A(n238), .Z(n216) );
  GTECH_OAI21 U247 ( .A(n239), .B(n226), .C(n186), .Z(n238) );
  GTECH_AND2 U248 ( .A(period[6]), .B(n213), .Z(N15) );
  GTECH_OAI21 U249 ( .A(n222), .B(n237), .C(n240), .Z(N148) );
  GTECH_MUX2 U250 ( .A(n241), .B(n242), .S(n171), .Z(n240) );
  GTECH_OR3 U251 ( .A(n243), .B(n244), .C(n172), .Z(n242) );
  GTECH_AND_NOT U252 ( .A(n245), .B(n246), .Z(n241) );
  GTECH_MUX2 U253 ( .A(n222), .B(n244), .S(n172), .Z(n245) );
  GTECH_OR3 U254 ( .A(n215), .B(n247), .C(n229), .Z(N147) );
  GTECH_OAI21 U255 ( .A(n235), .B(n248), .C(n186), .Z(n229) );
  GTECH_OR_NOT U256 ( .A(n14), .B(n237), .Z(n248) );
  GTECH_NAND4 U257 ( .A(n185), .B(n172), .C(n171), .D(n249), .Z(n237) );
  GTECH_NOT U258 ( .A(n15), .Z(n235) );
  GTECH_AND3 U259 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n247) );
  GTECH_NOT U260 ( .A(n250), .Z(n215) );
  GTECH_OR_NOT U261 ( .A(n15), .B(n14), .Z(n250) );
  GTECH_MUX2 U262 ( .A(n246), .B(n251), .S(n172), .Z(N146) );
  GTECH_OAI21 U263 ( .A(n243), .B(n244), .C(n252), .Z(n251) );
  GTECH_OAI21 U264 ( .A(n253), .B(n244), .C(n254), .Z(n246) );
  GTECH_OAI21 U265 ( .A(n255), .B(n256), .C(N152), .Z(n254) );
  GTECH_NOT U266 ( .A(n222), .Z(N152) );
  GTECH_NOT U267 ( .A(n243), .Z(n253) );
  GTECH_OR3 U268 ( .A(n185), .B(n23), .C(n257), .Z(n243) );
  GTECH_OR_NOT U269 ( .A(n258), .B(n252), .Z(N144) );
  GTECH_OR3 U270 ( .A(n255), .B(n222), .C(n256), .Z(n252) );
  GTECH_NOT U271 ( .A(n185), .Z(n256) );
  GTECH_NOT U272 ( .A(n249), .Z(n255) );
  GTECH_MUX2 U273 ( .A(n259), .B(n260), .S(n185), .Z(n258) );
  GTECH_NOR3 U274 ( .A(n23), .B(n257), .C(n244), .Z(n260) );
  GTECH_OAI21 U275 ( .A(n249), .B(n222), .C(n261), .Z(n259) );
  GTECH_OAI21 U276 ( .A(n23), .B(n257), .C(N150), .Z(n261) );
  GTECH_NOT U277 ( .A(n244), .Z(N150) );
  GTECH_OR_NOT U278 ( .A(n23), .B(n262), .Z(n249) );
  GTECH_OAI21 U279 ( .A(n244), .B(n263), .C(n264), .Z(N142) );
  GTECH_MUX2 U280 ( .A(n265), .B(n266), .S(n23), .Z(n264) );
  GTECH_OR_NOT U281 ( .A(n222), .B(n262), .Z(n266) );
  GTECH_XNOR2 U282 ( .A(n23), .B(n257), .Z(n263) );
  GTECH_OR3 U283 ( .A(n21), .B(n17), .C(n267), .Z(n257) );
  GTECH_OR_NOT U284 ( .A(n268), .B(n269), .Z(N140) );
  GTECH_MUX2 U285 ( .A(n270), .B(n271), .S(n21), .Z(n269) );
  GTECH_OR3 U286 ( .A(n17), .B(n267), .C(n244), .Z(n271) );
  GTECH_NOT U287 ( .A(sub_85_carry_2_), .Z(n267) );
  GTECH_AND2 U288 ( .A(n272), .B(n273), .Z(n270) );
  GTECH_MUX2 U289 ( .A(n244), .B(n222), .S(sub_85_carry_2_), .Z(n272) );
  GTECH_NOT U290 ( .A(n265), .Z(n268) );
  GTECH_OR_NOT U291 ( .A(n222), .B(n274), .Z(n265) );
  GTECH_NOT U292 ( .A(n262), .Z(n274) );
  GTECH_OR_NOT U293 ( .A(sub_85_carry_2_), .B(n21), .Z(n262) );
  GTECH_AO21 U294 ( .A(period[5]), .B(n213), .C(reset), .Z(N14) );
  GTECH_MUX2 U295 ( .A(n275), .B(n276), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_NOT U296 ( .A(n273), .Z(n276) );
  GTECH_OAI21 U297 ( .A(n17), .B(n244), .C(n222), .Z(n275) );
  GTECH_OAI21 U298 ( .A(n17), .B(n222), .C(n273), .Z(N136) );
  GTECH_OR_NOT U299 ( .A(n244), .B(n17), .Z(n273) );
  GTECH_OR_NOT U300 ( .A(reset), .B(n277), .Z(n244) );
  GTECH_OR_NOT U301 ( .A(N169), .B(n15), .Z(n222) );
  GTECH_OR_NOT U302 ( .A(n14), .B(n186), .Z(N169) );
  GTECH_AND2 U303 ( .A(n278), .B(n279), .Z(N134) );
  GTECH_OAI21 U304 ( .A(n170), .B(n280), .C(n159), .Z(n279) );
  GTECH_OR_NOT U305 ( .A(n277), .B(n186), .Z(N133) );
  GTECH_NOT U306 ( .A(reset), .Z(n186) );
  GTECH_NOT U307 ( .A(n227), .Z(n277) );
  GTECH_OR_NOT U308 ( .A(n239), .B(n15), .Z(n227) );
  GTECH_NOT U309 ( .A(n14), .Z(n239) );
  GTECH_AND2 U310 ( .A(n281), .B(n278), .Z(N132) );
  GTECH_XOR2 U311 ( .A(n280), .B(n170), .Z(n281) );
  GTECH_OR_NOT U312 ( .A(n160), .B(n282), .Z(n280) );
  GTECH_NOT U313 ( .A(n283), .Z(n282) );
  GTECH_AND2 U314 ( .A(n284), .B(n278), .Z(N130) );
  GTECH_XOR2 U315 ( .A(n283), .B(n160), .Z(n284) );
  GTECH_OR_NOT U316 ( .A(n161), .B(n285), .Z(n283) );
  GTECH_NOT U317 ( .A(n286), .Z(n285) );
  GTECH_AND2 U318 ( .A(period[4]), .B(n213), .Z(N13) );
  GTECH_AND2 U319 ( .A(n287), .B(n278), .Z(N128) );
  GTECH_XOR2 U320 ( .A(n286), .B(n161), .Z(n287) );
  GTECH_OR_NOT U321 ( .A(n162), .B(n288), .Z(n286) );
  GTECH_NOT U322 ( .A(n289), .Z(n288) );
  GTECH_AND2 U323 ( .A(n290), .B(n278), .Z(N126) );
  GTECH_XOR2 U324 ( .A(n289), .B(n162), .Z(n290) );
  GTECH_OR_NOT U325 ( .A(n163), .B(n291), .Z(n289) );
  GTECH_NOT U326 ( .A(n292), .Z(n291) );
  GTECH_AND2 U327 ( .A(n293), .B(n278), .Z(N124) );
  GTECH_XOR2 U328 ( .A(n292), .B(n163), .Z(n293) );
  GTECH_OR_NOT U329 ( .A(n164), .B(n294), .Z(n292) );
  GTECH_NOT U330 ( .A(n295), .Z(n294) );
  GTECH_AND2 U331 ( .A(n296), .B(n278), .Z(N122) );
  GTECH_XOR2 U332 ( .A(n295), .B(n164), .Z(n296) );
  GTECH_OR_NOT U333 ( .A(n165), .B(n297), .Z(n295) );
  GTECH_NOT U334 ( .A(n298), .Z(n297) );
  GTECH_AND2 U335 ( .A(n299), .B(n278), .Z(N120) );
  GTECH_XOR2 U336 ( .A(n298), .B(n165), .Z(n299) );
  GTECH_OR_NOT U337 ( .A(n166), .B(n300), .Z(n298) );
  GTECH_NOT U338 ( .A(n301), .Z(n300) );
  GTECH_AO21 U339 ( .A(period[3]), .B(n213), .C(reset), .Z(N12) );
  GTECH_AND2 U340 ( .A(n302), .B(n278), .Z(N118) );
  GTECH_XOR2 U341 ( .A(n301), .B(n166), .Z(n302) );
  GTECH_OR3 U342 ( .A(n169), .B(n168), .C(n167), .Z(n301) );
  GTECH_OAI22 U343 ( .A(n167), .B(n303), .C(n304), .D(n305), .Z(N116) );
  GTECH_MUX2 U344 ( .A(n306), .B(n307), .S(n167), .Z(n305) );
  GTECH_OR_NOT U345 ( .A(n169), .B(n306), .Z(n307) );
  GTECH_MUX2 U346 ( .A(N112), .B(n308), .S(n168), .Z(N114) );
  GTECH_AND2 U347 ( .A(n278), .B(n309), .Z(n308) );
  GTECH_NOT U348 ( .A(n303), .Z(N112) );
  GTECH_OR_NOT U349 ( .A(n309), .B(n278), .Z(n303) );
  GTECH_NOT U350 ( .A(n304), .Z(n278) );
  GTECH_OR_NOT U351 ( .A(reset), .B(n226), .Z(n304) );
  GTECH_NOT U352 ( .A(n310), .Z(n226) );
  GTECH_AOI222 U353 ( .A(n311), .B(n312), .C(update_period[11]), .D(n159), .E(
        n313), .F(n314), .Z(n310) );
  GTECH_AO22 U354 ( .A(n170), .B(update_period[10]), .C(n315), .D(n316), .Z(
        n313) );
  GTECH_AO22 U355 ( .A(update_period[8]), .B(n317), .C(n160), .D(
        update_period[9]), .Z(n316) );
  GTECH_OA21 U356 ( .A(n160), .B(update_period[9]), .C(n161), .Z(n317) );
  GTECH_OA21 U357 ( .A(n318), .B(n319), .C(n320), .Z(n312) );
  GTECH_AND2 U358 ( .A(n315), .B(n314), .Z(n320) );
  GTECH_OR_NOT U359 ( .A(update_period[11]), .B(n321), .Z(n314) );
  GTECH_NOT U360 ( .A(n159), .Z(n321) );
  GTECH_OR_NOT U361 ( .A(n170), .B(n322), .Z(n315) );
  GTECH_NOT U362 ( .A(update_period[10]), .Z(n322) );
  GTECH_AO22 U363 ( .A(n323), .B(n324), .C(n162), .D(update_period[7]), .Z(
        n319) );
  GTECH_AND2 U364 ( .A(n163), .B(update_period[6]), .Z(n323) );
  GTECH_OAI2N2 U365 ( .A(n325), .B(n326), .C(n327), .D(n328), .Z(n318) );
  GTECH_ADD_ABC U366 ( .A(n329), .B(n164), .C(update_period[5]), .COUT(n328)
         );
  GTECH_AND2 U367 ( .A(update_period[4]), .B(n165), .Z(n329) );
  GTECH_OAI21 U368 ( .A(update_period[4]), .B(n165), .C(n327), .Z(n326) );
  GTECH_NOT U369 ( .A(n330), .Z(n327) );
  GTECH_OAI21 U370 ( .A(update_period[6]), .B(n163), .C(n324), .Z(n330) );
  GTECH_OR_NOT U371 ( .A(n162), .B(n331), .Z(n324) );
  GTECH_NOT U372 ( .A(update_period[7]), .Z(n331) );
  GTECH_OAI22 U373 ( .A(update_period[5]), .B(n164), .C(n332), .D(n333), .Z(
        n325) );
  GTECH_AO22 U374 ( .A(n334), .B(n335), .C(n166), .D(update_period[3]), .Z(
        n333) );
  GTECH_AND2 U375 ( .A(n167), .B(update_period[2]), .Z(n334) );
  GTECH_AND3 U376 ( .A(n336), .B(n337), .C(n335), .Z(n332) );
  GTECH_OR_NOT U377 ( .A(n166), .B(n338), .Z(n335) );
  GTECH_NOT U378 ( .A(update_period[3]), .Z(n338) );
  GTECH_OAI21 U379 ( .A(n339), .B(n306), .C(n174), .Z(n337) );
  GTECH_NOT U380 ( .A(n168), .Z(n306) );
  GTECH_OA21 U381 ( .A(n167), .B(update_period[2]), .C(n340), .Z(n336) );
  GTECH_OR_NOT U382 ( .A(n168), .B(n339), .Z(n340) );
  GTECH_OR_NOT U383 ( .A(n309), .B(update_period[0]), .Z(n339) );
  GTECH_OA22 U384 ( .A(n161), .B(update_period[8]), .C(n160), .D(
        update_period[9]), .Z(n311) );
  GTECH_NOT U385 ( .A(n169), .Z(n309) );
  GTECH_AO21 U386 ( .A(period[2]), .B(n213), .C(reset), .Z(N11) );
  GTECH_AO21 U387 ( .A(period[1]), .B(n213), .C(reset), .Z(N10) );
  GTECH_NOT U388 ( .A(n341), .Z(n213) );
  GTECH_OR_NOT U389 ( .A(reset), .B(period_load), .Z(n341) );
endmodule

