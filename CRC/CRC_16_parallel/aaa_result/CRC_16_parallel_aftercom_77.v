
module CRC_16_parallel ( clk, rst_n, data, data_valid, crc );
  input [7:0] data;
  output [15:0] crc;
  input clk, rst_n, data_valid;
  wire   N11, N15, N19, N23, N34, N37, N39, N41, N43, N45, N47, N48, N49, N50,
         N51, N52, N53, N54, N55, N56, N58, N60, N62, N64, N69, N70, N99, N209,
         N222, N235, N248, N261, N274, N287, N298, N307, N316, N323, N328,
         N331, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216;
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
  GTECH_FD3 temp_reg_23_ ( .D(n101), .CP(clk), .CD(n93), .SD(n92), .Q(temp[23]), .QN(N11) );
  GTECH_FD3 temp_reg_22_ ( .D(n100), .CP(clk), .CD(n91), .SD(n90), .Q(temp[22]), .QN(N15) );
  GTECH_FD3 temp_reg_21_ ( .D(n99), .CP(clk), .CD(n89), .SD(n88), .Q(temp[21]), 
        .QN(N19) );
  GTECH_FD3 temp_reg_20_ ( .D(n98), .CP(clk), .CD(n87), .SD(n86), .Q(temp[20]), 
        .QN(N23) );
  GTECH_FD3 temp_reg_19_ ( .D(n97), .CP(clk), .CD(n85), .SD(n84), .Q(temp[19]), 
        .QN(N64) );
  GTECH_FD3 temp_reg_18_ ( .D(n96), .CP(clk), .CD(n83), .SD(n82), .Q(temp[18]), 
        .QN(N62) );
  GTECH_FD3 temp_reg_17_ ( .D(n95), .CP(clk), .CD(n81), .SD(n80), .Q(temp[17]), 
        .QN(N60) );
  GTECH_FD3 temp_reg_16_ ( .D(n94), .CP(clk), .CD(n79), .SD(n78), .Q(temp[16]), 
        .QN(N58) );
  GTECH_AND2 U145 ( .A(temp[21]), .B(n150), .Z(n99) );
  GTECH_AND2 U146 ( .A(temp[20]), .B(n151), .Z(n98) );
  GTECH_XOR2 U147 ( .A(temp[19]), .B(n152), .Z(n97) );
  GTECH_AND3 U148 ( .A(n153), .B(n154), .C(data_valid), .Z(n152) );
  GTECH_OAI21 U149 ( .A(temp[22]), .B(temp[21]), .C(n155), .Z(n153) );
  GTECH_XOR2 U150 ( .A(temp[18]), .B(n156), .Z(n96) );
  GTECH_AND3 U151 ( .A(n157), .B(n155), .C(n158), .Z(n156) );
  GTECH_OA21 U152 ( .A(n159), .B(temp[22]), .C(data_valid), .Z(n158) );
  GTECH_MUX2 U153 ( .A(n160), .B(n161), .S(temp[17]), .Z(n95) );
  GTECH_OAI21 U154 ( .A(temp[21]), .B(n162), .C(n163), .Z(n161) );
  GTECH_AND_NOT U155 ( .A(n164), .B(temp[18]), .Z(n162) );
  GTECH_AND2 U156 ( .A(n163), .B(temp[21]), .Z(n160) );
  GTECH_XOR2 U157 ( .A(temp[16]), .B(N274), .Z(n94) );
  GTECH_OR_NOT U158 ( .A(data[7]), .B(n165), .Z(n93) );
  GTECH_OR_NOT U159 ( .A(rst_n), .B(data[7]), .Z(n92) );
  GTECH_OR_NOT U160 ( .A(data[6]), .B(n165), .Z(n91) );
  GTECH_OR_NOT U161 ( .A(rst_n), .B(data[6]), .Z(n90) );
  GTECH_OR_NOT U162 ( .A(data[5]), .B(n165), .Z(n89) );
  GTECH_OR_NOT U163 ( .A(rst_n), .B(data[5]), .Z(n88) );
  GTECH_OR_NOT U164 ( .A(data[4]), .B(n165), .Z(n87) );
  GTECH_OR_NOT U165 ( .A(rst_n), .B(data[4]), .Z(n86) );
  GTECH_OR_NOT U166 ( .A(data[3]), .B(n165), .Z(n85) );
  GTECH_OR_NOT U167 ( .A(rst_n), .B(data[3]), .Z(n84) );
  GTECH_OR_NOT U168 ( .A(data[2]), .B(n165), .Z(n83) );
  GTECH_OR_NOT U169 ( .A(rst_n), .B(data[2]), .Z(n82) );
  GTECH_OR_NOT U170 ( .A(data[1]), .B(n165), .Z(n81) );
  GTECH_OR_NOT U171 ( .A(rst_n), .B(data[1]), .Z(n80) );
  GTECH_OR_NOT U172 ( .A(data[0]), .B(n165), .Z(n79) );
  GTECH_NOT U173 ( .A(rst_n), .Z(n165) );
  GTECH_OR_NOT U174 ( .A(rst_n), .B(data[0]), .Z(n78) );
  GTECH_AND2 U175 ( .A(temp[23]), .B(n166), .Z(n101) );
  GTECH_OA21 U176 ( .A(temp[23]), .B(n166), .C(temp[22]), .Z(n100) );
  GTECH_AND4 U177 ( .A(n167), .B(n168), .C(data_valid), .D(n169), .Z(N99) );
  GTECH_NOT U178 ( .A(temp[16]), .Z(n169) );
  GTECH_NOT U179 ( .A(n170), .Z(N70) );
  GTECH_AND2 U180 ( .A(n171), .B(data_valid), .Z(N69) );
  GTECH_XOR2 U181 ( .A(temp[19]), .B(temp[15]), .Z(N56) );
  GTECH_XOR2 U182 ( .A(temp[18]), .B(temp[14]), .Z(N55) );
  GTECH_XOR2 U183 ( .A(temp[17]), .B(temp[13]), .Z(N54) );
  GTECH_XOR2 U184 ( .A(temp[22]), .B(temp[11]), .Z(N52) );
  GTECH_XOR2 U185 ( .A(temp[21]), .B(temp[10]), .Z(N51) );
  GTECH_XOR2 U186 ( .A(temp[9]), .B(temp[20]), .Z(N50) );
  GTECH_XOR2 U187 ( .A(temp[8]), .B(temp[19]), .Z(N49) );
  GTECH_XOR2 U188 ( .A(n172), .B(temp[7]), .Z(N48) );
  GTECH_OR_NOT U189 ( .A(temp[18]), .B(n155), .Z(n172) );
  GTECH_XOR2 U190 ( .A(n173), .B(temp[6]), .Z(N47) );
  GTECH_OR_NOT U191 ( .A(temp[17]), .B(n174), .Z(n173) );
  GTECH_XOR2 U192 ( .A(temp[4]), .B(temp[20]), .Z(N43) );
  GTECH_XOR2 U193 ( .A(temp[3]), .B(temp[19]), .Z(N41) );
  GTECH_XOR2 U194 ( .A(temp[2]), .B(temp[18]), .Z(N39) );
  GTECH_XOR2 U195 ( .A(temp[1]), .B(temp[17]), .Z(N37) );
  GTECH_AND2 U196 ( .A(n175), .B(n176), .Z(N331) );
  GTECH_OA21 U197 ( .A(n167), .B(temp[19]), .C(n177), .Z(N328) );
  GTECH_AND2 U198 ( .A(n178), .B(n179), .Z(N323) );
  GTECH_OAI21 U199 ( .A(temp[19]), .B(n180), .C(n181), .Z(n178) );
  GTECH_AND2 U200 ( .A(n182), .B(n183), .Z(N316) );
  GTECH_OA21 U201 ( .A(n184), .B(n182), .C(n185), .Z(N307) );
  GTECH_OAI21 U202 ( .A(temp[18]), .B(n186), .C(n163), .Z(n185) );
  GTECH_OAI21 U203 ( .A(n187), .B(n150), .C(n188), .Z(n182) );
  GTECH_NOT U204 ( .A(n179), .Z(n188) );
  GTECH_OAI21 U205 ( .A(n189), .B(n151), .C(n190), .Z(n179) );
  GTECH_NOT U206 ( .A(n177), .Z(n190) );
  GTECH_OAI21 U207 ( .A(n191), .B(n192), .C(n193), .Z(n177) );
  GTECH_NOT U208 ( .A(n175), .Z(n193) );
  GTECH_OAI21 U209 ( .A(n166), .B(n194), .C(n170), .Z(n175) );
  GTECH_AND3 U210 ( .A(data_valid), .B(n155), .C(temp[22]), .Z(n184) );
  GTECH_OAI22 U211 ( .A(n166), .B(n155), .C(n195), .D(n196), .Z(N298) );
  GTECH_OAI21 U212 ( .A(n180), .B(n197), .C(n198), .Z(N287) );
  GTECH_NAND4 U213 ( .A(temp[19]), .B(n199), .C(n200), .D(n187), .Z(n198) );
  GTECH_AND2 U214 ( .A(n201), .B(n202), .Z(N274) );
  GTECH_AO21 U215 ( .A(n167), .B(n203), .C(temp[20]), .Z(n202) );
  GTECH_AND3 U216 ( .A(n183), .B(n200), .C(n199), .Z(N261) );
  GTECH_NOT U217 ( .A(n204), .Z(n199) );
  GTECH_OAI21 U218 ( .A(n205), .B(n180), .C(n187), .Z(n183) );
  GTECH_AND3 U219 ( .A(n200), .B(n155), .C(n206), .Z(N248) );
  GTECH_OAI21 U220 ( .A(n186), .B(n180), .C(n174), .Z(n206) );
  GTECH_OAI22 U221 ( .A(n166), .B(n155), .C(n180), .D(n196), .Z(N235) );
  GTECH_NAND3 U222 ( .A(n200), .B(n174), .C(n159), .Z(n196) );
  GTECH_NOT U223 ( .A(temp[23]), .Z(n155) );
  GTECH_NOT U224 ( .A(n197), .Z(N222) );
  GTECH_OAI22 U225 ( .A(temp[17]), .B(n197), .C(n207), .D(n194), .Z(N209) );
  GTECH_NOT U226 ( .A(n200), .Z(n207) );
  GTECH_OAI21 U227 ( .A(n208), .B(n166), .C(n170), .Z(n200) );
  GTECH_OR_NOT U228 ( .A(n209), .B(data_valid), .Z(n170) );
  GTECH_NOT U229 ( .A(data_valid), .Z(n166) );
  GTECH_NOT U230 ( .A(n157), .Z(n208) );
  GTECH_OR_NOT U231 ( .A(n210), .B(n211), .Z(n157) );
  GTECH_NOT U232 ( .A(n154), .Z(n211) );
  GTECH_OR_NOT U233 ( .A(n204), .B(n212), .Z(n154) );
  GTECH_OA21 U234 ( .A(temp[20]), .B(n191), .C(n187), .Z(n212) );
  GTECH_NOT U235 ( .A(temp[21]), .Z(n187) );
  GTECH_NOT U236 ( .A(temp[19]), .Z(n191) );
  GTECH_NOT U237 ( .A(n194), .Z(n210) );
  GTECH_OR_NOT U238 ( .A(n213), .B(temp[18]), .Z(n194) );
  GTECH_OR_NOT U239 ( .A(n209), .B(n181), .Z(n197) );
  GTECH_NOT U240 ( .A(n192), .Z(n181) );
  GTECH_OR_NOT U241 ( .A(temp[20]), .B(n201), .Z(n192) );
  GTECH_NOT U242 ( .A(n151), .Z(n201) );
  GTECH_OR_NOT U243 ( .A(temp[21]), .B(n163), .Z(n151) );
  GTECH_NOT U244 ( .A(n150), .Z(n163) );
  GTECH_OR_NOT U245 ( .A(n204), .B(data_valid), .Z(n150) );
  GTECH_NOT U246 ( .A(n203), .Z(n209) );
  GTECH_OR_NOT U247 ( .A(n171), .B(n176), .Z(n203) );
  GTECH_OR_NOT U248 ( .A(n213), .B(n195), .Z(n176) );
  GTECH_NOT U249 ( .A(n214), .Z(n195) );
  GTECH_OR_NOT U250 ( .A(temp[18]), .B(temp[17]), .Z(n214) );
  GTECH_NOT U251 ( .A(n215), .Z(n171) );
  GTECH_NAND3 U252 ( .A(n167), .B(n168), .C(temp[16]), .Z(n215) );
  GTECH_NOT U253 ( .A(n213), .Z(n168) );
  GTECH_OR_NOT U254 ( .A(n204), .B(n159), .Z(n213) );
  GTECH_NOT U255 ( .A(n186), .Z(n159) );
  GTECH_OR_NOT U256 ( .A(temp[21]), .B(n164), .Z(n186) );
  GTECH_NOT U257 ( .A(n205), .Z(n164) );
  GTECH_OR_NOT U258 ( .A(temp[19]), .B(n189), .Z(n205) );
  GTECH_NOT U259 ( .A(temp[20]), .Z(n189) );
  GTECH_OR_NOT U260 ( .A(temp[23]), .B(n174), .Z(n204) );
  GTECH_NOT U261 ( .A(temp[22]), .Z(n174) );
  GTECH_NOT U262 ( .A(n180), .Z(n167) );
  GTECH_OR_NOT U263 ( .A(temp[18]), .B(n216), .Z(n180) );
  GTECH_NOT U264 ( .A(temp[17]), .Z(n216) );
endmodule

