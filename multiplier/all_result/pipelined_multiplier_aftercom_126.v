
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
         n137, n138, n139, n140, n141;
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
        .CP(clk), .CD(rstn), .Q(mult1_t[8]), .QN(n76) );
  GTECH_FD2 mult_stepx_2__inst_mult1_o_reg_4_ ( .D(mult_stepx_2__inst_N30), 
        .CP(clk), .CD(rstn), .Q(mult1_t[9]), .QN(n75) );
  GTECH_FD2 mult_stepx_2__inst_mult1_o_reg_5_ ( .D(mult_stepx_2__inst_N31), 
        .CP(clk), .CD(rstn), .Q(mult1_t[10]), .QN(n74) );
  GTECH_FD2 mult_stepx_2__inst_mult1_o_reg_6_ ( .D(mult_stepx_2__inst_N32), 
        .CP(clk), .CD(rstn), .Q(mult1_t[11]), .QN(n73) );
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
  GTECH_ZERO U75 ( .Z(n96) );
  GTECH_ONE U76 ( .Z(n97) );
  GTECH_OR2 U77 ( .A(n14), .B(n123), .Z(n121) );
  GTECH_NOR2 U78 ( .A(n125), .B(n126), .Z(mult_stepx_1__inst_N38) );
  GTECH_XOR2 U79 ( .A(n72), .B(n14), .Z(n126) );
  GTECH_NOT U80 ( .A(n123), .Z(n72) );
  GTECH_OAI22 U81 ( .A(n49), .B(n77), .C(n78), .D(n79), .Z(
        mult_stepx_3__inst_N41) );
  GTECH_XOR2 U82 ( .A(n80), .B(n81), .Z(n78) );
  GTECH_ADD_ABC U83 ( .A(n73), .B(n48), .C(n82), .COUT(n81) );
  GTECH_NOT U84 ( .A(n49), .Z(n80) );
  GTECH_OAI22 U85 ( .A(n48), .B(n77), .C(n79), .D(n83), .Z(
        mult_stepx_3__inst_N40) );
  GTECH_XOR3 U86 ( .A(n73), .B(n48), .C(n82), .Z(n83) );
  GTECH_ADD_ABC U87 ( .A(n74), .B(n47), .C(n84), .COUT(n82) );
  GTECH_OAI22 U88 ( .A(n47), .B(n77), .C(n79), .D(n85), .Z(
        mult_stepx_3__inst_N39) );
  GTECH_XOR3 U89 ( .A(n74), .B(n47), .C(n84), .Z(n85) );
  GTECH_ADD_ABC U90 ( .A(n75), .B(n46), .C(n86), .COUT(n84) );
  GTECH_OAI22 U91 ( .A(n46), .B(n77), .C(n87), .D(n79), .Z(
        mult_stepx_3__inst_N38) );
  GTECH_XOR3 U92 ( .A(n75), .B(n46), .C(n86), .Z(n87) );
  GTECH_NAND2 U93 ( .A(n88), .B(n89), .Z(n86) );
  GTECH_NOT U94 ( .A(n76), .Z(n89) );
  GTECH_OAI22 U95 ( .A(n45), .B(n77), .C(n90), .D(n79), .Z(
        mult_stepx_3__inst_N37) );
  GTECH_XOR2 U96 ( .A(n88), .B(n76), .Z(n90) );
  GTECH_NOT U97 ( .A(n45), .Z(n88) );
  GTECH_AND2 U98 ( .A(n91), .B(mult_stepx_3__inst_N10), .Z(
        mult_stepx_3__inst_N36) );
  GTECH_AND2 U99 ( .A(n91), .B(mult_stepx_3__inst_N9), .Z(
        mult_stepx_3__inst_N35) );
  GTECH_AND2 U100 ( .A(n91), .B(mult_stepx_3__inst_N8), .Z(
        mult_stepx_3__inst_N34) );
  GTECH_NAND2 U101 ( .A(n77), .B(n79), .Z(n91) );
  GTECH_NAND2 U102 ( .A(rdy_t[2]), .B(n92), .Z(n79) );
  GTECH_NOT U103 ( .A(n51), .Z(n92) );
  GTECH_NAND2 U104 ( .A(n51), .B(rdy_t[2]), .Z(n77) );
  GTECH_OAI22 U105 ( .A(n97), .B(n93), .C(n94), .D(n95), .Z(
        mult_stepx_2__inst_N41) );
  GTECH_MUX2 U106 ( .A(n96), .B(n97), .S(n97), .Z(n95) );
  GTECH_NOT U107 ( .A(n99), .Z(n93) );
  GTECH_MUX2 U108 ( .A(n99), .B(n100), .S(n97), .Z(mult_stepx_2__inst_N40) );
  GTECH_AND2 U109 ( .A(n101), .B(n98), .Z(n100) );
  GTECH_NOT U110 ( .A(n102), .Z(n98) );
  GTECH_AO21 U111 ( .A(n102), .B(n101), .C(n103), .Z(n99) );
  GTECH_NOT U112 ( .A(n104), .Z(n103) );
  GTECH_NOT U113 ( .A(n94), .Z(n101) );
  GTECH_ADD_ABC U114 ( .A(n36), .B(n30), .C(n105), .COUT(n102) );
  GTECH_OAI22 U115 ( .A(n36), .B(n104), .C(n94), .D(n106), .Z(
        mult_stepx_2__inst_N39) );
  GTECH_XOR3 U116 ( .A(n36), .B(n30), .C(n105), .Z(n106) );
  GTECH_ADD_ABC U117 ( .A(n35), .B(n29), .C(n107), .COUT(n105) );
  GTECH_OAI22 U118 ( .A(n35), .B(n104), .C(n94), .D(n108), .Z(
        mult_stepx_2__inst_N38) );
  GTECH_XOR3 U119 ( .A(n35), .B(n29), .C(n107), .Z(n108) );
  GTECH_ADD_ABC U120 ( .A(n34), .B(n28), .C(n109), .COUT(n107) );
  GTECH_OAI22 U121 ( .A(n34), .B(n104), .C(n110), .D(n94), .Z(
        mult_stepx_2__inst_N37) );
  GTECH_XOR3 U122 ( .A(n34), .B(n28), .C(n109), .Z(n110) );
  GTECH_NAND2 U123 ( .A(n111), .B(n112), .Z(n109) );
  GTECH_NOT U124 ( .A(n33), .Z(n112) );
  GTECH_OAI22 U125 ( .A(n33), .B(n104), .C(n113), .D(n94), .Z(
        mult_stepx_2__inst_N36) );
  GTECH_XOR2 U126 ( .A(n111), .B(n33), .Z(n113) );
  GTECH_AND2 U127 ( .A(n114), .B(mult_stepx_2__inst_N9), .Z(
        mult_stepx_2__inst_N35) );
  GTECH_AND2 U128 ( .A(n114), .B(mult_stepx_2__inst_N8), .Z(
        mult_stepx_2__inst_N34) );
  GTECH_NAND2 U129 ( .A(n104), .B(n94), .Z(n114) );
  GTECH_NAND2 U130 ( .A(rdy_t[1]), .B(n115), .Z(n94) );
  GTECH_NOT U131 ( .A(n40), .Z(n115) );
  GTECH_NAND2 U132 ( .A(n40), .B(rdy_t[1]), .Z(n104) );
  GTECH_AND2 U133 ( .A(rdy_t[1]), .B(n116), .Z(mult_stepx_2__inst_N32) );
  GTECH_NOT U134 ( .A(n30), .Z(n116) );
  GTECH_AND2 U135 ( .A(rdy_t[1]), .B(n117), .Z(mult_stepx_2__inst_N31) );
  GTECH_NOT U136 ( .A(n29), .Z(n117) );
  GTECH_AND2 U137 ( .A(rdy_t[1]), .B(n118), .Z(mult_stepx_2__inst_N30) );
  GTECH_NOT U138 ( .A(n28), .Z(n118) );
  GTECH_AND2 U139 ( .A(rdy_t[1]), .B(n111), .Z(mult_stepx_2__inst_N29) );
  GTECH_NOT U140 ( .A(n27), .Z(n111) );
  GTECH_AND2 U141 ( .A(rdy_t[1]), .B(mult2_t[4]), .Z(mult_stepx_2__inst_N24)
         );
  GTECH_AND2 U142 ( .A(n119), .B(n120), .Z(mult_stepx_1__inst_N39) );
  GTECH_NOT U143 ( .A(n121), .Z(n120) );
  GTECH_ADD_ABC U144 ( .A(n18), .B(n13), .C(n127), .COUT(n123) );
  GTECH_OAI22 U145 ( .A(n18), .B(n124), .C(n125), .D(n128), .Z(
        mult_stepx_1__inst_N37) );
  GTECH_XOR3 U146 ( .A(n18), .B(n13), .C(n127), .Z(n128) );
  GTECH_ADD_ABC U147 ( .A(n17), .B(n12), .C(n129), .COUT(n127) );
  GTECH_OAI22 U148 ( .A(n17), .B(n124), .C(n130), .D(n125), .Z(
        mult_stepx_1__inst_N36) );
  GTECH_XOR3 U149 ( .A(n17), .B(n12), .C(n129), .Z(n130) );
  GTECH_NAND2 U150 ( .A(n131), .B(n132), .Z(n129) );
  GTECH_NOT U151 ( .A(n16), .Z(n132) );
  GTECH_OAI22 U152 ( .A(n16), .B(n124), .C(n133), .D(n125), .Z(
        mult_stepx_1__inst_N35) );
  GTECH_XOR2 U153 ( .A(n131), .B(n16), .Z(n133) );
  GTECH_OA21 U154 ( .A(n119), .B(n122), .C(mult_stepx_1__inst_N8), .Z(
        mult_stepx_1__inst_N34) );
  GTECH_NOT U155 ( .A(n124), .Z(n122) );
  GTECH_NAND2 U156 ( .A(n24), .B(rdy_t[0]), .Z(n124) );
  GTECH_NOT U157 ( .A(n125), .Z(n119) );
  GTECH_NAND2 U158 ( .A(rdy_t[0]), .B(n134), .Z(n125) );
  GTECH_NOT U159 ( .A(n24), .Z(n134) );
  GTECH_AND2 U160 ( .A(rdy_t[0]), .B(n135), .Z(mult_stepx_1__inst_N31) );
  GTECH_NOT U161 ( .A(n14), .Z(n135) );
  GTECH_AND2 U162 ( .A(rdy_t[0]), .B(n136), .Z(mult_stepx_1__inst_N30) );
  GTECH_NOT U163 ( .A(n13), .Z(n136) );
  GTECH_AND2 U164 ( .A(rdy_t[0]), .B(n137), .Z(mult_stepx_1__inst_N29) );
  GTECH_NOT U165 ( .A(n12), .Z(n137) );
  GTECH_AND2 U166 ( .A(rdy_t[0]), .B(n131), .Z(mult_stepx_1__inst_N28) );
  GTECH_NOT U167 ( .A(n11), .Z(n131) );
  GTECH_AND2 U168 ( .A(rdy_t[0]), .B(mult2_t[2]), .Z(mult_stepx_1__inst_N25)
         );
  GTECH_AND2 U169 ( .A(rdy_t[0]), .B(mult2_t[1]), .Z(mult_stepx_1__inst_N24)
         );
  GTECH_AND2 U170 ( .A(mult2[0]), .B(inst0_N30), .Z(inst0_N37) );
  GTECH_AND2 U171 ( .A(inst0_N29), .B(mult2[0]), .Z(inst0_N36) );
  GTECH_AND2 U172 ( .A(inst0_N28), .B(mult2[0]), .Z(inst0_N35) );
  GTECH_AND2 U173 ( .A(inst0_N27), .B(mult2[0]), .Z(inst0_N34) );
  GTECH_NOT U174 ( .A(n138), .Z(inst0_N30) );
  GTECH_NAND2 U175 ( .A(mult1[3]), .B(data_rdy), .Z(n138) );
  GTECH_NOT U176 ( .A(n139), .Z(inst0_N29) );
  GTECH_NAND2 U177 ( .A(mult1[2]), .B(data_rdy), .Z(n139) );
  GTECH_NOT U178 ( .A(n140), .Z(inst0_N28) );
  GTECH_NAND2 U179 ( .A(mult1[1]), .B(data_rdy), .Z(n140) );
  GTECH_NOT U180 ( .A(n141), .Z(inst0_N27) );
  GTECH_NAND2 U181 ( .A(mult1[0]), .B(data_rdy), .Z(n141) );
  GTECH_AND2 U182 ( .A(mult2[3]), .B(data_rdy), .Z(inst0_N26) );
  GTECH_AND2 U183 ( .A(mult2[2]), .B(data_rdy), .Z(inst0_N25) );
  GTECH_AND2 U184 ( .A(mult2[1]), .B(data_rdy), .Z(inst0_N24) );
endmodule

