
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
         n23, n26, n27, n28, n29, n30, n31, n32, n33, n77, n156,
         sub_85_carry_2_, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288,
         n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299,
         n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310,
         n311, n312, n313, n314, n315, n316, n317, n318, n319, n320, n321,
         n322, n323, n324, n325, n326, n327, n328, n329, n330, n331, n332,
         n333, n334, n335, n336, n337, n338, n339, n340, n341, n342, n343,
         n344;
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
        clk), .Q(update_period[0]), .QN(n173) );
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
        seven_segment0_unit_count_reg[0]), .QN(n26) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_1_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[1]), .QN(n27) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_2_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[2]), .QN(n28) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_3_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[3]), .QN(n29) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_0_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[0]), .QN(n30) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_1_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[1]), .QN(n31) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_2_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[2]), .QN(n32) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_3_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[3]), .QN(n33) );
  GTECH_FD1 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .Q(
        digit), .QN(n156) );
  GTECH_ZERO U167 ( .Z(n77) );
  GTECH_NAND2 U168 ( .A(n16), .B(n186), .Z(seven_segment0_N9) );
  GTECH_AND2 U169 ( .A(ten_count[0]), .B(n186), .Z(seven_segment0_N8) );
  GTECH_AND2 U170 ( .A(n156), .B(n186), .Z(seven_segment0_N6) );
  GTECH_AND2 U171 ( .A(unit_count[3]), .B(n186), .Z(seven_segment0_N22) );
  GTECH_AND2 U172 ( .A(unit_count[2]), .B(n186), .Z(seven_segment0_N20) );
  GTECH_AND2 U173 ( .A(unit_count[1]), .B(n186), .Z(seven_segment0_N18) );
  GTECH_AND2 U174 ( .A(unit_count[0]), .B(n186), .Z(seven_segment0_N16) );
  GTECH_AND2 U175 ( .A(ten_count[3]), .B(n186), .Z(seven_segment0_N14) );
  GTECH_AND2 U176 ( .A(ten_count[2]), .B(n186), .Z(seven_segment0_N12) );
  GTECH_AND2 U177 ( .A(ten_count[1]), .B(n186), .Z(seven_segment0_N10) );
  GTECH_NAND2 U178 ( .A(n187), .B(n188), .Z(segments[6]) );
  GTECH_NAND2 U179 ( .A(n187), .B(n189), .Z(segments[5]) );
  GTECH_NAND3 U180 ( .A(n188), .B(n190), .C(n191), .Z(segments[3]) );
  GTECH_NOT U181 ( .A(segments[4]), .Z(n190) );
  GTECH_OAI21 U182 ( .A(n192), .B(n193), .C(n189), .Z(segments[4]) );
  GTECH_NAND3 U183 ( .A(n194), .B(n195), .C(n187), .Z(segments[2]) );
  GTECH_AND4 U184 ( .A(n196), .B(n197), .C(n191), .D(n198), .Z(n187) );
  GTECH_NAND3 U185 ( .A(n199), .B(n200), .C(n201), .Z(n197) );
  GTECH_OR2 U186 ( .A(n195), .B(n202), .Z(n196) );
  GTECH_NAND4 U187 ( .A(n194), .B(n198), .C(n195), .D(n188), .Z(segments[1])
         );
  GTECH_NAND2 U188 ( .A(n200), .B(n203), .Z(n198) );
  GTECH_NAND4 U189 ( .A(n191), .B(n188), .C(n194), .D(n204), .Z(segments[0])
         );
  GTECH_OA21 U190 ( .A(n202), .B(n195), .C(n189), .Z(n204) );
  GTECH_NAND2 U191 ( .A(n205), .B(n200), .Z(n189) );
  GTECH_NOT U192 ( .A(n195), .Z(n205) );
  GTECH_NAND2 U193 ( .A(n206), .B(n207), .Z(n195) );
  GTECH_NAND2 U194 ( .A(n201), .B(n193), .Z(n194) );
  GTECH_NAND2 U195 ( .A(n201), .B(n207), .Z(n188) );
  GTECH_NOT U196 ( .A(n192), .Z(n201) );
  GTECH_NAND2 U197 ( .A(n202), .B(n208), .Z(n192) );
  GTECH_NOT U198 ( .A(n206), .Z(n208) );
  GTECH_NAND2 U199 ( .A(n203), .B(n193), .Z(n191) );
  GTECH_NOT U200 ( .A(n200), .Z(n193) );
  GTECH_MUX2 U201 ( .A(n30), .B(n26), .S(n156), .Z(n200) );
  GTECH_NOT U202 ( .A(n209), .Z(n203) );
  GTECH_NAND3 U203 ( .A(n202), .B(n199), .C(n206), .Z(n209) );
  GTECH_MUX2 U204 ( .A(n31), .B(n27), .S(n156), .Z(n206) );
  GTECH_NOT U205 ( .A(n207), .Z(n199) );
  GTECH_MUX2 U206 ( .A(n32), .B(n28), .S(n156), .Z(n207) );
  GTECH_MUX2 U207 ( .A(n33), .B(n29), .S(n156), .Z(n202) );
  GTECH_AO21 U208 ( .A(period[0]), .B(n210), .C(reset), .Z(N9) );
  GTECH_AND2 U209 ( .A(period[11]), .B(n210), .Z(N21) );
  GTECH_NAND2 U210 ( .A(n186), .B(n211), .Z(N20) );
  GTECH_AO21 U211 ( .A(period[10]), .B(n210), .C(reset), .Z(N19) );
  GTECH_AND2 U212 ( .A(period[9]), .B(n210), .Z(N18) );
  GTECH_AND2 U213 ( .A(period[8]), .B(n210), .Z(N17) );
  GTECH_AND2 U214 ( .A(N170), .B(n212), .Z(N168) );
  GTECH_NAND2 U215 ( .A(n213), .B(n214), .Z(N167) );
  GTECH_AND2 U216 ( .A(N170), .B(n215), .Z(N166) );
  GTECH_AND2 U217 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U218 ( .A(N170), .B(n216), .Z(N162) );
  GTECH_NOT U219 ( .A(n217), .Z(N170) );
  GTECH_NAND2 U220 ( .A(n218), .B(n186), .Z(n217) );
  GTECH_NOT U221 ( .A(n214), .Z(n218) );
  GTECH_MUX2 U222 ( .A(n219), .B(n220), .S(ten_count[3]), .Z(N160) );
  GTECH_OAI21 U223 ( .A(ten_count[2]), .B(n221), .C(n222), .Z(n220) );
  GTECH_NOT U224 ( .A(n223), .Z(n222) );
  GTECH_AND2 U225 ( .A(n224), .B(ten_count[2]), .Z(n219) );
  GTECH_AO21 U226 ( .A(period[7]), .B(n210), .C(reset), .Z(N16) );
  GTECH_OAI21 U227 ( .A(n225), .B(n226), .C(n227), .Z(N159) );
  GTECH_MUX2 U228 ( .A(n224), .B(n223), .S(ten_count[2]), .Z(N158) );
  GTECH_OAI21 U229 ( .A(ten_count[1]), .B(n221), .C(n228), .Z(n223) );
  GTECH_NOT U230 ( .A(n229), .Z(n224) );
  GTECH_NAND3 U231 ( .A(ten_count[1]), .B(ten_count[0]), .C(N152), .Z(n229) );
  GTECH_MUX2 U232 ( .A(n230), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U233 ( .A(N152), .B(ten_count[0]), .Z(n230) );
  GTECH_NOT U234 ( .A(n228), .Z(N154) );
  GTECH_NAND2 U235 ( .A(N152), .B(n231), .Z(n228) );
  GTECH_NOT U236 ( .A(ten_count[0]), .Z(n231) );
  GTECH_NAND2 U237 ( .A(n232), .B(n15), .Z(N151) );
  GTECH_OA21 U238 ( .A(n14), .B(n233), .C(n213), .Z(n232) );
  GTECH_NOT U239 ( .A(n234), .Z(n213) );
  GTECH_OAI21 U240 ( .A(n235), .B(n225), .C(n186), .Z(n234) );
  GTECH_AND2 U241 ( .A(period[6]), .B(n210), .Z(N15) );
  GTECH_OAI21 U242 ( .A(n221), .B(n233), .C(n236), .Z(N148) );
  GTECH_MUX2 U243 ( .A(n237), .B(n238), .S(n171), .Z(n236) );
  GTECH_OR3 U244 ( .A(n172), .B(n239), .C(n240), .Z(n238) );
  GTECH_AND_NOT U245 ( .A(n241), .B(n242), .Z(n237) );
  GTECH_MUX2 U246 ( .A(n221), .B(n239), .S(n172), .Z(n241) );
  GTECH_NAND3 U247 ( .A(n243), .B(n214), .C(n227), .Z(N147) );
  GTECH_AND2 U248 ( .A(n186), .B(n244), .Z(n227) );
  GTECH_NAND3 U249 ( .A(n235), .B(n15), .C(n233), .Z(n244) );
  GTECH_NAND4 U250 ( .A(n185), .B(n172), .C(n171), .D(n245), .Z(n233) );
  GTECH_NAND2 U251 ( .A(n14), .B(n246), .Z(n214) );
  GTECH_NOT U252 ( .A(n15), .Z(n246) );
  GTECH_NAND3 U253 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n243) );
  GTECH_MUX2 U254 ( .A(n242), .B(n247), .S(n172), .Z(N146) );
  GTECH_OAI21 U255 ( .A(n240), .B(n239), .C(n248), .Z(n247) );
  GTECH_OAI21 U256 ( .A(n249), .B(n239), .C(n250), .Z(n242) );
  GTECH_AO21 U257 ( .A(n245), .B(n185), .C(n221), .Z(n250) );
  GTECH_NOT U258 ( .A(n240), .Z(n249) );
  GTECH_NAND3 U259 ( .A(n212), .B(n251), .C(n252), .Z(n240) );
  GTECH_NOT U260 ( .A(n185), .Z(n251) );
  GTECH_NAND2 U261 ( .A(n253), .B(n248), .Z(N144) );
  GTECH_NAND3 U262 ( .A(N152), .B(n245), .C(n185), .Z(n248) );
  GTECH_MUX2 U263 ( .A(n254), .B(n255), .S(n185), .Z(n253) );
  GTECH_NAND3 U264 ( .A(n252), .B(n212), .C(N150), .Z(n255) );
  GTECH_OA21 U265 ( .A(n221), .B(n245), .C(n256), .Z(n254) );
  GTECH_OAI21 U266 ( .A(n23), .B(n257), .C(N150), .Z(n256) );
  GTECH_NAND2 U267 ( .A(n258), .B(n212), .Z(n245) );
  GTECH_NOT U268 ( .A(n23), .Z(n212) );
  GTECH_OAI21 U269 ( .A(n239), .B(n259), .C(n260), .Z(N142) );
  GTECH_MUX2 U270 ( .A(n261), .B(n262), .S(n23), .Z(n260) );
  GTECH_NAND2 U271 ( .A(N152), .B(n258), .Z(n262) );
  GTECH_XOR2 U272 ( .A(n23), .B(n252), .Z(n259) );
  GTECH_NOT U273 ( .A(n257), .Z(n252) );
  GTECH_NAND3 U274 ( .A(n216), .B(n215), .C(sub_85_carry_2_), .Z(n257) );
  GTECH_NOT U275 ( .A(n21), .Z(n215) );
  GTECH_NAND2 U276 ( .A(n263), .B(n261), .Z(N140) );
  GTECH_NAND2 U277 ( .A(n264), .B(N152), .Z(n261) );
  GTECH_NOT U278 ( .A(n221), .Z(N152) );
  GTECH_NOT U279 ( .A(n258), .Z(n264) );
  GTECH_NAND2 U280 ( .A(n21), .B(n265), .Z(n258) );
  GTECH_NOT U281 ( .A(sub_85_carry_2_), .Z(n265) );
  GTECH_MUX2 U282 ( .A(n266), .B(n267), .S(n21), .Z(n263) );
  GTECH_NAND3 U283 ( .A(sub_85_carry_2_), .B(n216), .C(N150), .Z(n267) );
  GTECH_NOT U284 ( .A(n17), .Z(n216) );
  GTECH_AND2 U285 ( .A(n268), .B(n269), .Z(n266) );
  GTECH_MUX2 U286 ( .A(n239), .B(n221), .S(sub_85_carry_2_), .Z(n268) );
  GTECH_AO21 U287 ( .A(period[5]), .B(n210), .C(reset), .Z(N14) );
  GTECH_MUX2 U288 ( .A(n270), .B(n271), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_NOT U289 ( .A(n269), .Z(n271) );
  GTECH_OAI21 U290 ( .A(n17), .B(n239), .C(n221), .Z(n270) );
  GTECH_OAI21 U291 ( .A(n17), .B(n221), .C(n269), .Z(N136) );
  GTECH_NAND2 U292 ( .A(n17), .B(N150), .Z(n269) );
  GTECH_NOT U293 ( .A(n239), .Z(N150) );
  GTECH_NAND2 U294 ( .A(n272), .B(n186), .Z(n239) );
  GTECH_NOT U295 ( .A(n226), .Z(n272) );
  GTECH_NAND2 U296 ( .A(n15), .B(n273), .Z(n221) );
  GTECH_NOT U297 ( .A(N169), .Z(n273) );
  GTECH_NAND2 U298 ( .A(n186), .B(n235), .Z(N169) );
  GTECH_NOT U299 ( .A(n14), .Z(n235) );
  GTECH_AND2 U300 ( .A(n274), .B(n275), .Z(N134) );
  GTECH_OAI21 U301 ( .A(n170), .B(n276), .C(n159), .Z(n275) );
  GTECH_NAND2 U302 ( .A(n186), .B(n226), .Z(N133) );
  GTECH_NAND2 U303 ( .A(n15), .B(n14), .Z(n226) );
  GTECH_AND2 U304 ( .A(n277), .B(n274), .Z(N132) );
  GTECH_XOR2 U305 ( .A(n276), .B(n170), .Z(n277) );
  GTECH_NAND2 U306 ( .A(n278), .B(n279), .Z(n276) );
  GTECH_NOT U307 ( .A(n160), .Z(n279) );
  GTECH_NOT U308 ( .A(n280), .Z(n278) );
  GTECH_AND2 U309 ( .A(n281), .B(n274), .Z(N130) );
  GTECH_XOR2 U310 ( .A(n280), .B(n160), .Z(n281) );
  GTECH_NAND2 U311 ( .A(n282), .B(n283), .Z(n280) );
  GTECH_NOT U312 ( .A(n284), .Z(n282) );
  GTECH_AND2 U313 ( .A(period[4]), .B(n210), .Z(N13) );
  GTECH_AND2 U314 ( .A(n285), .B(n274), .Z(N128) );
  GTECH_XOR2 U315 ( .A(n284), .B(n161), .Z(n285) );
  GTECH_NAND2 U316 ( .A(n286), .B(n287), .Z(n284) );
  GTECH_NOT U317 ( .A(n288), .Z(n286) );
  GTECH_AND2 U318 ( .A(n289), .B(n274), .Z(N126) );
  GTECH_XOR2 U319 ( .A(n288), .B(n162), .Z(n289) );
  GTECH_NAND2 U320 ( .A(n290), .B(n291), .Z(n288) );
  GTECH_NOT U321 ( .A(n163), .Z(n291) );
  GTECH_NOT U322 ( .A(n292), .Z(n290) );
  GTECH_AND2 U323 ( .A(n293), .B(n274), .Z(N124) );
  GTECH_XOR2 U324 ( .A(n292), .B(n163), .Z(n293) );
  GTECH_NAND2 U325 ( .A(n294), .B(n295), .Z(n292) );
  GTECH_NOT U326 ( .A(n164), .Z(n295) );
  GTECH_NOT U327 ( .A(n296), .Z(n294) );
  GTECH_AND2 U328 ( .A(n297), .B(n274), .Z(N122) );
  GTECH_XOR2 U329 ( .A(n296), .B(n164), .Z(n297) );
  GTECH_NAND2 U330 ( .A(n298), .B(n299), .Z(n296) );
  GTECH_NOT U331 ( .A(n165), .Z(n299) );
  GTECH_NOT U332 ( .A(n300), .Z(n298) );
  GTECH_AND2 U333 ( .A(n301), .B(n274), .Z(N120) );
  GTECH_XOR2 U334 ( .A(n300), .B(n165), .Z(n301) );
  GTECH_NAND2 U335 ( .A(n302), .B(n303), .Z(n300) );
  GTECH_NOT U336 ( .A(n304), .Z(n302) );
  GTECH_AO21 U337 ( .A(period[3]), .B(n210), .C(reset), .Z(N12) );
  GTECH_AND2 U338 ( .A(n305), .B(n274), .Z(N118) );
  GTECH_XOR2 U339 ( .A(n304), .B(n166), .Z(n305) );
  GTECH_NAND3 U340 ( .A(n306), .B(n307), .C(n308), .Z(n304) );
  GTECH_NOT U341 ( .A(n167), .Z(n308) );
  GTECH_OAI22 U342 ( .A(n167), .B(n309), .C(n310), .D(n311), .Z(N116) );
  GTECH_MUX2 U343 ( .A(n306), .B(n312), .S(n167), .Z(n311) );
  GTECH_NAND2 U344 ( .A(n306), .B(n307), .Z(n312) );
  GTECH_NOT U345 ( .A(n168), .Z(n306) );
  GTECH_MUX2 U346 ( .A(N112), .B(n313), .S(n168), .Z(N114) );
  GTECH_AND2 U347 ( .A(n274), .B(n307), .Z(n313) );
  GTECH_NOT U348 ( .A(n309), .Z(N112) );
  GTECH_NAND2 U349 ( .A(n274), .B(n169), .Z(n309) );
  GTECH_NOT U350 ( .A(n310), .Z(n274) );
  GTECH_NAND2 U351 ( .A(n225), .B(n186), .Z(n310) );
  GTECH_NOT U352 ( .A(n314), .Z(n225) );
  GTECH_AOI222 U353 ( .A(update_period[11]), .B(n159), .C(n315), .D(n316), .E(
        n317), .F(n318), .Z(n314) );
  GTECH_OAI2N2 U354 ( .A(n319), .B(n320), .C(n321), .D(n322), .Z(n317) );
  GTECH_OAI2N2 U355 ( .A(n323), .B(n324), .C(update_period[9]), .D(n160), .Z(
        n322) );
  GTECH_OAI21 U356 ( .A(n160), .B(update_period[9]), .C(n161), .Z(n323) );
  GTECH_OA21 U357 ( .A(n325), .B(n326), .C(n327), .Z(n316) );
  GTECH_AND2 U358 ( .A(n321), .B(n318), .Z(n327) );
  GTECH_NAND2 U359 ( .A(n328), .B(n329), .Z(n318) );
  GTECH_NOT U360 ( .A(update_period[11]), .Z(n329) );
  GTECH_NOT U361 ( .A(n159), .Z(n328) );
  GTECH_NAND2 U362 ( .A(n320), .B(n319), .Z(n321) );
  GTECH_NOT U363 ( .A(n170), .Z(n319) );
  GTECH_NOT U364 ( .A(update_period[10]), .Z(n320) );
  GTECH_OAI21 U365 ( .A(n287), .B(n330), .C(n331), .Z(n326) );
  GTECH_NAND3 U366 ( .A(n332), .B(update_period[6]), .C(n163), .Z(n331) );
  GTECH_OAI21 U367 ( .A(n333), .B(n334), .C(n335), .Z(n325) );
  GTECH_OR3 U368 ( .A(n336), .B(n337), .C(n334), .Z(n335) );
  GTECH_NOR2 U369 ( .A(update_period[4]), .B(n165), .Z(n337) );
  GTECH_AOI222 U370 ( .A(n338), .B(n339), .C(update_period[3]), .D(n166), .E(
        n340), .F(n167), .Z(n336) );
  GTECH_AND2 U371 ( .A(n339), .B(update_period[2]), .Z(n340) );
  GTECH_NAND2 U372 ( .A(n341), .B(n303), .Z(n339) );
  GTECH_NOT U373 ( .A(n166), .Z(n303) );
  GTECH_NOT U374 ( .A(update_period[3]), .Z(n341) );
  GTECH_AND_NOT U375 ( .A(n342), .B(n343), .Z(n338) );
  GTECH_OAI22 U376 ( .A(update_period[1]), .B(n168), .C(update_period[2]), .D(
        n167), .Z(n343) );
  GTECH_OAI2N2 U377 ( .A(n173), .B(n307), .C(update_period[1]), .D(n168), .Z(
        n342) );
  GTECH_NOT U378 ( .A(n169), .Z(n307) );
  GTECH_OAI21 U379 ( .A(update_period[5]), .B(n164), .C(n344), .Z(n334) );
  GTECH_OA21 U380 ( .A(update_period[6]), .B(n163), .C(n332), .Z(n344) );
  GTECH_NAND2 U381 ( .A(n330), .B(n287), .Z(n332) );
  GTECH_NOT U382 ( .A(n162), .Z(n287) );
  GTECH_NOT U383 ( .A(update_period[7]), .Z(n330) );
  GTECH_AOI22 U384 ( .A(n165), .B(update_period[4]), .C(update_period[5]), .D(
        n164), .Z(n333) );
  GTECH_AOI2N2 U385 ( .A(n283), .B(n324), .C(n160), .D(update_period[9]), .Z(
        n315) );
  GTECH_NOT U386 ( .A(update_period[8]), .Z(n324) );
  GTECH_NOT U387 ( .A(n161), .Z(n283) );
  GTECH_AO21 U388 ( .A(period[2]), .B(n210), .C(reset), .Z(N11) );
  GTECH_AO21 U389 ( .A(period[1]), .B(n210), .C(reset), .Z(N10) );
  GTECH_NOT U390 ( .A(n211), .Z(n210) );
  GTECH_NAND2 U391 ( .A(period_load), .B(n186), .Z(n211) );
  GTECH_NOT U392 ( .A(reset), .Z(n186) );
endmodule

