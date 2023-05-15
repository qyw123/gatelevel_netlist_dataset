
module CRC_16_parallel ( clk, rst_n, data, data_valid, crc );
  input [7:0] data;
  output [15:0] crc;
  input clk, rst_n, data_valid;
  wire   N11, N15, N19, N23, N34, N37, N39, N41, N43, N45, N47, N48, N49, N50,
         N51, N52, N53, N54, N55, N56, N58, N60, N62, N64, N69, N70, N99, N209,
         N222, N235, N248, N261, N274, N287, N298, N307, N316, N323, N328,
         N331, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n75, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222;
  wire   [23:0] temp;

  GTECH_FJK2S temp_reg_15_ ( .J(n75), .K(n75), .TI(N56), .TE(N287), .CP(clk), 
        .CD(rst_n), .Q(temp[15]) );
  GTECH_FJK2S temp_reg_14_ ( .J(n75), .K(n75), .TI(N55), .TE(N209), .CP(clk), 
        .CD(rst_n), .Q(temp[14]) );
  GTECH_FJK2S temp_reg_13_ ( .J(n75), .K(n75), .TI(N54), .TE(N222), .CP(clk), 
        .CD(rst_n), .Q(temp[13]) );
  GTECH_FJK2S temp_reg_12_ ( .J(n75), .K(n75), .TI(N53), .TE(N235), .CP(clk), 
        .CD(rst_n), .Q(temp[12]), .QN(N53) );
  GTECH_FJK2S temp_reg_11_ ( .J(n75), .K(n75), .TI(N52), .TE(N248), .CP(clk), 
        .CD(rst_n), .Q(temp[11]) );
  GTECH_FJK2S temp_reg_10_ ( .J(n75), .K(n75), .TI(N51), .TE(N261), .CP(clk), 
        .CD(rst_n), .Q(temp[10]) );
  GTECH_FJK2S temp_reg_9_ ( .J(n75), .K(n75), .TI(N50), .TE(N274), .CP(clk), 
        .CD(rst_n), .Q(temp[9]) );
  GTECH_FJK2S temp_reg_8_ ( .J(n75), .K(n75), .TI(N49), .TE(N287), .CP(clk), 
        .CD(rst_n), .Q(temp[8]) );
  GTECH_FJK2S temp_reg_7_ ( .J(n75), .K(n75), .TI(N48), .TE(N298), .CP(clk), 
        .CD(rst_n), .Q(temp[7]) );
  GTECH_FJK2S temp_reg_6_ ( .J(n75), .K(n75), .TI(N47), .TE(N307), .CP(clk), 
        .CD(rst_n), .Q(temp[6]) );
  GTECH_FJK2S temp_reg_5_ ( .J(n75), .K(n75), .TI(N45), .TE(N316), .CP(clk), 
        .CD(rst_n), .Q(temp[5]), .QN(N45) );
  GTECH_FJK2S temp_reg_4_ ( .J(n75), .K(n75), .TI(N43), .TE(N323), .CP(clk), 
        .CD(rst_n), .Q(temp[4]) );
  GTECH_FJK2S temp_reg_3_ ( .J(n75), .K(n75), .TI(N41), .TE(N328), .CP(clk), 
        .CD(rst_n), .Q(temp[3]) );
  GTECH_FJK2S temp_reg_2_ ( .J(n75), .K(n75), .TI(N39), .TE(N331), .CP(clk), 
        .CD(rst_n), .Q(temp[2]) );
  GTECH_FJK2S temp_reg_1_ ( .J(n75), .K(n75), .TI(N37), .TE(N70), .CP(clk), 
        .CD(rst_n), .Q(temp[1]) );
  GTECH_FJK2S temp_reg_0_ ( .J(n75), .K(n75), .TI(N34), .TE(N69), .CP(clk), 
        .CD(rst_n), .Q(temp[0]), .QN(N34) );
  GTECH_FJK2S crc_reg_15_ ( .J(n75), .K(n75), .TI(temp[15]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[15]) );
  GTECH_FJK2S crc_reg_14_ ( .J(n75), .K(n75), .TI(temp[14]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[14]) );
  GTECH_FJK2S crc_reg_13_ ( .J(n75), .K(n75), .TI(temp[13]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[13]) );
  GTECH_FJK2S crc_reg_12_ ( .J(n75), .K(n75), .TI(temp[12]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[12]) );
  GTECH_FJK2S crc_reg_11_ ( .J(n75), .K(n75), .TI(temp[11]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[11]) );
  GTECH_FJK2S crc_reg_10_ ( .J(n75), .K(n75), .TI(temp[10]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[10]) );
  GTECH_FJK2S crc_reg_9_ ( .J(n75), .K(n75), .TI(temp[9]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[9]) );
  GTECH_FJK2S crc_reg_8_ ( .J(n75), .K(n75), .TI(temp[8]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[8]) );
  GTECH_FJK2S crc_reg_7_ ( .J(n75), .K(n75), .TI(temp[7]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[7]) );
  GTECH_FJK2S crc_reg_6_ ( .J(n75), .K(n75), .TI(temp[6]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[6]) );
  GTECH_FJK2S crc_reg_5_ ( .J(n75), .K(n75), .TI(temp[5]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[5]) );
  GTECH_FJK2S crc_reg_4_ ( .J(n75), .K(n75), .TI(temp[4]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[4]) );
  GTECH_FJK2S crc_reg_3_ ( .J(n75), .K(n75), .TI(temp[3]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[3]) );
  GTECH_FJK2S crc_reg_2_ ( .J(n75), .K(n75), .TI(temp[2]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[2]) );
  GTECH_FJK2S crc_reg_1_ ( .J(n75), .K(n75), .TI(temp[1]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[1]) );
  GTECH_FJK2S crc_reg_0_ ( .J(n75), .K(n75), .TI(temp[0]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[0]) );
  GTECH_FJK3 temp_reg_23_ ( .J(n75), .K(n106), .CP(clk), .CD(n105), .SD(n104), 
        .Q(temp[23]), .QN(N11) );
  GTECH_FJK3 temp_reg_22_ ( .J(n75), .K(n103), .CP(clk), .CD(n102), .SD(n101), 
        .Q(temp[22]), .QN(N15) );
  GTECH_FJK3 temp_reg_21_ ( .J(n75), .K(n100), .CP(clk), .CD(n99), .SD(n98), 
        .Q(temp[21]), .QN(N19) );
  GTECH_FJK3 temp_reg_20_ ( .J(n75), .K(n97), .CP(clk), .CD(n96), .SD(n95), 
        .Q(temp[20]), .QN(N23) );
  GTECH_FJK3 temp_reg_19_ ( .J(n94), .K(n93), .CP(clk), .CD(n92), .SD(n91), 
        .Q(temp[19]), .QN(N64) );
  GTECH_FJK3 temp_reg_18_ ( .J(n90), .K(n89), .CP(clk), .CD(n88), .SD(n87), 
        .Q(temp[18]), .QN(N62) );
  GTECH_FJK3 temp_reg_17_ ( .J(n86), .K(n85), .CP(clk), .CD(n84), .SD(n83), 
        .Q(temp[17]), .QN(N60) );
  GTECH_FJK3 temp_reg_16_ ( .J(n82), .K(n81), .CP(clk), .CD(n80), .SD(n79), 
        .Q(temp[16]), .QN(N58) );
  GTECH_ZERO U150 ( .Z(n75) );
  GTECH_OR_NOT U151 ( .A(data[5]), .B(n155), .Z(n99) );
  GTECH_OR_NOT U152 ( .A(rst_n), .B(data[5]), .Z(n98) );
  GTECH_OR_NOT U153 ( .A(data[4]), .B(n155), .Z(n96) );
  GTECH_OR_NOT U154 ( .A(rst_n), .B(data[4]), .Z(n95) );
  GTECH_AND3 U155 ( .A(n156), .B(n157), .C(n158), .Z(n94) );
  GTECH_AND3 U156 ( .A(n158), .B(n156), .C(temp[19]), .Z(n93) );
  GTECH_OAI21 U157 ( .A(n159), .B(n160), .C(n161), .Z(n158) );
  GTECH_OR_NOT U158 ( .A(temp[22]), .B(n162), .Z(n160) );
  GTECH_OR_NOT U159 ( .A(data[3]), .B(n155), .Z(n92) );
  GTECH_OR_NOT U160 ( .A(rst_n), .B(data[3]), .Z(n91) );
  GTECH_AND2 U161 ( .A(n163), .B(n164), .Z(n90) );
  GTECH_NOT U162 ( .A(temp[18]), .Z(n164) );
  GTECH_AND2 U163 ( .A(n163), .B(temp[18]), .Z(n89) );
  GTECH_AND2 U164 ( .A(n165), .B(n166), .Z(n163) );
  GTECH_OA21 U165 ( .A(n167), .B(temp[22]), .C(data_valid), .Z(n166) );
  GTECH_OA21 U166 ( .A(temp[18]), .B(n156), .C(n168), .Z(n165) );
  GTECH_OR_NOT U167 ( .A(data[2]), .B(n155), .Z(n88) );
  GTECH_OR_NOT U168 ( .A(rst_n), .B(data[2]), .Z(n87) );
  GTECH_AND2 U169 ( .A(n169), .B(n170), .Z(n86) );
  GTECH_AND2 U170 ( .A(n169), .B(temp[17]), .Z(n85) );
  GTECH_AND_NOT U171 ( .A(n171), .B(n172), .Z(n169) );
  GTECH_OA21 U172 ( .A(n157), .B(temp[21]), .C(n173), .Z(n171) );
  GTECH_OR_NOT U173 ( .A(n156), .B(n174), .Z(n173) );
  GTECH_OR_NOT U174 ( .A(data[1]), .B(n155), .Z(n84) );
  GTECH_OR_NOT U175 ( .A(rst_n), .B(data[1]), .Z(n83) );
  GTECH_AND2 U176 ( .A(N274), .B(n175), .Z(n82) );
  GTECH_AND2 U177 ( .A(temp[16]), .B(N274), .Z(n81) );
  GTECH_OR_NOT U178 ( .A(data[0]), .B(n155), .Z(n80) );
  GTECH_OR_NOT U179 ( .A(rst_n), .B(data[0]), .Z(n79) );
  GTECH_NOT U180 ( .A(n161), .Z(n106) );
  GTECH_OR_NOT U181 ( .A(data[7]), .B(n155), .Z(n105) );
  GTECH_OR_NOT U182 ( .A(rst_n), .B(data[7]), .Z(n104) );
  GTECH_OR_NOT U183 ( .A(data[6]), .B(n155), .Z(n102) );
  GTECH_NOT U184 ( .A(rst_n), .Z(n155) );
  GTECH_OR_NOT U185 ( .A(rst_n), .B(data[6]), .Z(n101) );
  GTECH_AND4 U186 ( .A(n176), .B(n177), .C(data_valid), .D(n175), .Z(N99) );
  GTECH_NOT U187 ( .A(temp[16]), .Z(n175) );
  GTECH_NOT U188 ( .A(n178), .Z(N70) );
  GTECH_AND2 U189 ( .A(n179), .B(data_valid), .Z(N69) );
  GTECH_XOR2 U190 ( .A(temp[19]), .B(temp[15]), .Z(N56) );
  GTECH_XOR2 U191 ( .A(temp[18]), .B(temp[14]), .Z(N55) );
  GTECH_XOR2 U192 ( .A(temp[17]), .B(temp[13]), .Z(N54) );
  GTECH_XOR2 U193 ( .A(temp[22]), .B(temp[11]), .Z(N52) );
  GTECH_XOR2 U194 ( .A(temp[21]), .B(temp[10]), .Z(N51) );
  GTECH_XOR2 U195 ( .A(temp[9]), .B(temp[20]), .Z(N50) );
  GTECH_XOR2 U196 ( .A(temp[8]), .B(temp[19]), .Z(N49) );
  GTECH_XOR2 U197 ( .A(n180), .B(temp[7]), .Z(N48) );
  GTECH_OR_NOT U198 ( .A(temp[18]), .B(n168), .Z(n180) );
  GTECH_XOR2 U199 ( .A(n181), .B(temp[6]), .Z(N47) );
  GTECH_OR_NOT U200 ( .A(temp[17]), .B(n182), .Z(n181) );
  GTECH_XOR2 U201 ( .A(temp[4]), .B(temp[20]), .Z(N43) );
  GTECH_XOR2 U202 ( .A(temp[3]), .B(temp[19]), .Z(N41) );
  GTECH_XOR2 U203 ( .A(temp[2]), .B(temp[18]), .Z(N39) );
  GTECH_XOR2 U204 ( .A(temp[1]), .B(temp[17]), .Z(N37) );
  GTECH_AND2 U205 ( .A(n183), .B(n174), .Z(N331) );
  GTECH_OA21 U206 ( .A(n176), .B(temp[19]), .C(n184), .Z(N328) );
  GTECH_AND2 U207 ( .A(n185), .B(n186), .Z(N323) );
  GTECH_OAI21 U208 ( .A(temp[19]), .B(n187), .C(n188), .Z(n185) );
  GTECH_AND2 U209 ( .A(n189), .B(n190), .Z(N316) );
  GTECH_OA21 U210 ( .A(n103), .B(n189), .C(n191), .Z(N307) );
  GTECH_OAI21 U211 ( .A(temp[18]), .B(n192), .C(n193), .Z(n191) );
  GTECH_OR_NOT U212 ( .A(n100), .B(n194), .Z(n189) );
  GTECH_NOT U213 ( .A(n186), .Z(n194) );
  GTECH_OR_NOT U214 ( .A(n97), .B(n195), .Z(n186) );
  GTECH_NOT U215 ( .A(n184), .Z(n195) );
  GTECH_OAI21 U216 ( .A(n157), .B(n196), .C(n197), .Z(n184) );
  GTECH_NOT U217 ( .A(n198), .Z(n97) );
  GTECH_NOT U218 ( .A(n199), .Z(n100) );
  GTECH_OR_NOT U219 ( .A(n172), .B(temp[21]), .Z(n199) );
  GTECH_NOT U220 ( .A(n200), .Z(n103) );
  GTECH_NAND3 U221 ( .A(data_valid), .B(n168), .C(temp[22]), .Z(n200) );
  GTECH_OAI21 U222 ( .A(n201), .B(n202), .C(n161), .Z(N298) );
  GTECH_NOT U223 ( .A(n203), .Z(n201) );
  GTECH_OAI21 U224 ( .A(n187), .B(n204), .C(n205), .Z(N287) );
  GTECH_NAND4 U225 ( .A(n206), .B(temp[19]), .C(n207), .D(n208), .Z(n205) );
  GTECH_OAI21 U226 ( .A(n187), .B(n209), .C(n198), .Z(N274) );
  GTECH_NAND3 U227 ( .A(n193), .B(n162), .C(temp[20]), .Z(n198) );
  GTECH_OR_NOT U228 ( .A(n210), .B(n193), .Z(n209) );
  GTECH_NOT U229 ( .A(n172), .Z(n193) );
  GTECH_AND3 U230 ( .A(n208), .B(n190), .C(n207), .Z(N261) );
  GTECH_NOT U231 ( .A(n211), .Z(n207) );
  GTECH_OAI21 U232 ( .A(n187), .B(n212), .C(n162), .Z(n190) );
  GTECH_OR_NOT U233 ( .A(temp[20]), .B(n157), .Z(n212) );
  GTECH_AND3 U234 ( .A(n208), .B(n168), .C(n213), .Z(N248) );
  GTECH_OAI21 U235 ( .A(n192), .B(n187), .C(n182), .Z(n213) );
  GTECH_NOT U236 ( .A(temp[23]), .Z(n168) );
  GTECH_OAI21 U237 ( .A(n187), .B(n202), .C(n161), .Z(N235) );
  GTECH_OR_NOT U238 ( .A(n159), .B(temp[23]), .Z(n161) );
  GTECH_NAND3 U239 ( .A(n208), .B(n182), .C(n167), .Z(n202) );
  GTECH_NOT U240 ( .A(n204), .Z(N222) );
  GTECH_OAI21 U241 ( .A(temp[17]), .B(n204), .C(n214), .Z(N209) );
  GTECH_NAND3 U242 ( .A(temp[18]), .B(n208), .C(n177), .Z(n214) );
  GTECH_OAI21 U243 ( .A(n215), .B(n159), .C(n197), .Z(n208) );
  GTECH_NOT U244 ( .A(n183), .Z(n197) );
  GTECH_OAI21 U245 ( .A(n216), .B(n217), .C(n178), .Z(n183) );
  GTECH_OR_NOT U246 ( .A(n210), .B(data_valid), .Z(n178) );
  GTECH_OR_NOT U247 ( .A(n159), .B(temp[18]), .Z(n217) );
  GTECH_NOT U248 ( .A(data_valid), .Z(n159) );
  GTECH_NOT U249 ( .A(n156), .Z(n215) );
  GTECH_OR_NOT U250 ( .A(n211), .B(n218), .Z(n156) );
  GTECH_OA21 U251 ( .A(temp[20]), .B(n157), .C(n162), .Z(n218) );
  GTECH_NOT U252 ( .A(temp[21]), .Z(n162) );
  GTECH_NOT U253 ( .A(temp[19]), .Z(n157) );
  GTECH_OR_NOT U254 ( .A(n210), .B(n188), .Z(n204) );
  GTECH_NOT U255 ( .A(n196), .Z(n188) );
  GTECH_OR_NOT U256 ( .A(n172), .B(n206), .Z(n196) );
  GTECH_OR_NOT U257 ( .A(n211), .B(data_valid), .Z(n172) );
  GTECH_NOT U258 ( .A(n219), .Z(n210) );
  GTECH_OR_NOT U259 ( .A(n179), .B(n174), .Z(n219) );
  GTECH_OR_NOT U260 ( .A(n203), .B(n177), .Z(n174) );
  GTECH_OR_NOT U261 ( .A(temp[18]), .B(temp[17]), .Z(n203) );
  GTECH_NOT U262 ( .A(n220), .Z(n179) );
  GTECH_NAND3 U263 ( .A(n176), .B(n177), .C(temp[16]), .Z(n220) );
  GTECH_NOT U264 ( .A(n216), .Z(n177) );
  GTECH_OR_NOT U265 ( .A(n211), .B(n167), .Z(n216) );
  GTECH_NOT U266 ( .A(n192), .Z(n167) );
  GTECH_OR_NOT U267 ( .A(temp[19]), .B(n206), .Z(n192) );
  GTECH_NOT U268 ( .A(n221), .Z(n206) );
  GTECH_OR_NOT U269 ( .A(temp[21]), .B(n222), .Z(n221) );
  GTECH_NOT U270 ( .A(temp[20]), .Z(n222) );
  GTECH_OR_NOT U271 ( .A(temp[23]), .B(n182), .Z(n211) );
  GTECH_NOT U272 ( .A(temp[22]), .Z(n182) );
  GTECH_NOT U273 ( .A(n187), .Z(n176) );
  GTECH_OR_NOT U274 ( .A(temp[18]), .B(n170), .Z(n187) );
  GTECH_NOT U275 ( .A(temp[17]), .Z(n170) );
endmodule

