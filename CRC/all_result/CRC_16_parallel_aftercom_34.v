
module CRC_16_parallel ( clk, rst_n, data, data_valid, crc );
  input [7:0] data;
  output [15:0] crc;
  input clk, rst_n, data_valid;
  wire   N11, N15, N19, N34, N37, N39, N41, N43, N45, N47, N48, N49, N50, N51,
         N52, N53, N54, N55, N56, N58, N60, N62, N69, N70, N99, N209, N222,
         N235, N248, N261, N274, N287, N298, N307, N316, N323, N328, N331, n7,
         n8, n9, n10, n11, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218;
  wire   [23:0] temp;

  GTECH_FJK2S temp_reg_15_ ( .J(n102), .K(n102), .TI(N56), .TE(N287), .CP(clk), 
        .CD(rst_n), .Q(temp[15]), .QN(n7) );
  GTECH_FJK2S temp_reg_14_ ( .J(n102), .K(n102), .TI(N55), .TE(N209), .CP(clk), 
        .CD(rst_n), .Q(temp[14]), .QN(n8) );
  GTECH_FJK2S temp_reg_13_ ( .J(n102), .K(n102), .TI(N54), .TE(N222), .CP(clk), 
        .CD(rst_n), .Q(temp[13]), .QN(n9) );
  GTECH_FJK2S temp_reg_12_ ( .J(n102), .K(n102), .TI(N53), .TE(N235), .CP(clk), 
        .CD(rst_n), .Q(temp[12]), .QN(N53) );
  GTECH_FJK2S temp_reg_11_ ( .J(n102), .K(n102), .TI(N52), .TE(N248), .CP(clk), 
        .CD(rst_n), .Q(temp[11]), .QN(n10) );
  GTECH_FJK2S temp_reg_10_ ( .J(n102), .K(n102), .TI(N51), .TE(N261), .CP(clk), 
        .CD(rst_n), .Q(temp[10]), .QN(n11) );
  GTECH_FJK2S temp_reg_9_ ( .J(n102), .K(n102), .TI(N50), .TE(N274), .CP(clk), 
        .CD(rst_n), .Q(temp[9]) );
  GTECH_FJK2S temp_reg_8_ ( .J(n102), .K(n102), .TI(N49), .TE(N287), .CP(clk), 
        .CD(rst_n), .Q(temp[8]) );
  GTECH_FJK2S temp_reg_7_ ( .J(n102), .K(n102), .TI(N48), .TE(N298), .CP(clk), 
        .CD(rst_n), .Q(temp[7]) );
  GTECH_FJK2S temp_reg_6_ ( .J(n102), .K(n102), .TI(N47), .TE(N307), .CP(clk), 
        .CD(rst_n), .Q(temp[6]) );
  GTECH_FJK2S temp_reg_5_ ( .J(n102), .K(n102), .TI(N45), .TE(N316), .CP(clk), 
        .CD(rst_n), .Q(temp[5]), .QN(N45) );
  GTECH_FJK2S temp_reg_4_ ( .J(n102), .K(n102), .TI(N43), .TE(N323), .CP(clk), 
        .CD(rst_n), .Q(temp[4]) );
  GTECH_FJK2S temp_reg_3_ ( .J(n102), .K(n102), .TI(N41), .TE(N328), .CP(clk), 
        .CD(rst_n), .Q(temp[3]) );
  GTECH_FJK2S temp_reg_2_ ( .J(n102), .K(n102), .TI(N39), .TE(N331), .CP(clk), 
        .CD(rst_n), .Q(temp[2]) );
  GTECH_FJK2S temp_reg_1_ ( .J(n102), .K(n102), .TI(N37), .TE(N70), .CP(clk), 
        .CD(rst_n), .Q(temp[1]) );
  GTECH_FJK2S temp_reg_0_ ( .J(n102), .K(n102), .TI(N34), .TE(N69), .CP(clk), 
        .CD(rst_n), .Q(temp[0]), .QN(N34) );
  GTECH_FJK2S crc_reg_15_ ( .J(n102), .K(n102), .TI(temp[15]), .TE(N99), .CP(
        clk), .CD(rst_n), .Q(crc[15]) );
  GTECH_FJK2S crc_reg_14_ ( .J(n102), .K(n102), .TI(temp[14]), .TE(N99), .CP(
        clk), .CD(rst_n), .Q(crc[14]) );
  GTECH_FJK2S crc_reg_13_ ( .J(n102), .K(n102), .TI(temp[13]), .TE(N99), .CP(
        clk), .CD(rst_n), .Q(crc[13]) );
  GTECH_FJK2S crc_reg_12_ ( .J(n102), .K(n102), .TI(temp[12]), .TE(N99), .CP(
        clk), .CD(rst_n), .Q(crc[12]) );
  GTECH_FJK2S crc_reg_11_ ( .J(n102), .K(n102), .TI(temp[11]), .TE(N99), .CP(
        clk), .CD(rst_n), .Q(crc[11]) );
  GTECH_FJK2S crc_reg_10_ ( .J(n102), .K(n102), .TI(temp[10]), .TE(N99), .CP(
        clk), .CD(rst_n), .Q(crc[10]) );
  GTECH_FJK2S crc_reg_9_ ( .J(n102), .K(n102), .TI(temp[9]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[9]) );
  GTECH_FJK2S crc_reg_8_ ( .J(n102), .K(n102), .TI(temp[8]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[8]) );
  GTECH_FJK2S crc_reg_7_ ( .J(n102), .K(n102), .TI(temp[7]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[7]) );
  GTECH_FJK2S crc_reg_6_ ( .J(n102), .K(n102), .TI(temp[6]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[6]) );
  GTECH_FJK2S crc_reg_5_ ( .J(n102), .K(n102), .TI(temp[5]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[5]) );
  GTECH_FJK2S crc_reg_4_ ( .J(n102), .K(n102), .TI(temp[4]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[4]) );
  GTECH_FJK2S crc_reg_3_ ( .J(n102), .K(n102), .TI(temp[3]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[3]) );
  GTECH_FJK2S crc_reg_2_ ( .J(n102), .K(n102), .TI(temp[2]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[2]) );
  GTECH_FJK2S crc_reg_1_ ( .J(n102), .K(n102), .TI(temp[1]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[1]) );
  GTECH_FJK2S crc_reg_0_ ( .J(n102), .K(n102), .TI(temp[0]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[0]) );
  GTECH_FD3 temp_reg_23_ ( .D(n101), .CP(clk), .CD(n93), .SD(n92), .Q(temp[23]), .QN(N11) );
  GTECH_FD3 temp_reg_22_ ( .D(n100), .CP(clk), .CD(n91), .SD(n90), .Q(temp[22]), .QN(N15) );
  GTECH_FD3 temp_reg_21_ ( .D(n99), .CP(clk), .CD(n89), .SD(n88), .Q(temp[21]), 
        .QN(N19) );
  GTECH_FD3 temp_reg_20_ ( .D(n98), .CP(clk), .CD(n87), .SD(n86), .Q(temp[20])
         );
  GTECH_FD3 temp_reg_19_ ( .D(n97), .CP(clk), .CD(n85), .SD(n84), .Q(temp[19])
         );
  GTECH_FD3 temp_reg_18_ ( .D(n96), .CP(clk), .CD(n83), .SD(n82), .Q(temp[18]), 
        .QN(N62) );
  GTECH_FD3 temp_reg_17_ ( .D(n95), .CP(clk), .CD(n81), .SD(n80), .Q(temp[17]), 
        .QN(N60) );
  GTECH_FD3 temp_reg_16_ ( .D(n94), .CP(clk), .CD(n79), .SD(n78), .Q(temp[16]), 
        .QN(N58) );
  GTECH_ZERO U145 ( .Z(n102) );
  GTECH_AND2 U146 ( .A(temp[21]), .B(n150), .Z(n99) );
  GTECH_AND2 U147 ( .A(temp[20]), .B(n151), .Z(n98) );
  GTECH_XNOR2 U148 ( .A(temp[19]), .B(n152), .Z(n97) );
  GTECH_OR_NOT U149 ( .A(n153), .B(n154), .Z(n152) );
  GTECH_OA21 U150 ( .A(temp[23]), .B(n155), .C(n156), .Z(n154) );
  GTECH_XNOR2 U151 ( .A(temp[18]), .B(n157), .Z(n96) );
  GTECH_OR_NOT U152 ( .A(n158), .B(n159), .Z(n157) );
  GTECH_OA21 U153 ( .A(temp[22]), .B(n160), .C(n161), .Z(n159) );
  GTECH_MUX2 U154 ( .A(n162), .B(n163), .S(temp[17]), .Z(n95) );
  GTECH_OAI21 U155 ( .A(temp[21]), .B(n164), .C(n165), .Z(n163) );
  GTECH_AND2 U156 ( .A(n166), .B(n167), .Z(n164) );
  GTECH_AND2 U157 ( .A(n165), .B(temp[21]), .Z(n162) );
  GTECH_XNOR2 U158 ( .A(temp[16]), .B(n168), .Z(n94) );
  GTECH_OR_NOT U159 ( .A(data[7]), .B(n169), .Z(n93) );
  GTECH_OR_NOT U160 ( .A(rst_n), .B(data[7]), .Z(n92) );
  GTECH_OR_NOT U161 ( .A(data[6]), .B(n169), .Z(n91) );
  GTECH_OR_NOT U162 ( .A(rst_n), .B(data[6]), .Z(n90) );
  GTECH_OR_NOT U163 ( .A(data[5]), .B(n169), .Z(n89) );
  GTECH_OR_NOT U164 ( .A(rst_n), .B(data[5]), .Z(n88) );
  GTECH_OR_NOT U165 ( .A(data[4]), .B(n169), .Z(n87) );
  GTECH_OR_NOT U166 ( .A(rst_n), .B(data[4]), .Z(n86) );
  GTECH_OR_NOT U167 ( .A(data[3]), .B(n169), .Z(n85) );
  GTECH_OR_NOT U168 ( .A(rst_n), .B(data[3]), .Z(n84) );
  GTECH_OR_NOT U169 ( .A(data[2]), .B(n169), .Z(n83) );
  GTECH_OR_NOT U170 ( .A(rst_n), .B(data[2]), .Z(n82) );
  GTECH_OR_NOT U171 ( .A(data[1]), .B(n169), .Z(n81) );
  GTECH_OR_NOT U172 ( .A(rst_n), .B(data[1]), .Z(n80) );
  GTECH_OR_NOT U173 ( .A(data[0]), .B(n169), .Z(n79) );
  GTECH_NOT U174 ( .A(rst_n), .Z(n169) );
  GTECH_OR_NOT U175 ( .A(rst_n), .B(data[0]), .Z(n78) );
  GTECH_AND2 U176 ( .A(temp[23]), .B(n153), .Z(n101) );
  GTECH_OA21 U177 ( .A(temp[23]), .B(n153), .C(temp[22]), .Z(n100) );
  GTECH_AND4 U178 ( .A(n170), .B(n171), .C(data_valid), .D(n172), .Z(N99) );
  GTECH_NOT U179 ( .A(temp[16]), .Z(n172) );
  GTECH_AND2 U180 ( .A(n173), .B(data_valid), .Z(N69) );
  GTECH_XNOR2 U181 ( .A(temp[19]), .B(n7), .Z(N56) );
  GTECH_XNOR2 U182 ( .A(temp[18]), .B(n8), .Z(N55) );
  GTECH_XNOR2 U183 ( .A(temp[17]), .B(n9), .Z(N54) );
  GTECH_XNOR2 U184 ( .A(temp[22]), .B(n10), .Z(N52) );
  GTECH_XNOR2 U185 ( .A(temp[21]), .B(n11), .Z(N51) );
  GTECH_XNOR2 U186 ( .A(temp[9]), .B(n174), .Z(N50) );
  GTECH_XNOR2 U187 ( .A(temp[8]), .B(n175), .Z(N49) );
  GTECH_XNOR2 U188 ( .A(temp[7]), .B(n176), .Z(N48) );
  GTECH_AND2 U189 ( .A(n161), .B(n167), .Z(n176) );
  GTECH_XNOR2 U190 ( .A(temp[6]), .B(n177), .Z(N47) );
  GTECH_AND2 U191 ( .A(n178), .B(n179), .Z(n177) );
  GTECH_XNOR2 U192 ( .A(temp[4]), .B(n174), .Z(N43) );
  GTECH_XNOR2 U193 ( .A(temp[3]), .B(n175), .Z(N41) );
  GTECH_XNOR2 U194 ( .A(temp[2]), .B(n167), .Z(N39) );
  GTECH_XNOR2 U195 ( .A(temp[1]), .B(n179), .Z(N37) );
  GTECH_AND2 U196 ( .A(n180), .B(n181), .Z(N331) );
  GTECH_OA21 U197 ( .A(n170), .B(temp[19]), .C(n182), .Z(N328) );
  GTECH_AND2 U198 ( .A(n183), .B(n184), .Z(N323) );
  GTECH_OAI21 U199 ( .A(temp[19]), .B(n185), .C(n186), .Z(n183) );
  GTECH_AND2 U200 ( .A(n187), .B(n188), .Z(N316) );
  GTECH_OA21 U201 ( .A(n189), .B(n187), .C(n190), .Z(N307) );
  GTECH_OAI21 U202 ( .A(temp[18]), .B(n191), .C(n165), .Z(n190) );
  GTECH_OAI21 U203 ( .A(n192), .B(n150), .C(n193), .Z(n187) );
  GTECH_NOT U204 ( .A(n184), .Z(n193) );
  GTECH_OAI21 U205 ( .A(n174), .B(n151), .C(n194), .Z(n184) );
  GTECH_NOT U206 ( .A(n182), .Z(n194) );
  GTECH_OAI21 U207 ( .A(n175), .B(n195), .C(n196), .Z(n182) );
  GTECH_NOT U208 ( .A(n180), .Z(n196) );
  GTECH_OAI21 U209 ( .A(n167), .B(n197), .C(n198), .Z(n180) );
  GTECH_OR_NOT U210 ( .A(n153), .B(n171), .Z(n197) );
  GTECH_NOT U211 ( .A(temp[18]), .Z(n167) );
  GTECH_AND3 U212 ( .A(data_valid), .B(n161), .C(temp[22]), .Z(n189) );
  GTECH_OAI22 U213 ( .A(n153), .B(n161), .C(n199), .D(n200), .Z(N298) );
  GTECH_OAI21 U214 ( .A(n185), .B(n201), .C(n202), .Z(N287) );
  GTECH_NAND4 U215 ( .A(n155), .B(temp[19]), .C(n203), .D(n161), .Z(n202) );
  GTECH_NOT U216 ( .A(n204), .Z(n155) );
  GTECH_NOT U217 ( .A(n168), .Z(N274) );
  GTECH_OAI21 U218 ( .A(n205), .B(temp[20]), .C(n206), .Z(n168) );
  GTECH_AND2 U219 ( .A(n170), .B(n207), .Z(n205) );
  GTECH_AND3 U220 ( .A(n188), .B(n203), .C(n208), .Z(N261) );
  GTECH_NOT U221 ( .A(n209), .Z(n208) );
  GTECH_OAI21 U222 ( .A(n210), .B(n185), .C(n192), .Z(n188) );
  GTECH_NOT U223 ( .A(temp[21]), .Z(n192) );
  GTECH_AND3 U224 ( .A(n203), .B(n161), .C(n211), .Z(N248) );
  GTECH_OAI21 U225 ( .A(n191), .B(n185), .C(n178), .Z(n211) );
  GTECH_OAI22 U226 ( .A(n153), .B(n161), .C(n185), .D(n200), .Z(N235) );
  GTECH_NAND3 U227 ( .A(n203), .B(n178), .C(n160), .Z(n200) );
  GTECH_NOT U228 ( .A(data_valid), .Z(n153) );
  GTECH_NOT U229 ( .A(n201), .Z(N222) );
  GTECH_OAI21 U230 ( .A(temp[17]), .B(n201), .C(n212), .Z(N209) );
  GTECH_NAND3 U231 ( .A(n171), .B(n203), .C(temp[18]), .Z(n212) );
  GTECH_OR_NOT U232 ( .A(N70), .B(n158), .Z(n203) );
  GTECH_OAI21 U233 ( .A(n213), .B(n156), .C(data_valid), .Z(n158) );
  GTECH_OR_NOT U234 ( .A(n204), .B(n214), .Z(n156) );
  GTECH_OA21 U235 ( .A(temp[20]), .B(n175), .C(n161), .Z(n214) );
  GTECH_NOT U236 ( .A(temp[23]), .Z(n161) );
  GTECH_NOT U237 ( .A(temp[19]), .Z(n175) );
  GTECH_OR_NOT U238 ( .A(temp[21]), .B(n178), .Z(n204) );
  GTECH_AND2 U239 ( .A(temp[18]), .B(n171), .Z(n213) );
  GTECH_NOT U240 ( .A(n198), .Z(N70) );
  GTECH_OR_NOT U241 ( .A(n215), .B(data_valid), .Z(n198) );
  GTECH_OR_NOT U242 ( .A(n215), .B(n186), .Z(n201) );
  GTECH_NOT U243 ( .A(n195), .Z(n186) );
  GTECH_OR_NOT U244 ( .A(temp[20]), .B(n206), .Z(n195) );
  GTECH_NOT U245 ( .A(n151), .Z(n206) );
  GTECH_OR_NOT U246 ( .A(temp[21]), .B(n165), .Z(n151) );
  GTECH_NOT U247 ( .A(n150), .Z(n165) );
  GTECH_OR_NOT U248 ( .A(n209), .B(data_valid), .Z(n150) );
  GTECH_NOT U249 ( .A(n207), .Z(n215) );
  GTECH_OR_NOT U250 ( .A(n173), .B(n181), .Z(n207) );
  GTECH_OR_NOT U251 ( .A(n216), .B(n199), .Z(n181) );
  GTECH_NOT U252 ( .A(n217), .Z(n199) );
  GTECH_OR_NOT U253 ( .A(temp[18]), .B(temp[17]), .Z(n217) );
  GTECH_NOT U254 ( .A(n218), .Z(n173) );
  GTECH_NAND3 U255 ( .A(n170), .B(n171), .C(temp[16]), .Z(n218) );
  GTECH_NOT U256 ( .A(n216), .Z(n171) );
  GTECH_OR_NOT U257 ( .A(n209), .B(n160), .Z(n216) );
  GTECH_NOT U258 ( .A(n191), .Z(n160) );
  GTECH_OR_NOT U259 ( .A(temp[21]), .B(n166), .Z(n191) );
  GTECH_NOT U260 ( .A(n210), .Z(n166) );
  GTECH_OR_NOT U261 ( .A(temp[19]), .B(n174), .Z(n210) );
  GTECH_NOT U262 ( .A(temp[20]), .Z(n174) );
  GTECH_OR_NOT U263 ( .A(temp[23]), .B(n178), .Z(n209) );
  GTECH_NOT U264 ( .A(temp[22]), .Z(n178) );
  GTECH_NOT U265 ( .A(n185), .Z(n170) );
  GTECH_OR_NOT U266 ( .A(temp[18]), .B(n179), .Z(n185) );
  GTECH_NOT U267 ( .A(temp[17]), .Z(n179) );
endmodule

