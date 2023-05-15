
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
         n48, n49, n51, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142;
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
        mult2_t[1]), .QN(n25) );
  GTECH_FD2 inst0_mult2_shift_reg_2_ ( .D(inst0_N26), .CP(clk), .CD(rstn), .Q(
        mult2_t[2]), .QN(n26) );
  GTECH_FD2 mult_stepx_1__inst_mult1_o_reg_2_ ( .D(mult_stepx_1__inst_N28), 
        .CP(clk), .CD(rstn), .Q(mult1_t[4]), .QN(n27) );
  GTECH_FD2 mult_stepx_1__inst_mult1_o_reg_3_ ( .D(mult_stepx_1__inst_N29), 
        .CP(clk), .CD(rstn), .Q(mult1_t[5]), .QN(n28) );
  GTECH_FD2 mult_stepx_1__inst_mult1_o_reg_4_ ( .D(mult_stepx_1__inst_N30), 
        .CP(clk), .CD(rstn), .Q(mult1_t[6]), .QN(n29) );
  GTECH_FD2 mult_stepx_1__inst_mult1_o_reg_5_ ( .D(mult_stepx_1__inst_N31), 
        .CP(clk), .CD(rstn), .Q(mult1_t[7]), .QN(n30) );
  GTECH_FD2 mult_stepx_1__inst_mult1_acco_reg_0_ ( .D(mult_stepx_1__inst_N34), 
        .CP(clk), .CD(rstn), .Q(mult_stepx_2__inst_N8), .QN(n31) );
  GTECH_FD2 mult_stepx_1__inst_mult1_acco_reg_1_ ( .D(mult_stepx_1__inst_N35), 
        .CP(clk), .CD(rstn), .Q(mult_stepx_2__inst_N9), .QN(n32) );
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
        .CP(clk), .CD(rstn), .Q(mult2_t[4]), .QN(n41) );
  GTECH_FD2 mult_stepx_2__inst_mult1_o_reg_3_ ( .D(mult_stepx_2__inst_N29), 
        .CP(clk), .CD(rstn), .Q(mult1_t[8]), .QN(n75) );
  GTECH_FD2 mult_stepx_2__inst_mult1_o_reg_4_ ( .D(mult_stepx_2__inst_N30), 
        .CP(clk), .CD(rstn), .Q(mult1_t[9]), .QN(n74) );
  GTECH_FD2 mult_stepx_2__inst_mult1_o_reg_5_ ( .D(mult_stepx_2__inst_N31), 
        .CP(clk), .CD(rstn), .Q(mult1_t[10]), .QN(n73) );
  GTECH_FD2 mult_stepx_2__inst_mult1_o_reg_6_ ( .D(mult_stepx_2__inst_N32), 
        .CP(clk), .CD(rstn), .Q(mult1_t[11]), .QN(n72) );
  GTECH_FD2 mult_stepx_2__inst_mult1_acco_reg_0_ ( .D(mult_stepx_2__inst_N34), 
        .CP(clk), .CD(rstn), .Q(mult_stepx_3__inst_N8), .QN(n42) );
  GTECH_FD2 mult_stepx_2__inst_mult1_acco_reg_1_ ( .D(mult_stepx_2__inst_N35), 
        .CP(clk), .CD(rstn), .Q(mult_stepx_3__inst_N9), .QN(n43) );
  GTECH_FD2 mult_stepx_2__inst_mult1_acco_reg_2_ ( .D(mult_stepx_2__inst_N36), 
        .CP(clk), .CD(rstn), .Q(mult_stepx_3__inst_N10), .QN(n44) );
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
  GTECH_ZERO U75 ( .Z(n99) );
  GTECH_ONE U76 ( .Z(n100) );
  GTECH_OR2 U77 ( .A(n14), .B(n124), .Z(n122) );
  GTECH_NOR2 U78 ( .A(n120), .B(n125), .Z(mult_stepx_1__inst_N38) );
  GTECH_XNOR2 U79 ( .A(n14), .B(n124), .Z(n125) );
  GTECH_OAI2N2 U80 ( .A(n76), .B(n77), .C(n78), .D(n79), .Z(
        mult_stepx_3__inst_N41) );
  GTECH_XOR2 U81 ( .A(n79), .B(n80), .Z(n76) );
  GTECH_ADD_ABC U82 ( .A(n72), .B(n48), .C(n81), .COUT(n80) );
  GTECH_NOT U83 ( .A(n49), .Z(n79) );
  GTECH_OAI2N2 U84 ( .A(n77), .B(n82), .C(n78), .D(n83), .Z(
        mult_stepx_3__inst_N40) );
  GTECH_NOT U85 ( .A(n48), .Z(n83) );
  GTECH_XOR3 U86 ( .A(n72), .B(n48), .C(n81), .Z(n82) );
  GTECH_ADD_ABC U87 ( .A(n73), .B(n47), .C(n84), .COUT(n81) );
  GTECH_OAI2N2 U88 ( .A(n77), .B(n85), .C(n78), .D(n86), .Z(
        mult_stepx_3__inst_N39) );
  GTECH_NOT U89 ( .A(n47), .Z(n86) );
  GTECH_XOR3 U90 ( .A(n73), .B(n47), .C(n84), .Z(n85) );
  GTECH_ADD_ABC U91 ( .A(n74), .B(n46), .C(n87), .COUT(n84) );
  GTECH_OAI2N2 U92 ( .A(n88), .B(n77), .C(n78), .D(n89), .Z(
        mult_stepx_3__inst_N38) );
  GTECH_NOT U93 ( .A(n46), .Z(n89) );
  GTECH_XOR3 U94 ( .A(n74), .B(n46), .C(n87), .Z(n88) );
  GTECH_NAND2 U95 ( .A(n90), .B(n91), .Z(n87) );
  GTECH_NOT U96 ( .A(n75), .Z(n91) );
  GTECH_OAI2N2 U97 ( .A(n92), .B(n77), .C(n78), .D(n90), .Z(
        mult_stepx_3__inst_N37) );
  GTECH_NOT U98 ( .A(n93), .Z(n78) );
  GTECH_XOR2 U99 ( .A(n90), .B(n75), .Z(n92) );
  GTECH_NOT U100 ( .A(n45), .Z(n90) );
  GTECH_AND_NOT U101 ( .A(n94), .B(n44), .Z(mult_stepx_3__inst_N36) );
  GTECH_AND_NOT U102 ( .A(n94), .B(n43), .Z(mult_stepx_3__inst_N35) );
  GTECH_AND_NOT U103 ( .A(n94), .B(n42), .Z(mult_stepx_3__inst_N34) );
  GTECH_NAND2 U104 ( .A(n93), .B(n77), .Z(n94) );
  GTECH_NAND2 U105 ( .A(rdy_t[2]), .B(n95), .Z(n77) );
  GTECH_NOT U106 ( .A(n51), .Z(n95) );
  GTECH_NAND2 U107 ( .A(n51), .B(rdy_t[2]), .Z(n93) );
  GTECH_OAI2N2 U108 ( .A(n96), .B(n97), .C(n98), .D(n99), .Z(
        mult_stepx_2__inst_N41) );
  GTECH_MUX2 U109 ( .A(n99), .B(n100), .S(n100), .Z(n97) );
  GTECH_MUX2 U110 ( .A(n98), .B(n102), .S(n100), .Z(mult_stepx_2__inst_N40) );
  GTECH_NOR2 U111 ( .A(n96), .B(n103), .Z(n102) );
  GTECH_OAI21 U112 ( .A(n96), .B(n101), .C(n104), .Z(n98) );
  GTECH_NOT U113 ( .A(n103), .Z(n101) );
  GTECH_ADD_ABC U114 ( .A(n36), .B(n30), .C(n105), .COUT(n103) );
  GTECH_OAI2N2 U115 ( .A(n96), .B(n106), .C(n107), .D(n108), .Z(
        mult_stepx_2__inst_N39) );
  GTECH_NOT U116 ( .A(n36), .Z(n108) );
  GTECH_XOR3 U117 ( .A(n36), .B(n30), .C(n105), .Z(n106) );
  GTECH_ADD_ABC U118 ( .A(n35), .B(n29), .C(n109), .COUT(n105) );
  GTECH_OAI2N2 U119 ( .A(n96), .B(n110), .C(n107), .D(n111), .Z(
        mult_stepx_2__inst_N38) );
  GTECH_NOT U120 ( .A(n35), .Z(n111) );
  GTECH_XOR3 U121 ( .A(n35), .B(n29), .C(n109), .Z(n110) );
  GTECH_ADD_ABC U122 ( .A(n34), .B(n28), .C(n112), .COUT(n109) );
  GTECH_OAI2N2 U123 ( .A(n113), .B(n96), .C(n107), .D(n114), .Z(
        mult_stepx_2__inst_N37) );
  GTECH_NOT U124 ( .A(n34), .Z(n114) );
  GTECH_XOR3 U125 ( .A(n34), .B(n28), .C(n112), .Z(n113) );
  GTECH_NAND2 U126 ( .A(n115), .B(n116), .Z(n112) );
  GTECH_OAI2N2 U127 ( .A(n117), .B(n96), .C(n107), .D(n116), .Z(
        mult_stepx_2__inst_N36) );
  GTECH_NOT U128 ( .A(n33), .Z(n116) );
  GTECH_NOT U129 ( .A(n104), .Z(n107) );
  GTECH_XOR2 U130 ( .A(n115), .B(n33), .Z(n117) );
  GTECH_NOT U131 ( .A(n27), .Z(n115) );
  GTECH_AND_NOT U132 ( .A(n118), .B(n32), .Z(mult_stepx_2__inst_N35) );
  GTECH_AND_NOT U133 ( .A(n118), .B(n31), .Z(mult_stepx_2__inst_N34) );
  GTECH_NAND2 U134 ( .A(n104), .B(n96), .Z(n118) );
  GTECH_NAND2 U135 ( .A(rdy_t[1]), .B(n119), .Z(n96) );
  GTECH_NOT U136 ( .A(n40), .Z(n119) );
  GTECH_NAND2 U137 ( .A(n40), .B(rdy_t[1]), .Z(n104) );
  GTECH_AND_NOT U138 ( .A(rdy_t[1]), .B(n30), .Z(mult_stepx_2__inst_N32) );
  GTECH_AND_NOT U139 ( .A(rdy_t[1]), .B(n29), .Z(mult_stepx_2__inst_N31) );
  GTECH_AND_NOT U140 ( .A(rdy_t[1]), .B(n28), .Z(mult_stepx_2__inst_N30) );
  GTECH_AND_NOT U141 ( .A(rdy_t[1]), .B(n27), .Z(mult_stepx_2__inst_N29) );
  GTECH_AND_NOT U142 ( .A(rdy_t[1]), .B(n41), .Z(mult_stepx_2__inst_N24) );
  GTECH_AND_NOT U143 ( .A(n121), .B(n122), .Z(mult_stepx_1__inst_N39) );
  GTECH_ADD_ABC U144 ( .A(n18), .B(n13), .C(n127), .COUT(n124) );
  GTECH_OAI2N2 U145 ( .A(n120), .B(n128), .C(n126), .D(n129), .Z(
        mult_stepx_1__inst_N37) );
  GTECH_NOT U146 ( .A(n18), .Z(n129) );
  GTECH_XOR3 U147 ( .A(n18), .B(n13), .C(n127), .Z(n128) );
  GTECH_ADD_ABC U148 ( .A(n17), .B(n12), .C(n130), .COUT(n127) );
  GTECH_OAI2N2 U149 ( .A(n131), .B(n120), .C(n126), .D(n132), .Z(
        mult_stepx_1__inst_N36) );
  GTECH_NOT U150 ( .A(n17), .Z(n132) );
  GTECH_XOR3 U151 ( .A(n17), .B(n12), .C(n130), .Z(n131) );
  GTECH_NAND2 U152 ( .A(n133), .B(n134), .Z(n130) );
  GTECH_OAI2N2 U153 ( .A(n135), .B(n120), .C(n126), .D(n134), .Z(
        mult_stepx_1__inst_N35) );
  GTECH_NOT U154 ( .A(n16), .Z(n134) );
  GTECH_XOR2 U155 ( .A(n133), .B(n16), .Z(n135) );
  GTECH_NOT U156 ( .A(n11), .Z(n133) );
  GTECH_OA21 U157 ( .A(n121), .B(n126), .C(mult_stepx_1__inst_N8), .Z(
        mult_stepx_1__inst_N34) );
  GTECH_NOT U158 ( .A(n123), .Z(n126) );
  GTECH_NAND2 U159 ( .A(n24), .B(rdy_t[0]), .Z(n123) );
  GTECH_NOT U160 ( .A(n120), .Z(n121) );
  GTECH_NAND2 U161 ( .A(rdy_t[0]), .B(n136), .Z(n120) );
  GTECH_NOT U162 ( .A(n24), .Z(n136) );
  GTECH_AND_NOT U163 ( .A(rdy_t[0]), .B(n14), .Z(mult_stepx_1__inst_N31) );
  GTECH_AND_NOT U164 ( .A(rdy_t[0]), .B(n13), .Z(mult_stepx_1__inst_N30) );
  GTECH_AND_NOT U165 ( .A(rdy_t[0]), .B(n12), .Z(mult_stepx_1__inst_N29) );
  GTECH_AND_NOT U166 ( .A(rdy_t[0]), .B(n11), .Z(mult_stepx_1__inst_N28) );
  GTECH_AND_NOT U167 ( .A(rdy_t[0]), .B(n26), .Z(mult_stepx_1__inst_N25) );
  GTECH_AND_NOT U168 ( .A(rdy_t[0]), .B(n25), .Z(mult_stepx_1__inst_N24) );
  GTECH_AND_NOT U169 ( .A(mult2[0]), .B(n137), .Z(inst0_N37) );
  GTECH_AND_NOT U170 ( .A(inst0_N29), .B(n138), .Z(inst0_N36) );
  GTECH_AND_NOT U171 ( .A(inst0_N28), .B(n138), .Z(inst0_N35) );
  GTECH_AND_NOT U172 ( .A(inst0_N27), .B(n138), .Z(inst0_N34) );
  GTECH_NOT U173 ( .A(mult2[0]), .Z(n138) );
  GTECH_NOT U174 ( .A(n137), .Z(inst0_N30) );
  GTECH_NAND2 U175 ( .A(mult1[3]), .B(data_rdy), .Z(n137) );
  GTECH_NOT U176 ( .A(n139), .Z(inst0_N29) );
  GTECH_NAND2 U177 ( .A(mult1[2]), .B(data_rdy), .Z(n139) );
  GTECH_NOT U178 ( .A(n140), .Z(inst0_N28) );
  GTECH_NAND2 U179 ( .A(mult1[1]), .B(data_rdy), .Z(n140) );
  GTECH_NOT U180 ( .A(n141), .Z(inst0_N27) );
  GTECH_NAND2 U181 ( .A(mult1[0]), .B(data_rdy), .Z(n141) );
  GTECH_AND_NOT U182 ( .A(mult2[3]), .B(n142), .Z(inst0_N26) );
  GTECH_AND_NOT U183 ( .A(mult2[2]), .B(n142), .Z(inst0_N25) );
  GTECH_AND_NOT U184 ( .A(mult2[1]), .B(n142), .Z(inst0_N24) );
  GTECH_NOT U185 ( .A(data_rdy), .Z(n142) );
endmodule

