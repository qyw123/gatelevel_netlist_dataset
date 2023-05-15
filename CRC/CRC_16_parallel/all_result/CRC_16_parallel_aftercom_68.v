
module CRC_16_parallel ( clk, rst_n, data, data_valid, crc );
  input [7:0] data;
  output [15:0] crc;
  input clk, rst_n, data_valid;
  wire   N11, N15, N19, N23, N34, N37, N39, N41, N43, N45, N47, N48, N49, N50,
         N51, N52, N53, N54, N55, N56, N60, N62, N64, N69, N70, N99, N209,
         N222, N235, N248, N261, N274, N287, N298, N307, N316, N323, N328,
         N331, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261;
  wire   [23:0] temp;

  GTECH_FJK3S temp_reg_15_ ( .J(1'b0), .K(1'b0), .TI(N56), .TE(N287), .CP(clk), 
        .CD(rst_n), .SD(n91), .Q(temp[15]) );
  GTECH_FJK3S temp_reg_14_ ( .J(1'b0), .K(1'b0), .TI(N55), .TE(N209), .CP(clk), 
        .CD(rst_n), .SD(n91), .Q(temp[14]) );
  GTECH_FJK3S temp_reg_13_ ( .J(1'b0), .K(1'b0), .TI(N54), .TE(N222), .CP(clk), 
        .CD(rst_n), .SD(n91), .Q(temp[13]) );
  GTECH_FJK3S temp_reg_12_ ( .J(1'b0), .K(1'b0), .TI(N53), .TE(N235), .CP(clk), 
        .CD(rst_n), .SD(n91), .Q(temp[12]), .QN(N53) );
  GTECH_FJK3S temp_reg_11_ ( .J(1'b0), .K(1'b0), .TI(N52), .TE(N248), .CP(clk), 
        .CD(rst_n), .SD(n91), .Q(temp[11]) );
  GTECH_FJK3S temp_reg_10_ ( .J(1'b0), .K(1'b0), .TI(N51), .TE(N261), .CP(clk), 
        .CD(rst_n), .SD(n91), .Q(temp[10]) );
  GTECH_FJK3S temp_reg_9_ ( .J(1'b0), .K(1'b0), .TI(N50), .TE(N274), .CP(clk), 
        .CD(rst_n), .SD(n91), .Q(temp[9]) );
  GTECH_FJK3S temp_reg_8_ ( .J(1'b0), .K(1'b0), .TI(N49), .TE(N287), .CP(clk), 
        .CD(rst_n), .SD(n91), .Q(temp[8]) );
  GTECH_FJK3S temp_reg_7_ ( .J(1'b0), .K(1'b0), .TI(N48), .TE(N298), .CP(clk), 
        .CD(rst_n), .SD(n91), .Q(temp[7]) );
  GTECH_FJK3S temp_reg_6_ ( .J(1'b0), .K(1'b0), .TI(N47), .TE(N307), .CP(clk), 
        .CD(rst_n), .SD(n91), .Q(temp[6]) );
  GTECH_FJK3S temp_reg_5_ ( .J(1'b0), .K(1'b0), .TI(N45), .TE(N316), .CP(clk), 
        .CD(rst_n), .SD(n91), .Q(temp[5]), .QN(N45) );
  GTECH_FJK3S temp_reg_4_ ( .J(1'b0), .K(1'b0), .TI(N43), .TE(N323), .CP(clk), 
        .CD(rst_n), .SD(n91), .Q(temp[4]) );
  GTECH_FJK3S temp_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N41), .TE(N328), .CP(clk), 
        .CD(rst_n), .SD(n91), .Q(temp[3]) );
  GTECH_FJK3S temp_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N39), .TE(N331), .CP(clk), 
        .CD(rst_n), .SD(n91), .Q(temp[2]) );
  GTECH_FJK3S temp_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N37), .TE(N70), .CP(clk), 
        .CD(rst_n), .SD(n91), .Q(temp[1]) );
  GTECH_FJK3S temp_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N34), .TE(N69), .CP(clk), 
        .CD(rst_n), .SD(n91), .Q(temp[0]), .QN(N34) );
  GTECH_FJK3S crc_reg_15_ ( .J(1'b0), .K(1'b0), .TI(temp[15]), .TE(N99), .CP(
        clk), .CD(rst_n), .SD(n91), .Q(crc[15]) );
  GTECH_FJK3S crc_reg_14_ ( .J(1'b0), .K(1'b0), .TI(temp[14]), .TE(N99), .CP(
        clk), .CD(rst_n), .SD(n91), .Q(crc[14]) );
  GTECH_FJK3S crc_reg_13_ ( .J(1'b0), .K(1'b0), .TI(temp[13]), .TE(N99), .CP(
        clk), .CD(rst_n), .SD(n91), .Q(crc[13]) );
  GTECH_FJK3S crc_reg_12_ ( .J(1'b0), .K(1'b0), .TI(temp[12]), .TE(N99), .CP(
        clk), .CD(rst_n), .SD(n91), .Q(crc[12]) );
  GTECH_FJK3S crc_reg_11_ ( .J(1'b0), .K(1'b0), .TI(temp[11]), .TE(N99), .CP(
        clk), .CD(rst_n), .SD(n91), .Q(crc[11]) );
  GTECH_FJK3S crc_reg_10_ ( .J(1'b0), .K(1'b0), .TI(temp[10]), .TE(N99), .CP(
        clk), .CD(rst_n), .SD(n91), .Q(crc[10]) );
  GTECH_FJK3S crc_reg_9_ ( .J(1'b0), .K(1'b0), .TI(temp[9]), .TE(N99), .CP(clk), .CD(rst_n), .SD(n91), .Q(crc[9]) );
  GTECH_FJK3S crc_reg_8_ ( .J(1'b0), .K(1'b0), .TI(temp[8]), .TE(N99), .CP(clk), .CD(rst_n), .SD(n91), .Q(crc[8]) );
  GTECH_FJK3S crc_reg_7_ ( .J(1'b0), .K(1'b0), .TI(temp[7]), .TE(N99), .CP(clk), .CD(rst_n), .SD(n91), .Q(crc[7]) );
  GTECH_FJK3S crc_reg_6_ ( .J(1'b0), .K(1'b0), .TI(temp[6]), .TE(N99), .CP(clk), .CD(rst_n), .SD(n91), .Q(crc[6]) );
  GTECH_FJK3S crc_reg_5_ ( .J(1'b0), .K(1'b0), .TI(temp[5]), .TE(N99), .CP(clk), .CD(rst_n), .SD(n91), .Q(crc[5]) );
  GTECH_FJK3S crc_reg_4_ ( .J(1'b0), .K(1'b0), .TI(temp[4]), .TE(N99), .CP(clk), .CD(rst_n), .SD(n91), .Q(crc[4]) );
  GTECH_FJK3S crc_reg_3_ ( .J(1'b0), .K(1'b0), .TI(temp[3]), .TE(N99), .CP(clk), .CD(rst_n), .SD(n91), .Q(crc[3]) );
  GTECH_FJK3S crc_reg_2_ ( .J(1'b0), .K(1'b0), .TI(temp[2]), .TE(N99), .CP(clk), .CD(rst_n), .SD(n91), .Q(crc[2]) );
  GTECH_FJK3S crc_reg_1_ ( .J(1'b0), .K(1'b0), .TI(temp[1]), .TE(N99), .CP(clk), .CD(rst_n), .SD(n91), .Q(crc[1]) );
  GTECH_FJK3S crc_reg_0_ ( .J(1'b0), .K(1'b0), .TI(temp[0]), .TE(N99), .CP(clk), .CD(rst_n), .SD(n91), .Q(crc[0]) );
  GTECH_FD3 temp_reg_23_ ( .D(n90), .CP(clk), .CD(n82), .SD(n81), .Q(temp[23]), 
        .QN(N11) );
  GTECH_FD3 temp_reg_22_ ( .D(n89), .CP(clk), .CD(n80), .SD(n79), .Q(temp[22]), 
        .QN(N15) );
  GTECH_FD3 temp_reg_21_ ( .D(n88), .CP(clk), .CD(n78), .SD(n77), .Q(temp[21]), 
        .QN(N19) );
  GTECH_FD3 temp_reg_20_ ( .D(n87), .CP(clk), .CD(n76), .SD(n75), .Q(temp[20]), 
        .QN(N23) );
  GTECH_FD3 temp_reg_19_ ( .D(n86), .CP(clk), .CD(n74), .SD(n73), .Q(temp[19]), 
        .QN(N64) );
  GTECH_FD3 temp_reg_18_ ( .D(n85), .CP(clk), .CD(n72), .SD(n71), .Q(temp[18]), 
        .QN(N62) );
  GTECH_FD3 temp_reg_17_ ( .D(n84), .CP(clk), .CD(n70), .SD(n69), .Q(temp[17]), 
        .QN(N60) );
  GTECH_FD3 temp_reg_16_ ( .D(n83), .CP(clk), .CD(n68), .SD(n67), .Q(temp[16])
         );
  GTECH_ONE U179 ( .Z(n91) );
  GTECH_AND2 U180 ( .A(temp[23]), .B(n184), .Z(n90) );
  GTECH_AND2 U181 ( .A(temp[22]), .B(n185), .Z(n89) );
  GTECH_AND2 U182 ( .A(temp[21]), .B(n186), .Z(n88) );
  GTECH_AND2 U183 ( .A(temp[20]), .B(n187), .Z(n87) );
  GTECH_XOR2 U184 ( .A(temp[19]), .B(n188), .Z(n86) );
  GTECH_AND2 U185 ( .A(n189), .B(data_valid), .Z(n188) );
  GTECH_OA21 U186 ( .A(temp[23]), .B(n190), .C(n191), .Z(n189) );
  GTECH_XOR2 U187 ( .A(temp[18]), .B(n192), .Z(n85) );
  GTECH_AND3 U188 ( .A(n193), .B(n194), .C(n195), .Z(n192) );
  GTECH_OAI21 U189 ( .A(temp[21]), .B(n196), .C(n197), .Z(n194) );
  GTECH_MUX2 U190 ( .A(n198), .B(n199), .S(temp[17]), .Z(n84) );
  GTECH_OAI21 U191 ( .A(temp[21]), .B(n200), .C(n201), .Z(n199) );
  GTECH_NOT U192 ( .A(n202), .Z(n200) );
  GTECH_AND2 U193 ( .A(n201), .B(temp[21]), .Z(n198) );
  GTECH_XOR2 U194 ( .A(temp[16]), .B(N274), .Z(n83) );
  GTECH_NAND2 U195 ( .A(n203), .B(n204), .Z(n82) );
  GTECH_NOT U196 ( .A(data[7]), .Z(n204) );
  GTECH_NAND2 U197 ( .A(data[7]), .B(n203), .Z(n81) );
  GTECH_NAND2 U198 ( .A(n203), .B(n205), .Z(n80) );
  GTECH_NOT U199 ( .A(data[6]), .Z(n205) );
  GTECH_NAND2 U200 ( .A(data[6]), .B(n203), .Z(n79) );
  GTECH_NAND2 U201 ( .A(n203), .B(n206), .Z(n78) );
  GTECH_NOT U202 ( .A(data[5]), .Z(n206) );
  GTECH_NAND2 U203 ( .A(data[5]), .B(n203), .Z(n77) );
  GTECH_NAND2 U204 ( .A(n203), .B(n207), .Z(n76) );
  GTECH_NOT U205 ( .A(data[4]), .Z(n207) );
  GTECH_NAND2 U206 ( .A(data[4]), .B(n203), .Z(n75) );
  GTECH_NAND2 U207 ( .A(n203), .B(n208), .Z(n74) );
  GTECH_NOT U208 ( .A(data[3]), .Z(n208) );
  GTECH_NAND2 U209 ( .A(data[3]), .B(n203), .Z(n73) );
  GTECH_NAND2 U210 ( .A(n203), .B(n209), .Z(n72) );
  GTECH_NOT U211 ( .A(data[2]), .Z(n209) );
  GTECH_NAND2 U212 ( .A(data[2]), .B(n203), .Z(n71) );
  GTECH_NAND2 U213 ( .A(n203), .B(n210), .Z(n70) );
  GTECH_NOT U214 ( .A(data[1]), .Z(n210) );
  GTECH_NAND2 U215 ( .A(data[1]), .B(n203), .Z(n69) );
  GTECH_NAND2 U216 ( .A(n203), .B(n211), .Z(n68) );
  GTECH_NOT U217 ( .A(data[0]), .Z(n211) );
  GTECH_NAND2 U218 ( .A(data[0]), .B(n203), .Z(n67) );
  GTECH_NOT U219 ( .A(rst_n), .Z(n203) );
  GTECH_AND4 U220 ( .A(n212), .B(n213), .C(data_valid), .D(n214), .Z(N99) );
  GTECH_NOT U221 ( .A(temp[16]), .Z(n214) );
  GTECH_NOT U222 ( .A(n215), .Z(N69) );
  GTECH_XOR2 U223 ( .A(temp[19]), .B(temp[15]), .Z(N56) );
  GTECH_XOR2 U224 ( .A(temp[18]), .B(temp[14]), .Z(N55) );
  GTECH_XOR2 U225 ( .A(temp[17]), .B(temp[13]), .Z(N54) );
  GTECH_XOR2 U226 ( .A(temp[22]), .B(temp[11]), .Z(N52) );
  GTECH_XOR2 U227 ( .A(temp[21]), .B(temp[10]), .Z(N51) );
  GTECH_XOR2 U228 ( .A(temp[9]), .B(temp[20]), .Z(N50) );
  GTECH_XOR2 U229 ( .A(temp[8]), .B(temp[19]), .Z(N49) );
  GTECH_XOR2 U230 ( .A(n216), .B(temp[7]), .Z(N48) );
  GTECH_NAND2 U231 ( .A(n217), .B(n218), .Z(n216) );
  GTECH_XOR2 U232 ( .A(n219), .B(temp[6]), .Z(N47) );
  GTECH_NAND2 U233 ( .A(n197), .B(n220), .Z(n219) );
  GTECH_XOR2 U234 ( .A(temp[4]), .B(temp[20]), .Z(N43) );
  GTECH_XOR2 U235 ( .A(temp[3]), .B(temp[19]), .Z(N41) );
  GTECH_XOR2 U236 ( .A(temp[2]), .B(temp[18]), .Z(N39) );
  GTECH_XOR2 U237 ( .A(temp[1]), .B(temp[17]), .Z(N37) );
  GTECH_AND2 U238 ( .A(n221), .B(n222), .Z(N331) );
  GTECH_OA21 U239 ( .A(n212), .B(temp[19]), .C(n223), .Z(N328) );
  GTECH_AND2 U240 ( .A(n224), .B(n225), .Z(N323) );
  GTECH_OAI21 U241 ( .A(temp[19]), .B(n226), .C(n227), .Z(n225) );
  GTECH_OAI21 U242 ( .A(n228), .B(n187), .C(n229), .Z(n224) );
  GTECH_AND2 U243 ( .A(n230), .B(n231), .Z(N316) );
  GTECH_OA21 U244 ( .A(n232), .B(n231), .C(n233), .Z(N307) );
  GTECH_OAI21 U245 ( .A(temp[21]), .B(n202), .C(n201), .Z(n233) );
  GTECH_NAND2 U246 ( .A(n234), .B(n218), .Z(n202) );
  GTECH_OAI21 U247 ( .A(n235), .B(n186), .C(n229), .Z(n231) );
  GTECH_NOT U248 ( .A(n223), .Z(n229) );
  GTECH_OAI21 U249 ( .A(n236), .B(n237), .C(n238), .Z(n223) );
  GTECH_NOT U250 ( .A(n221), .Z(n238) );
  GTECH_OAI21 U251 ( .A(n184), .B(n239), .C(n240), .Z(n221) );
  GTECH_NOT U252 ( .A(N70), .Z(n240) );
  GTECH_OAI21 U253 ( .A(n184), .B(n222), .C(n215), .Z(N70) );
  GTECH_NAND2 U254 ( .A(n241), .B(data_valid), .Z(n215) );
  GTECH_NOT U255 ( .A(n242), .Z(n241) );
  GTECH_AND_NOT U256 ( .A(temp[22]), .B(n185), .Z(n232) );
  GTECH_OAI22 U257 ( .A(n217), .B(n184), .C(n243), .D(n244), .Z(N298) );
  GTECH_NAND2 U258 ( .A(n245), .B(n246), .Z(N287) );
  GTECH_NAND3 U259 ( .A(n190), .B(temp[19]), .C(n247), .Z(n246) );
  GTECH_NAND3 U260 ( .A(n212), .B(n248), .C(n227), .Z(n245) );
  GTECH_AND2 U261 ( .A(n249), .B(n250), .Z(N274) );
  GTECH_OAI21 U262 ( .A(n226), .B(n251), .C(n228), .Z(n250) );
  GTECH_AND3 U263 ( .A(n230), .B(n197), .C(n247), .Z(N261) );
  GTECH_OAI21 U264 ( .A(n196), .B(n226), .C(n235), .Z(n230) );
  GTECH_OA21 U265 ( .A(n252), .B(temp[22]), .C(n247), .Z(N248) );
  GTECH_NOT U266 ( .A(n253), .Z(n247) );
  GTECH_NAND2 U267 ( .A(n195), .B(n248), .Z(n253) );
  GTECH_AND3 U268 ( .A(n234), .B(n235), .C(n212), .Z(n252) );
  GTECH_OAI22 U269 ( .A(n217), .B(n184), .C(n226), .D(n244), .Z(N235) );
  GTECH_NAND4 U270 ( .A(n234), .B(n190), .C(data_valid), .D(n248), .Z(n244) );
  GTECH_AND3 U271 ( .A(n254), .B(n218), .C(n227), .Z(N222) );
  GTECH_OAI21 U272 ( .A(n184), .B(n239), .C(n255), .Z(N209) );
  GTECH_NAND3 U273 ( .A(n254), .B(n220), .C(n227), .Z(n255) );
  GTECH_NOT U274 ( .A(n237), .Z(n227) );
  GTECH_NAND2 U275 ( .A(n249), .B(n228), .Z(n237) );
  GTECH_NOT U276 ( .A(n187), .Z(n249) );
  GTECH_NAND2 U277 ( .A(n201), .B(n235), .Z(n187) );
  GTECH_NOT U278 ( .A(n186), .Z(n201) );
  GTECH_NAND2 U279 ( .A(n195), .B(n197), .Z(n186) );
  GTECH_NOT U280 ( .A(n185), .Z(n195) );
  GTECH_NAND2 U281 ( .A(data_valid), .B(n217), .Z(n185) );
  GTECH_NOT U282 ( .A(n251), .Z(n254) );
  GTECH_NAND2 U283 ( .A(n248), .B(n236), .Z(n251) );
  GTECH_NAND3 U284 ( .A(n242), .B(n222), .C(n256), .Z(n248) );
  GTECH_NOT U285 ( .A(n193), .Z(n256) );
  GTECH_NAND2 U286 ( .A(n257), .B(n239), .Z(n193) );
  GTECH_NOT U287 ( .A(n191), .Z(n257) );
  GTECH_NAND2 U288 ( .A(n258), .B(n190), .Z(n191) );
  GTECH_OA21 U289 ( .A(temp[20]), .B(n236), .C(n217), .Z(n258) );
  GTECH_NAND2 U290 ( .A(n243), .B(n213), .Z(n222) );
  GTECH_NOT U291 ( .A(n259), .Z(n243) );
  GTECH_NAND2 U292 ( .A(temp[17]), .B(n218), .Z(n259) );
  GTECH_NAND3 U293 ( .A(n212), .B(n213), .C(temp[16]), .Z(n242) );
  GTECH_NOT U294 ( .A(n226), .Z(n212) );
  GTECH_NAND2 U295 ( .A(n220), .B(n218), .Z(n226) );
  GTECH_NOT U296 ( .A(temp[18]), .Z(n218) );
  GTECH_NOT U297 ( .A(temp[17]), .Z(n220) );
  GTECH_NAND2 U298 ( .A(temp[18]), .B(n213), .Z(n239) );
  GTECH_NOT U299 ( .A(n260), .Z(n213) );
  GTECH_NAND3 U300 ( .A(n190), .B(n217), .C(n234), .Z(n260) );
  GTECH_NOT U301 ( .A(n196), .Z(n234) );
  GTECH_NAND2 U302 ( .A(n236), .B(n228), .Z(n196) );
  GTECH_NOT U303 ( .A(temp[20]), .Z(n228) );
  GTECH_NOT U304 ( .A(temp[19]), .Z(n236) );
  GTECH_NOT U305 ( .A(temp[23]), .Z(n217) );
  GTECH_NOT U306 ( .A(n261), .Z(n190) );
  GTECH_NAND2 U307 ( .A(n235), .B(n197), .Z(n261) );
  GTECH_NOT U308 ( .A(temp[22]), .Z(n197) );
  GTECH_NOT U309 ( .A(temp[21]), .Z(n235) );
  GTECH_NOT U310 ( .A(data_valid), .Z(n184) );
endmodule

