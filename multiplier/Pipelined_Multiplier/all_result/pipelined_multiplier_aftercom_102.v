
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
         n131, n132;
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
  GTECH_ZERO U75 ( .Z(n94) );
  GTECH_ONE U76 ( .Z(n95) );
  GTECH_OR2 U77 ( .A(n14), .B(n116), .Z(n114) );
  GTECH_NOR2 U78 ( .A(n112), .B(n117), .Z(mult_stepx_1__inst_N38) );
  GTECH_XNOR2 U79 ( .A(n116), .B(n14), .Z(n117) );
  GTECH_OAI22 U80 ( .A(n49), .B(n76), .C(n77), .D(n78), .Z(
        mult_stepx_3__inst_N41) );
  GTECH_XNOR2 U81 ( .A(n49), .B(n79), .Z(n78) );
  GTECH_ADD_ABC U82 ( .A(n80), .B(n48), .C(n72), .COUT(n79) );
  GTECH_OAI22 U83 ( .A(n48), .B(n76), .C(n77), .D(n81), .Z(
        mult_stepx_3__inst_N40) );
  GTECH_ADD_ABC U84 ( .A(n48), .B(n80), .C(n72), .S(n81) );
  GTECH_ADD_ABC U85 ( .A(n73), .B(n47), .C(n82), .COUT(n80) );
  GTECH_OAI22 U86 ( .A(n47), .B(n76), .C(n77), .D(n83), .Z(
        mult_stepx_3__inst_N39) );
  GTECH_ADD_ABC U87 ( .A(n47), .B(n82), .C(n73), .S(n83) );
  GTECH_ADD_ABC U88 ( .A(n74), .B(n46), .C(n84), .COUT(n82) );
  GTECH_OAI22 U89 ( .A(n46), .B(n76), .C(n77), .D(n85), .Z(
        mult_stepx_3__inst_N38) );
  GTECH_ADD_ABC U90 ( .A(n46), .B(n84), .C(n74), .S(n85) );
  GTECH_NAND2 U91 ( .A(n86), .B(n87), .Z(n84) );
  GTECH_NOT U92 ( .A(n75), .Z(n87) );
  GTECH_OAI22 U93 ( .A(n45), .B(n76), .C(n88), .D(n77), .Z(
        mult_stepx_3__inst_N37) );
  GTECH_XOR2 U94 ( .A(n86), .B(n75), .Z(n88) );
  GTECH_NOT U95 ( .A(n45), .Z(n86) );
  GTECH_AND_NOT U96 ( .A(n89), .B(n44), .Z(mult_stepx_3__inst_N36) );
  GTECH_AND_NOT U97 ( .A(n89), .B(n43), .Z(mult_stepx_3__inst_N35) );
  GTECH_AND_NOT U98 ( .A(n89), .B(n42), .Z(mult_stepx_3__inst_N34) );
  GTECH_NAND2 U99 ( .A(n76), .B(n77), .Z(n89) );
  GTECH_NAND2 U100 ( .A(rdy_t[2]), .B(n90), .Z(n77) );
  GTECH_NOT U101 ( .A(n51), .Z(n90) );
  GTECH_NAND2 U102 ( .A(n51), .B(rdy_t[2]), .Z(n76) );
  GTECH_OAI22 U103 ( .A(n95), .B(n91), .C(n92), .D(n93), .Z(
        mult_stepx_2__inst_N41) );
  GTECH_MUX2 U104 ( .A(n94), .B(n95), .S(n95), .Z(n93) );
  GTECH_NOT U105 ( .A(n97), .Z(n91) );
  GTECH_MUX2 U106 ( .A(n97), .B(n98), .S(n95), .Z(mult_stepx_2__inst_N40) );
  GTECH_NOR2 U107 ( .A(n92), .B(n99), .Z(n98) );
  GTECH_OAI21 U108 ( .A(n92), .B(n96), .C(n100), .Z(n97) );
  GTECH_NOT U109 ( .A(n99), .Z(n96) );
  GTECH_ADD_ABC U110 ( .A(n36), .B(n30), .C(n101), .COUT(n99) );
  GTECH_OAI22 U111 ( .A(n36), .B(n100), .C(n92), .D(n102), .Z(
        mult_stepx_2__inst_N39) );
  GTECH_ADD_ABC U112 ( .A(n30), .B(n101), .C(n36), .S(n102) );
  GTECH_ADD_ABC U113 ( .A(n35), .B(n29), .C(n103), .COUT(n101) );
  GTECH_OAI22 U114 ( .A(n35), .B(n100), .C(n92), .D(n104), .Z(
        mult_stepx_2__inst_N38) );
  GTECH_ADD_ABC U115 ( .A(n29), .B(n103), .C(n35), .S(n104) );
  GTECH_ADD_ABC U116 ( .A(n34), .B(n28), .C(n105), .COUT(n103) );
  GTECH_OAI22 U117 ( .A(n34), .B(n100), .C(n92), .D(n106), .Z(
        mult_stepx_2__inst_N37) );
  GTECH_ADD_ABC U118 ( .A(n28), .B(n105), .C(n34), .S(n106) );
  GTECH_NAND2 U119 ( .A(n107), .B(n108), .Z(n105) );
  GTECH_NOT U120 ( .A(n33), .Z(n108) );
  GTECH_OAI22 U121 ( .A(n33), .B(n100), .C(n109), .D(n92), .Z(
        mult_stepx_2__inst_N36) );
  GTECH_XOR2 U122 ( .A(n107), .B(n33), .Z(n109) );
  GTECH_NOT U123 ( .A(n27), .Z(n107) );
  GTECH_AND_NOT U124 ( .A(n110), .B(n32), .Z(mult_stepx_2__inst_N35) );
  GTECH_AND_NOT U125 ( .A(n110), .B(n31), .Z(mult_stepx_2__inst_N34) );
  GTECH_NAND2 U126 ( .A(n100), .B(n92), .Z(n110) );
  GTECH_NAND2 U127 ( .A(rdy_t[1]), .B(n111), .Z(n92) );
  GTECH_NOT U128 ( .A(n40), .Z(n111) );
  GTECH_NAND2 U129 ( .A(n40), .B(rdy_t[1]), .Z(n100) );
  GTECH_AND_NOT U130 ( .A(rdy_t[1]), .B(n30), .Z(mult_stepx_2__inst_N32) );
  GTECH_AND_NOT U131 ( .A(rdy_t[1]), .B(n29), .Z(mult_stepx_2__inst_N31) );
  GTECH_AND_NOT U132 ( .A(rdy_t[1]), .B(n28), .Z(mult_stepx_2__inst_N30) );
  GTECH_AND_NOT U133 ( .A(rdy_t[1]), .B(n27), .Z(mult_stepx_2__inst_N29) );
  GTECH_AND_NOT U134 ( .A(rdy_t[1]), .B(n41), .Z(mult_stepx_2__inst_N24) );
  GTECH_AND_NOT U135 ( .A(n113), .B(n114), .Z(mult_stepx_1__inst_N39) );
  GTECH_ADD_ABC U136 ( .A(n18), .B(n13), .C(n118), .COUT(n116) );
  GTECH_OAI22 U137 ( .A(n18), .B(n115), .C(n112), .D(n119), .Z(
        mult_stepx_1__inst_N37) );
  GTECH_ADD_ABC U138 ( .A(n13), .B(n118), .C(n18), .S(n119) );
  GTECH_ADD_ABC U139 ( .A(n17), .B(n12), .C(n120), .COUT(n118) );
  GTECH_OAI22 U140 ( .A(n17), .B(n115), .C(n112), .D(n121), .Z(
        mult_stepx_1__inst_N36) );
  GTECH_ADD_ABC U141 ( .A(n12), .B(n120), .C(n17), .S(n121) );
  GTECH_NAND2 U142 ( .A(n122), .B(n123), .Z(n120) );
  GTECH_NOT U143 ( .A(n16), .Z(n123) );
  GTECH_OAI22 U144 ( .A(n16), .B(n115), .C(n124), .D(n112), .Z(
        mult_stepx_1__inst_N35) );
  GTECH_XOR2 U145 ( .A(n122), .B(n16), .Z(n124) );
  GTECH_NOT U146 ( .A(n11), .Z(n122) );
  GTECH_OA21 U147 ( .A(n113), .B(n125), .C(mult_stepx_1__inst_N8), .Z(
        mult_stepx_1__inst_N34) );
  GTECH_NOT U148 ( .A(n115), .Z(n125) );
  GTECH_NAND2 U149 ( .A(n24), .B(rdy_t[0]), .Z(n115) );
  GTECH_NOT U150 ( .A(n112), .Z(n113) );
  GTECH_NAND2 U151 ( .A(rdy_t[0]), .B(n126), .Z(n112) );
  GTECH_NOT U152 ( .A(n24), .Z(n126) );
  GTECH_AND_NOT U153 ( .A(rdy_t[0]), .B(n14), .Z(mult_stepx_1__inst_N31) );
  GTECH_AND_NOT U154 ( .A(rdy_t[0]), .B(n13), .Z(mult_stepx_1__inst_N30) );
  GTECH_AND_NOT U155 ( .A(rdy_t[0]), .B(n12), .Z(mult_stepx_1__inst_N29) );
  GTECH_AND_NOT U156 ( .A(rdy_t[0]), .B(n11), .Z(mult_stepx_1__inst_N28) );
  GTECH_AND_NOT U157 ( .A(rdy_t[0]), .B(n26), .Z(mult_stepx_1__inst_N25) );
  GTECH_AND_NOT U158 ( .A(rdy_t[0]), .B(n25), .Z(mult_stepx_1__inst_N24) );
  GTECH_AND_NOT U159 ( .A(mult2[0]), .B(n127), .Z(inst0_N37) );
  GTECH_AND_NOT U160 ( .A(inst0_N29), .B(n128), .Z(inst0_N36) );
  GTECH_AND_NOT U161 ( .A(inst0_N28), .B(n128), .Z(inst0_N35) );
  GTECH_AND_NOT U162 ( .A(inst0_N27), .B(n128), .Z(inst0_N34) );
  GTECH_NOT U163 ( .A(mult2[0]), .Z(n128) );
  GTECH_NOT U164 ( .A(n127), .Z(inst0_N30) );
  GTECH_NAND2 U165 ( .A(mult1[3]), .B(data_rdy), .Z(n127) );
  GTECH_NOT U166 ( .A(n129), .Z(inst0_N29) );
  GTECH_NAND2 U167 ( .A(mult1[2]), .B(data_rdy), .Z(n129) );
  GTECH_NOT U168 ( .A(n130), .Z(inst0_N28) );
  GTECH_NAND2 U169 ( .A(mult1[1]), .B(data_rdy), .Z(n130) );
  GTECH_NOT U170 ( .A(n131), .Z(inst0_N27) );
  GTECH_NAND2 U171 ( .A(mult1[0]), .B(data_rdy), .Z(n131) );
  GTECH_AND_NOT U172 ( .A(mult2[3]), .B(n132), .Z(inst0_N26) );
  GTECH_AND_NOT U173 ( .A(mult2[2]), .B(n132), .Z(inst0_N25) );
  GTECH_AND_NOT U174 ( .A(mult2[1]), .B(n132), .Z(inst0_N24) );
  GTECH_NOT U175 ( .A(data_rdy), .Z(n132) );
endmodule

