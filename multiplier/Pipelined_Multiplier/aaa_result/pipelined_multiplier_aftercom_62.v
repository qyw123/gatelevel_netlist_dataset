
module pipelined_multiplier ( clk, rstn, data_rdy, mult1, mult2, res_rdy, res
 );
  input [3:0] mult1;
  input [3:0] mult2;
  output [7:0] res;
  input clk, rstn, data_rdy;
  output res_rdy;
  wire   mult1_acc_t_2__7_, mult1_acc_t_2__6_, mult1_acc_t_2__5_,
         mult1_acc_t_2__4_, mult1_acc_t_2__3_, mult1_acc_t_1__5_,
         mult1_acc_t_1__4_, mult1_acc_t_1__3_, mult1_acc_t_1__2_,
         mult1_acc_t_0__3_, mult1_acc_t_0__2_, mult1_acc_t_0__1_, inst0_N37,
         inst0_N36, inst0_N35, inst0_N34, inst0_N30, inst0_N29, inst0_N28,
         inst0_N27, inst0_N26, inst0_N25, inst0_N24, mult_stepx_1__inst_N39,
         mult_stepx_1__inst_N38, mult_stepx_1__inst_N37,
         mult_stepx_1__inst_N36, mult_stepx_1__inst_N35,
         mult_stepx_1__inst_N34, mult_stepx_1__inst_N31,
         mult_stepx_1__inst_N30, mult_stepx_1__inst_N29,
         mult_stepx_1__inst_N28, mult_stepx_1__inst_N25,
         mult_stepx_1__inst_N24, mult_stepx_1__inst_N8, mult_stepx_2__inst_N41,
         mult_stepx_2__inst_N40, mult_stepx_2__inst_N39,
         mult_stepx_2__inst_N38, mult_stepx_2__inst_N37,
         mult_stepx_2__inst_N36, mult_stepx_2__inst_N35,
         mult_stepx_2__inst_N34, mult_stepx_2__inst_N32,
         mult_stepx_2__inst_N31, mult_stepx_2__inst_N30,
         mult_stepx_2__inst_N29, mult_stepx_2__inst_N24, mult_stepx_2__inst_N9,
         mult_stepx_2__inst_N8, mult_stepx_3__inst_N41, mult_stepx_3__inst_N40,
         mult_stepx_3__inst_N39, mult_stepx_3__inst_N38,
         mult_stepx_3__inst_N37, mult_stepx_3__inst_N36,
         mult_stepx_3__inst_N35, mult_stepx_3__inst_N34,
         mult_stepx_3__inst_N10, mult_stepx_3__inst_N9, mult_stepx_3__inst_N8,
         n11, n12, n13, n14, n16, n17, n18, n24, n27, n28, n29, n30, n33, n34,
         n35, n36, n40, n45, n46, n47, n48, n49, n51, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191;
  wire   [5:0] mult2_t;
  wire   [11:0] mult1_t;
  wire   [2:0] rdy_t;

  GTECH_FD2S inst0_mult1_o_reg_1_ ( .D(inst0_N27), .TI(1'b0), .TE(1'b0), .CP(
        clk), .CD(rstn), .Q(mult1_t[0]), .QN(n11) );
  GTECH_FD2S inst0_mult1_o_reg_2_ ( .D(inst0_N28), .TI(1'b0), .TE(1'b0), .CP(
        clk), .CD(rstn), .Q(mult1_t[1]), .QN(n12) );
  GTECH_FD2S inst0_mult1_o_reg_3_ ( .D(inst0_N29), .TI(1'b0), .TE(1'b0), .CP(
        clk), .CD(rstn), .Q(mult1_t[2]), .QN(n13) );
  GTECH_FD2S inst0_mult1_o_reg_4_ ( .D(inst0_N30), .TI(1'b0), .TE(1'b0), .CP(
        clk), .CD(rstn), .Q(mult1_t[3]), .QN(n14) );
  GTECH_FD2S inst0_mult1_acco_reg_0_ ( .D(inst0_N34), .TI(1'b0), .TE(1'b0), 
        .CP(clk), .CD(rstn), .Q(mult_stepx_1__inst_N8) );
  GTECH_FD2S inst0_mult1_acco_reg_1_ ( .D(inst0_N35), .TI(1'b0), .TE(1'b0), 
        .CP(clk), .CD(rstn), .Q(mult1_acc_t_0__1_), .QN(n16) );
  GTECH_FD2S inst0_mult1_acco_reg_2_ ( .D(inst0_N36), .TI(1'b0), .TE(1'b0), 
        .CP(clk), .CD(rstn), .Q(mult1_acc_t_0__2_), .QN(n17) );
  GTECH_FD2S inst0_mult1_acco_reg_3_ ( .D(inst0_N37), .TI(1'b0), .TE(1'b0), 
        .CP(clk), .CD(rstn), .Q(mult1_acc_t_0__3_), .QN(n18) );
  GTECH_FD2S inst0_rdy_reg ( .D(data_rdy), .TI(1'b0), .TE(1'b0), .CP(clk), 
        .CD(rstn), .Q(rdy_t[0]) );
  GTECH_FD2S inst0_mult2_shift_reg_0_ ( .D(inst0_N24), .TI(1'b0), .TE(1'b0), 
        .CP(clk), .CD(rstn), .Q(mult2_t[0]), .QN(n24) );
  GTECH_FD2S inst0_mult2_shift_reg_1_ ( .D(inst0_N25), .TI(1'b0), .TE(1'b0), 
        .CP(clk), .CD(rstn), .Q(mult2_t[1]) );
  GTECH_FD2S inst0_mult2_shift_reg_2_ ( .D(inst0_N26), .TI(1'b0), .TE(1'b0), 
        .CP(clk), .CD(rstn), .Q(mult2_t[2]) );
  GTECH_FD2S mult_stepx_1__inst_mult1_o_reg_2_ ( .D(mult_stepx_1__inst_N28), 
        .TI(1'b0), .TE(1'b0), .CP(clk), .CD(rstn), .Q(mult1_t[4]), .QN(n27) );
  GTECH_FD2S mult_stepx_1__inst_mult1_o_reg_3_ ( .D(mult_stepx_1__inst_N29), 
        .TI(1'b0), .TE(1'b0), .CP(clk), .CD(rstn), .Q(mult1_t[5]), .QN(n28) );
  GTECH_FD2S mult_stepx_1__inst_mult1_o_reg_4_ ( .D(mult_stepx_1__inst_N30), 
        .TI(1'b0), .TE(1'b0), .CP(clk), .CD(rstn), .Q(mult1_t[6]), .QN(n29) );
  GTECH_FD2S mult_stepx_1__inst_mult1_o_reg_5_ ( .D(mult_stepx_1__inst_N31), 
        .TI(1'b0), .TE(1'b0), .CP(clk), .CD(rstn), .Q(mult1_t[7]), .QN(n30) );
  GTECH_FD2S mult_stepx_1__inst_mult1_acco_reg_0_ ( .D(mult_stepx_1__inst_N34), 
        .TI(1'b0), .TE(1'b0), .CP(clk), .CD(rstn), .Q(mult_stepx_2__inst_N8)
         );
  GTECH_FD2S mult_stepx_1__inst_mult1_acco_reg_1_ ( .D(mult_stepx_1__inst_N35), 
        .TI(1'b0), .TE(1'b0), .CP(clk), .CD(rstn), .Q(mult_stepx_2__inst_N9)
         );
  GTECH_FD2S mult_stepx_1__inst_mult1_acco_reg_2_ ( .D(mult_stepx_1__inst_N36), 
        .TI(1'b0), .TE(1'b0), .CP(clk), .CD(rstn), .Q(mult1_acc_t_1__2_), .QN(
        n33) );
  GTECH_FD2S mult_stepx_1__inst_mult1_acco_reg_3_ ( .D(mult_stepx_1__inst_N37), 
        .TI(1'b0), .TE(1'b0), .CP(clk), .CD(rstn), .Q(mult1_acc_t_1__3_), .QN(
        n34) );
  GTECH_FD2S mult_stepx_1__inst_mult1_acco_reg_4_ ( .D(mult_stepx_1__inst_N38), 
        .TI(1'b0), .TE(1'b0), .CP(clk), .CD(rstn), .Q(mult1_acc_t_1__4_), .QN(
        n35) );
  GTECH_FD2S mult_stepx_1__inst_mult1_acco_reg_5_ ( .D(mult_stepx_1__inst_N39), 
        .TI(1'b0), .TE(1'b0), .CP(clk), .CD(rstn), .Q(mult1_acc_t_1__5_), .QN(
        n36) );
  GTECH_FD2S mult_stepx_1__inst_rdy_reg ( .D(rdy_t[0]), .TI(1'b0), .TE(1'b0), 
        .CP(clk), .CD(rstn), .Q(rdy_t[1]) );
  GTECH_FD2S mult_stepx_1__inst_mult2_shift_reg_0_ ( .D(mult_stepx_1__inst_N24), .TI(1'b0), .TE(1'b0), .CP(clk), .CD(rstn), .Q(mult2_t[3]), .QN(n40) );
  GTECH_FD2S mult_stepx_1__inst_mult2_shift_reg_1_ ( .D(mult_stepx_1__inst_N25), .TI(1'b0), .TE(1'b0), .CP(clk), .CD(rstn), .Q(mult2_t[4]) );
  GTECH_FD2S mult_stepx_2__inst_mult1_o_reg_3_ ( .D(mult_stepx_2__inst_N29), 
        .TI(1'b0), .TE(1'b0), .CP(clk), .CD(rstn), .Q(mult1_t[8]), .QN(n129)
         );
  GTECH_FD2S mult_stepx_2__inst_mult1_o_reg_4_ ( .D(mult_stepx_2__inst_N30), 
        .TI(1'b0), .TE(1'b0), .CP(clk), .CD(rstn), .Q(mult1_t[9]), .QN(n128)
         );
  GTECH_FD2S mult_stepx_2__inst_mult1_o_reg_5_ ( .D(mult_stepx_2__inst_N31), 
        .TI(1'b0), .TE(1'b0), .CP(clk), .CD(rstn), .Q(mult1_t[10]), .QN(n127)
         );
  GTECH_FD2S mult_stepx_2__inst_mult1_o_reg_6_ ( .D(mult_stepx_2__inst_N32), 
        .TI(1'b0), .TE(1'b0), .CP(clk), .CD(rstn), .Q(mult1_t[11]), .QN(n126)
         );
  GTECH_FD2S mult_stepx_2__inst_mult1_acco_reg_0_ ( .D(mult_stepx_2__inst_N34), 
        .TI(1'b0), .TE(1'b0), .CP(clk), .CD(rstn), .Q(mult_stepx_3__inst_N8)
         );
  GTECH_FD2S mult_stepx_2__inst_mult1_acco_reg_1_ ( .D(mult_stepx_2__inst_N35), 
        .TI(1'b0), .TE(1'b0), .CP(clk), .CD(rstn), .Q(mult_stepx_3__inst_N9)
         );
  GTECH_FD2S mult_stepx_2__inst_mult1_acco_reg_2_ ( .D(mult_stepx_2__inst_N36), 
        .TI(1'b0), .TE(1'b0), .CP(clk), .CD(rstn), .Q(mult_stepx_3__inst_N10)
         );
  GTECH_FD2S mult_stepx_2__inst_mult1_acco_reg_3_ ( .D(mult_stepx_2__inst_N37), 
        .TI(1'b0), .TE(1'b0), .CP(clk), .CD(rstn), .Q(mult1_acc_t_2__3_), .QN(
        n45) );
  GTECH_FD2S mult_stepx_2__inst_mult1_acco_reg_4_ ( .D(mult_stepx_2__inst_N38), 
        .TI(1'b0), .TE(1'b0), .CP(clk), .CD(rstn), .Q(mult1_acc_t_2__4_), .QN(
        n46) );
  GTECH_FD2S mult_stepx_2__inst_mult1_acco_reg_5_ ( .D(mult_stepx_2__inst_N39), 
        .TI(1'b0), .TE(1'b0), .CP(clk), .CD(rstn), .Q(mult1_acc_t_2__5_), .QN(
        n47) );
  GTECH_FD2S mult_stepx_2__inst_mult1_acco_reg_6_ ( .D(mult_stepx_2__inst_N40), 
        .TI(1'b0), .TE(1'b0), .CP(clk), .CD(rstn), .Q(mult1_acc_t_2__6_), .QN(
        n48) );
  GTECH_FD2S mult_stepx_2__inst_mult1_acco_reg_7_ ( .D(mult_stepx_2__inst_N41), 
        .TI(1'b0), .TE(1'b0), .CP(clk), .CD(rstn), .Q(mult1_acc_t_2__7_), .QN(
        n49) );
  GTECH_FD2S mult_stepx_2__inst_rdy_reg ( .D(rdy_t[1]), .TI(1'b0), .TE(1'b0), 
        .CP(clk), .CD(rstn), .Q(rdy_t[2]) );
  GTECH_FD2S mult_stepx_2__inst_mult2_shift_reg_0_ ( .D(mult_stepx_2__inst_N24), .TI(1'b0), .TE(1'b0), .CP(clk), .CD(rstn), .Q(mult2_t[5]), .QN(n51) );
  GTECH_FD2S mult_stepx_3__inst_mult1_acco_reg_0_ ( .D(mult_stepx_3__inst_N34), 
        .TI(1'b0), .TE(1'b0), .CP(clk), .CD(rstn), .Q(res[0]) );
  GTECH_FD2S mult_stepx_3__inst_mult1_acco_reg_1_ ( .D(mult_stepx_3__inst_N35), 
        .TI(1'b0), .TE(1'b0), .CP(clk), .CD(rstn), .Q(res[1]) );
  GTECH_FD2S mult_stepx_3__inst_mult1_acco_reg_2_ ( .D(mult_stepx_3__inst_N36), 
        .TI(1'b0), .TE(1'b0), .CP(clk), .CD(rstn), .Q(res[2]) );
  GTECH_FD2S mult_stepx_3__inst_mult1_acco_reg_3_ ( .D(mult_stepx_3__inst_N37), 
        .TI(1'b0), .TE(1'b0), .CP(clk), .CD(rstn), .Q(res[3]) );
  GTECH_FD2S mult_stepx_3__inst_mult1_acco_reg_4_ ( .D(mult_stepx_3__inst_N38), 
        .TI(1'b0), .TE(1'b0), .CP(clk), .CD(rstn), .Q(res[4]) );
  GTECH_FD2S mult_stepx_3__inst_mult1_acco_reg_5_ ( .D(mult_stepx_3__inst_N39), 
        .TI(1'b0), .TE(1'b0), .CP(clk), .CD(rstn), .Q(res[5]) );
  GTECH_FD2S mult_stepx_3__inst_mult1_acco_reg_6_ ( .D(mult_stepx_3__inst_N40), 
        .TI(1'b0), .TE(1'b0), .CP(clk), .CD(rstn), .Q(res[6]) );
  GTECH_FD2S mult_stepx_3__inst_mult1_acco_reg_7_ ( .D(mult_stepx_3__inst_N41), 
        .TI(1'b0), .TE(1'b0), .CP(clk), .CD(rstn), .Q(res[7]) );
  GTECH_FD2S mult_stepx_3__inst_rdy_reg ( .D(rdy_t[2]), .TI(1'b0), .TE(1'b0), 
        .CP(clk), .CD(rstn), .Q(res_rdy) );
  GTECH_ONE U129 ( .Z(n149) );
  GTECH_OR2 U131 ( .A(n14), .B(n174), .Z(n173) );
  GTECH_NOR2 U132 ( .A(n169), .B(n175), .Z(mult_stepx_1__inst_N38) );
  GTECH_XNOR2 U133 ( .A(n14), .B(n174), .Z(n175) );
  GTECH_OAI22 U134 ( .A(n49), .B(n130), .C(n131), .D(n132), .Z(
        mult_stepx_3__inst_N41) );
  GTECH_XNOR2 U135 ( .A(n49), .B(n133), .Z(n132) );
  GTECH_ADD_ABC U136 ( .A(n134), .B(n48), .C(n126), .COUT(n133) );
  GTECH_OAI22 U137 ( .A(n48), .B(n130), .C(n131), .D(n135), .Z(
        mult_stepx_3__inst_N40) );
  GTECH_XOR3 U138 ( .A(n126), .B(n48), .C(n134), .Z(n135) );
  GTECH_ADD_ABC U139 ( .A(n127), .B(n47), .C(n136), .COUT(n134) );
  GTECH_OAI22 U140 ( .A(n47), .B(n130), .C(n131), .D(n137), .Z(
        mult_stepx_3__inst_N39) );
  GTECH_XOR3 U141 ( .A(n127), .B(n47), .C(n136), .Z(n137) );
  GTECH_ADD_ABC U142 ( .A(n128), .B(n46), .C(n138), .COUT(n136) );
  GTECH_OAI22 U143 ( .A(n46), .B(n130), .C(n139), .D(n131), .Z(
        mult_stepx_3__inst_N38) );
  GTECH_XOR3 U144 ( .A(n128), .B(n46), .C(n138), .Z(n139) );
  GTECH_NAND2 U145 ( .A(n140), .B(n141), .Z(n138) );
  GTECH_NOT U146 ( .A(n129), .Z(n141) );
  GTECH_OAI22 U147 ( .A(n45), .B(n130), .C(n142), .D(n131), .Z(
        mult_stepx_3__inst_N37) );
  GTECH_XOR2 U148 ( .A(n140), .B(n129), .Z(n142) );
  GTECH_NOT U149 ( .A(n45), .Z(n140) );
  GTECH_AND2 U150 ( .A(n143), .B(mult_stepx_3__inst_N10), .Z(
        mult_stepx_3__inst_N36) );
  GTECH_AND2 U151 ( .A(n143), .B(mult_stepx_3__inst_N9), .Z(
        mult_stepx_3__inst_N35) );
  GTECH_AND2 U152 ( .A(n143), .B(mult_stepx_3__inst_N8), .Z(
        mult_stepx_3__inst_N34) );
  GTECH_NAND2 U153 ( .A(n130), .B(n131), .Z(n143) );
  GTECH_NAND2 U154 ( .A(rdy_t[2]), .B(n144), .Z(n131) );
  GTECH_NOT U155 ( .A(n51), .Z(n144) );
  GTECH_NAND2 U156 ( .A(n51), .B(rdy_t[2]), .Z(n130) );
  GTECH_OAI22 U157 ( .A(n149), .B(n145), .C(n146), .D(n147), .Z(
        mult_stepx_2__inst_N41) );
  GTECH_MUX2 U158 ( .A(1'b0), .B(n149), .S(n149), .Z(n147) );
  GTECH_NOT U159 ( .A(n151), .Z(n145) );
  GTECH_MUX2 U160 ( .A(n151), .B(n152), .S(n149), .Z(mult_stepx_2__inst_N40)
         );
  GTECH_AND_NOT U161 ( .A(n150), .B(n146), .Z(n152) );
  GTECH_OAI21 U162 ( .A(n146), .B(n150), .C(n153), .Z(n151) );
  GTECH_NOT U163 ( .A(n154), .Z(n150) );
  GTECH_ADD_ABC U164 ( .A(n36), .B(n30), .C(n155), .COUT(n154) );
  GTECH_OAI22 U165 ( .A(n36), .B(n153), .C(n146), .D(n156), .Z(
        mult_stepx_2__inst_N39) );
  GTECH_XOR3 U166 ( .A(n36), .B(n30), .C(n155), .Z(n156) );
  GTECH_ADD_ABC U167 ( .A(n35), .B(n29), .C(n157), .COUT(n155) );
  GTECH_OAI22 U168 ( .A(n35), .B(n153), .C(n146), .D(n158), .Z(
        mult_stepx_2__inst_N38) );
  GTECH_XOR3 U169 ( .A(n35), .B(n29), .C(n157), .Z(n158) );
  GTECH_ADD_ABC U170 ( .A(n34), .B(n28), .C(n159), .COUT(n157) );
  GTECH_OAI22 U171 ( .A(n34), .B(n153), .C(n160), .D(n146), .Z(
        mult_stepx_2__inst_N37) );
  GTECH_XOR3 U172 ( .A(n34), .B(n28), .C(n159), .Z(n160) );
  GTECH_NAND2 U173 ( .A(n161), .B(n162), .Z(n159) );
  GTECH_NOT U174 ( .A(n33), .Z(n162) );
  GTECH_OAI22 U175 ( .A(n33), .B(n153), .C(n163), .D(n146), .Z(
        mult_stepx_2__inst_N36) );
  GTECH_XOR2 U176 ( .A(n161), .B(n33), .Z(n163) );
  GTECH_AND2 U177 ( .A(n164), .B(mult_stepx_2__inst_N9), .Z(
        mult_stepx_2__inst_N35) );
  GTECH_AND2 U178 ( .A(n164), .B(mult_stepx_2__inst_N8), .Z(
        mult_stepx_2__inst_N34) );
  GTECH_NAND2 U179 ( .A(n153), .B(n146), .Z(n164) );
  GTECH_NAND2 U180 ( .A(rdy_t[1]), .B(n165), .Z(n146) );
  GTECH_NOT U181 ( .A(n40), .Z(n165) );
  GTECH_NAND2 U182 ( .A(n40), .B(rdy_t[1]), .Z(n153) );
  GTECH_AND2 U183 ( .A(rdy_t[1]), .B(n166), .Z(mult_stepx_2__inst_N32) );
  GTECH_NOT U184 ( .A(n30), .Z(n166) );
  GTECH_AND2 U185 ( .A(rdy_t[1]), .B(n167), .Z(mult_stepx_2__inst_N31) );
  GTECH_NOT U186 ( .A(n29), .Z(n167) );
  GTECH_AND2 U187 ( .A(rdy_t[1]), .B(n168), .Z(mult_stepx_2__inst_N30) );
  GTECH_NOT U188 ( .A(n28), .Z(n168) );
  GTECH_AND2 U189 ( .A(rdy_t[1]), .B(n161), .Z(mult_stepx_2__inst_N29) );
  GTECH_NOT U190 ( .A(n27), .Z(n161) );
  GTECH_AND2 U191 ( .A(rdy_t[1]), .B(mult2_t[4]), .Z(mult_stepx_2__inst_N24)
         );
  GTECH_AND2 U192 ( .A(n171), .B(n170), .Z(mult_stepx_1__inst_N39) );
  GTECH_NOT U193 ( .A(n173), .Z(n170) );
  GTECH_ADD_ABC U194 ( .A(n18), .B(n13), .C(n176), .COUT(n174) );
  GTECH_OAI22 U195 ( .A(n18), .B(n172), .C(n169), .D(n177), .Z(
        mult_stepx_1__inst_N37) );
  GTECH_XOR3 U196 ( .A(n18), .B(n13), .C(n176), .Z(n177) );
  GTECH_ADD_ABC U197 ( .A(n17), .B(n12), .C(n178), .COUT(n176) );
  GTECH_OAI22 U198 ( .A(n17), .B(n172), .C(n179), .D(n169), .Z(
        mult_stepx_1__inst_N36) );
  GTECH_XOR3 U199 ( .A(n17), .B(n12), .C(n178), .Z(n179) );
  GTECH_NAND2 U200 ( .A(n180), .B(n181), .Z(n178) );
  GTECH_NOT U201 ( .A(n16), .Z(n181) );
  GTECH_OAI22 U202 ( .A(n16), .B(n172), .C(n182), .D(n169), .Z(
        mult_stepx_1__inst_N35) );
  GTECH_XOR2 U203 ( .A(n180), .B(n16), .Z(n182) );
  GTECH_OA21 U204 ( .A(n171), .B(n183), .C(mult_stepx_1__inst_N8), .Z(
        mult_stepx_1__inst_N34) );
  GTECH_NOT U205 ( .A(n172), .Z(n183) );
  GTECH_NAND2 U206 ( .A(n24), .B(rdy_t[0]), .Z(n172) );
  GTECH_NOT U207 ( .A(n169), .Z(n171) );
  GTECH_NAND2 U208 ( .A(rdy_t[0]), .B(n184), .Z(n169) );
  GTECH_NOT U209 ( .A(n24), .Z(n184) );
  GTECH_AND2 U210 ( .A(rdy_t[0]), .B(n185), .Z(mult_stepx_1__inst_N31) );
  GTECH_NOT U211 ( .A(n14), .Z(n185) );
  GTECH_AND2 U212 ( .A(rdy_t[0]), .B(n186), .Z(mult_stepx_1__inst_N30) );
  GTECH_NOT U213 ( .A(n13), .Z(n186) );
  GTECH_AND2 U214 ( .A(rdy_t[0]), .B(n187), .Z(mult_stepx_1__inst_N29) );
  GTECH_NOT U215 ( .A(n12), .Z(n187) );
  GTECH_AND2 U216 ( .A(rdy_t[0]), .B(n180), .Z(mult_stepx_1__inst_N28) );
  GTECH_NOT U217 ( .A(n11), .Z(n180) );
  GTECH_AND2 U218 ( .A(rdy_t[0]), .B(mult2_t[2]), .Z(mult_stepx_1__inst_N25)
         );
  GTECH_AND2 U219 ( .A(rdy_t[0]), .B(mult2_t[1]), .Z(mult_stepx_1__inst_N24)
         );
  GTECH_AND2 U220 ( .A(mult2[0]), .B(inst0_N30), .Z(inst0_N37) );
  GTECH_AND2 U221 ( .A(inst0_N29), .B(mult2[0]), .Z(inst0_N36) );
  GTECH_AND2 U222 ( .A(inst0_N28), .B(mult2[0]), .Z(inst0_N35) );
  GTECH_AND2 U223 ( .A(inst0_N27), .B(mult2[0]), .Z(inst0_N34) );
  GTECH_NOT U224 ( .A(n188), .Z(inst0_N30) );
  GTECH_NAND2 U225 ( .A(mult1[3]), .B(data_rdy), .Z(n188) );
  GTECH_NOT U226 ( .A(n189), .Z(inst0_N29) );
  GTECH_NAND2 U227 ( .A(mult1[2]), .B(data_rdy), .Z(n189) );
  GTECH_NOT U228 ( .A(n190), .Z(inst0_N28) );
  GTECH_NAND2 U229 ( .A(mult1[1]), .B(data_rdy), .Z(n190) );
  GTECH_NOT U230 ( .A(n191), .Z(inst0_N27) );
  GTECH_NAND2 U231 ( .A(mult1[0]), .B(data_rdy), .Z(n191) );
  GTECH_AND2 U232 ( .A(mult2[3]), .B(data_rdy), .Z(inst0_N26) );
  GTECH_AND2 U233 ( .A(mult2[2]), .B(data_rdy), .Z(inst0_N25) );
  GTECH_AND2 U234 ( .A(mult2[1]), .B(data_rdy), .Z(inst0_N24) );
endmodule

