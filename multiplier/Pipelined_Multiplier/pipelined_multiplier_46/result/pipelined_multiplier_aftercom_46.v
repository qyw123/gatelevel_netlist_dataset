
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
         n35, n36, n40, n45, n46, n47, n48, n49, n51, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152;
  wire   [5:0] mult2_t;
  wire   [11:0] mult1_t;
  wire   [2:0] rdy_t;

  GTECH_FD2 inst0_mult1_o_reg_1_ ( .D(inst0_N27), .CP(clk), .CD(rstn), .Q(
        mult1_t[0]), .QN(n11) );
  GTECH_FD2 inst0_mult1_o_reg_2_ ( .D(inst0_N28), .CP(clk), .CD(rstn), .Q(
        mult1_t[1]), .QN(n12) );
  GTECH_FD2 inst0_mult1_o_reg_3_ ( .D(inst0_N29), .CP(clk), .CD(rstn), .Q(
        mult1_t[2]), .QN(n13) );
  GTECH_FD2 inst0_mult1_o_reg_4_ ( .D(inst0_N30), .CP(clk), .CD(rstn), .Q(
        mult1_t[3]), .QN(n14) );
  GTECH_FD2 inst0_mult1_acco_reg_0_ ( .D(inst0_N34), .CP(clk), .CD(rstn), .Q(
        mult_stepx_1__inst_N8) );
  GTECH_FD2 inst0_mult1_acco_reg_1_ ( .D(inst0_N35), .CP(clk), .CD(rstn), .Q(
        mult1_acc_t_0__1_), .QN(n16) );
  GTECH_FD2 inst0_mult1_acco_reg_2_ ( .D(inst0_N36), .CP(clk), .CD(rstn), .Q(
        mult1_acc_t_0__2_), .QN(n17) );
  GTECH_FD2 inst0_mult1_acco_reg_3_ ( .D(inst0_N37), .CP(clk), .CD(rstn), .Q(
        mult1_acc_t_0__3_), .QN(n18) );
  GTECH_FD2 inst0_rdy_reg ( .D(data_rdy), .CP(clk), .CD(rstn), .Q(rdy_t[0]) );
  GTECH_FD2 inst0_mult2_shift_reg_0_ ( .D(inst0_N24), .CP(clk), .CD(rstn), .Q(
        mult2_t[0]), .QN(n24) );
  GTECH_FD2 inst0_mult2_shift_reg_1_ ( .D(inst0_N25), .CP(clk), .CD(rstn), .Q(
        mult2_t[1]) );
  GTECH_FD2 inst0_mult2_shift_reg_2_ ( .D(inst0_N26), .CP(clk), .CD(rstn), .Q(
        mult2_t[2]) );
  GTECH_FD2 mult_stepx_1__inst_mult1_o_reg_2_ ( .D(mult_stepx_1__inst_N28), 
        .CP(clk), .CD(rstn), .Q(mult1_t[4]), .QN(n27) );
  GTECH_FD2 mult_stepx_1__inst_mult1_o_reg_3_ ( .D(mult_stepx_1__inst_N29), 
        .CP(clk), .CD(rstn), .Q(mult1_t[5]), .QN(n28) );
  GTECH_FD2 mult_stepx_1__inst_mult1_o_reg_4_ ( .D(mult_stepx_1__inst_N30), 
        .CP(clk), .CD(rstn), .Q(mult1_t[6]), .QN(n29) );
  GTECH_FD2 mult_stepx_1__inst_mult1_o_reg_5_ ( .D(mult_stepx_1__inst_N31), 
        .CP(clk), .CD(rstn), .Q(mult1_t[7]), .QN(n30) );
  GTECH_FD2 mult_stepx_1__inst_mult1_acco_reg_0_ ( .D(mult_stepx_1__inst_N34), 
        .CP(clk), .CD(rstn), .Q(mult_stepx_2__inst_N8) );
  GTECH_FD2 mult_stepx_1__inst_mult1_acco_reg_1_ ( .D(mult_stepx_1__inst_N35), 
        .CP(clk), .CD(rstn), .Q(mult_stepx_2__inst_N9) );
  GTECH_FD2 mult_stepx_1__inst_mult1_acco_reg_2_ ( .D(mult_stepx_1__inst_N36), 
        .CP(clk), .CD(rstn), .Q(mult1_acc_t_1__2_), .QN(n33) );
  GTECH_FD2 mult_stepx_1__inst_mult1_acco_reg_3_ ( .D(mult_stepx_1__inst_N37), 
        .CP(clk), .CD(rstn), .Q(mult1_acc_t_1__3_), .QN(n34) );
  GTECH_FD2 mult_stepx_1__inst_mult1_acco_reg_4_ ( .D(mult_stepx_1__inst_N38), 
        .CP(clk), .CD(rstn), .Q(mult1_acc_t_1__4_), .QN(n35) );
  GTECH_FD2 mult_stepx_1__inst_mult1_acco_reg_5_ ( .D(mult_stepx_1__inst_N39), 
        .CP(clk), .CD(rstn), .Q(mult1_acc_t_1__5_), .QN(n36) );
  GTECH_FD2 mult_stepx_1__inst_rdy_reg ( .D(rdy_t[0]), .CP(clk), .CD(rstn), 
        .Q(rdy_t[1]) );
  GTECH_FD2 mult_stepx_1__inst_mult2_shift_reg_0_ ( .D(mult_stepx_1__inst_N24), 
        .CP(clk), .CD(rstn), .Q(mult2_t[3]), .QN(n40) );
  GTECH_FD2 mult_stepx_1__inst_mult2_shift_reg_1_ ( .D(mult_stepx_1__inst_N25), 
        .CP(clk), .CD(rstn), .Q(mult2_t[4]) );
  GTECH_FD2 mult_stepx_2__inst_mult1_o_reg_3_ ( .D(mult_stepx_2__inst_N29), 
        .CP(clk), .CD(rstn), .Q(mult1_t[8]), .QN(n78) );
  GTECH_FD2 mult_stepx_2__inst_mult1_o_reg_4_ ( .D(mult_stepx_2__inst_N30), 
        .CP(clk), .CD(rstn), .Q(mult1_t[9]), .QN(n77) );
  GTECH_FD2 mult_stepx_2__inst_mult1_o_reg_5_ ( .D(mult_stepx_2__inst_N31), 
        .CP(clk), .CD(rstn), .Q(mult1_t[10]), .QN(n76) );
  GTECH_FD2 mult_stepx_2__inst_mult1_o_reg_6_ ( .D(mult_stepx_2__inst_N32), 
        .CP(clk), .CD(rstn), .Q(mult1_t[11]), .QN(n75) );
  GTECH_FD2 mult_stepx_2__inst_mult1_acco_reg_0_ ( .D(mult_stepx_2__inst_N34), 
        .CP(clk), .CD(rstn), .Q(mult_stepx_3__inst_N8) );
  GTECH_FD2 mult_stepx_2__inst_mult1_acco_reg_1_ ( .D(mult_stepx_2__inst_N35), 
        .CP(clk), .CD(rstn), .Q(mult_stepx_3__inst_N9) );
  GTECH_FD2 mult_stepx_2__inst_mult1_acco_reg_2_ ( .D(mult_stepx_2__inst_N36), 
        .CP(clk), .CD(rstn), .Q(mult_stepx_3__inst_N10) );
  GTECH_FD2 mult_stepx_2__inst_mult1_acco_reg_3_ ( .D(mult_stepx_2__inst_N37), 
        .CP(clk), .CD(rstn), .Q(mult1_acc_t_2__3_), .QN(n45) );
  GTECH_FD2 mult_stepx_2__inst_mult1_acco_reg_4_ ( .D(mult_stepx_2__inst_N38), 
        .CP(clk), .CD(rstn), .Q(mult1_acc_t_2__4_), .QN(n46) );
  GTECH_FD2 mult_stepx_2__inst_mult1_acco_reg_5_ ( .D(mult_stepx_2__inst_N39), 
        .CP(clk), .CD(rstn), .Q(mult1_acc_t_2__5_), .QN(n47) );
  GTECH_FD2 mult_stepx_2__inst_mult1_acco_reg_6_ ( .D(mult_stepx_2__inst_N40), 
        .CP(clk), .CD(rstn), .Q(mult1_acc_t_2__6_), .QN(n48) );
  GTECH_FD2 mult_stepx_2__inst_mult1_acco_reg_7_ ( .D(mult_stepx_2__inst_N41), 
        .CP(clk), .CD(rstn), .Q(mult1_acc_t_2__7_), .QN(n49) );
  GTECH_FD2 mult_stepx_2__inst_rdy_reg ( .D(rdy_t[1]), .CP(clk), .CD(rstn), 
        .Q(rdy_t[2]) );
  GTECH_FD2 mult_stepx_2__inst_mult2_shift_reg_0_ ( .D(mult_stepx_2__inst_N24), 
        .CP(clk), .CD(rstn), .Q(mult2_t[5]), .QN(n51) );
  GTECH_FD2 mult_stepx_3__inst_mult1_acco_reg_0_ ( .D(mult_stepx_3__inst_N34), 
        .CP(clk), .CD(rstn), .Q(res[0]) );
  GTECH_FD2 mult_stepx_3__inst_mult1_acco_reg_1_ ( .D(mult_stepx_3__inst_N35), 
        .CP(clk), .CD(rstn), .Q(res[1]) );
  GTECH_FD2 mult_stepx_3__inst_mult1_acco_reg_2_ ( .D(mult_stepx_3__inst_N36), 
        .CP(clk), .CD(rstn), .Q(res[2]) );
  GTECH_FD2 mult_stepx_3__inst_mult1_acco_reg_3_ ( .D(mult_stepx_3__inst_N37), 
        .CP(clk), .CD(rstn), .Q(res[3]) );
  GTECH_FD2 mult_stepx_3__inst_mult1_acco_reg_4_ ( .D(mult_stepx_3__inst_N38), 
        .CP(clk), .CD(rstn), .Q(res[4]) );
  GTECH_FD2 mult_stepx_3__inst_mult1_acco_reg_5_ ( .D(mult_stepx_3__inst_N39), 
        .CP(clk), .CD(rstn), .Q(res[5]) );
  GTECH_FD2 mult_stepx_3__inst_mult1_acco_reg_6_ ( .D(mult_stepx_3__inst_N40), 
        .CP(clk), .CD(rstn), .Q(res[6]) );
  GTECH_FD2 mult_stepx_3__inst_mult1_acco_reg_7_ ( .D(mult_stepx_3__inst_N41), 
        .CP(clk), .CD(rstn), .Q(res[7]) );
  GTECH_FD2 mult_stepx_3__inst_rdy_reg ( .D(rdy_t[2]), .CP(clk), .CD(rstn), 
        .Q(res_rdy) );
  GTECH_ZERO U78 ( .Z(n102) );
  GTECH_ONE U79 ( .Z(n103) );
  GTECH_OR2 U80 ( .A(n14), .B(n132), .Z(n131) );
  GTECH_NOR2 U81 ( .A(n127), .B(n133), .Z(mult_stepx_1__inst_N38) );
  GTECH_XNOR2 U82 ( .A(n14), .B(n132), .Z(n133) );
  GTECH_OAI2N2 U83 ( .A(n79), .B(n80), .C(n81), .D(n82), .Z(
        mult_stepx_3__inst_N41) );
  GTECH_XOR2 U84 ( .A(n82), .B(n83), .Z(n79) );
  GTECH_ADD_ABC U85 ( .A(n75), .B(n48), .C(n84), .COUT(n83) );
  GTECH_NOT U86 ( .A(n49), .Z(n82) );
  GTECH_OAI2N2 U87 ( .A(n80), .B(n85), .C(n81), .D(n86), .Z(
        mult_stepx_3__inst_N40) );
  GTECH_NOT U88 ( .A(n48), .Z(n86) );
  GTECH_XOR3 U89 ( .A(n75), .B(n48), .C(n84), .Z(n85) );
  GTECH_ADD_ABC U90 ( .A(n76), .B(n47), .C(n87), .COUT(n84) );
  GTECH_OAI2N2 U91 ( .A(n80), .B(n88), .C(n81), .D(n89), .Z(
        mult_stepx_3__inst_N39) );
  GTECH_NOT U92 ( .A(n47), .Z(n89) );
  GTECH_XOR3 U93 ( .A(n76), .B(n47), .C(n87), .Z(n88) );
  GTECH_ADD_ABC U94 ( .A(n77), .B(n46), .C(n90), .COUT(n87) );
  GTECH_OAI2N2 U95 ( .A(n91), .B(n80), .C(n81), .D(n92), .Z(
        mult_stepx_3__inst_N38) );
  GTECH_NOT U96 ( .A(n46), .Z(n92) );
  GTECH_XOR3 U97 ( .A(n77), .B(n46), .C(n90), .Z(n91) );
  GTECH_OR_NOT U98 ( .A(n78), .B(n93), .Z(n90) );
  GTECH_OAI2N2 U99 ( .A(n94), .B(n80), .C(n81), .D(n93), .Z(
        mult_stepx_3__inst_N37) );
  GTECH_NOT U100 ( .A(n95), .Z(n81) );
  GTECH_XOR2 U101 ( .A(n93), .B(n78), .Z(n94) );
  GTECH_NOT U102 ( .A(n45), .Z(n93) );
  GTECH_AND2 U103 ( .A(n96), .B(mult_stepx_3__inst_N10), .Z(
        mult_stepx_3__inst_N36) );
  GTECH_AND2 U104 ( .A(n96), .B(mult_stepx_3__inst_N9), .Z(
        mult_stepx_3__inst_N35) );
  GTECH_AND2 U105 ( .A(n96), .B(mult_stepx_3__inst_N8), .Z(
        mult_stepx_3__inst_N34) );
  GTECH_OR_NOT U106 ( .A(n97), .B(n95), .Z(n96) );
  GTECH_OR_NOT U107 ( .A(n98), .B(n51), .Z(n95) );
  GTECH_NOT U108 ( .A(rdy_t[2]), .Z(n98) );
  GTECH_NOT U109 ( .A(n80), .Z(n97) );
  GTECH_OR_NOT U110 ( .A(n51), .B(rdy_t[2]), .Z(n80) );
  GTECH_OAI2N2 U111 ( .A(n99), .B(n100), .C(n101), .D(n102), .Z(
        mult_stepx_2__inst_N41) );
  GTECH_MUX2 U112 ( .A(n102), .B(n103), .S(n103), .Z(n100) );
  GTECH_MUX2 U113 ( .A(n101), .B(n105), .S(n103), .Z(mult_stepx_2__inst_N40)
         );
  GTECH_AND2 U114 ( .A(n106), .B(n104), .Z(n105) );
  GTECH_OAI21 U115 ( .A(n99), .B(n104), .C(n107), .Z(n101) );
  GTECH_NOT U116 ( .A(n108), .Z(n104) );
  GTECH_ADD_ABC U117 ( .A(n36), .B(n30), .C(n109), .COUT(n108) );
  GTECH_OAI2N2 U118 ( .A(n99), .B(n110), .C(n111), .D(n112), .Z(
        mult_stepx_2__inst_N39) );
  GTECH_NOT U119 ( .A(n36), .Z(n112) );
  GTECH_XOR3 U120 ( .A(n36), .B(n30), .C(n109), .Z(n110) );
  GTECH_ADD_ABC U121 ( .A(n35), .B(n29), .C(n113), .COUT(n109) );
  GTECH_OAI2N2 U122 ( .A(n99), .B(n114), .C(n111), .D(n115), .Z(
        mult_stepx_2__inst_N38) );
  GTECH_NOT U123 ( .A(n35), .Z(n115) );
  GTECH_XOR3 U124 ( .A(n35), .B(n29), .C(n113), .Z(n114) );
  GTECH_ADD_ABC U125 ( .A(n34), .B(n28), .C(n116), .COUT(n113) );
  GTECH_OAI2N2 U126 ( .A(n117), .B(n99), .C(n111), .D(n118), .Z(
        mult_stepx_2__inst_N37) );
  GTECH_NOT U127 ( .A(n34), .Z(n118) );
  GTECH_XOR3 U128 ( .A(n34), .B(n28), .C(n116), .Z(n117) );
  GTECH_OR_NOT U129 ( .A(n33), .B(n119), .Z(n116) );
  GTECH_OAI2N2 U130 ( .A(n120), .B(n99), .C(n111), .D(n121), .Z(
        mult_stepx_2__inst_N36) );
  GTECH_NOT U131 ( .A(n33), .Z(n121) );
  GTECH_NOT U132 ( .A(n107), .Z(n111) );
  GTECH_XOR2 U133 ( .A(n119), .B(n33), .Z(n120) );
  GTECH_AND2 U134 ( .A(n122), .B(mult_stepx_2__inst_N9), .Z(
        mult_stepx_2__inst_N35) );
  GTECH_AND2 U135 ( .A(n122), .B(mult_stepx_2__inst_N8), .Z(
        mult_stepx_2__inst_N34) );
  GTECH_OR_NOT U136 ( .A(n106), .B(n107), .Z(n122) );
  GTECH_OR_NOT U137 ( .A(n123), .B(n40), .Z(n107) );
  GTECH_NOT U138 ( .A(rdy_t[1]), .Z(n123) );
  GTECH_NOT U139 ( .A(n99), .Z(n106) );
  GTECH_OR_NOT U140 ( .A(n40), .B(rdy_t[1]), .Z(n99) );
  GTECH_AND2 U141 ( .A(rdy_t[1]), .B(n124), .Z(mult_stepx_2__inst_N32) );
  GTECH_NOT U142 ( .A(n30), .Z(n124) );
  GTECH_AND2 U143 ( .A(rdy_t[1]), .B(n125), .Z(mult_stepx_2__inst_N31) );
  GTECH_NOT U144 ( .A(n29), .Z(n125) );
  GTECH_AND2 U145 ( .A(rdy_t[1]), .B(n126), .Z(mult_stepx_2__inst_N30) );
  GTECH_NOT U146 ( .A(n28), .Z(n126) );
  GTECH_AND2 U147 ( .A(rdy_t[1]), .B(n119), .Z(mult_stepx_2__inst_N29) );
  GTECH_NOT U148 ( .A(n27), .Z(n119) );
  GTECH_AND2 U149 ( .A(rdy_t[1]), .B(mult2_t[4]), .Z(mult_stepx_2__inst_N24)
         );
  GTECH_AND2 U150 ( .A(n129), .B(n128), .Z(mult_stepx_1__inst_N39) );
  GTECH_NOT U151 ( .A(n131), .Z(n128) );
  GTECH_ADD_ABC U152 ( .A(n18), .B(n13), .C(n135), .COUT(n132) );
  GTECH_OAI2N2 U153 ( .A(n127), .B(n136), .C(n134), .D(n137), .Z(
        mult_stepx_1__inst_N37) );
  GTECH_NOT U154 ( .A(n18), .Z(n137) );
  GTECH_XOR3 U155 ( .A(n18), .B(n13), .C(n135), .Z(n136) );
  GTECH_ADD_ABC U156 ( .A(n17), .B(n12), .C(n138), .COUT(n135) );
  GTECH_OAI2N2 U157 ( .A(n139), .B(n127), .C(n134), .D(n140), .Z(
        mult_stepx_1__inst_N36) );
  GTECH_NOT U158 ( .A(n17), .Z(n140) );
  GTECH_XOR3 U159 ( .A(n17), .B(n12), .C(n138), .Z(n139) );
  GTECH_OR_NOT U160 ( .A(n16), .B(n141), .Z(n138) );
  GTECH_OAI2N2 U161 ( .A(n142), .B(n127), .C(n134), .D(n143), .Z(
        mult_stepx_1__inst_N35) );
  GTECH_NOT U162 ( .A(n16), .Z(n143) );
  GTECH_XOR2 U163 ( .A(n141), .B(n16), .Z(n142) );
  GTECH_OA21 U164 ( .A(n129), .B(n134), .C(mult_stepx_1__inst_N8), .Z(
        mult_stepx_1__inst_N34) );
  GTECH_NOT U165 ( .A(n130), .Z(n134) );
  GTECH_OR_NOT U166 ( .A(n144), .B(n24), .Z(n130) );
  GTECH_NOT U167 ( .A(rdy_t[0]), .Z(n144) );
  GTECH_NOT U168 ( .A(n127), .Z(n129) );
  GTECH_OR_NOT U169 ( .A(n24), .B(rdy_t[0]), .Z(n127) );
  GTECH_AND2 U170 ( .A(rdy_t[0]), .B(n145), .Z(mult_stepx_1__inst_N31) );
  GTECH_NOT U171 ( .A(n14), .Z(n145) );
  GTECH_AND2 U172 ( .A(rdy_t[0]), .B(n146), .Z(mult_stepx_1__inst_N30) );
  GTECH_NOT U173 ( .A(n13), .Z(n146) );
  GTECH_AND2 U174 ( .A(rdy_t[0]), .B(n147), .Z(mult_stepx_1__inst_N29) );
  GTECH_NOT U175 ( .A(n12), .Z(n147) );
  GTECH_AND2 U176 ( .A(rdy_t[0]), .B(n141), .Z(mult_stepx_1__inst_N28) );
  GTECH_NOT U177 ( .A(n11), .Z(n141) );
  GTECH_AND2 U178 ( .A(rdy_t[0]), .B(mult2_t[2]), .Z(mult_stepx_1__inst_N25)
         );
  GTECH_AND2 U179 ( .A(rdy_t[0]), .B(mult2_t[1]), .Z(mult_stepx_1__inst_N24)
         );
  GTECH_AND2 U180 ( .A(mult2[0]), .B(inst0_N30), .Z(inst0_N37) );
  GTECH_AND2 U181 ( .A(inst0_N29), .B(mult2[0]), .Z(inst0_N36) );
  GTECH_AND2 U182 ( .A(inst0_N28), .B(mult2[0]), .Z(inst0_N35) );
  GTECH_AND2 U183 ( .A(inst0_N27), .B(mult2[0]), .Z(inst0_N34) );
  GTECH_NOT U184 ( .A(n148), .Z(inst0_N30) );
  GTECH_OR_NOT U185 ( .A(n149), .B(mult1[3]), .Z(n148) );
  GTECH_NOT U186 ( .A(n150), .Z(inst0_N29) );
  GTECH_OR_NOT U187 ( .A(n149), .B(mult1[2]), .Z(n150) );
  GTECH_NOT U188 ( .A(n151), .Z(inst0_N28) );
  GTECH_OR_NOT U189 ( .A(n149), .B(mult1[1]), .Z(n151) );
  GTECH_NOT U190 ( .A(n152), .Z(inst0_N27) );
  GTECH_OR_NOT U191 ( .A(n149), .B(mult1[0]), .Z(n152) );
  GTECH_NOT U192 ( .A(data_rdy), .Z(n149) );
  GTECH_AND2 U193 ( .A(mult2[3]), .B(data_rdy), .Z(inst0_N26) );
  GTECH_AND2 U194 ( .A(mult2[2]), .B(data_rdy), .Z(inst0_N25) );
  GTECH_AND2 U195 ( .A(mult2[1]), .B(data_rdy), .Z(inst0_N24) );
endmodule

