
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
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146;
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
  GTECH_ZERO U75 ( .Z(n98) );
  GTECH_ONE U76 ( .Z(n99) );
  GTECH_AND_NOT U77 ( .A(n126), .B(n14), .Z(n123) );
  GTECH_NOR2 U78 ( .A(n122), .B(n127), .Z(mult_stepx_1__inst_N38) );
  GTECH_XOR2 U79 ( .A(n14), .B(n126), .Z(n127) );
  GTECH_OAI22 U80 ( .A(n49), .B(n76), .C(n77), .D(n78), .Z(
        mult_stepx_3__inst_N41) );
  GTECH_XOR2 U81 ( .A(n79), .B(n49), .Z(n77) );
  GTECH_OAI2N2 U82 ( .A(n72), .B(n48), .C(n80), .D(n81), .Z(n79) );
  GTECH_NAND2 U83 ( .A(n48), .B(n72), .Z(n81) );
  GTECH_OAI22 U84 ( .A(n48), .B(n76), .C(n78), .D(n82), .Z(
        mult_stepx_3__inst_N40) );
  GTECH_XNOR3 U85 ( .A(n72), .B(n48), .C(n80), .Z(n82) );
  GTECH_OAI2N2 U86 ( .A(n73), .B(n47), .C(n83), .D(n84), .Z(n80) );
  GTECH_NAND2 U87 ( .A(n47), .B(n73), .Z(n84) );
  GTECH_OAI22 U88 ( .A(n47), .B(n76), .C(n78), .D(n85), .Z(
        mult_stepx_3__inst_N39) );
  GTECH_XNOR3 U89 ( .A(n73), .B(n47), .C(n83), .Z(n85) );
  GTECH_OAI21 U90 ( .A(n74), .B(n46), .C(n86), .Z(n83) );
  GTECH_AO21 U91 ( .A(n46), .B(n74), .C(n87), .Z(n86) );
  GTECH_OAI22 U92 ( .A(n46), .B(n76), .C(n88), .D(n78), .Z(
        mult_stepx_3__inst_N38) );
  GTECH_XNOR3 U93 ( .A(n74), .B(n46), .C(n89), .Z(n88) );
  GTECH_NOT U94 ( .A(n87), .Z(n89) );
  GTECH_NAND2 U95 ( .A(n90), .B(n91), .Z(n87) );
  GTECH_NOT U96 ( .A(n75), .Z(n91) );
  GTECH_OAI22 U97 ( .A(n45), .B(n76), .C(n92), .D(n78), .Z(
        mult_stepx_3__inst_N37) );
  GTECH_XOR2 U98 ( .A(n90), .B(n75), .Z(n92) );
  GTECH_NOT U99 ( .A(n45), .Z(n90) );
  GTECH_AND2 U100 ( .A(n93), .B(mult_stepx_3__inst_N10), .Z(
        mult_stepx_3__inst_N36) );
  GTECH_AND2 U101 ( .A(n93), .B(mult_stepx_3__inst_N9), .Z(
        mult_stepx_3__inst_N35) );
  GTECH_AND2 U102 ( .A(n93), .B(mult_stepx_3__inst_N8), .Z(
        mult_stepx_3__inst_N34) );
  GTECH_NAND2 U103 ( .A(n76), .B(n78), .Z(n93) );
  GTECH_NAND2 U104 ( .A(rdy_t[2]), .B(n94), .Z(n78) );
  GTECH_NOT U105 ( .A(n51), .Z(n94) );
  GTECH_NAND2 U106 ( .A(n51), .B(rdy_t[2]), .Z(n76) );
  GTECH_OAI22 U107 ( .A(n99), .B(n95), .C(n96), .D(n97), .Z(
        mult_stepx_2__inst_N41) );
  GTECH_MUX2 U108 ( .A(n98), .B(n99), .S(n99), .Z(n97) );
  GTECH_NOT U109 ( .A(n101), .Z(n95) );
  GTECH_MUX2 U110 ( .A(n101), .B(n102), .S(n99), .Z(mult_stepx_2__inst_N40) );
  GTECH_AND_NOT U111 ( .A(n100), .B(n96), .Z(n102) );
  GTECH_OAI21 U112 ( .A(n96), .B(n100), .C(n103), .Z(n101) );
  GTECH_OAI2N2 U113 ( .A(n36), .B(n30), .C(n104), .D(n105), .Z(n100) );
  GTECH_NAND2 U114 ( .A(n36), .B(n30), .Z(n105) );
  GTECH_OAI22 U115 ( .A(n36), .B(n103), .C(n96), .D(n106), .Z(
        mult_stepx_2__inst_N39) );
  GTECH_XNOR3 U116 ( .A(n36), .B(n30), .C(n104), .Z(n106) );
  GTECH_OAI2N2 U117 ( .A(n35), .B(n29), .C(n107), .D(n108), .Z(n104) );
  GTECH_NAND2 U118 ( .A(n35), .B(n29), .Z(n108) );
  GTECH_OAI22 U119 ( .A(n35), .B(n103), .C(n96), .D(n109), .Z(
        mult_stepx_2__inst_N38) );
  GTECH_XNOR3 U120 ( .A(n35), .B(n29), .C(n107), .Z(n109) );
  GTECH_OAI21 U121 ( .A(n34), .B(n28), .C(n110), .Z(n107) );
  GTECH_AO21 U122 ( .A(n34), .B(n28), .C(n111), .Z(n110) );
  GTECH_OAI22 U123 ( .A(n34), .B(n103), .C(n112), .D(n96), .Z(
        mult_stepx_2__inst_N37) );
  GTECH_XNOR3 U124 ( .A(n34), .B(n28), .C(n113), .Z(n112) );
  GTECH_NOT U125 ( .A(n111), .Z(n113) );
  GTECH_NAND2 U126 ( .A(n114), .B(n115), .Z(n111) );
  GTECH_NOT U127 ( .A(n33), .Z(n115) );
  GTECH_OAI22 U128 ( .A(n33), .B(n103), .C(n116), .D(n96), .Z(
        mult_stepx_2__inst_N36) );
  GTECH_XOR2 U129 ( .A(n114), .B(n33), .Z(n116) );
  GTECH_AND2 U130 ( .A(n117), .B(mult_stepx_2__inst_N9), .Z(
        mult_stepx_2__inst_N35) );
  GTECH_AND2 U131 ( .A(n117), .B(mult_stepx_2__inst_N8), .Z(
        mult_stepx_2__inst_N34) );
  GTECH_NAND2 U132 ( .A(n103), .B(n96), .Z(n117) );
  GTECH_NAND2 U133 ( .A(rdy_t[1]), .B(n118), .Z(n96) );
  GTECH_NOT U134 ( .A(n40), .Z(n118) );
  GTECH_NAND2 U135 ( .A(n40), .B(rdy_t[1]), .Z(n103) );
  GTECH_AND2 U136 ( .A(rdy_t[1]), .B(n119), .Z(mult_stepx_2__inst_N32) );
  GTECH_NOT U137 ( .A(n30), .Z(n119) );
  GTECH_AND2 U138 ( .A(rdy_t[1]), .B(n120), .Z(mult_stepx_2__inst_N31) );
  GTECH_NOT U139 ( .A(n29), .Z(n120) );
  GTECH_AND2 U140 ( .A(rdy_t[1]), .B(n121), .Z(mult_stepx_2__inst_N30) );
  GTECH_NOT U141 ( .A(n28), .Z(n121) );
  GTECH_AND2 U142 ( .A(rdy_t[1]), .B(n114), .Z(mult_stepx_2__inst_N29) );
  GTECH_NOT U143 ( .A(n27), .Z(n114) );
  GTECH_AND2 U144 ( .A(rdy_t[1]), .B(mult2_t[4]), .Z(mult_stepx_2__inst_N24)
         );
  GTECH_AND2 U145 ( .A(n124), .B(n123), .Z(mult_stepx_1__inst_N39) );
  GTECH_OAI2N2 U146 ( .A(n18), .B(n13), .C(n128), .D(n129), .Z(n126) );
  GTECH_NAND2 U147 ( .A(n18), .B(n13), .Z(n129) );
  GTECH_OAI22 U148 ( .A(n18), .B(n125), .C(n122), .D(n130), .Z(
        mult_stepx_1__inst_N37) );
  GTECH_XNOR3 U149 ( .A(n18), .B(n13), .C(n128), .Z(n130) );
  GTECH_OAI21 U150 ( .A(n17), .B(n12), .C(n131), .Z(n128) );
  GTECH_AO21 U151 ( .A(n17), .B(n12), .C(n132), .Z(n131) );
  GTECH_OAI22 U152 ( .A(n17), .B(n125), .C(n133), .D(n122), .Z(
        mult_stepx_1__inst_N36) );
  GTECH_XNOR3 U153 ( .A(n17), .B(n12), .C(n134), .Z(n133) );
  GTECH_NOT U154 ( .A(n132), .Z(n134) );
  GTECH_NAND2 U155 ( .A(n135), .B(n136), .Z(n132) );
  GTECH_NOT U156 ( .A(n16), .Z(n136) );
  GTECH_OAI22 U157 ( .A(n16), .B(n125), .C(n137), .D(n122), .Z(
        mult_stepx_1__inst_N35) );
  GTECH_XOR2 U158 ( .A(n135), .B(n16), .Z(n137) );
  GTECH_OA21 U159 ( .A(n124), .B(n138), .C(mult_stepx_1__inst_N8), .Z(
        mult_stepx_1__inst_N34) );
  GTECH_NOT U160 ( .A(n125), .Z(n138) );
  GTECH_NAND2 U161 ( .A(n24), .B(rdy_t[0]), .Z(n125) );
  GTECH_NOT U162 ( .A(n122), .Z(n124) );
  GTECH_NAND2 U163 ( .A(rdy_t[0]), .B(n139), .Z(n122) );
  GTECH_NOT U164 ( .A(n24), .Z(n139) );
  GTECH_AND2 U165 ( .A(rdy_t[0]), .B(n140), .Z(mult_stepx_1__inst_N31) );
  GTECH_NOT U166 ( .A(n14), .Z(n140) );
  GTECH_AND2 U167 ( .A(rdy_t[0]), .B(n141), .Z(mult_stepx_1__inst_N30) );
  GTECH_NOT U168 ( .A(n13), .Z(n141) );
  GTECH_AND2 U169 ( .A(rdy_t[0]), .B(n142), .Z(mult_stepx_1__inst_N29) );
  GTECH_NOT U170 ( .A(n12), .Z(n142) );
  GTECH_AND2 U171 ( .A(rdy_t[0]), .B(n135), .Z(mult_stepx_1__inst_N28) );
  GTECH_NOT U172 ( .A(n11), .Z(n135) );
  GTECH_AND2 U173 ( .A(rdy_t[0]), .B(mult2_t[2]), .Z(mult_stepx_1__inst_N25)
         );
  GTECH_AND2 U174 ( .A(rdy_t[0]), .B(mult2_t[1]), .Z(mult_stepx_1__inst_N24)
         );
  GTECH_AND2 U175 ( .A(mult2[0]), .B(inst0_N30), .Z(inst0_N37) );
  GTECH_AND2 U176 ( .A(inst0_N29), .B(mult2[0]), .Z(inst0_N36) );
  GTECH_AND2 U177 ( .A(inst0_N28), .B(mult2[0]), .Z(inst0_N35) );
  GTECH_AND2 U178 ( .A(inst0_N27), .B(mult2[0]), .Z(inst0_N34) );
  GTECH_NOT U179 ( .A(n143), .Z(inst0_N30) );
  GTECH_NAND2 U180 ( .A(mult1[3]), .B(data_rdy), .Z(n143) );
  GTECH_NOT U181 ( .A(n144), .Z(inst0_N29) );
  GTECH_NAND2 U182 ( .A(mult1[2]), .B(data_rdy), .Z(n144) );
  GTECH_NOT U183 ( .A(n145), .Z(inst0_N28) );
  GTECH_NAND2 U184 ( .A(mult1[1]), .B(data_rdy), .Z(n145) );
  GTECH_NOT U185 ( .A(n146), .Z(inst0_N27) );
  GTECH_NAND2 U186 ( .A(mult1[0]), .B(data_rdy), .Z(n146) );
  GTECH_AND2 U187 ( .A(mult2[3]), .B(data_rdy), .Z(inst0_N26) );
  GTECH_AND2 U188 ( .A(mult2[2]), .B(data_rdy), .Z(inst0_N25) );
  GTECH_AND2 U189 ( .A(mult2[1]), .B(data_rdy), .Z(inst0_N24) );
endmodule

