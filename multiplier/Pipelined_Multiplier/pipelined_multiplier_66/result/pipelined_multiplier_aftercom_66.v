
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
         n91, n92, n93, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n138, n139;
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
  GTECH_ONE U75 ( .Z(n95) );
  GTECH_OR2 U77 ( .A(n14), .B(n121), .Z(n119) );
  GTECH_NOR2 U78 ( .A(n123), .B(n124), .Z(mult_stepx_1__inst_N38) );
  GTECH_XNOR2 U79 ( .A(n14), .B(n121), .Z(n124) );
  GTECH_OAI22 U80 ( .A(n49), .B(n76), .C(n77), .D(n78), .Z(
        mult_stepx_3__inst_N41) );
  GTECH_XNOR2 U81 ( .A(n49), .B(n79), .Z(n78) );
  GTECH_ADD_ABC U82 ( .A(n80), .B(n48), .C(n72), .COUT(n79) );
  GTECH_OAI22 U83 ( .A(n48), .B(n76), .C(n77), .D(n81), .Z(
        mult_stepx_3__inst_N40) );
  GTECH_XOR3 U84 ( .A(n72), .B(n48), .C(n80), .Z(n81) );
  GTECH_ADD_ABC U85 ( .A(n73), .B(n47), .C(n82), .COUT(n80) );
  GTECH_OAI22 U86 ( .A(n47), .B(n76), .C(n77), .D(n83), .Z(
        mult_stepx_3__inst_N39) );
  GTECH_XOR3 U87 ( .A(n73), .B(n47), .C(n82), .Z(n83) );
  GTECH_ADD_ABC U88 ( .A(n74), .B(n46), .C(n84), .COUT(n82) );
  GTECH_OAI22 U89 ( .A(n46), .B(n76), .C(n85), .D(n77), .Z(
        mult_stepx_3__inst_N38) );
  GTECH_XOR3 U90 ( .A(n74), .B(n46), .C(n84), .Z(n85) );
  GTECH_NAND2 U91 ( .A(n86), .B(n87), .Z(n84) );
  GTECH_NOT U92 ( .A(n75), .Z(n87) );
  GTECH_OAI22 U93 ( .A(n45), .B(n76), .C(n88), .D(n77), .Z(
        mult_stepx_3__inst_N37) );
  GTECH_XOR2 U94 ( .A(n86), .B(n75), .Z(n88) );
  GTECH_NOT U95 ( .A(n45), .Z(n86) );
  GTECH_AND2 U96 ( .A(n89), .B(mult_stepx_3__inst_N10), .Z(
        mult_stepx_3__inst_N36) );
  GTECH_AND2 U97 ( .A(n89), .B(mult_stepx_3__inst_N9), .Z(
        mult_stepx_3__inst_N35) );
  GTECH_AND2 U98 ( .A(n89), .B(mult_stepx_3__inst_N8), .Z(
        mult_stepx_3__inst_N34) );
  GTECH_NAND2 U99 ( .A(n76), .B(n77), .Z(n89) );
  GTECH_NAND2 U100 ( .A(rdy_t[2]), .B(n90), .Z(n77) );
  GTECH_NOT U101 ( .A(n51), .Z(n90) );
  GTECH_NAND2 U102 ( .A(n51), .B(rdy_t[2]), .Z(n76) );
  GTECH_OAI22 U103 ( .A(n95), .B(n91), .C(n92), .D(n93), .Z(
        mult_stepx_2__inst_N41) );
  GTECH_MUX2 U104 ( .A(1'b0), .B(n95), .S(n95), .Z(n93) );
  GTECH_NOT U105 ( .A(n97), .Z(n91) );
  GTECH_MUX2 U106 ( .A(n97), .B(n98), .S(n95), .Z(mult_stepx_2__inst_N40) );
  GTECH_AND2 U107 ( .A(n99), .B(n96), .Z(n98) );
  GTECH_NOT U108 ( .A(n100), .Z(n96) );
  GTECH_AO21 U109 ( .A(n100), .B(n99), .C(n101), .Z(n97) );
  GTECH_NOT U110 ( .A(n102), .Z(n101) );
  GTECH_NOT U111 ( .A(n92), .Z(n99) );
  GTECH_ADD_ABC U112 ( .A(n36), .B(n30), .C(n103), .COUT(n100) );
  GTECH_OAI22 U113 ( .A(n36), .B(n102), .C(n92), .D(n104), .Z(
        mult_stepx_2__inst_N39) );
  GTECH_XOR3 U114 ( .A(n36), .B(n30), .C(n103), .Z(n104) );
  GTECH_ADD_ABC U115 ( .A(n35), .B(n29), .C(n105), .COUT(n103) );
  GTECH_OAI22 U116 ( .A(n35), .B(n102), .C(n92), .D(n106), .Z(
        mult_stepx_2__inst_N38) );
  GTECH_XOR3 U117 ( .A(n35), .B(n29), .C(n105), .Z(n106) );
  GTECH_ADD_ABC U118 ( .A(n34), .B(n28), .C(n107), .COUT(n105) );
  GTECH_OAI22 U119 ( .A(n34), .B(n102), .C(n108), .D(n92), .Z(
        mult_stepx_2__inst_N37) );
  GTECH_XOR3 U120 ( .A(n34), .B(n28), .C(n107), .Z(n108) );
  GTECH_NAND2 U121 ( .A(n109), .B(n110), .Z(n107) );
  GTECH_NOT U122 ( .A(n33), .Z(n110) );
  GTECH_OAI22 U123 ( .A(n33), .B(n102), .C(n111), .D(n92), .Z(
        mult_stepx_2__inst_N36) );
  GTECH_XOR2 U124 ( .A(n109), .B(n33), .Z(n111) );
  GTECH_AND2 U125 ( .A(n112), .B(mult_stepx_2__inst_N9), .Z(
        mult_stepx_2__inst_N35) );
  GTECH_AND2 U126 ( .A(n112), .B(mult_stepx_2__inst_N8), .Z(
        mult_stepx_2__inst_N34) );
  GTECH_NAND2 U127 ( .A(n102), .B(n92), .Z(n112) );
  GTECH_NAND2 U128 ( .A(rdy_t[1]), .B(n113), .Z(n92) );
  GTECH_NOT U129 ( .A(n40), .Z(n113) );
  GTECH_NAND2 U130 ( .A(n40), .B(rdy_t[1]), .Z(n102) );
  GTECH_AND2 U131 ( .A(rdy_t[1]), .B(n114), .Z(mult_stepx_2__inst_N32) );
  GTECH_NOT U132 ( .A(n30), .Z(n114) );
  GTECH_AND2 U133 ( .A(rdy_t[1]), .B(n115), .Z(mult_stepx_2__inst_N31) );
  GTECH_NOT U134 ( .A(n29), .Z(n115) );
  GTECH_AND2 U135 ( .A(rdy_t[1]), .B(n116), .Z(mult_stepx_2__inst_N30) );
  GTECH_NOT U136 ( .A(n28), .Z(n116) );
  GTECH_AND2 U137 ( .A(rdy_t[1]), .B(n109), .Z(mult_stepx_2__inst_N29) );
  GTECH_NOT U138 ( .A(n27), .Z(n109) );
  GTECH_AND2 U139 ( .A(rdy_t[1]), .B(mult2_t[4]), .Z(mult_stepx_2__inst_N24)
         );
  GTECH_AND2 U140 ( .A(n117), .B(n118), .Z(mult_stepx_1__inst_N39) );
  GTECH_NOT U141 ( .A(n119), .Z(n118) );
  GTECH_ADD_ABC U142 ( .A(n18), .B(n13), .C(n125), .COUT(n121) );
  GTECH_OAI22 U143 ( .A(n18), .B(n122), .C(n123), .D(n126), .Z(
        mult_stepx_1__inst_N37) );
  GTECH_XOR3 U144 ( .A(n18), .B(n13), .C(n125), .Z(n126) );
  GTECH_ADD_ABC U145 ( .A(n17), .B(n12), .C(n127), .COUT(n125) );
  GTECH_OAI22 U146 ( .A(n17), .B(n122), .C(n128), .D(n123), .Z(
        mult_stepx_1__inst_N36) );
  GTECH_XOR3 U147 ( .A(n17), .B(n12), .C(n127), .Z(n128) );
  GTECH_NAND2 U148 ( .A(n129), .B(n130), .Z(n127) );
  GTECH_NOT U149 ( .A(n16), .Z(n130) );
  GTECH_OAI22 U150 ( .A(n16), .B(n122), .C(n131), .D(n123), .Z(
        mult_stepx_1__inst_N35) );
  GTECH_XOR2 U151 ( .A(n129), .B(n16), .Z(n131) );
  GTECH_OA21 U152 ( .A(n117), .B(n120), .C(mult_stepx_1__inst_N8), .Z(
        mult_stepx_1__inst_N34) );
  GTECH_NOT U153 ( .A(n122), .Z(n120) );
  GTECH_NAND2 U154 ( .A(n24), .B(rdy_t[0]), .Z(n122) );
  GTECH_NOT U155 ( .A(n123), .Z(n117) );
  GTECH_NAND2 U156 ( .A(rdy_t[0]), .B(n132), .Z(n123) );
  GTECH_NOT U157 ( .A(n24), .Z(n132) );
  GTECH_AND2 U158 ( .A(rdy_t[0]), .B(n133), .Z(mult_stepx_1__inst_N31) );
  GTECH_NOT U159 ( .A(n14), .Z(n133) );
  GTECH_AND2 U160 ( .A(rdy_t[0]), .B(n134), .Z(mult_stepx_1__inst_N30) );
  GTECH_NOT U161 ( .A(n13), .Z(n134) );
  GTECH_AND2 U162 ( .A(rdy_t[0]), .B(n135), .Z(mult_stepx_1__inst_N29) );
  GTECH_NOT U163 ( .A(n12), .Z(n135) );
  GTECH_AND2 U164 ( .A(rdy_t[0]), .B(n129), .Z(mult_stepx_1__inst_N28) );
  GTECH_NOT U165 ( .A(n11), .Z(n129) );
  GTECH_AND2 U166 ( .A(rdy_t[0]), .B(mult2_t[2]), .Z(mult_stepx_1__inst_N25)
         );
  GTECH_AND2 U167 ( .A(rdy_t[0]), .B(mult2_t[1]), .Z(mult_stepx_1__inst_N24)
         );
  GTECH_AND2 U168 ( .A(mult2[0]), .B(inst0_N30), .Z(inst0_N37) );
  GTECH_AND2 U169 ( .A(inst0_N29), .B(mult2[0]), .Z(inst0_N36) );
  GTECH_AND2 U170 ( .A(inst0_N28), .B(mult2[0]), .Z(inst0_N35) );
  GTECH_AND2 U171 ( .A(inst0_N27), .B(mult2[0]), .Z(inst0_N34) );
  GTECH_NOT U172 ( .A(n136), .Z(inst0_N30) );
  GTECH_NAND2 U173 ( .A(mult1[3]), .B(data_rdy), .Z(n136) );
  GTECH_NOT U174 ( .A(n137), .Z(inst0_N29) );
  GTECH_NAND2 U175 ( .A(mult1[2]), .B(data_rdy), .Z(n137) );
  GTECH_NOT U176 ( .A(n138), .Z(inst0_N28) );
  GTECH_NAND2 U177 ( .A(mult1[1]), .B(data_rdy), .Z(n138) );
  GTECH_NOT U178 ( .A(n139), .Z(inst0_N27) );
  GTECH_NAND2 U179 ( .A(mult1[0]), .B(data_rdy), .Z(n139) );
  GTECH_AND2 U180 ( .A(mult2[3]), .B(data_rdy), .Z(inst0_N26) );
  GTECH_AND2 U181 ( .A(mult2[2]), .B(data_rdy), .Z(inst0_N25) );
  GTECH_AND2 U182 ( .A(mult2[1]), .B(data_rdy), .Z(inst0_N24) );
endmodule

