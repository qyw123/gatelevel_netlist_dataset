
module CRC_16_parallel ( clk, rst_n, data, data_valid, crc );
  input [7:0] data;
  output [15:0] crc;
  input clk, rst_n, data_valid;
  wire   N11, N15, N34, N37, N39, N41, N43, N45, N47, N48, N49, N50, N51, N52,
         N53, N54, N55, N56, N58, N60, N62, N69, N70, N99, N209, N222, N235,
         N248, N261, N274, N287, N298, N307, N316, N323, N328, N331, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n71,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221;
  wire   [23:0] temp;

  GTECH_FJK2S temp_reg_15_ ( .J(n71), .K(n71), .TI(N56), .TE(N287), .CP(clk), 
        .CD(rst_n), .Q(temp[15]) );
  GTECH_FJK2S temp_reg_14_ ( .J(n71), .K(n71), .TI(N55), .TE(N209), .CP(clk), 
        .CD(rst_n), .Q(temp[14]) );
  GTECH_FJK2S temp_reg_13_ ( .J(n71), .K(n71), .TI(N54), .TE(N222), .CP(clk), 
        .CD(rst_n), .Q(temp[13]) );
  GTECH_FJK2S temp_reg_12_ ( .J(n71), .K(n71), .TI(N53), .TE(N235), .CP(clk), 
        .CD(rst_n), .Q(temp[12]), .QN(N53) );
  GTECH_FJK2S temp_reg_11_ ( .J(n71), .K(n71), .TI(N52), .TE(N248), .CP(clk), 
        .CD(rst_n), .Q(temp[11]) );
  GTECH_FJK2S temp_reg_10_ ( .J(n71), .K(n71), .TI(N51), .TE(N261), .CP(clk), 
        .CD(rst_n), .Q(temp[10]) );
  GTECH_FJK2S temp_reg_9_ ( .J(n71), .K(n71), .TI(N50), .TE(N274), .CP(clk), 
        .CD(rst_n), .Q(temp[9]) );
  GTECH_FJK2S temp_reg_8_ ( .J(n71), .K(n71), .TI(N49), .TE(N287), .CP(clk), 
        .CD(rst_n), .Q(temp[8]) );
  GTECH_FJK2S temp_reg_7_ ( .J(n71), .K(n71), .TI(N48), .TE(N298), .CP(clk), 
        .CD(rst_n), .Q(temp[7]) );
  GTECH_FJK2S temp_reg_6_ ( .J(n71), .K(n71), .TI(N47), .TE(N307), .CP(clk), 
        .CD(rst_n), .Q(temp[6]) );
  GTECH_FJK2S temp_reg_5_ ( .J(n71), .K(n71), .TI(N45), .TE(N316), .CP(clk), 
        .CD(rst_n), .Q(temp[5]), .QN(N45) );
  GTECH_FJK2S temp_reg_4_ ( .J(n71), .K(n71), .TI(N43), .TE(N323), .CP(clk), 
        .CD(rst_n), .Q(temp[4]) );
  GTECH_FJK2S temp_reg_3_ ( .J(n71), .K(n71), .TI(N41), .TE(N328), .CP(clk), 
        .CD(rst_n), .Q(temp[3]) );
  GTECH_FJK2S temp_reg_2_ ( .J(n71), .K(n71), .TI(N39), .TE(N331), .CP(clk), 
        .CD(rst_n), .Q(temp[2]) );
  GTECH_FJK2S temp_reg_1_ ( .J(n71), .K(n71), .TI(N37), .TE(N70), .CP(clk), 
        .CD(rst_n), .Q(temp[1]) );
  GTECH_FJK2S temp_reg_0_ ( .J(n71), .K(n71), .TI(N34), .TE(N69), .CP(clk), 
        .CD(rst_n), .Q(temp[0]), .QN(N34) );
  GTECH_FJK2S crc_reg_15_ ( .J(n71), .K(n71), .TI(temp[15]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[15]) );
  GTECH_FJK2S crc_reg_14_ ( .J(n71), .K(n71), .TI(temp[14]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[14]) );
  GTECH_FJK2S crc_reg_13_ ( .J(n71), .K(n71), .TI(temp[13]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[13]) );
  GTECH_FJK2S crc_reg_12_ ( .J(n71), .K(n71), .TI(temp[12]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[12]) );
  GTECH_FJK2S crc_reg_11_ ( .J(n71), .K(n71), .TI(temp[11]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[11]) );
  GTECH_FJK2S crc_reg_10_ ( .J(n71), .K(n71), .TI(temp[10]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[10]) );
  GTECH_FJK2S crc_reg_9_ ( .J(n71), .K(n71), .TI(temp[9]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[9]) );
  GTECH_FJK2S crc_reg_8_ ( .J(n71), .K(n71), .TI(temp[8]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[8]) );
  GTECH_FJK2S crc_reg_7_ ( .J(n71), .K(n71), .TI(temp[7]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[7]) );
  GTECH_FJK2S crc_reg_6_ ( .J(n71), .K(n71), .TI(temp[6]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[6]) );
  GTECH_FJK2S crc_reg_5_ ( .J(n71), .K(n71), .TI(temp[5]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[5]) );
  GTECH_FJK2S crc_reg_4_ ( .J(n71), .K(n71), .TI(temp[4]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[4]) );
  GTECH_FJK2S crc_reg_3_ ( .J(n71), .K(n71), .TI(temp[3]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[3]) );
  GTECH_FJK2S crc_reg_2_ ( .J(n71), .K(n71), .TI(temp[2]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[2]) );
  GTECH_FJK2S crc_reg_1_ ( .J(n71), .K(n71), .TI(temp[1]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[1]) );
  GTECH_FJK2S crc_reg_0_ ( .J(n71), .K(n71), .TI(temp[0]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[0]) );
  GTECH_FJK3 temp_reg_23_ ( .J(n71), .K(n102), .CP(clk), .CD(n101), .SD(n100), 
        .Q(temp[23]), .QN(N11) );
  GTECH_FJK3 temp_reg_22_ ( .J(n71), .K(n99), .CP(clk), .CD(n98), .SD(n97), 
        .Q(temp[22]), .QN(N15) );
  GTECH_FJK3 temp_reg_21_ ( .J(n71), .K(n96), .CP(clk), .CD(n95), .SD(n94), 
        .Q(temp[21]) );
  GTECH_FJK3 temp_reg_20_ ( .J(n71), .K(n93), .CP(clk), .CD(n92), .SD(n91), 
        .Q(temp[20]) );
  GTECH_FJK3 temp_reg_19_ ( .J(n90), .K(n89), .CP(clk), .CD(n88), .SD(n87), 
        .Q(temp[19]) );
  GTECH_FJK3 temp_reg_18_ ( .J(n86), .K(n85), .CP(clk), .CD(n84), .SD(n83), 
        .Q(temp[18]), .QN(N62) );
  GTECH_FJK3 temp_reg_17_ ( .J(n82), .K(n81), .CP(clk), .CD(n80), .SD(n79), 
        .Q(temp[17]), .QN(N60) );
  GTECH_FJK3 temp_reg_16_ ( .J(n78), .K(n77), .CP(clk), .CD(n76), .SD(n75), 
        .Q(temp[16]), .QN(N58) );
  GTECH_ZERO U146 ( .Z(n71) );
  GTECH_NAND2 U147 ( .A(n151), .B(n152), .Z(n98) );
  GTECH_NOT U148 ( .A(data[6]), .Z(n152) );
  GTECH_NAND2 U149 ( .A(data[6]), .B(n151), .Z(n97) );
  GTECH_NAND2 U150 ( .A(n151), .B(n153), .Z(n95) );
  GTECH_NOT U151 ( .A(data[5]), .Z(n153) );
  GTECH_NAND2 U152 ( .A(data[5]), .B(n151), .Z(n94) );
  GTECH_NOT U153 ( .A(n154), .Z(n93) );
  GTECH_NAND2 U154 ( .A(n151), .B(n155), .Z(n92) );
  GTECH_NOT U155 ( .A(data[4]), .Z(n155) );
  GTECH_NAND2 U156 ( .A(data[4]), .B(n151), .Z(n91) );
  GTECH_AND3 U157 ( .A(n156), .B(n157), .C(n158), .Z(n90) );
  GTECH_AND3 U158 ( .A(n158), .B(n156), .C(temp[19]), .Z(n89) );
  GTECH_NAND2 U159 ( .A(n159), .B(n160), .Z(n158) );
  GTECH_NAND3 U160 ( .A(n161), .B(n162), .C(data_valid), .Z(n160) );
  GTECH_NAND2 U161 ( .A(n151), .B(n163), .Z(n88) );
  GTECH_NOT U162 ( .A(data[3]), .Z(n163) );
  GTECH_NAND2 U163 ( .A(data[3]), .B(n151), .Z(n87) );
  GTECH_AND2 U164 ( .A(n164), .B(n165), .Z(n86) );
  GTECH_AND2 U165 ( .A(n164), .B(temp[18]), .Z(n85) );
  GTECH_AND4 U166 ( .A(data_valid), .B(n166), .C(n167), .D(n168), .Z(n164) );
  GTECH_OAI21 U167 ( .A(temp[21]), .B(n169), .C(n162), .Z(n168) );
  GTECH_OR_NOT U168 ( .A(n156), .B(n170), .Z(n166) );
  GTECH_NAND2 U169 ( .A(n151), .B(n171), .Z(n84) );
  GTECH_NOT U170 ( .A(data[2]), .Z(n171) );
  GTECH_NAND2 U171 ( .A(data[2]), .B(n151), .Z(n83) );
  GTECH_AND2 U172 ( .A(n172), .B(n173), .Z(n82) );
  GTECH_AND2 U173 ( .A(n172), .B(temp[17]), .Z(n81) );
  GTECH_AND2 U174 ( .A(n174), .B(n175), .Z(n172) );
  GTECH_OA22 U175 ( .A(n156), .B(n176), .C(n177), .D(temp[21]), .Z(n174) );
  GTECH_NAND2 U176 ( .A(n151), .B(n178), .Z(n80) );
  GTECH_NOT U177 ( .A(data[1]), .Z(n178) );
  GTECH_NAND2 U178 ( .A(data[1]), .B(n151), .Z(n79) );
  GTECH_AND2 U179 ( .A(N274), .B(n179), .Z(n78) );
  GTECH_AND2 U180 ( .A(temp[16]), .B(N274), .Z(n77) );
  GTECH_NAND2 U181 ( .A(n151), .B(n180), .Z(n76) );
  GTECH_NOT U182 ( .A(data[0]), .Z(n180) );
  GTECH_NAND2 U183 ( .A(data[0]), .B(n151), .Z(n75) );
  GTECH_NOT U184 ( .A(n159), .Z(n102) );
  GTECH_NAND2 U185 ( .A(n151), .B(n181), .Z(n101) );
  GTECH_NOT U186 ( .A(data[7]), .Z(n181) );
  GTECH_NAND2 U187 ( .A(data[7]), .B(n151), .Z(n100) );
  GTECH_NOT U188 ( .A(rst_n), .Z(n151) );
  GTECH_AND4 U189 ( .A(n182), .B(n183), .C(data_valid), .D(n179), .Z(N99) );
  GTECH_NOT U190 ( .A(temp[16]), .Z(n179) );
  GTECH_NOT U191 ( .A(n184), .Z(N69) );
  GTECH_XOR2 U192 ( .A(temp[19]), .B(temp[15]), .Z(N56) );
  GTECH_XOR2 U193 ( .A(temp[18]), .B(temp[14]), .Z(N55) );
  GTECH_XOR2 U194 ( .A(temp[17]), .B(temp[13]), .Z(N54) );
  GTECH_XOR2 U195 ( .A(temp[22]), .B(temp[11]), .Z(N52) );
  GTECH_XOR2 U196 ( .A(temp[21]), .B(temp[10]), .Z(N51) );
  GTECH_XOR2 U197 ( .A(temp[9]), .B(temp[20]), .Z(N50) );
  GTECH_XOR2 U198 ( .A(temp[8]), .B(temp[19]), .Z(N49) );
  GTECH_XOR2 U199 ( .A(n185), .B(temp[7]), .Z(N48) );
  GTECH_NAND2 U200 ( .A(n167), .B(n165), .Z(n185) );
  GTECH_XOR2 U201 ( .A(n186), .B(temp[6]), .Z(N47) );
  GTECH_NAND2 U202 ( .A(n162), .B(n173), .Z(n186) );
  GTECH_XOR2 U203 ( .A(temp[4]), .B(temp[20]), .Z(N43) );
  GTECH_XOR2 U204 ( .A(temp[3]), .B(temp[19]), .Z(N41) );
  GTECH_XOR2 U205 ( .A(temp[2]), .B(temp[18]), .Z(N39) );
  GTECH_XOR2 U206 ( .A(temp[1]), .B(temp[17]), .Z(N37) );
  GTECH_AND2 U207 ( .A(n187), .B(n188), .Z(N331) );
  GTECH_OA21 U208 ( .A(n182), .B(temp[19]), .C(n189), .Z(N328) );
  GTECH_AND2 U209 ( .A(n190), .B(n191), .Z(N323) );
  GTECH_OAI21 U210 ( .A(temp[19]), .B(n192), .C(n193), .Z(n190) );
  GTECH_OA22 U211 ( .A(n194), .B(n195), .C(n96), .D(n191), .Z(N316) );
  GTECH_NOT U212 ( .A(n196), .Z(n96) );
  GTECH_NAND2 U213 ( .A(temp[21]), .B(n175), .Z(n196) );
  GTECH_OA21 U214 ( .A(n99), .B(n191), .C(n197), .Z(N307) );
  GTECH_OAI21 U215 ( .A(temp[18]), .B(n169), .C(n175), .Z(n197) );
  GTECH_NAND2 U216 ( .A(n198), .B(n154), .Z(n191) );
  GTECH_NOT U217 ( .A(n189), .Z(n198) );
  GTECH_OAI21 U218 ( .A(n195), .B(n199), .C(n200), .Z(n189) );
  GTECH_NOT U219 ( .A(n201), .Z(n99) );
  GTECH_NAND3 U220 ( .A(data_valid), .B(n167), .C(temp[22]), .Z(n201) );
  GTECH_OAI21 U221 ( .A(n202), .B(n203), .C(n159), .Z(N298) );
  GTECH_OAI22 U222 ( .A(n204), .B(n205), .C(n192), .D(n206), .Z(N287) );
  GTECH_OR_NOT U223 ( .A(n199), .B(n207), .Z(n205) );
  GTECH_OAI21 U224 ( .A(n192), .B(n206), .C(n154), .Z(N274) );
  GTECH_NAND2 U225 ( .A(temp[20]), .B(n208), .Z(n154) );
  GTECH_AND3 U226 ( .A(n162), .B(n167), .C(n209), .Z(N261) );
  GTECH_OA21 U227 ( .A(n194), .B(temp[21]), .C(n207), .Z(n209) );
  GTECH_NOT U228 ( .A(n210), .Z(n194) );
  GTECH_AND3 U229 ( .A(n207), .B(n167), .C(n211), .Z(N248) );
  GTECH_OAI21 U230 ( .A(temp[21]), .B(n210), .C(n162), .Z(n211) );
  GTECH_NAND2 U231 ( .A(n182), .B(n177), .Z(n210) );
  GTECH_OAI21 U232 ( .A(n192), .B(n203), .C(n159), .Z(N235) );
  GTECH_NAND2 U233 ( .A(temp[23]), .B(data_valid), .Z(n159) );
  GTECH_NAND4 U234 ( .A(n177), .B(n207), .C(n161), .D(n162), .Z(n203) );
  GTECH_NOT U235 ( .A(n206), .Z(N222) );
  GTECH_OAI22 U236 ( .A(n212), .B(n170), .C(temp[17]), .D(n206), .Z(N209) );
  GTECH_OAI21 U237 ( .A(n176), .B(n213), .C(n208), .Z(n206) );
  GTECH_NOT U238 ( .A(n195), .Z(n208) );
  GTECH_NAND2 U239 ( .A(n175), .B(n161), .Z(n195) );
  GTECH_NOT U240 ( .A(n214), .Z(n175) );
  GTECH_NAND3 U241 ( .A(n162), .B(n167), .C(data_valid), .Z(n214) );
  GTECH_NOT U242 ( .A(n188), .Z(n176) );
  GTECH_NOT U243 ( .A(n207), .Z(n212) );
  GTECH_OAI21 U244 ( .A(n215), .B(n216), .C(n200), .Z(n207) );
  GTECH_NOT U245 ( .A(n187), .Z(n200) );
  GTECH_OAI21 U246 ( .A(n216), .B(n170), .C(n217), .Z(n187) );
  GTECH_NOT U247 ( .A(N70), .Z(n217) );
  GTECH_OAI21 U248 ( .A(n216), .B(n188), .C(n184), .Z(N70) );
  GTECH_NAND2 U249 ( .A(n213), .B(data_valid), .Z(n184) );
  GTECH_NOT U250 ( .A(n218), .Z(n213) );
  GTECH_NAND3 U251 ( .A(n182), .B(n183), .C(temp[16]), .Z(n218) );
  GTECH_NOT U252 ( .A(n192), .Z(n182) );
  GTECH_NAND2 U253 ( .A(n173), .B(n165), .Z(n192) );
  GTECH_NOT U254 ( .A(temp[17]), .Z(n173) );
  GTECH_NAND2 U255 ( .A(n202), .B(n183), .Z(n188) );
  GTECH_NOT U256 ( .A(n219), .Z(n202) );
  GTECH_NAND2 U257 ( .A(temp[17]), .B(n165), .Z(n219) );
  GTECH_NOT U258 ( .A(temp[18]), .Z(n165) );
  GTECH_NAND2 U259 ( .A(temp[18]), .B(n183), .Z(n170) );
  GTECH_NOT U260 ( .A(n220), .Z(n183) );
  GTECH_NAND2 U261 ( .A(n177), .B(n221), .Z(n220) );
  GTECH_NOT U262 ( .A(n169), .Z(n177) );
  GTECH_NAND2 U263 ( .A(n157), .B(n193), .Z(n169) );
  GTECH_NOT U264 ( .A(temp[19]), .Z(n157) );
  GTECH_NOT U265 ( .A(data_valid), .Z(n216) );
  GTECH_NOT U266 ( .A(n156), .Z(n215) );
  GTECH_NAND2 U267 ( .A(n221), .B(n199), .Z(n156) );
  GTECH_NAND2 U268 ( .A(temp[19]), .B(n193), .Z(n199) );
  GTECH_NOT U269 ( .A(temp[20]), .Z(n193) );
  GTECH_NOT U270 ( .A(n204), .Z(n221) );
  GTECH_NAND3 U271 ( .A(n162), .B(n167), .C(n161), .Z(n204) );
  GTECH_NOT U272 ( .A(temp[21]), .Z(n161) );
  GTECH_NOT U273 ( .A(temp[23]), .Z(n167) );
  GTECH_NOT U274 ( .A(temp[22]), .Z(n162) );
endmodule

