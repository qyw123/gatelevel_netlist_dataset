
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
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201;
  wire   [5:0] mult2_t;
  wire   [11:0] mult1_t;
  wire   [2:0] rdy_t;

  GTECH_FD2S inst0_mult1_o_reg_1_ ( .D(inst0_N27), .TI(n153), .TE(n153), .CP(
        clk), .CD(rstn), .Q(mult1_t[0]), .QN(n11) );
  GTECH_FD2S inst0_mult1_o_reg_2_ ( .D(inst0_N28), .TI(n153), .TE(n153), .CP(
        clk), .CD(rstn), .Q(mult1_t[1]), .QN(n12) );
  GTECH_FD2S inst0_mult1_o_reg_3_ ( .D(inst0_N29), .TI(n153), .TE(n153), .CP(
        clk), .CD(rstn), .Q(mult1_t[2]), .QN(n13) );
  GTECH_FD2S inst0_mult1_o_reg_4_ ( .D(inst0_N30), .TI(n153), .TE(n153), .CP(
        clk), .CD(rstn), .Q(mult1_t[3]), .QN(n14) );
  GTECH_FD2S inst0_mult1_acco_reg_0_ ( .D(inst0_N34), .TI(n153), .TE(n153), 
        .CP(clk), .CD(rstn), .Q(mult_stepx_1__inst_N8) );
  GTECH_FD2S inst0_mult1_acco_reg_1_ ( .D(inst0_N35), .TI(n153), .TE(n153), 
        .CP(clk), .CD(rstn), .Q(mult1_acc_t_0__1_), .QN(n16) );
  GTECH_FD2S inst0_mult1_acco_reg_2_ ( .D(inst0_N36), .TI(n153), .TE(n153), 
        .CP(clk), .CD(rstn), .Q(mult1_acc_t_0__2_), .QN(n17) );
  GTECH_FD2S inst0_mult1_acco_reg_3_ ( .D(inst0_N37), .TI(n153), .TE(n153), 
        .CP(clk), .CD(rstn), .Q(mult1_acc_t_0__3_), .QN(n18) );
  GTECH_FD2S inst0_rdy_reg ( .D(data_rdy), .TI(n153), .TE(n153), .CP(clk), 
        .CD(rstn), .Q(rdy_t[0]) );
  GTECH_FD2S inst0_mult2_shift_reg_0_ ( .D(inst0_N24), .TI(n153), .TE(n153), 
        .CP(clk), .CD(rstn), .Q(mult2_t[0]), .QN(n24) );
  GTECH_FD2S inst0_mult2_shift_reg_1_ ( .D(inst0_N25), .TI(n153), .TE(n153), 
        .CP(clk), .CD(rstn), .Q(mult2_t[1]) );
  GTECH_FD2S inst0_mult2_shift_reg_2_ ( .D(inst0_N26), .TI(n153), .TE(n153), 
        .CP(clk), .CD(rstn), .Q(mult2_t[2]) );
  GTECH_FD2S mult_stepx_1__inst_mult1_o_reg_2_ ( .D(mult_stepx_1__inst_N28), 
        .TI(n153), .TE(n153), .CP(clk), .CD(rstn), .Q(mult1_t[4]), .QN(n27) );
  GTECH_FD2S mult_stepx_1__inst_mult1_o_reg_3_ ( .D(mult_stepx_1__inst_N29), 
        .TI(n153), .TE(n153), .CP(clk), .CD(rstn), .Q(mult1_t[5]), .QN(n28) );
  GTECH_FD2S mult_stepx_1__inst_mult1_o_reg_4_ ( .D(mult_stepx_1__inst_N30), 
        .TI(n153), .TE(n153), .CP(clk), .CD(rstn), .Q(mult1_t[6]), .QN(n29) );
  GTECH_FD2S mult_stepx_1__inst_mult1_o_reg_5_ ( .D(mult_stepx_1__inst_N31), 
        .TI(n153), .TE(n153), .CP(clk), .CD(rstn), .Q(mult1_t[7]), .QN(n30) );
  GTECH_FD2S mult_stepx_1__inst_mult1_acco_reg_0_ ( .D(mult_stepx_1__inst_N34), 
        .TI(n153), .TE(n153), .CP(clk), .CD(rstn), .Q(mult_stepx_2__inst_N8)
         );
  GTECH_FD2S mult_stepx_1__inst_mult1_acco_reg_1_ ( .D(mult_stepx_1__inst_N35), 
        .TI(n153), .TE(n153), .CP(clk), .CD(rstn), .Q(mult_stepx_2__inst_N9)
         );
  GTECH_FD2S mult_stepx_1__inst_mult1_acco_reg_2_ ( .D(mult_stepx_1__inst_N36), 
        .TI(n153), .TE(n153), .CP(clk), .CD(rstn), .Q(mult1_acc_t_1__2_), .QN(
        n33) );
  GTECH_FD2S mult_stepx_1__inst_mult1_acco_reg_3_ ( .D(mult_stepx_1__inst_N37), 
        .TI(n153), .TE(n153), .CP(clk), .CD(rstn), .Q(mult1_acc_t_1__3_), .QN(
        n34) );
  GTECH_FD2S mult_stepx_1__inst_mult1_acco_reg_4_ ( .D(mult_stepx_1__inst_N38), 
        .TI(n153), .TE(n153), .CP(clk), .CD(rstn), .Q(mult1_acc_t_1__4_), .QN(
        n35) );
  GTECH_FD2S mult_stepx_1__inst_mult1_acco_reg_5_ ( .D(mult_stepx_1__inst_N39), 
        .TI(n153), .TE(n153), .CP(clk), .CD(rstn), .Q(mult1_acc_t_1__5_), .QN(
        n36) );
  GTECH_FD2S mult_stepx_1__inst_rdy_reg ( .D(rdy_t[0]), .TI(n153), .TE(n153), 
        .CP(clk), .CD(rstn), .Q(rdy_t[1]) );
  GTECH_FD2S mult_stepx_1__inst_mult2_shift_reg_0_ ( .D(mult_stepx_1__inst_N24), .TI(n153), .TE(n153), .CP(clk), .CD(rstn), .Q(mult2_t[3]), .QN(n40) );
  GTECH_FD2S mult_stepx_1__inst_mult2_shift_reg_1_ ( .D(mult_stepx_1__inst_N25), .TI(n153), .TE(n153), .CP(clk), .CD(rstn), .Q(mult2_t[4]) );
  GTECH_FD2S mult_stepx_2__inst_mult1_o_reg_3_ ( .D(mult_stepx_2__inst_N29), 
        .TI(n153), .TE(n153), .CP(clk), .CD(rstn), .Q(mult1_t[8]), .QN(n129)
         );
  GTECH_FD2S mult_stepx_2__inst_mult1_o_reg_4_ ( .D(mult_stepx_2__inst_N30), 
        .TI(n153), .TE(n153), .CP(clk), .CD(rstn), .Q(mult1_t[9]), .QN(n128)
         );
  GTECH_FD2S mult_stepx_2__inst_mult1_o_reg_5_ ( .D(mult_stepx_2__inst_N31), 
        .TI(n153), .TE(n153), .CP(clk), .CD(rstn), .Q(mult1_t[10]), .QN(n127)
         );
  GTECH_FD2S mult_stepx_2__inst_mult1_o_reg_6_ ( .D(mult_stepx_2__inst_N32), 
        .TI(n153), .TE(n153), .CP(clk), .CD(rstn), .Q(mult1_t[11]), .QN(n126)
         );
  GTECH_FD2S mult_stepx_2__inst_mult1_acco_reg_0_ ( .D(mult_stepx_2__inst_N34), 
        .TI(n153), .TE(n153), .CP(clk), .CD(rstn), .Q(mult_stepx_3__inst_N8)
         );
  GTECH_FD2S mult_stepx_2__inst_mult1_acco_reg_1_ ( .D(mult_stepx_2__inst_N35), 
        .TI(n153), .TE(n153), .CP(clk), .CD(rstn), .Q(mult_stepx_3__inst_N9)
         );
  GTECH_FD2S mult_stepx_2__inst_mult1_acco_reg_2_ ( .D(mult_stepx_2__inst_N36), 
        .TI(n153), .TE(n153), .CP(clk), .CD(rstn), .Q(mult_stepx_3__inst_N10)
         );
  GTECH_FD2S mult_stepx_2__inst_mult1_acco_reg_3_ ( .D(mult_stepx_2__inst_N37), 
        .TI(n153), .TE(n153), .CP(clk), .CD(rstn), .Q(mult1_acc_t_2__3_), .QN(
        n45) );
  GTECH_FD2S mult_stepx_2__inst_mult1_acco_reg_4_ ( .D(mult_stepx_2__inst_N38), 
        .TI(n153), .TE(n153), .CP(clk), .CD(rstn), .Q(mult1_acc_t_2__4_), .QN(
        n46) );
  GTECH_FD2S mult_stepx_2__inst_mult1_acco_reg_5_ ( .D(mult_stepx_2__inst_N39), 
        .TI(n153), .TE(n153), .CP(clk), .CD(rstn), .Q(mult1_acc_t_2__5_), .QN(
        n47) );
  GTECH_FD2S mult_stepx_2__inst_mult1_acco_reg_6_ ( .D(mult_stepx_2__inst_N40), 
        .TI(n153), .TE(n153), .CP(clk), .CD(rstn), .Q(mult1_acc_t_2__6_), .QN(
        n48) );
  GTECH_FD2S mult_stepx_2__inst_mult1_acco_reg_7_ ( .D(mult_stepx_2__inst_N41), 
        .TI(n153), .TE(n153), .CP(clk), .CD(rstn), .Q(mult1_acc_t_2__7_), .QN(
        n49) );
  GTECH_FD2S mult_stepx_2__inst_rdy_reg ( .D(rdy_t[1]), .TI(n153), .TE(n153), 
        .CP(clk), .CD(rstn), .Q(rdy_t[2]) );
  GTECH_FD2S mult_stepx_2__inst_mult2_shift_reg_0_ ( .D(mult_stepx_2__inst_N24), .TI(n153), .TE(n153), .CP(clk), .CD(rstn), .Q(mult2_t[5]), .QN(n51) );
  GTECH_FD2S mult_stepx_3__inst_mult1_acco_reg_0_ ( .D(mult_stepx_3__inst_N34), 
        .TI(n153), .TE(n153), .CP(clk), .CD(rstn), .Q(res[0]) );
  GTECH_FD2S mult_stepx_3__inst_mult1_acco_reg_1_ ( .D(mult_stepx_3__inst_N35), 
        .TI(n153), .TE(n153), .CP(clk), .CD(rstn), .Q(res[1]) );
  GTECH_FD2S mult_stepx_3__inst_mult1_acco_reg_2_ ( .D(mult_stepx_3__inst_N36), 
        .TI(n153), .TE(n153), .CP(clk), .CD(rstn), .Q(res[2]) );
  GTECH_FD2S mult_stepx_3__inst_mult1_acco_reg_3_ ( .D(mult_stepx_3__inst_N37), 
        .TI(n153), .TE(n153), .CP(clk), .CD(rstn), .Q(res[3]) );
  GTECH_FD2S mult_stepx_3__inst_mult1_acco_reg_4_ ( .D(mult_stepx_3__inst_N38), 
        .TI(n153), .TE(n153), .CP(clk), .CD(rstn), .Q(res[4]) );
  GTECH_FD2S mult_stepx_3__inst_mult1_acco_reg_5_ ( .D(mult_stepx_3__inst_N39), 
        .TI(n153), .TE(n153), .CP(clk), .CD(rstn), .Q(res[5]) );
  GTECH_FD2S mult_stepx_3__inst_mult1_acco_reg_6_ ( .D(mult_stepx_3__inst_N40), 
        .TI(n153), .TE(n153), .CP(clk), .CD(rstn), .Q(res[6]) );
  GTECH_FD2S mult_stepx_3__inst_mult1_acco_reg_7_ ( .D(mult_stepx_3__inst_N41), 
        .TI(n153), .TE(n153), .CP(clk), .CD(rstn), .Q(res[7]) );
  GTECH_FD2S mult_stepx_3__inst_rdy_reg ( .D(rdy_t[2]), .TI(n153), .TE(n153), 
        .CP(clk), .CD(rstn), .Q(res_rdy) );
  GTECH_ZERO U129 ( .Z(n153) );
  GTECH_ONE U130 ( .Z(n154) );
  GTECH_OR2 U131 ( .A(n14), .B(n182), .Z(n181) );
  GTECH_NOR2 U132 ( .A(n177), .B(n183), .Z(mult_stepx_1__inst_N38) );
  GTECH_XNOR2 U133 ( .A(n14), .B(n182), .Z(n183) );
  GTECH_OAI2N2 U134 ( .A(n130), .B(n131), .C(n132), .D(n133), .Z(
        mult_stepx_3__inst_N41) );
  GTECH_XOR2 U135 ( .A(n133), .B(n134), .Z(n130) );
  GTECH_ADD_ABC U136 ( .A(n126), .B(n48), .C(n135), .COUT(n134) );
  GTECH_NOT U137 ( .A(n49), .Z(n133) );
  GTECH_OAI2N2 U138 ( .A(n131), .B(n136), .C(n132), .D(n137), .Z(
        mult_stepx_3__inst_N40) );
  GTECH_NOT U139 ( .A(n48), .Z(n137) );
  GTECH_XOR3 U140 ( .A(n126), .B(n48), .C(n135), .Z(n136) );
  GTECH_ADD_ABC U141 ( .A(n127), .B(n47), .C(n138), .COUT(n135) );
  GTECH_OAI2N2 U142 ( .A(n131), .B(n139), .C(n132), .D(n140), .Z(
        mult_stepx_3__inst_N39) );
  GTECH_NOT U143 ( .A(n47), .Z(n140) );
  GTECH_XOR3 U144 ( .A(n127), .B(n47), .C(n138), .Z(n139) );
  GTECH_ADD_ABC U145 ( .A(n128), .B(n46), .C(n141), .COUT(n138) );
  GTECH_OAI2N2 U146 ( .A(n142), .B(n131), .C(n132), .D(n143), .Z(
        mult_stepx_3__inst_N38) );
  GTECH_NOT U147 ( .A(n46), .Z(n143) );
  GTECH_XOR3 U148 ( .A(n128), .B(n46), .C(n141), .Z(n142) );
  GTECH_NAND2 U149 ( .A(n144), .B(n145), .Z(n141) );
  GTECH_NOT U150 ( .A(n129), .Z(n145) );
  GTECH_OAI2N2 U151 ( .A(n146), .B(n131), .C(n132), .D(n144), .Z(
        mult_stepx_3__inst_N37) );
  GTECH_NOT U152 ( .A(n147), .Z(n132) );
  GTECH_XOR2 U153 ( .A(n144), .B(n129), .Z(n146) );
  GTECH_NOT U154 ( .A(n45), .Z(n144) );
  GTECH_AND2 U155 ( .A(n148), .B(mult_stepx_3__inst_N10), .Z(
        mult_stepx_3__inst_N36) );
  GTECH_AND2 U156 ( .A(n148), .B(mult_stepx_3__inst_N9), .Z(
        mult_stepx_3__inst_N35) );
  GTECH_AND2 U157 ( .A(n148), .B(mult_stepx_3__inst_N8), .Z(
        mult_stepx_3__inst_N34) );
  GTECH_NAND2 U158 ( .A(n147), .B(n131), .Z(n148) );
  GTECH_NAND2 U159 ( .A(rdy_t[2]), .B(n149), .Z(n131) );
  GTECH_NOT U160 ( .A(n51), .Z(n149) );
  GTECH_NAND2 U161 ( .A(n51), .B(rdy_t[2]), .Z(n147) );
  GTECH_OAI2N2 U162 ( .A(n150), .B(n151), .C(n152), .D(n153), .Z(
        mult_stepx_2__inst_N41) );
  GTECH_MUX2 U163 ( .A(n153), .B(n154), .S(n154), .Z(n151) );
  GTECH_MUX2 U164 ( .A(n152), .B(n156), .S(n154), .Z(mult_stepx_2__inst_N40)
         );
  GTECH_AND_NOT U165 ( .A(n155), .B(n150), .Z(n156) );
  GTECH_OAI21 U166 ( .A(n150), .B(n155), .C(n157), .Z(n152) );
  GTECH_NOT U167 ( .A(n158), .Z(n155) );
  GTECH_ADD_ABC U168 ( .A(n36), .B(n30), .C(n159), .COUT(n158) );
  GTECH_OAI2N2 U169 ( .A(n150), .B(n160), .C(n161), .D(n162), .Z(
        mult_stepx_2__inst_N39) );
  GTECH_NOT U170 ( .A(n36), .Z(n162) );
  GTECH_XOR3 U171 ( .A(n36), .B(n30), .C(n159), .Z(n160) );
  GTECH_ADD_ABC U172 ( .A(n35), .B(n29), .C(n163), .COUT(n159) );
  GTECH_OAI2N2 U173 ( .A(n150), .B(n164), .C(n161), .D(n165), .Z(
        mult_stepx_2__inst_N38) );
  GTECH_NOT U174 ( .A(n35), .Z(n165) );
  GTECH_XOR3 U175 ( .A(n35), .B(n29), .C(n163), .Z(n164) );
  GTECH_ADD_ABC U176 ( .A(n34), .B(n28), .C(n166), .COUT(n163) );
  GTECH_OAI2N2 U177 ( .A(n167), .B(n150), .C(n161), .D(n168), .Z(
        mult_stepx_2__inst_N37) );
  GTECH_NOT U178 ( .A(n34), .Z(n168) );
  GTECH_XOR3 U179 ( .A(n34), .B(n28), .C(n166), .Z(n167) );
  GTECH_NAND2 U180 ( .A(n169), .B(n170), .Z(n166) );
  GTECH_OAI2N2 U181 ( .A(n171), .B(n150), .C(n161), .D(n170), .Z(
        mult_stepx_2__inst_N36) );
  GTECH_NOT U182 ( .A(n33), .Z(n170) );
  GTECH_NOT U183 ( .A(n157), .Z(n161) );
  GTECH_XOR2 U184 ( .A(n169), .B(n33), .Z(n171) );
  GTECH_AND2 U185 ( .A(n172), .B(mult_stepx_2__inst_N9), .Z(
        mult_stepx_2__inst_N35) );
  GTECH_AND2 U186 ( .A(n172), .B(mult_stepx_2__inst_N8), .Z(
        mult_stepx_2__inst_N34) );
  GTECH_NAND2 U187 ( .A(n157), .B(n150), .Z(n172) );
  GTECH_NAND2 U188 ( .A(rdy_t[1]), .B(n173), .Z(n150) );
  GTECH_NOT U189 ( .A(n40), .Z(n173) );
  GTECH_NAND2 U190 ( .A(n40), .B(rdy_t[1]), .Z(n157) );
  GTECH_AND2 U191 ( .A(rdy_t[1]), .B(n174), .Z(mult_stepx_2__inst_N32) );
  GTECH_NOT U192 ( .A(n30), .Z(n174) );
  GTECH_AND2 U193 ( .A(rdy_t[1]), .B(n175), .Z(mult_stepx_2__inst_N31) );
  GTECH_NOT U194 ( .A(n29), .Z(n175) );
  GTECH_AND2 U195 ( .A(rdy_t[1]), .B(n176), .Z(mult_stepx_2__inst_N30) );
  GTECH_NOT U196 ( .A(n28), .Z(n176) );
  GTECH_AND2 U197 ( .A(rdy_t[1]), .B(n169), .Z(mult_stepx_2__inst_N29) );
  GTECH_NOT U198 ( .A(n27), .Z(n169) );
  GTECH_AND2 U199 ( .A(rdy_t[1]), .B(mult2_t[4]), .Z(mult_stepx_2__inst_N24)
         );
  GTECH_AND2 U200 ( .A(n179), .B(n178), .Z(mult_stepx_1__inst_N39) );
  GTECH_NOT U201 ( .A(n181), .Z(n178) );
  GTECH_ADD_ABC U202 ( .A(n18), .B(n13), .C(n185), .COUT(n182) );
  GTECH_OAI2N2 U203 ( .A(n177), .B(n186), .C(n184), .D(n187), .Z(
        mult_stepx_1__inst_N37) );
  GTECH_NOT U204 ( .A(n18), .Z(n187) );
  GTECH_XOR3 U205 ( .A(n18), .B(n13), .C(n185), .Z(n186) );
  GTECH_ADD_ABC U206 ( .A(n17), .B(n12), .C(n188), .COUT(n185) );
  GTECH_OAI2N2 U207 ( .A(n189), .B(n177), .C(n184), .D(n190), .Z(
        mult_stepx_1__inst_N36) );
  GTECH_NOT U208 ( .A(n17), .Z(n190) );
  GTECH_XOR3 U209 ( .A(n17), .B(n12), .C(n188), .Z(n189) );
  GTECH_NAND2 U210 ( .A(n191), .B(n192), .Z(n188) );
  GTECH_OAI2N2 U211 ( .A(n193), .B(n177), .C(n184), .D(n192), .Z(
        mult_stepx_1__inst_N35) );
  GTECH_NOT U212 ( .A(n16), .Z(n192) );
  GTECH_XOR2 U213 ( .A(n191), .B(n16), .Z(n193) );
  GTECH_OA21 U214 ( .A(n179), .B(n184), .C(mult_stepx_1__inst_N8), .Z(
        mult_stepx_1__inst_N34) );
  GTECH_NOT U215 ( .A(n180), .Z(n184) );
  GTECH_NAND2 U216 ( .A(n24), .B(rdy_t[0]), .Z(n180) );
  GTECH_NOT U217 ( .A(n177), .Z(n179) );
  GTECH_NAND2 U218 ( .A(rdy_t[0]), .B(n194), .Z(n177) );
  GTECH_NOT U219 ( .A(n24), .Z(n194) );
  GTECH_AND2 U220 ( .A(rdy_t[0]), .B(n195), .Z(mult_stepx_1__inst_N31) );
  GTECH_NOT U221 ( .A(n14), .Z(n195) );
  GTECH_AND2 U222 ( .A(rdy_t[0]), .B(n196), .Z(mult_stepx_1__inst_N30) );
  GTECH_NOT U223 ( .A(n13), .Z(n196) );
  GTECH_AND2 U224 ( .A(rdy_t[0]), .B(n197), .Z(mult_stepx_1__inst_N29) );
  GTECH_NOT U225 ( .A(n12), .Z(n197) );
  GTECH_AND2 U226 ( .A(rdy_t[0]), .B(n191), .Z(mult_stepx_1__inst_N28) );
  GTECH_NOT U227 ( .A(n11), .Z(n191) );
  GTECH_AND2 U228 ( .A(rdy_t[0]), .B(mult2_t[2]), .Z(mult_stepx_1__inst_N25)
         );
  GTECH_AND2 U229 ( .A(rdy_t[0]), .B(mult2_t[1]), .Z(mult_stepx_1__inst_N24)
         );
  GTECH_AND2 U230 ( .A(mult2[0]), .B(inst0_N30), .Z(inst0_N37) );
  GTECH_AND2 U231 ( .A(inst0_N29), .B(mult2[0]), .Z(inst0_N36) );
  GTECH_AND2 U232 ( .A(inst0_N28), .B(mult2[0]), .Z(inst0_N35) );
  GTECH_AND2 U233 ( .A(inst0_N27), .B(mult2[0]), .Z(inst0_N34) );
  GTECH_NOT U234 ( .A(n198), .Z(inst0_N30) );
  GTECH_NAND2 U235 ( .A(mult1[3]), .B(data_rdy), .Z(n198) );
  GTECH_NOT U236 ( .A(n199), .Z(inst0_N29) );
  GTECH_NAND2 U237 ( .A(mult1[2]), .B(data_rdy), .Z(n199) );
  GTECH_NOT U238 ( .A(n200), .Z(inst0_N28) );
  GTECH_NAND2 U239 ( .A(mult1[1]), .B(data_rdy), .Z(n200) );
  GTECH_NOT U240 ( .A(n201), .Z(inst0_N27) );
  GTECH_NAND2 U241 ( .A(mult1[0]), .B(data_rdy), .Z(n201) );
  GTECH_AND2 U242 ( .A(mult2[3]), .B(data_rdy), .Z(inst0_N26) );
  GTECH_AND2 U243 ( .A(mult2[2]), .B(data_rdy), .Z(inst0_N25) );
  GTECH_AND2 U244 ( .A(mult2[1]), .B(data_rdy), .Z(inst0_N24) );
endmodule

