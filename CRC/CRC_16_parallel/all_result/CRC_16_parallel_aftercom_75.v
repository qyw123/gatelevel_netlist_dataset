
module CRC_16_parallel ( clk, rst_n, data, data_valid, crc );
  input [7:0] data;
  output [15:0] crc;
  input clk, rst_n, data_valid;
  wire   N11, N15, N34, N37, N39, N41, N43, N45, N47, N48, N49, N50, N51, N52,
         N53, N54, N55, N56, N58, N62, N64, N69, N70, N99, N209, N222, N235,
         N248, N261, N274, N287, N298, N307, N316, N323, N328, N331, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258;
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
  GTECH_FD3 temp_reg_21_ ( .D(n84), .CP(clk), .CD(n74), .SD(n73), .Q(temp[21])
         );
  GTECH_FD3 temp_reg_20_ ( .D(n83), .CP(clk), .CD(n72), .SD(n71), .Q(temp[20])
         );
  GTECH_FD3 temp_reg_19_ ( .D(n82), .CP(clk), .CD(n70), .SD(n69), .Q(temp[19]), 
        .QN(N64) );
  GTECH_FD3 temp_reg_18_ ( .D(n81), .CP(clk), .CD(n68), .SD(n67), .Q(temp[18]), 
        .QN(N62) );
  GTECH_FD3 temp_reg_17_ ( .D(n80), .CP(clk), .CD(n66), .SD(n65), .Q(temp[17])
         );
  GTECH_FD3 temp_reg_16_ ( .D(n79), .CP(clk), .CD(n64), .SD(n63), .Q(temp[16]), 
        .QN(N58) );
  GTECH_ZERO U175 ( .Z(n88) );
  GTECH_ONE U176 ( .Z(n87) );
  GTECH_AND2 U177 ( .A(temp[23]), .B(n180), .Z(n86) );
  GTECH_AND2 U178 ( .A(temp[22]), .B(n181), .Z(n85) );
  GTECH_AND2 U179 ( .A(temp[21]), .B(n182), .Z(n84) );
  GTECH_AND2 U180 ( .A(temp[20]), .B(n183), .Z(n83) );
  GTECH_XOR2 U181 ( .A(temp[19]), .B(n184), .Z(n82) );
  GTECH_AND2 U182 ( .A(n185), .B(data_valid), .Z(n184) );
  GTECH_OA21 U183 ( .A(temp[23]), .B(n186), .C(n187), .Z(n185) );
  GTECH_XOR2 U184 ( .A(temp[18]), .B(n188), .Z(n81) );
  GTECH_NOR3 U185 ( .A(n181), .B(n189), .C(n190), .Z(n188) );
  GTECH_OA21 U186 ( .A(temp[21]), .B(n191), .C(n192), .Z(n189) );
  GTECH_MUX2 U187 ( .A(n193), .B(n194), .S(temp[17]), .Z(n80) );
  GTECH_OAI21 U188 ( .A(temp[21]), .B(n195), .C(n196), .Z(n194) );
  GTECH_NOT U189 ( .A(n197), .Z(n195) );
  GTECH_AND2 U190 ( .A(n196), .B(temp[21]), .Z(n193) );
  GTECH_XOR2 U191 ( .A(temp[16]), .B(N274), .Z(n79) );
  GTECH_NAND2 U192 ( .A(n198), .B(n199), .Z(n78) );
  GTECH_NOT U193 ( .A(data[7]), .Z(n199) );
  GTECH_NAND2 U194 ( .A(data[7]), .B(n198), .Z(n77) );
  GTECH_NAND2 U195 ( .A(n198), .B(n200), .Z(n76) );
  GTECH_NOT U196 ( .A(data[6]), .Z(n200) );
  GTECH_NAND2 U197 ( .A(data[6]), .B(n198), .Z(n75) );
  GTECH_NAND2 U198 ( .A(n198), .B(n201), .Z(n74) );
  GTECH_NOT U199 ( .A(data[5]), .Z(n201) );
  GTECH_NAND2 U200 ( .A(data[5]), .B(n198), .Z(n73) );
  GTECH_NAND2 U201 ( .A(n198), .B(n202), .Z(n72) );
  GTECH_NOT U202 ( .A(data[4]), .Z(n202) );
  GTECH_NAND2 U203 ( .A(data[4]), .B(n198), .Z(n71) );
  GTECH_NAND2 U204 ( .A(n198), .B(n203), .Z(n70) );
  GTECH_NOT U205 ( .A(data[3]), .Z(n203) );
  GTECH_NAND2 U206 ( .A(data[3]), .B(n198), .Z(n69) );
  GTECH_NAND2 U207 ( .A(n198), .B(n204), .Z(n68) );
  GTECH_NOT U208 ( .A(data[2]), .Z(n204) );
  GTECH_NAND2 U209 ( .A(data[2]), .B(n198), .Z(n67) );
  GTECH_NAND2 U210 ( .A(n198), .B(n205), .Z(n66) );
  GTECH_NOT U211 ( .A(data[1]), .Z(n205) );
  GTECH_NAND2 U212 ( .A(data[1]), .B(n198), .Z(n65) );
  GTECH_NAND2 U213 ( .A(n198), .B(n206), .Z(n64) );
  GTECH_NOT U214 ( .A(data[0]), .Z(n206) );
  GTECH_NAND2 U215 ( .A(data[0]), .B(n198), .Z(n63) );
  GTECH_NOT U216 ( .A(rst_n), .Z(n198) );
  GTECH_AND4 U217 ( .A(n207), .B(n208), .C(data_valid), .D(n209), .Z(N99) );
  GTECH_NOT U218 ( .A(temp[16]), .Z(n209) );
  GTECH_NOT U219 ( .A(n210), .Z(N69) );
  GTECH_XOR2 U220 ( .A(temp[19]), .B(temp[15]), .Z(N56) );
  GTECH_XOR2 U221 ( .A(temp[18]), .B(temp[14]), .Z(N55) );
  GTECH_XOR2 U222 ( .A(temp[17]), .B(temp[13]), .Z(N54) );
  GTECH_XOR2 U223 ( .A(temp[22]), .B(temp[11]), .Z(N52) );
  GTECH_XOR2 U224 ( .A(temp[21]), .B(temp[10]), .Z(N51) );
  GTECH_XOR2 U225 ( .A(temp[9]), .B(temp[20]), .Z(N50) );
  GTECH_XOR2 U226 ( .A(temp[8]), .B(temp[19]), .Z(N49) );
  GTECH_XOR2 U227 ( .A(n211), .B(temp[7]), .Z(N48) );
  GTECH_NAND2 U228 ( .A(n212), .B(n213), .Z(n211) );
  GTECH_XOR2 U229 ( .A(n214), .B(temp[6]), .Z(N47) );
  GTECH_NAND2 U230 ( .A(n192), .B(n215), .Z(n214) );
  GTECH_XOR2 U231 ( .A(temp[4]), .B(temp[20]), .Z(N43) );
  GTECH_XOR2 U232 ( .A(temp[3]), .B(temp[19]), .Z(N41) );
  GTECH_XOR2 U233 ( .A(temp[2]), .B(temp[18]), .Z(N39) );
  GTECH_XOR2 U234 ( .A(temp[1]), .B(temp[17]), .Z(N37) );
  GTECH_AND2 U235 ( .A(n216), .B(n217), .Z(N331) );
  GTECH_OA21 U236 ( .A(n207), .B(temp[19]), .C(n218), .Z(N328) );
  GTECH_AND2 U237 ( .A(n219), .B(n220), .Z(N323) );
  GTECH_OAI21 U238 ( .A(temp[19]), .B(n221), .C(n222), .Z(n219) );
  GTECH_NOT U239 ( .A(n223), .Z(n222) );
  GTECH_AND2 U240 ( .A(n224), .B(n225), .Z(N316) );
  GTECH_OA21 U241 ( .A(n226), .B(n224), .C(n227), .Z(N307) );
  GTECH_OAI21 U242 ( .A(temp[21]), .B(n197), .C(n196), .Z(n227) );
  GTECH_NAND2 U243 ( .A(n228), .B(n213), .Z(n197) );
  GTECH_OAI21 U244 ( .A(n229), .B(n182), .C(n230), .Z(n224) );
  GTECH_NOT U245 ( .A(n220), .Z(n230) );
  GTECH_OAI21 U246 ( .A(n231), .B(n183), .C(n232), .Z(n220) );
  GTECH_NOT U247 ( .A(n218), .Z(n232) );
  GTECH_OAI21 U248 ( .A(n233), .B(n223), .C(n234), .Z(n218) );
  GTECH_NOT U249 ( .A(n216), .Z(n234) );
  GTECH_OAI21 U250 ( .A(n180), .B(n235), .C(n236), .Z(n216) );
  GTECH_NOT U251 ( .A(N70), .Z(n236) );
  GTECH_OAI21 U252 ( .A(n180), .B(n217), .C(n210), .Z(N70) );
  GTECH_NAND2 U253 ( .A(n237), .B(data_valid), .Z(n210) );
  GTECH_NOT U254 ( .A(n238), .Z(n237) );
  GTECH_AND_NOT U255 ( .A(temp[22]), .B(n181), .Z(n226) );
  GTECH_OAI22 U256 ( .A(n212), .B(n180), .C(n239), .D(n240), .Z(N298) );
  GTECH_AND2 U257 ( .A(n241), .B(n242), .Z(N287) );
  GTECH_OAI21 U258 ( .A(n221), .B(n223), .C(n243), .Z(n241) );
  GTECH_NAND3 U259 ( .A(temp[19]), .B(n244), .C(n186), .Z(n243) );
  GTECH_AND2 U260 ( .A(n245), .B(n246), .Z(N274) );
  GTECH_OAI21 U261 ( .A(n221), .B(n247), .C(n231), .Z(n246) );
  GTECH_NOR3 U262 ( .A(n182), .B(n248), .C(n249), .Z(N261) );
  GTECH_NOT U263 ( .A(n225), .Z(n249) );
  GTECH_OAI21 U264 ( .A(n191), .B(n221), .C(n229), .Z(n225) );
  GTECH_NOT U265 ( .A(n242), .Z(n248) );
  GTECH_AND2 U266 ( .A(n250), .B(n244), .Z(N248) );
  GTECH_OA21 U267 ( .A(n251), .B(temp[22]), .C(n242), .Z(n250) );
  GTECH_NOR3 U268 ( .A(n221), .B(temp[21]), .C(n191), .Z(n251) );
  GTECH_OAI22 U269 ( .A(n212), .B(n180), .C(n221), .D(n240), .Z(N235) );
  GTECH_NAND4 U270 ( .A(n228), .B(n186), .C(data_valid), .D(n242), .Z(n240) );
  GTECH_NOR3 U271 ( .A(n223), .B(temp[18]), .C(n247), .Z(N222) );
  GTECH_OAI21 U272 ( .A(n180), .B(n235), .C(n252), .Z(N209) );
  GTECH_OR3 U273 ( .A(n223), .B(temp[17]), .C(n247), .Z(n252) );
  GTECH_NAND2 U274 ( .A(n242), .B(n233), .Z(n247) );
  GTECH_NAND3 U275 ( .A(n217), .B(n238), .C(n190), .Z(n242) );
  GTECH_NOT U276 ( .A(n253), .Z(n190) );
  GTECH_NAND2 U277 ( .A(n254), .B(n235), .Z(n253) );
  GTECH_NOT U278 ( .A(n187), .Z(n254) );
  GTECH_NAND2 U279 ( .A(n255), .B(n186), .Z(n187) );
  GTECH_OA21 U280 ( .A(temp[20]), .B(n233), .C(n212), .Z(n255) );
  GTECH_NAND3 U281 ( .A(n207), .B(n208), .C(temp[16]), .Z(n238) );
  GTECH_NOT U282 ( .A(n221), .Z(n207) );
  GTECH_NAND2 U283 ( .A(n215), .B(n213), .Z(n221) );
  GTECH_NOT U284 ( .A(temp[17]), .Z(n215) );
  GTECH_NAND2 U285 ( .A(n239), .B(n208), .Z(n217) );
  GTECH_NOT U286 ( .A(n256), .Z(n239) );
  GTECH_NAND2 U287 ( .A(temp[17]), .B(n213), .Z(n256) );
  GTECH_NOT U288 ( .A(temp[18]), .Z(n213) );
  GTECH_NAND2 U289 ( .A(n245), .B(n231), .Z(n223) );
  GTECH_NOT U290 ( .A(n183), .Z(n245) );
  GTECH_NAND2 U291 ( .A(n196), .B(n229), .Z(n183) );
  GTECH_NOT U292 ( .A(n182), .Z(n196) );
  GTECH_NAND2 U293 ( .A(n244), .B(n192), .Z(n182) );
  GTECH_NOT U294 ( .A(n181), .Z(n244) );
  GTECH_NAND2 U295 ( .A(data_valid), .B(n212), .Z(n181) );
  GTECH_NAND2 U296 ( .A(temp[18]), .B(n208), .Z(n235) );
  GTECH_NOT U297 ( .A(n257), .Z(n208) );
  GTECH_NAND3 U298 ( .A(n186), .B(n212), .C(n228), .Z(n257) );
  GTECH_NOT U299 ( .A(n191), .Z(n228) );
  GTECH_NAND2 U300 ( .A(n233), .B(n231), .Z(n191) );
  GTECH_NOT U301 ( .A(temp[20]), .Z(n231) );
  GTECH_NOT U302 ( .A(temp[19]), .Z(n233) );
  GTECH_NOT U303 ( .A(temp[23]), .Z(n212) );
  GTECH_NOT U304 ( .A(n258), .Z(n186) );
  GTECH_NAND2 U305 ( .A(n229), .B(n192), .Z(n258) );
  GTECH_NOT U306 ( .A(temp[22]), .Z(n192) );
  GTECH_NOT U307 ( .A(temp[21]), .Z(n229) );
  GTECH_NOT U308 ( .A(data_valid), .Z(n180) );
endmodule

