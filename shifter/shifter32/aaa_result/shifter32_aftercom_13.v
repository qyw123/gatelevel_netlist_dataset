
module shifter32 ( data_in, clk, reset_n, control, data_out );
  input [31:0] data_in;
  input [1:0] control;
  output [31:0] data_out;
  input clk, reset_n;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20, N21,
         N22, N23, N24, N25, N26, N27, N28, N29, N30, N31, N32, N33, N34, N35,
         N36, N37, N38, N39, N40, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142;

  GTECH_FJK2S data_out_reg_31_ ( .J(1'b0), .K(1'b0), .TI(N39), .TE(N40), .CP(
        clk), .CD(reset_n), .Q(data_out[31]) );
  GTECH_FJK2S data_out_reg_30_ ( .J(1'b0), .K(1'b0), .TI(N38), .TE(N40), .CP(
        clk), .CD(reset_n), .Q(data_out[30]) );
  GTECH_FJK2S data_out_reg_29_ ( .J(1'b0), .K(1'b0), .TI(N37), .TE(N40), .CP(
        clk), .CD(reset_n), .Q(data_out[29]) );
  GTECH_FJK2S data_out_reg_28_ ( .J(1'b0), .K(1'b0), .TI(N36), .TE(N40), .CP(
        clk), .CD(reset_n), .Q(data_out[28]) );
  GTECH_FJK2S data_out_reg_27_ ( .J(1'b0), .K(1'b0), .TI(N35), .TE(N40), .CP(
        clk), .CD(reset_n), .Q(data_out[27]) );
  GTECH_FJK2S data_out_reg_26_ ( .J(1'b0), .K(1'b0), .TI(N34), .TE(N40), .CP(
        clk), .CD(reset_n), .Q(data_out[26]) );
  GTECH_FJK2S data_out_reg_25_ ( .J(1'b0), .K(1'b0), .TI(N33), .TE(N40), .CP(
        clk), .CD(reset_n), .Q(data_out[25]) );
  GTECH_FJK2S data_out_reg_24_ ( .J(1'b0), .K(1'b0), .TI(N32), .TE(N40), .CP(
        clk), .CD(reset_n), .Q(data_out[24]) );
  GTECH_FJK2S data_out_reg_23_ ( .J(1'b0), .K(1'b0), .TI(N31), .TE(N40), .CP(
        clk), .CD(reset_n), .Q(data_out[23]) );
  GTECH_FJK2S data_out_reg_22_ ( .J(1'b0), .K(1'b0), .TI(N30), .TE(N40), .CP(
        clk), .CD(reset_n), .Q(data_out[22]) );
  GTECH_FJK2S data_out_reg_21_ ( .J(1'b0), .K(1'b0), .TI(N29), .TE(N40), .CP(
        clk), .CD(reset_n), .Q(data_out[21]) );
  GTECH_FJK2S data_out_reg_20_ ( .J(1'b0), .K(1'b0), .TI(N28), .TE(N40), .CP(
        clk), .CD(reset_n), .Q(data_out[20]) );
  GTECH_FJK2S data_out_reg_19_ ( .J(1'b0), .K(1'b0), .TI(N27), .TE(N40), .CP(
        clk), .CD(reset_n), .Q(data_out[19]) );
  GTECH_FJK2S data_out_reg_18_ ( .J(1'b0), .K(1'b0), .TI(N26), .TE(N40), .CP(
        clk), .CD(reset_n), .Q(data_out[18]) );
  GTECH_FJK2S data_out_reg_17_ ( .J(1'b0), .K(1'b0), .TI(N25), .TE(N40), .CP(
        clk), .CD(reset_n), .Q(data_out[17]) );
  GTECH_FJK2S data_out_reg_16_ ( .J(1'b0), .K(1'b0), .TI(N24), .TE(N40), .CP(
        clk), .CD(reset_n), .Q(data_out[16]) );
  GTECH_FJK2S data_out_reg_15_ ( .J(1'b0), .K(1'b0), .TI(N23), .TE(N40), .CP(
        clk), .CD(reset_n), .Q(data_out[15]) );
  GTECH_FJK2S data_out_reg_14_ ( .J(1'b0), .K(1'b0), .TI(N22), .TE(N40), .CP(
        clk), .CD(reset_n), .Q(data_out[14]) );
  GTECH_FJK2S data_out_reg_13_ ( .J(1'b0), .K(1'b0), .TI(N21), .TE(N40), .CP(
        clk), .CD(reset_n), .Q(data_out[13]) );
  GTECH_FJK2S data_out_reg_12_ ( .J(1'b0), .K(1'b0), .TI(N20), .TE(N40), .CP(
        clk), .CD(reset_n), .Q(data_out[12]) );
  GTECH_FJK2S data_out_reg_11_ ( .J(1'b0), .K(1'b0), .TI(N19), .TE(N40), .CP(
        clk), .CD(reset_n), .Q(data_out[11]) );
  GTECH_FJK2S data_out_reg_10_ ( .J(1'b0), .K(1'b0), .TI(N18), .TE(N40), .CP(
        clk), .CD(reset_n), .Q(data_out[10]) );
  GTECH_FJK2S data_out_reg_9_ ( .J(1'b0), .K(1'b0), .TI(N17), .TE(N40), .CP(
        clk), .CD(reset_n), .Q(data_out[9]) );
  GTECH_FJK2S data_out_reg_8_ ( .J(1'b0), .K(1'b0), .TI(N16), .TE(N40), .CP(
        clk), .CD(reset_n), .Q(data_out[8]) );
  GTECH_FJK2S data_out_reg_7_ ( .J(1'b0), .K(1'b0), .TI(N15), .TE(N40), .CP(
        clk), .CD(reset_n), .Q(data_out[7]) );
  GTECH_FJK2S data_out_reg_6_ ( .J(1'b0), .K(1'b0), .TI(N14), .TE(N40), .CP(
        clk), .CD(reset_n), .Q(data_out[6]) );
  GTECH_FJK2S data_out_reg_5_ ( .J(1'b0), .K(1'b0), .TI(N13), .TE(N40), .CP(
        clk), .CD(reset_n), .Q(data_out[5]) );
  GTECH_FJK2S data_out_reg_4_ ( .J(1'b0), .K(1'b0), .TI(N12), .TE(N40), .CP(
        clk), .CD(reset_n), .Q(data_out[4]) );
  GTECH_FJK2S data_out_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N11), .TE(N40), .CP(
        clk), .CD(reset_n), .Q(data_out[3]) );
  GTECH_FJK2S data_out_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N10), .TE(N40), .CP(
        clk), .CD(reset_n), .Q(data_out[2]) );
  GTECH_FJK2S data_out_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N9), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[1]) );
  GTECH_FJK2S data_out_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N8), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[0]) );
  GTECH_NOT U102 ( .A(n101), .Z(N9) );
  GTECH_AOI222 U103 ( .A(data_in[0]), .B(n102), .C(data_in[1]), .D(n103), .E(
        data_in[2]), .F(n104), .Z(n101) );
  GTECH_OAI22 U104 ( .A(n105), .B(n106), .C(n107), .D(n108), .Z(N8) );
  GTECH_NOT U105 ( .A(data_in[0]), .Z(n108) );
  GTECH_NOT U106 ( .A(data_in[1]), .Z(n105) );
  GTECH_OR_NOT U107 ( .A(control[0]), .B(n109), .Z(N40) );
  GTECH_NOT U108 ( .A(control[1]), .Z(n109) );
  GTECH_OAI22 U109 ( .A(n110), .B(n111), .C(n107), .D(n112), .Z(N39) );
  GTECH_NOT U110 ( .A(data_in[31]), .Z(n112) );
  GTECH_NOT U111 ( .A(data_in[30]), .Z(n111) );
  GTECH_NOT U112 ( .A(n113), .Z(N38) );
  GTECH_AOI222 U113 ( .A(data_in[29]), .B(n102), .C(data_in[30]), .D(n103), 
        .E(data_in[31]), .F(n104), .Z(n113) );
  GTECH_NOT U114 ( .A(n114), .Z(N37) );
  GTECH_AOI222 U115 ( .A(data_in[28]), .B(n102), .C(data_in[29]), .D(n103), 
        .E(data_in[30]), .F(n104), .Z(n114) );
  GTECH_NOT U116 ( .A(n115), .Z(N36) );
  GTECH_AOI222 U117 ( .A(data_in[27]), .B(n102), .C(data_in[28]), .D(n103), 
        .E(data_in[29]), .F(n104), .Z(n115) );
  GTECH_NOT U118 ( .A(n116), .Z(N35) );
  GTECH_AOI222 U119 ( .A(data_in[26]), .B(n102), .C(data_in[27]), .D(n103), 
        .E(data_in[28]), .F(n104), .Z(n116) );
  GTECH_NOT U120 ( .A(n117), .Z(N34) );
  GTECH_AOI222 U121 ( .A(data_in[25]), .B(n102), .C(data_in[26]), .D(n103), 
        .E(data_in[27]), .F(n104), .Z(n117) );
  GTECH_NOT U122 ( .A(n118), .Z(N33) );
  GTECH_AOI222 U123 ( .A(data_in[24]), .B(n102), .C(data_in[25]), .D(n103), 
        .E(data_in[26]), .F(n104), .Z(n118) );
  GTECH_NOT U124 ( .A(n119), .Z(N32) );
  GTECH_AOI222 U125 ( .A(data_in[23]), .B(n102), .C(data_in[24]), .D(n103), 
        .E(data_in[25]), .F(n104), .Z(n119) );
  GTECH_NOT U126 ( .A(n120), .Z(N31) );
  GTECH_AOI222 U127 ( .A(data_in[22]), .B(n102), .C(data_in[23]), .D(n103), 
        .E(data_in[24]), .F(n104), .Z(n120) );
  GTECH_NOT U128 ( .A(n121), .Z(N30) );
  GTECH_AOI222 U129 ( .A(data_in[21]), .B(n102), .C(data_in[22]), .D(n103), 
        .E(data_in[23]), .F(n104), .Z(n121) );
  GTECH_NOT U130 ( .A(n122), .Z(N29) );
  GTECH_AOI222 U131 ( .A(data_in[20]), .B(n102), .C(data_in[21]), .D(n103), 
        .E(data_in[22]), .F(n104), .Z(n122) );
  GTECH_NOT U132 ( .A(n123), .Z(N28) );
  GTECH_AOI222 U133 ( .A(data_in[19]), .B(n102), .C(data_in[20]), .D(n103), 
        .E(data_in[21]), .F(n104), .Z(n123) );
  GTECH_NOT U134 ( .A(n124), .Z(N27) );
  GTECH_AOI222 U135 ( .A(data_in[18]), .B(n102), .C(data_in[19]), .D(n103), 
        .E(data_in[20]), .F(n104), .Z(n124) );
  GTECH_NOT U136 ( .A(n125), .Z(N26) );
  GTECH_AOI222 U137 ( .A(data_in[17]), .B(n102), .C(data_in[18]), .D(n103), 
        .E(data_in[19]), .F(n104), .Z(n125) );
  GTECH_NOT U138 ( .A(n126), .Z(N25) );
  GTECH_AOI222 U139 ( .A(data_in[16]), .B(n102), .C(data_in[17]), .D(n103), 
        .E(data_in[18]), .F(n104), .Z(n126) );
  GTECH_NOT U140 ( .A(n127), .Z(N24) );
  GTECH_AOI222 U141 ( .A(data_in[15]), .B(n102), .C(data_in[16]), .D(n103), 
        .E(data_in[17]), .F(n104), .Z(n127) );
  GTECH_NOT U142 ( .A(n128), .Z(N23) );
  GTECH_AOI222 U143 ( .A(data_in[14]), .B(n102), .C(data_in[15]), .D(n103), 
        .E(data_in[16]), .F(n104), .Z(n128) );
  GTECH_NOT U144 ( .A(n129), .Z(N22) );
  GTECH_AOI222 U145 ( .A(data_in[13]), .B(n102), .C(data_in[14]), .D(n103), 
        .E(data_in[15]), .F(n104), .Z(n129) );
  GTECH_NOT U146 ( .A(n130), .Z(N21) );
  GTECH_AOI222 U147 ( .A(data_in[12]), .B(n102), .C(data_in[13]), .D(n103), 
        .E(data_in[14]), .F(n104), .Z(n130) );
  GTECH_NOT U148 ( .A(n131), .Z(N20) );
  GTECH_AOI222 U149 ( .A(data_in[11]), .B(n102), .C(data_in[12]), .D(n103), 
        .E(data_in[13]), .F(n104), .Z(n131) );
  GTECH_NOT U150 ( .A(n132), .Z(N19) );
  GTECH_AOI222 U151 ( .A(data_in[10]), .B(n102), .C(data_in[11]), .D(n103), 
        .E(data_in[12]), .F(n104), .Z(n132) );
  GTECH_NOT U152 ( .A(n133), .Z(N18) );
  GTECH_AOI222 U153 ( .A(data_in[9]), .B(n102), .C(data_in[10]), .D(n103), .E(
        data_in[11]), .F(n104), .Z(n133) );
  GTECH_NOT U154 ( .A(n134), .Z(N17) );
  GTECH_AOI222 U155 ( .A(data_in[8]), .B(n102), .C(data_in[9]), .D(n103), .E(
        data_in[10]), .F(n104), .Z(n134) );
  GTECH_NOT U156 ( .A(n135), .Z(N16) );
  GTECH_AOI222 U157 ( .A(data_in[7]), .B(n102), .C(data_in[8]), .D(n103), .E(
        data_in[9]), .F(n104), .Z(n135) );
  GTECH_NOT U158 ( .A(n136), .Z(N15) );
  GTECH_AOI222 U159 ( .A(data_in[6]), .B(n102), .C(data_in[7]), .D(n103), .E(
        data_in[8]), .F(n104), .Z(n136) );
  GTECH_NOT U160 ( .A(n137), .Z(N14) );
  GTECH_AOI222 U161 ( .A(data_in[5]), .B(n102), .C(data_in[6]), .D(n103), .E(
        data_in[7]), .F(n104), .Z(n137) );
  GTECH_NOT U162 ( .A(n138), .Z(N13) );
  GTECH_AOI222 U163 ( .A(data_in[4]), .B(n102), .C(data_in[5]), .D(n103), .E(
        data_in[6]), .F(n104), .Z(n138) );
  GTECH_NOT U164 ( .A(n139), .Z(N12) );
  GTECH_AOI222 U165 ( .A(data_in[3]), .B(n102), .C(data_in[4]), .D(n103), .E(
        data_in[5]), .F(n104), .Z(n139) );
  GTECH_NOT U166 ( .A(n140), .Z(N11) );
  GTECH_AOI222 U167 ( .A(n102), .B(data_in[2]), .C(data_in[3]), .D(n103), .E(
        data_in[4]), .F(n104), .Z(n140) );
  GTECH_NOT U168 ( .A(n141), .Z(N10) );
  GTECH_AOI222 U169 ( .A(n102), .B(data_in[1]), .C(data_in[2]), .D(n103), .E(
        data_in[3]), .F(n104), .Z(n141) );
  GTECH_NOT U170 ( .A(n106), .Z(n104) );
  GTECH_OR_NOT U171 ( .A(control[0]), .B(control[1]), .Z(n106) );
  GTECH_NOT U172 ( .A(n107), .Z(n103) );
  GTECH_OR_NOT U173 ( .A(n142), .B(control[1]), .Z(n107) );
  GTECH_NOT U174 ( .A(control[0]), .Z(n142) );
  GTECH_NOT U175 ( .A(n110), .Z(n102) );
  GTECH_OR_NOT U176 ( .A(control[1]), .B(control[0]), .Z(n110) );
endmodule

