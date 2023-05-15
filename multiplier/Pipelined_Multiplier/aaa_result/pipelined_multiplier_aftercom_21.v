
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
         n137, n138;
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
  GTECH_ZERO U75 ( .Z(n95) );
  GTECH_ONE U76 ( .Z(n96) );
  GTECH_OR2 U77 ( .A(n14), .B(n121), .Z(n120) );
  GTECH_AND_NOT U78 ( .A(n72), .B(n122), .Z(mult_stepx_1__inst_N38) );
  GTECH_NOT U79 ( .A(n116), .Z(n72) );
  GTECH_XNOR2 U80 ( .A(n14), .B(n121), .Z(n122) );
  GTECH_OAI22 U81 ( .A(n49), .B(n77), .C(n78), .D(n79), .Z(
        mult_stepx_3__inst_N41) );
  GTECH_XNOR2 U82 ( .A(n49), .B(n80), .Z(n78) );
  GTECH_ADD_ABC U83 ( .A(n73), .B(n48), .C(n81), .COUT(n80) );
  GTECH_OAI22 U84 ( .A(n48), .B(n77), .C(n79), .D(n82), .Z(
        mult_stepx_3__inst_N40) );
  GTECH_XOR3 U85 ( .A(n73), .B(n48), .C(n81), .Z(n82) );
  GTECH_ADD_ABC U86 ( .A(n74), .B(n47), .C(n83), .COUT(n81) );
  GTECH_OAI22 U87 ( .A(n47), .B(n77), .C(n79), .D(n84), .Z(
        mult_stepx_3__inst_N39) );
  GTECH_XOR3 U88 ( .A(n74), .B(n47), .C(n83), .Z(n84) );
  GTECH_ADD_ABC U89 ( .A(n75), .B(n46), .C(n85), .COUT(n83) );
  GTECH_OAI22 U90 ( .A(n46), .B(n77), .C(n86), .D(n79), .Z(
        mult_stepx_3__inst_N38) );
  GTECH_XOR3 U91 ( .A(n75), .B(n46), .C(n85), .Z(n86) );
  GTECH_NAND2 U92 ( .A(n87), .B(n88), .Z(n85) );
  GTECH_NOT U93 ( .A(n76), .Z(n88) );
  GTECH_NOT U94 ( .A(n45), .Z(n87) );
  GTECH_OAI22 U95 ( .A(n45), .B(n77), .C(n89), .D(n79), .Z(
        mult_stepx_3__inst_N37) );
  GTECH_XNOR2 U96 ( .A(n76), .B(n45), .Z(n89) );
  GTECH_AND2 U97 ( .A(n90), .B(mult_stepx_3__inst_N10), .Z(
        mult_stepx_3__inst_N36) );
  GTECH_AND2 U98 ( .A(n90), .B(mult_stepx_3__inst_N9), .Z(
        mult_stepx_3__inst_N35) );
  GTECH_AND2 U99 ( .A(n90), .B(mult_stepx_3__inst_N8), .Z(
        mult_stepx_3__inst_N34) );
  GTECH_NAND2 U100 ( .A(n77), .B(n79), .Z(n90) );
  GTECH_NAND2 U101 ( .A(rdy_t[2]), .B(n91), .Z(n79) );
  GTECH_NOT U102 ( .A(n51), .Z(n91) );
  GTECH_NAND2 U103 ( .A(n51), .B(rdy_t[2]), .Z(n77) );
  GTECH_OAI22 U104 ( .A(n96), .B(n92), .C(n93), .D(n94), .Z(
        mult_stepx_2__inst_N41) );
  GTECH_MUX2 U105 ( .A(n95), .B(n96), .S(n96), .Z(n94) );
  GTECH_NOT U106 ( .A(n98), .Z(n92) );
  GTECH_MUX2 U107 ( .A(n98), .B(n99), .S(n96), .Z(mult_stepx_2__inst_N40) );
  GTECH_AND_NOT U108 ( .A(n97), .B(n93), .Z(n99) );
  GTECH_OAI21 U109 ( .A(n93), .B(n97), .C(n100), .Z(n98) );
  GTECH_NOT U110 ( .A(n101), .Z(n97) );
  GTECH_ADD_ABC U111 ( .A(n36), .B(n30), .C(n102), .COUT(n101) );
  GTECH_OAI22 U112 ( .A(n36), .B(n100), .C(n93), .D(n103), .Z(
        mult_stepx_2__inst_N39) );
  GTECH_XOR3 U113 ( .A(n36), .B(n30), .C(n102), .Z(n103) );
  GTECH_ADD_ABC U114 ( .A(n35), .B(n29), .C(n104), .COUT(n102) );
  GTECH_OAI22 U115 ( .A(n35), .B(n100), .C(n93), .D(n105), .Z(
        mult_stepx_2__inst_N38) );
  GTECH_XOR3 U116 ( .A(n35), .B(n29), .C(n104), .Z(n105) );
  GTECH_ADD_ABC U117 ( .A(n34), .B(n28), .C(n106), .COUT(n104) );
  GTECH_OAI22 U118 ( .A(n34), .B(n100), .C(n107), .D(n93), .Z(
        mult_stepx_2__inst_N37) );
  GTECH_XOR3 U119 ( .A(n34), .B(n28), .C(n106), .Z(n107) );
  GTECH_NAND2 U120 ( .A(n108), .B(n109), .Z(n106) );
  GTECH_NOT U121 ( .A(n33), .Z(n109) );
  GTECH_OAI22 U122 ( .A(n33), .B(n100), .C(n110), .D(n93), .Z(
        mult_stepx_2__inst_N36) );
  GTECH_XNOR2 U123 ( .A(n33), .B(n27), .Z(n110) );
  GTECH_AND2 U124 ( .A(n111), .B(mult_stepx_2__inst_N9), .Z(
        mult_stepx_2__inst_N35) );
  GTECH_AND2 U125 ( .A(n111), .B(mult_stepx_2__inst_N8), .Z(
        mult_stepx_2__inst_N34) );
  GTECH_NAND2 U126 ( .A(n100), .B(n93), .Z(n111) );
  GTECH_NAND2 U127 ( .A(rdy_t[1]), .B(n112), .Z(n93) );
  GTECH_NOT U128 ( .A(n40), .Z(n112) );
  GTECH_NAND2 U129 ( .A(n40), .B(rdy_t[1]), .Z(n100) );
  GTECH_AND2 U130 ( .A(rdy_t[1]), .B(n113), .Z(mult_stepx_2__inst_N32) );
  GTECH_NOT U131 ( .A(n30), .Z(n113) );
  GTECH_AND2 U132 ( .A(rdy_t[1]), .B(n114), .Z(mult_stepx_2__inst_N31) );
  GTECH_NOT U133 ( .A(n29), .Z(n114) );
  GTECH_AND2 U134 ( .A(rdy_t[1]), .B(n115), .Z(mult_stepx_2__inst_N30) );
  GTECH_NOT U135 ( .A(n28), .Z(n115) );
  GTECH_AND2 U136 ( .A(rdy_t[1]), .B(n108), .Z(mult_stepx_2__inst_N29) );
  GTECH_NOT U137 ( .A(n27), .Z(n108) );
  GTECH_AND2 U138 ( .A(rdy_t[1]), .B(mult2_t[4]), .Z(mult_stepx_2__inst_N24)
         );
  GTECH_AND2 U139 ( .A(n118), .B(n117), .Z(mult_stepx_1__inst_N39) );
  GTECH_NOT U140 ( .A(n120), .Z(n117) );
  GTECH_ADD_ABC U141 ( .A(n18), .B(n13), .C(n123), .COUT(n121) );
  GTECH_OAI22 U142 ( .A(n18), .B(n119), .C(n116), .D(n124), .Z(
        mult_stepx_1__inst_N37) );
  GTECH_XOR3 U143 ( .A(n18), .B(n13), .C(n123), .Z(n124) );
  GTECH_ADD_ABC U144 ( .A(n17), .B(n12), .C(n125), .COUT(n123) );
  GTECH_OAI22 U145 ( .A(n17), .B(n119), .C(n126), .D(n116), .Z(
        mult_stepx_1__inst_N36) );
  GTECH_XOR3 U146 ( .A(n17), .B(n12), .C(n125), .Z(n126) );
  GTECH_NAND2 U147 ( .A(n127), .B(n128), .Z(n125) );
  GTECH_NOT U148 ( .A(n16), .Z(n128) );
  GTECH_OAI22 U149 ( .A(n16), .B(n119), .C(n129), .D(n116), .Z(
        mult_stepx_1__inst_N35) );
  GTECH_XNOR2 U150 ( .A(n16), .B(n11), .Z(n129) );
  GTECH_OA21 U151 ( .A(n118), .B(n130), .C(mult_stepx_1__inst_N8), .Z(
        mult_stepx_1__inst_N34) );
  GTECH_NOT U152 ( .A(n119), .Z(n130) );
  GTECH_NAND2 U153 ( .A(n24), .B(rdy_t[0]), .Z(n119) );
  GTECH_NOT U154 ( .A(n116), .Z(n118) );
  GTECH_NAND2 U155 ( .A(rdy_t[0]), .B(n131), .Z(n116) );
  GTECH_NOT U156 ( .A(n24), .Z(n131) );
  GTECH_AND2 U157 ( .A(rdy_t[0]), .B(n132), .Z(mult_stepx_1__inst_N31) );
  GTECH_NOT U158 ( .A(n14), .Z(n132) );
  GTECH_AND2 U159 ( .A(rdy_t[0]), .B(n133), .Z(mult_stepx_1__inst_N30) );
  GTECH_NOT U160 ( .A(n13), .Z(n133) );
  GTECH_AND2 U161 ( .A(rdy_t[0]), .B(n134), .Z(mult_stepx_1__inst_N29) );
  GTECH_NOT U162 ( .A(n12), .Z(n134) );
  GTECH_AND2 U163 ( .A(rdy_t[0]), .B(n127), .Z(mult_stepx_1__inst_N28) );
  GTECH_NOT U164 ( .A(n11), .Z(n127) );
  GTECH_AND2 U165 ( .A(rdy_t[0]), .B(mult2_t[2]), .Z(mult_stepx_1__inst_N25)
         );
  GTECH_AND2 U166 ( .A(rdy_t[0]), .B(mult2_t[1]), .Z(mult_stepx_1__inst_N24)
         );
  GTECH_AND2 U167 ( .A(mult2[0]), .B(inst0_N30), .Z(inst0_N37) );
  GTECH_AND2 U168 ( .A(inst0_N29), .B(mult2[0]), .Z(inst0_N36) );
  GTECH_AND2 U169 ( .A(inst0_N28), .B(mult2[0]), .Z(inst0_N35) );
  GTECH_AND2 U170 ( .A(inst0_N27), .B(mult2[0]), .Z(inst0_N34) );
  GTECH_NOT U171 ( .A(n135), .Z(inst0_N30) );
  GTECH_NAND2 U172 ( .A(mult1[3]), .B(data_rdy), .Z(n135) );
  GTECH_NOT U173 ( .A(n136), .Z(inst0_N29) );
  GTECH_NAND2 U174 ( .A(mult1[2]), .B(data_rdy), .Z(n136) );
  GTECH_NOT U175 ( .A(n137), .Z(inst0_N28) );
  GTECH_NAND2 U176 ( .A(mult1[1]), .B(data_rdy), .Z(n137) );
  GTECH_NOT U177 ( .A(n138), .Z(inst0_N27) );
  GTECH_NAND2 U178 ( .A(mult1[0]), .B(data_rdy), .Z(n138) );
  GTECH_AND2 U179 ( .A(mult2[3]), .B(data_rdy), .Z(inst0_N26) );
  GTECH_AND2 U180 ( .A(mult2[2]), .B(data_rdy), .Z(inst0_N25) );
  GTECH_AND2 U181 ( .A(mult2[1]), .B(data_rdy), .Z(inst0_N24) );
endmodule

