
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
         n23, n27, n29, n31, n33, n77, n155, sub_85_carry_2_, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
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
         n328, n329, n330, n331, n332, n333, n334;
  wire   [8:0] clk_counter;
  wire   [3:0] edge_counter;
  wire   [11:0] update_period;
  wire   [3:0] ten_count;
  wire   [3:0] unit_count;
  wire   [0:3] seven_segment0_unit_count_reg;
  wire   [0:3] seven_segment0_ten_count_reg;

  GTECH_FJK1S update_period_reg_11_ ( .J(n77), .K(n77), .TI(N21), .TE(N20), 
        .CP(clk), .Q(update_period[11]) );
  GTECH_FJK1S update_period_reg_10_ ( .J(n77), .K(n77), .TI(N19), .TE(N20), 
        .CP(clk), .Q(update_period[10]) );
  GTECH_FJK1S update_period_reg_9_ ( .J(n77), .K(n77), .TI(N18), .TE(N20), 
        .CP(clk), .Q(update_period[9]) );
  GTECH_FJK1S update_period_reg_8_ ( .J(n77), .K(n77), .TI(N17), .TE(N20), 
        .CP(clk), .Q(update_period[8]) );
  GTECH_FJK1S update_period_reg_7_ ( .J(n77), .K(n77), .TI(N16), .TE(N20), 
        .CP(clk), .Q(update_period[7]) );
  GTECH_FJK1S update_period_reg_6_ ( .J(n77), .K(n77), .TI(N15), .TE(N20), 
        .CP(clk), .Q(update_period[6]) );
  GTECH_FJK1S update_period_reg_5_ ( .J(n77), .K(n77), .TI(N14), .TE(N20), 
        .CP(clk), .Q(update_period[5]) );
  GTECH_FJK1S update_period_reg_4_ ( .J(n77), .K(n77), .TI(N13), .TE(N20), 
        .CP(clk), .Q(update_period[4]) );
  GTECH_FJK1S update_period_reg_3_ ( .J(n77), .K(n77), .TI(N12), .TE(N20), 
        .CP(clk), .Q(update_period[3]) );
  GTECH_FJK1S update_period_reg_2_ ( .J(n77), .K(n77), .TI(N11), .TE(N20), 
        .CP(clk), .Q(update_period[2]) );
  GTECH_FJK1S update_period_reg_1_ ( .J(n77), .K(n77), .TI(N10), .TE(N20), 
        .CP(clk), .Q(update_period[1]) );
  GTECH_FJK1S update_period_reg_0_ ( .J(n77), .K(n77), .TI(N9), .TE(N20), .CP(
        clk), .Q(update_period[0]) );
  GTECH_FD1 edge_detect0_q0_reg ( .D(signal), .CP(clk), .Q(edge_detect0_q0) );
  GTECH_FD1 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .Q(
        edge_detect0_q1) );
  GTECH_FD1 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK1S edge_counter_reg_5_ ( .J(n77), .K(n77), .TI(N146), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[1]), .QN(n172) );
  GTECH_FJK1S edge_counter_reg_6_ ( .J(n77), .K(n77), .TI(N148), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[2]), .QN(n171) );
  GTECH_FJK1S state_reg_0_ ( .J(n77), .K(n77), .TI(N150), .TE(N151), .CP(clk), 
        .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK1S state_reg_1_ ( .J(n77), .K(n77), .TI(N152), .TE(N151), .CP(clk), 
        .Q(dbg_state[1]), .QN(n15) );
  GTECH_FJK1S clk_counter_reg_10_ ( .J(n77), .K(n77), .TI(N132), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[1]), .QN(n170) );
  GTECH_FJK1S clk_counter_reg_0_ ( .J(n77), .K(n77), .TI(N112), .TE(N133), 
        .CP(clk), .Q(clk_counter[0]), .QN(n169) );
  GTECH_FJK1S clk_counter_reg_1_ ( .J(n77), .K(n77), .TI(N114), .TE(N133), 
        .CP(clk), .Q(clk_counter[1]), .QN(n168) );
  GTECH_FJK1S clk_counter_reg_2_ ( .J(n77), .K(n77), .TI(N116), .TE(N133), 
        .CP(clk), .Q(clk_counter[2]), .QN(n167) );
  GTECH_FJK1S clk_counter_reg_3_ ( .J(n77), .K(n77), .TI(N118), .TE(N133), 
        .CP(clk), .Q(clk_counter[3]), .QN(n166) );
  GTECH_FJK1S clk_counter_reg_4_ ( .J(n77), .K(n77), .TI(N120), .TE(N133), 
        .CP(clk), .Q(clk_counter[4]), .QN(n165) );
  GTECH_FJK1S clk_counter_reg_5_ ( .J(n77), .K(n77), .TI(N122), .TE(N133), 
        .CP(clk), .Q(clk_counter[5]), .QN(n164) );
  GTECH_FJK1S clk_counter_reg_6_ ( .J(n77), .K(n77), .TI(N124), .TE(N133), 
        .CP(clk), .Q(clk_counter[6]), .QN(n163) );
  GTECH_FJK1S clk_counter_reg_7_ ( .J(n77), .K(n77), .TI(N126), .TE(N133), 
        .CP(clk), .Q(clk_counter[7]), .QN(n162) );
  GTECH_FJK1S clk_counter_reg_8_ ( .J(n77), .K(n77), .TI(N128), .TE(N133), 
        .CP(clk), .Q(clk_counter[8]), .QN(n161) );
  GTECH_FJK1S clk_counter_reg_9_ ( .J(n77), .K(n77), .TI(N130), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[0]), .QN(n160) );
  GTECH_FJK1S clk_counter_reg_11_ ( .J(n77), .K(n77), .TI(N134), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[2]), .QN(n159) );
  GTECH_FJK1S update_digits_reg ( .J(n77), .K(n77), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits), .QN(n16) );
  GTECH_FJK1S edge_counter_reg_4_ ( .J(n77), .K(n77), .TI(N144), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[0]), .QN(n185) );
  GTECH_FJK1S edge_counter_reg_0_ ( .J(n77), .K(n77), .TI(N136), .TE(N147), 
        .CP(clk), .Q(N62), .QN(n17) );
  GTECH_FJK1S unit_count_reg_0_ ( .J(n77), .K(n77), .TI(N162), .TE(N167), .CP(
        clk), .Q(unit_count[0]) );
  GTECH_FJK1S edge_counter_reg_1_ ( .J(n77), .K(n77), .TI(N138), .TE(N147), 
        .CP(clk), .Q(sub_85_carry_2_) );
  GTECH_FJK1S unit_count_reg_1_ ( .J(n77), .K(n77), .TI(N164), .TE(N167), .CP(
        clk), .Q(unit_count[1]) );
  GTECH_FJK1S edge_counter_reg_2_ ( .J(n77), .K(n77), .TI(N140), .TE(N147), 
        .CP(clk), .Q(edge_counter[2]), .QN(n21) );
  GTECH_FJK1S unit_count_reg_2_ ( .J(n77), .K(n77), .TI(N166), .TE(N167), .CP(
        clk), .Q(unit_count[2]) );
  GTECH_FJK1S edge_counter_reg_3_ ( .J(n77), .K(n77), .TI(N142), .TE(N147), 
        .CP(clk), .Q(edge_counter[3]), .QN(n23) );
  GTECH_FJK1S unit_count_reg_3_ ( .J(n77), .K(n77), .TI(N168), .TE(N167), .CP(
        clk), .Q(unit_count[3]) );
  GTECH_FJK1S ten_count_reg_0_ ( .J(n77), .K(n77), .TI(N154), .TE(N159), .CP(
        clk), .Q(ten_count[0]) );
  GTECH_FJK1S ten_count_reg_1_ ( .J(n77), .K(n77), .TI(N156), .TE(N159), .CP(
        clk), .Q(ten_count[1]) );
  GTECH_FJK1S ten_count_reg_2_ ( .J(n77), .K(n77), .TI(N158), .TE(N159), .CP(
        clk), .Q(ten_count[2]) );
  GTECH_FJK1S ten_count_reg_3_ ( .J(n77), .K(n77), .TI(N160), .TE(N159), .CP(
        clk), .Q(ten_count[3]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_0_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N16), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[0]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_1_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[1]), .QN(n27) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_2_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[2]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_3_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[3]), .QN(n29) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_0_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[0]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_1_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[1]), .QN(n31) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_2_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[2]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_3_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[3]), .QN(n33) );
  GTECH_FD1 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .Q(
        digit), .QN(n155) );
  GTECH_ZERO U167 ( .Z(n77) );
  GTECH_OR_NOT U168 ( .A(reset), .B(n16), .Z(seven_segment0_N9) );
  GTECH_AND2 U169 ( .A(ten_count[0]), .B(n186), .Z(seven_segment0_N8) );
  GTECH_AND2 U170 ( .A(n155), .B(n186), .Z(seven_segment0_N6) );
  GTECH_AND2 U171 ( .A(unit_count[3]), .B(n186), .Z(seven_segment0_N22) );
  GTECH_AND2 U172 ( .A(unit_count[2]), .B(n186), .Z(seven_segment0_N20) );
  GTECH_AND2 U173 ( .A(unit_count[1]), .B(n186), .Z(seven_segment0_N18) );
  GTECH_AND2 U174 ( .A(unit_count[0]), .B(n186), .Z(seven_segment0_N16) );
  GTECH_AND2 U175 ( .A(ten_count[3]), .B(n186), .Z(seven_segment0_N14) );
  GTECH_AND2 U176 ( .A(ten_count[2]), .B(n186), .Z(seven_segment0_N12) );
  GTECH_AND2 U177 ( .A(ten_count[1]), .B(n186), .Z(seven_segment0_N10) );
  GTECH_OR_NOT U178 ( .A(n187), .B(n188), .Z(segments[6]) );
  GTECH_NOT U179 ( .A(n189), .Z(segments[4]) );
  GTECH_OAI21 U180 ( .A(n190), .B(n191), .C(n192), .Z(segments[3]) );
  GTECH_AND2 U181 ( .A(n193), .B(n189), .Z(n192) );
  GTECH_OAI21 U182 ( .A(n194), .B(n195), .C(n196), .Z(n189) );
  GTECH_NOT U183 ( .A(n197), .Z(n194) );
  GTECH_OR_NOT U184 ( .A(segments[5]), .B(n198), .Z(segments[2]) );
  GTECH_OAI21 U185 ( .A(n199), .B(n197), .C(n200), .Z(segments[5]) );
  GTECH_NOT U186 ( .A(n187), .Z(n200) );
  GTECH_NAND3 U187 ( .A(n201), .B(n193), .C(n202), .Z(n187) );
  GTECH_NAND3 U188 ( .A(n195), .B(n196), .C(n190), .Z(n202) );
  GTECH_NOT U189 ( .A(n191), .Z(n195) );
  GTECH_NAND3 U190 ( .A(n188), .B(n201), .C(n198), .Z(segments[1]) );
  GTECH_NOT U191 ( .A(n203), .Z(n198) );
  GTECH_OAI21 U192 ( .A(n191), .B(n196), .C(n197), .Z(n203) );
  GTECH_NAND4 U193 ( .A(n204), .B(n190), .C(n205), .D(n196), .Z(n201) );
  GTECH_NAND3 U194 ( .A(n188), .B(n193), .C(n206), .Z(segments[0]) );
  GTECH_MUX2 U195 ( .A(n191), .B(n197), .S(n196), .Z(n206) );
  GTECH_NOT U196 ( .A(n207), .Z(n196) );
  GTECH_NAND3 U197 ( .A(n190), .B(n205), .C(n199), .Z(n193) );
  GTECH_NOT U198 ( .A(n208), .Z(n199) );
  GTECH_OR_NOT U199 ( .A(n209), .B(n207), .Z(n208) );
  GTECH_MUX2 U200 ( .A(seven_segment0_ten_count_reg[0]), .B(
        seven_segment0_unit_count_reg[0]), .S(n155), .Z(n207) );
  GTECH_NOT U201 ( .A(n204), .Z(n209) );
  GTECH_NOT U202 ( .A(n210), .Z(n188) );
  GTECH_OAI22 U203 ( .A(n190), .B(n191), .C(n204), .D(n197), .Z(n210) );
  GTECH_OR_NOT U204 ( .A(n190), .B(n205), .Z(n197) );
  GTECH_OR_NOT U205 ( .A(n205), .B(n204), .Z(n191) );
  GTECH_MUX2 U206 ( .A(n33), .B(n29), .S(n155), .Z(n204) );
  GTECH_MUX2 U207 ( .A(n31), .B(n27), .S(n155), .Z(n205) );
  GTECH_MUX2 U208 ( .A(seven_segment0_ten_count_reg[2]), .B(
        seven_segment0_unit_count_reg[2]), .S(n155), .Z(n190) );
  GTECH_AO21 U209 ( .A(period[0]), .B(n211), .C(reset), .Z(N9) );
  GTECH_AND2 U210 ( .A(period[11]), .B(n211), .Z(N21) );
  GTECH_OR_NOT U211 ( .A(n211), .B(n186), .Z(N20) );
  GTECH_AO21 U212 ( .A(period[10]), .B(n211), .C(reset), .Z(N19) );
  GTECH_AND2 U213 ( .A(period[9]), .B(n211), .Z(N18) );
  GTECH_AND2 U214 ( .A(period[8]), .B(n211), .Z(N17) );
  GTECH_AND2 U215 ( .A(N170), .B(n212), .Z(N168) );
  GTECH_OR_NOT U216 ( .A(n213), .B(n214), .Z(N167) );
  GTECH_NOT U217 ( .A(n215), .Z(n214) );
  GTECH_AND2 U218 ( .A(N170), .B(n216), .Z(N166) );
  GTECH_AND2 U219 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U220 ( .A(N170), .B(n217), .Z(N162) );
  GTECH_NOT U221 ( .A(n218), .Z(N170) );
  GTECH_OR_NOT U222 ( .A(reset), .B(n213), .Z(n218) );
  GTECH_NOT U223 ( .A(n219), .Z(n213) );
  GTECH_MUX2 U224 ( .A(n220), .B(n221), .S(ten_count[3]), .Z(N160) );
  GTECH_OAI21 U225 ( .A(ten_count[2]), .B(n222), .C(n223), .Z(n221) );
  GTECH_NOT U226 ( .A(n224), .Z(n223) );
  GTECH_AND2 U227 ( .A(n225), .B(ten_count[2]), .Z(n220) );
  GTECH_AO21 U228 ( .A(period[7]), .B(n211), .C(reset), .Z(N16) );
  GTECH_OAI21 U229 ( .A(n226), .B(n227), .C(n228), .Z(N159) );
  GTECH_MUX2 U230 ( .A(n225), .B(n224), .S(ten_count[2]), .Z(N158) );
  GTECH_OAI21 U231 ( .A(ten_count[1]), .B(n222), .C(n229), .Z(n224) );
  GTECH_NOT U232 ( .A(n230), .Z(n225) );
  GTECH_NAND3 U233 ( .A(ten_count[1]), .B(ten_count[0]), .C(N152), .Z(n230) );
  GTECH_MUX2 U234 ( .A(n231), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U235 ( .A(N152), .B(ten_count[0]), .Z(n231) );
  GTECH_NOT U236 ( .A(n229), .Z(N154) );
  GTECH_OR_NOT U237 ( .A(ten_count[0]), .B(N152), .Z(n229) );
  GTECH_OR_NOT U238 ( .A(n232), .B(n15), .Z(N151) );
  GTECH_OAI21 U239 ( .A(n14), .B(n233), .C(n234), .Z(n232) );
  GTECH_NOT U240 ( .A(n215), .Z(n234) );
  GTECH_OAI21 U241 ( .A(n235), .B(n226), .C(n186), .Z(n215) );
  GTECH_AND2 U242 ( .A(period[6]), .B(n211), .Z(N15) );
  GTECH_OAI21 U243 ( .A(n222), .B(n233), .C(n236), .Z(N148) );
  GTECH_MUX2 U244 ( .A(n237), .B(n238), .S(n171), .Z(n236) );
  GTECH_OR3 U245 ( .A(n172), .B(n239), .C(n240), .Z(n238) );
  GTECH_AND_NOT U246 ( .A(n241), .B(n242), .Z(n237) );
  GTECH_MUX2 U247 ( .A(n222), .B(n239), .S(n172), .Z(n241) );
  GTECH_NAND3 U248 ( .A(n243), .B(n219), .C(n228), .Z(N147) );
  GTECH_AOI21 U249 ( .A(n244), .B(n15), .C(reset), .Z(n228) );
  GTECH_AND_NOT U250 ( .A(n233), .B(n14), .Z(n244) );
  GTECH_NAND4 U251 ( .A(n185), .B(n172), .C(n171), .D(n245), .Z(n233) );
  GTECH_OR_NOT U252 ( .A(n15), .B(n14), .Z(n219) );
  GTECH_NAND3 U253 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n243) );
  GTECH_MUX2 U254 ( .A(n242), .B(n246), .S(n172), .Z(N146) );
  GTECH_OAI21 U255 ( .A(n240), .B(n239), .C(n247), .Z(n246) );
  GTECH_OAI21 U256 ( .A(n248), .B(n239), .C(n249), .Z(n242) );
  GTECH_AO21 U257 ( .A(n245), .B(n185), .C(n222), .Z(n249) );
  GTECH_NOT U258 ( .A(n240), .Z(n248) );
  GTECH_NAND3 U259 ( .A(n212), .B(n250), .C(n251), .Z(n240) );
  GTECH_NOT U260 ( .A(n185), .Z(n250) );
  GTECH_OR_NOT U261 ( .A(n252), .B(n247), .Z(N144) );
  GTECH_NAND3 U262 ( .A(N152), .B(n245), .C(n185), .Z(n247) );
  GTECH_MUX2 U263 ( .A(n253), .B(n254), .S(n185), .Z(n252) );
  GTECH_AND3 U264 ( .A(n212), .B(N150), .C(n251), .Z(n254) );
  GTECH_OAI21 U265 ( .A(n245), .B(n222), .C(n255), .Z(n253) );
  GTECH_AO21 U266 ( .A(n251), .B(n212), .C(n239), .Z(n255) );
  GTECH_NOT U267 ( .A(n23), .Z(n212) );
  GTECH_OR_NOT U268 ( .A(n23), .B(n256), .Z(n245) );
  GTECH_OAI21 U269 ( .A(n239), .B(n257), .C(n258), .Z(N142) );
  GTECH_MUX2 U270 ( .A(n259), .B(n260), .S(n23), .Z(n258) );
  GTECH_OR_NOT U271 ( .A(n261), .B(N152), .Z(n260) );
  GTECH_NOT U272 ( .A(n222), .Z(N152) );
  GTECH_XOR2 U273 ( .A(n23), .B(n251), .Z(n257) );
  GTECH_NOT U274 ( .A(n262), .Z(n251) );
  GTECH_NAND3 U275 ( .A(n217), .B(n216), .C(sub_85_carry_2_), .Z(n262) );
  GTECH_NOT U276 ( .A(n21), .Z(n216) );
  GTECH_OR_NOT U277 ( .A(n263), .B(n264), .Z(N140) );
  GTECH_MUX2 U278 ( .A(n265), .B(n266), .S(n21), .Z(n264) );
  GTECH_NAND3 U279 ( .A(sub_85_carry_2_), .B(n217), .C(N150), .Z(n266) );
  GTECH_NOT U280 ( .A(n239), .Z(N150) );
  GTECH_NOT U281 ( .A(n17), .Z(n217) );
  GTECH_AND2 U282 ( .A(n267), .B(n268), .Z(n265) );
  GTECH_MUX2 U283 ( .A(n239), .B(n222), .S(sub_85_carry_2_), .Z(n267) );
  GTECH_NOT U284 ( .A(n259), .Z(n263) );
  GTECH_OR_NOT U285 ( .A(n222), .B(n261), .Z(n259) );
  GTECH_NOT U286 ( .A(n256), .Z(n261) );
  GTECH_OR_NOT U287 ( .A(sub_85_carry_2_), .B(n21), .Z(n256) );
  GTECH_AO21 U288 ( .A(period[5]), .B(n211), .C(reset), .Z(N14) );
  GTECH_MUX2 U289 ( .A(n269), .B(n270), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_NOT U290 ( .A(n268), .Z(n270) );
  GTECH_OAI21 U291 ( .A(n17), .B(n239), .C(n222), .Z(n269) );
  GTECH_OAI21 U292 ( .A(n17), .B(n222), .C(n268), .Z(N136) );
  GTECH_OR_NOT U293 ( .A(n239), .B(n17), .Z(n268) );
  GTECH_OR_NOT U294 ( .A(reset), .B(n271), .Z(n239) );
  GTECH_OR_NOT U295 ( .A(N169), .B(n15), .Z(n222) );
  GTECH_OR_NOT U296 ( .A(n14), .B(n186), .Z(N169) );
  GTECH_AND2 U297 ( .A(n272), .B(n273), .Z(N134) );
  GTECH_OAI21 U298 ( .A(n170), .B(n274), .C(n159), .Z(n273) );
  GTECH_OR_NOT U299 ( .A(n271), .B(n186), .Z(N133) );
  GTECH_NOT U300 ( .A(reset), .Z(n186) );
  GTECH_NOT U301 ( .A(n227), .Z(n271) );
  GTECH_OR_NOT U302 ( .A(n235), .B(n15), .Z(n227) );
  GTECH_NOT U303 ( .A(n14), .Z(n235) );
  GTECH_AND2 U304 ( .A(n275), .B(n272), .Z(N132) );
  GTECH_XOR2 U305 ( .A(n274), .B(n170), .Z(n275) );
  GTECH_OR_NOT U306 ( .A(n160), .B(n276), .Z(n274) );
  GTECH_NOT U307 ( .A(n277), .Z(n276) );
  GTECH_AND2 U308 ( .A(n278), .B(n272), .Z(N130) );
  GTECH_XOR2 U309 ( .A(n277), .B(n160), .Z(n278) );
  GTECH_OR_NOT U310 ( .A(n161), .B(n279), .Z(n277) );
  GTECH_NOT U311 ( .A(n280), .Z(n279) );
  GTECH_AND2 U312 ( .A(period[4]), .B(n211), .Z(N13) );
  GTECH_AND2 U313 ( .A(n281), .B(n272), .Z(N128) );
  GTECH_XOR2 U314 ( .A(n280), .B(n161), .Z(n281) );
  GTECH_OR_NOT U315 ( .A(n162), .B(n282), .Z(n280) );
  GTECH_NOT U316 ( .A(n283), .Z(n282) );
  GTECH_AND2 U317 ( .A(n284), .B(n272), .Z(N126) );
  GTECH_XOR2 U318 ( .A(n283), .B(n162), .Z(n284) );
  GTECH_OR_NOT U319 ( .A(n163), .B(n285), .Z(n283) );
  GTECH_NOT U320 ( .A(n286), .Z(n285) );
  GTECH_AND2 U321 ( .A(n287), .B(n272), .Z(N124) );
  GTECH_XOR2 U322 ( .A(n286), .B(n163), .Z(n287) );
  GTECH_OR_NOT U323 ( .A(n164), .B(n288), .Z(n286) );
  GTECH_NOT U324 ( .A(n289), .Z(n288) );
  GTECH_AND2 U325 ( .A(n290), .B(n272), .Z(N122) );
  GTECH_XOR2 U326 ( .A(n289), .B(n164), .Z(n290) );
  GTECH_OR_NOT U327 ( .A(n165), .B(n291), .Z(n289) );
  GTECH_NOT U328 ( .A(n292), .Z(n291) );
  GTECH_AND2 U329 ( .A(n293), .B(n272), .Z(N120) );
  GTECH_XOR2 U330 ( .A(n292), .B(n165), .Z(n293) );
  GTECH_OR_NOT U331 ( .A(n166), .B(n294), .Z(n292) );
  GTECH_NOT U332 ( .A(n295), .Z(n294) );
  GTECH_AO21 U333 ( .A(period[3]), .B(n211), .C(reset), .Z(N12) );
  GTECH_AND2 U334 ( .A(n296), .B(n272), .Z(N118) );
  GTECH_XOR2 U335 ( .A(n295), .B(n166), .Z(n296) );
  GTECH_NAND3 U336 ( .A(n297), .B(n298), .C(n299), .Z(n295) );
  GTECH_NOT U337 ( .A(n167), .Z(n299) );
  GTECH_OAI22 U338 ( .A(n167), .B(n300), .C(n301), .D(n302), .Z(N116) );
  GTECH_MUX2 U339 ( .A(n297), .B(n303), .S(n167), .Z(n302) );
  GTECH_OR_NOT U340 ( .A(n169), .B(n297), .Z(n303) );
  GTECH_NOT U341 ( .A(n168), .Z(n297) );
  GTECH_MUX2 U342 ( .A(N112), .B(n304), .S(n168), .Z(N114) );
  GTECH_AND2 U343 ( .A(n272), .B(n298), .Z(n304) );
  GTECH_NOT U344 ( .A(n300), .Z(N112) );
  GTECH_OR_NOT U345 ( .A(n298), .B(n272), .Z(n300) );
  GTECH_NOT U346 ( .A(n301), .Z(n272) );
  GTECH_OR_NOT U347 ( .A(reset), .B(n226), .Z(n301) );
  GTECH_NOT U348 ( .A(n305), .Z(n226) );
  GTECH_AOI222 U349 ( .A(n306), .B(n307), .C(update_period[11]), .D(n159), .E(
        n308), .F(n309), .Z(n305) );
  GTECH_AO22 U350 ( .A(n170), .B(update_period[10]), .C(n310), .D(n311), .Z(
        n308) );
  GTECH_AO22 U351 ( .A(update_period[8]), .B(n312), .C(n160), .D(
        update_period[9]), .Z(n311) );
  GTECH_AND2 U352 ( .A(n313), .B(n161), .Z(n312) );
  GTECH_AND3 U353 ( .A(n313), .B(n310), .C(n309), .Z(n307) );
  GTECH_OR_NOT U354 ( .A(n159), .B(n314), .Z(n309) );
  GTECH_NOT U355 ( .A(update_period[11]), .Z(n314) );
  GTECH_OR_NOT U356 ( .A(n170), .B(n315), .Z(n310) );
  GTECH_NOT U357 ( .A(update_period[10]), .Z(n315) );
  GTECH_OR_NOT U358 ( .A(update_period[9]), .B(n316), .Z(n313) );
  GTECH_NOT U359 ( .A(n160), .Z(n316) );
  GTECH_OA22 U360 ( .A(n317), .B(n318), .C(update_period[8]), .D(n161), .Z(
        n306) );
  GTECH_OAI21 U361 ( .A(n319), .B(n320), .C(n321), .Z(n318) );
  GTECH_OR_NOT U362 ( .A(n322), .B(n323), .Z(n321) );
  GTECH_ADD_ABC U363 ( .A(n324), .B(n164), .C(update_period[5]), .COUT(n323)
         );
  GTECH_AND2 U364 ( .A(update_period[4]), .B(n165), .Z(n324) );
  GTECH_AND_NOT U365 ( .A(n325), .B(update_period[7]), .Z(n320) );
  GTECH_NOT U366 ( .A(n162), .Z(n325) );
  GTECH_AOI22 U367 ( .A(n163), .B(update_period[6]), .C(update_period[7]), .D(
        n162), .Z(n319) );
  GTECH_NOR3 U368 ( .A(n326), .B(n322), .C(n327), .Z(n317) );
  GTECH_NOR2 U369 ( .A(update_period[4]), .B(n165), .Z(n327) );
  GTECH_OAI22 U370 ( .A(update_period[6]), .B(n163), .C(update_period[7]), .D(
        n162), .Z(n322) );
  GTECH_OAI21 U371 ( .A(n164), .B(update_period[5]), .C(n328), .Z(n326) );
  GTECH_AO21 U372 ( .A(n329), .B(n330), .C(n331), .Z(n328) );
  GTECH_ADD_ABC U373 ( .A(n332), .B(n166), .C(update_period[3]), .COUT(n331)
         );
  GTECH_AND2 U374 ( .A(update_period[2]), .B(n167), .Z(n332) );
  GTECH_ADD_ABC U375 ( .A(update_period[1]), .B(n333), .C(n168), .COUT(n330)
         );
  GTECH_AND2 U376 ( .A(update_period[0]), .B(n169), .Z(n333) );
  GTECH_OA22 U377 ( .A(n167), .B(update_period[2]), .C(n166), .D(
        update_period[3]), .Z(n329) );
  GTECH_NOT U378 ( .A(n169), .Z(n298) );
  GTECH_AO21 U379 ( .A(period[2]), .B(n211), .C(reset), .Z(N11) );
  GTECH_AO21 U380 ( .A(period[1]), .B(n211), .C(reset), .Z(N10) );
  GTECH_NOT U381 ( .A(n334), .Z(n211) );
  GTECH_OR_NOT U382 ( .A(reset), .B(period_load), .Z(n334) );
endmodule

