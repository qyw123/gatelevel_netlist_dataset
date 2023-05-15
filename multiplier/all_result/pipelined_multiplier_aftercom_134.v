
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
         n35, n36, n40, n45, n46, n47, n48, n49, n51, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154;
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
        .CP(clk), .CD(rstn), .Q(mult1_t[8]), .QN(n75) );
  GTECH_FD2 mult_stepx_2__inst_mult1_o_reg_4_ ( .D(mult_stepx_2__inst_N30), 
        .CP(clk), .CD(rstn), .Q(mult1_t[9]), .QN(n74) );
  GTECH_FD2 mult_stepx_2__inst_mult1_o_reg_5_ ( .D(mult_stepx_2__inst_N31), 
        .CP(clk), .CD(rstn), .Q(mult1_t[10]), .QN(n73) );
  GTECH_FD2 mult_stepx_2__inst_mult1_o_reg_6_ ( .D(mult_stepx_2__inst_N32), 
        .CP(clk), .CD(rstn), .Q(mult1_t[11]), .QN(n72) );
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
  GTECH_ZERO U75 ( .Z(n102) );
  GTECH_ONE U76 ( .Z(n103) );
  GTECH_AND2 U77 ( .A(n132), .B(n133), .Z(n129) );
  GTECH_NOT U78 ( .A(n134), .Z(n133) );
  GTECH_NOR2 U79 ( .A(n135), .B(n128), .Z(mult_stepx_1__inst_N38) );
  GTECH_XNOR2 U80 ( .A(n14), .B(n134), .Z(n135) );
  GTECH_NOT U81 ( .A(n76), .Z(mult_stepx_3__inst_N41) );
  GTECH_OA22 U82 ( .A(n49), .B(n77), .C(n78), .D(n79), .Z(n76) );
  GTECH_XOR2 U83 ( .A(n80), .B(n49), .Z(n78) );
  GTECH_OAI21 U84 ( .A(n72), .B(n48), .C(n81), .Z(n80) );
  GTECH_AO21 U85 ( .A(n72), .B(n48), .C(n82), .Z(n81) );
  GTECH_OAI2N2 U86 ( .A(n83), .B(n79), .C(n84), .D(n85), .Z(
        mult_stepx_3__inst_N40) );
  GTECH_NOT U87 ( .A(n48), .Z(n85) );
  GTECH_XOR3 U88 ( .A(n72), .B(n48), .C(n82), .Z(n83) );
  GTECH_AO22 U89 ( .A(n86), .B(n87), .C(n73), .D(n47), .Z(n82) );
  GTECH_OR2 U90 ( .A(n47), .B(n73), .Z(n87) );
  GTECH_OAI2N2 U91 ( .A(n88), .B(n79), .C(n84), .D(n89), .Z(
        mult_stepx_3__inst_N39) );
  GTECH_NOT U92 ( .A(n47), .Z(n89) );
  GTECH_XOR3 U93 ( .A(n73), .B(n47), .C(n86), .Z(n88) );
  GTECH_AO22 U94 ( .A(n90), .B(n91), .C(n74), .D(n46), .Z(n86) );
  GTECH_OR2 U95 ( .A(n46), .B(n74), .Z(n91) );
  GTECH_OAI2N2 U96 ( .A(n92), .B(n79), .C(n84), .D(n93), .Z(
        mult_stepx_3__inst_N38) );
  GTECH_NOT U97 ( .A(n46), .Z(n93) );
  GTECH_XOR3 U98 ( .A(n74), .B(n46), .C(n90), .Z(n92) );
  GTECH_NAND2 U99 ( .A(n94), .B(n95), .Z(n90) );
  GTECH_NOT U100 ( .A(n75), .Z(n95) );
  GTECH_OAI2N2 U101 ( .A(n96), .B(n79), .C(n84), .D(n94), .Z(
        mult_stepx_3__inst_N37) );
  GTECH_NOT U102 ( .A(n77), .Z(n84) );
  GTECH_XOR2 U103 ( .A(n94), .B(n75), .Z(n96) );
  GTECH_NOT U104 ( .A(n45), .Z(n94) );
  GTECH_AND2 U105 ( .A(n97), .B(mult_stepx_3__inst_N10), .Z(
        mult_stepx_3__inst_N36) );
  GTECH_AND2 U106 ( .A(n97), .B(mult_stepx_3__inst_N9), .Z(
        mult_stepx_3__inst_N35) );
  GTECH_AND2 U107 ( .A(n97), .B(mult_stepx_3__inst_N8), .Z(
        mult_stepx_3__inst_N34) );
  GTECH_NAND2 U108 ( .A(n77), .B(n79), .Z(n97) );
  GTECH_NAND2 U109 ( .A(rdy_t[2]), .B(n98), .Z(n79) );
  GTECH_NOT U110 ( .A(n51), .Z(n98) );
  GTECH_NAND2 U111 ( .A(n51), .B(rdy_t[2]), .Z(n77) );
  GTECH_OAI2N2 U112 ( .A(n99), .B(n100), .C(n101), .D(n102), .Z(
        mult_stepx_2__inst_N41) );
  GTECH_MUX2 U113 ( .A(n102), .B(n103), .S(n103), .Z(n100) );
  GTECH_MUX2 U114 ( .A(n101), .B(n105), .S(n103), .Z(mult_stepx_2__inst_N40)
         );
  GTECH_AND_NOT U115 ( .A(n104), .B(n99), .Z(n105) );
  GTECH_OAI21 U116 ( .A(n104), .B(n99), .C(n106), .Z(n101) );
  GTECH_OA21 U117 ( .A(n107), .B(n108), .C(n109), .Z(n104) );
  GTECH_OAI21 U118 ( .A(n30), .B(n36), .C(n110), .Z(n109) );
  GTECH_OAI2N2 U119 ( .A(n111), .B(n99), .C(n112), .D(n108), .Z(
        mult_stepx_2__inst_N39) );
  GTECH_NOT U120 ( .A(n36), .Z(n108) );
  GTECH_XOR3 U121 ( .A(n36), .B(n30), .C(n110), .Z(n111) );
  GTECH_OAI21 U122 ( .A(n113), .B(n114), .C(n115), .Z(n110) );
  GTECH_OAI21 U123 ( .A(n29), .B(n35), .C(n116), .Z(n115) );
  GTECH_OAI2N2 U124 ( .A(n117), .B(n99), .C(n112), .D(n114), .Z(
        mult_stepx_2__inst_N38) );
  GTECH_NOT U125 ( .A(n35), .Z(n114) );
  GTECH_XOR3 U126 ( .A(n35), .B(n29), .C(n116), .Z(n117) );
  GTECH_OAI21 U127 ( .A(n118), .B(n119), .C(n120), .Z(n116) );
  GTECH_OAI21 U128 ( .A(n28), .B(n34), .C(n121), .Z(n120) );
  GTECH_OAI2N2 U129 ( .A(n122), .B(n99), .C(n112), .D(n119), .Z(
        mult_stepx_2__inst_N37) );
  GTECH_NOT U130 ( .A(n34), .Z(n119) );
  GTECH_XOR3 U131 ( .A(n34), .B(n28), .C(n121), .Z(n122) );
  GTECH_NAND2 U132 ( .A(n123), .B(n124), .Z(n121) );
  GTECH_OAI2N2 U133 ( .A(n125), .B(n99), .C(n112), .D(n124), .Z(
        mult_stepx_2__inst_N36) );
  GTECH_NOT U134 ( .A(n33), .Z(n124) );
  GTECH_NOT U135 ( .A(n106), .Z(n112) );
  GTECH_XOR2 U136 ( .A(n123), .B(n33), .Z(n125) );
  GTECH_AND2 U137 ( .A(n126), .B(mult_stepx_2__inst_N9), .Z(
        mult_stepx_2__inst_N35) );
  GTECH_AND2 U138 ( .A(n126), .B(mult_stepx_2__inst_N8), .Z(
        mult_stepx_2__inst_N34) );
  GTECH_NAND2 U139 ( .A(n106), .B(n99), .Z(n126) );
  GTECH_NAND2 U140 ( .A(rdy_t[1]), .B(n127), .Z(n99) );
  GTECH_NOT U141 ( .A(n40), .Z(n127) );
  GTECH_NAND2 U142 ( .A(n40), .B(rdy_t[1]), .Z(n106) );
  GTECH_AND2 U143 ( .A(rdy_t[1]), .B(n107), .Z(mult_stepx_2__inst_N32) );
  GTECH_NOT U144 ( .A(n30), .Z(n107) );
  GTECH_AND2 U145 ( .A(rdy_t[1]), .B(n113), .Z(mult_stepx_2__inst_N31) );
  GTECH_NOT U146 ( .A(n29), .Z(n113) );
  GTECH_AND2 U147 ( .A(rdy_t[1]), .B(n118), .Z(mult_stepx_2__inst_N30) );
  GTECH_NOT U148 ( .A(n28), .Z(n118) );
  GTECH_AND2 U149 ( .A(rdy_t[1]), .B(n123), .Z(mult_stepx_2__inst_N29) );
  GTECH_NOT U150 ( .A(n27), .Z(n123) );
  GTECH_AND2 U151 ( .A(rdy_t[1]), .B(mult2_t[4]), .Z(mult_stepx_2__inst_N24)
         );
  GTECH_AND2 U152 ( .A(n130), .B(n129), .Z(mult_stepx_1__inst_N39) );
  GTECH_OAI21 U153 ( .A(n137), .B(n138), .C(n139), .Z(n134) );
  GTECH_OAI21 U154 ( .A(n13), .B(n18), .C(n140), .Z(n139) );
  GTECH_OAI2N2 U155 ( .A(n141), .B(n128), .C(n136), .D(n138), .Z(
        mult_stepx_1__inst_N37) );
  GTECH_NOT U156 ( .A(n18), .Z(n138) );
  GTECH_XOR3 U157 ( .A(n18), .B(n13), .C(n140), .Z(n141) );
  GTECH_OAI21 U158 ( .A(n142), .B(n143), .C(n144), .Z(n140) );
  GTECH_OAI21 U159 ( .A(n12), .B(n17), .C(n145), .Z(n144) );
  GTECH_OAI2N2 U160 ( .A(n146), .B(n128), .C(n136), .D(n143), .Z(
        mult_stepx_1__inst_N36) );
  GTECH_NOT U161 ( .A(n17), .Z(n143) );
  GTECH_XOR3 U162 ( .A(n17), .B(n12), .C(n145), .Z(n146) );
  GTECH_NAND2 U163 ( .A(n147), .B(n148), .Z(n145) );
  GTECH_OAI2N2 U164 ( .A(n149), .B(n128), .C(n136), .D(n148), .Z(
        mult_stepx_1__inst_N35) );
  GTECH_NOT U165 ( .A(n16), .Z(n148) );
  GTECH_XOR2 U166 ( .A(n147), .B(n16), .Z(n149) );
  GTECH_OA21 U167 ( .A(n130), .B(n136), .C(mult_stepx_1__inst_N8), .Z(
        mult_stepx_1__inst_N34) );
  GTECH_NOT U168 ( .A(n131), .Z(n136) );
  GTECH_NAND2 U169 ( .A(n24), .B(rdy_t[0]), .Z(n131) );
  GTECH_NOT U170 ( .A(n128), .Z(n130) );
  GTECH_NAND2 U171 ( .A(rdy_t[0]), .B(n150), .Z(n128) );
  GTECH_NOT U172 ( .A(n24), .Z(n150) );
  GTECH_AND2 U173 ( .A(rdy_t[0]), .B(n132), .Z(mult_stepx_1__inst_N31) );
  GTECH_NOT U174 ( .A(n14), .Z(n132) );
  GTECH_AND2 U175 ( .A(rdy_t[0]), .B(n137), .Z(mult_stepx_1__inst_N30) );
  GTECH_NOT U176 ( .A(n13), .Z(n137) );
  GTECH_AND2 U177 ( .A(rdy_t[0]), .B(n142), .Z(mult_stepx_1__inst_N29) );
  GTECH_NOT U178 ( .A(n12), .Z(n142) );
  GTECH_AND2 U179 ( .A(rdy_t[0]), .B(n147), .Z(mult_stepx_1__inst_N28) );
  GTECH_NOT U180 ( .A(n11), .Z(n147) );
  GTECH_AND2 U181 ( .A(rdy_t[0]), .B(mult2_t[2]), .Z(mult_stepx_1__inst_N25)
         );
  GTECH_AND2 U182 ( .A(rdy_t[0]), .B(mult2_t[1]), .Z(mult_stepx_1__inst_N24)
         );
  GTECH_AND2 U183 ( .A(mult2[0]), .B(inst0_N30), .Z(inst0_N37) );
  GTECH_AND2 U184 ( .A(inst0_N29), .B(mult2[0]), .Z(inst0_N36) );
  GTECH_AND2 U185 ( .A(inst0_N28), .B(mult2[0]), .Z(inst0_N35) );
  GTECH_AND2 U186 ( .A(inst0_N27), .B(mult2[0]), .Z(inst0_N34) );
  GTECH_NOT U187 ( .A(n151), .Z(inst0_N30) );
  GTECH_NAND2 U188 ( .A(mult1[3]), .B(data_rdy), .Z(n151) );
  GTECH_NOT U189 ( .A(n152), .Z(inst0_N29) );
  GTECH_NAND2 U190 ( .A(mult1[2]), .B(data_rdy), .Z(n152) );
  GTECH_NOT U191 ( .A(n153), .Z(inst0_N28) );
  GTECH_NAND2 U192 ( .A(mult1[1]), .B(data_rdy), .Z(n153) );
  GTECH_NOT U193 ( .A(n154), .Z(inst0_N27) );
  GTECH_NAND2 U194 ( .A(mult1[0]), .B(data_rdy), .Z(n154) );
  GTECH_AND2 U195 ( .A(mult2[3]), .B(data_rdy), .Z(inst0_N26) );
  GTECH_AND2 U196 ( .A(mult2[2]), .B(data_rdy), .Z(inst0_N25) );
  GTECH_AND2 U197 ( .A(mult2[1]), .B(data_rdy), .Z(inst0_N24) );
endmodule

