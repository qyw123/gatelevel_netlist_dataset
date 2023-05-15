
module CRC_16_parallel ( clk, rst_n, data, data_valid, crc );
  input [7:0] data;
  output [15:0] crc;
  input clk, rst_n, data_valid;
  wire   N11, N15, N19, N23, N34, N37, N39, N41, N43, N45, N47, N48, N49, N50,
         N51, N52, N53, N54, N55, N56, N58, N60, N62, N64, N69, N70, N99, N209,
         N222, N235, N248, N261, N274, N287, N298, N307, N316, N323, N328,
         N331, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221;
  wire   [23:0] temp;

  GTECH_FJK2S temp_reg_15_ ( .J(n104), .K(n104), .TI(N56), .TE(N287), .CP(clk), 
        .CD(rst_n), .Q(temp[15]) );
  GTECH_FJK2S temp_reg_14_ ( .J(n104), .K(n104), .TI(N55), .TE(N209), .CP(clk), 
        .CD(rst_n), .Q(temp[14]) );
  GTECH_FJK2S temp_reg_13_ ( .J(n104), .K(n104), .TI(N54), .TE(N222), .CP(clk), 
        .CD(rst_n), .Q(temp[13]) );
  GTECH_FJK2S temp_reg_12_ ( .J(n104), .K(n104), .TI(N53), .TE(N235), .CP(clk), 
        .CD(rst_n), .Q(temp[12]), .QN(N53) );
  GTECH_FJK2S temp_reg_11_ ( .J(n104), .K(n104), .TI(N52), .TE(N248), .CP(clk), 
        .CD(rst_n), .Q(temp[11]) );
  GTECH_FJK2S temp_reg_10_ ( .J(n104), .K(n104), .TI(N51), .TE(N261), .CP(clk), 
        .CD(rst_n), .Q(temp[10]) );
  GTECH_FJK2S temp_reg_9_ ( .J(n104), .K(n104), .TI(N50), .TE(N274), .CP(clk), 
        .CD(rst_n), .Q(temp[9]) );
  GTECH_FJK2S temp_reg_8_ ( .J(n104), .K(n104), .TI(N49), .TE(N287), .CP(clk), 
        .CD(rst_n), .Q(temp[8]) );
  GTECH_FJK2S temp_reg_7_ ( .J(n104), .K(n104), .TI(N48), .TE(N298), .CP(clk), 
        .CD(rst_n), .Q(temp[7]) );
  GTECH_FJK2S temp_reg_6_ ( .J(n104), .K(n104), .TI(N47), .TE(N307), .CP(clk), 
        .CD(rst_n), .Q(temp[6]) );
  GTECH_FJK2S temp_reg_5_ ( .J(n104), .K(n104), .TI(N45), .TE(N316), .CP(clk), 
        .CD(rst_n), .Q(temp[5]), .QN(N45) );
  GTECH_FJK2S temp_reg_4_ ( .J(n104), .K(n104), .TI(N43), .TE(N323), .CP(clk), 
        .CD(rst_n), .Q(temp[4]) );
  GTECH_FJK2S temp_reg_3_ ( .J(n104), .K(n104), .TI(N41), .TE(N328), .CP(clk), 
        .CD(rst_n), .Q(temp[3]) );
  GTECH_FJK2S temp_reg_2_ ( .J(n104), .K(n104), .TI(N39), .TE(N331), .CP(clk), 
        .CD(rst_n), .Q(temp[2]) );
  GTECH_FJK2S temp_reg_1_ ( .J(n104), .K(n104), .TI(N37), .TE(N70), .CP(clk), 
        .CD(rst_n), .Q(temp[1]) );
  GTECH_FJK2S temp_reg_0_ ( .J(n104), .K(n104), .TI(N34), .TE(N69), .CP(clk), 
        .CD(rst_n), .Q(temp[0]), .QN(N34) );
  GTECH_FJK2S crc_reg_15_ ( .J(n104), .K(n104), .TI(temp[15]), .TE(N99), .CP(
        clk), .CD(rst_n), .Q(crc[15]) );
  GTECH_FJK2S crc_reg_14_ ( .J(n104), .K(n104), .TI(temp[14]), .TE(N99), .CP(
        clk), .CD(rst_n), .Q(crc[14]) );
  GTECH_FJK2S crc_reg_13_ ( .J(n104), .K(n104), .TI(temp[13]), .TE(N99), .CP(
        clk), .CD(rst_n), .Q(crc[13]) );
  GTECH_FJK2S crc_reg_12_ ( .J(n104), .K(n104), .TI(temp[12]), .TE(N99), .CP(
        clk), .CD(rst_n), .Q(crc[12]) );
  GTECH_FJK2S crc_reg_11_ ( .J(n104), .K(n104), .TI(temp[11]), .TE(N99), .CP(
        clk), .CD(rst_n), .Q(crc[11]) );
  GTECH_FJK2S crc_reg_10_ ( .J(n104), .K(n104), .TI(temp[10]), .TE(N99), .CP(
        clk), .CD(rst_n), .Q(crc[10]) );
  GTECH_FJK2S crc_reg_9_ ( .J(n104), .K(n104), .TI(temp[9]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[9]) );
  GTECH_FJK2S crc_reg_8_ ( .J(n104), .K(n104), .TI(temp[8]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[8]) );
  GTECH_FJK2S crc_reg_7_ ( .J(n104), .K(n104), .TI(temp[7]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[7]) );
  GTECH_FJK2S crc_reg_6_ ( .J(n104), .K(n104), .TI(temp[6]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[6]) );
  GTECH_FJK2S crc_reg_5_ ( .J(n104), .K(n104), .TI(temp[5]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[5]) );
  GTECH_FJK2S crc_reg_4_ ( .J(n104), .K(n104), .TI(temp[4]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[4]) );
  GTECH_FJK2S crc_reg_3_ ( .J(n104), .K(n104), .TI(temp[3]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[3]) );
  GTECH_FJK2S crc_reg_2_ ( .J(n104), .K(n104), .TI(temp[2]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[2]) );
  GTECH_FJK2S crc_reg_1_ ( .J(n104), .K(n104), .TI(temp[1]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[1]) );
  GTECH_FJK2S crc_reg_0_ ( .J(n104), .K(n104), .TI(temp[0]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[0]) );
  GTECH_FD3 temp_reg_23_ ( .D(n103), .CP(clk), .CD(n95), .SD(n94), .Q(temp[23]), .QN(N11) );
  GTECH_FD3 temp_reg_22_ ( .D(n102), .CP(clk), .CD(n93), .SD(n92), .Q(temp[22]), .QN(N15) );
  GTECH_FD3 temp_reg_21_ ( .D(n101), .CP(clk), .CD(n91), .SD(n90), .Q(temp[21]), .QN(N19) );
  GTECH_FD3 temp_reg_20_ ( .D(n100), .CP(clk), .CD(n89), .SD(n88), .Q(temp[20]), .QN(N23) );
  GTECH_FD3 temp_reg_19_ ( .D(n99), .CP(clk), .CD(n87), .SD(n86), .Q(temp[19]), 
        .QN(N64) );
  GTECH_FD3 temp_reg_18_ ( .D(n98), .CP(clk), .CD(n85), .SD(n84), .Q(temp[18]), 
        .QN(N62) );
  GTECH_FD3 temp_reg_17_ ( .D(n97), .CP(clk), .CD(n83), .SD(n82), .Q(temp[17]), 
        .QN(N60) );
  GTECH_FD3 temp_reg_16_ ( .D(n96), .CP(clk), .CD(n81), .SD(n80), .Q(temp[16]), 
        .QN(N58) );
  GTECH_ZERO U147 ( .Z(n104) );
  GTECH_XOR2 U148 ( .A(temp[19]), .B(n152), .Z(n99) );
  GTECH_NOR3 U149 ( .A(n153), .B(n154), .C(n155), .Z(n152) );
  GTECH_OA21 U150 ( .A(temp[22]), .B(temp[21]), .C(n156), .Z(n155) );
  GTECH_XOR2 U151 ( .A(temp[18]), .B(n157), .Z(n98) );
  GTECH_AND2 U152 ( .A(n158), .B(n159), .Z(n157) );
  GTECH_OA21 U153 ( .A(n160), .B(temp[22]), .C(n161), .Z(n158) );
  GTECH_MUX2 U154 ( .A(n162), .B(n163), .S(temp[17]), .Z(n97) );
  GTECH_OAI21 U155 ( .A(temp[21]), .B(n164), .C(n165), .Z(n163) );
  GTECH_NOR3 U156 ( .A(temp[18]), .B(temp[20]), .C(temp[19]), .Z(n164) );
  GTECH_AND2 U157 ( .A(temp[21]), .B(n165), .Z(n162) );
  GTECH_XOR2 U158 ( .A(temp[16]), .B(N274), .Z(n96) );
  GTECH_OR_NOT U159 ( .A(data[7]), .B(n166), .Z(n95) );
  GTECH_OR_NOT U160 ( .A(rst_n), .B(data[7]), .Z(n94) );
  GTECH_OR_NOT U161 ( .A(data[6]), .B(n166), .Z(n93) );
  GTECH_OR_NOT U162 ( .A(rst_n), .B(data[6]), .Z(n92) );
  GTECH_OR_NOT U163 ( .A(data[5]), .B(n166), .Z(n91) );
  GTECH_OR_NOT U164 ( .A(rst_n), .B(data[5]), .Z(n90) );
  GTECH_OR_NOT U165 ( .A(data[4]), .B(n166), .Z(n89) );
  GTECH_OR_NOT U166 ( .A(rst_n), .B(data[4]), .Z(n88) );
  GTECH_OR_NOT U167 ( .A(data[3]), .B(n166), .Z(n87) );
  GTECH_OR_NOT U168 ( .A(rst_n), .B(data[3]), .Z(n86) );
  GTECH_OR_NOT U169 ( .A(data[2]), .B(n166), .Z(n85) );
  GTECH_OR_NOT U170 ( .A(rst_n), .B(data[2]), .Z(n84) );
  GTECH_OR_NOT U171 ( .A(data[1]), .B(n166), .Z(n83) );
  GTECH_OR_NOT U172 ( .A(rst_n), .B(data[1]), .Z(n82) );
  GTECH_OR_NOT U173 ( .A(data[0]), .B(n166), .Z(n81) );
  GTECH_NOT U174 ( .A(rst_n), .Z(n166) );
  GTECH_OR_NOT U175 ( .A(rst_n), .B(data[0]), .Z(n80) );
  GTECH_AND2 U176 ( .A(temp[23]), .B(n153), .Z(n103) );
  GTECH_AND2 U177 ( .A(temp[22]), .B(n167), .Z(n102) );
  GTECH_AND2 U178 ( .A(temp[21]), .B(n168), .Z(n101) );
  GTECH_AND2 U179 ( .A(temp[20]), .B(n169), .Z(n100) );
  GTECH_AND4 U180 ( .A(n170), .B(n171), .C(data_valid), .D(n172), .Z(N99) );
  GTECH_NOT U181 ( .A(temp[16]), .Z(n172) );
  GTECH_NOT U182 ( .A(n173), .Z(N69) );
  GTECH_XOR2 U183 ( .A(temp[19]), .B(temp[15]), .Z(N56) );
  GTECH_XOR2 U184 ( .A(temp[18]), .B(temp[14]), .Z(N55) );
  GTECH_XOR2 U185 ( .A(temp[17]), .B(temp[13]), .Z(N54) );
  GTECH_XOR2 U186 ( .A(temp[22]), .B(temp[11]), .Z(N52) );
  GTECH_XOR2 U187 ( .A(temp[21]), .B(temp[10]), .Z(N51) );
  GTECH_XOR2 U188 ( .A(temp[9]), .B(temp[20]), .Z(N50) );
  GTECH_XOR2 U189 ( .A(temp[8]), .B(temp[19]), .Z(N49) );
  GTECH_XOR2 U190 ( .A(n174), .B(temp[7]), .Z(N48) );
  GTECH_OR_NOT U191 ( .A(temp[18]), .B(n156), .Z(n174) );
  GTECH_XOR2 U192 ( .A(n175), .B(temp[6]), .Z(N47) );
  GTECH_OR_NOT U193 ( .A(temp[17]), .B(n176), .Z(n175) );
  GTECH_XOR2 U194 ( .A(temp[4]), .B(temp[20]), .Z(N43) );
  GTECH_XOR2 U195 ( .A(temp[3]), .B(temp[19]), .Z(N41) );
  GTECH_XOR2 U196 ( .A(temp[2]), .B(temp[18]), .Z(N39) );
  GTECH_XOR2 U197 ( .A(temp[1]), .B(temp[17]), .Z(N37) );
  GTECH_AND2 U198 ( .A(n177), .B(n178), .Z(N331) );
  GTECH_OA21 U199 ( .A(n170), .B(temp[19]), .C(n179), .Z(N328) );
  GTECH_OA21 U200 ( .A(n180), .B(n181), .C(n182), .Z(N323) );
  GTECH_AND2 U201 ( .A(n183), .B(n184), .Z(N316) );
  GTECH_OA21 U202 ( .A(n185), .B(n184), .C(n186), .Z(N307) );
  GTECH_OAI21 U203 ( .A(temp[18]), .B(n187), .C(n165), .Z(n186) );
  GTECH_OAI21 U204 ( .A(n168), .B(n188), .C(n189), .Z(n184) );
  GTECH_NOT U205 ( .A(n182), .Z(n189) );
  GTECH_OAI21 U206 ( .A(n169), .B(n190), .C(n191), .Z(n182) );
  GTECH_NOT U207 ( .A(n179), .Z(n191) );
  GTECH_OAI21 U208 ( .A(n192), .B(n181), .C(n193), .Z(n179) );
  GTECH_NOT U209 ( .A(n177), .Z(n193) );
  GTECH_OAI21 U210 ( .A(n153), .B(n194), .C(n195), .Z(n177) );
  GTECH_NOT U211 ( .A(N70), .Z(n195) );
  GTECH_OAI21 U212 ( .A(n153), .B(n178), .C(n173), .Z(N70) );
  GTECH_OR_NOT U213 ( .A(n153), .B(n196), .Z(n173) );
  GTECH_NOT U214 ( .A(n197), .Z(n196) );
  GTECH_AND_NOT U215 ( .A(temp[22]), .B(n167), .Z(n185) );
  GTECH_OAI22 U216 ( .A(n153), .B(n156), .C(n198), .D(n199), .Z(N298) );
  GTECH_OAI21 U217 ( .A(n181), .B(n200), .C(n201), .Z(N287) );
  GTECH_NAND4 U218 ( .A(n202), .B(temp[19]), .C(n188), .D(n176), .Z(n201) );
  GTECH_OR_NOT U219 ( .A(n203), .B(n170), .Z(n200) );
  GTECH_AND2 U220 ( .A(n204), .B(n205), .Z(N274) );
  GTECH_AO21 U221 ( .A(n180), .B(n206), .C(temp[20]), .Z(n205) );
  GTECH_NOT U222 ( .A(n207), .Z(n180) );
  GTECH_NOR3 U223 ( .A(n208), .B(temp[22]), .C(n209), .Z(N261) );
  GTECH_NOT U224 ( .A(n183), .Z(n209) );
  GTECH_OAI21 U225 ( .A(temp[20]), .B(n207), .C(n188), .Z(n183) );
  GTECH_OR_NOT U226 ( .A(temp[19]), .B(n170), .Z(n207) );
  GTECH_AND2 U227 ( .A(n202), .B(n210), .Z(N248) );
  GTECH_OAI21 U228 ( .A(n187), .B(n211), .C(n176), .Z(n210) );
  GTECH_NOT U229 ( .A(n208), .Z(n202) );
  GTECH_OR_NOT U230 ( .A(n203), .B(n159), .Z(n208) );
  GTECH_NOT U231 ( .A(n206), .Z(n203) );
  GTECH_OAI22 U232 ( .A(n153), .B(n156), .C(n211), .D(n199), .Z(N235) );
  GTECH_NAND4 U233 ( .A(n160), .B(data_valid), .C(n206), .D(n176), .Z(n199) );
  GTECH_AND2 U234 ( .A(n212), .B(n213), .Z(N222) );
  GTECH_NOT U235 ( .A(temp[18]), .Z(n213) );
  GTECH_NOT U236 ( .A(n214), .Z(n212) );
  GTECH_OAI22 U237 ( .A(temp[17]), .B(n214), .C(n153), .D(n194), .Z(N209) );
  GTECH_NOT U238 ( .A(data_valid), .Z(n153) );
  GTECH_NAND3 U239 ( .A(n206), .B(n192), .C(n215), .Z(n214) );
  GTECH_NOT U240 ( .A(n181), .Z(n215) );
  GTECH_OR_NOT U241 ( .A(temp[20]), .B(n204), .Z(n181) );
  GTECH_NOT U242 ( .A(n169), .Z(n204) );
  GTECH_OR_NOT U243 ( .A(temp[21]), .B(n165), .Z(n169) );
  GTECH_NOT U244 ( .A(n168), .Z(n165) );
  GTECH_OR_NOT U245 ( .A(temp[22]), .B(n159), .Z(n168) );
  GTECH_NOT U246 ( .A(n167), .Z(n159) );
  GTECH_OR_NOT U247 ( .A(temp[23]), .B(data_valid), .Z(n167) );
  GTECH_NAND3 U248 ( .A(n197), .B(n178), .C(n216), .Z(n206) );
  GTECH_NOT U249 ( .A(n161), .Z(n216) );
  GTECH_OR_NOT U250 ( .A(n217), .B(n154), .Z(n161) );
  GTECH_NOR3 U251 ( .A(temp[22]), .B(n218), .C(temp[23]), .Z(n154) );
  GTECH_OAI21 U252 ( .A(n192), .B(temp[20]), .C(n188), .Z(n218) );
  GTECH_NOT U253 ( .A(n194), .Z(n217) );
  GTECH_OR_NOT U254 ( .A(n219), .B(temp[18]), .Z(n194) );
  GTECH_OR_NOT U255 ( .A(n219), .B(n198), .Z(n178) );
  GTECH_NOT U256 ( .A(n220), .Z(n198) );
  GTECH_OR_NOT U257 ( .A(temp[18]), .B(temp[17]), .Z(n220) );
  GTECH_NAND3 U258 ( .A(n170), .B(n171), .C(temp[16]), .Z(n197) );
  GTECH_NOT U259 ( .A(n219), .Z(n171) );
  GTECH_NAND3 U260 ( .A(n176), .B(n156), .C(n160), .Z(n219) );
  GTECH_NOT U261 ( .A(n187), .Z(n160) );
  GTECH_NAND3 U262 ( .A(n190), .B(n188), .C(n192), .Z(n187) );
  GTECH_NOT U263 ( .A(temp[19]), .Z(n192) );
  GTECH_NOT U264 ( .A(temp[21]), .Z(n188) );
  GTECH_NOT U265 ( .A(temp[20]), .Z(n190) );
  GTECH_NOT U266 ( .A(temp[23]), .Z(n156) );
  GTECH_NOT U267 ( .A(temp[22]), .Z(n176) );
  GTECH_NOT U268 ( .A(n211), .Z(n170) );
  GTECH_OR_NOT U269 ( .A(temp[18]), .B(n221), .Z(n211) );
  GTECH_NOT U270 ( .A(temp[17]), .Z(n221) );
endmodule

