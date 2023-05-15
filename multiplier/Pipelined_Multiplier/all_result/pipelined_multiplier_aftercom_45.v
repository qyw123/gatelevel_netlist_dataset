
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
         n139, n140, n141, n142;
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
        .CP(clk), .CD(rstn), .Q(mult1_t[8]), .QN(n79) );
  GTECH_FD2 mult_stepx_2__inst_mult1_o_reg_4_ ( .D(mult_stepx_2__inst_N30), 
        .CP(clk), .CD(rstn), .Q(mult1_t[9]), .QN(n78) );
  GTECH_FD2 mult_stepx_2__inst_mult1_o_reg_5_ ( .D(mult_stepx_2__inst_N31), 
        .CP(clk), .CD(rstn), .Q(mult1_t[10]), .QN(n77) );
  GTECH_FD2 mult_stepx_2__inst_mult1_o_reg_6_ ( .D(mult_stepx_2__inst_N32), 
        .CP(clk), .CD(rstn), .Q(mult1_t[11]), .QN(n76) );
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
  GTECH_ZERO U78 ( .Z(n99) );
  GTECH_ONE U79 ( .Z(n100) );
  GTECH_OR2 U80 ( .A(n14), .B(n125), .Z(n124) );
  GTECH_NOR2 U81 ( .A(n120), .B(n126), .Z(mult_stepx_1__inst_N38) );
  GTECH_XOR2 U82 ( .A(n75), .B(n14), .Z(n126) );
  GTECH_NOT U83 ( .A(n125), .Z(n75) );
  GTECH_OAI22 U84 ( .A(n49), .B(n80), .C(n81), .D(n82), .Z(
        mult_stepx_3__inst_N41) );
  GTECH_XOR2 U85 ( .A(n83), .B(n84), .Z(n81) );
  GTECH_ADD_ABC U86 ( .A(n76), .B(n48), .C(n85), .COUT(n84) );
  GTECH_NOT U87 ( .A(n49), .Z(n83) );
  GTECH_OAI22 U88 ( .A(n48), .B(n80), .C(n82), .D(n86), .Z(
        mult_stepx_3__inst_N40) );
  GTECH_XOR3 U89 ( .A(n76), .B(n48), .C(n85), .Z(n86) );
  GTECH_ADD_ABC U90 ( .A(n77), .B(n47), .C(n87), .COUT(n85) );
  GTECH_OAI22 U91 ( .A(n47), .B(n80), .C(n82), .D(n88), .Z(
        mult_stepx_3__inst_N39) );
  GTECH_XOR3 U92 ( .A(n77), .B(n47), .C(n87), .Z(n88) );
  GTECH_ADD_ABC U93 ( .A(n78), .B(n46), .C(n89), .COUT(n87) );
  GTECH_OAI22 U94 ( .A(n46), .B(n80), .C(n90), .D(n82), .Z(
        mult_stepx_3__inst_N38) );
  GTECH_XOR3 U95 ( .A(n78), .B(n46), .C(n89), .Z(n90) );
  GTECH_OR_NOT U96 ( .A(n79), .B(n91), .Z(n89) );
  GTECH_OAI22 U97 ( .A(n45), .B(n80), .C(n92), .D(n82), .Z(
        mult_stepx_3__inst_N37) );
  GTECH_XOR2 U98 ( .A(n91), .B(n79), .Z(n92) );
  GTECH_NOT U99 ( .A(n45), .Z(n91) );
  GTECH_AND2 U100 ( .A(n93), .B(mult_stepx_3__inst_N10), .Z(
        mult_stepx_3__inst_N36) );
  GTECH_AND2 U101 ( .A(n93), .B(mult_stepx_3__inst_N9), .Z(
        mult_stepx_3__inst_N35) );
  GTECH_AND2 U102 ( .A(n93), .B(mult_stepx_3__inst_N8), .Z(
        mult_stepx_3__inst_N34) );
  GTECH_OR_NOT U103 ( .A(n94), .B(n80), .Z(n93) );
  GTECH_OR_NOT U104 ( .A(n95), .B(n51), .Z(n80) );
  GTECH_NOT U105 ( .A(rdy_t[2]), .Z(n95) );
  GTECH_NOT U106 ( .A(n82), .Z(n94) );
  GTECH_OR_NOT U107 ( .A(n51), .B(rdy_t[2]), .Z(n82) );
  GTECH_OAI22 U108 ( .A(n100), .B(n96), .C(n97), .D(n98), .Z(
        mult_stepx_2__inst_N41) );
  GTECH_MUX2 U109 ( .A(n99), .B(n100), .S(n100), .Z(n98) );
  GTECH_NOT U110 ( .A(n102), .Z(n96) );
  GTECH_MUX2 U111 ( .A(n102), .B(n103), .S(n100), .Z(mult_stepx_2__inst_N40)
         );
  GTECH_AND2 U112 ( .A(n104), .B(n101), .Z(n103) );
  GTECH_OAI21 U113 ( .A(n97), .B(n101), .C(n105), .Z(n102) );
  GTECH_NOT U114 ( .A(n106), .Z(n101) );
  GTECH_ADD_ABC U115 ( .A(n36), .B(n30), .C(n107), .COUT(n106) );
  GTECH_OAI22 U116 ( .A(n36), .B(n105), .C(n97), .D(n108), .Z(
        mult_stepx_2__inst_N39) );
  GTECH_XOR3 U117 ( .A(n36), .B(n30), .C(n107), .Z(n108) );
  GTECH_ADD_ABC U118 ( .A(n35), .B(n29), .C(n109), .COUT(n107) );
  GTECH_OAI22 U119 ( .A(n35), .B(n105), .C(n97), .D(n110), .Z(
        mult_stepx_2__inst_N38) );
  GTECH_XOR3 U120 ( .A(n35), .B(n29), .C(n109), .Z(n110) );
  GTECH_ADD_ABC U121 ( .A(n34), .B(n28), .C(n111), .COUT(n109) );
  GTECH_OAI22 U122 ( .A(n34), .B(n105), .C(n112), .D(n97), .Z(
        mult_stepx_2__inst_N37) );
  GTECH_XOR3 U123 ( .A(n34), .B(n28), .C(n111), .Z(n112) );
  GTECH_OR_NOT U124 ( .A(n33), .B(n113), .Z(n111) );
  GTECH_OAI22 U125 ( .A(n33), .B(n105), .C(n114), .D(n97), .Z(
        mult_stepx_2__inst_N36) );
  GTECH_XOR2 U126 ( .A(n113), .B(n33), .Z(n114) );
  GTECH_AND2 U127 ( .A(n115), .B(mult_stepx_2__inst_N9), .Z(
        mult_stepx_2__inst_N35) );
  GTECH_AND2 U128 ( .A(n115), .B(mult_stepx_2__inst_N8), .Z(
        mult_stepx_2__inst_N34) );
  GTECH_OR_NOT U129 ( .A(n104), .B(n105), .Z(n115) );
  GTECH_OR_NOT U130 ( .A(n116), .B(n40), .Z(n105) );
  GTECH_NOT U131 ( .A(rdy_t[1]), .Z(n116) );
  GTECH_NOT U132 ( .A(n97), .Z(n104) );
  GTECH_OR_NOT U133 ( .A(n40), .B(rdy_t[1]), .Z(n97) );
  GTECH_AND2 U134 ( .A(rdy_t[1]), .B(n117), .Z(mult_stepx_2__inst_N32) );
  GTECH_NOT U135 ( .A(n30), .Z(n117) );
  GTECH_AND2 U136 ( .A(rdy_t[1]), .B(n118), .Z(mult_stepx_2__inst_N31) );
  GTECH_NOT U137 ( .A(n29), .Z(n118) );
  GTECH_AND2 U138 ( .A(rdy_t[1]), .B(n119), .Z(mult_stepx_2__inst_N30) );
  GTECH_NOT U139 ( .A(n28), .Z(n119) );
  GTECH_AND2 U140 ( .A(rdy_t[1]), .B(n113), .Z(mult_stepx_2__inst_N29) );
  GTECH_NOT U141 ( .A(n27), .Z(n113) );
  GTECH_AND2 U142 ( .A(rdy_t[1]), .B(mult2_t[4]), .Z(mult_stepx_2__inst_N24)
         );
  GTECH_AND2 U143 ( .A(n122), .B(n121), .Z(mult_stepx_1__inst_N39) );
  GTECH_NOT U144 ( .A(n124), .Z(n121) );
  GTECH_ADD_ABC U145 ( .A(n18), .B(n13), .C(n127), .COUT(n125) );
  GTECH_OAI22 U146 ( .A(n18), .B(n123), .C(n120), .D(n128), .Z(
        mult_stepx_1__inst_N37) );
  GTECH_XOR3 U147 ( .A(n18), .B(n13), .C(n127), .Z(n128) );
  GTECH_ADD_ABC U148 ( .A(n17), .B(n12), .C(n129), .COUT(n127) );
  GTECH_OAI22 U149 ( .A(n17), .B(n123), .C(n130), .D(n120), .Z(
        mult_stepx_1__inst_N36) );
  GTECH_XOR3 U150 ( .A(n17), .B(n12), .C(n129), .Z(n130) );
  GTECH_OR_NOT U151 ( .A(n16), .B(n131), .Z(n129) );
  GTECH_OAI22 U152 ( .A(n16), .B(n123), .C(n132), .D(n120), .Z(
        mult_stepx_1__inst_N35) );
  GTECH_XOR2 U153 ( .A(n131), .B(n16), .Z(n132) );
  GTECH_OA21 U154 ( .A(n122), .B(n133), .C(mult_stepx_1__inst_N8), .Z(
        mult_stepx_1__inst_N34) );
  GTECH_NOT U155 ( .A(n123), .Z(n133) );
  GTECH_OR_NOT U156 ( .A(n134), .B(n24), .Z(n123) );
  GTECH_NOT U157 ( .A(rdy_t[0]), .Z(n134) );
  GTECH_NOT U158 ( .A(n120), .Z(n122) );
  GTECH_OR_NOT U159 ( .A(n24), .B(rdy_t[0]), .Z(n120) );
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
  GTECH_OR_NOT U175 ( .A(n139), .B(mult1[3]), .Z(n138) );
  GTECH_NOT U176 ( .A(n140), .Z(inst0_N29) );
  GTECH_OR_NOT U177 ( .A(n139), .B(mult1[2]), .Z(n140) );
  GTECH_NOT U178 ( .A(n141), .Z(inst0_N28) );
  GTECH_OR_NOT U179 ( .A(n139), .B(mult1[1]), .Z(n141) );
  GTECH_NOT U180 ( .A(n142), .Z(inst0_N27) );
  GTECH_OR_NOT U181 ( .A(n139), .B(mult1[0]), .Z(n142) );
  GTECH_NOT U182 ( .A(data_rdy), .Z(n139) );
  GTECH_AND2 U183 ( .A(mult2[3]), .B(data_rdy), .Z(inst0_N26) );
  GTECH_AND2 U184 ( .A(mult2[2]), .B(data_rdy), .Z(inst0_N25) );
  GTECH_AND2 U185 ( .A(mult2[1]), .B(data_rdy), .Z(inst0_N24) );
endmodule

