
module CRC_16_parallel ( clk, rst_n, data, data_valid, crc );
  input [7:0] data;
  output [15:0] crc;
  input clk, rst_n, data_valid;
  wire   N15, N34, N37, N39, N41, N43, N45, N47, N48, N49, N50, N51, N52, N53,
         N54, N55, N56, N60, N62, N64, N69, N70, N99, N209, N222, N235, N248,
         N261, N274, N287, N298, N307, N316, N323, N328, N331, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218;
  wire   [23:0] temp;

  GTECH_FJK2S temp_reg_15_ ( .J(n98), .K(n98), .TI(N56), .TE(N287), .CP(clk), 
        .CD(rst_n), .Q(temp[15]) );
  GTECH_FJK2S temp_reg_14_ ( .J(n98), .K(n98), .TI(N55), .TE(N209), .CP(clk), 
        .CD(rst_n), .Q(temp[14]) );
  GTECH_FJK2S temp_reg_13_ ( .J(n98), .K(n98), .TI(N54), .TE(N222), .CP(clk), 
        .CD(rst_n), .Q(temp[13]) );
  GTECH_FJK2S temp_reg_12_ ( .J(n98), .K(n98), .TI(N53), .TE(N235), .CP(clk), 
        .CD(rst_n), .Q(temp[12]), .QN(N53) );
  GTECH_FJK2S temp_reg_11_ ( .J(n98), .K(n98), .TI(N52), .TE(N248), .CP(clk), 
        .CD(rst_n), .Q(temp[11]) );
  GTECH_FJK2S temp_reg_10_ ( .J(n98), .K(n98), .TI(N51), .TE(N261), .CP(clk), 
        .CD(rst_n), .Q(temp[10]) );
  GTECH_FJK2S temp_reg_9_ ( .J(n98), .K(n98), .TI(N50), .TE(N274), .CP(clk), 
        .CD(rst_n), .Q(temp[9]) );
  GTECH_FJK2S temp_reg_8_ ( .J(n98), .K(n98), .TI(N49), .TE(N287), .CP(clk), 
        .CD(rst_n), .Q(temp[8]) );
  GTECH_FJK2S temp_reg_7_ ( .J(n98), .K(n98), .TI(N48), .TE(N298), .CP(clk), 
        .CD(rst_n), .Q(temp[7]) );
  GTECH_FJK2S temp_reg_6_ ( .J(n98), .K(n98), .TI(N47), .TE(N307), .CP(clk), 
        .CD(rst_n), .Q(temp[6]) );
  GTECH_FJK2S temp_reg_5_ ( .J(n98), .K(n98), .TI(N45), .TE(N316), .CP(clk), 
        .CD(rst_n), .Q(temp[5]), .QN(N45) );
  GTECH_FJK2S temp_reg_4_ ( .J(n98), .K(n98), .TI(N43), .TE(N323), .CP(clk), 
        .CD(rst_n), .Q(temp[4]) );
  GTECH_FJK2S temp_reg_3_ ( .J(n98), .K(n98), .TI(N41), .TE(N328), .CP(clk), 
        .CD(rst_n), .Q(temp[3]) );
  GTECH_FJK2S temp_reg_2_ ( .J(n98), .K(n98), .TI(N39), .TE(N331), .CP(clk), 
        .CD(rst_n), .Q(temp[2]) );
  GTECH_FJK2S temp_reg_1_ ( .J(n98), .K(n98), .TI(N37), .TE(N70), .CP(clk), 
        .CD(rst_n), .Q(temp[1]) );
  GTECH_FJK2S temp_reg_0_ ( .J(n98), .K(n98), .TI(N34), .TE(N69), .CP(clk), 
        .CD(rst_n), .Q(temp[0]), .QN(N34) );
  GTECH_FJK2S crc_reg_15_ ( .J(n98), .K(n98), .TI(temp[15]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[15]) );
  GTECH_FJK2S crc_reg_14_ ( .J(n98), .K(n98), .TI(temp[14]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[14]) );
  GTECH_FJK2S crc_reg_13_ ( .J(n98), .K(n98), .TI(temp[13]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[13]) );
  GTECH_FJK2S crc_reg_12_ ( .J(n98), .K(n98), .TI(temp[12]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[12]) );
  GTECH_FJK2S crc_reg_11_ ( .J(n98), .K(n98), .TI(temp[11]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[11]) );
  GTECH_FJK2S crc_reg_10_ ( .J(n98), .K(n98), .TI(temp[10]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[10]) );
  GTECH_FJK2S crc_reg_9_ ( .J(n98), .K(n98), .TI(temp[9]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[9]) );
  GTECH_FJK2S crc_reg_8_ ( .J(n98), .K(n98), .TI(temp[8]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[8]) );
  GTECH_FJK2S crc_reg_7_ ( .J(n98), .K(n98), .TI(temp[7]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[7]) );
  GTECH_FJK2S crc_reg_6_ ( .J(n98), .K(n98), .TI(temp[6]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[6]) );
  GTECH_FJK2S crc_reg_5_ ( .J(n98), .K(n98), .TI(temp[5]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[5]) );
  GTECH_FJK2S crc_reg_4_ ( .J(n98), .K(n98), .TI(temp[4]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[4]) );
  GTECH_FJK2S crc_reg_3_ ( .J(n98), .K(n98), .TI(temp[3]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[3]) );
  GTECH_FJK2S crc_reg_2_ ( .J(n98), .K(n98), .TI(temp[2]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[2]) );
  GTECH_FJK2S crc_reg_1_ ( .J(n98), .K(n98), .TI(temp[1]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[1]) );
  GTECH_FJK2S crc_reg_0_ ( .J(n98), .K(n98), .TI(temp[0]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[0]) );
  GTECH_FD3 temp_reg_23_ ( .D(n97), .CP(clk), .CD(n89), .SD(n88), .Q(temp[23])
         );
  GTECH_FD3 temp_reg_22_ ( .D(n96), .CP(clk), .CD(n87), .SD(n86), .Q(temp[22]), 
        .QN(N15) );
  GTECH_FD3 temp_reg_21_ ( .D(n95), .CP(clk), .CD(n85), .SD(n84), .Q(temp[21])
         );
  GTECH_FD3 temp_reg_20_ ( .D(n94), .CP(clk), .CD(n83), .SD(n82), .Q(temp[20])
         );
  GTECH_FD3 temp_reg_19_ ( .D(n93), .CP(clk), .CD(n81), .SD(n80), .Q(temp[19]), 
        .QN(N64) );
  GTECH_FD3 temp_reg_18_ ( .D(n92), .CP(clk), .CD(n79), .SD(n78), .Q(temp[18]), 
        .QN(N62) );
  GTECH_FD3 temp_reg_17_ ( .D(n91), .CP(clk), .CD(n77), .SD(n76), .Q(temp[17]), 
        .QN(N60) );
  GTECH_FD3 temp_reg_16_ ( .D(n90), .CP(clk), .CD(n75), .SD(n74), .Q(temp[16])
         );
  GTECH_ZERO U141 ( .Z(n98) );
  GTECH_AND2 U142 ( .A(temp[23]), .B(n146), .Z(n97) );
  GTECH_OA21 U143 ( .A(temp[23]), .B(n146), .C(temp[22]), .Z(n96) );
  GTECH_AND2 U144 ( .A(temp[21]), .B(n147), .Z(n95) );
  GTECH_AND2 U145 ( .A(temp[20]), .B(n148), .Z(n94) );
  GTECH_XOR2 U146 ( .A(temp[19]), .B(n149), .Z(n93) );
  GTECH_OA21 U147 ( .A(n150), .B(temp[23]), .C(data_valid), .Z(n149) );
  GTECH_NOT U148 ( .A(n151), .Z(n150) );
  GTECH_XOR2 U149 ( .A(temp[18]), .B(n152), .Z(n92) );
  GTECH_AND2 U150 ( .A(n153), .B(n154), .Z(n152) );
  GTECH_OA21 U151 ( .A(temp[22]), .B(n155), .C(n156), .Z(n153) );
  GTECH_MUX2 U152 ( .A(n157), .B(n158), .S(temp[17]), .Z(n91) );
  GTECH_OAI21 U153 ( .A(temp[21]), .B(n159), .C(n160), .Z(n158) );
  GTECH_AND3 U154 ( .A(temp[21]), .B(n161), .C(n154), .Z(n157) );
  GTECH_NOT U155 ( .A(n162), .Z(n154) );
  GTECH_OAI21 U156 ( .A(n163), .B(n164), .C(data_valid), .Z(n162) );
  GTECH_XOR2 U157 ( .A(N274), .B(temp[16]), .Z(n90) );
  GTECH_NAND2 U158 ( .A(n165), .B(n166), .Z(n89) );
  GTECH_NOT U159 ( .A(data[7]), .Z(n166) );
  GTECH_NAND2 U160 ( .A(data[7]), .B(n165), .Z(n88) );
  GTECH_NAND2 U161 ( .A(n165), .B(n167), .Z(n87) );
  GTECH_NOT U162 ( .A(data[6]), .Z(n167) );
  GTECH_NAND2 U163 ( .A(data[6]), .B(n165), .Z(n86) );
  GTECH_NAND2 U164 ( .A(n165), .B(n168), .Z(n85) );
  GTECH_NOT U165 ( .A(data[5]), .Z(n168) );
  GTECH_NAND2 U166 ( .A(data[5]), .B(n165), .Z(n84) );
  GTECH_NAND2 U167 ( .A(n165), .B(n169), .Z(n83) );
  GTECH_NOT U168 ( .A(data[4]), .Z(n169) );
  GTECH_NAND2 U169 ( .A(data[4]), .B(n165), .Z(n82) );
  GTECH_NAND2 U170 ( .A(n165), .B(n170), .Z(n81) );
  GTECH_NOT U171 ( .A(data[3]), .Z(n170) );
  GTECH_NAND2 U172 ( .A(data[3]), .B(n165), .Z(n80) );
  GTECH_NAND2 U173 ( .A(n165), .B(n171), .Z(n79) );
  GTECH_NOT U174 ( .A(data[2]), .Z(n171) );
  GTECH_NAND2 U175 ( .A(data[2]), .B(n165), .Z(n78) );
  GTECH_NAND2 U176 ( .A(n165), .B(n172), .Z(n77) );
  GTECH_NOT U177 ( .A(data[1]), .Z(n172) );
  GTECH_NAND2 U178 ( .A(data[1]), .B(n165), .Z(n76) );
  GTECH_NAND2 U179 ( .A(n165), .B(n173), .Z(n75) );
  GTECH_NOT U180 ( .A(data[0]), .Z(n173) );
  GTECH_NAND2 U181 ( .A(data[0]), .B(n165), .Z(n74) );
  GTECH_NOT U182 ( .A(rst_n), .Z(n165) );
  GTECH_AND3 U183 ( .A(n160), .B(n174), .C(n175), .Z(N99) );
  GTECH_NOT U184 ( .A(n176), .Z(N69) );
  GTECH_XOR2 U185 ( .A(temp[19]), .B(temp[15]), .Z(N56) );
  GTECH_XOR2 U186 ( .A(temp[18]), .B(temp[14]), .Z(N55) );
  GTECH_XOR2 U187 ( .A(temp[17]), .B(temp[13]), .Z(N54) );
  GTECH_XOR2 U188 ( .A(temp[22]), .B(temp[11]), .Z(N52) );
  GTECH_XOR2 U189 ( .A(temp[21]), .B(temp[10]), .Z(N51) );
  GTECH_XOR2 U190 ( .A(temp[9]), .B(temp[20]), .Z(N50) );
  GTECH_XOR2 U191 ( .A(temp[8]), .B(temp[19]), .Z(N49) );
  GTECH_XOR2 U192 ( .A(n177), .B(temp[7]), .Z(N48) );
  GTECH_NAND2 U193 ( .A(n156), .B(n178), .Z(n177) );
  GTECH_XOR2 U194 ( .A(n179), .B(temp[6]), .Z(N47) );
  GTECH_NAND2 U195 ( .A(n180), .B(n181), .Z(n179) );
  GTECH_XOR2 U196 ( .A(temp[4]), .B(temp[20]), .Z(N43) );
  GTECH_XOR2 U197 ( .A(temp[3]), .B(temp[19]), .Z(N41) );
  GTECH_XOR2 U198 ( .A(temp[2]), .B(temp[18]), .Z(N39) );
  GTECH_XOR2 U199 ( .A(temp[1]), .B(temp[17]), .Z(N37) );
  GTECH_AND2 U200 ( .A(n182), .B(n183), .Z(N331) );
  GTECH_OAI21 U201 ( .A(n146), .B(n184), .C(n185), .Z(n182) );
  GTECH_OA21 U202 ( .A(n186), .B(temp[19]), .C(n187), .Z(N328) );
  GTECH_OA21 U203 ( .A(temp[20]), .B(n188), .C(n189), .Z(N323) );
  GTECH_NOT U204 ( .A(n190), .Z(n188) );
  GTECH_OA21 U205 ( .A(n191), .B(n189), .C(n192), .Z(N316) );
  GTECH_NOR2 U206 ( .A(n193), .B(n147), .Z(n191) );
  GTECH_OA21 U207 ( .A(n194), .B(n189), .C(n195), .Z(N307) );
  GTECH_OAI21 U208 ( .A(temp[18]), .B(n196), .C(n160), .Z(n195) );
  GTECH_OAI21 U209 ( .A(n197), .B(n148), .C(n198), .Z(n189) );
  GTECH_NOT U210 ( .A(n187), .Z(n198) );
  GTECH_OAI21 U211 ( .A(n199), .B(n146), .C(n185), .Z(n187) );
  GTECH_NOT U212 ( .A(N70), .Z(n185) );
  GTECH_OAI21 U213 ( .A(n146), .B(n183), .C(n176), .Z(N70) );
  GTECH_NAND2 U214 ( .A(n200), .B(data_valid), .Z(n176) );
  GTECH_NOT U215 ( .A(n201), .Z(n200) );
  GTECH_AND3 U216 ( .A(n164), .B(n156), .C(data_valid), .Z(n194) );
  GTECH_OAI21 U217 ( .A(n156), .B(n146), .C(n202), .Z(N298) );
  GTECH_NAND4 U218 ( .A(n203), .B(n155), .C(n204), .D(n180), .Z(n202) );
  GTECH_OAI22 U219 ( .A(n205), .B(n151), .C(n206), .D(n207), .Z(N287) );
  GTECH_OAI22 U220 ( .A(n197), .B(n148), .C(n190), .D(n207), .Z(N274) );
  GTECH_AND3 U221 ( .A(n161), .B(n192), .C(n203), .Z(N261) );
  GTECH_OAI21 U222 ( .A(temp[20]), .B(n190), .C(n193), .Z(n192) );
  GTECH_NAND2 U223 ( .A(n186), .B(n208), .Z(n190) );
  GTECH_NOT U224 ( .A(temp[19]), .Z(n208) );
  GTECH_AND2 U225 ( .A(n209), .B(n203), .Z(N248) );
  GTECH_NOT U226 ( .A(n205), .Z(n203) );
  GTECH_OA21 U227 ( .A(n175), .B(temp[22]), .C(n156), .Z(n209) );
  GTECH_NOT U228 ( .A(n210), .Z(n175) );
  GTECH_OAI21 U229 ( .A(n156), .B(n146), .C(n211), .Z(N235) );
  GTECH_OR3 U230 ( .A(temp[22]), .B(n210), .C(n205), .Z(n211) );
  GTECH_NOT U231 ( .A(data_valid), .Z(n146) );
  GTECH_AND2 U232 ( .A(n159), .B(n212), .Z(N222) );
  GTECH_NOT U233 ( .A(n207), .Z(n212) );
  GTECH_NOT U234 ( .A(n213), .Z(n159) );
  GTECH_OR3 U235 ( .A(temp[20]), .B(temp[19]), .C(temp[18]), .Z(n213) );
  GTECH_OAI21 U236 ( .A(n184), .B(n205), .C(n214), .Z(N209) );
  GTECH_OR3 U237 ( .A(temp[19]), .B(temp[17]), .C(n207), .Z(n214) );
  GTECH_NAND2 U238 ( .A(n215), .B(n216), .Z(n207) );
  GTECH_NOT U239 ( .A(n148), .Z(n215) );
  GTECH_NAND2 U240 ( .A(n160), .B(n193), .Z(n148) );
  GTECH_NOT U241 ( .A(n147), .Z(n160) );
  GTECH_NAND2 U242 ( .A(n161), .B(data_valid), .Z(n147) );
  GTECH_NAND2 U243 ( .A(data_valid), .B(n216), .Z(n205) );
  GTECH_NAND4 U244 ( .A(n217), .B(n199), .C(n183), .D(n201), .Z(n216) );
  GTECH_OR3 U245 ( .A(n218), .B(n210), .C(n174), .Z(n201) );
  GTECH_NOT U246 ( .A(temp[16]), .Z(n174) );
  GTECH_NAND2 U247 ( .A(n186), .B(n155), .Z(n210) );
  GTECH_NOT U248 ( .A(n196), .Z(n155) );
  GTECH_NOT U249 ( .A(n206), .Z(n186) );
  GTECH_NAND2 U250 ( .A(n181), .B(n178), .Z(n206) );
  GTECH_NOT U251 ( .A(temp[17]), .Z(n181) );
  GTECH_OR3 U252 ( .A(n218), .B(n196), .C(n204), .Z(n183) );
  GTECH_NAND2 U253 ( .A(temp[17]), .B(n178), .Z(n204) );
  GTECH_NOT U254 ( .A(n163), .Z(n199) );
  GTECH_NAND2 U255 ( .A(n184), .B(n151), .Z(n163) );
  GTECH_NAND4 U256 ( .A(temp[19]), .B(n161), .C(n197), .D(n193), .Z(n151) );
  GTECH_NOT U257 ( .A(temp[20]), .Z(n197) );
  GTECH_NOT U258 ( .A(n218), .Z(n161) );
  GTECH_NOT U259 ( .A(n164), .Z(n217) );
  GTECH_NAND2 U260 ( .A(n180), .B(n193), .Z(n164) );
  GTECH_NOT U261 ( .A(temp[21]), .Z(n193) );
  GTECH_OR3 U262 ( .A(n218), .B(n196), .C(n178), .Z(n184) );
  GTECH_NOT U263 ( .A(temp[18]), .Z(n178) );
  GTECH_OR3 U264 ( .A(temp[21]), .B(temp[20]), .C(temp[19]), .Z(n196) );
  GTECH_NAND2 U265 ( .A(n180), .B(n156), .Z(n218) );
  GTECH_NOT U266 ( .A(temp[23]), .Z(n156) );
  GTECH_NOT U267 ( .A(temp[22]), .Z(n180) );
endmodule

