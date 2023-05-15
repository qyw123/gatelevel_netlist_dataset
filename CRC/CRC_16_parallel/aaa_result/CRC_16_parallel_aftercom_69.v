
module CRC_16_parallel ( clk, rst_n, data, data_valid, crc );
  input [7:0] data;
  output [15:0] crc;
  input clk, rst_n, data_valid;
  wire   N11, N15, N19, N23, N34, N37, N39, N41, N43, N45, N47, N48, N49, N50,
         N51, N52, N53, N54, N55, N56, N58, N60, N62, N64, N69, N70, N99, N209,
         N222, N235, N248, N261, N274, N287, N298, N307, N316, N323, N328,
         N331, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n254, n255;
  wire   [23:0] temp;

  GTECH_FJK3S temp_reg_15_ ( .J(n88), .K(n88), .TI(N56), .TE(N287), .CP(clk), 
        .CD(rst_n), .SD(n87), .Q(temp[15]) );
  GTECH_FJK3S temp_reg_14_ ( .J(n88), .K(n88), .TI(N55), .TE(N209), .CP(clk), 
        .CD(rst_n), .SD(n87), .Q(temp[14]) );
  GTECH_FJK3S temp_reg_13_ ( .J(n88), .K(n88), .TI(N54), .TE(N222), .CP(clk), 
        .CD(rst_n), .SD(n87), .Q(temp[13]) );
  GTECH_FJK3S temp_reg_12_ ( .J(n88), .K(n88), .TI(N53), .TE(N235), .CP(clk), 
        .CD(rst_n), .SD(n87), .Q(temp[12]), .QN(N53) );
  GTECH_FJK3S temp_reg_11_ ( .J(n88), .K(n88), .TI(N52), .TE(N248), .CP(clk), 
        .CD(rst_n), .SD(n87), .Q(temp[11]) );
  GTECH_FJK3S temp_reg_10_ ( .J(n88), .K(n88), .TI(N51), .TE(N261), .CP(clk), 
        .CD(rst_n), .SD(n87), .Q(temp[10]) );
  GTECH_FJK3S temp_reg_9_ ( .J(n88), .K(n88), .TI(N50), .TE(N274), .CP(clk), 
        .CD(rst_n), .SD(n87), .Q(temp[9]) );
  GTECH_FJK3S temp_reg_8_ ( .J(n88), .K(n88), .TI(N49), .TE(N287), .CP(clk), 
        .CD(rst_n), .SD(n87), .Q(temp[8]) );
  GTECH_FJK3S temp_reg_7_ ( .J(n88), .K(n88), .TI(N48), .TE(N298), .CP(clk), 
        .CD(rst_n), .SD(n87), .Q(temp[7]) );
  GTECH_FJK3S temp_reg_6_ ( .J(n88), .K(n88), .TI(N47), .TE(N307), .CP(clk), 
        .CD(rst_n), .SD(n87), .Q(temp[6]) );
  GTECH_FJK3S temp_reg_5_ ( .J(n88), .K(n88), .TI(N45), .TE(N316), .CP(clk), 
        .CD(rst_n), .SD(n87), .Q(temp[5]), .QN(N45) );
  GTECH_FJK3S temp_reg_4_ ( .J(n88), .K(n88), .TI(N43), .TE(N323), .CP(clk), 
        .CD(rst_n), .SD(n87), .Q(temp[4]) );
  GTECH_FJK3S temp_reg_3_ ( .J(n88), .K(n88), .TI(N41), .TE(N328), .CP(clk), 
        .CD(rst_n), .SD(n87), .Q(temp[3]) );
  GTECH_FJK3S temp_reg_2_ ( .J(n88), .K(n88), .TI(N39), .TE(N331), .CP(clk), 
        .CD(rst_n), .SD(n87), .Q(temp[2]) );
  GTECH_FJK3S temp_reg_1_ ( .J(n88), .K(n88), .TI(N37), .TE(N70), .CP(clk), 
        .CD(rst_n), .SD(n87), .Q(temp[1]) );
  GTECH_FJK3S temp_reg_0_ ( .J(n88), .K(n88), .TI(N34), .TE(N69), .CP(clk), 
        .CD(rst_n), .SD(n87), .Q(temp[0]), .QN(N34) );
  GTECH_FJK3S crc_reg_15_ ( .J(n88), .K(n88), .TI(temp[15]), .TE(N99), .CP(clk), .CD(rst_n), .SD(n87), .Q(crc[15]) );
  GTECH_FJK3S crc_reg_14_ ( .J(n88), .K(n88), .TI(temp[14]), .TE(N99), .CP(clk), .CD(rst_n), .SD(n87), .Q(crc[14]) );
  GTECH_FJK3S crc_reg_13_ ( .J(n88), .K(n88), .TI(temp[13]), .TE(N99), .CP(clk), .CD(rst_n), .SD(n87), .Q(crc[13]) );
  GTECH_FJK3S crc_reg_12_ ( .J(n88), .K(n88), .TI(temp[12]), .TE(N99), .CP(clk), .CD(rst_n), .SD(n87), .Q(crc[12]) );
  GTECH_FJK3S crc_reg_11_ ( .J(n88), .K(n88), .TI(temp[11]), .TE(N99), .CP(clk), .CD(rst_n), .SD(n87), .Q(crc[11]) );
  GTECH_FJK3S crc_reg_10_ ( .J(n88), .K(n88), .TI(temp[10]), .TE(N99), .CP(clk), .CD(rst_n), .SD(n87), .Q(crc[10]) );
  GTECH_FJK3S crc_reg_9_ ( .J(n88), .K(n88), .TI(temp[9]), .TE(N99), .CP(clk), 
        .CD(rst_n), .SD(n87), .Q(crc[9]) );
  GTECH_FJK3S crc_reg_8_ ( .J(n88), .K(n88), .TI(temp[8]), .TE(N99), .CP(clk), 
        .CD(rst_n), .SD(n87), .Q(crc[8]) );
  GTECH_FJK3S crc_reg_7_ ( .J(n88), .K(n88), .TI(temp[7]), .TE(N99), .CP(clk), 
        .CD(rst_n), .SD(n87), .Q(crc[7]) );
  GTECH_FJK3S crc_reg_6_ ( .J(n88), .K(n88), .TI(temp[6]), .TE(N99), .CP(clk), 
        .CD(rst_n), .SD(n87), .Q(crc[6]) );
  GTECH_FJK3S crc_reg_5_ ( .J(n88), .K(n88), .TI(temp[5]), .TE(N99), .CP(clk), 
        .CD(rst_n), .SD(n87), .Q(crc[5]) );
  GTECH_FJK3S crc_reg_4_ ( .J(n88), .K(n88), .TI(temp[4]), .TE(N99), .CP(clk), 
        .CD(rst_n), .SD(n87), .Q(crc[4]) );
  GTECH_FJK3S crc_reg_3_ ( .J(n88), .K(n88), .TI(temp[3]), .TE(N99), .CP(clk), 
        .CD(rst_n), .SD(n87), .Q(crc[3]) );
  GTECH_FJK3S crc_reg_2_ ( .J(n88), .K(n88), .TI(temp[2]), .TE(N99), .CP(clk), 
        .CD(rst_n), .SD(n87), .Q(crc[2]) );
  GTECH_FJK3S crc_reg_1_ ( .J(n88), .K(n88), .TI(temp[1]), .TE(N99), .CP(clk), 
        .CD(rst_n), .SD(n87), .Q(crc[1]) );
  GTECH_FJK3S crc_reg_0_ ( .J(n88), .K(n88), .TI(temp[0]), .TE(N99), .CP(clk), 
        .CD(rst_n), .SD(n87), .Q(crc[0]) );
  GTECH_FD3 temp_reg_23_ ( .D(n86), .CP(clk), .CD(n78), .SD(n77), .Q(temp[23]), 
        .QN(N11) );
  GTECH_FD3 temp_reg_22_ ( .D(n85), .CP(clk), .CD(n76), .SD(n75), .Q(temp[22]), 
        .QN(N15) );
  GTECH_FD3 temp_reg_21_ ( .D(n84), .CP(clk), .CD(n74), .SD(n73), .Q(temp[21]), 
        .QN(N19) );
  GTECH_FD3 temp_reg_20_ ( .D(n83), .CP(clk), .CD(n72), .SD(n71), .Q(temp[20]), 
        .QN(N23) );
  GTECH_FD3 temp_reg_19_ ( .D(n82), .CP(clk), .CD(n70), .SD(n69), .Q(temp[19]), 
        .QN(N64) );
  GTECH_FD3 temp_reg_18_ ( .D(n81), .CP(clk), .CD(n68), .SD(n67), .Q(temp[18]), 
        .QN(N62) );
  GTECH_FD3 temp_reg_17_ ( .D(n80), .CP(clk), .CD(n66), .SD(n65), .Q(temp[17]), 
        .QN(N60) );
  GTECH_FD3 temp_reg_16_ ( .D(n79), .CP(clk), .CD(n64), .SD(n63), .Q(temp[16]), 
        .QN(N58) );
  GTECH_ZERO U175 ( .Z(n88) );
  GTECH_ONE U176 ( .Z(n87) );
  GTECH_AND2 U177 ( .A(temp[23]), .B(n180), .Z(n86) );
  GTECH_OA21 U178 ( .A(temp[23]), .B(n180), .C(temp[22]), .Z(n85) );
  GTECH_AND2 U179 ( .A(temp[21]), .B(n181), .Z(n84) );
  GTECH_AND2 U180 ( .A(temp[20]), .B(n182), .Z(n83) );
  GTECH_XOR2 U181 ( .A(temp[19]), .B(n183), .Z(n82) );
  GTECH_OA21 U182 ( .A(n184), .B(temp[23]), .C(data_valid), .Z(n183) );
  GTECH_NOT U183 ( .A(n185), .Z(n184) );
  GTECH_XOR2 U184 ( .A(temp[18]), .B(n186), .Z(n81) );
  GTECH_AND3 U185 ( .A(data_valid), .B(n187), .C(n188), .Z(n186) );
  GTECH_OA21 U186 ( .A(n189), .B(temp[22]), .C(n190), .Z(n188) );
  GTECH_MUX2 U187 ( .A(n191), .B(n192), .S(temp[17]), .Z(n80) );
  GTECH_OAI21 U188 ( .A(temp[21]), .B(n193), .C(n194), .Z(n192) );
  GTECH_AND2 U189 ( .A(n194), .B(temp[21]), .Z(n191) );
  GTECH_XOR2 U190 ( .A(N274), .B(temp[16]), .Z(n79) );
  GTECH_NAND2 U191 ( .A(n195), .B(n196), .Z(n78) );
  GTECH_NOT U192 ( .A(data[7]), .Z(n196) );
  GTECH_NAND2 U193 ( .A(data[7]), .B(n195), .Z(n77) );
  GTECH_NAND2 U194 ( .A(n195), .B(n197), .Z(n76) );
  GTECH_NOT U195 ( .A(data[6]), .Z(n197) );
  GTECH_NAND2 U196 ( .A(data[6]), .B(n195), .Z(n75) );
  GTECH_NAND2 U197 ( .A(n195), .B(n198), .Z(n74) );
  GTECH_NOT U198 ( .A(data[5]), .Z(n198) );
  GTECH_NAND2 U199 ( .A(data[5]), .B(n195), .Z(n73) );
  GTECH_NAND2 U200 ( .A(n195), .B(n199), .Z(n72) );
  GTECH_NOT U201 ( .A(data[4]), .Z(n199) );
  GTECH_NAND2 U202 ( .A(data[4]), .B(n195), .Z(n71) );
  GTECH_NAND2 U203 ( .A(n195), .B(n200), .Z(n70) );
  GTECH_NOT U204 ( .A(data[3]), .Z(n200) );
  GTECH_NAND2 U205 ( .A(data[3]), .B(n195), .Z(n69) );
  GTECH_NAND2 U206 ( .A(n195), .B(n201), .Z(n68) );
  GTECH_NOT U207 ( .A(data[2]), .Z(n201) );
  GTECH_NAND2 U208 ( .A(data[2]), .B(n195), .Z(n67) );
  GTECH_NAND2 U209 ( .A(n195), .B(n202), .Z(n66) );
  GTECH_NOT U210 ( .A(data[1]), .Z(n202) );
  GTECH_NAND2 U211 ( .A(data[1]), .B(n195), .Z(n65) );
  GTECH_NAND2 U212 ( .A(n195), .B(n203), .Z(n64) );
  GTECH_NOT U213 ( .A(data[0]), .Z(n203) );
  GTECH_NAND2 U214 ( .A(data[0]), .B(n195), .Z(n63) );
  GTECH_NOT U215 ( .A(rst_n), .Z(n195) );
  GTECH_AND4 U216 ( .A(n204), .B(n205), .C(data_valid), .D(n206), .Z(N99) );
  GTECH_NOT U217 ( .A(n207), .Z(N69) );
  GTECH_XOR2 U218 ( .A(temp[19]), .B(temp[15]), .Z(N56) );
  GTECH_XOR2 U219 ( .A(temp[18]), .B(temp[14]), .Z(N55) );
  GTECH_XOR2 U220 ( .A(temp[17]), .B(temp[13]), .Z(N54) );
  GTECH_XOR2 U221 ( .A(temp[22]), .B(temp[11]), .Z(N52) );
  GTECH_XOR2 U222 ( .A(temp[21]), .B(temp[10]), .Z(N51) );
  GTECH_XOR2 U223 ( .A(temp[9]), .B(temp[20]), .Z(N50) );
  GTECH_XOR2 U224 ( .A(temp[8]), .B(temp[19]), .Z(N49) );
  GTECH_XOR2 U225 ( .A(n208), .B(temp[7]), .Z(N48) );
  GTECH_NAND2 U226 ( .A(n190), .B(n209), .Z(n208) );
  GTECH_XOR2 U227 ( .A(n210), .B(temp[6]), .Z(N47) );
  GTECH_NAND2 U228 ( .A(n211), .B(n212), .Z(n210) );
  GTECH_XOR2 U229 ( .A(temp[4]), .B(temp[20]), .Z(N43) );
  GTECH_XOR2 U230 ( .A(temp[3]), .B(temp[19]), .Z(N41) );
  GTECH_XOR2 U231 ( .A(temp[2]), .B(temp[18]), .Z(N39) );
  GTECH_XOR2 U232 ( .A(temp[1]), .B(temp[17]), .Z(N37) );
  GTECH_AND2 U233 ( .A(n213), .B(n214), .Z(N331) );
  GTECH_OA21 U234 ( .A(n204), .B(temp[19]), .C(n215), .Z(N328) );
  GTECH_AND2 U235 ( .A(n216), .B(n217), .Z(N323) );
  GTECH_OAI21 U236 ( .A(temp[19]), .B(n218), .C(n219), .Z(n217) );
  GTECH_AND2 U237 ( .A(n220), .B(n221), .Z(N316) );
  GTECH_OA21 U238 ( .A(n222), .B(n221), .C(n223), .Z(N307) );
  GTECH_OAI21 U239 ( .A(temp[21]), .B(n224), .C(n194), .Z(n223) );
  GTECH_OAI21 U240 ( .A(n189), .B(n181), .C(n225), .Z(n221) );
  GTECH_NOT U241 ( .A(n216), .Z(n225) );
  GTECH_OAI21 U242 ( .A(n219), .B(n182), .C(n226), .Z(n216) );
  GTECH_NOT U243 ( .A(n215), .Z(n226) );
  GTECH_OAI21 U244 ( .A(n180), .B(n185), .C(n227), .Z(n215) );
  GTECH_NOT U245 ( .A(n213), .Z(n227) );
  GTECH_OAI21 U246 ( .A(n180), .B(n228), .C(n229), .Z(n213) );
  GTECH_NOT U247 ( .A(N70), .Z(n229) );
  GTECH_OAI21 U248 ( .A(n180), .B(n214), .C(n207), .Z(N70) );
  GTECH_NAND2 U249 ( .A(n230), .B(data_valid), .Z(n207) );
  GTECH_NOT U250 ( .A(n231), .Z(n230) );
  GTECH_AND3 U251 ( .A(data_valid), .B(n190), .C(temp[22]), .Z(n222) );
  GTECH_OAI21 U252 ( .A(n190), .B(n180), .C(n232), .Z(N298) );
  GTECH_OR3 U253 ( .A(n233), .B(n234), .C(n235), .Z(n232) );
  GTECH_OAI22 U254 ( .A(n185), .B(n235), .C(n218), .D(n236), .Z(N287) );
  GTECH_OAI21 U255 ( .A(n219), .B(n182), .C(n237), .Z(N274) );
  GTECH_OR3 U256 ( .A(temp[19]), .B(n218), .C(n236), .Z(n237) );
  GTECH_AND3 U257 ( .A(n238), .B(n220), .C(n239), .Z(N261) );
  GTECH_OAI21 U258 ( .A(n240), .B(n218), .C(n189), .Z(n220) );
  GTECH_AND2 U259 ( .A(n241), .B(n239), .Z(N248) );
  GTECH_NOT U260 ( .A(n235), .Z(n239) );
  GTECH_OA21 U261 ( .A(n242), .B(temp[22]), .C(n190), .Z(n241) );
  GTECH_AND3 U262 ( .A(n243), .B(n189), .C(n204), .Z(n242) );
  GTECH_NOT U263 ( .A(n218), .Z(n204) );
  GTECH_OAI21 U264 ( .A(n190), .B(n180), .C(n244), .Z(N235) );
  GTECH_OR3 U265 ( .A(n234), .B(n218), .C(n235), .Z(n244) );
  GTECH_NOT U266 ( .A(data_valid), .Z(n180) );
  GTECH_AND2 U267 ( .A(n193), .B(n245), .Z(N222) );
  GTECH_NOT U268 ( .A(n236), .Z(n245) );
  GTECH_NOT U269 ( .A(n224), .Z(n193) );
  GTECH_NAND2 U270 ( .A(n243), .B(n209), .Z(n224) );
  GTECH_NOT U271 ( .A(n240), .Z(n243) );
  GTECH_OAI21 U272 ( .A(n228), .B(n235), .C(n246), .Z(N209) );
  GTECH_OR3 U273 ( .A(temp[17]), .B(n240), .C(n236), .Z(n246) );
  GTECH_NAND2 U274 ( .A(n247), .B(n248), .Z(n236) );
  GTECH_NOT U275 ( .A(n182), .Z(n247) );
  GTECH_NAND2 U276 ( .A(n194), .B(n189), .Z(n182) );
  GTECH_NOT U277 ( .A(n181), .Z(n194) );
  GTECH_NAND2 U278 ( .A(n238), .B(data_valid), .Z(n181) );
  GTECH_NAND2 U279 ( .A(data_valid), .B(n248), .Z(n235) );
  GTECH_NAND4 U280 ( .A(n249), .B(n231), .C(n185), .D(n214), .Z(n248) );
  GTECH_NAND2 U281 ( .A(n233), .B(n205), .Z(n214) );
  GTECH_NOT U282 ( .A(n250), .Z(n233) );
  GTECH_NAND2 U283 ( .A(temp[17]), .B(n209), .Z(n250) );
  GTECH_NAND4 U284 ( .A(temp[19]), .B(n238), .C(n219), .D(n189), .Z(n185) );
  GTECH_NOT U285 ( .A(temp[21]), .Z(n189) );
  GTECH_NOT U286 ( .A(n251), .Z(n238) );
  GTECH_OR3 U287 ( .A(n252), .B(n218), .C(n206), .Z(n231) );
  GTECH_NOT U288 ( .A(temp[16]), .Z(n206) );
  GTECH_NAND2 U289 ( .A(n212), .B(n209), .Z(n218) );
  GTECH_NOT U290 ( .A(temp[18]), .Z(n209) );
  GTECH_NOT U291 ( .A(temp[17]), .Z(n212) );
  GTECH_NOT U292 ( .A(n187), .Z(n249) );
  GTECH_OR3 U293 ( .A(temp[21]), .B(n253), .C(n251), .Z(n187) );
  GTECH_NAND2 U294 ( .A(n211), .B(n190), .Z(n251) );
  GTECH_NOT U295 ( .A(temp[22]), .Z(n211) );
  GTECH_NOT U296 ( .A(n228), .Z(n253) );
  GTECH_NAND2 U297 ( .A(temp[18]), .B(n205), .Z(n228) );
  GTECH_NOT U298 ( .A(n252), .Z(n205) );
  GTECH_NAND2 U299 ( .A(n254), .B(n190), .Z(n252) );
  GTECH_NOT U300 ( .A(temp[23]), .Z(n190) );
  GTECH_NOT U301 ( .A(n234), .Z(n254) );
  GTECH_OR3 U302 ( .A(temp[22]), .B(temp[21]), .C(n240), .Z(n234) );
  GTECH_NAND2 U303 ( .A(n255), .B(n219), .Z(n240) );
  GTECH_NOT U304 ( .A(temp[20]), .Z(n219) );
  GTECH_NOT U305 ( .A(temp[19]), .Z(n255) );
endmodule

