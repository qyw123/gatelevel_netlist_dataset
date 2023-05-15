
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
         n11, n12, n13, n14, n16, n17, n18, n26, n27, n28, n29, n32, n33, n34,
         n35, n43, n44, n45, n46, n47, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194;
  wire   [5:0] mult2_t;
  wire   [11:0] mult1_t;
  wire   [2:0] rdy_t;

  GTECH_FD2S inst0_mult1_o_reg_1_ ( .D(inst0_N27), .TI(n151), .TE(n151), .CP(
        clk), .CD(rstn), .Q(mult1_t[0]), .QN(n11) );
  GTECH_FD2S inst0_mult1_o_reg_2_ ( .D(inst0_N28), .TI(n151), .TE(n151), .CP(
        clk), .CD(rstn), .Q(mult1_t[1]), .QN(n12) );
  GTECH_FD2S inst0_mult1_o_reg_3_ ( .D(inst0_N29), .TI(n151), .TE(n151), .CP(
        clk), .CD(rstn), .Q(mult1_t[2]), .QN(n13) );
  GTECH_FD2S inst0_mult1_o_reg_4_ ( .D(inst0_N30), .TI(n151), .TE(n151), .CP(
        clk), .CD(rstn), .Q(mult1_t[3]), .QN(n14) );
  GTECH_FD2S inst0_mult1_acco_reg_0_ ( .D(inst0_N34), .TI(n151), .TE(n151), 
        .CP(clk), .CD(rstn), .Q(mult_stepx_1__inst_N8) );
  GTECH_FD2S inst0_mult1_acco_reg_1_ ( .D(inst0_N35), .TI(n151), .TE(n151), 
        .CP(clk), .CD(rstn), .Q(mult1_acc_t_0__1_), .QN(n16) );
  GTECH_FD2S inst0_mult1_acco_reg_2_ ( .D(inst0_N36), .TI(n151), .TE(n151), 
        .CP(clk), .CD(rstn), .Q(mult1_acc_t_0__2_), .QN(n17) );
  GTECH_FD2S inst0_mult1_acco_reg_3_ ( .D(inst0_N37), .TI(n151), .TE(n151), 
        .CP(clk), .CD(rstn), .Q(mult1_acc_t_0__3_), .QN(n18) );
  GTECH_FD2S inst0_rdy_reg ( .D(data_rdy), .TI(n151), .TE(n151), .CP(clk), 
        .CD(rstn), .Q(rdy_t[0]) );
  GTECH_FD2S inst0_mult2_shift_reg_0_ ( .D(inst0_N24), .TI(n151), .TE(n151), 
        .CP(clk), .CD(rstn), .Q(mult2_t[0]), .QN(n128) );
  GTECH_FD2S inst0_mult2_shift_reg_1_ ( .D(inst0_N25), .TI(n151), .TE(n151), 
        .CP(clk), .CD(rstn), .Q(mult2_t[1]) );
  GTECH_FD2S inst0_mult2_shift_reg_2_ ( .D(inst0_N26), .TI(n151), .TE(n151), 
        .CP(clk), .CD(rstn), .Q(mult2_t[2]) );
  GTECH_FD2S mult_stepx_1__inst_mult1_o_reg_2_ ( .D(mult_stepx_1__inst_N28), 
        .TI(n151), .TE(n151), .CP(clk), .CD(rstn), .Q(mult1_t[4]), .QN(n26) );
  GTECH_FD2S mult_stepx_1__inst_mult1_o_reg_3_ ( .D(mult_stepx_1__inst_N29), 
        .TI(n151), .TE(n151), .CP(clk), .CD(rstn), .Q(mult1_t[5]), .QN(n27) );
  GTECH_FD2S mult_stepx_1__inst_mult1_o_reg_4_ ( .D(mult_stepx_1__inst_N30), 
        .TI(n151), .TE(n151), .CP(clk), .CD(rstn), .Q(mult1_t[6]), .QN(n28) );
  GTECH_FD2S mult_stepx_1__inst_mult1_o_reg_5_ ( .D(mult_stepx_1__inst_N31), 
        .TI(n151), .TE(n151), .CP(clk), .CD(rstn), .Q(mult1_t[7]), .QN(n29) );
  GTECH_FD2S mult_stepx_1__inst_mult1_acco_reg_0_ ( .D(mult_stepx_1__inst_N34), 
        .TI(n151), .TE(n151), .CP(clk), .CD(rstn), .Q(mult_stepx_2__inst_N8)
         );
  GTECH_FD2S mult_stepx_1__inst_mult1_acco_reg_1_ ( .D(mult_stepx_1__inst_N35), 
        .TI(n151), .TE(n151), .CP(clk), .CD(rstn), .Q(mult_stepx_2__inst_N9)
         );
  GTECH_FD2S mult_stepx_1__inst_mult1_acco_reg_2_ ( .D(mult_stepx_1__inst_N36), 
        .TI(n151), .TE(n151), .CP(clk), .CD(rstn), .Q(mult1_acc_t_1__2_), .QN(
        n32) );
  GTECH_FD2S mult_stepx_1__inst_mult1_acco_reg_3_ ( .D(mult_stepx_1__inst_N37), 
        .TI(n151), .TE(n151), .CP(clk), .CD(rstn), .Q(mult1_acc_t_1__3_), .QN(
        n33) );
  GTECH_FD2S mult_stepx_1__inst_mult1_acco_reg_4_ ( .D(mult_stepx_1__inst_N38), 
        .TI(n151), .TE(n151), .CP(clk), .CD(rstn), .Q(mult1_acc_t_1__4_), .QN(
        n34) );
  GTECH_FD2S mult_stepx_1__inst_mult1_acco_reg_5_ ( .D(mult_stepx_1__inst_N39), 
        .TI(n151), .TE(n151), .CP(clk), .CD(rstn), .Q(mult1_acc_t_1__5_), .QN(
        n35) );
  GTECH_FD2S mult_stepx_1__inst_rdy_reg ( .D(rdy_t[0]), .TI(n151), .TE(n151), 
        .CP(clk), .CD(rstn), .Q(rdy_t[1]) );
  GTECH_FD2S mult_stepx_1__inst_mult2_shift_reg_0_ ( .D(mult_stepx_1__inst_N24), .TI(n151), .TE(n151), .CP(clk), .CD(rstn), .Q(mult2_t[3]), .QN(n127) );
  GTECH_FD2S mult_stepx_1__inst_mult2_shift_reg_1_ ( .D(mult_stepx_1__inst_N25), .TI(n151), .TE(n151), .CP(clk), .CD(rstn), .Q(mult2_t[4]) );
  GTECH_FD2S mult_stepx_2__inst_mult1_o_reg_3_ ( .D(mult_stepx_2__inst_N29), 
        .TI(n151), .TE(n151), .CP(clk), .CD(rstn), .Q(mult1_t[8]), .QN(n132)
         );
  GTECH_FD2S mult_stepx_2__inst_mult1_o_reg_4_ ( .D(mult_stepx_2__inst_N30), 
        .TI(n151), .TE(n151), .CP(clk), .CD(rstn), .Q(mult1_t[9]), .QN(n131)
         );
  GTECH_FD2S mult_stepx_2__inst_mult1_o_reg_5_ ( .D(mult_stepx_2__inst_N31), 
        .TI(n151), .TE(n151), .CP(clk), .CD(rstn), .Q(mult1_t[10]), .QN(n130)
         );
  GTECH_FD2S mult_stepx_2__inst_mult1_o_reg_6_ ( .D(mult_stepx_2__inst_N32), 
        .TI(n151), .TE(n151), .CP(clk), .CD(rstn), .Q(mult1_t[11]), .QN(n129)
         );
  GTECH_FD2S mult_stepx_2__inst_mult1_acco_reg_0_ ( .D(mult_stepx_2__inst_N34), 
        .TI(n151), .TE(n151), .CP(clk), .CD(rstn), .Q(mult_stepx_3__inst_N8)
         );
  GTECH_FD2S mult_stepx_2__inst_mult1_acco_reg_1_ ( .D(mult_stepx_2__inst_N35), 
        .TI(n151), .TE(n151), .CP(clk), .CD(rstn), .Q(mult_stepx_3__inst_N9)
         );
  GTECH_FD2S mult_stepx_2__inst_mult1_acco_reg_2_ ( .D(mult_stepx_2__inst_N36), 
        .TI(n151), .TE(n151), .CP(clk), .CD(rstn), .Q(mult_stepx_3__inst_N10)
         );
  GTECH_FD2S mult_stepx_2__inst_mult1_acco_reg_3_ ( .D(mult_stepx_2__inst_N37), 
        .TI(n151), .TE(n151), .CP(clk), .CD(rstn), .Q(mult1_acc_t_2__3_), .QN(
        n43) );
  GTECH_FD2S mult_stepx_2__inst_mult1_acco_reg_4_ ( .D(mult_stepx_2__inst_N38), 
        .TI(n151), .TE(n151), .CP(clk), .CD(rstn), .Q(mult1_acc_t_2__4_), .QN(
        n44) );
  GTECH_FD2S mult_stepx_2__inst_mult1_acco_reg_5_ ( .D(mult_stepx_2__inst_N39), 
        .TI(n151), .TE(n151), .CP(clk), .CD(rstn), .Q(mult1_acc_t_2__5_), .QN(
        n45) );
  GTECH_FD2S mult_stepx_2__inst_mult1_acco_reg_6_ ( .D(mult_stepx_2__inst_N40), 
        .TI(n151), .TE(n151), .CP(clk), .CD(rstn), .Q(mult1_acc_t_2__6_), .QN(
        n46) );
  GTECH_FD2S mult_stepx_2__inst_mult1_acco_reg_7_ ( .D(mult_stepx_2__inst_N41), 
        .TI(n151), .TE(n151), .CP(clk), .CD(rstn), .Q(mult1_acc_t_2__7_), .QN(
        n47) );
  GTECH_FD2S mult_stepx_2__inst_rdy_reg ( .D(rdy_t[1]), .TI(n151), .TE(n151), 
        .CP(clk), .CD(rstn), .Q(rdy_t[2]) );
  GTECH_FD2S mult_stepx_2__inst_mult2_shift_reg_0_ ( .D(mult_stepx_2__inst_N24), .TI(n151), .TE(n151), .CP(clk), .CD(rstn), .Q(mult2_t[5]), .QN(n126) );
  GTECH_FD2S mult_stepx_3__inst_mult1_acco_reg_0_ ( .D(mult_stepx_3__inst_N34), 
        .TI(n151), .TE(n151), .CP(clk), .CD(rstn), .Q(res[0]) );
  GTECH_FD2S mult_stepx_3__inst_mult1_acco_reg_1_ ( .D(mult_stepx_3__inst_N35), 
        .TI(n151), .TE(n151), .CP(clk), .CD(rstn), .Q(res[1]) );
  GTECH_FD2S mult_stepx_3__inst_mult1_acco_reg_2_ ( .D(mult_stepx_3__inst_N36), 
        .TI(n151), .TE(n151), .CP(clk), .CD(rstn), .Q(res[2]) );
  GTECH_FD2S mult_stepx_3__inst_mult1_acco_reg_3_ ( .D(mult_stepx_3__inst_N37), 
        .TI(n151), .TE(n151), .CP(clk), .CD(rstn), .Q(res[3]) );
  GTECH_FD2S mult_stepx_3__inst_mult1_acco_reg_4_ ( .D(mult_stepx_3__inst_N38), 
        .TI(n151), .TE(n151), .CP(clk), .CD(rstn), .Q(res[4]) );
  GTECH_FD2S mult_stepx_3__inst_mult1_acco_reg_5_ ( .D(mult_stepx_3__inst_N39), 
        .TI(n151), .TE(n151), .CP(clk), .CD(rstn), .Q(res[5]) );
  GTECH_FD2S mult_stepx_3__inst_mult1_acco_reg_6_ ( .D(mult_stepx_3__inst_N40), 
        .TI(n151), .TE(n151), .CP(clk), .CD(rstn), .Q(res[6]) );
  GTECH_FD2S mult_stepx_3__inst_mult1_acco_reg_7_ ( .D(mult_stepx_3__inst_N41), 
        .TI(n151), .TE(n151), .CP(clk), .CD(rstn), .Q(res[7]) );
  GTECH_FD2S mult_stepx_3__inst_rdy_reg ( .D(rdy_t[2]), .TI(n151), .TE(n151), 
        .CP(clk), .CD(rstn), .Q(res_rdy) );
  GTECH_ZERO U132 ( .Z(n151) );
  GTECH_ONE U133 ( .Z(n152) );
  GTECH_OR2 U134 ( .A(n14), .B(n177), .Z(n176) );
  GTECH_NOR2 U135 ( .A(n172), .B(n178), .Z(mult_stepx_1__inst_N38) );
  GTECH_XNOR2 U136 ( .A(n14), .B(n177), .Z(n178) );
  GTECH_OAI22 U137 ( .A(n47), .B(n133), .C(n134), .D(n135), .Z(
        mult_stepx_3__inst_N41) );
  GTECH_XNOR2 U138 ( .A(n47), .B(n136), .Z(n135) );
  GTECH_ADD_ABC U139 ( .A(n137), .B(n46), .C(n129), .COUT(n136) );
  GTECH_OAI22 U140 ( .A(n46), .B(n133), .C(n134), .D(n138), .Z(
        mult_stepx_3__inst_N40) );
  GTECH_XOR3 U141 ( .A(n129), .B(n46), .C(n137), .Z(n138) );
  GTECH_ADD_ABC U142 ( .A(n130), .B(n45), .C(n139), .COUT(n137) );
  GTECH_OAI22 U143 ( .A(n45), .B(n133), .C(n134), .D(n140), .Z(
        mult_stepx_3__inst_N39) );
  GTECH_XOR3 U144 ( .A(n130), .B(n45), .C(n139), .Z(n140) );
  GTECH_ADD_ABC U145 ( .A(n131), .B(n44), .C(n141), .COUT(n139) );
  GTECH_OAI22 U146 ( .A(n44), .B(n133), .C(n142), .D(n134), .Z(
        mult_stepx_3__inst_N38) );
  GTECH_XOR3 U147 ( .A(n131), .B(n44), .C(n141), .Z(n142) );
  GTECH_NAND2 U148 ( .A(n143), .B(n144), .Z(n141) );
  GTECH_NOT U149 ( .A(n132), .Z(n144) );
  GTECH_OAI22 U150 ( .A(n43), .B(n133), .C(n145), .D(n134), .Z(
        mult_stepx_3__inst_N37) );
  GTECH_XOR2 U151 ( .A(n143), .B(n132), .Z(n145) );
  GTECH_NOT U152 ( .A(n43), .Z(n143) );
  GTECH_AND2 U153 ( .A(n146), .B(mult_stepx_3__inst_N10), .Z(
        mult_stepx_3__inst_N36) );
  GTECH_AND2 U154 ( .A(n146), .B(mult_stepx_3__inst_N9), .Z(
        mult_stepx_3__inst_N35) );
  GTECH_AND2 U155 ( .A(n146), .B(mult_stepx_3__inst_N8), .Z(
        mult_stepx_3__inst_N34) );
  GTECH_NAND2 U156 ( .A(n133), .B(n134), .Z(n146) );
  GTECH_NAND2 U157 ( .A(rdy_t[2]), .B(n147), .Z(n134) );
  GTECH_NOT U158 ( .A(n126), .Z(n147) );
  GTECH_NAND2 U159 ( .A(n126), .B(rdy_t[2]), .Z(n133) );
  GTECH_OAI22 U160 ( .A(n152), .B(n148), .C(n149), .D(n150), .Z(
        mult_stepx_2__inst_N41) );
  GTECH_MUX2 U161 ( .A(n151), .B(n152), .S(n152), .Z(n150) );
  GTECH_NOT U162 ( .A(n154), .Z(n148) );
  GTECH_MUX2 U163 ( .A(n154), .B(n155), .S(n152), .Z(mult_stepx_2__inst_N40)
         );
  GTECH_NOR2 U164 ( .A(n149), .B(n156), .Z(n155) );
  GTECH_OAI21 U165 ( .A(n149), .B(n153), .C(n157), .Z(n154) );
  GTECH_NOT U166 ( .A(n156), .Z(n153) );
  GTECH_ADD_ABC U167 ( .A(n35), .B(n29), .C(n158), .COUT(n156) );
  GTECH_OAI22 U168 ( .A(n35), .B(n157), .C(n149), .D(n159), .Z(
        mult_stepx_2__inst_N39) );
  GTECH_XOR3 U169 ( .A(n35), .B(n29), .C(n158), .Z(n159) );
  GTECH_ADD_ABC U170 ( .A(n34), .B(n28), .C(n160), .COUT(n158) );
  GTECH_OAI22 U171 ( .A(n34), .B(n157), .C(n149), .D(n161), .Z(
        mult_stepx_2__inst_N38) );
  GTECH_XOR3 U172 ( .A(n34), .B(n28), .C(n160), .Z(n161) );
  GTECH_ADD_ABC U173 ( .A(n33), .B(n27), .C(n162), .COUT(n160) );
  GTECH_OAI22 U174 ( .A(n33), .B(n157), .C(n163), .D(n149), .Z(
        mult_stepx_2__inst_N37) );
  GTECH_XOR3 U175 ( .A(n33), .B(n27), .C(n162), .Z(n163) );
  GTECH_NAND2 U176 ( .A(n164), .B(n165), .Z(n162) );
  GTECH_NOT U177 ( .A(n32), .Z(n165) );
  GTECH_OAI22 U178 ( .A(n32), .B(n157), .C(n166), .D(n149), .Z(
        mult_stepx_2__inst_N36) );
  GTECH_XOR2 U179 ( .A(n164), .B(n32), .Z(n166) );
  GTECH_AND2 U180 ( .A(n167), .B(mult_stepx_2__inst_N9), .Z(
        mult_stepx_2__inst_N35) );
  GTECH_AND2 U181 ( .A(n167), .B(mult_stepx_2__inst_N8), .Z(
        mult_stepx_2__inst_N34) );
  GTECH_NAND2 U182 ( .A(n157), .B(n149), .Z(n167) );
  GTECH_NAND2 U183 ( .A(rdy_t[1]), .B(n168), .Z(n149) );
  GTECH_NOT U184 ( .A(n127), .Z(n168) );
  GTECH_NAND2 U185 ( .A(n127), .B(rdy_t[1]), .Z(n157) );
  GTECH_AND2 U186 ( .A(rdy_t[1]), .B(n169), .Z(mult_stepx_2__inst_N32) );
  GTECH_NOT U187 ( .A(n29), .Z(n169) );
  GTECH_AND2 U188 ( .A(rdy_t[1]), .B(n170), .Z(mult_stepx_2__inst_N31) );
  GTECH_NOT U189 ( .A(n28), .Z(n170) );
  GTECH_AND2 U190 ( .A(rdy_t[1]), .B(n171), .Z(mult_stepx_2__inst_N30) );
  GTECH_NOT U191 ( .A(n27), .Z(n171) );
  GTECH_AND2 U192 ( .A(rdy_t[1]), .B(n164), .Z(mult_stepx_2__inst_N29) );
  GTECH_NOT U193 ( .A(n26), .Z(n164) );
  GTECH_AND2 U194 ( .A(rdy_t[1]), .B(mult2_t[4]), .Z(mult_stepx_2__inst_N24)
         );
  GTECH_AND2 U195 ( .A(n174), .B(n173), .Z(mult_stepx_1__inst_N39) );
  GTECH_NOT U196 ( .A(n176), .Z(n173) );
  GTECH_ADD_ABC U197 ( .A(n18), .B(n13), .C(n179), .COUT(n177) );
  GTECH_OAI22 U198 ( .A(n18), .B(n175), .C(n172), .D(n180), .Z(
        mult_stepx_1__inst_N37) );
  GTECH_XOR3 U199 ( .A(n18), .B(n13), .C(n179), .Z(n180) );
  GTECH_ADD_ABC U200 ( .A(n17), .B(n12), .C(n181), .COUT(n179) );
  GTECH_OAI22 U201 ( .A(n17), .B(n175), .C(n182), .D(n172), .Z(
        mult_stepx_1__inst_N36) );
  GTECH_XOR3 U202 ( .A(n17), .B(n12), .C(n181), .Z(n182) );
  GTECH_NAND2 U203 ( .A(n183), .B(n184), .Z(n181) );
  GTECH_NOT U204 ( .A(n16), .Z(n184) );
  GTECH_OAI22 U205 ( .A(n16), .B(n175), .C(n185), .D(n172), .Z(
        mult_stepx_1__inst_N35) );
  GTECH_XOR2 U206 ( .A(n183), .B(n16), .Z(n185) );
  GTECH_OA21 U207 ( .A(n174), .B(n186), .C(mult_stepx_1__inst_N8), .Z(
        mult_stepx_1__inst_N34) );
  GTECH_NOT U208 ( .A(n175), .Z(n186) );
  GTECH_NAND2 U209 ( .A(n128), .B(rdy_t[0]), .Z(n175) );
  GTECH_NOT U210 ( .A(n172), .Z(n174) );
  GTECH_NAND2 U211 ( .A(rdy_t[0]), .B(n187), .Z(n172) );
  GTECH_NOT U212 ( .A(n128), .Z(n187) );
  GTECH_AND2 U213 ( .A(rdy_t[0]), .B(n188), .Z(mult_stepx_1__inst_N31) );
  GTECH_NOT U214 ( .A(n14), .Z(n188) );
  GTECH_AND2 U215 ( .A(rdy_t[0]), .B(n189), .Z(mult_stepx_1__inst_N30) );
  GTECH_NOT U216 ( .A(n13), .Z(n189) );
  GTECH_AND2 U217 ( .A(rdy_t[0]), .B(n190), .Z(mult_stepx_1__inst_N29) );
  GTECH_NOT U218 ( .A(n12), .Z(n190) );
  GTECH_AND2 U219 ( .A(rdy_t[0]), .B(n183), .Z(mult_stepx_1__inst_N28) );
  GTECH_NOT U220 ( .A(n11), .Z(n183) );
  GTECH_AND2 U221 ( .A(rdy_t[0]), .B(mult2_t[2]), .Z(mult_stepx_1__inst_N25)
         );
  GTECH_AND2 U222 ( .A(rdy_t[0]), .B(mult2_t[1]), .Z(mult_stepx_1__inst_N24)
         );
  GTECH_AND2 U223 ( .A(mult2[0]), .B(inst0_N30), .Z(inst0_N37) );
  GTECH_AND2 U224 ( .A(inst0_N29), .B(mult2[0]), .Z(inst0_N36) );
  GTECH_AND2 U225 ( .A(inst0_N28), .B(mult2[0]), .Z(inst0_N35) );
  GTECH_AND2 U226 ( .A(inst0_N27), .B(mult2[0]), .Z(inst0_N34) );
  GTECH_NOT U227 ( .A(n191), .Z(inst0_N30) );
  GTECH_NAND2 U228 ( .A(mult1[3]), .B(data_rdy), .Z(n191) );
  GTECH_NOT U229 ( .A(n192), .Z(inst0_N29) );
  GTECH_NAND2 U230 ( .A(mult1[2]), .B(data_rdy), .Z(n192) );
  GTECH_NOT U231 ( .A(n193), .Z(inst0_N28) );
  GTECH_NAND2 U232 ( .A(mult1[1]), .B(data_rdy), .Z(n193) );
  GTECH_NOT U233 ( .A(n194), .Z(inst0_N27) );
  GTECH_NAND2 U234 ( .A(mult1[0]), .B(data_rdy), .Z(n194) );
  GTECH_AND2 U235 ( .A(mult2[3]), .B(data_rdy), .Z(inst0_N26) );
  GTECH_AND2 U236 ( .A(mult2[2]), .B(data_rdy), .Z(inst0_N25) );
  GTECH_AND2 U237 ( .A(mult2[1]), .B(data_rdy), .Z(inst0_N24) );
endmodule

