
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
         n11, n12, n13, n14, n16, n17, n18, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n51, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186;
  wire   [5:0] mult2_t;
  wire   [11:0] mult1_t;
  wire   [2:0] rdy_t;

  GTECH_FD2S inst0_mult1_o_reg_1_ ( .D(inst0_N27), .TI(n148), .TE(n148), .CP(
        clk), .CD(rstn), .Q(mult1_t[0]), .QN(n11) );
  GTECH_FD2S inst0_mult1_o_reg_2_ ( .D(inst0_N28), .TI(n148), .TE(n148), .CP(
        clk), .CD(rstn), .Q(mult1_t[1]), .QN(n12) );
  GTECH_FD2S inst0_mult1_o_reg_3_ ( .D(inst0_N29), .TI(n148), .TE(n148), .CP(
        clk), .CD(rstn), .Q(mult1_t[2]), .QN(n13) );
  GTECH_FD2S inst0_mult1_o_reg_4_ ( .D(inst0_N30), .TI(n148), .TE(n148), .CP(
        clk), .CD(rstn), .Q(mult1_t[3]), .QN(n14) );
  GTECH_FD2S inst0_mult1_acco_reg_0_ ( .D(inst0_N34), .TI(n148), .TE(n148), 
        .CP(clk), .CD(rstn), .Q(mult_stepx_1__inst_N8) );
  GTECH_FD2S inst0_mult1_acco_reg_1_ ( .D(inst0_N35), .TI(n148), .TE(n148), 
        .CP(clk), .CD(rstn), .Q(mult1_acc_t_0__1_), .QN(n16) );
  GTECH_FD2S inst0_mult1_acco_reg_2_ ( .D(inst0_N36), .TI(n148), .TE(n148), 
        .CP(clk), .CD(rstn), .Q(mult1_acc_t_0__2_), .QN(n17) );
  GTECH_FD2S inst0_mult1_acco_reg_3_ ( .D(inst0_N37), .TI(n148), .TE(n148), 
        .CP(clk), .CD(rstn), .Q(mult1_acc_t_0__3_), .QN(n18) );
  GTECH_FD2S inst0_rdy_reg ( .D(data_rdy), .TI(n148), .TE(n148), .CP(clk), 
        .CD(rstn), .Q(rdy_t[0]) );
  GTECH_FD2S inst0_mult2_shift_reg_0_ ( .D(inst0_N24), .TI(n148), .TE(n148), 
        .CP(clk), .CD(rstn), .Q(mult2_t[0]), .QN(n24) );
  GTECH_FD2S inst0_mult2_shift_reg_1_ ( .D(inst0_N25), .TI(n148), .TE(n148), 
        .CP(clk), .CD(rstn), .Q(mult2_t[1]), .QN(n25) );
  GTECH_FD2S inst0_mult2_shift_reg_2_ ( .D(inst0_N26), .TI(n148), .TE(n148), 
        .CP(clk), .CD(rstn), .Q(mult2_t[2]), .QN(n26) );
  GTECH_FD2S mult_stepx_1__inst_mult1_o_reg_2_ ( .D(mult_stepx_1__inst_N28), 
        .TI(n148), .TE(n148), .CP(clk), .CD(rstn), .Q(mult1_t[4]), .QN(n27) );
  GTECH_FD2S mult_stepx_1__inst_mult1_o_reg_3_ ( .D(mult_stepx_1__inst_N29), 
        .TI(n148), .TE(n148), .CP(clk), .CD(rstn), .Q(mult1_t[5]), .QN(n28) );
  GTECH_FD2S mult_stepx_1__inst_mult1_o_reg_4_ ( .D(mult_stepx_1__inst_N30), 
        .TI(n148), .TE(n148), .CP(clk), .CD(rstn), .Q(mult1_t[6]), .QN(n29) );
  GTECH_FD2S mult_stepx_1__inst_mult1_o_reg_5_ ( .D(mult_stepx_1__inst_N31), 
        .TI(n148), .TE(n148), .CP(clk), .CD(rstn), .Q(mult1_t[7]), .QN(n30) );
  GTECH_FD2S mult_stepx_1__inst_mult1_acco_reg_0_ ( .D(mult_stepx_1__inst_N34), 
        .TI(n148), .TE(n148), .CP(clk), .CD(rstn), .Q(mult_stepx_2__inst_N8), 
        .QN(n31) );
  GTECH_FD2S mult_stepx_1__inst_mult1_acco_reg_1_ ( .D(mult_stepx_1__inst_N35), 
        .TI(n148), .TE(n148), .CP(clk), .CD(rstn), .Q(mult_stepx_2__inst_N9), 
        .QN(n32) );
  GTECH_FD2S mult_stepx_1__inst_mult1_acco_reg_2_ ( .D(mult_stepx_1__inst_N36), 
        .TI(n148), .TE(n148), .CP(clk), .CD(rstn), .Q(mult1_acc_t_1__2_), .QN(
        n33) );
  GTECH_FD2S mult_stepx_1__inst_mult1_acco_reg_3_ ( .D(mult_stepx_1__inst_N37), 
        .TI(n148), .TE(n148), .CP(clk), .CD(rstn), .Q(mult1_acc_t_1__3_), .QN(
        n34) );
  GTECH_FD2S mult_stepx_1__inst_mult1_acco_reg_4_ ( .D(mult_stepx_1__inst_N38), 
        .TI(n148), .TE(n148), .CP(clk), .CD(rstn), .Q(mult1_acc_t_1__4_), .QN(
        n35) );
  GTECH_FD2S mult_stepx_1__inst_mult1_acco_reg_5_ ( .D(mult_stepx_1__inst_N39), 
        .TI(n148), .TE(n148), .CP(clk), .CD(rstn), .Q(mult1_acc_t_1__5_), .QN(
        n36) );
  GTECH_FD2S mult_stepx_1__inst_rdy_reg ( .D(rdy_t[0]), .TI(n148), .TE(n148), 
        .CP(clk), .CD(rstn), .Q(rdy_t[1]) );
  GTECH_FD2S mult_stepx_1__inst_mult2_shift_reg_0_ ( .D(mult_stepx_1__inst_N24), .TI(n148), .TE(n148), .CP(clk), .CD(rstn), .Q(mult2_t[3]), .QN(n40) );
  GTECH_FD2S mult_stepx_1__inst_mult2_shift_reg_1_ ( .D(mult_stepx_1__inst_N25), .TI(n148), .TE(n148), .CP(clk), .CD(rstn), .Q(mult2_t[4]), .QN(n41) );
  GTECH_FD2S mult_stepx_2__inst_mult1_o_reg_3_ ( .D(mult_stepx_2__inst_N29), 
        .TI(n148), .TE(n148), .CP(clk), .CD(rstn), .Q(mult1_t[8]), .QN(n129)
         );
  GTECH_FD2S mult_stepx_2__inst_mult1_o_reg_4_ ( .D(mult_stepx_2__inst_N30), 
        .TI(n148), .TE(n148), .CP(clk), .CD(rstn), .Q(mult1_t[9]), .QN(n128)
         );
  GTECH_FD2S mult_stepx_2__inst_mult1_o_reg_5_ ( .D(mult_stepx_2__inst_N31), 
        .TI(n148), .TE(n148), .CP(clk), .CD(rstn), .Q(mult1_t[10]), .QN(n127)
         );
  GTECH_FD2S mult_stepx_2__inst_mult1_o_reg_6_ ( .D(mult_stepx_2__inst_N32), 
        .TI(n148), .TE(n148), .CP(clk), .CD(rstn), .Q(mult1_t[11]), .QN(n126)
         );
  GTECH_FD2S mult_stepx_2__inst_mult1_acco_reg_0_ ( .D(mult_stepx_2__inst_N34), 
        .TI(n148), .TE(n148), .CP(clk), .CD(rstn), .Q(mult_stepx_3__inst_N8), 
        .QN(n42) );
  GTECH_FD2S mult_stepx_2__inst_mult1_acco_reg_1_ ( .D(mult_stepx_2__inst_N35), 
        .TI(n148), .TE(n148), .CP(clk), .CD(rstn), .Q(mult_stepx_3__inst_N9), 
        .QN(n43) );
  GTECH_FD2S mult_stepx_2__inst_mult1_acco_reg_2_ ( .D(mult_stepx_2__inst_N36), 
        .TI(n148), .TE(n148), .CP(clk), .CD(rstn), .Q(mult_stepx_3__inst_N10), 
        .QN(n44) );
  GTECH_FD2S mult_stepx_2__inst_mult1_acco_reg_3_ ( .D(mult_stepx_2__inst_N37), 
        .TI(n148), .TE(n148), .CP(clk), .CD(rstn), .Q(mult1_acc_t_2__3_), .QN(
        n45) );
  GTECH_FD2S mult_stepx_2__inst_mult1_acco_reg_4_ ( .D(mult_stepx_2__inst_N38), 
        .TI(n148), .TE(n148), .CP(clk), .CD(rstn), .Q(mult1_acc_t_2__4_), .QN(
        n46) );
  GTECH_FD2S mult_stepx_2__inst_mult1_acco_reg_5_ ( .D(mult_stepx_2__inst_N39), 
        .TI(n148), .TE(n148), .CP(clk), .CD(rstn), .Q(mult1_acc_t_2__5_), .QN(
        n47) );
  GTECH_FD2S mult_stepx_2__inst_mult1_acco_reg_6_ ( .D(mult_stepx_2__inst_N40), 
        .TI(n148), .TE(n148), .CP(clk), .CD(rstn), .Q(mult1_acc_t_2__6_), .QN(
        n48) );
  GTECH_FD2S mult_stepx_2__inst_mult1_acco_reg_7_ ( .D(mult_stepx_2__inst_N41), 
        .TI(n148), .TE(n148), .CP(clk), .CD(rstn), .Q(mult1_acc_t_2__7_), .QN(
        n49) );
  GTECH_FD2S mult_stepx_2__inst_rdy_reg ( .D(rdy_t[1]), .TI(n148), .TE(n148), 
        .CP(clk), .CD(rstn), .Q(rdy_t[2]) );
  GTECH_FD2S mult_stepx_2__inst_mult2_shift_reg_0_ ( .D(mult_stepx_2__inst_N24), .TI(n148), .TE(n148), .CP(clk), .CD(rstn), .Q(mult2_t[5]), .QN(n51) );
  GTECH_FD2S mult_stepx_3__inst_mult1_acco_reg_0_ ( .D(mult_stepx_3__inst_N34), 
        .TI(n148), .TE(n148), .CP(clk), .CD(rstn), .Q(res[0]) );
  GTECH_FD2S mult_stepx_3__inst_mult1_acco_reg_1_ ( .D(mult_stepx_3__inst_N35), 
        .TI(n148), .TE(n148), .CP(clk), .CD(rstn), .Q(res[1]) );
  GTECH_FD2S mult_stepx_3__inst_mult1_acco_reg_2_ ( .D(mult_stepx_3__inst_N36), 
        .TI(n148), .TE(n148), .CP(clk), .CD(rstn), .Q(res[2]) );
  GTECH_FD2S mult_stepx_3__inst_mult1_acco_reg_3_ ( .D(mult_stepx_3__inst_N37), 
        .TI(n148), .TE(n148), .CP(clk), .CD(rstn), .Q(res[3]) );
  GTECH_FD2S mult_stepx_3__inst_mult1_acco_reg_4_ ( .D(mult_stepx_3__inst_N38), 
        .TI(n148), .TE(n148), .CP(clk), .CD(rstn), .Q(res[4]) );
  GTECH_FD2S mult_stepx_3__inst_mult1_acco_reg_5_ ( .D(mult_stepx_3__inst_N39), 
        .TI(n148), .TE(n148), .CP(clk), .CD(rstn), .Q(res[5]) );
  GTECH_FD2S mult_stepx_3__inst_mult1_acco_reg_6_ ( .D(mult_stepx_3__inst_N40), 
        .TI(n148), .TE(n148), .CP(clk), .CD(rstn), .Q(res[6]) );
  GTECH_FD2S mult_stepx_3__inst_mult1_acco_reg_7_ ( .D(mult_stepx_3__inst_N41), 
        .TI(n148), .TE(n148), .CP(clk), .CD(rstn), .Q(res[7]) );
  GTECH_FD2S mult_stepx_3__inst_rdy_reg ( .D(rdy_t[2]), .TI(n148), .TE(n148), 
        .CP(clk), .CD(rstn), .Q(res_rdy) );
  GTECH_ZERO U129 ( .Z(n148) );
  GTECH_ONE U130 ( .Z(n149) );
  GTECH_OR2 U131 ( .A(n14), .B(n170), .Z(n168) );
  GTECH_NOR2 U132 ( .A(n166), .B(n171), .Z(mult_stepx_1__inst_N38) );
  GTECH_XNOR2 U133 ( .A(n14), .B(n170), .Z(n171) );
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
  GTECH_AND_NOT U150 ( .A(n143), .B(n44), .Z(mult_stepx_3__inst_N36) );
  GTECH_AND_NOT U151 ( .A(n143), .B(n43), .Z(mult_stepx_3__inst_N35) );
  GTECH_AND_NOT U152 ( .A(n143), .B(n42), .Z(mult_stepx_3__inst_N34) );
  GTECH_NAND2 U153 ( .A(n130), .B(n131), .Z(n143) );
  GTECH_NAND2 U154 ( .A(rdy_t[2]), .B(n144), .Z(n131) );
  GTECH_NOT U155 ( .A(n51), .Z(n144) );
  GTECH_NAND2 U156 ( .A(n51), .B(rdy_t[2]), .Z(n130) );
  GTECH_OAI22 U157 ( .A(n149), .B(n145), .C(n146), .D(n147), .Z(
        mult_stepx_2__inst_N41) );
  GTECH_MUX2 U158 ( .A(n148), .B(n149), .S(n149), .Z(n147) );
  GTECH_NOT U159 ( .A(n151), .Z(n145) );
  GTECH_MUX2 U160 ( .A(n151), .B(n152), .S(n149), .Z(mult_stepx_2__inst_N40)
         );
  GTECH_NOR2 U161 ( .A(n146), .B(n153), .Z(n152) );
  GTECH_OAI21 U162 ( .A(n146), .B(n150), .C(n154), .Z(n151) );
  GTECH_NOT U163 ( .A(n153), .Z(n150) );
  GTECH_ADD_ABC U164 ( .A(n36), .B(n30), .C(n155), .COUT(n153) );
  GTECH_OAI22 U165 ( .A(n36), .B(n154), .C(n146), .D(n156), .Z(
        mult_stepx_2__inst_N39) );
  GTECH_XOR3 U166 ( .A(n36), .B(n30), .C(n155), .Z(n156) );
  GTECH_ADD_ABC U167 ( .A(n35), .B(n29), .C(n157), .COUT(n155) );
  GTECH_OAI22 U168 ( .A(n35), .B(n154), .C(n146), .D(n158), .Z(
        mult_stepx_2__inst_N38) );
  GTECH_XOR3 U169 ( .A(n35), .B(n29), .C(n157), .Z(n158) );
  GTECH_ADD_ABC U170 ( .A(n34), .B(n28), .C(n159), .COUT(n157) );
  GTECH_OAI22 U171 ( .A(n34), .B(n154), .C(n160), .D(n146), .Z(
        mult_stepx_2__inst_N37) );
  GTECH_XOR3 U172 ( .A(n34), .B(n28), .C(n159), .Z(n160) );
  GTECH_NAND2 U173 ( .A(n161), .B(n162), .Z(n159) );
  GTECH_NOT U174 ( .A(n33), .Z(n162) );
  GTECH_OAI22 U175 ( .A(n33), .B(n154), .C(n163), .D(n146), .Z(
        mult_stepx_2__inst_N36) );
  GTECH_XOR2 U176 ( .A(n161), .B(n33), .Z(n163) );
  GTECH_NOT U177 ( .A(n27), .Z(n161) );
  GTECH_AND_NOT U178 ( .A(n164), .B(n32), .Z(mult_stepx_2__inst_N35) );
  GTECH_AND_NOT U179 ( .A(n164), .B(n31), .Z(mult_stepx_2__inst_N34) );
  GTECH_NAND2 U180 ( .A(n154), .B(n146), .Z(n164) );
  GTECH_NAND2 U181 ( .A(rdy_t[1]), .B(n165), .Z(n146) );
  GTECH_NOT U182 ( .A(n40), .Z(n165) );
  GTECH_NAND2 U183 ( .A(n40), .B(rdy_t[1]), .Z(n154) );
  GTECH_AND_NOT U184 ( .A(rdy_t[1]), .B(n30), .Z(mult_stepx_2__inst_N32) );
  GTECH_AND_NOT U185 ( .A(rdy_t[1]), .B(n29), .Z(mult_stepx_2__inst_N31) );
  GTECH_AND_NOT U186 ( .A(rdy_t[1]), .B(n28), .Z(mult_stepx_2__inst_N30) );
  GTECH_AND_NOT U187 ( .A(rdy_t[1]), .B(n27), .Z(mult_stepx_2__inst_N29) );
  GTECH_AND_NOT U188 ( .A(rdy_t[1]), .B(n41), .Z(mult_stepx_2__inst_N24) );
  GTECH_AND_NOT U189 ( .A(n167), .B(n168), .Z(mult_stepx_1__inst_N39) );
  GTECH_ADD_ABC U190 ( .A(n18), .B(n13), .C(n172), .COUT(n170) );
  GTECH_OAI22 U191 ( .A(n18), .B(n169), .C(n166), .D(n173), .Z(
        mult_stepx_1__inst_N37) );
  GTECH_XOR3 U192 ( .A(n18), .B(n13), .C(n172), .Z(n173) );
  GTECH_ADD_ABC U193 ( .A(n17), .B(n12), .C(n174), .COUT(n172) );
  GTECH_OAI22 U194 ( .A(n17), .B(n169), .C(n175), .D(n166), .Z(
        mult_stepx_1__inst_N36) );
  GTECH_XOR3 U195 ( .A(n17), .B(n12), .C(n174), .Z(n175) );
  GTECH_NAND2 U196 ( .A(n176), .B(n177), .Z(n174) );
  GTECH_NOT U197 ( .A(n16), .Z(n177) );
  GTECH_OAI22 U198 ( .A(n16), .B(n169), .C(n178), .D(n166), .Z(
        mult_stepx_1__inst_N35) );
  GTECH_XOR2 U199 ( .A(n176), .B(n16), .Z(n178) );
  GTECH_NOT U200 ( .A(n11), .Z(n176) );
  GTECH_OA21 U201 ( .A(n167), .B(n179), .C(mult_stepx_1__inst_N8), .Z(
        mult_stepx_1__inst_N34) );
  GTECH_NOT U202 ( .A(n169), .Z(n179) );
  GTECH_NAND2 U203 ( .A(n24), .B(rdy_t[0]), .Z(n169) );
  GTECH_NOT U204 ( .A(n166), .Z(n167) );
  GTECH_NAND2 U205 ( .A(rdy_t[0]), .B(n180), .Z(n166) );
  GTECH_NOT U206 ( .A(n24), .Z(n180) );
  GTECH_AND_NOT U207 ( .A(rdy_t[0]), .B(n14), .Z(mult_stepx_1__inst_N31) );
  GTECH_AND_NOT U208 ( .A(rdy_t[0]), .B(n13), .Z(mult_stepx_1__inst_N30) );
  GTECH_AND_NOT U209 ( .A(rdy_t[0]), .B(n12), .Z(mult_stepx_1__inst_N29) );
  GTECH_AND_NOT U210 ( .A(rdy_t[0]), .B(n11), .Z(mult_stepx_1__inst_N28) );
  GTECH_AND_NOT U211 ( .A(rdy_t[0]), .B(n26), .Z(mult_stepx_1__inst_N25) );
  GTECH_AND_NOT U212 ( .A(rdy_t[0]), .B(n25), .Z(mult_stepx_1__inst_N24) );
  GTECH_AND_NOT U213 ( .A(mult2[0]), .B(n181), .Z(inst0_N37) );
  GTECH_AND_NOT U214 ( .A(inst0_N29), .B(n182), .Z(inst0_N36) );
  GTECH_AND_NOT U215 ( .A(inst0_N28), .B(n182), .Z(inst0_N35) );
  GTECH_AND_NOT U216 ( .A(inst0_N27), .B(n182), .Z(inst0_N34) );
  GTECH_NOT U217 ( .A(mult2[0]), .Z(n182) );
  GTECH_NOT U218 ( .A(n181), .Z(inst0_N30) );
  GTECH_NAND2 U219 ( .A(mult1[3]), .B(data_rdy), .Z(n181) );
  GTECH_NOT U220 ( .A(n183), .Z(inst0_N29) );
  GTECH_NAND2 U221 ( .A(mult1[2]), .B(data_rdy), .Z(n183) );
  GTECH_NOT U222 ( .A(n184), .Z(inst0_N28) );
  GTECH_NAND2 U223 ( .A(mult1[1]), .B(data_rdy), .Z(n184) );
  GTECH_NOT U224 ( .A(n185), .Z(inst0_N27) );
  GTECH_NAND2 U225 ( .A(mult1[0]), .B(data_rdy), .Z(n185) );
  GTECH_AND_NOT U226 ( .A(mult2[3]), .B(n186), .Z(inst0_N26) );
  GTECH_AND_NOT U227 ( .A(mult2[2]), .B(n186), .Z(inst0_N25) );
  GTECH_AND_NOT U228 ( .A(mult2[1]), .B(n186), .Z(inst0_N24) );
  GTECH_NOT U229 ( .A(data_rdy), .Z(n186) );
endmodule

