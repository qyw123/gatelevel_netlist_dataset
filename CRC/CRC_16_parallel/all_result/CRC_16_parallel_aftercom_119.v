
module CRC_16_parallel ( clk, rst_n, data, data_valid, crc );
  input [7:0] data;
  output [15:0] crc;
  input clk, rst_n, data_valid;
  wire   N11, N15, N34, N37, N39, N41, N43, N45, N47, N48, N49, N50, N51, N52,
         N53, N54, N55, N56, N58, N62, N64, N69, N70, N99, N209, N222, N235,
         N248, N261, N274, N287, N298, N307, N316, N323, N328, N331, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n74,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229;
  wire   [23:0] temp;

  GTECH_FJK2S temp_reg_15_ ( .J(n74), .K(n74), .TI(N56), .TE(N287), .CP(clk), 
        .CD(rst_n), .Q(temp[15]) );
  GTECH_FJK2S temp_reg_14_ ( .J(n74), .K(n74), .TI(N55), .TE(N209), .CP(clk), 
        .CD(rst_n), .Q(temp[14]) );
  GTECH_FJK2S temp_reg_13_ ( .J(n74), .K(n74), .TI(N54), .TE(N222), .CP(clk), 
        .CD(rst_n), .Q(temp[13]) );
  GTECH_FJK2S temp_reg_12_ ( .J(n74), .K(n74), .TI(N53), .TE(N235), .CP(clk), 
        .CD(rst_n), .Q(temp[12]), .QN(N53) );
  GTECH_FJK2S temp_reg_11_ ( .J(n74), .K(n74), .TI(N52), .TE(N248), .CP(clk), 
        .CD(rst_n), .Q(temp[11]) );
  GTECH_FJK2S temp_reg_10_ ( .J(n74), .K(n74), .TI(N51), .TE(N261), .CP(clk), 
        .CD(rst_n), .Q(temp[10]) );
  GTECH_FJK2S temp_reg_9_ ( .J(n74), .K(n74), .TI(N50), .TE(N274), .CP(clk), 
        .CD(rst_n), .Q(temp[9]) );
  GTECH_FJK2S temp_reg_8_ ( .J(n74), .K(n74), .TI(N49), .TE(N287), .CP(clk), 
        .CD(rst_n), .Q(temp[8]) );
  GTECH_FJK2S temp_reg_7_ ( .J(n74), .K(n74), .TI(N48), .TE(N298), .CP(clk), 
        .CD(rst_n), .Q(temp[7]) );
  GTECH_FJK2S temp_reg_6_ ( .J(n74), .K(n74), .TI(N47), .TE(N307), .CP(clk), 
        .CD(rst_n), .Q(temp[6]) );
  GTECH_FJK2S temp_reg_5_ ( .J(n74), .K(n74), .TI(N45), .TE(N316), .CP(clk), 
        .CD(rst_n), .Q(temp[5]), .QN(N45) );
  GTECH_FJK2S temp_reg_4_ ( .J(n74), .K(n74), .TI(N43), .TE(N323), .CP(clk), 
        .CD(rst_n), .Q(temp[4]) );
  GTECH_FJK2S temp_reg_3_ ( .J(n74), .K(n74), .TI(N41), .TE(N328), .CP(clk), 
        .CD(rst_n), .Q(temp[3]) );
  GTECH_FJK2S temp_reg_2_ ( .J(n74), .K(n74), .TI(N39), .TE(N331), .CP(clk), 
        .CD(rst_n), .Q(temp[2]) );
  GTECH_FJK2S temp_reg_1_ ( .J(n74), .K(n74), .TI(N37), .TE(N70), .CP(clk), 
        .CD(rst_n), .Q(temp[1]) );
  GTECH_FJK2S temp_reg_0_ ( .J(n74), .K(n74), .TI(N34), .TE(N69), .CP(clk), 
        .CD(rst_n), .Q(temp[0]), .QN(N34) );
  GTECH_FJK2S crc_reg_15_ ( .J(n74), .K(n74), .TI(temp[15]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[15]) );
  GTECH_FJK2S crc_reg_14_ ( .J(n74), .K(n74), .TI(temp[14]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[14]) );
  GTECH_FJK2S crc_reg_13_ ( .J(n74), .K(n74), .TI(temp[13]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[13]) );
  GTECH_FJK2S crc_reg_12_ ( .J(n74), .K(n74), .TI(temp[12]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[12]) );
  GTECH_FJK2S crc_reg_11_ ( .J(n74), .K(n74), .TI(temp[11]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[11]) );
  GTECH_FJK2S crc_reg_10_ ( .J(n74), .K(n74), .TI(temp[10]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[10]) );
  GTECH_FJK2S crc_reg_9_ ( .J(n74), .K(n74), .TI(temp[9]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[9]) );
  GTECH_FJK2S crc_reg_8_ ( .J(n74), .K(n74), .TI(temp[8]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[8]) );
  GTECH_FJK2S crc_reg_7_ ( .J(n74), .K(n74), .TI(temp[7]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[7]) );
  GTECH_FJK2S crc_reg_6_ ( .J(n74), .K(n74), .TI(temp[6]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[6]) );
  GTECH_FJK2S crc_reg_5_ ( .J(n74), .K(n74), .TI(temp[5]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[5]) );
  GTECH_FJK2S crc_reg_4_ ( .J(n74), .K(n74), .TI(temp[4]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[4]) );
  GTECH_FJK2S crc_reg_3_ ( .J(n74), .K(n74), .TI(temp[3]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[3]) );
  GTECH_FJK2S crc_reg_2_ ( .J(n74), .K(n74), .TI(temp[2]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[2]) );
  GTECH_FJK2S crc_reg_1_ ( .J(n74), .K(n74), .TI(temp[1]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[1]) );
  GTECH_FJK2S crc_reg_0_ ( .J(n74), .K(n74), .TI(temp[0]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[0]) );
  GTECH_FJK3 temp_reg_23_ ( .J(n74), .K(n105), .CP(clk), .CD(n104), .SD(n103), 
        .Q(temp[23]), .QN(N11) );
  GTECH_FJK3 temp_reg_22_ ( .J(n74), .K(n102), .CP(clk), .CD(n101), .SD(n100), 
        .Q(temp[22]), .QN(N15) );
  GTECH_FJK3 temp_reg_21_ ( .J(n74), .K(n99), .CP(clk), .CD(n98), .SD(n97), 
        .Q(temp[21]) );
  GTECH_FJK3 temp_reg_20_ ( .J(n74), .K(n96), .CP(clk), .CD(n95), .SD(n94), 
        .Q(temp[20]) );
  GTECH_FJK3 temp_reg_19_ ( .J(n93), .K(n92), .CP(clk), .CD(n91), .SD(n90), 
        .Q(temp[19]), .QN(N64) );
  GTECH_FJK3 temp_reg_18_ ( .J(n89), .K(n88), .CP(clk), .CD(n87), .SD(n86), 
        .Q(temp[18]), .QN(N62) );
  GTECH_FJK3 temp_reg_17_ ( .J(n85), .K(n84), .CP(clk), .CD(n83), .SD(n82), 
        .Q(temp[17]) );
  GTECH_FJK3 temp_reg_16_ ( .J(n81), .K(n80), .CP(clk), .CD(n79), .SD(n78), 
        .Q(temp[16]), .QN(N58) );
  GTECH_ZERO U149 ( .Z(n74) );
  GTECH_NOT U150 ( .A(n154), .Z(n99) );
  GTECH_NAND2 U151 ( .A(n155), .B(n156), .Z(n98) );
  GTECH_NOT U152 ( .A(data[5]), .Z(n156) );
  GTECH_NAND2 U153 ( .A(data[5]), .B(n155), .Z(n97) );
  GTECH_NAND2 U154 ( .A(n155), .B(n157), .Z(n95) );
  GTECH_NOT U155 ( .A(data[4]), .Z(n157) );
  GTECH_NAND2 U156 ( .A(data[4]), .B(n155), .Z(n94) );
  GTECH_NOR3 U157 ( .A(n158), .B(temp[19]), .C(n159), .Z(n93) );
  GTECH_NOR3 U158 ( .A(n160), .B(n159), .C(n158), .Z(n92) );
  GTECH_AND2 U159 ( .A(n161), .B(n162), .Z(n158) );
  GTECH_NAND3 U160 ( .A(n163), .B(data_valid), .C(n164), .Z(n162) );
  GTECH_NAND2 U161 ( .A(n155), .B(n165), .Z(n91) );
  GTECH_NOT U162 ( .A(data[3]), .Z(n165) );
  GTECH_NAND2 U163 ( .A(data[3]), .B(n155), .Z(n90) );
  GTECH_AND2 U164 ( .A(n166), .B(n167), .Z(n89) );
  GTECH_AND2 U165 ( .A(n166), .B(temp[18]), .Z(n88) );
  GTECH_AND4 U166 ( .A(data_valid), .B(n168), .C(n169), .D(n170), .Z(n166) );
  GTECH_OR_NOT U167 ( .A(temp[22]), .B(n171), .Z(n168) );
  GTECH_NAND2 U168 ( .A(n155), .B(n172), .Z(n87) );
  GTECH_NOT U169 ( .A(data[2]), .Z(n172) );
  GTECH_NAND2 U170 ( .A(data[2]), .B(n155), .Z(n86) );
  GTECH_AND2 U171 ( .A(n173), .B(n174), .Z(n85) );
  GTECH_AND2 U172 ( .A(n173), .B(temp[17]), .Z(n84) );
  GTECH_NOR3 U173 ( .A(n175), .B(n176), .C(n177), .Z(n173) );
  GTECH_AND_NOT U174 ( .A(n178), .B(n170), .Z(n177) );
  GTECH_OA21 U175 ( .A(temp[19]), .B(temp[18]), .C(n164), .Z(n176) );
  GTECH_NAND2 U176 ( .A(n155), .B(n179), .Z(n83) );
  GTECH_NOT U177 ( .A(data[1]), .Z(n179) );
  GTECH_NAND2 U178 ( .A(data[1]), .B(n155), .Z(n82) );
  GTECH_AND2 U179 ( .A(N274), .B(n180), .Z(n81) );
  GTECH_AND2 U180 ( .A(temp[16]), .B(N274), .Z(n80) );
  GTECH_NAND2 U181 ( .A(n155), .B(n181), .Z(n79) );
  GTECH_NOT U182 ( .A(data[0]), .Z(n181) );
  GTECH_NAND2 U183 ( .A(data[0]), .B(n155), .Z(n78) );
  GTECH_NOT U184 ( .A(n161), .Z(n105) );
  GTECH_NAND2 U185 ( .A(n155), .B(n182), .Z(n104) );
  GTECH_NOT U186 ( .A(data[7]), .Z(n182) );
  GTECH_NAND2 U187 ( .A(data[7]), .B(n155), .Z(n103) );
  GTECH_NAND2 U188 ( .A(n155), .B(n183), .Z(n101) );
  GTECH_NOT U189 ( .A(data[6]), .Z(n183) );
  GTECH_NAND2 U190 ( .A(data[6]), .B(n155), .Z(n100) );
  GTECH_NOT U191 ( .A(rst_n), .Z(n155) );
  GTECH_AND4 U192 ( .A(n184), .B(n185), .C(data_valid), .D(n180), .Z(N99) );
  GTECH_NOT U193 ( .A(temp[16]), .Z(n180) );
  GTECH_NOT U194 ( .A(n186), .Z(N69) );
  GTECH_XOR2 U195 ( .A(temp[19]), .B(temp[15]), .Z(N56) );
  GTECH_XOR2 U196 ( .A(temp[18]), .B(temp[14]), .Z(N55) );
  GTECH_XOR2 U197 ( .A(temp[17]), .B(temp[13]), .Z(N54) );
  GTECH_XOR2 U198 ( .A(temp[22]), .B(temp[11]), .Z(N52) );
  GTECH_XOR2 U199 ( .A(temp[21]), .B(temp[10]), .Z(N51) );
  GTECH_XOR2 U200 ( .A(temp[9]), .B(temp[20]), .Z(N50) );
  GTECH_XOR2 U201 ( .A(temp[8]), .B(temp[19]), .Z(N49) );
  GTECH_XOR2 U202 ( .A(n187), .B(temp[7]), .Z(N48) );
  GTECH_NAND2 U203 ( .A(n169), .B(n167), .Z(n187) );
  GTECH_XOR2 U204 ( .A(n188), .B(temp[6]), .Z(N47) );
  GTECH_NAND2 U205 ( .A(n163), .B(n174), .Z(n188) );
  GTECH_XOR2 U206 ( .A(temp[4]), .B(temp[20]), .Z(N43) );
  GTECH_XOR2 U207 ( .A(temp[3]), .B(temp[19]), .Z(N41) );
  GTECH_XOR2 U208 ( .A(temp[2]), .B(temp[18]), .Z(N39) );
  GTECH_XOR2 U209 ( .A(temp[1]), .B(temp[17]), .Z(N37) );
  GTECH_AND2 U210 ( .A(n189), .B(n178), .Z(N331) );
  GTECH_OA21 U211 ( .A(n184), .B(temp[19]), .C(n190), .Z(N328) );
  GTECH_OA22 U212 ( .A(n191), .B(n192), .C(n96), .D(n190), .Z(N323) );
  GTECH_NOT U213 ( .A(n193), .Z(n96) );
  GTECH_AND2 U214 ( .A(n194), .B(n195), .Z(N316) );
  GTECH_OA21 U215 ( .A(n102), .B(n194), .C(n196), .Z(N307) );
  GTECH_OAI21 U216 ( .A(temp[18]), .B(n171), .C(n197), .Z(n196) );
  GTECH_NAND2 U217 ( .A(n198), .B(n154), .Z(n194) );
  GTECH_NAND2 U218 ( .A(temp[21]), .B(n197), .Z(n154) );
  GTECH_NOT U219 ( .A(n190), .Z(n198) );
  GTECH_OAI21 U220 ( .A(n160), .B(n192), .C(n199), .Z(n190) );
  GTECH_NOT U221 ( .A(n189), .Z(n199) );
  GTECH_OAI21 U222 ( .A(n200), .B(n201), .C(n202), .Z(n189) );
  GTECH_NOT U223 ( .A(N70), .Z(n202) );
  GTECH_OAI21 U224 ( .A(n200), .B(n178), .C(n186), .Z(N70) );
  GTECH_NAND2 U225 ( .A(n203), .B(data_valid), .Z(n186) );
  GTECH_NOT U226 ( .A(n204), .Z(n203) );
  GTECH_NOT U227 ( .A(data_valid), .Z(n200) );
  GTECH_NOT U228 ( .A(n205), .Z(n102) );
  GTECH_NAND3 U229 ( .A(data_valid), .B(n169), .C(temp[22]), .Z(n205) );
  GTECH_NAND2 U230 ( .A(n161), .B(n206), .Z(N298) );
  GTECH_NAND3 U231 ( .A(n207), .B(n208), .C(n209), .Z(n206) );
  GTECH_NAND2 U232 ( .A(n210), .B(n211), .Z(N287) );
  GTECH_NAND4 U233 ( .A(n209), .B(temp[19]), .C(n164), .D(n169), .Z(n211) );
  GTECH_NAND3 U234 ( .A(n184), .B(n212), .C(n213), .Z(n210) );
  GTECH_NAND2 U235 ( .A(n193), .B(n214), .Z(N274) );
  GTECH_NAND4 U236 ( .A(n191), .B(n197), .C(n212), .D(n164), .Z(n214) );
  GTECH_NOT U237 ( .A(n215), .Z(n191) );
  GTECH_NAND3 U238 ( .A(n197), .B(n164), .C(temp[20]), .Z(n193) );
  GTECH_NOR3 U239 ( .A(n216), .B(temp[23]), .C(n217), .Z(N261) );
  GTECH_NOT U240 ( .A(n195), .Z(n217) );
  GTECH_NAND2 U241 ( .A(n164), .B(n215), .Z(n195) );
  GTECH_NAND2 U242 ( .A(n184), .B(n160), .Z(n215) );
  GTECH_NOR3 U243 ( .A(n218), .B(temp[23]), .C(n219), .Z(N248) );
  GTECH_OA21 U244 ( .A(n171), .B(n220), .C(n163), .Z(n219) );
  GTECH_NAND2 U245 ( .A(n161), .B(n221), .Z(N235) );
  GTECH_NAND3 U246 ( .A(n184), .B(n207), .C(n209), .Z(n221) );
  GTECH_NOT U247 ( .A(n216), .Z(n209) );
  GTECH_NAND2 U248 ( .A(n222), .B(n163), .Z(n216) );
  GTECH_NOT U249 ( .A(n218), .Z(n222) );
  GTECH_NAND2 U250 ( .A(temp[23]), .B(data_valid), .Z(n161) );
  GTECH_AND2 U251 ( .A(n223), .B(n167), .Z(N222) );
  GTECH_NOT U252 ( .A(n224), .Z(n223) );
  GTECH_OAI22 U253 ( .A(temp[17]), .B(n224), .C(n201), .D(n218), .Z(N209) );
  GTECH_NAND2 U254 ( .A(data_valid), .B(n212), .Z(n218) );
  GTECH_NAND3 U255 ( .A(n212), .B(n160), .C(n213), .Z(n224) );
  GTECH_NOT U256 ( .A(n192), .Z(n213) );
  GTECH_NAND3 U257 ( .A(n225), .B(n164), .C(n197), .Z(n192) );
  GTECH_NOT U258 ( .A(n175), .Z(n197) );
  GTECH_NAND3 U259 ( .A(n163), .B(n169), .C(data_valid), .Z(n175) );
  GTECH_NAND3 U260 ( .A(n204), .B(n178), .C(n226), .Z(n212) );
  GTECH_NOT U261 ( .A(n170), .Z(n226) );
  GTECH_NAND2 U262 ( .A(n159), .B(n201), .Z(n170) );
  GTECH_NAND2 U263 ( .A(temp[18]), .B(n185), .Z(n201) );
  GTECH_NOR3 U264 ( .A(temp[22]), .B(n227), .C(temp[23]), .Z(n159) );
  GTECH_OAI21 U265 ( .A(n160), .B(temp[20]), .C(n164), .Z(n227) );
  GTECH_NAND2 U266 ( .A(n228), .B(n185), .Z(n178) );
  GTECH_NOT U267 ( .A(n208), .Z(n228) );
  GTECH_NAND2 U268 ( .A(temp[17]), .B(n167), .Z(n208) );
  GTECH_NAND3 U269 ( .A(n184), .B(n185), .C(temp[16]), .Z(n204) );
  GTECH_NOT U270 ( .A(n229), .Z(n185) );
  GTECH_NAND3 U271 ( .A(n163), .B(n169), .C(n207), .Z(n229) );
  GTECH_NOT U272 ( .A(n171), .Z(n207) );
  GTECH_NAND3 U273 ( .A(n225), .B(n164), .C(n160), .Z(n171) );
  GTECH_NOT U274 ( .A(temp[19]), .Z(n160) );
  GTECH_NOT U275 ( .A(temp[21]), .Z(n164) );
  GTECH_NOT U276 ( .A(temp[20]), .Z(n225) );
  GTECH_NOT U277 ( .A(temp[23]), .Z(n169) );
  GTECH_NOT U278 ( .A(temp[22]), .Z(n163) );
  GTECH_NOT U279 ( .A(n220), .Z(n184) );
  GTECH_NAND2 U280 ( .A(n174), .B(n167), .Z(n220) );
  GTECH_NOT U281 ( .A(temp[18]), .Z(n167) );
  GTECH_NOT U282 ( .A(temp[17]), .Z(n174) );
endmodule

