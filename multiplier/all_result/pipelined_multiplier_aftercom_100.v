
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
         n185, n186, n187, n188, n189, n190, n191, n192, n193;
  wire   [5:0] mult2_t;
  wire   [11:0] mult1_t;
  wire   [2:0] rdy_t;

  GTECH_FD2S inst0_mult1_o_reg_1_ ( .D(inst0_N27), .TI(n150), .TE(n150), .CP(
        clk), .CD(rstn), .Q(mult1_t[0]), .QN(n11) );
  GTECH_FD2S inst0_mult1_o_reg_2_ ( .D(inst0_N28), .TI(n150), .TE(n150), .CP(
        clk), .CD(rstn), .Q(mult1_t[1]), .QN(n12) );
  GTECH_FD2S inst0_mult1_o_reg_3_ ( .D(inst0_N29), .TI(n150), .TE(n150), .CP(
        clk), .CD(rstn), .Q(mult1_t[2]), .QN(n13) );
  GTECH_FD2S inst0_mult1_o_reg_4_ ( .D(inst0_N30), .TI(n150), .TE(n150), .CP(
        clk), .CD(rstn), .Q(mult1_t[3]), .QN(n14) );
  GTECH_FD2S inst0_mult1_acco_reg_0_ ( .D(inst0_N34), .TI(n150), .TE(n150), 
        .CP(clk), .CD(rstn), .Q(mult_stepx_1__inst_N8) );
  GTECH_FD2S inst0_mult1_acco_reg_1_ ( .D(inst0_N35), .TI(n150), .TE(n150), 
        .CP(clk), .CD(rstn), .Q(mult1_acc_t_0__1_), .QN(n16) );
  GTECH_FD2S inst0_mult1_acco_reg_2_ ( .D(inst0_N36), .TI(n150), .TE(n150), 
        .CP(clk), .CD(rstn), .Q(mult1_acc_t_0__2_), .QN(n17) );
  GTECH_FD2S inst0_mult1_acco_reg_3_ ( .D(inst0_N37), .TI(n150), .TE(n150), 
        .CP(clk), .CD(rstn), .Q(mult1_acc_t_0__3_), .QN(n18) );
  GTECH_FD2S inst0_rdy_reg ( .D(data_rdy), .TI(n150), .TE(n150), .CP(clk), 
        .CD(rstn), .Q(rdy_t[0]) );
  GTECH_FD2S inst0_mult2_shift_reg_0_ ( .D(inst0_N24), .TI(n150), .TE(n150), 
        .CP(clk), .CD(rstn), .Q(mult2_t[0]), .QN(n24) );
  GTECH_FD2S inst0_mult2_shift_reg_1_ ( .D(inst0_N25), .TI(n150), .TE(n150), 
        .CP(clk), .CD(rstn), .Q(mult2_t[1]) );
  GTECH_FD2S inst0_mult2_shift_reg_2_ ( .D(inst0_N26), .TI(n150), .TE(n150), 
        .CP(clk), .CD(rstn), .Q(mult2_t[2]) );
  GTECH_FD2S mult_stepx_1__inst_mult1_o_reg_2_ ( .D(mult_stepx_1__inst_N28), 
        .TI(n150), .TE(n150), .CP(clk), .CD(rstn), .Q(mult1_t[4]), .QN(n27) );
  GTECH_FD2S mult_stepx_1__inst_mult1_o_reg_3_ ( .D(mult_stepx_1__inst_N29), 
        .TI(n150), .TE(n150), .CP(clk), .CD(rstn), .Q(mult1_t[5]), .QN(n28) );
  GTECH_FD2S mult_stepx_1__inst_mult1_o_reg_4_ ( .D(mult_stepx_1__inst_N30), 
        .TI(n150), .TE(n150), .CP(clk), .CD(rstn), .Q(mult1_t[6]), .QN(n29) );
  GTECH_FD2S mult_stepx_1__inst_mult1_o_reg_5_ ( .D(mult_stepx_1__inst_N31), 
        .TI(n150), .TE(n150), .CP(clk), .CD(rstn), .Q(mult1_t[7]), .QN(n30) );
  GTECH_FD2S mult_stepx_1__inst_mult1_acco_reg_0_ ( .D(mult_stepx_1__inst_N34), 
        .TI(n150), .TE(n150), .CP(clk), .CD(rstn), .Q(mult_stepx_2__inst_N8)
         );
  GTECH_FD2S mult_stepx_1__inst_mult1_acco_reg_1_ ( .D(mult_stepx_1__inst_N35), 
        .TI(n150), .TE(n150), .CP(clk), .CD(rstn), .Q(mult_stepx_2__inst_N9)
         );
  GTECH_FD2S mult_stepx_1__inst_mult1_acco_reg_2_ ( .D(mult_stepx_1__inst_N36), 
        .TI(n150), .TE(n150), .CP(clk), .CD(rstn), .Q(mult1_acc_t_1__2_), .QN(
        n33) );
  GTECH_FD2S mult_stepx_1__inst_mult1_acco_reg_3_ ( .D(mult_stepx_1__inst_N37), 
        .TI(n150), .TE(n150), .CP(clk), .CD(rstn), .Q(mult1_acc_t_1__3_), .QN(
        n34) );
  GTECH_FD2S mult_stepx_1__inst_mult1_acco_reg_4_ ( .D(mult_stepx_1__inst_N38), 
        .TI(n150), .TE(n150), .CP(clk), .CD(rstn), .Q(mult1_acc_t_1__4_), .QN(
        n35) );
  GTECH_FD2S mult_stepx_1__inst_mult1_acco_reg_5_ ( .D(mult_stepx_1__inst_N39), 
        .TI(n150), .TE(n150), .CP(clk), .CD(rstn), .Q(mult1_acc_t_1__5_), .QN(
        n36) );
  GTECH_FD2S mult_stepx_1__inst_rdy_reg ( .D(rdy_t[0]), .TI(n150), .TE(n150), 
        .CP(clk), .CD(rstn), .Q(rdy_t[1]) );
  GTECH_FD2S mult_stepx_1__inst_mult2_shift_reg_0_ ( .D(mult_stepx_1__inst_N24), .TI(n150), .TE(n150), .CP(clk), .CD(rstn), .Q(mult2_t[3]), .QN(n40) );
  GTECH_FD2S mult_stepx_1__inst_mult2_shift_reg_1_ ( .D(mult_stepx_1__inst_N25), .TI(n150), .TE(n150), .CP(clk), .CD(rstn), .Q(mult2_t[4]) );
  GTECH_FD2S mult_stepx_2__inst_mult1_o_reg_3_ ( .D(mult_stepx_2__inst_N29), 
        .TI(n150), .TE(n150), .CP(clk), .CD(rstn), .Q(mult1_t[8]), .QN(n130)
         );
  GTECH_FD2S mult_stepx_2__inst_mult1_o_reg_4_ ( .D(mult_stepx_2__inst_N30), 
        .TI(n150), .TE(n150), .CP(clk), .CD(rstn), .Q(mult1_t[9]), .QN(n129)
         );
  GTECH_FD2S mult_stepx_2__inst_mult1_o_reg_5_ ( .D(mult_stepx_2__inst_N31), 
        .TI(n150), .TE(n150), .CP(clk), .CD(rstn), .Q(mult1_t[10]), .QN(n128)
         );
  GTECH_FD2S mult_stepx_2__inst_mult1_o_reg_6_ ( .D(mult_stepx_2__inst_N32), 
        .TI(n150), .TE(n150), .CP(clk), .CD(rstn), .Q(mult1_t[11]), .QN(n127)
         );
  GTECH_FD2S mult_stepx_2__inst_mult1_acco_reg_0_ ( .D(mult_stepx_2__inst_N34), 
        .TI(n150), .TE(n150), .CP(clk), .CD(rstn), .Q(mult_stepx_3__inst_N8)
         );
  GTECH_FD2S mult_stepx_2__inst_mult1_acco_reg_1_ ( .D(mult_stepx_2__inst_N35), 
        .TI(n150), .TE(n150), .CP(clk), .CD(rstn), .Q(mult_stepx_3__inst_N9)
         );
  GTECH_FD2S mult_stepx_2__inst_mult1_acco_reg_2_ ( .D(mult_stepx_2__inst_N36), 
        .TI(n150), .TE(n150), .CP(clk), .CD(rstn), .Q(mult_stepx_3__inst_N10)
         );
  GTECH_FD2S mult_stepx_2__inst_mult1_acco_reg_3_ ( .D(mult_stepx_2__inst_N37), 
        .TI(n150), .TE(n150), .CP(clk), .CD(rstn), .Q(mult1_acc_t_2__3_), .QN(
        n45) );
  GTECH_FD2S mult_stepx_2__inst_mult1_acco_reg_4_ ( .D(mult_stepx_2__inst_N38), 
        .TI(n150), .TE(n150), .CP(clk), .CD(rstn), .Q(mult1_acc_t_2__4_), .QN(
        n46) );
  GTECH_FD2S mult_stepx_2__inst_mult1_acco_reg_5_ ( .D(mult_stepx_2__inst_N39), 
        .TI(n150), .TE(n150), .CP(clk), .CD(rstn), .Q(mult1_acc_t_2__5_), .QN(
        n47) );
  GTECH_FD2S mult_stepx_2__inst_mult1_acco_reg_6_ ( .D(mult_stepx_2__inst_N40), 
        .TI(n150), .TE(n150), .CP(clk), .CD(rstn), .Q(mult1_acc_t_2__6_), .QN(
        n48) );
  GTECH_FD2S mult_stepx_2__inst_mult1_acco_reg_7_ ( .D(mult_stepx_2__inst_N41), 
        .TI(n150), .TE(n150), .CP(clk), .CD(rstn), .Q(mult1_acc_t_2__7_), .QN(
        n49) );
  GTECH_FD2S mult_stepx_2__inst_rdy_reg ( .D(rdy_t[1]), .TI(n150), .TE(n150), 
        .CP(clk), .CD(rstn), .Q(rdy_t[2]) );
  GTECH_FD2S mult_stepx_2__inst_mult2_shift_reg_0_ ( .D(mult_stepx_2__inst_N24), .TI(n150), .TE(n150), .CP(clk), .CD(rstn), .Q(mult2_t[5]), .QN(n51) );
  GTECH_FD2S mult_stepx_3__inst_mult1_acco_reg_0_ ( .D(mult_stepx_3__inst_N34), 
        .TI(n150), .TE(n150), .CP(clk), .CD(rstn), .Q(res[0]) );
  GTECH_FD2S mult_stepx_3__inst_mult1_acco_reg_1_ ( .D(mult_stepx_3__inst_N35), 
        .TI(n150), .TE(n150), .CP(clk), .CD(rstn), .Q(res[1]) );
  GTECH_FD2S mult_stepx_3__inst_mult1_acco_reg_2_ ( .D(mult_stepx_3__inst_N36), 
        .TI(n150), .TE(n150), .CP(clk), .CD(rstn), .Q(res[2]) );
  GTECH_FD2S mult_stepx_3__inst_mult1_acco_reg_3_ ( .D(mult_stepx_3__inst_N37), 
        .TI(n150), .TE(n150), .CP(clk), .CD(rstn), .Q(res[3]) );
  GTECH_FD2S mult_stepx_3__inst_mult1_acco_reg_4_ ( .D(mult_stepx_3__inst_N38), 
        .TI(n150), .TE(n150), .CP(clk), .CD(rstn), .Q(res[4]) );
  GTECH_FD2S mult_stepx_3__inst_mult1_acco_reg_5_ ( .D(mult_stepx_3__inst_N39), 
        .TI(n150), .TE(n150), .CP(clk), .CD(rstn), .Q(res[5]) );
  GTECH_FD2S mult_stepx_3__inst_mult1_acco_reg_6_ ( .D(mult_stepx_3__inst_N40), 
        .TI(n150), .TE(n150), .CP(clk), .CD(rstn), .Q(res[6]) );
  GTECH_FD2S mult_stepx_3__inst_mult1_acco_reg_7_ ( .D(mult_stepx_3__inst_N41), 
        .TI(n150), .TE(n150), .CP(clk), .CD(rstn), .Q(res[7]) );
  GTECH_FD2S mult_stepx_3__inst_rdy_reg ( .D(rdy_t[2]), .TI(n150), .TE(n150), 
        .CP(clk), .CD(rstn), .Q(res_rdy) );
  GTECH_ZERO U129 ( .Z(n150) );
  GTECH_ONE U130 ( .Z(n151) );
  GTECH_OR2 U131 ( .A(n14), .B(n176), .Z(n175) );
  GTECH_NOR2 U132 ( .A(n171), .B(n177), .Z(mult_stepx_1__inst_N38) );
  GTECH_XOR2 U133 ( .A(n126), .B(n14), .Z(n177) );
  GTECH_NOT U134 ( .A(n176), .Z(n126) );
  GTECH_OAI22 U135 ( .A(n49), .B(n131), .C(n132), .D(n133), .Z(
        mult_stepx_3__inst_N41) );
  GTECH_XOR2 U136 ( .A(n134), .B(n135), .Z(n132) );
  GTECH_ADD_ABC U137 ( .A(n127), .B(n48), .C(n136), .COUT(n135) );
  GTECH_NOT U138 ( .A(n49), .Z(n134) );
  GTECH_OAI22 U139 ( .A(n48), .B(n131), .C(n133), .D(n137), .Z(
        mult_stepx_3__inst_N40) );
  GTECH_XOR3 U140 ( .A(n127), .B(n48), .C(n136), .Z(n137) );
  GTECH_ADD_ABC U141 ( .A(n128), .B(n47), .C(n138), .COUT(n136) );
  GTECH_OAI22 U142 ( .A(n47), .B(n131), .C(n133), .D(n139), .Z(
        mult_stepx_3__inst_N39) );
  GTECH_XOR3 U143 ( .A(n128), .B(n47), .C(n138), .Z(n139) );
  GTECH_ADD_ABC U144 ( .A(n129), .B(n46), .C(n140), .COUT(n138) );
  GTECH_OAI22 U145 ( .A(n46), .B(n131), .C(n141), .D(n133), .Z(
        mult_stepx_3__inst_N38) );
  GTECH_XOR3 U146 ( .A(n129), .B(n46), .C(n140), .Z(n141) );
  GTECH_NAND2 U147 ( .A(n142), .B(n143), .Z(n140) );
  GTECH_NOT U148 ( .A(n130), .Z(n143) );
  GTECH_OAI22 U149 ( .A(n45), .B(n131), .C(n144), .D(n133), .Z(
        mult_stepx_3__inst_N37) );
  GTECH_XOR2 U150 ( .A(n142), .B(n130), .Z(n144) );
  GTECH_NOT U151 ( .A(n45), .Z(n142) );
  GTECH_AND2 U152 ( .A(n145), .B(mult_stepx_3__inst_N10), .Z(
        mult_stepx_3__inst_N36) );
  GTECH_AND2 U153 ( .A(n145), .B(mult_stepx_3__inst_N9), .Z(
        mult_stepx_3__inst_N35) );
  GTECH_AND2 U154 ( .A(n145), .B(mult_stepx_3__inst_N8), .Z(
        mult_stepx_3__inst_N34) );
  GTECH_NAND2 U155 ( .A(n131), .B(n133), .Z(n145) );
  GTECH_NAND2 U156 ( .A(rdy_t[2]), .B(n146), .Z(n133) );
  GTECH_NOT U157 ( .A(n51), .Z(n146) );
  GTECH_NAND2 U158 ( .A(n51), .B(rdy_t[2]), .Z(n131) );
  GTECH_OAI22 U159 ( .A(n151), .B(n147), .C(n148), .D(n149), .Z(
        mult_stepx_2__inst_N41) );
  GTECH_MUX2 U160 ( .A(n150), .B(n151), .S(n151), .Z(n149) );
  GTECH_NOT U161 ( .A(n153), .Z(n147) );
  GTECH_MUX2 U162 ( .A(n153), .B(n154), .S(n151), .Z(mult_stepx_2__inst_N40)
         );
  GTECH_AND_NOT U163 ( .A(n152), .B(n148), .Z(n154) );
  GTECH_OAI21 U164 ( .A(n148), .B(n152), .C(n155), .Z(n153) );
  GTECH_NOT U165 ( .A(n156), .Z(n152) );
  GTECH_ADD_ABC U166 ( .A(n36), .B(n30), .C(n157), .COUT(n156) );
  GTECH_OAI22 U167 ( .A(n36), .B(n155), .C(n148), .D(n158), .Z(
        mult_stepx_2__inst_N39) );
  GTECH_XOR3 U168 ( .A(n36), .B(n30), .C(n157), .Z(n158) );
  GTECH_ADD_ABC U169 ( .A(n35), .B(n29), .C(n159), .COUT(n157) );
  GTECH_OAI22 U170 ( .A(n35), .B(n155), .C(n148), .D(n160), .Z(
        mult_stepx_2__inst_N38) );
  GTECH_XOR3 U171 ( .A(n35), .B(n29), .C(n159), .Z(n160) );
  GTECH_ADD_ABC U172 ( .A(n34), .B(n28), .C(n161), .COUT(n159) );
  GTECH_OAI22 U173 ( .A(n34), .B(n155), .C(n162), .D(n148), .Z(
        mult_stepx_2__inst_N37) );
  GTECH_XOR3 U174 ( .A(n34), .B(n28), .C(n161), .Z(n162) );
  GTECH_NAND2 U175 ( .A(n163), .B(n164), .Z(n161) );
  GTECH_NOT U176 ( .A(n33), .Z(n164) );
  GTECH_OAI22 U177 ( .A(n33), .B(n155), .C(n165), .D(n148), .Z(
        mult_stepx_2__inst_N36) );
  GTECH_XOR2 U178 ( .A(n163), .B(n33), .Z(n165) );
  GTECH_AND2 U179 ( .A(n166), .B(mult_stepx_2__inst_N9), .Z(
        mult_stepx_2__inst_N35) );
  GTECH_AND2 U180 ( .A(n166), .B(mult_stepx_2__inst_N8), .Z(
        mult_stepx_2__inst_N34) );
  GTECH_NAND2 U181 ( .A(n155), .B(n148), .Z(n166) );
  GTECH_NAND2 U182 ( .A(rdy_t[1]), .B(n167), .Z(n148) );
  GTECH_NOT U183 ( .A(n40), .Z(n167) );
  GTECH_NAND2 U184 ( .A(n40), .B(rdy_t[1]), .Z(n155) );
  GTECH_AND2 U185 ( .A(rdy_t[1]), .B(n168), .Z(mult_stepx_2__inst_N32) );
  GTECH_NOT U186 ( .A(n30), .Z(n168) );
  GTECH_AND2 U187 ( .A(rdy_t[1]), .B(n169), .Z(mult_stepx_2__inst_N31) );
  GTECH_NOT U188 ( .A(n29), .Z(n169) );
  GTECH_AND2 U189 ( .A(rdy_t[1]), .B(n170), .Z(mult_stepx_2__inst_N30) );
  GTECH_NOT U190 ( .A(n28), .Z(n170) );
  GTECH_AND2 U191 ( .A(rdy_t[1]), .B(n163), .Z(mult_stepx_2__inst_N29) );
  GTECH_NOT U192 ( .A(n27), .Z(n163) );
  GTECH_AND2 U193 ( .A(rdy_t[1]), .B(mult2_t[4]), .Z(mult_stepx_2__inst_N24)
         );
  GTECH_AND2 U194 ( .A(n173), .B(n172), .Z(mult_stepx_1__inst_N39) );
  GTECH_NOT U195 ( .A(n175), .Z(n172) );
  GTECH_ADD_ABC U196 ( .A(n18), .B(n13), .C(n178), .COUT(n176) );
  GTECH_OAI22 U197 ( .A(n18), .B(n174), .C(n171), .D(n179), .Z(
        mult_stepx_1__inst_N37) );
  GTECH_XOR3 U198 ( .A(n18), .B(n13), .C(n178), .Z(n179) );
  GTECH_ADD_ABC U199 ( .A(n17), .B(n12), .C(n180), .COUT(n178) );
  GTECH_OAI22 U200 ( .A(n17), .B(n174), .C(n181), .D(n171), .Z(
        mult_stepx_1__inst_N36) );
  GTECH_XOR3 U201 ( .A(n17), .B(n12), .C(n180), .Z(n181) );
  GTECH_NAND2 U202 ( .A(n182), .B(n183), .Z(n180) );
  GTECH_NOT U203 ( .A(n16), .Z(n183) );
  GTECH_OAI22 U204 ( .A(n16), .B(n174), .C(n184), .D(n171), .Z(
        mult_stepx_1__inst_N35) );
  GTECH_XOR2 U205 ( .A(n182), .B(n16), .Z(n184) );
  GTECH_OA21 U206 ( .A(n173), .B(n185), .C(mult_stepx_1__inst_N8), .Z(
        mult_stepx_1__inst_N34) );
  GTECH_NOT U207 ( .A(n174), .Z(n185) );
  GTECH_NAND2 U208 ( .A(n24), .B(rdy_t[0]), .Z(n174) );
  GTECH_NOT U209 ( .A(n171), .Z(n173) );
  GTECH_NAND2 U210 ( .A(rdy_t[0]), .B(n186), .Z(n171) );
  GTECH_NOT U211 ( .A(n24), .Z(n186) );
  GTECH_AND2 U212 ( .A(rdy_t[0]), .B(n187), .Z(mult_stepx_1__inst_N31) );
  GTECH_NOT U213 ( .A(n14), .Z(n187) );
  GTECH_AND2 U214 ( .A(rdy_t[0]), .B(n188), .Z(mult_stepx_1__inst_N30) );
  GTECH_NOT U215 ( .A(n13), .Z(n188) );
  GTECH_AND2 U216 ( .A(rdy_t[0]), .B(n189), .Z(mult_stepx_1__inst_N29) );
  GTECH_NOT U217 ( .A(n12), .Z(n189) );
  GTECH_AND2 U218 ( .A(rdy_t[0]), .B(n182), .Z(mult_stepx_1__inst_N28) );
  GTECH_NOT U219 ( .A(n11), .Z(n182) );
  GTECH_AND2 U220 ( .A(rdy_t[0]), .B(mult2_t[2]), .Z(mult_stepx_1__inst_N25)
         );
  GTECH_AND2 U221 ( .A(rdy_t[0]), .B(mult2_t[1]), .Z(mult_stepx_1__inst_N24)
         );
  GTECH_AND2 U222 ( .A(mult2[0]), .B(inst0_N30), .Z(inst0_N37) );
  GTECH_AND2 U223 ( .A(inst0_N29), .B(mult2[0]), .Z(inst0_N36) );
  GTECH_AND2 U224 ( .A(inst0_N28), .B(mult2[0]), .Z(inst0_N35) );
  GTECH_AND2 U225 ( .A(inst0_N27), .B(mult2[0]), .Z(inst0_N34) );
  GTECH_NOT U226 ( .A(n190), .Z(inst0_N30) );
  GTECH_NAND2 U227 ( .A(mult1[3]), .B(data_rdy), .Z(n190) );
  GTECH_NOT U228 ( .A(n191), .Z(inst0_N29) );
  GTECH_NAND2 U229 ( .A(mult1[2]), .B(data_rdy), .Z(n191) );
  GTECH_NOT U230 ( .A(n192), .Z(inst0_N28) );
  GTECH_NAND2 U231 ( .A(mult1[1]), .B(data_rdy), .Z(n192) );
  GTECH_NOT U232 ( .A(n193), .Z(inst0_N27) );
  GTECH_NAND2 U233 ( .A(mult1[0]), .B(data_rdy), .Z(n193) );
  GTECH_AND2 U234 ( .A(mult2[3]), .B(data_rdy), .Z(inst0_N26) );
  GTECH_AND2 U235 ( .A(mult2[2]), .B(data_rdy), .Z(inst0_N25) );
  GTECH_AND2 U236 ( .A(mult2[1]), .B(data_rdy), .Z(inst0_N24) );
endmodule

