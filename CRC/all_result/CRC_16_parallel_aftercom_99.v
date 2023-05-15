
module CRC_16_parallel ( clk, rst_n, data, data_valid, crc );
  input [7:0] data;
  output [15:0] crc;
  input clk, rst_n, data_valid;
  wire   N11, N15, N19, N23, N34, N37, N39, N41, N43, N45, N47, N48, N49, N50,
         N51, N52, N53, N54, N55, N56, N58, N60, N62, N64, N69, N70, N99, N209,
         N222, N235, N248, N261, N274, N287, N298, N307, N316, N323, N328,
         N331, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224;
  wire   [23:0] temp;

  GTECH_FJK2S temp_reg_15_ ( .J(n100), .K(n100), .TI(N56), .TE(N287), .CP(clk), 
        .CD(rst_n), .Q(temp[15]) );
  GTECH_FJK2S temp_reg_14_ ( .J(n100), .K(n100), .TI(N55), .TE(N209), .CP(clk), 
        .CD(rst_n), .Q(temp[14]) );
  GTECH_FJK2S temp_reg_13_ ( .J(n100), .K(n100), .TI(N54), .TE(N222), .CP(clk), 
        .CD(rst_n), .Q(temp[13]) );
  GTECH_FJK2S temp_reg_12_ ( .J(n100), .K(n100), .TI(N53), .TE(N235), .CP(clk), 
        .CD(rst_n), .Q(temp[12]), .QN(N53) );
  GTECH_FJK2S temp_reg_11_ ( .J(n100), .K(n100), .TI(N52), .TE(N248), .CP(clk), 
        .CD(rst_n), .Q(temp[11]) );
  GTECH_FJK2S temp_reg_10_ ( .J(n100), .K(n100), .TI(N51), .TE(N261), .CP(clk), 
        .CD(rst_n), .Q(temp[10]) );
  GTECH_FJK2S temp_reg_9_ ( .J(n100), .K(n100), .TI(N50), .TE(N274), .CP(clk), 
        .CD(rst_n), .Q(temp[9]) );
  GTECH_FJK2S temp_reg_8_ ( .J(n100), .K(n100), .TI(N49), .TE(N287), .CP(clk), 
        .CD(rst_n), .Q(temp[8]) );
  GTECH_FJK2S temp_reg_7_ ( .J(n100), .K(n100), .TI(N48), .TE(N298), .CP(clk), 
        .CD(rst_n), .Q(temp[7]) );
  GTECH_FJK2S temp_reg_6_ ( .J(n100), .K(n100), .TI(N47), .TE(N307), .CP(clk), 
        .CD(rst_n), .Q(temp[6]) );
  GTECH_FJK2S temp_reg_5_ ( .J(n100), .K(n100), .TI(N45), .TE(N316), .CP(clk), 
        .CD(rst_n), .Q(temp[5]), .QN(N45) );
  GTECH_FJK2S temp_reg_4_ ( .J(n100), .K(n100), .TI(N43), .TE(N323), .CP(clk), 
        .CD(rst_n), .Q(temp[4]) );
  GTECH_FJK2S temp_reg_3_ ( .J(n100), .K(n100), .TI(N41), .TE(N328), .CP(clk), 
        .CD(rst_n), .Q(temp[3]) );
  GTECH_FJK2S temp_reg_2_ ( .J(n100), .K(n100), .TI(N39), .TE(N331), .CP(clk), 
        .CD(rst_n), .Q(temp[2]) );
  GTECH_FJK2S temp_reg_1_ ( .J(n100), .K(n100), .TI(N37), .TE(N70), .CP(clk), 
        .CD(rst_n), .Q(temp[1]) );
  GTECH_FJK2S temp_reg_0_ ( .J(n100), .K(n100), .TI(N34), .TE(N69), .CP(clk), 
        .CD(rst_n), .Q(temp[0]), .QN(N34) );
  GTECH_FJK2S crc_reg_15_ ( .J(n100), .K(n100), .TI(temp[15]), .TE(N99), .CP(
        clk), .CD(rst_n), .Q(crc[15]) );
  GTECH_FJK2S crc_reg_14_ ( .J(n100), .K(n100), .TI(temp[14]), .TE(N99), .CP(
        clk), .CD(rst_n), .Q(crc[14]) );
  GTECH_FJK2S crc_reg_13_ ( .J(n100), .K(n100), .TI(temp[13]), .TE(N99), .CP(
        clk), .CD(rst_n), .Q(crc[13]) );
  GTECH_FJK2S crc_reg_12_ ( .J(n100), .K(n100), .TI(temp[12]), .TE(N99), .CP(
        clk), .CD(rst_n), .Q(crc[12]) );
  GTECH_FJK2S crc_reg_11_ ( .J(n100), .K(n100), .TI(temp[11]), .TE(N99), .CP(
        clk), .CD(rst_n), .Q(crc[11]) );
  GTECH_FJK2S crc_reg_10_ ( .J(n100), .K(n100), .TI(temp[10]), .TE(N99), .CP(
        clk), .CD(rst_n), .Q(crc[10]) );
  GTECH_FJK2S crc_reg_9_ ( .J(n100), .K(n100), .TI(temp[9]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[9]) );
  GTECH_FJK2S crc_reg_8_ ( .J(n100), .K(n100), .TI(temp[8]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[8]) );
  GTECH_FJK2S crc_reg_7_ ( .J(n100), .K(n100), .TI(temp[7]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[7]) );
  GTECH_FJK2S crc_reg_6_ ( .J(n100), .K(n100), .TI(temp[6]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[6]) );
  GTECH_FJK2S crc_reg_5_ ( .J(n100), .K(n100), .TI(temp[5]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[5]) );
  GTECH_FJK2S crc_reg_4_ ( .J(n100), .K(n100), .TI(temp[4]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[4]) );
  GTECH_FJK2S crc_reg_3_ ( .J(n100), .K(n100), .TI(temp[3]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[3]) );
  GTECH_FJK2S crc_reg_2_ ( .J(n100), .K(n100), .TI(temp[2]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[2]) );
  GTECH_FJK2S crc_reg_1_ ( .J(n100), .K(n100), .TI(temp[1]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[1]) );
  GTECH_FJK2S crc_reg_0_ ( .J(n100), .K(n100), .TI(temp[0]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[0]) );
  GTECH_FD3 temp_reg_23_ ( .D(n99), .CP(clk), .CD(n91), .SD(n90), .Q(temp[23]), 
        .QN(N11) );
  GTECH_FD3 temp_reg_22_ ( .D(n98), .CP(clk), .CD(n89), .SD(n88), .Q(temp[22]), 
        .QN(N15) );
  GTECH_FD3 temp_reg_21_ ( .D(n97), .CP(clk), .CD(n87), .SD(n86), .Q(temp[21]), 
        .QN(N19) );
  GTECH_FD3 temp_reg_20_ ( .D(n96), .CP(clk), .CD(n85), .SD(n84), .Q(temp[20]), 
        .QN(N23) );
  GTECH_FD3 temp_reg_19_ ( .D(n95), .CP(clk), .CD(n83), .SD(n82), .Q(temp[19]), 
        .QN(N64) );
  GTECH_FD3 temp_reg_18_ ( .D(n94), .CP(clk), .CD(n81), .SD(n80), .Q(temp[18]), 
        .QN(N62) );
  GTECH_FD3 temp_reg_17_ ( .D(n93), .CP(clk), .CD(n79), .SD(n78), .Q(temp[17]), 
        .QN(N60) );
  GTECH_FD3 temp_reg_16_ ( .D(n92), .CP(clk), .CD(n77), .SD(n76), .Q(temp[16]), 
        .QN(N58) );
  GTECH_ZERO U143 ( .Z(n100) );
  GTECH_AND2 U144 ( .A(temp[23]), .B(n148), .Z(n99) );
  GTECH_AND2 U145 ( .A(temp[22]), .B(n149), .Z(n98) );
  GTECH_AND2 U146 ( .A(temp[21]), .B(n150), .Z(n97) );
  GTECH_AND2 U147 ( .A(temp[20]), .B(n151), .Z(n96) );
  GTECH_XOR2 U148 ( .A(temp[19]), .B(n152), .Z(n95) );
  GTECH_NOR3 U149 ( .A(n148), .B(n153), .C(n154), .Z(n152) );
  GTECH_OA21 U150 ( .A(temp[22]), .B(temp[21]), .C(n155), .Z(n154) );
  GTECH_XOR2 U151 ( .A(temp[18]), .B(n156), .Z(n94) );
  GTECH_AND2 U152 ( .A(n157), .B(n158), .Z(n156) );
  GTECH_OA21 U153 ( .A(n159), .B(temp[22]), .C(n160), .Z(n157) );
  GTECH_NOT U154 ( .A(n161), .Z(n159) );
  GTECH_MUX2 U155 ( .A(n162), .B(n163), .S(temp[17]), .Z(n93) );
  GTECH_OAI21 U156 ( .A(temp[21]), .B(n164), .C(n165), .Z(n163) );
  GTECH_AND2 U157 ( .A(n165), .B(temp[21]), .Z(n162) );
  GTECH_XOR2 U158 ( .A(N274), .B(temp[16]), .Z(n92) );
  GTECH_NAND2 U159 ( .A(n166), .B(n167), .Z(n91) );
  GTECH_NOT U160 ( .A(data[7]), .Z(n167) );
  GTECH_NAND2 U161 ( .A(data[7]), .B(n166), .Z(n90) );
  GTECH_NAND2 U162 ( .A(n166), .B(n168), .Z(n89) );
  GTECH_NOT U163 ( .A(data[6]), .Z(n168) );
  GTECH_NAND2 U164 ( .A(data[6]), .B(n166), .Z(n88) );
  GTECH_NAND2 U165 ( .A(n166), .B(n169), .Z(n87) );
  GTECH_NOT U166 ( .A(data[5]), .Z(n169) );
  GTECH_NAND2 U167 ( .A(data[5]), .B(n166), .Z(n86) );
  GTECH_NAND2 U168 ( .A(n166), .B(n170), .Z(n85) );
  GTECH_NOT U169 ( .A(data[4]), .Z(n170) );
  GTECH_NAND2 U170 ( .A(data[4]), .B(n166), .Z(n84) );
  GTECH_NAND2 U171 ( .A(n166), .B(n171), .Z(n83) );
  GTECH_NOT U172 ( .A(data[3]), .Z(n171) );
  GTECH_NAND2 U173 ( .A(data[3]), .B(n166), .Z(n82) );
  GTECH_NAND2 U174 ( .A(n166), .B(n172), .Z(n81) );
  GTECH_NOT U175 ( .A(data[2]), .Z(n172) );
  GTECH_NAND2 U176 ( .A(data[2]), .B(n166), .Z(n80) );
  GTECH_NAND2 U177 ( .A(n166), .B(n173), .Z(n79) );
  GTECH_NOT U178 ( .A(data[1]), .Z(n173) );
  GTECH_NAND2 U179 ( .A(data[1]), .B(n166), .Z(n78) );
  GTECH_NAND2 U180 ( .A(n166), .B(n174), .Z(n77) );
  GTECH_NOT U181 ( .A(data[0]), .Z(n174) );
  GTECH_NAND2 U182 ( .A(data[0]), .B(n166), .Z(n76) );
  GTECH_NOT U183 ( .A(rst_n), .Z(n166) );
  GTECH_AND4 U184 ( .A(n175), .B(n176), .C(data_valid), .D(n177), .Z(N99) );
  GTECH_NOT U185 ( .A(n178), .Z(N69) );
  GTECH_XOR2 U186 ( .A(temp[19]), .B(temp[15]), .Z(N56) );
  GTECH_XOR2 U187 ( .A(temp[18]), .B(temp[14]), .Z(N55) );
  GTECH_XOR2 U188 ( .A(temp[17]), .B(temp[13]), .Z(N54) );
  GTECH_XOR2 U189 ( .A(temp[22]), .B(temp[11]), .Z(N52) );
  GTECH_XOR2 U190 ( .A(temp[21]), .B(temp[10]), .Z(N51) );
  GTECH_XOR2 U191 ( .A(temp[9]), .B(temp[20]), .Z(N50) );
  GTECH_XOR2 U192 ( .A(temp[8]), .B(temp[19]), .Z(N49) );
  GTECH_XOR2 U193 ( .A(n179), .B(temp[7]), .Z(N48) );
  GTECH_NAND2 U194 ( .A(n155), .B(n180), .Z(n179) );
  GTECH_XOR2 U195 ( .A(n181), .B(temp[6]), .Z(N47) );
  GTECH_NAND2 U196 ( .A(n182), .B(n183), .Z(n181) );
  GTECH_XOR2 U197 ( .A(temp[4]), .B(temp[20]), .Z(N43) );
  GTECH_XOR2 U198 ( .A(temp[3]), .B(temp[19]), .Z(N41) );
  GTECH_XOR2 U199 ( .A(temp[2]), .B(temp[18]), .Z(N39) );
  GTECH_XOR2 U200 ( .A(temp[1]), .B(temp[17]), .Z(N37) );
  GTECH_AND2 U201 ( .A(n184), .B(n185), .Z(N331) );
  GTECH_OA21 U202 ( .A(n175), .B(temp[19]), .C(n186), .Z(N328) );
  GTECH_OA21 U203 ( .A(n187), .B(temp[20]), .C(n188), .Z(N323) );
  GTECH_OA21 U204 ( .A(n189), .B(n151), .C(n190), .Z(N316) );
  GTECH_OA21 U205 ( .A(n191), .B(n190), .C(n192), .Z(N307) );
  GTECH_OAI21 U206 ( .A(temp[18]), .B(n161), .C(n165), .Z(n192) );
  GTECH_OAI21 U207 ( .A(n193), .B(n150), .C(n194), .Z(n190) );
  GTECH_NOT U208 ( .A(n188), .Z(n194) );
  GTECH_OAI21 U209 ( .A(n195), .B(n151), .C(n196), .Z(n188) );
  GTECH_NOT U210 ( .A(n186), .Z(n196) );
  GTECH_OAI21 U211 ( .A(n151), .B(n197), .C(n198), .Z(n186) );
  GTECH_NOT U212 ( .A(n184), .Z(n198) );
  GTECH_OAI21 U213 ( .A(n148), .B(n199), .C(n200), .Z(n184) );
  GTECH_NOT U214 ( .A(N70), .Z(n200) );
  GTECH_NAND2 U215 ( .A(n178), .B(n201), .Z(N70) );
  GTECH_OR3 U216 ( .A(n148), .B(n202), .C(n185), .Z(n201) );
  GTECH_NAND2 U217 ( .A(n203), .B(data_valid), .Z(n178) );
  GTECH_AND_NOT U218 ( .A(temp[22]), .B(n149), .Z(n191) );
  GTECH_OAI21 U219 ( .A(n155), .B(n148), .C(n204), .Z(N298) );
  GTECH_OR3 U220 ( .A(n205), .B(n161), .C(n206), .Z(n204) );
  GTECH_OAI21 U221 ( .A(n207), .B(n208), .C(n209), .Z(N287) );
  GTECH_OR4 U222 ( .A(n197), .B(n206), .C(temp[23]), .D(temp[21]), .Z(n209) );
  GTECH_OAI22 U223 ( .A(n195), .B(n151), .C(n208), .D(n210), .Z(N274) );
  GTECH_AND_NOT U224 ( .A(n211), .B(n206), .Z(N261) );
  GTECH_OA21 U225 ( .A(temp[21]), .B(n189), .C(n155), .Z(n211) );
  GTECH_NOT U226 ( .A(n212), .Z(n189) );
  GTECH_NAND2 U227 ( .A(n187), .B(n195), .Z(n212) );
  GTECH_NOT U228 ( .A(n210), .Z(n187) );
  GTECH_NAND2 U229 ( .A(n175), .B(n213), .Z(n210) );
  GTECH_NOT U230 ( .A(temp[19]), .Z(n213) );
  GTECH_NOT U231 ( .A(n207), .Z(n175) );
  GTECH_NOR3 U232 ( .A(n214), .B(temp[23]), .C(n215), .Z(N248) );
  GTECH_OA21 U233 ( .A(n161), .B(n207), .C(n182), .Z(n215) );
  GTECH_OAI21 U234 ( .A(n155), .B(n148), .C(n216), .Z(N235) );
  GTECH_OR3 U235 ( .A(n161), .B(n207), .C(n206), .Z(n216) );
  GTECH_NAND2 U236 ( .A(n217), .B(n182), .Z(n206) );
  GTECH_NOT U237 ( .A(n214), .Z(n217) );
  GTECH_NOT U238 ( .A(data_valid), .Z(n148) );
  GTECH_AND2 U239 ( .A(n164), .B(n218), .Z(N222) );
  GTECH_NOT U240 ( .A(n208), .Z(n218) );
  GTECH_NOT U241 ( .A(n219), .Z(n164) );
  GTECH_OR3 U242 ( .A(temp[20]), .B(temp[19]), .C(temp[18]), .Z(n219) );
  GTECH_OAI21 U243 ( .A(n199), .B(n214), .C(n220), .Z(N209) );
  GTECH_OR3 U244 ( .A(temp[19]), .B(temp[17]), .C(n208), .Z(n220) );
  GTECH_NAND2 U245 ( .A(n221), .B(n222), .Z(n208) );
  GTECH_NOT U246 ( .A(n151), .Z(n221) );
  GTECH_NAND2 U247 ( .A(n165), .B(n193), .Z(n151) );
  GTECH_NOT U248 ( .A(n150), .Z(n165) );
  GTECH_NAND2 U249 ( .A(n158), .B(n182), .Z(n150) );
  GTECH_NOT U250 ( .A(n149), .Z(n158) );
  GTECH_NAND2 U251 ( .A(data_valid), .B(n155), .Z(n149) );
  GTECH_NAND2 U252 ( .A(data_valid), .B(n222), .Z(n214) );
  GTECH_OR3 U253 ( .A(n205), .B(n203), .C(n160), .Z(n222) );
  GTECH_NAND2 U254 ( .A(n153), .B(n199), .Z(n160) );
  GTECH_NOT U255 ( .A(n223), .Z(n153) );
  GTECH_NAND4 U256 ( .A(n197), .B(n193), .C(n182), .D(n155), .Z(n223) );
  GTECH_NOT U257 ( .A(temp[23]), .Z(n155) );
  GTECH_NOT U258 ( .A(temp[22]), .Z(n182) );
  GTECH_NOT U259 ( .A(temp[21]), .Z(n193) );
  GTECH_NAND2 U260 ( .A(temp[19]), .B(n195), .Z(n197) );
  GTECH_NOT U261 ( .A(temp[20]), .Z(n195) );
  GTECH_NOT U262 ( .A(n224), .Z(n203) );
  GTECH_OR3 U263 ( .A(n202), .B(n207), .C(n177), .Z(n224) );
  GTECH_NOT U264 ( .A(temp[16]), .Z(n177) );
  GTECH_NAND2 U265 ( .A(n183), .B(n180), .Z(n207) );
  GTECH_NOT U266 ( .A(temp[17]), .Z(n183) );
  GTECH_NOT U267 ( .A(n185), .Z(n205) );
  GTECH_NAND2 U268 ( .A(temp[17]), .B(n180), .Z(n185) );
  GTECH_NOT U269 ( .A(temp[18]), .Z(n180) );
  GTECH_NAND2 U270 ( .A(temp[18]), .B(n176), .Z(n199) );
  GTECH_NOT U271 ( .A(n202), .Z(n176) );
  GTECH_OR3 U272 ( .A(temp[23]), .B(temp[22]), .C(n161), .Z(n202) );
  GTECH_OR3 U273 ( .A(temp[21]), .B(temp[20]), .C(temp[19]), .Z(n161) );
endmodule

