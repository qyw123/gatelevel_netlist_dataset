
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
         n148;
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
  GTECH_ZERO U75 ( .Z(n100) );
  GTECH_ONE U76 ( .Z(n101) );
  GTECH_OR_NOT U77 ( .A(n14), .B(n72), .Z(n128) );
  GTECH_NOT U78 ( .A(n129), .Z(n72) );
  GTECH_NOR2 U79 ( .A(n124), .B(n130), .Z(mult_stepx_1__inst_N38) );
  GTECH_XNOR2 U80 ( .A(n14), .B(n129), .Z(n130) );
  GTECH_OAI2N2 U81 ( .A(n77), .B(n78), .C(n79), .D(n80), .Z(
        mult_stepx_3__inst_N41) );
  GTECH_XOR2 U82 ( .A(n80), .B(n81), .Z(n77) );
  GTECH_ADD_ABC U83 ( .A(n73), .B(n48), .C(n82), .COUT(n81) );
  GTECH_NOT U84 ( .A(n49), .Z(n80) );
  GTECH_OAI2N2 U85 ( .A(n78), .B(n83), .C(n79), .D(n84), .Z(
        mult_stepx_3__inst_N40) );
  GTECH_NOT U86 ( .A(n48), .Z(n84) );
  GTECH_XOR3 U87 ( .A(n73), .B(n48), .C(n82), .Z(n83) );
  GTECH_ADD_ABC U88 ( .A(n74), .B(n47), .C(n85), .COUT(n82) );
  GTECH_OAI2N2 U89 ( .A(n78), .B(n86), .C(n79), .D(n87), .Z(
        mult_stepx_3__inst_N39) );
  GTECH_NOT U90 ( .A(n47), .Z(n87) );
  GTECH_XOR3 U91 ( .A(n74), .B(n47), .C(n85), .Z(n86) );
  GTECH_ADD_ABC U92 ( .A(n75), .B(n46), .C(n88), .COUT(n85) );
  GTECH_OAI2N2 U93 ( .A(n89), .B(n78), .C(n79), .D(n90), .Z(
        mult_stepx_3__inst_N38) );
  GTECH_NOT U94 ( .A(n46), .Z(n90) );
  GTECH_XOR3 U95 ( .A(n75), .B(n46), .C(n88), .Z(n89) );
  GTECH_NAND2 U96 ( .A(n91), .B(n92), .Z(n88) );
  GTECH_NOT U97 ( .A(n76), .Z(n92) );
  GTECH_OAI2N2 U98 ( .A(n93), .B(n78), .C(n79), .D(n91), .Z(
        mult_stepx_3__inst_N37) );
  GTECH_NOT U99 ( .A(n94), .Z(n79) );
  GTECH_XOR2 U100 ( .A(n91), .B(n76), .Z(n93) );
  GTECH_NOT U101 ( .A(n45), .Z(n91) );
  GTECH_AND2 U102 ( .A(n95), .B(mult_stepx_3__inst_N10), .Z(
        mult_stepx_3__inst_N36) );
  GTECH_AND2 U103 ( .A(n95), .B(mult_stepx_3__inst_N9), .Z(
        mult_stepx_3__inst_N35) );
  GTECH_AND2 U104 ( .A(n95), .B(mult_stepx_3__inst_N8), .Z(
        mult_stepx_3__inst_N34) );
  GTECH_NAND2 U105 ( .A(n94), .B(n78), .Z(n95) );
  GTECH_NAND2 U106 ( .A(rdy_t[2]), .B(n96), .Z(n78) );
  GTECH_NOT U107 ( .A(n51), .Z(n96) );
  GTECH_NAND2 U108 ( .A(n51), .B(rdy_t[2]), .Z(n94) );
  GTECH_OAI2N2 U109 ( .A(n97), .B(n98), .C(n99), .D(n100), .Z(
        mult_stepx_2__inst_N41) );
  GTECH_MUX2 U110 ( .A(n100), .B(n101), .S(n101), .Z(n98) );
  GTECH_MUX2 U111 ( .A(n99), .B(n103), .S(n101), .Z(mult_stepx_2__inst_N40) );
  GTECH_AND_NOT U112 ( .A(n102), .B(n97), .Z(n103) );
  GTECH_OAI21 U113 ( .A(n97), .B(n102), .C(n104), .Z(n99) );
  GTECH_NOT U114 ( .A(n105), .Z(n102) );
  GTECH_ADD_ABC U115 ( .A(n36), .B(n30), .C(n106), .COUT(n105) );
  GTECH_OAI2N2 U116 ( .A(n97), .B(n107), .C(n108), .D(n109), .Z(
        mult_stepx_2__inst_N39) );
  GTECH_NOT U117 ( .A(n36), .Z(n109) );
  GTECH_XOR3 U118 ( .A(n36), .B(n30), .C(n106), .Z(n107) );
  GTECH_ADD_ABC U119 ( .A(n35), .B(n29), .C(n110), .COUT(n106) );
  GTECH_OAI2N2 U120 ( .A(n97), .B(n111), .C(n108), .D(n112), .Z(
        mult_stepx_2__inst_N38) );
  GTECH_NOT U121 ( .A(n35), .Z(n112) );
  GTECH_XOR3 U122 ( .A(n35), .B(n29), .C(n110), .Z(n111) );
  GTECH_ADD_ABC U123 ( .A(n34), .B(n28), .C(n113), .COUT(n110) );
  GTECH_OAI2N2 U124 ( .A(n114), .B(n97), .C(n108), .D(n115), .Z(
        mult_stepx_2__inst_N37) );
  GTECH_NOT U125 ( .A(n34), .Z(n115) );
  GTECH_XOR3 U126 ( .A(n34), .B(n28), .C(n113), .Z(n114) );
  GTECH_NAND2 U127 ( .A(n116), .B(n117), .Z(n113) );
  GTECH_OAI2N2 U128 ( .A(n118), .B(n97), .C(n108), .D(n117), .Z(
        mult_stepx_2__inst_N36) );
  GTECH_NOT U129 ( .A(n33), .Z(n117) );
  GTECH_NOT U130 ( .A(n104), .Z(n108) );
  GTECH_XOR2 U131 ( .A(n116), .B(n33), .Z(n118) );
  GTECH_AND2 U132 ( .A(n119), .B(mult_stepx_2__inst_N9), .Z(
        mult_stepx_2__inst_N35) );
  GTECH_AND2 U133 ( .A(n119), .B(mult_stepx_2__inst_N8), .Z(
        mult_stepx_2__inst_N34) );
  GTECH_NAND2 U134 ( .A(n104), .B(n97), .Z(n119) );
  GTECH_NAND2 U135 ( .A(rdy_t[1]), .B(n120), .Z(n97) );
  GTECH_NOT U136 ( .A(n40), .Z(n120) );
  GTECH_NAND2 U137 ( .A(n40), .B(rdy_t[1]), .Z(n104) );
  GTECH_AND2 U138 ( .A(rdy_t[1]), .B(n121), .Z(mult_stepx_2__inst_N32) );
  GTECH_NOT U139 ( .A(n30), .Z(n121) );
  GTECH_AND2 U140 ( .A(rdy_t[1]), .B(n122), .Z(mult_stepx_2__inst_N31) );
  GTECH_NOT U141 ( .A(n29), .Z(n122) );
  GTECH_AND2 U142 ( .A(rdy_t[1]), .B(n123), .Z(mult_stepx_2__inst_N30) );
  GTECH_NOT U143 ( .A(n28), .Z(n123) );
  GTECH_AND2 U144 ( .A(rdy_t[1]), .B(n116), .Z(mult_stepx_2__inst_N29) );
  GTECH_NOT U145 ( .A(n27), .Z(n116) );
  GTECH_AND2 U146 ( .A(rdy_t[1]), .B(mult2_t[4]), .Z(mult_stepx_2__inst_N24)
         );
  GTECH_AND2 U147 ( .A(n126), .B(n125), .Z(mult_stepx_1__inst_N39) );
  GTECH_NOT U148 ( .A(n128), .Z(n125) );
  GTECH_ADD_ABC U149 ( .A(n18), .B(n13), .C(n132), .COUT(n129) );
  GTECH_OAI2N2 U150 ( .A(n124), .B(n133), .C(n131), .D(n134), .Z(
        mult_stepx_1__inst_N37) );
  GTECH_NOT U151 ( .A(n18), .Z(n134) );
  GTECH_XOR3 U152 ( .A(n18), .B(n13), .C(n132), .Z(n133) );
  GTECH_ADD_ABC U153 ( .A(n17), .B(n12), .C(n135), .COUT(n132) );
  GTECH_OAI2N2 U154 ( .A(n136), .B(n124), .C(n131), .D(n137), .Z(
        mult_stepx_1__inst_N36) );
  GTECH_NOT U155 ( .A(n17), .Z(n137) );
  GTECH_XOR3 U156 ( .A(n17), .B(n12), .C(n135), .Z(n136) );
  GTECH_NAND2 U157 ( .A(n138), .B(n139), .Z(n135) );
  GTECH_OAI2N2 U158 ( .A(n140), .B(n124), .C(n131), .D(n139), .Z(
        mult_stepx_1__inst_N35) );
  GTECH_NOT U159 ( .A(n16), .Z(n139) );
  GTECH_XOR2 U160 ( .A(n138), .B(n16), .Z(n140) );
  GTECH_OA21 U161 ( .A(n126), .B(n131), .C(mult_stepx_1__inst_N8), .Z(
        mult_stepx_1__inst_N34) );
  GTECH_NOT U162 ( .A(n127), .Z(n131) );
  GTECH_NAND2 U163 ( .A(n24), .B(rdy_t[0]), .Z(n127) );
  GTECH_NOT U164 ( .A(n124), .Z(n126) );
  GTECH_NAND2 U165 ( .A(rdy_t[0]), .B(n141), .Z(n124) );
  GTECH_NOT U166 ( .A(n24), .Z(n141) );
  GTECH_AND2 U167 ( .A(rdy_t[0]), .B(n142), .Z(mult_stepx_1__inst_N31) );
  GTECH_NOT U168 ( .A(n14), .Z(n142) );
  GTECH_AND2 U169 ( .A(rdy_t[0]), .B(n143), .Z(mult_stepx_1__inst_N30) );
  GTECH_NOT U170 ( .A(n13), .Z(n143) );
  GTECH_AND2 U171 ( .A(rdy_t[0]), .B(n144), .Z(mult_stepx_1__inst_N29) );
  GTECH_NOT U172 ( .A(n12), .Z(n144) );
  GTECH_AND2 U173 ( .A(rdy_t[0]), .B(n138), .Z(mult_stepx_1__inst_N28) );
  GTECH_NOT U174 ( .A(n11), .Z(n138) );
  GTECH_AND2 U175 ( .A(rdy_t[0]), .B(mult2_t[2]), .Z(mult_stepx_1__inst_N25)
         );
  GTECH_AND2 U176 ( .A(rdy_t[0]), .B(mult2_t[1]), .Z(mult_stepx_1__inst_N24)
         );
  GTECH_AND2 U177 ( .A(mult2[0]), .B(inst0_N30), .Z(inst0_N37) );
  GTECH_AND2 U178 ( .A(inst0_N29), .B(mult2[0]), .Z(inst0_N36) );
  GTECH_AND2 U179 ( .A(inst0_N28), .B(mult2[0]), .Z(inst0_N35) );
  GTECH_AND2 U180 ( .A(inst0_N27), .B(mult2[0]), .Z(inst0_N34) );
  GTECH_NOT U181 ( .A(n145), .Z(inst0_N30) );
  GTECH_NAND2 U182 ( .A(mult1[3]), .B(data_rdy), .Z(n145) );
  GTECH_NOT U183 ( .A(n146), .Z(inst0_N29) );
  GTECH_NAND2 U184 ( .A(mult1[2]), .B(data_rdy), .Z(n146) );
  GTECH_NOT U185 ( .A(n147), .Z(inst0_N28) );
  GTECH_NAND2 U186 ( .A(mult1[1]), .B(data_rdy), .Z(n147) );
  GTECH_NOT U187 ( .A(n148), .Z(inst0_N27) );
  GTECH_NAND2 U188 ( .A(mult1[0]), .B(data_rdy), .Z(n148) );
  GTECH_AND2 U189 ( .A(mult2[3]), .B(data_rdy), .Z(inst0_N26) );
  GTECH_AND2 U190 ( .A(mult2[2]), .B(data_rdy), .Z(inst0_N25) );
  GTECH_AND2 U191 ( .A(mult2[1]), .B(data_rdy), .Z(inst0_N24) );
endmodule

