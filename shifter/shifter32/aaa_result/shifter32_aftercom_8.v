
module shifter32 ( data_in, clk, reset_n, control, data_out );
  input [31:0] data_in;
  input [1:0] control;
  output [31:0] data_out;
  input clk, reset_n;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20, N21,
         N22, N23, N24, N25, N26, N27, N28, N29, N30, N31, N32, N33, N34, N35,
         N36, N37, N38, N39, N40, n66, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198;

  GTECH_FJK2S data_out_reg_31_ ( .J(n66), .K(n66), .TI(N39), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[31]) );
  GTECH_FJK2S data_out_reg_30_ ( .J(n66), .K(n66), .TI(N38), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[30]) );
  GTECH_FJK2S data_out_reg_29_ ( .J(n66), .K(n66), .TI(N37), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[29]) );
  GTECH_FJK2S data_out_reg_28_ ( .J(n66), .K(n66), .TI(N36), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[28]) );
  GTECH_FJK2S data_out_reg_27_ ( .J(n66), .K(n66), .TI(N35), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[27]) );
  GTECH_FJK2S data_out_reg_26_ ( .J(n66), .K(n66), .TI(N34), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[26]) );
  GTECH_FJK2S data_out_reg_25_ ( .J(n66), .K(n66), .TI(N33), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[25]) );
  GTECH_FJK2S data_out_reg_24_ ( .J(n66), .K(n66), .TI(N32), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[24]) );
  GTECH_FJK2S data_out_reg_23_ ( .J(n66), .K(n66), .TI(N31), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[23]) );
  GTECH_FJK2S data_out_reg_22_ ( .J(n66), .K(n66), .TI(N30), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[22]) );
  GTECH_FJK2S data_out_reg_21_ ( .J(n66), .K(n66), .TI(N29), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[21]) );
  GTECH_FJK2S data_out_reg_20_ ( .J(n66), .K(n66), .TI(N28), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[20]) );
  GTECH_FJK2S data_out_reg_19_ ( .J(n66), .K(n66), .TI(N27), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[19]) );
  GTECH_FJK2S data_out_reg_18_ ( .J(n66), .K(n66), .TI(N26), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[18]) );
  GTECH_FJK2S data_out_reg_17_ ( .J(n66), .K(n66), .TI(N25), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[17]) );
  GTECH_FJK2S data_out_reg_16_ ( .J(n66), .K(n66), .TI(N24), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[16]) );
  GTECH_FJK2S data_out_reg_15_ ( .J(n66), .K(n66), .TI(N23), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[15]) );
  GTECH_FJK2S data_out_reg_14_ ( .J(n66), .K(n66), .TI(N22), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[14]) );
  GTECH_FJK2S data_out_reg_13_ ( .J(n66), .K(n66), .TI(N21), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[13]) );
  GTECH_FJK2S data_out_reg_12_ ( .J(n66), .K(n66), .TI(N20), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[12]) );
  GTECH_FJK2S data_out_reg_11_ ( .J(n66), .K(n66), .TI(N19), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[11]) );
  GTECH_FJK2S data_out_reg_10_ ( .J(n66), .K(n66), .TI(N18), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[10]) );
  GTECH_FJK2S data_out_reg_9_ ( .J(n66), .K(n66), .TI(N17), .TE(N40), .CP(clk), 
        .CD(reset_n), .Q(data_out[9]) );
  GTECH_FJK2S data_out_reg_8_ ( .J(n66), .K(n66), .TI(N16), .TE(N40), .CP(clk), 
        .CD(reset_n), .Q(data_out[8]) );
  GTECH_FJK2S data_out_reg_7_ ( .J(n66), .K(n66), .TI(N15), .TE(N40), .CP(clk), 
        .CD(reset_n), .Q(data_out[7]) );
  GTECH_FJK2S data_out_reg_6_ ( .J(n66), .K(n66), .TI(N14), .TE(N40), .CP(clk), 
        .CD(reset_n), .Q(data_out[6]) );
  GTECH_FJK2S data_out_reg_5_ ( .J(n66), .K(n66), .TI(N13), .TE(N40), .CP(clk), 
        .CD(reset_n), .Q(data_out[5]) );
  GTECH_FJK2S data_out_reg_4_ ( .J(n66), .K(n66), .TI(N12), .TE(N40), .CP(clk), 
        .CD(reset_n), .Q(data_out[4]) );
  GTECH_FJK2S data_out_reg_3_ ( .J(n66), .K(n66), .TI(N11), .TE(N40), .CP(clk), 
        .CD(reset_n), .Q(data_out[3]) );
  GTECH_FJK2S data_out_reg_2_ ( .J(n66), .K(n66), .TI(N10), .TE(N40), .CP(clk), 
        .CD(reset_n), .Q(data_out[2]) );
  GTECH_FJK2S data_out_reg_1_ ( .J(n66), .K(n66), .TI(N9), .TE(N40), .CP(clk), 
        .CD(reset_n), .Q(data_out[1]) );
  GTECH_FJK2S data_out_reg_0_ ( .J(n66), .K(n66), .TI(N8), .TE(N40), .CP(clk), 
        .CD(reset_n), .Q(data_out[0]) );
  GTECH_ZERO U131 ( .Z(n66) );
  GTECH_OAI21 U132 ( .A(n130), .B(n131), .C(n132), .Z(N9) );
  GTECH_OA22 U133 ( .A(n133), .B(n134), .C(n135), .D(n136), .Z(n132) );
  GTECH_NOT U134 ( .A(data_in[0]), .Z(n131) );
  GTECH_OAI2N2 U135 ( .A(n133), .B(n136), .C(data_in[0]), .D(n137), .Z(N8) );
  GTECH_NOT U136 ( .A(n135), .Z(n137) );
  GTECH_NAND2 U137 ( .A(n138), .B(n139), .Z(N40) );
  GTECH_OAI2N2 U138 ( .A(n135), .B(n140), .C(data_in[30]), .D(n141), .Z(N39)
         );
  GTECH_NOT U139 ( .A(n130), .Z(n141) );
  GTECH_OAI21 U140 ( .A(n130), .B(n142), .C(n143), .Z(N38) );
  GTECH_OA22 U141 ( .A(n133), .B(n140), .C(n135), .D(n144), .Z(n143) );
  GTECH_NOT U142 ( .A(data_in[31]), .Z(n140) );
  GTECH_OAI21 U143 ( .A(n130), .B(n145), .C(n146), .Z(N37) );
  GTECH_OA22 U144 ( .A(n133), .B(n144), .C(n135), .D(n142), .Z(n146) );
  GTECH_NOT U145 ( .A(data_in[30]), .Z(n144) );
  GTECH_OAI21 U146 ( .A(n130), .B(n147), .C(n148), .Z(N36) );
  GTECH_OA22 U147 ( .A(n133), .B(n142), .C(n135), .D(n145), .Z(n148) );
  GTECH_NOT U148 ( .A(data_in[29]), .Z(n142) );
  GTECH_OAI21 U149 ( .A(n130), .B(n149), .C(n150), .Z(N35) );
  GTECH_OA22 U150 ( .A(n133), .B(n145), .C(n135), .D(n147), .Z(n150) );
  GTECH_NOT U151 ( .A(data_in[28]), .Z(n145) );
  GTECH_OAI21 U152 ( .A(n130), .B(n151), .C(n152), .Z(N34) );
  GTECH_OA22 U153 ( .A(n133), .B(n147), .C(n135), .D(n149), .Z(n152) );
  GTECH_NOT U154 ( .A(data_in[27]), .Z(n147) );
  GTECH_OAI21 U155 ( .A(n130), .B(n153), .C(n154), .Z(N33) );
  GTECH_OA22 U156 ( .A(n133), .B(n149), .C(n135), .D(n151), .Z(n154) );
  GTECH_NOT U157 ( .A(data_in[26]), .Z(n149) );
  GTECH_OAI21 U158 ( .A(n130), .B(n155), .C(n156), .Z(N32) );
  GTECH_OA22 U159 ( .A(n133), .B(n151), .C(n135), .D(n153), .Z(n156) );
  GTECH_NOT U160 ( .A(data_in[25]), .Z(n151) );
  GTECH_OAI21 U161 ( .A(n130), .B(n157), .C(n158), .Z(N31) );
  GTECH_OA22 U162 ( .A(n133), .B(n153), .C(n135), .D(n155), .Z(n158) );
  GTECH_NOT U163 ( .A(data_in[24]), .Z(n153) );
  GTECH_OAI21 U164 ( .A(n130), .B(n159), .C(n160), .Z(N30) );
  GTECH_OA22 U165 ( .A(n133), .B(n155), .C(n135), .D(n157), .Z(n160) );
  GTECH_NOT U166 ( .A(data_in[23]), .Z(n155) );
  GTECH_OAI21 U167 ( .A(n130), .B(n161), .C(n162), .Z(N29) );
  GTECH_OA22 U168 ( .A(n133), .B(n157), .C(n135), .D(n159), .Z(n162) );
  GTECH_NOT U169 ( .A(data_in[22]), .Z(n157) );
  GTECH_OAI21 U170 ( .A(n130), .B(n163), .C(n164), .Z(N28) );
  GTECH_OA22 U171 ( .A(n133), .B(n159), .C(n135), .D(n161), .Z(n164) );
  GTECH_NOT U172 ( .A(data_in[21]), .Z(n159) );
  GTECH_OAI21 U173 ( .A(n130), .B(n165), .C(n166), .Z(N27) );
  GTECH_OA22 U174 ( .A(n133), .B(n161), .C(n135), .D(n163), .Z(n166) );
  GTECH_NOT U175 ( .A(data_in[20]), .Z(n161) );
  GTECH_OAI21 U176 ( .A(n130), .B(n167), .C(n168), .Z(N26) );
  GTECH_OA22 U177 ( .A(n133), .B(n163), .C(n135), .D(n165), .Z(n168) );
  GTECH_NOT U178 ( .A(data_in[19]), .Z(n163) );
  GTECH_OAI21 U179 ( .A(n130), .B(n169), .C(n170), .Z(N25) );
  GTECH_OA22 U180 ( .A(n133), .B(n165), .C(n135), .D(n167), .Z(n170) );
  GTECH_NOT U181 ( .A(data_in[18]), .Z(n165) );
  GTECH_OAI21 U182 ( .A(n130), .B(n171), .C(n172), .Z(N24) );
  GTECH_OA22 U183 ( .A(n133), .B(n167), .C(n135), .D(n169), .Z(n172) );
  GTECH_NOT U184 ( .A(data_in[17]), .Z(n167) );
  GTECH_OAI21 U185 ( .A(n130), .B(n173), .C(n174), .Z(N23) );
  GTECH_OA22 U186 ( .A(n133), .B(n169), .C(n135), .D(n171), .Z(n174) );
  GTECH_NOT U187 ( .A(data_in[16]), .Z(n169) );
  GTECH_OAI21 U188 ( .A(n130), .B(n175), .C(n176), .Z(N22) );
  GTECH_OA22 U189 ( .A(n133), .B(n171), .C(n135), .D(n173), .Z(n176) );
  GTECH_NOT U190 ( .A(data_in[15]), .Z(n171) );
  GTECH_OAI21 U191 ( .A(n130), .B(n177), .C(n178), .Z(N21) );
  GTECH_OA22 U192 ( .A(n133), .B(n173), .C(n135), .D(n175), .Z(n178) );
  GTECH_NOT U193 ( .A(data_in[14]), .Z(n173) );
  GTECH_OAI21 U194 ( .A(n130), .B(n179), .C(n180), .Z(N20) );
  GTECH_OA22 U195 ( .A(n133), .B(n175), .C(n135), .D(n177), .Z(n180) );
  GTECH_NOT U196 ( .A(data_in[13]), .Z(n175) );
  GTECH_OAI21 U197 ( .A(n130), .B(n181), .C(n182), .Z(N19) );
  GTECH_OA22 U198 ( .A(n133), .B(n177), .C(n135), .D(n179), .Z(n182) );
  GTECH_NOT U199 ( .A(data_in[12]), .Z(n177) );
  GTECH_OAI21 U200 ( .A(n130), .B(n183), .C(n184), .Z(N18) );
  GTECH_OA22 U201 ( .A(n133), .B(n179), .C(n135), .D(n181), .Z(n184) );
  GTECH_NOT U202 ( .A(data_in[11]), .Z(n179) );
  GTECH_OAI21 U203 ( .A(n130), .B(n185), .C(n186), .Z(N17) );
  GTECH_OA22 U204 ( .A(n133), .B(n181), .C(n135), .D(n183), .Z(n186) );
  GTECH_NOT U205 ( .A(data_in[10]), .Z(n181) );
  GTECH_OAI21 U206 ( .A(n130), .B(n187), .C(n188), .Z(N16) );
  GTECH_OA22 U207 ( .A(n133), .B(n183), .C(n135), .D(n185), .Z(n188) );
  GTECH_NOT U208 ( .A(data_in[9]), .Z(n183) );
  GTECH_OAI21 U209 ( .A(n130), .B(n189), .C(n190), .Z(N15) );
  GTECH_OA22 U210 ( .A(n133), .B(n185), .C(n135), .D(n187), .Z(n190) );
  GTECH_NOT U211 ( .A(data_in[8]), .Z(n185) );
  GTECH_OAI21 U212 ( .A(n130), .B(n191), .C(n192), .Z(N14) );
  GTECH_OA22 U213 ( .A(n133), .B(n187), .C(n135), .D(n189), .Z(n192) );
  GTECH_NOT U214 ( .A(data_in[7]), .Z(n187) );
  GTECH_OAI21 U215 ( .A(n130), .B(n193), .C(n194), .Z(N13) );
  GTECH_OA22 U216 ( .A(n133), .B(n189), .C(n135), .D(n191), .Z(n194) );
  GTECH_NOT U217 ( .A(data_in[6]), .Z(n189) );
  GTECH_OAI21 U218 ( .A(n130), .B(n195), .C(n196), .Z(N12) );
  GTECH_OA22 U219 ( .A(n133), .B(n191), .C(n135), .D(n193), .Z(n196) );
  GTECH_NOT U220 ( .A(data_in[5]), .Z(n191) );
  GTECH_OAI21 U221 ( .A(n134), .B(n130), .C(n197), .Z(N11) );
  GTECH_OA22 U222 ( .A(n133), .B(n193), .C(n135), .D(n195), .Z(n197) );
  GTECH_NOT U223 ( .A(data_in[4]), .Z(n193) );
  GTECH_OAI21 U224 ( .A(n136), .B(n130), .C(n198), .Z(N10) );
  GTECH_OA22 U225 ( .A(n133), .B(n195), .C(n134), .D(n135), .Z(n198) );
  GTECH_NAND2 U226 ( .A(control[0]), .B(control[1]), .Z(n135) );
  GTECH_NOT U227 ( .A(data_in[2]), .Z(n134) );
  GTECH_NOT U228 ( .A(data_in[3]), .Z(n195) );
  GTECH_NAND2 U229 ( .A(control[1]), .B(n139), .Z(n133) );
  GTECH_NOT U230 ( .A(control[0]), .Z(n139) );
  GTECH_NAND2 U231 ( .A(control[0]), .B(n138), .Z(n130) );
  GTECH_NOT U232 ( .A(control[1]), .Z(n138) );
  GTECH_NOT U233 ( .A(data_in[1]), .Z(n136) );
endmodule

