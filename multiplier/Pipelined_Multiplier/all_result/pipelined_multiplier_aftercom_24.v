
module pipelined_multiplier ( clk, rstn, data_rdy, mult1, mult2, res_rdy, res
 );
  input [3:0] mult1;
  input [3:0] mult2;
  output [7:0] res;
  input clk, rstn, data_rdy;
  output res_rdy;
  wire   n1, n2, n3, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n67,
         n68, n69, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n133, n134, n135, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n199,
         n200, n201, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234,
         n235, n236, n237, n238, n239, n240, n241, n242, n291, n290, n289,
         n288, n287, n286, n285, n284, n283, n282, n281, n280, n279, n278,
         n277, n276, n275, n274, n273, n272, n271, n270, n269, n268, n311,
         n310, n309, n308, n307, n306, n305, n304, n303, n302, n301, n300,
         n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n326,
         n327, n328, n329, n330, n331, n332, n333, n334, n335, n336, n337,
         n338, n339;
  wire   [267:265] n;

  GTECH_AND2 inst0_C137 ( .A(n207), .B(mult2[0]) );
  GTECH_NOT inst0_I_2 ( .A(mult2[0]), .Z(n208) );
  GTECH_AND2 inst0_C135 ( .A(n205), .B(data_rdy), .Z(n207) );
  GTECH_NOT inst0_I_1 ( .A(data_rdy), .Z(n206) );
  GTECH_BUF inst0_B_3 ( .A(rstn), .Z(n205) );
  GTECH_NOT inst0_I_0 ( .A(rstn), .Z(n204) );
  SELECT_OP inst0_C129 ( .DATA1({n224, n223, n222, n221, n220, n219, n218, 
        n217}), .DATA2({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .CONTROL1(n200), .CONTROL2(n201), .Z({n242, n241, n240, n239, n238, 
        n237, n236, n235}) );
  SELECT_OP inst0_C128 ( .DATA1({1'b0, 1'b0, 1'b0, mult1}), .DATA2({1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CONTROL1(n200), .CONTROL2(n201), .Z({
        n234, n233, n232, n231, n230, n229, n228}) );
  GTECH_BUF inst0_B_2 ( .A(n206), .Z(n201) );
  GTECH_BUF inst0_B_1 ( .A(data_rdy), .Z(n200) );
  SELECT_OP inst0_C127 ( .DATA1(mult2[3:1]), .DATA2({1'b0, 1'b0, 1'b0}), 
        .CONTROL1(n200), .CONTROL2(n201), .Z({n227, n226, n225}) );
  GTECH_BUF inst0_B_0 ( .A(mult2[0]), .Z(n199) );
  SELECT_OP inst0_C126 ( .DATA1({n216, n215, n214, n213, n212, n211, n210, 
        n209}), .DATA2({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .CONTROL1(n199), .CONTROL2(n208), .Z({n224, n223, n222, n221, n220, 
        n219, n218, n217}) );
  ADD_UNS_OP inst0_add_90 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B({1'b0, 1'b0, 1'b0, 1'b0, mult1}), .Z({n216, n215, n214, n213, n212, n211, 
        n210, n209}) );
  \**SEQGEN**  inst0_mult1_o_reg_0_ ( .clear(n204), .preset(1'b0), 
        .next_state(1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(n268), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  inst0_mult1_o_reg_1_ ( .clear(n204), .preset(1'b0), 
        .next_state(n228), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(n269), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  inst0_mult1_o_reg_2_ ( .clear(n204), .preset(1'b0), 
        .next_state(n229), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(n270), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  inst0_mult1_o_reg_3_ ( .clear(n204), .preset(1'b0), 
        .next_state(n230), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(n271), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  inst0_mult1_o_reg_4_ ( .clear(n204), .preset(1'b0), 
        .next_state(n231), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(n272), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  inst0_mult1_o_reg_5_ ( .clear(n204), .preset(1'b0), 
        .next_state(n232), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(n273), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  inst0_mult1_o_reg_6_ ( .clear(n204), .preset(1'b0), 
        .next_state(n233), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(n274), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  inst0_mult1_o_reg_7_ ( .clear(n204), .preset(1'b0), 
        .next_state(n234), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(n275), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  inst0_mult1_acco_reg_0_ ( .clear(n204), .preset(1'b0), 
        .next_state(n235), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(n316), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  inst0_mult1_acco_reg_1_ ( .clear(n204), .preset(1'b0), 
        .next_state(n236), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(n317), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  inst0_mult1_acco_reg_2_ ( .clear(n204), .preset(1'b0), 
        .next_state(n237), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(n318), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  inst0_mult1_acco_reg_3_ ( .clear(n204), .preset(1'b0), 
        .next_state(n238), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(n319), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  inst0_mult1_acco_reg_4_ ( .clear(n204), .preset(1'b0), 
        .next_state(n239), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(n320), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  inst0_mult1_acco_reg_5_ ( .clear(n204), .preset(1'b0), 
        .next_state(n240), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(n321), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  inst0_mult1_acco_reg_6_ ( .clear(n204), .preset(1'b0), 
        .next_state(n241), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(n322), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  inst0_mult1_acco_reg_7_ ( .clear(n204), .preset(1'b0), 
        .next_state(n242), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(n323), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  inst0_rdy_reg ( .clear(n204), .preset(1'b0), .next_state(
        data_rdy), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(n[265]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  inst0_mult2_shift_reg_0_ ( .clear(n204), .preset(1'b0), 
        .next_state(n225), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(n300), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  inst0_mult2_shift_reg_1_ ( .clear(n204), .preset(1'b0), 
        .next_state(n226), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(n301), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  inst0_mult2_shift_reg_2_ ( .clear(n204), .preset(1'b0), 
        .next_state(n227), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(n302), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  inst0_mult2_shift_reg_3_ ( .clear(n204), .preset(1'b0), 
        .next_state(1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(n303), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  GTECH_AND2 mult_stepx_1__inst_C137 ( .A(n141), .B(n300) );
  GTECH_NOT mult_stepx_1__inst_I_2 ( .A(n300), .Z(n142) );
  GTECH_AND2 mult_stepx_1__inst_C135 ( .A(n139), .B(n[265]), .Z(n141) );
  GTECH_NOT mult_stepx_1__inst_I_1 ( .A(n[265]), .Z(n140) );
  GTECH_BUF mult_stepx_1__inst_B_3 ( .A(rstn), .Z(n139) );
  GTECH_NOT mult_stepx_1__inst_I_0 ( .A(rstn), .Z(n138) );
  SELECT_OP mult_stepx_1__inst_C129 ( .DATA1({n158, n157, n156, n155, n154, 
        n153, n152, n151}), .DATA2({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .CONTROL1(n134), .CONTROL2(n135), .Z({n176, n175, n174, n173, 
        n172, n171, n170, n169}) );
  SELECT_OP mult_stepx_1__inst_C128 ( .DATA1({n274, n273, n272, n271, n270, 
        n269, n268}), .DATA2({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .CONTROL1(n134), .CONTROL2(n135), .Z({n168, n167, n166, n165, n164, 
        n163, n162}) );
  GTECH_BUF mult_stepx_1__inst_B_2 ( .A(n140), .Z(n135) );
  GTECH_BUF mult_stepx_1__inst_B_1 ( .A(n[265]), .Z(n134) );
  SELECT_OP mult_stepx_1__inst_C127 ( .DATA1({n303, n302, n301}), .DATA2({1'b0, 
        1'b0, 1'b0}), .CONTROL1(n134), .CONTROL2(n135), .Z({n161, n160, n159})
         );
  GTECH_BUF mult_stepx_1__inst_B_0 ( .A(n300), .Z(n133) );
  SELECT_OP mult_stepx_1__inst_C126 ( .DATA1({n150, n149, n148, n147, n146, 
        n145, n144, n143}), .DATA2({n323, n322, n321, n320, n319, n318, n317, 
        n316}), .CONTROL1(n133), .CONTROL2(n142), .Z({n158, n157, n156, n155, 
        n154, n153, n152, n151}) );
  ADD_UNS_OP mult_stepx_1__inst_add_90 ( .A({n323, n322, n321, n320, n319, 
        n318, n317, n316}), .B({n275, n274, n273, n272, n271, n270, n269, n268}), .Z({n150, n149, n148, n147, n146, n145, n144, n143}) );
  \**SEQGEN**  mult_stepx_1__inst_mult1_o_reg_0_ ( .clear(n138), .preset(1'b0), 
        .next_state(1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(n276), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  mult_stepx_1__inst_mult1_o_reg_1_ ( .clear(n138), .preset(1'b0), 
        .next_state(n162), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(n277), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  mult_stepx_1__inst_mult1_o_reg_2_ ( .clear(n138), .preset(1'b0), 
        .next_state(n163), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(n278), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  mult_stepx_1__inst_mult1_o_reg_3_ ( .clear(n138), .preset(1'b0), 
        .next_state(n164), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(n279), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  mult_stepx_1__inst_mult1_o_reg_4_ ( .clear(n138), .preset(1'b0), 
        .next_state(n165), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(n280), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  mult_stepx_1__inst_mult1_o_reg_5_ ( .clear(n138), .preset(1'b0), 
        .next_state(n166), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(n281), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  mult_stepx_1__inst_mult1_o_reg_6_ ( .clear(n138), .preset(1'b0), 
        .next_state(n167), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(n282), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  mult_stepx_1__inst_mult1_o_reg_7_ ( .clear(n138), .preset(1'b0), 
        .next_state(n168), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(n283), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  mult_stepx_1__inst_mult1_acco_reg_0_ ( .clear(n138), .preset(
        1'b0), .next_state(n169), .clocked_on(clk), .data_in(1'b0), .enable(
        1'b0), .Q(n324), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  mult_stepx_1__inst_mult1_acco_reg_1_ ( .clear(n138), .preset(
        1'b0), .next_state(n170), .clocked_on(clk), .data_in(1'b0), .enable(
        1'b0), .Q(n325), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  mult_stepx_1__inst_mult1_acco_reg_2_ ( .clear(n138), .preset(
        1'b0), .next_state(n171), .clocked_on(clk), .data_in(1'b0), .enable(
        1'b0), .Q(n326), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  mult_stepx_1__inst_mult1_acco_reg_3_ ( .clear(n138), .preset(
        1'b0), .next_state(n172), .clocked_on(clk), .data_in(1'b0), .enable(
        1'b0), .Q(n327), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  mult_stepx_1__inst_mult1_acco_reg_4_ ( .clear(n138), .preset(
        1'b0), .next_state(n173), .clocked_on(clk), .data_in(1'b0), .enable(
        1'b0), .Q(n328), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  mult_stepx_1__inst_mult1_acco_reg_5_ ( .clear(n138), .preset(
        1'b0), .next_state(n174), .clocked_on(clk), .data_in(1'b0), .enable(
        1'b0), .Q(n329), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  mult_stepx_1__inst_mult1_acco_reg_6_ ( .clear(n138), .preset(
        1'b0), .next_state(n175), .clocked_on(clk), .data_in(1'b0), .enable(
        1'b0), .Q(n330), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  mult_stepx_1__inst_mult1_acco_reg_7_ ( .clear(n138), .preset(
        1'b0), .next_state(n176), .clocked_on(clk), .data_in(1'b0), .enable(
        1'b0), .Q(n331), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  mult_stepx_1__inst_rdy_reg ( .clear(n138), .preset(1'b0), 
        .next_state(n[265]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(n[266]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  mult_stepx_1__inst_mult2_shift_reg_0_ ( .clear(n138), .preset(
        1'b0), .next_state(n159), .clocked_on(clk), .data_in(1'b0), .enable(
        1'b0), .Q(n304), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  mult_stepx_1__inst_mult2_shift_reg_1_ ( .clear(n138), .preset(
        1'b0), .next_state(n160), .clocked_on(clk), .data_in(1'b0), .enable(
        1'b0), .Q(n305), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  mult_stepx_1__inst_mult2_shift_reg_2_ ( .clear(n138), .preset(
        1'b0), .next_state(n161), .clocked_on(clk), .data_in(1'b0), .enable(
        1'b0), .Q(n306), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  mult_stepx_1__inst_mult2_shift_reg_3_ ( .clear(n138), .preset(
        1'b0), .next_state(1'b0), .clocked_on(clk), .data_in(1'b0), .enable(
        1'b0), .Q(n307), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  GTECH_AND2 mult_stepx_2__inst_C137 ( .A(n75), .B(n304) );
  GTECH_NOT mult_stepx_2__inst_I_2 ( .A(n304), .Z(n76) );
  GTECH_AND2 mult_stepx_2__inst_C135 ( .A(n73), .B(n[266]), .Z(n75) );
  GTECH_NOT mult_stepx_2__inst_I_1 ( .A(n[266]), .Z(n74) );
  GTECH_BUF mult_stepx_2__inst_B_3 ( .A(rstn), .Z(n73) );
  GTECH_NOT mult_stepx_2__inst_I_0 ( .A(rstn), .Z(n72) );
  SELECT_OP mult_stepx_2__inst_C129 ( .DATA1({n92, n91, n90, n89, n88, n87, 
        n86, n85}), .DATA2({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .CONTROL1(n68), .CONTROL2(n69), .Z({n110, n109, n108, n107, n106, n105, 
        n104, n103}) );
  SELECT_OP mult_stepx_2__inst_C128 ( .DATA1({n282, n281, n280, n279, n278, 
        n277, n276}), .DATA2({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .CONTROL1(n68), .CONTROL2(n69), .Z({n102, n101, n100, n99, n98, n97, 
        n96}) );
  GTECH_BUF mult_stepx_2__inst_B_2 ( .A(n74), .Z(n69) );
  GTECH_BUF mult_stepx_2__inst_B_1 ( .A(n[266]), .Z(n68) );
  SELECT_OP mult_stepx_2__inst_C127 ( .DATA1({n307, n306, n305}), .DATA2({1'b0, 
        1'b0, 1'b0}), .CONTROL1(n68), .CONTROL2(n69), .Z({n95, n94, n93}) );
  GTECH_BUF mult_stepx_2__inst_B_0 ( .A(n304), .Z(n67) );
  SELECT_OP mult_stepx_2__inst_C126 ( .DATA1({n84, n83, n82, n81, n80, n79, 
        n78, n77}), .DATA2({n331, n330, n329, n328, n327, n326, n325, n324}), 
        .CONTROL1(n67), .CONTROL2(n76), .Z({n92, n91, n90, n89, n88, n87, n86, 
        n85}) );
  ADD_UNS_OP mult_stepx_2__inst_add_90 ( .A({n331, n330, n329, n328, n327, 
        n326, n325, n324}), .B({n283, n282, n281, n280, n279, n278, n277, n276}), .Z({n84, n83, n82, n81, n80, n79, n78, n77}) );
  \**SEQGEN**  mult_stepx_2__inst_mult1_o_reg_0_ ( .clear(n72), .preset(1'b0), 
        .next_state(1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(n284), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  mult_stepx_2__inst_mult1_o_reg_1_ ( .clear(n72), .preset(1'b0), 
        .next_state(n96), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        n285), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  mult_stepx_2__inst_mult1_o_reg_2_ ( .clear(n72), .preset(1'b0), 
        .next_state(n97), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        n286), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  mult_stepx_2__inst_mult1_o_reg_3_ ( .clear(n72), .preset(1'b0), 
        .next_state(n98), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        n287), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  mult_stepx_2__inst_mult1_o_reg_4_ ( .clear(n72), .preset(1'b0), 
        .next_state(n99), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        n288), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  mult_stepx_2__inst_mult1_o_reg_5_ ( .clear(n72), .preset(1'b0), 
        .next_state(n100), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(n289), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  mult_stepx_2__inst_mult1_o_reg_6_ ( .clear(n72), .preset(1'b0), 
        .next_state(n101), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(n290), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  mult_stepx_2__inst_mult1_o_reg_7_ ( .clear(n72), .preset(1'b0), 
        .next_state(n102), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(n291), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  mult_stepx_2__inst_mult1_acco_reg_0_ ( .clear(n72), .preset(
        1'b0), .next_state(n103), .clocked_on(clk), .data_in(1'b0), .enable(
        1'b0), .Q(n332), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  mult_stepx_2__inst_mult1_acco_reg_1_ ( .clear(n72), .preset(
        1'b0), .next_state(n104), .clocked_on(clk), .data_in(1'b0), .enable(
        1'b0), .Q(n333), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  mult_stepx_2__inst_mult1_acco_reg_2_ ( .clear(n72), .preset(
        1'b0), .next_state(n105), .clocked_on(clk), .data_in(1'b0), .enable(
        1'b0), .Q(n334), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  mult_stepx_2__inst_mult1_acco_reg_3_ ( .clear(n72), .preset(
        1'b0), .next_state(n106), .clocked_on(clk), .data_in(1'b0), .enable(
        1'b0), .Q(n335), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  mult_stepx_2__inst_mult1_acco_reg_4_ ( .clear(n72), .preset(
        1'b0), .next_state(n107), .clocked_on(clk), .data_in(1'b0), .enable(
        1'b0), .Q(n336), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  mult_stepx_2__inst_mult1_acco_reg_5_ ( .clear(n72), .preset(
        1'b0), .next_state(n108), .clocked_on(clk), .data_in(1'b0), .enable(
        1'b0), .Q(n337), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  mult_stepx_2__inst_mult1_acco_reg_6_ ( .clear(n72), .preset(
        1'b0), .next_state(n109), .clocked_on(clk), .data_in(1'b0), .enable(
        1'b0), .Q(n338), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  mult_stepx_2__inst_mult1_acco_reg_7_ ( .clear(n72), .preset(
        1'b0), .next_state(n110), .clocked_on(clk), .data_in(1'b0), .enable(
        1'b0), .Q(n339), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  mult_stepx_2__inst_rdy_reg ( .clear(n72), .preset(1'b0), 
        .next_state(n[266]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(n[267]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  mult_stepx_2__inst_mult2_shift_reg_0_ ( .clear(n72), .preset(
        1'b0), .next_state(n93), .clocked_on(clk), .data_in(1'b0), .enable(
        1'b0), .Q(n308), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  mult_stepx_2__inst_mult2_shift_reg_1_ ( .clear(n72), .preset(
        1'b0), .next_state(n94), .clocked_on(clk), .data_in(1'b0), .enable(
        1'b0), .Q(n309), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  mult_stepx_2__inst_mult2_shift_reg_2_ ( .clear(n72), .preset(
        1'b0), .next_state(n95), .clocked_on(clk), .data_in(1'b0), .enable(
        1'b0), .Q(n310), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  mult_stepx_2__inst_mult2_shift_reg_3_ ( .clear(n72), .preset(
        1'b0), .next_state(1'b0), .clocked_on(clk), .data_in(1'b0), .enable(
        1'b0), .Q(n311), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  GTECH_AND2 mult_stepx_3__inst_C137 ( .A(n9), .B(n308) );
  GTECH_NOT mult_stepx_3__inst_I_2 ( .A(n308), .Z(n10) );
  GTECH_AND2 mult_stepx_3__inst_C135 ( .A(n7), .B(n[267]), .Z(n9) );
  GTECH_NOT mult_stepx_3__inst_I_1 ( .A(n[267]), .Z(n8) );
  GTECH_BUF mult_stepx_3__inst_B_3 ( .A(rstn), .Z(n7) );
  GTECH_NOT mult_stepx_3__inst_I_0 ( .A(rstn), .Z(n6) );
  SELECT_OP mult_stepx_3__inst_C129 ( .DATA1({n26, n25, n24, n23, n22, n21, 
        n20, n19}), .DATA2({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .CONTROL1(n2), .CONTROL2(n3), .Z({n44, n43, n42, n41, n40, n39, n38, 
        n37}) );
  SELECT_OP mult_stepx_3__inst_C128 ( .DATA1({n290, n289, n288, n287, n286, 
        n285, n284}), .DATA2({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .CONTROL1(n2), .CONTROL2(n3), .Z({n36, n35, n34, n33, n32, n31, n30})
         );
  GTECH_BUF mult_stepx_3__inst_B_2 ( .A(n8), .Z(n3) );
  GTECH_BUF mult_stepx_3__inst_B_1 ( .A(n[267]), .Z(n2) );
  SELECT_OP mult_stepx_3__inst_C127 ( .DATA1({n311, n310, n309}), .DATA2({1'b0, 
        1'b0, 1'b0}), .CONTROL1(n2), .CONTROL2(n3), .Z({n29, n28, n27}) );
  GTECH_BUF mult_stepx_3__inst_B_0 ( .A(n308), .Z(n1) );
  SELECT_OP mult_stepx_3__inst_C126 ( .DATA1({n18, n17, n16, n15, n14, n13, 
        n12, n11}), .DATA2({n339, n338, n337, n336, n335, n334, n333, n332}), 
        .CONTROL1(n1), .CONTROL2(n10), .Z({n26, n25, n24, n23, n22, n21, n20, 
        n19}) );
  ADD_UNS_OP mult_stepx_3__inst_add_90 ( .A({n339, n338, n337, n336, n335, 
        n334, n333, n332}), .B({n291, n290, n289, n288, n287, n286, n285, n284}), .Z({n18, n17, n16, n15, n14, n13, n12, n11}) );
  \**SEQGEN**  mult_stepx_3__inst_mult1_o_reg_0_ ( .clear(n6), .preset(1'b0), 
        .next_state(1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  mult_stepx_3__inst_mult1_o_reg_1_ ( .clear(n6), .preset(1'b0), 
        .next_state(n30), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  mult_stepx_3__inst_mult1_o_reg_2_ ( .clear(n6), .preset(1'b0), 
        .next_state(n31), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  mult_stepx_3__inst_mult1_o_reg_3_ ( .clear(n6), .preset(1'b0), 
        .next_state(n32), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  mult_stepx_3__inst_mult1_o_reg_4_ ( .clear(n6), .preset(1'b0), 
        .next_state(n33), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  mult_stepx_3__inst_mult1_o_reg_5_ ( .clear(n6), .preset(1'b0), 
        .next_state(n34), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  mult_stepx_3__inst_mult1_o_reg_6_ ( .clear(n6), .preset(1'b0), 
        .next_state(n35), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  mult_stepx_3__inst_mult1_o_reg_7_ ( .clear(n6), .preset(1'b0), 
        .next_state(n36), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  mult_stepx_3__inst_mult1_acco_reg_0_ ( .clear(n6), .preset(1'b0), .next_state(n37), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(res[0]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        1'b1) );
  \**SEQGEN**  mult_stepx_3__inst_mult1_acco_reg_1_ ( .clear(n6), .preset(1'b0), .next_state(n38), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(res[1]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        1'b1) );
  \**SEQGEN**  mult_stepx_3__inst_mult1_acco_reg_2_ ( .clear(n6), .preset(1'b0), .next_state(n39), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(res[2]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        1'b1) );
  \**SEQGEN**  mult_stepx_3__inst_mult1_acco_reg_3_ ( .clear(n6), .preset(1'b0), .next_state(n40), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(res[3]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        1'b1) );
  \**SEQGEN**  mult_stepx_3__inst_mult1_acco_reg_4_ ( .clear(n6), .preset(1'b0), .next_state(n41), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(res[4]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        1'b1) );
  \**SEQGEN**  mult_stepx_3__inst_mult1_acco_reg_5_ ( .clear(n6), .preset(1'b0), .next_state(n42), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(res[5]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        1'b1) );
  \**SEQGEN**  mult_stepx_3__inst_mult1_acco_reg_6_ ( .clear(n6), .preset(1'b0), .next_state(n43), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(res[6]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        1'b1) );
  \**SEQGEN**  mult_stepx_3__inst_mult1_acco_reg_7_ ( .clear(n6), .preset(1'b0), .next_state(n44), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(res[7]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        1'b1) );
  \**SEQGEN**  mult_stepx_3__inst_rdy_reg ( .clear(n6), .preset(1'b0), 
        .next_state(n[267]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(res_rdy), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  mult_stepx_3__inst_mult2_shift_reg_0_ ( .clear(n6), .preset(
        1'b0), .next_state(n27), .clocked_on(clk), .data_in(1'b0), .enable(
        1'b0), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  mult_stepx_3__inst_mult2_shift_reg_1_ ( .clear(n6), .preset(
        1'b0), .next_state(n28), .clocked_on(clk), .data_in(1'b0), .enable(
        1'b0), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  mult_stepx_3__inst_mult2_shift_reg_2_ ( .clear(n6), .preset(
        1'b0), .next_state(n29), .clocked_on(clk), .data_in(1'b0), .enable(
        1'b0), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  mult_stepx_3__inst_mult2_shift_reg_3_ ( .clear(n6), .preset(
        1'b0), .next_state(1'b0), .clocked_on(clk), .data_in(1'b0), .enable(
        1'b0), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
endmodule

