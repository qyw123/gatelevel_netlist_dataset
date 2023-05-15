
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
         n35, n43, n44, n45, n46, n47, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147;
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
        mult2_t[0]), .QN(n74) );
  GTECH_FD2 inst0_mult2_shift_reg_1_ ( .D(inst0_N25), .CP(clk), .CD(rstn), .Q(
        mult2_t[1]) );
  GTECH_FD2 inst0_mult2_shift_reg_2_ ( .D(inst0_N26), .CP(clk), .CD(rstn), .Q(
        mult2_t[2]) );
  GTECH_FD2 mult_stepx_1__inst_mult1_o_reg_2_ ( .D(mult_stepx_1__inst_N28), 
        .CP(clk), .CD(rstn), .Q(mult1_t[4]), .QN(n26) );
  GTECH_FD2 mult_stepx_1__inst_mult1_o_reg_3_ ( .D(mult_stepx_1__inst_N29), 
        .CP(clk), .CD(rstn), .Q(mult1_t[5]), .QN(n27) );
  GTECH_FD2 mult_stepx_1__inst_mult1_o_reg_4_ ( .D(mult_stepx_1__inst_N30), 
        .CP(clk), .CD(rstn), .Q(mult1_t[6]), .QN(n28) );
  GTECH_FD2 mult_stepx_1__inst_mult1_o_reg_5_ ( .D(mult_stepx_1__inst_N31), 
        .CP(clk), .CD(rstn), .Q(mult1_t[7]), .QN(n29) );
  GTECH_FD2 mult_stepx_1__inst_mult1_acco_reg_0_ ( .D(mult_stepx_1__inst_N34), 
        .CP(clk), .CD(rstn), .Q(mult_stepx_2__inst_N8) );
  GTECH_FD2 mult_stepx_1__inst_mult1_acco_reg_1_ ( .D(mult_stepx_1__inst_N35), 
        .CP(clk), .CD(rstn), .Q(mult_stepx_2__inst_N9) );
  GTECH_FD2 mult_stepx_1__inst_mult1_acco_reg_2_ ( .D(mult_stepx_1__inst_N36), 
        .CP(clk), .CD(rstn), .Q(mult1_acc_t_1__2_), .QN(n32) );
  GTECH_FD2 mult_stepx_1__inst_mult1_acco_reg_3_ ( .D(mult_stepx_1__inst_N37), 
        .CP(clk), .CD(rstn), .Q(mult1_acc_t_1__3_), .QN(n33) );
  GTECH_FD2 mult_stepx_1__inst_mult1_acco_reg_4_ ( .D(mult_stepx_1__inst_N38), 
        .CP(clk), .CD(rstn), .Q(mult1_acc_t_1__4_), .QN(n34) );
  GTECH_FD2 mult_stepx_1__inst_mult1_acco_reg_5_ ( .D(mult_stepx_1__inst_N39), 
        .CP(clk), .CD(rstn), .Q(mult1_acc_t_1__5_), .QN(n35) );
  GTECH_FD2 mult_stepx_1__inst_rdy_reg ( .D(rdy_t[0]), .CP(clk), .CD(rstn), 
        .Q(rdy_t[1]) );
  GTECH_FD2 mult_stepx_1__inst_mult2_shift_reg_0_ ( .D(mult_stepx_1__inst_N24), 
        .CP(clk), .CD(rstn), .Q(mult2_t[3]), .QN(n73) );
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
        .CP(clk), .CD(rstn), .Q(mult1_acc_t_2__3_), .QN(n43) );
  GTECH_FD2 mult_stepx_2__inst_mult1_acco_reg_4_ ( .D(mult_stepx_2__inst_N38), 
        .CP(clk), .CD(rstn), .Q(mult1_acc_t_2__4_), .QN(n44) );
  GTECH_FD2 mult_stepx_2__inst_mult1_acco_reg_5_ ( .D(mult_stepx_2__inst_N39), 
        .CP(clk), .CD(rstn), .Q(mult1_acc_t_2__5_), .QN(n45) );
  GTECH_FD2 mult_stepx_2__inst_mult1_acco_reg_6_ ( .D(mult_stepx_2__inst_N40), 
        .CP(clk), .CD(rstn), .Q(mult1_acc_t_2__6_), .QN(n46) );
  GTECH_FD2 mult_stepx_2__inst_mult1_acco_reg_7_ ( .D(mult_stepx_2__inst_N41), 
        .CP(clk), .CD(rstn), .Q(mult1_acc_t_2__7_), .QN(n47) );
  GTECH_FD2 mult_stepx_2__inst_rdy_reg ( .D(rdy_t[1]), .CP(clk), .CD(rstn), 
        .Q(rdy_t[2]) );
  GTECH_FD2 mult_stepx_2__inst_mult2_shift_reg_0_ ( .D(mult_stepx_2__inst_N24), 
        .CP(clk), .CD(rstn), .Q(mult2_t[5]), .QN(n72) );
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
  GTECH_ZERO U78 ( .Z(n100) );
  GTECH_ONE U79 ( .Z(n101) );
  GTECH_NOR2 U80 ( .A(n14), .B(n128), .Z(n125) );
  GTECH_NOR2 U81 ( .A(n124), .B(n129), .Z(mult_stepx_1__inst_N38) );
  GTECH_XNOR2 U82 ( .A(n14), .B(n128), .Z(n129) );
  GTECH_OAI22 U83 ( .A(n47), .B(n79), .C(n80), .D(n81), .Z(
        mult_stepx_3__inst_N41) );
  GTECH_XOR2 U84 ( .A(n82), .B(n47), .Z(n80) );
  GTECH_OAI21 U85 ( .A(n75), .B(n46), .C(n83), .Z(n82) );
  GTECH_AO21 U86 ( .A(n46), .B(n75), .C(n84), .Z(n83) );
  GTECH_OAI22 U87 ( .A(n46), .B(n79), .C(n85), .D(n81), .Z(
        mult_stepx_3__inst_N40) );
  GTECH_XOR3 U88 ( .A(n75), .B(n46), .C(n84), .Z(n85) );
  GTECH_AO22 U89 ( .A(n86), .B(n87), .C(n45), .D(n76), .Z(n84) );
  GTECH_OR2 U90 ( .A(n45), .B(n76), .Z(n87) );
  GTECH_OAI22 U91 ( .A(n45), .B(n79), .C(n88), .D(n81), .Z(
        mult_stepx_3__inst_N39) );
  GTECH_XOR3 U92 ( .A(n76), .B(n45), .C(n86), .Z(n88) );
  GTECH_AO22 U93 ( .A(n89), .B(n90), .C(n44), .D(n77), .Z(n86) );
  GTECH_OR2 U94 ( .A(n44), .B(n77), .Z(n90) );
  GTECH_OAI22 U95 ( .A(n44), .B(n79), .C(n91), .D(n81), .Z(
        mult_stepx_3__inst_N38) );
  GTECH_XOR3 U96 ( .A(n77), .B(n44), .C(n89), .Z(n91) );
  GTECH_NAND2 U97 ( .A(n92), .B(n93), .Z(n89) );
  GTECH_NOT U98 ( .A(n78), .Z(n93) );
  GTECH_OAI22 U99 ( .A(n43), .B(n79), .C(n94), .D(n81), .Z(
        mult_stepx_3__inst_N37) );
  GTECH_XOR2 U100 ( .A(n92), .B(n78), .Z(n94) );
  GTECH_NOT U101 ( .A(n43), .Z(n92) );
  GTECH_AND2 U102 ( .A(n95), .B(mult_stepx_3__inst_N10), .Z(
        mult_stepx_3__inst_N36) );
  GTECH_AND2 U103 ( .A(n95), .B(mult_stepx_3__inst_N9), .Z(
        mult_stepx_3__inst_N35) );
  GTECH_AND2 U104 ( .A(n95), .B(mult_stepx_3__inst_N8), .Z(
        mult_stepx_3__inst_N34) );
  GTECH_NAND2 U105 ( .A(n79), .B(n81), .Z(n95) );
  GTECH_NAND2 U106 ( .A(rdy_t[2]), .B(n96), .Z(n81) );
  GTECH_NOT U107 ( .A(n72), .Z(n96) );
  GTECH_NAND2 U108 ( .A(n72), .B(rdy_t[2]), .Z(n79) );
  GTECH_OAI22 U109 ( .A(n101), .B(n97), .C(n98), .D(n99), .Z(
        mult_stepx_2__inst_N41) );
  GTECH_MUX2 U110 ( .A(n100), .B(n101), .S(n101), .Z(n99) );
  GTECH_NOT U111 ( .A(n103), .Z(n97) );
  GTECH_MUX2 U112 ( .A(n103), .B(n104), .S(n101), .Z(mult_stepx_2__inst_N40)
         );
  GTECH_AND2 U113 ( .A(n105), .B(n102), .Z(n104) );
  GTECH_NOT U114 ( .A(n98), .Z(n105) );
  GTECH_OAI21 U115 ( .A(n102), .B(n98), .C(n106), .Z(n103) );
  GTECH_AOI22 U116 ( .A(n35), .B(n29), .C(n107), .D(n108), .Z(n102) );
  GTECH_OR2 U117 ( .A(n29), .B(n35), .Z(n108) );
  GTECH_OAI22 U118 ( .A(n35), .B(n106), .C(n98), .D(n109), .Z(
        mult_stepx_2__inst_N39) );
  GTECH_XOR3 U119 ( .A(n35), .B(n29), .C(n107), .Z(n109) );
  GTECH_AOI2N2 U120 ( .A(n110), .B(n111), .C(n34), .D(n28), .Z(n107) );
  GTECH_NAND2 U121 ( .A(n34), .B(n28), .Z(n111) );
  GTECH_OAI22 U122 ( .A(n34), .B(n106), .C(n98), .D(n112), .Z(
        mult_stepx_2__inst_N38) );
  GTECH_XNOR3 U123 ( .A(n28), .B(n110), .C(n34), .Z(n112) );
  GTECH_OAI21 U124 ( .A(n33), .B(n27), .C(n113), .Z(n110) );
  GTECH_AO21 U125 ( .A(n33), .B(n27), .C(n114), .Z(n113) );
  GTECH_OAI22 U126 ( .A(n33), .B(n106), .C(n115), .D(n98), .Z(
        mult_stepx_2__inst_N37) );
  GTECH_XOR3 U127 ( .A(n33), .B(n27), .C(n114), .Z(n115) );
  GTECH_NAND2 U128 ( .A(n116), .B(n117), .Z(n114) );
  GTECH_NOT U129 ( .A(n32), .Z(n117) );
  GTECH_OAI22 U130 ( .A(n32), .B(n106), .C(n118), .D(n98), .Z(
        mult_stepx_2__inst_N36) );
  GTECH_XOR2 U131 ( .A(n116), .B(n32), .Z(n118) );
  GTECH_AND2 U132 ( .A(n119), .B(mult_stepx_2__inst_N9), .Z(
        mult_stepx_2__inst_N35) );
  GTECH_AND2 U133 ( .A(n119), .B(mult_stepx_2__inst_N8), .Z(
        mult_stepx_2__inst_N34) );
  GTECH_NAND2 U134 ( .A(n106), .B(n98), .Z(n119) );
  GTECH_NAND2 U135 ( .A(rdy_t[1]), .B(n120), .Z(n98) );
  GTECH_NOT U136 ( .A(n73), .Z(n120) );
  GTECH_NAND2 U137 ( .A(n73), .B(rdy_t[1]), .Z(n106) );
  GTECH_AND2 U138 ( .A(rdy_t[1]), .B(n121), .Z(mult_stepx_2__inst_N32) );
  GTECH_NOT U139 ( .A(n29), .Z(n121) );
  GTECH_AND2 U140 ( .A(rdy_t[1]), .B(n122), .Z(mult_stepx_2__inst_N31) );
  GTECH_NOT U141 ( .A(n28), .Z(n122) );
  GTECH_AND2 U142 ( .A(rdy_t[1]), .B(n123), .Z(mult_stepx_2__inst_N30) );
  GTECH_NOT U143 ( .A(n27), .Z(n123) );
  GTECH_AND2 U144 ( .A(rdy_t[1]), .B(n116), .Z(mult_stepx_2__inst_N29) );
  GTECH_NOT U145 ( .A(n26), .Z(n116) );
  GTECH_AND2 U146 ( .A(rdy_t[1]), .B(mult2_t[4]), .Z(mult_stepx_2__inst_N24)
         );
  GTECH_AND2 U147 ( .A(n126), .B(n125), .Z(mult_stepx_1__inst_N39) );
  GTECH_AOI2N2 U148 ( .A(n130), .B(n131), .C(n18), .D(n13), .Z(n128) );
  GTECH_NAND2 U149 ( .A(n18), .B(n13), .Z(n131) );
  GTECH_OAI22 U150 ( .A(n18), .B(n127), .C(n124), .D(n132), .Z(
        mult_stepx_1__inst_N37) );
  GTECH_XNOR3 U151 ( .A(n13), .B(n130), .C(n18), .Z(n132) );
  GTECH_OAI21 U152 ( .A(n17), .B(n12), .C(n133), .Z(n130) );
  GTECH_AO21 U153 ( .A(n17), .B(n12), .C(n134), .Z(n133) );
  GTECH_OAI22 U154 ( .A(n17), .B(n127), .C(n135), .D(n124), .Z(
        mult_stepx_1__inst_N36) );
  GTECH_XOR3 U155 ( .A(n17), .B(n12), .C(n134), .Z(n135) );
  GTECH_NAND2 U156 ( .A(n136), .B(n137), .Z(n134) );
  GTECH_NOT U157 ( .A(n16), .Z(n137) );
  GTECH_OAI22 U158 ( .A(n16), .B(n127), .C(n138), .D(n124), .Z(
        mult_stepx_1__inst_N35) );
  GTECH_XOR2 U159 ( .A(n136), .B(n16), .Z(n138) );
  GTECH_OA21 U160 ( .A(n126), .B(n139), .C(mult_stepx_1__inst_N8), .Z(
        mult_stepx_1__inst_N34) );
  GTECH_NOT U161 ( .A(n127), .Z(n139) );
  GTECH_NAND2 U162 ( .A(n74), .B(rdy_t[0]), .Z(n127) );
  GTECH_NOT U163 ( .A(n124), .Z(n126) );
  GTECH_NAND2 U164 ( .A(rdy_t[0]), .B(n140), .Z(n124) );
  GTECH_NOT U165 ( .A(n74), .Z(n140) );
  GTECH_AND2 U166 ( .A(rdy_t[0]), .B(n141), .Z(mult_stepx_1__inst_N31) );
  GTECH_NOT U167 ( .A(n14), .Z(n141) );
  GTECH_AND2 U168 ( .A(rdy_t[0]), .B(n142), .Z(mult_stepx_1__inst_N30) );
  GTECH_NOT U169 ( .A(n13), .Z(n142) );
  GTECH_AND2 U170 ( .A(rdy_t[0]), .B(n143), .Z(mult_stepx_1__inst_N29) );
  GTECH_NOT U171 ( .A(n12), .Z(n143) );
  GTECH_AND2 U172 ( .A(rdy_t[0]), .B(n136), .Z(mult_stepx_1__inst_N28) );
  GTECH_NOT U173 ( .A(n11), .Z(n136) );
  GTECH_AND2 U174 ( .A(rdy_t[0]), .B(mult2_t[2]), .Z(mult_stepx_1__inst_N25)
         );
  GTECH_AND2 U175 ( .A(rdy_t[0]), .B(mult2_t[1]), .Z(mult_stepx_1__inst_N24)
         );
  GTECH_AND2 U176 ( .A(mult2[0]), .B(inst0_N30), .Z(inst0_N37) );
  GTECH_AND2 U177 ( .A(inst0_N29), .B(mult2[0]), .Z(inst0_N36) );
  GTECH_AND2 U178 ( .A(inst0_N28), .B(mult2[0]), .Z(inst0_N35) );
  GTECH_AND2 U179 ( .A(inst0_N27), .B(mult2[0]), .Z(inst0_N34) );
  GTECH_NOT U180 ( .A(n144), .Z(inst0_N30) );
  GTECH_NAND2 U181 ( .A(mult1[3]), .B(data_rdy), .Z(n144) );
  GTECH_NOT U182 ( .A(n145), .Z(inst0_N29) );
  GTECH_NAND2 U183 ( .A(mult1[2]), .B(data_rdy), .Z(n145) );
  GTECH_NOT U184 ( .A(n146), .Z(inst0_N28) );
  GTECH_NAND2 U185 ( .A(mult1[1]), .B(data_rdy), .Z(n146) );
  GTECH_NOT U186 ( .A(n147), .Z(inst0_N27) );
  GTECH_NAND2 U187 ( .A(mult1[0]), .B(data_rdy), .Z(n147) );
  GTECH_AND2 U188 ( .A(mult2[3]), .B(data_rdy), .Z(inst0_N26) );
  GTECH_AND2 U189 ( .A(mult2[2]), .B(data_rdy), .Z(inst0_N25) );
  GTECH_AND2 U190 ( .A(mult2[1]), .B(data_rdy), .Z(inst0_N24) );
endmodule

