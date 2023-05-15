
module CRC_16_parallel ( clk, rst_n, data, data_valid, crc );
  input [7:0] data;
  output [15:0] crc;
  input clk, rst_n, data_valid;
  wire   N11, N15, N19, N23, N34, N37, N39, N41, N43, N45, N47, N48, N49, N50,
         N51, N52, N53, N54, N55, N56, N58, N60, N62, N64, N69, N70, N99, N209,
         N222, N235, N248, N261, N274, N287, N298, N307, N316, N323, N328,
         N331, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n225, n226, n227, n228, n229, n230, n231,
         n232, n233, n234, n235, n236, n237, n238, n239, n240, n241, n242,
         n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, n253,
         n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, n264,
         n265, n266;
  wire   [23:0] temp;

  GTECH_FJK3S temp_reg_15_ ( .J(n95), .K(n95), .TI(N56), .TE(N287), .CP(clk), 
        .CD(rst_n), .SD(n94), .Q(temp[15]) );
  GTECH_FJK3S temp_reg_14_ ( .J(n95), .K(n95), .TI(N55), .TE(N209), .CP(clk), 
        .CD(rst_n), .SD(n94), .Q(temp[14]) );
  GTECH_FJK3S temp_reg_13_ ( .J(n95), .K(n95), .TI(N54), .TE(N222), .CP(clk), 
        .CD(rst_n), .SD(n94), .Q(temp[13]) );
  GTECH_FJK3S temp_reg_12_ ( .J(n95), .K(n95), .TI(N53), .TE(N235), .CP(clk), 
        .CD(rst_n), .SD(n94), .Q(temp[12]), .QN(N53) );
  GTECH_FJK3S temp_reg_11_ ( .J(n95), .K(n95), .TI(N52), .TE(N248), .CP(clk), 
        .CD(rst_n), .SD(n94), .Q(temp[11]) );
  GTECH_FJK3S temp_reg_10_ ( .J(n95), .K(n95), .TI(N51), .TE(N261), .CP(clk), 
        .CD(rst_n), .SD(n94), .Q(temp[10]) );
  GTECH_FJK3S temp_reg_9_ ( .J(n95), .K(n95), .TI(N50), .TE(N274), .CP(clk), 
        .CD(rst_n), .SD(n94), .Q(temp[9]) );
  GTECH_FJK3S temp_reg_8_ ( .J(n95), .K(n95), .TI(N49), .TE(N287), .CP(clk), 
        .CD(rst_n), .SD(n94), .Q(temp[8]) );
  GTECH_FJK3S temp_reg_7_ ( .J(n95), .K(n95), .TI(N48), .TE(N298), .CP(clk), 
        .CD(rst_n), .SD(n94), .Q(temp[7]) );
  GTECH_FJK3S temp_reg_6_ ( .J(n95), .K(n95), .TI(N47), .TE(N307), .CP(clk), 
        .CD(rst_n), .SD(n94), .Q(temp[6]) );
  GTECH_FJK3S temp_reg_5_ ( .J(n95), .K(n95), .TI(N45), .TE(N316), .CP(clk), 
        .CD(rst_n), .SD(n94), .Q(temp[5]), .QN(N45) );
  GTECH_FJK3S temp_reg_4_ ( .J(n95), .K(n95), .TI(N43), .TE(N323), .CP(clk), 
        .CD(rst_n), .SD(n94), .Q(temp[4]) );
  GTECH_FJK3S temp_reg_3_ ( .J(n95), .K(n95), .TI(N41), .TE(N328), .CP(clk), 
        .CD(rst_n), .SD(n94), .Q(temp[3]) );
  GTECH_FJK3S temp_reg_2_ ( .J(n95), .K(n95), .TI(N39), .TE(N331), .CP(clk), 
        .CD(rst_n), .SD(n94), .Q(temp[2]) );
  GTECH_FJK3S temp_reg_1_ ( .J(n95), .K(n95), .TI(N37), .TE(N70), .CP(clk), 
        .CD(rst_n), .SD(n94), .Q(temp[1]) );
  GTECH_FJK3S temp_reg_0_ ( .J(n95), .K(n95), .TI(N34), .TE(N69), .CP(clk), 
        .CD(rst_n), .SD(n94), .Q(temp[0]), .QN(N34) );
  GTECH_FJK3S crc_reg_15_ ( .J(n95), .K(n95), .TI(temp[15]), .TE(N99), .CP(clk), .CD(rst_n), .SD(n94), .Q(crc[15]) );
  GTECH_FJK3S crc_reg_14_ ( .J(n95), .K(n95), .TI(temp[14]), .TE(N99), .CP(clk), .CD(rst_n), .SD(n94), .Q(crc[14]) );
  GTECH_FJK3S crc_reg_13_ ( .J(n95), .K(n95), .TI(temp[13]), .TE(N99), .CP(clk), .CD(rst_n), .SD(n94), .Q(crc[13]) );
  GTECH_FJK3S crc_reg_12_ ( .J(n95), .K(n95), .TI(temp[12]), .TE(N99), .CP(clk), .CD(rst_n), .SD(n94), .Q(crc[12]) );
  GTECH_FJK3S crc_reg_11_ ( .J(n95), .K(n95), .TI(temp[11]), .TE(N99), .CP(clk), .CD(rst_n), .SD(n94), .Q(crc[11]) );
  GTECH_FJK3S crc_reg_10_ ( .J(n95), .K(n95), .TI(temp[10]), .TE(N99), .CP(clk), .CD(rst_n), .SD(n94), .Q(crc[10]) );
  GTECH_FJK3S crc_reg_9_ ( .J(n95), .K(n95), .TI(temp[9]), .TE(N99), .CP(clk), 
        .CD(rst_n), .SD(n94), .Q(crc[9]) );
  GTECH_FJK3S crc_reg_8_ ( .J(n95), .K(n95), .TI(temp[8]), .TE(N99), .CP(clk), 
        .CD(rst_n), .SD(n94), .Q(crc[8]) );
  GTECH_FJK3S crc_reg_7_ ( .J(n95), .K(n95), .TI(temp[7]), .TE(N99), .CP(clk), 
        .CD(rst_n), .SD(n94), .Q(crc[7]) );
  GTECH_FJK3S crc_reg_6_ ( .J(n95), .K(n95), .TI(temp[6]), .TE(N99), .CP(clk), 
        .CD(rst_n), .SD(n94), .Q(crc[6]) );
  GTECH_FJK3S crc_reg_5_ ( .J(n95), .K(n95), .TI(temp[5]), .TE(N99), .CP(clk), 
        .CD(rst_n), .SD(n94), .Q(crc[5]) );
  GTECH_FJK3S crc_reg_4_ ( .J(n95), .K(n95), .TI(temp[4]), .TE(N99), .CP(clk), 
        .CD(rst_n), .SD(n94), .Q(crc[4]) );
  GTECH_FJK3S crc_reg_3_ ( .J(n95), .K(n95), .TI(temp[3]), .TE(N99), .CP(clk), 
        .CD(rst_n), .SD(n94), .Q(crc[3]) );
  GTECH_FJK3S crc_reg_2_ ( .J(n95), .K(n95), .TI(temp[2]), .TE(N99), .CP(clk), 
        .CD(rst_n), .SD(n94), .Q(crc[2]) );
  GTECH_FJK3S crc_reg_1_ ( .J(n95), .K(n95), .TI(temp[1]), .TE(N99), .CP(clk), 
        .CD(rst_n), .SD(n94), .Q(crc[1]) );
  GTECH_FJK3S crc_reg_0_ ( .J(n95), .K(n95), .TI(temp[0]), .TE(N99), .CP(clk), 
        .CD(rst_n), .SD(n94), .Q(crc[0]) );
  GTECH_FD3 temp_reg_23_ ( .D(n93), .CP(clk), .CD(n85), .SD(n84), .Q(temp[23]), 
        .QN(N11) );
  GTECH_FD3 temp_reg_22_ ( .D(n92), .CP(clk), .CD(n83), .SD(n82), .Q(temp[22]), 
        .QN(N15) );
  GTECH_FD3 temp_reg_21_ ( .D(n91), .CP(clk), .CD(n81), .SD(n80), .Q(temp[21]), 
        .QN(N19) );
  GTECH_FD3 temp_reg_20_ ( .D(n90), .CP(clk), .CD(n79), .SD(n78), .Q(temp[20]), 
        .QN(N23) );
  GTECH_FD3 temp_reg_19_ ( .D(n89), .CP(clk), .CD(n77), .SD(n76), .Q(temp[19]), 
        .QN(N64) );
  GTECH_FD3 temp_reg_18_ ( .D(n88), .CP(clk), .CD(n75), .SD(n74), .Q(temp[18]), 
        .QN(N62) );
  GTECH_FD3 temp_reg_17_ ( .D(n87), .CP(clk), .CD(n73), .SD(n72), .Q(temp[17]), 
        .QN(N60) );
  GTECH_FD3 temp_reg_16_ ( .D(n86), .CP(clk), .CD(n71), .SD(n70), .Q(temp[16]), 
        .QN(N58) );
  GTECH_ZERO U182 ( .Z(n95) );
  GTECH_ONE U183 ( .Z(n94) );
  GTECH_AND2 U184 ( .A(temp[23]), .B(n187), .Z(n93) );
  GTECH_AND2 U185 ( .A(temp[22]), .B(n188), .Z(n92) );
  GTECH_AND2 U186 ( .A(temp[21]), .B(n189), .Z(n91) );
  GTECH_AND2 U187 ( .A(temp[20]), .B(n190), .Z(n90) );
  GTECH_XOR2 U188 ( .A(temp[19]), .B(n191), .Z(n89) );
  GTECH_AND2 U189 ( .A(n192), .B(data_valid), .Z(n191) );
  GTECH_OA21 U190 ( .A(n193), .B(temp[23]), .C(n194), .Z(n192) );
  GTECH_XOR2 U191 ( .A(temp[18]), .B(n195), .Z(n88) );
  GTECH_AND3 U192 ( .A(n196), .B(n197), .C(n198), .Z(n195) );
  GTECH_OAI21 U193 ( .A(temp[21]), .B(n199), .C(n200), .Z(n197) );
  GTECH_MUX2 U194 ( .A(n201), .B(n202), .S(temp[17]), .Z(n87) );
  GTECH_OAI21 U195 ( .A(temp[21]), .B(n203), .C(n204), .Z(n202) );
  GTECH_NOT U196 ( .A(n205), .Z(n203) );
  GTECH_AND2 U197 ( .A(n204), .B(temp[21]), .Z(n201) );
  GTECH_XOR2 U198 ( .A(temp[16]), .B(N274), .Z(n86) );
  GTECH_NAND2 U199 ( .A(n206), .B(n207), .Z(n85) );
  GTECH_NOT U200 ( .A(data[7]), .Z(n207) );
  GTECH_NAND2 U201 ( .A(data[7]), .B(n206), .Z(n84) );
  GTECH_NAND2 U202 ( .A(n206), .B(n208), .Z(n83) );
  GTECH_NOT U203 ( .A(data[6]), .Z(n208) );
  GTECH_NAND2 U204 ( .A(data[6]), .B(n206), .Z(n82) );
  GTECH_NAND2 U205 ( .A(n206), .B(n209), .Z(n81) );
  GTECH_NOT U206 ( .A(data[5]), .Z(n209) );
  GTECH_NAND2 U207 ( .A(data[5]), .B(n206), .Z(n80) );
  GTECH_NAND2 U208 ( .A(n206), .B(n210), .Z(n79) );
  GTECH_NOT U209 ( .A(data[4]), .Z(n210) );
  GTECH_NAND2 U210 ( .A(data[4]), .B(n206), .Z(n78) );
  GTECH_NAND2 U211 ( .A(n206), .B(n211), .Z(n77) );
  GTECH_NOT U212 ( .A(data[3]), .Z(n211) );
  GTECH_NAND2 U213 ( .A(data[3]), .B(n206), .Z(n76) );
  GTECH_NAND2 U214 ( .A(n206), .B(n212), .Z(n75) );
  GTECH_NOT U215 ( .A(data[2]), .Z(n212) );
  GTECH_NAND2 U216 ( .A(data[2]), .B(n206), .Z(n74) );
  GTECH_NAND2 U217 ( .A(n206), .B(n213), .Z(n73) );
  GTECH_NOT U218 ( .A(data[1]), .Z(n213) );
  GTECH_NAND2 U219 ( .A(data[1]), .B(n206), .Z(n72) );
  GTECH_NAND2 U220 ( .A(n206), .B(n214), .Z(n71) );
  GTECH_NOT U221 ( .A(data[0]), .Z(n214) );
  GTECH_NAND2 U222 ( .A(data[0]), .B(n206), .Z(n70) );
  GTECH_NOT U223 ( .A(rst_n), .Z(n206) );
  GTECH_AND4 U224 ( .A(n215), .B(n216), .C(data_valid), .D(n217), .Z(N99) );
  GTECH_NOT U225 ( .A(temp[16]), .Z(n217) );
  GTECH_NOT U226 ( .A(n218), .Z(N69) );
  GTECH_XOR2 U227 ( .A(temp[19]), .B(temp[15]), .Z(N56) );
  GTECH_XOR2 U228 ( .A(temp[18]), .B(temp[14]), .Z(N55) );
  GTECH_XOR2 U229 ( .A(temp[17]), .B(temp[13]), .Z(N54) );
  GTECH_XOR2 U230 ( .A(temp[22]), .B(temp[11]), .Z(N52) );
  GTECH_XOR2 U231 ( .A(temp[21]), .B(temp[10]), .Z(N51) );
  GTECH_XOR2 U232 ( .A(temp[9]), .B(temp[20]), .Z(N50) );
  GTECH_XOR2 U233 ( .A(temp[8]), .B(temp[19]), .Z(N49) );
  GTECH_XOR2 U234 ( .A(n219), .B(temp[7]), .Z(N48) );
  GTECH_NAND2 U235 ( .A(n220), .B(n221), .Z(n219) );
  GTECH_XOR2 U236 ( .A(n222), .B(temp[6]), .Z(N47) );
  GTECH_NAND2 U237 ( .A(n200), .B(n223), .Z(n222) );
  GTECH_XOR2 U238 ( .A(temp[4]), .B(temp[20]), .Z(N43) );
  GTECH_XOR2 U239 ( .A(temp[3]), .B(temp[19]), .Z(N41) );
  GTECH_XOR2 U240 ( .A(temp[2]), .B(temp[18]), .Z(N39) );
  GTECH_XOR2 U241 ( .A(temp[1]), .B(temp[17]), .Z(N37) );
  GTECH_AND2 U242 ( .A(n224), .B(n225), .Z(N331) );
  GTECH_OA21 U243 ( .A(n215), .B(temp[19]), .C(n226), .Z(N328) );
  GTECH_AND2 U244 ( .A(n227), .B(n228), .Z(N323) );
  GTECH_OAI21 U245 ( .A(temp[19]), .B(n229), .C(n230), .Z(n227) );
  GTECH_AND2 U246 ( .A(n231), .B(n232), .Z(N316) );
  GTECH_OA21 U247 ( .A(n233), .B(n232), .C(n234), .Z(N307) );
  GTECH_OAI21 U248 ( .A(temp[21]), .B(n205), .C(n204), .Z(n234) );
  GTECH_NAND2 U249 ( .A(n235), .B(n221), .Z(n205) );
  GTECH_OAI21 U250 ( .A(n236), .B(n189), .C(n237), .Z(n232) );
  GTECH_NOT U251 ( .A(n228), .Z(n237) );
  GTECH_OAI21 U252 ( .A(n238), .B(n190), .C(n239), .Z(n228) );
  GTECH_NOT U253 ( .A(n226), .Z(n239) );
  GTECH_OAI21 U254 ( .A(n240), .B(n241), .C(n242), .Z(n226) );
  GTECH_NOT U255 ( .A(n224), .Z(n242) );
  GTECH_OAI21 U256 ( .A(n187), .B(n243), .C(n244), .Z(n224) );
  GTECH_NOT U257 ( .A(N70), .Z(n244) );
  GTECH_OAI21 U258 ( .A(n187), .B(n225), .C(n218), .Z(N70) );
  GTECH_NAND2 U259 ( .A(n245), .B(data_valid), .Z(n218) );
  GTECH_NOT U260 ( .A(n246), .Z(n245) );
  GTECH_AND_NOT U261 ( .A(temp[22]), .B(n188), .Z(n233) );
  GTECH_OAI22 U262 ( .A(n220), .B(n187), .C(n247), .D(n248), .Z(N298) );
  GTECH_NAND2 U263 ( .A(n249), .B(n250), .Z(N287) );
  GTECH_NAND3 U264 ( .A(n193), .B(temp[19]), .C(n251), .Z(n250) );
  GTECH_NAND3 U265 ( .A(n215), .B(n252), .C(n230), .Z(n249) );
  GTECH_AND2 U266 ( .A(n253), .B(n254), .Z(N274) );
  GTECH_OAI21 U267 ( .A(n229), .B(n255), .C(n238), .Z(n254) );
  GTECH_AND3 U268 ( .A(n231), .B(n200), .C(n251), .Z(N261) );
  GTECH_OAI21 U269 ( .A(n199), .B(n229), .C(n236), .Z(n231) );
  GTECH_OA21 U270 ( .A(n256), .B(temp[22]), .C(n251), .Z(N248) );
  GTECH_NOT U271 ( .A(n257), .Z(n251) );
  GTECH_NAND2 U272 ( .A(n198), .B(n252), .Z(n257) );
  GTECH_AND3 U273 ( .A(n235), .B(n236), .C(n215), .Z(n256) );
  GTECH_OAI22 U274 ( .A(n220), .B(n187), .C(n229), .D(n248), .Z(N235) );
  GTECH_OR4 U275 ( .A(n258), .B(n199), .C(n259), .D(n187), .Z(n248) );
  GTECH_NOT U276 ( .A(n252), .Z(n259) );
  GTECH_AND3 U277 ( .A(n260), .B(n221), .C(n230), .Z(N222) );
  GTECH_OAI21 U278 ( .A(n187), .B(n243), .C(n261), .Z(N209) );
  GTECH_NAND3 U279 ( .A(n260), .B(n223), .C(n230), .Z(n261) );
  GTECH_NOT U280 ( .A(n241), .Z(n230) );
  GTECH_NAND2 U281 ( .A(n253), .B(n238), .Z(n241) );
  GTECH_NOT U282 ( .A(n190), .Z(n253) );
  GTECH_NAND2 U283 ( .A(n204), .B(n236), .Z(n190) );
  GTECH_NOT U284 ( .A(n189), .Z(n204) );
  GTECH_NAND2 U285 ( .A(n198), .B(n200), .Z(n189) );
  GTECH_NOT U286 ( .A(n188), .Z(n198) );
  GTECH_NAND2 U287 ( .A(data_valid), .B(n220), .Z(n188) );
  GTECH_NOT U288 ( .A(n255), .Z(n260) );
  GTECH_NAND2 U289 ( .A(n252), .B(n240), .Z(n255) );
  GTECH_NAND3 U290 ( .A(n246), .B(n225), .C(n262), .Z(n252) );
  GTECH_NOT U291 ( .A(n196), .Z(n262) );
  GTECH_NAND2 U292 ( .A(n263), .B(n243), .Z(n196) );
  GTECH_NOT U293 ( .A(n194), .Z(n263) );
  GTECH_NAND2 U294 ( .A(n264), .B(n193), .Z(n194) );
  GTECH_OA21 U295 ( .A(temp[20]), .B(n240), .C(n220), .Z(n264) );
  GTECH_NAND2 U296 ( .A(n247), .B(n216), .Z(n225) );
  GTECH_NOT U297 ( .A(n265), .Z(n247) );
  GTECH_NAND2 U298 ( .A(temp[17]), .B(n221), .Z(n265) );
  GTECH_NAND3 U299 ( .A(n215), .B(n216), .C(temp[16]), .Z(n246) );
  GTECH_NOT U300 ( .A(n229), .Z(n215) );
  GTECH_NAND2 U301 ( .A(n223), .B(n221), .Z(n229) );
  GTECH_NOT U302 ( .A(temp[18]), .Z(n221) );
  GTECH_NOT U303 ( .A(temp[17]), .Z(n223) );
  GTECH_NAND2 U304 ( .A(temp[18]), .B(n216), .Z(n243) );
  GTECH_NOT U305 ( .A(n266), .Z(n216) );
  GTECH_NAND3 U306 ( .A(n193), .B(n220), .C(n235), .Z(n266) );
  GTECH_NOT U307 ( .A(n199), .Z(n235) );
  GTECH_NAND2 U308 ( .A(n240), .B(n238), .Z(n199) );
  GTECH_NOT U309 ( .A(temp[20]), .Z(n238) );
  GTECH_NOT U310 ( .A(temp[19]), .Z(n240) );
  GTECH_NOT U311 ( .A(temp[23]), .Z(n220) );
  GTECH_NOT U312 ( .A(n258), .Z(n193) );
  GTECH_NAND2 U313 ( .A(n236), .B(n200), .Z(n258) );
  GTECH_NOT U314 ( .A(temp[22]), .Z(n200) );
  GTECH_NOT U315 ( .A(temp[21]), .Z(n236) );
  GTECH_NOT U316 ( .A(data_valid), .Z(n187) );
endmodule

