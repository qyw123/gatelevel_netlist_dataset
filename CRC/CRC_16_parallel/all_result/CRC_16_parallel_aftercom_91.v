
module CRC_16_parallel ( clk, rst_n, data, data_valid, crc );
  input [7:0] data;
  output [15:0] crc;
  input clk, rst_n, data_valid;
  wire   N11, N15, N19, N23, N34, N37, N39, N41, N43, N45, N47, N48, N49, N50,
         N51, N52, N53, N54, N55, N56, N60, N62, N64, N69, N70, N99, N209,
         N222, N235, N248, N261, N274, N287, N298, N307, N316, N323, N328,
         N331, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227;
  wire   [23:0] temp;

  GTECH_FJK2S temp_reg_15_ ( .J(1'b0), .K(1'b0), .TI(N56), .TE(N287), .CP(clk), 
        .CD(rst_n), .Q(temp[15]) );
  GTECH_FJK2S temp_reg_14_ ( .J(1'b0), .K(1'b0), .TI(N55), .TE(N209), .CP(clk), 
        .CD(rst_n), .Q(temp[14]) );
  GTECH_FJK2S temp_reg_13_ ( .J(1'b0), .K(1'b0), .TI(N54), .TE(N222), .CP(clk), 
        .CD(rst_n), .Q(temp[13]) );
  GTECH_FJK2S temp_reg_12_ ( .J(1'b0), .K(1'b0), .TI(N53), .TE(N235), .CP(clk), 
        .CD(rst_n), .Q(temp[12]), .QN(N53) );
  GTECH_FJK2S temp_reg_11_ ( .J(1'b0), .K(1'b0), .TI(N52), .TE(N248), .CP(clk), 
        .CD(rst_n), .Q(temp[11]) );
  GTECH_FJK2S temp_reg_10_ ( .J(1'b0), .K(1'b0), .TI(N51), .TE(N261), .CP(clk), 
        .CD(rst_n), .Q(temp[10]) );
  GTECH_FJK2S temp_reg_9_ ( .J(1'b0), .K(1'b0), .TI(N50), .TE(N274), .CP(clk), 
        .CD(rst_n), .Q(temp[9]) );
  GTECH_FJK2S temp_reg_8_ ( .J(1'b0), .K(1'b0), .TI(N49), .TE(N287), .CP(clk), 
        .CD(rst_n), .Q(temp[8]) );
  GTECH_FJK2S temp_reg_7_ ( .J(1'b0), .K(1'b0), .TI(N48), .TE(N298), .CP(clk), 
        .CD(rst_n), .Q(temp[7]) );
  GTECH_FJK2S temp_reg_6_ ( .J(1'b0), .K(1'b0), .TI(N47), .TE(N307), .CP(clk), 
        .CD(rst_n), .Q(temp[6]) );
  GTECH_FJK2S temp_reg_5_ ( .J(1'b0), .K(1'b0), .TI(N45), .TE(N316), .CP(clk), 
        .CD(rst_n), .Q(temp[5]), .QN(N45) );
  GTECH_FJK2S temp_reg_4_ ( .J(1'b0), .K(1'b0), .TI(N43), .TE(N323), .CP(clk), 
        .CD(rst_n), .Q(temp[4]) );
  GTECH_FJK2S temp_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N41), .TE(N328), .CP(clk), 
        .CD(rst_n), .Q(temp[3]) );
  GTECH_FJK2S temp_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N39), .TE(N331), .CP(clk), 
        .CD(rst_n), .Q(temp[2]) );
  GTECH_FJK2S temp_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N37), .TE(N70), .CP(clk), 
        .CD(rst_n), .Q(temp[1]) );
  GTECH_FJK2S temp_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N34), .TE(N69), .CP(clk), 
        .CD(rst_n), .Q(temp[0]), .QN(N34) );
  GTECH_FJK2S crc_reg_15_ ( .J(1'b0), .K(1'b0), .TI(temp[15]), .TE(N99), .CP(
        clk), .CD(rst_n), .Q(crc[15]) );
  GTECH_FJK2S crc_reg_14_ ( .J(1'b0), .K(1'b0), .TI(temp[14]), .TE(N99), .CP(
        clk), .CD(rst_n), .Q(crc[14]) );
  GTECH_FJK2S crc_reg_13_ ( .J(1'b0), .K(1'b0), .TI(temp[13]), .TE(N99), .CP(
        clk), .CD(rst_n), .Q(crc[13]) );
  GTECH_FJK2S crc_reg_12_ ( .J(1'b0), .K(1'b0), .TI(temp[12]), .TE(N99), .CP(
        clk), .CD(rst_n), .Q(crc[12]) );
  GTECH_FJK2S crc_reg_11_ ( .J(1'b0), .K(1'b0), .TI(temp[11]), .TE(N99), .CP(
        clk), .CD(rst_n), .Q(crc[11]) );
  GTECH_FJK2S crc_reg_10_ ( .J(1'b0), .K(1'b0), .TI(temp[10]), .TE(N99), .CP(
        clk), .CD(rst_n), .Q(crc[10]) );
  GTECH_FJK2S crc_reg_9_ ( .J(1'b0), .K(1'b0), .TI(temp[9]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[9]) );
  GTECH_FJK2S crc_reg_8_ ( .J(1'b0), .K(1'b0), .TI(temp[8]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[8]) );
  GTECH_FJK2S crc_reg_7_ ( .J(1'b0), .K(1'b0), .TI(temp[7]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[7]) );
  GTECH_FJK2S crc_reg_6_ ( .J(1'b0), .K(1'b0), .TI(temp[6]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[6]) );
  GTECH_FJK2S crc_reg_5_ ( .J(1'b0), .K(1'b0), .TI(temp[5]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[5]) );
  GTECH_FJK2S crc_reg_4_ ( .J(1'b0), .K(1'b0), .TI(temp[4]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[4]) );
  GTECH_FJK2S crc_reg_3_ ( .J(1'b0), .K(1'b0), .TI(temp[3]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[3]) );
  GTECH_FJK2S crc_reg_2_ ( .J(1'b0), .K(1'b0), .TI(temp[2]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[2]) );
  GTECH_FJK2S crc_reg_1_ ( .J(1'b0), .K(1'b0), .TI(temp[1]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[1]) );
  GTECH_FJK2S crc_reg_0_ ( .J(1'b0), .K(1'b0), .TI(temp[0]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[0]) );
  GTECH_FJK3 temp_reg_23_ ( .J(1'b0), .K(n101), .CP(clk), .CD(n100), .SD(n99), 
        .Q(temp[23]), .QN(N11) );
  GTECH_FJK3 temp_reg_22_ ( .J(1'b0), .K(n98), .CP(clk), .CD(n97), .SD(n96), 
        .Q(temp[22]), .QN(N15) );
  GTECH_FJK3 temp_reg_21_ ( .J(1'b0), .K(n95), .CP(clk), .CD(n94), .SD(n93), 
        .Q(temp[21]), .QN(N19) );
  GTECH_FJK3 temp_reg_20_ ( .J(1'b0), .K(n92), .CP(clk), .CD(n91), .SD(n90), 
        .Q(temp[20]), .QN(N23) );
  GTECH_FJK3 temp_reg_19_ ( .J(n89), .K(n88), .CP(clk), .CD(n87), .SD(n86), 
        .Q(temp[19]), .QN(N64) );
  GTECH_FJK3 temp_reg_18_ ( .J(n85), .K(n84), .CP(clk), .CD(n83), .SD(n82), 
        .Q(temp[18]), .QN(N62) );
  GTECH_FJK3 temp_reg_17_ ( .J(n81), .K(n80), .CP(clk), .CD(n79), .SD(n78), 
        .Q(temp[17]), .QN(N60) );
  GTECH_FJK3 temp_reg_16_ ( .J(n77), .K(n76), .CP(clk), .CD(n75), .SD(n74), 
        .Q(temp[16]) );
  GTECH_NAND2 U145 ( .A(data[7]), .B(n150), .Z(n99) );
  GTECH_NAND2 U146 ( .A(n150), .B(n151), .Z(n97) );
  GTECH_NOT U147 ( .A(data[6]), .Z(n151) );
  GTECH_NAND2 U148 ( .A(data[6]), .B(n150), .Z(n96) );
  GTECH_NOT U149 ( .A(n152), .Z(n95) );
  GTECH_NAND2 U150 ( .A(n150), .B(n153), .Z(n94) );
  GTECH_NOT U151 ( .A(data[5]), .Z(n153) );
  GTECH_NAND2 U152 ( .A(data[5]), .B(n150), .Z(n93) );
  GTECH_NAND2 U153 ( .A(n150), .B(n154), .Z(n91) );
  GTECH_NOT U154 ( .A(data[4]), .Z(n154) );
  GTECH_NAND2 U155 ( .A(data[4]), .B(n150), .Z(n90) );
  GTECH_AND3 U156 ( .A(n155), .B(n156), .C(n157), .Z(n89) );
  GTECH_AND3 U157 ( .A(n157), .B(n155), .C(temp[19]), .Z(n88) );
  GTECH_OAI21 U158 ( .A(n158), .B(n159), .C(n160), .Z(n157) );
  GTECH_NAND2 U159 ( .A(n150), .B(n161), .Z(n87) );
  GTECH_NOT U160 ( .A(data[3]), .Z(n161) );
  GTECH_NAND2 U161 ( .A(data[3]), .B(n150), .Z(n86) );
  GTECH_AND2 U162 ( .A(n162), .B(n163), .Z(n85) );
  GTECH_AND2 U163 ( .A(n162), .B(temp[18]), .Z(n84) );
  GTECH_AND2 U164 ( .A(n164), .B(n165), .Z(n162) );
  GTECH_OA21 U165 ( .A(n155), .B(temp[18]), .C(n166), .Z(n164) );
  GTECH_OAI21 U166 ( .A(temp[21]), .B(n167), .C(n168), .Z(n166) );
  GTECH_NAND2 U167 ( .A(n150), .B(n169), .Z(n83) );
  GTECH_NOT U168 ( .A(data[2]), .Z(n169) );
  GTECH_NAND2 U169 ( .A(data[2]), .B(n150), .Z(n82) );
  GTECH_AND2 U170 ( .A(n170), .B(n171), .Z(n81) );
  GTECH_AND2 U171 ( .A(n170), .B(temp[17]), .Z(n80) );
  GTECH_AND2 U172 ( .A(n172), .B(n173), .Z(n170) );
  GTECH_OA21 U173 ( .A(n174), .B(temp[21]), .C(n175), .Z(n172) );
  GTECH_OR_NOT U174 ( .A(n155), .B(n176), .Z(n175) );
  GTECH_NAND2 U175 ( .A(n150), .B(n177), .Z(n79) );
  GTECH_NOT U176 ( .A(data[1]), .Z(n177) );
  GTECH_NAND2 U177 ( .A(data[1]), .B(n150), .Z(n78) );
  GTECH_AND2 U178 ( .A(N274), .B(n178), .Z(n77) );
  GTECH_AND2 U179 ( .A(temp[16]), .B(N274), .Z(n76) );
  GTECH_NAND2 U180 ( .A(n150), .B(n179), .Z(n75) );
  GTECH_NOT U181 ( .A(data[0]), .Z(n179) );
  GTECH_NAND2 U182 ( .A(data[0]), .B(n150), .Z(n74) );
  GTECH_NOT U183 ( .A(n160), .Z(n101) );
  GTECH_NAND2 U184 ( .A(n150), .B(n180), .Z(n100) );
  GTECH_NOT U185 ( .A(data[7]), .Z(n180) );
  GTECH_NOT U186 ( .A(rst_n), .Z(n150) );
  GTECH_AND4 U187 ( .A(n181), .B(n182), .C(data_valid), .D(n178), .Z(N99) );
  GTECH_NOT U188 ( .A(temp[16]), .Z(n178) );
  GTECH_NOT U189 ( .A(n183), .Z(N69) );
  GTECH_XOR2 U190 ( .A(temp[19]), .B(temp[15]), .Z(N56) );
  GTECH_XOR2 U191 ( .A(temp[18]), .B(temp[14]), .Z(N55) );
  GTECH_XOR2 U192 ( .A(temp[17]), .B(temp[13]), .Z(N54) );
  GTECH_XOR2 U193 ( .A(temp[22]), .B(temp[11]), .Z(N52) );
  GTECH_XOR2 U194 ( .A(temp[21]), .B(temp[10]), .Z(N51) );
  GTECH_XOR2 U195 ( .A(temp[9]), .B(temp[20]), .Z(N50) );
  GTECH_XOR2 U196 ( .A(temp[8]), .B(temp[19]), .Z(N49) );
  GTECH_XOR2 U197 ( .A(n184), .B(temp[7]), .Z(N48) );
  GTECH_NAND2 U198 ( .A(n185), .B(n163), .Z(n184) );
  GTECH_XOR2 U199 ( .A(n186), .B(temp[6]), .Z(N47) );
  GTECH_NAND2 U200 ( .A(n168), .B(n171), .Z(n186) );
  GTECH_XOR2 U201 ( .A(temp[4]), .B(temp[20]), .Z(N43) );
  GTECH_XOR2 U202 ( .A(temp[3]), .B(temp[19]), .Z(N41) );
  GTECH_XOR2 U203 ( .A(temp[2]), .B(temp[18]), .Z(N39) );
  GTECH_XOR2 U204 ( .A(temp[1]), .B(temp[17]), .Z(N37) );
  GTECH_AND2 U205 ( .A(n187), .B(n176), .Z(N331) );
  GTECH_OA21 U206 ( .A(n181), .B(temp[19]), .C(n188), .Z(N328) );
  GTECH_OA21 U207 ( .A(n92), .B(n188), .C(n189), .Z(N323) );
  GTECH_OAI21 U208 ( .A(temp[19]), .B(n190), .C(n191), .Z(n189) );
  GTECH_NOT U209 ( .A(n192), .Z(n92) );
  GTECH_AND2 U210 ( .A(n193), .B(n194), .Z(N316) );
  GTECH_OA22 U211 ( .A(n195), .B(n196), .C(n98), .D(n194), .Z(N307) );
  GTECH_NAND2 U212 ( .A(n197), .B(n152), .Z(n194) );
  GTECH_NAND2 U213 ( .A(temp[21]), .B(n173), .Z(n152) );
  GTECH_NOT U214 ( .A(n188), .Z(n197) );
  GTECH_OAI21 U215 ( .A(n156), .B(n198), .C(n199), .Z(n188) );
  GTECH_NOT U216 ( .A(n187), .Z(n199) );
  GTECH_NAND2 U217 ( .A(n200), .B(n201), .Z(n187) );
  GTECH_NOT U218 ( .A(N70), .Z(n201) );
  GTECH_OAI21 U219 ( .A(n158), .B(n176), .C(n183), .Z(N70) );
  GTECH_NAND2 U220 ( .A(n202), .B(data_valid), .Z(n183) );
  GTECH_NOT U221 ( .A(n203), .Z(n202) );
  GTECH_NOT U222 ( .A(data_valid), .Z(n158) );
  GTECH_NOT U223 ( .A(n204), .Z(n98) );
  GTECH_NAND2 U224 ( .A(temp[22]), .B(n165), .Z(n204) );
  GTECH_AND3 U225 ( .A(n163), .B(n205), .C(n174), .Z(n195) );
  GTECH_OAI21 U226 ( .A(n206), .B(n207), .C(n160), .Z(N298) );
  GTECH_NAND2 U227 ( .A(n208), .B(n209), .Z(N287) );
  GTECH_NAND3 U228 ( .A(n210), .B(temp[19]), .C(n211), .Z(n209) );
  GTECH_NAND3 U229 ( .A(n181), .B(n212), .C(n191), .Z(n208) );
  GTECH_NAND2 U230 ( .A(n192), .B(n213), .Z(N274) );
  GTECH_NAND3 U231 ( .A(n181), .B(n214), .C(n215), .Z(n213) );
  GTECH_NAND2 U232 ( .A(temp[20]), .B(n214), .Z(n192) );
  GTECH_AND3 U233 ( .A(n193), .B(n168), .C(n211), .Z(N261) );
  GTECH_OAI21 U234 ( .A(n167), .B(n190), .C(n205), .Z(n193) );
  GTECH_OA21 U235 ( .A(n216), .B(temp[22]), .C(n211), .Z(N248) );
  GTECH_NOT U236 ( .A(n217), .Z(n211) );
  GTECH_NAND2 U237 ( .A(n165), .B(n212), .Z(n217) );
  GTECH_AND3 U238 ( .A(n174), .B(n205), .C(n181), .Z(n216) );
  GTECH_OAI21 U239 ( .A(n190), .B(n207), .C(n160), .Z(N235) );
  GTECH_NAND2 U240 ( .A(temp[23]), .B(data_valid), .Z(n160) );
  GTECH_NAND4 U241 ( .A(n174), .B(n210), .C(data_valid), .D(n212), .Z(n207) );
  GTECH_AND3 U242 ( .A(n215), .B(n163), .C(n191), .Z(N222) );
  GTECH_NAND2 U243 ( .A(n200), .B(n218), .Z(N209) );
  GTECH_NAND3 U244 ( .A(n215), .B(n171), .C(n191), .Z(n218) );
  GTECH_NOT U245 ( .A(n198), .Z(n191) );
  GTECH_NAND2 U246 ( .A(n214), .B(n219), .Z(n198) );
  GTECH_NOT U247 ( .A(n220), .Z(n214) );
  GTECH_NAND2 U248 ( .A(n173), .B(n205), .Z(n220) );
  GTECH_NOT U249 ( .A(n196), .Z(n173) );
  GTECH_NAND2 U250 ( .A(n165), .B(n168), .Z(n196) );
  GTECH_NOT U251 ( .A(n221), .Z(n165) );
  GTECH_NAND2 U252 ( .A(data_valid), .B(n185), .Z(n221) );
  GTECH_NOT U253 ( .A(n222), .Z(n215) );
  GTECH_NAND2 U254 ( .A(n212), .B(n156), .Z(n222) );
  GTECH_NAND3 U255 ( .A(n203), .B(n176), .C(n223), .Z(n212) );
  GTECH_OA21 U256 ( .A(n163), .B(n224), .C(n225), .Z(n223) );
  GTECH_NOT U257 ( .A(n155), .Z(n225) );
  GTECH_NAND2 U258 ( .A(n226), .B(n210), .Z(n155) );
  GTECH_OA21 U259 ( .A(temp[20]), .B(n156), .C(n185), .Z(n226) );
  GTECH_NAND2 U260 ( .A(n182), .B(n206), .Z(n176) );
  GTECH_NOT U261 ( .A(n227), .Z(n206) );
  GTECH_NAND2 U262 ( .A(temp[17]), .B(n163), .Z(n227) );
  GTECH_NAND3 U263 ( .A(n181), .B(n182), .C(temp[16]), .Z(n203) );
  GTECH_NOT U264 ( .A(n190), .Z(n181) );
  GTECH_NAND2 U265 ( .A(n171), .B(n163), .Z(n190) );
  GTECH_NOT U266 ( .A(temp[18]), .Z(n163) );
  GTECH_NOT U267 ( .A(temp[17]), .Z(n171) );
  GTECH_NAND3 U268 ( .A(temp[18]), .B(data_valid), .C(n182), .Z(n200) );
  GTECH_NOT U269 ( .A(n224), .Z(n182) );
  GTECH_NAND3 U270 ( .A(n210), .B(n185), .C(n174), .Z(n224) );
  GTECH_NOT U271 ( .A(n167), .Z(n174) );
  GTECH_NAND2 U272 ( .A(n156), .B(n219), .Z(n167) );
  GTECH_NOT U273 ( .A(temp[20]), .Z(n219) );
  GTECH_NOT U274 ( .A(temp[19]), .Z(n156) );
  GTECH_NOT U275 ( .A(temp[23]), .Z(n185) );
  GTECH_NOT U276 ( .A(n159), .Z(n210) );
  GTECH_NAND2 U277 ( .A(n205), .B(n168), .Z(n159) );
  GTECH_NOT U278 ( .A(temp[22]), .Z(n168) );
  GTECH_NOT U279 ( .A(temp[21]), .Z(n205) );
endmodule

