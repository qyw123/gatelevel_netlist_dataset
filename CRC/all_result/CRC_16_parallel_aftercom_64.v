
module CRC_16_parallel ( clk, rst_n, data, data_valid, crc );
  input [7:0] data;
  output [15:0] crc;
  input clk, rst_n, data_valid;
  wire   N11, N15, N23, N34, N37, N39, N41, N43, N45, N47, N48, N49, N50, N51,
         N52, N53, N54, N55, N56, N58, N60, N62, N64, N69, N70, N99, N209,
         N222, N235, N248, N261, N274, N287, N298, N307, N316, N323, N328,
         N331, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n20, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232;
  wire   [23:0] temp;

  GTECH_FJK2S temp_reg_15_ ( .J(n20), .K(n20), .TI(N56), .TE(N287), .CP(clk), 
        .CD(rst_n), .Q(temp[15]) );
  GTECH_FJK2S temp_reg_14_ ( .J(n20), .K(n20), .TI(N55), .TE(N209), .CP(clk), 
        .CD(rst_n), .Q(temp[14]) );
  GTECH_FJK2S temp_reg_13_ ( .J(n20), .K(n20), .TI(N54), .TE(N222), .CP(clk), 
        .CD(rst_n), .Q(temp[13]) );
  GTECH_FJK2S temp_reg_12_ ( .J(n20), .K(n20), .TI(N53), .TE(N235), .CP(clk), 
        .CD(rst_n), .Q(temp[12]), .QN(N53) );
  GTECH_FJK2S temp_reg_11_ ( .J(n20), .K(n20), .TI(N52), .TE(N248), .CP(clk), 
        .CD(rst_n), .Q(temp[11]) );
  GTECH_FJK2S temp_reg_10_ ( .J(n20), .K(n20), .TI(N51), .TE(N261), .CP(clk), 
        .CD(rst_n), .Q(temp[10]) );
  GTECH_FJK2S temp_reg_9_ ( .J(n20), .K(n20), .TI(N50), .TE(N274), .CP(clk), 
        .CD(rst_n), .Q(temp[9]) );
  GTECH_FJK2S temp_reg_8_ ( .J(n20), .K(n20), .TI(N49), .TE(N287), .CP(clk), 
        .CD(rst_n), .Q(temp[8]) );
  GTECH_FJK2S temp_reg_7_ ( .J(n20), .K(n20), .TI(N48), .TE(N298), .CP(clk), 
        .CD(rst_n), .Q(temp[7]) );
  GTECH_FJK2S temp_reg_6_ ( .J(n20), .K(n20), .TI(N47), .TE(N307), .CP(clk), 
        .CD(rst_n), .Q(temp[6]) );
  GTECH_FJK2S temp_reg_5_ ( .J(n20), .K(n20), .TI(N45), .TE(N316), .CP(clk), 
        .CD(rst_n), .Q(temp[5]), .QN(N45) );
  GTECH_FJK2S temp_reg_4_ ( .J(n20), .K(n20), .TI(N43), .TE(N323), .CP(clk), 
        .CD(rst_n), .Q(temp[4]) );
  GTECH_FJK2S temp_reg_3_ ( .J(n20), .K(n20), .TI(N41), .TE(N328), .CP(clk), 
        .CD(rst_n), .Q(temp[3]) );
  GTECH_FJK2S temp_reg_2_ ( .J(n20), .K(n20), .TI(N39), .TE(N331), .CP(clk), 
        .CD(rst_n), .Q(temp[2]) );
  GTECH_FJK2S temp_reg_1_ ( .J(n20), .K(n20), .TI(N37), .TE(N70), .CP(clk), 
        .CD(rst_n), .Q(temp[1]) );
  GTECH_FJK2S temp_reg_0_ ( .J(n20), .K(n20), .TI(N34), .TE(N69), .CP(clk), 
        .CD(rst_n), .Q(temp[0]), .QN(N34) );
  GTECH_FJK2S crc_reg_15_ ( .J(n20), .K(n20), .TI(temp[15]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[15]) );
  GTECH_FJK2S crc_reg_14_ ( .J(n20), .K(n20), .TI(temp[14]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[14]) );
  GTECH_FJK2S crc_reg_13_ ( .J(n20), .K(n20), .TI(temp[13]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[13]) );
  GTECH_FJK2S crc_reg_12_ ( .J(n20), .K(n20), .TI(temp[12]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[12]) );
  GTECH_FJK2S crc_reg_11_ ( .J(n20), .K(n20), .TI(temp[11]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[11]) );
  GTECH_FJK2S crc_reg_10_ ( .J(n20), .K(n20), .TI(temp[10]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[10]) );
  GTECH_FJK2S crc_reg_9_ ( .J(n20), .K(n20), .TI(temp[9]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[9]) );
  GTECH_FJK2S crc_reg_8_ ( .J(n20), .K(n20), .TI(temp[8]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[8]) );
  GTECH_FJK2S crc_reg_7_ ( .J(n20), .K(n20), .TI(temp[7]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[7]) );
  GTECH_FJK2S crc_reg_6_ ( .J(n20), .K(n20), .TI(temp[6]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[6]) );
  GTECH_FJK2S crc_reg_5_ ( .J(n20), .K(n20), .TI(temp[5]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[5]) );
  GTECH_FJK2S crc_reg_4_ ( .J(n20), .K(n20), .TI(temp[4]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[4]) );
  GTECH_FJK2S crc_reg_3_ ( .J(n20), .K(n20), .TI(temp[3]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[3]) );
  GTECH_FJK2S crc_reg_2_ ( .J(n20), .K(n20), .TI(temp[2]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[2]) );
  GTECH_FJK2S crc_reg_1_ ( .J(n20), .K(n20), .TI(temp[1]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[1]) );
  GTECH_FJK2S crc_reg_0_ ( .J(n20), .K(n20), .TI(temp[0]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[0]) );
  GTECH_FJK3 temp_reg_23_ ( .J(n20), .K(n101), .CP(clk), .CD(n100), .SD(n99), 
        .Q(temp[23]), .QN(N11) );
  GTECH_FJK3 temp_reg_22_ ( .J(n20), .K(n98), .CP(clk), .CD(n97), .SD(n96), 
        .Q(temp[22]), .QN(N15) );
  GTECH_FJK3 temp_reg_21_ ( .J(n20), .K(n95), .CP(clk), .CD(n94), .SD(n93), 
        .Q(temp[21]) );
  GTECH_FJK3 temp_reg_20_ ( .J(n20), .K(n92), .CP(clk), .CD(n91), .SD(n90), 
        .Q(temp[20]), .QN(N23) );
  GTECH_FJK3 temp_reg_19_ ( .J(n89), .K(n88), .CP(clk), .CD(n87), .SD(n86), 
        .Q(temp[19]), .QN(N64) );
  GTECH_FJK3 temp_reg_18_ ( .J(n85), .K(n84), .CP(clk), .CD(n83), .SD(n82), 
        .Q(temp[18]), .QN(N62) );
  GTECH_FJK3 temp_reg_17_ ( .J(n81), .K(n80), .CP(clk), .CD(n79), .SD(n78), 
        .Q(temp[17]), .QN(N60) );
  GTECH_FJK3 temp_reg_16_ ( .J(n77), .K(n76), .CP(clk), .CD(n75), .SD(n74), 
        .Q(temp[16]), .QN(N58) );
  GTECH_ZERO U144 ( .Z(n20) );
  GTECH_NAND2 U145 ( .A(data[7]), .B(n150), .Z(n99) );
  GTECH_NAND2 U146 ( .A(n150), .B(n151), .Z(n97) );
  GTECH_NOT U147 ( .A(data[6]), .Z(n151) );
  GTECH_NAND2 U148 ( .A(data[6]), .B(n150), .Z(n96) );
  GTECH_NOT U149 ( .A(n152), .Z(n95) );
  GTECH_NAND2 U150 ( .A(n150), .B(n153), .Z(n94) );
  GTECH_NOT U151 ( .A(data[5]), .Z(n153) );
  GTECH_NAND2 U152 ( .A(data[5]), .B(n150), .Z(n93) );
  GTECH_NOT U153 ( .A(n154), .Z(n92) );
  GTECH_NAND2 U154 ( .A(n150), .B(n155), .Z(n91) );
  GTECH_NOT U155 ( .A(data[4]), .Z(n155) );
  GTECH_NAND2 U156 ( .A(data[4]), .B(n150), .Z(n90) );
  GTECH_AND3 U157 ( .A(n156), .B(n157), .C(n158), .Z(n89) );
  GTECH_AND3 U158 ( .A(n158), .B(n156), .C(temp[19]), .Z(n88) );
  GTECH_OAI21 U159 ( .A(n159), .B(n160), .C(n161), .Z(n158) );
  GTECH_NAND2 U160 ( .A(n150), .B(n162), .Z(n87) );
  GTECH_NOT U161 ( .A(data[3]), .Z(n162) );
  GTECH_NAND2 U162 ( .A(data[3]), .B(n150), .Z(n86) );
  GTECH_AND2 U163 ( .A(n163), .B(n164), .Z(n85) );
  GTECH_AND2 U164 ( .A(n163), .B(temp[18]), .Z(n84) );
  GTECH_AND3 U165 ( .A(n165), .B(n166), .C(n167), .Z(n163) );
  GTECH_OAI21 U166 ( .A(temp[21]), .B(n168), .C(n169), .Z(n167) );
  GTECH_NAND2 U167 ( .A(n150), .B(n170), .Z(n83) );
  GTECH_NOT U168 ( .A(data[2]), .Z(n170) );
  GTECH_NAND2 U169 ( .A(data[2]), .B(n150), .Z(n82) );
  GTECH_AND2 U170 ( .A(n171), .B(n172), .Z(n81) );
  GTECH_AND2 U171 ( .A(n171), .B(temp[17]), .Z(n80) );
  GTECH_AND3 U172 ( .A(n173), .B(n174), .C(n175), .Z(n171) );
  GTECH_OR_NOT U173 ( .A(n165), .B(n176), .Z(n174) );
  GTECH_AO21 U174 ( .A(n177), .B(n164), .C(temp[21]), .Z(n173) );
  GTECH_NAND2 U175 ( .A(n150), .B(n178), .Z(n79) );
  GTECH_NOT U176 ( .A(data[1]), .Z(n178) );
  GTECH_NAND2 U177 ( .A(data[1]), .B(n150), .Z(n78) );
  GTECH_AND2 U178 ( .A(N274), .B(n179), .Z(n77) );
  GTECH_AND2 U179 ( .A(temp[16]), .B(N274), .Z(n76) );
  GTECH_NAND2 U180 ( .A(n150), .B(n180), .Z(n75) );
  GTECH_NOT U181 ( .A(data[0]), .Z(n180) );
  GTECH_NAND2 U182 ( .A(data[0]), .B(n150), .Z(n74) );
  GTECH_NOT U183 ( .A(n161), .Z(n101) );
  GTECH_NAND2 U184 ( .A(n150), .B(n181), .Z(n100) );
  GTECH_NOT U185 ( .A(data[7]), .Z(n181) );
  GTECH_NOT U186 ( .A(rst_n), .Z(n150) );
  GTECH_AND4 U187 ( .A(n182), .B(n183), .C(data_valid), .D(n179), .Z(N99) );
  GTECH_NOT U188 ( .A(temp[16]), .Z(n179) );
  GTECH_NOT U189 ( .A(n184), .Z(N69) );
  GTECH_XOR2 U190 ( .A(temp[19]), .B(temp[15]), .Z(N56) );
  GTECH_XOR2 U191 ( .A(temp[18]), .B(temp[14]), .Z(N55) );
  GTECH_XOR2 U192 ( .A(temp[17]), .B(temp[13]), .Z(N54) );
  GTECH_XOR2 U193 ( .A(temp[22]), .B(temp[11]), .Z(N52) );
  GTECH_XOR2 U194 ( .A(temp[21]), .B(temp[10]), .Z(N51) );
  GTECH_XOR2 U195 ( .A(temp[9]), .B(temp[20]), .Z(N50) );
  GTECH_XOR2 U196 ( .A(temp[8]), .B(temp[19]), .Z(N49) );
  GTECH_XOR2 U197 ( .A(n185), .B(temp[7]), .Z(N48) );
  GTECH_NAND2 U198 ( .A(n186), .B(n164), .Z(n185) );
  GTECH_XOR2 U199 ( .A(n187), .B(temp[6]), .Z(N47) );
  GTECH_NAND2 U200 ( .A(n169), .B(n172), .Z(n187) );
  GTECH_XOR2 U201 ( .A(temp[4]), .B(temp[20]), .Z(N43) );
  GTECH_XOR2 U202 ( .A(temp[3]), .B(temp[19]), .Z(N41) );
  GTECH_XOR2 U203 ( .A(temp[2]), .B(temp[18]), .Z(N39) );
  GTECH_XOR2 U204 ( .A(temp[1]), .B(temp[17]), .Z(N37) );
  GTECH_AND2 U205 ( .A(n188), .B(n176), .Z(N331) );
  GTECH_AOI21 U206 ( .A(n157), .B(n189), .C(n190), .Z(N328) );
  GTECH_AND2 U207 ( .A(n191), .B(n192), .Z(N323) );
  GTECH_OAI21 U208 ( .A(temp[19]), .B(n189), .C(n193), .Z(n191) );
  GTECH_OAI21 U209 ( .A(n194), .B(n195), .C(n152), .Z(N316) );
  GTECH_NAND2 U210 ( .A(temp[21]), .B(n175), .Z(n152) );
  GTECH_NOT U211 ( .A(n196), .Z(n195) );
  GTECH_NOT U212 ( .A(n192), .Z(n194) );
  GTECH_OA22 U213 ( .A(n197), .B(n198), .C(n98), .D(n192), .Z(N307) );
  GTECH_NAND2 U214 ( .A(n190), .B(n154), .Z(n192) );
  GTECH_AND_NOT U215 ( .A(n199), .B(n188), .Z(n190) );
  GTECH_OAI21 U216 ( .A(n159), .B(n200), .C(n201), .Z(n188) );
  GTECH_NOT U217 ( .A(N70), .Z(n201) );
  GTECH_OAI21 U218 ( .A(n159), .B(n176), .C(n184), .Z(N70) );
  GTECH_NAND2 U219 ( .A(n202), .B(data_valid), .Z(n184) );
  GTECH_NOT U220 ( .A(n203), .Z(n202) );
  GTECH_NOT U221 ( .A(data_valid), .Z(n159) );
  GTECH_NAND3 U222 ( .A(n166), .B(n204), .C(n205), .Z(n199) );
  GTECH_NOT U223 ( .A(n206), .Z(n98) );
  GTECH_NAND2 U224 ( .A(temp[22]), .B(n166), .Z(n206) );
  GTECH_AND2 U225 ( .A(n177), .B(n164), .Z(n197) );
  GTECH_OAI21 U226 ( .A(n207), .B(n208), .C(n161), .Z(N298) );
  GTECH_NAND2 U227 ( .A(n209), .B(n210), .Z(N287) );
  GTECH_NAND3 U228 ( .A(n204), .B(n211), .C(n212), .Z(n210) );
  GTECH_NOT U229 ( .A(n213), .Z(n204) );
  GTECH_NAND3 U230 ( .A(n182), .B(n214), .C(n193), .Z(n209) );
  GTECH_NAND2 U231 ( .A(n154), .B(n215), .Z(N274) );
  GTECH_NAND3 U232 ( .A(n182), .B(n216), .C(n217), .Z(n215) );
  GTECH_NAND2 U233 ( .A(temp[20]), .B(n216), .Z(n154) );
  GTECH_AND4 U234 ( .A(n212), .B(n196), .C(n169), .D(n186), .Z(N261) );
  GTECH_OAI21 U235 ( .A(n168), .B(n189), .C(n218), .Z(n196) );
  GTECH_AND2 U236 ( .A(n219), .B(n212), .Z(N248) );
  GTECH_AOI21 U237 ( .A(n169), .B(n220), .C(temp[23]), .Z(n219) );
  GTECH_NAND3 U238 ( .A(n177), .B(n218), .C(n182), .Z(n220) );
  GTECH_OAI21 U239 ( .A(n189), .B(n208), .C(n161), .Z(N235) );
  GTECH_NAND2 U240 ( .A(temp[23]), .B(data_valid), .Z(n161) );
  GTECH_NAND3 U241 ( .A(n177), .B(n205), .C(n212), .Z(n208) );
  GTECH_NOT U242 ( .A(n221), .Z(n212) );
  GTECH_AND3 U243 ( .A(n217), .B(n164), .C(n193), .Z(N222) );
  GTECH_OAI21 U244 ( .A(n200), .B(n221), .C(n222), .Z(N209) );
  GTECH_NAND3 U245 ( .A(n217), .B(n172), .C(n193), .Z(n222) );
  GTECH_NOT U246 ( .A(n223), .Z(n193) );
  GTECH_NAND2 U247 ( .A(n216), .B(n224), .Z(n223) );
  GTECH_NOT U248 ( .A(n225), .Z(n216) );
  GTECH_NAND2 U249 ( .A(n175), .B(n218), .Z(n225) );
  GTECH_NOT U250 ( .A(n198), .Z(n175) );
  GTECH_NAND2 U251 ( .A(n166), .B(n169), .Z(n198) );
  GTECH_NOT U252 ( .A(n226), .Z(n166) );
  GTECH_NAND2 U253 ( .A(data_valid), .B(n186), .Z(n226) );
  GTECH_NOT U254 ( .A(n227), .Z(n217) );
  GTECH_NAND2 U255 ( .A(n214), .B(n157), .Z(n227) );
  GTECH_NAND2 U256 ( .A(data_valid), .B(n214), .Z(n221) );
  GTECH_NAND3 U257 ( .A(n203), .B(n176), .C(n228), .Z(n214) );
  GTECH_NOT U258 ( .A(n165), .Z(n228) );
  GTECH_NAND2 U259 ( .A(n229), .B(n200), .Z(n165) );
  GTECH_NOT U260 ( .A(n156), .Z(n229) );
  GTECH_NAND2 U261 ( .A(n211), .B(n213), .Z(n156) );
  GTECH_NAND2 U262 ( .A(temp[19]), .B(n224), .Z(n213) );
  GTECH_NAND2 U263 ( .A(n207), .B(n183), .Z(n176) );
  GTECH_NOT U264 ( .A(n230), .Z(n207) );
  GTECH_NAND2 U265 ( .A(temp[17]), .B(n164), .Z(n230) );
  GTECH_NAND3 U266 ( .A(n182), .B(n183), .C(temp[16]), .Z(n203) );
  GTECH_NOT U267 ( .A(n189), .Z(n182) );
  GTECH_NAND2 U268 ( .A(n172), .B(n164), .Z(n189) );
  GTECH_NOT U269 ( .A(temp[18]), .Z(n164) );
  GTECH_NOT U270 ( .A(temp[17]), .Z(n172) );
  GTECH_NAND2 U271 ( .A(temp[18]), .B(n183), .Z(n200) );
  GTECH_NOT U272 ( .A(n231), .Z(n183) );
  GTECH_NAND2 U273 ( .A(n177), .B(n211), .Z(n231) );
  GTECH_NOT U274 ( .A(n232), .Z(n211) );
  GTECH_NAND2 U275 ( .A(n205), .B(n186), .Z(n232) );
  GTECH_NOT U276 ( .A(temp[23]), .Z(n186) );
  GTECH_NOT U277 ( .A(n160), .Z(n205) );
  GTECH_NAND2 U278 ( .A(n218), .B(n169), .Z(n160) );
  GTECH_NOT U279 ( .A(temp[22]), .Z(n169) );
  GTECH_NOT U280 ( .A(temp[21]), .Z(n218) );
  GTECH_NOT U281 ( .A(n168), .Z(n177) );
  GTECH_NAND2 U282 ( .A(n157), .B(n224), .Z(n168) );
  GTECH_NOT U283 ( .A(temp[20]), .Z(n224) );
  GTECH_NOT U284 ( .A(temp[19]), .Z(n157) );
endmodule

