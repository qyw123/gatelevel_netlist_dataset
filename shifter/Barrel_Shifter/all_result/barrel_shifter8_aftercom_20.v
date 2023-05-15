
module barrel_shifter8 ( in, ctrl, out );
  input [7:0] in;
  input [2:0] ctrl;
  output [7:0] out;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n88, n87, n86, n85, n84, n83, n82, n81;
  wire   [80:73] n;

  GTECH_NOT ins_17_I_0 ( .A(ctrl[2]), .Z(n72) );
  GTECH_BUF ins_17_B_1 ( .A(n72), .Z(n71) );
  GTECH_BUF ins_17_B_0 ( .A(ctrl[2]), .Z(n70) );
  SELECT_OP ins_17_C9 ( .DATA1(1'b0), .DATA2(in[7]), .CONTROL1(n70), 
        .CONTROL2(n71), .Z(n88) );
  GTECH_NOT ins_16_I_0 ( .A(ctrl[2]), .Z(n69) );
  GTECH_BUF ins_16_B_1 ( .A(n69), .Z(n68) );
  GTECH_BUF ins_16_B_0 ( .A(ctrl[2]), .Z(n67) );
  SELECT_OP ins_16_C9 ( .DATA1(1'b0), .DATA2(in[6]), .CONTROL1(n67), 
        .CONTROL2(n68), .Z(n87) );
  GTECH_NOT ins_15_I_0 ( .A(ctrl[2]), .Z(n66) );
  GTECH_BUF ins_15_B_1 ( .A(n66), .Z(n65) );
  GTECH_BUF ins_15_B_0 ( .A(ctrl[2]), .Z(n64) );
  SELECT_OP ins_15_C9 ( .DATA1(1'b0), .DATA2(in[5]), .CONTROL1(n64), 
        .CONTROL2(n65), .Z(n86) );
  GTECH_NOT ins_14_I_0 ( .A(ctrl[2]), .Z(n63) );
  GTECH_BUF ins_14_B_1 ( .A(n63), .Z(n62) );
  GTECH_BUF ins_14_B_0 ( .A(ctrl[2]), .Z(n61) );
  SELECT_OP ins_14_C9 ( .DATA1(1'b0), .DATA2(in[4]), .CONTROL1(n61), 
        .CONTROL2(n62), .Z(n85) );
  GTECH_NOT ins_13_I_0 ( .A(ctrl[2]), .Z(n60) );
  GTECH_BUF ins_13_B_1 ( .A(n60), .Z(n59) );
  GTECH_BUF ins_13_B_0 ( .A(ctrl[2]), .Z(n58) );
  SELECT_OP ins_13_C9 ( .DATA1(in[7]), .DATA2(in[3]), .CONTROL1(n58), 
        .CONTROL2(n59), .Z(n84) );
  GTECH_NOT ins_12_I_0 ( .A(ctrl[2]), .Z(n57) );
  GTECH_BUF ins_12_B_1 ( .A(n57), .Z(n56) );
  GTECH_BUF ins_12_B_0 ( .A(ctrl[2]), .Z(n55) );
  SELECT_OP ins_12_C9 ( .DATA1(in[6]), .DATA2(in[2]), .CONTROL1(n55), 
        .CONTROL2(n56), .Z(n83) );
  GTECH_NOT ins_11_I_0 ( .A(ctrl[2]), .Z(n54) );
  GTECH_BUF ins_11_B_1 ( .A(n54), .Z(n53) );
  GTECH_BUF ins_11_B_0 ( .A(ctrl[2]), .Z(n52) );
  SELECT_OP ins_11_C9 ( .DATA1(in[5]), .DATA2(in[1]), .CONTROL1(n52), 
        .CONTROL2(n53), .Z(n82) );
  GTECH_NOT ins_10_I_0 ( .A(ctrl[2]), .Z(n51) );
  GTECH_BUF ins_10_B_1 ( .A(n51), .Z(n50) );
  GTECH_BUF ins_10_B_0 ( .A(ctrl[2]), .Z(n49) );
  SELECT_OP ins_10_C9 ( .DATA1(in[4]), .DATA2(in[0]), .CONTROL1(n49), 
        .CONTROL2(n50), .Z(n81) );
  GTECH_NOT ins_27_I_0 ( .A(ctrl[1]), .Z(n48) );
  GTECH_BUF ins_27_B_1 ( .A(n48), .Z(n47) );
  GTECH_BUF ins_27_B_0 ( .A(ctrl[1]), .Z(n46) );
  SELECT_OP ins_27_C9 ( .DATA1(1'b0), .DATA2(n88), .CONTROL1(n46), .CONTROL2(
        n47), .Z(n[80]) );
  GTECH_NOT ins_26_I_0 ( .A(ctrl[1]), .Z(n45) );
  GTECH_BUF ins_26_B_1 ( .A(n45), .Z(n44) );
  GTECH_BUF ins_26_B_0 ( .A(ctrl[1]), .Z(n43) );
  SELECT_OP ins_26_C9 ( .DATA1(1'b0), .DATA2(n87), .CONTROL1(n43), .CONTROL2(
        n44), .Z(n[79]) );
  GTECH_NOT ins_25_I_0 ( .A(ctrl[1]), .Z(n42) );
  GTECH_BUF ins_25_B_1 ( .A(n42), .Z(n41) );
  GTECH_BUF ins_25_B_0 ( .A(ctrl[1]), .Z(n40) );
  SELECT_OP ins_25_C9 ( .DATA1(n88), .DATA2(n86), .CONTROL1(n40), .CONTROL2(
        n41), .Z(n[78]) );
  GTECH_NOT ins_24_I_0 ( .A(ctrl[1]), .Z(n39) );
  GTECH_BUF ins_24_B_1 ( .A(n39), .Z(n38) );
  GTECH_BUF ins_24_B_0 ( .A(ctrl[1]), .Z(n37) );
  SELECT_OP ins_24_C9 ( .DATA1(n87), .DATA2(n85), .CONTROL1(n37), .CONTROL2(
        n38), .Z(n[77]) );
  GTECH_NOT ins_23_I_0 ( .A(ctrl[1]), .Z(n36) );
  GTECH_BUF ins_23_B_1 ( .A(n36), .Z(n35) );
  GTECH_BUF ins_23_B_0 ( .A(ctrl[1]), .Z(n34) );
  SELECT_OP ins_23_C9 ( .DATA1(n86), .DATA2(n84), .CONTROL1(n34), .CONTROL2(
        n35), .Z(n[76]) );
  GTECH_NOT ins_22_I_0 ( .A(ctrl[1]), .Z(n33) );
  GTECH_BUF ins_22_B_1 ( .A(n33), .Z(n32) );
  GTECH_BUF ins_22_B_0 ( .A(ctrl[1]), .Z(n31) );
  SELECT_OP ins_22_C9 ( .DATA1(n85), .DATA2(n83), .CONTROL1(n31), .CONTROL2(
        n32), .Z(n[75]) );
  GTECH_NOT ins_21_I_0 ( .A(ctrl[1]), .Z(n30) );
  GTECH_BUF ins_21_B_1 ( .A(n30), .Z(n29) );
  GTECH_BUF ins_21_B_0 ( .A(ctrl[1]), .Z(n28) );
  SELECT_OP ins_21_C9 ( .DATA1(n84), .DATA2(n82), .CONTROL1(n28), .CONTROL2(
        n29), .Z(n[74]) );
  GTECH_NOT ins_20_I_0 ( .A(ctrl[1]), .Z(n27) );
  GTECH_BUF ins_20_B_1 ( .A(n27), .Z(n26) );
  GTECH_BUF ins_20_B_0 ( .A(ctrl[1]), .Z(n25) );
  SELECT_OP ins_20_C9 ( .DATA1(n83), .DATA2(n81), .CONTROL1(n25), .CONTROL2(
        n26), .Z(n[73]) );
  GTECH_NOT ins_07_I_0 ( .A(ctrl[0]), .Z(n24) );
  GTECH_BUF ins_07_B_1 ( .A(n24), .Z(n23) );
  GTECH_BUF ins_07_B_0 ( .A(ctrl[0]), .Z(n22) );
  SELECT_OP ins_07_C9 ( .DATA1(1'b0), .DATA2(n[80]), .CONTROL1(n22), 
        .CONTROL2(n23), .Z(out[7]) );
  GTECH_NOT ins_06_I_0 ( .A(ctrl[0]), .Z(n21) );
  GTECH_BUF ins_06_B_1 ( .A(n21), .Z(n20) );
  GTECH_BUF ins_06_B_0 ( .A(ctrl[0]), .Z(n19) );
  SELECT_OP ins_06_C9 ( .DATA1(n[80]), .DATA2(n[79]), .CONTROL1(n19), 
        .CONTROL2(n20), .Z(out[6]) );
  GTECH_NOT ins_05_I_0 ( .A(ctrl[0]), .Z(n18) );
  GTECH_BUF ins_05_B_1 ( .A(n18), .Z(n17) );
  GTECH_BUF ins_05_B_0 ( .A(ctrl[0]), .Z(n16) );
  SELECT_OP ins_05_C9 ( .DATA1(n[79]), .DATA2(n[78]), .CONTROL1(n16), 
        .CONTROL2(n17), .Z(out[5]) );
  GTECH_NOT ins_04_I_0 ( .A(ctrl[0]), .Z(n15) );
  GTECH_BUF ins_04_B_1 ( .A(n15), .Z(n14) );
  GTECH_BUF ins_04_B_0 ( .A(ctrl[0]), .Z(n13) );
  SELECT_OP ins_04_C9 ( .DATA1(n[78]), .DATA2(n[77]), .CONTROL1(n13), 
        .CONTROL2(n14), .Z(out[4]) );
  GTECH_NOT ins_03_I_0 ( .A(ctrl[0]), .Z(n12) );
  GTECH_BUF ins_03_B_1 ( .A(n12), .Z(n11) );
  GTECH_BUF ins_03_B_0 ( .A(ctrl[0]), .Z(n10) );
  SELECT_OP ins_03_C9 ( .DATA1(n[77]), .DATA2(n[76]), .CONTROL1(n10), 
        .CONTROL2(n11), .Z(out[3]) );
  GTECH_NOT ins_02_I_0 ( .A(ctrl[0]), .Z(n9) );
  GTECH_BUF ins_02_B_1 ( .A(n9), .Z(n8) );
  GTECH_BUF ins_02_B_0 ( .A(ctrl[0]), .Z(n7) );
  SELECT_OP ins_02_C9 ( .DATA1(n[76]), .DATA2(n[75]), .CONTROL1(n7), 
        .CONTROL2(n8), .Z(out[2]) );
  GTECH_NOT ins_01_I_0 ( .A(ctrl[0]), .Z(n6) );
  GTECH_BUF ins_01_B_1 ( .A(n6), .Z(n5) );
  GTECH_BUF ins_01_B_0 ( .A(ctrl[0]), .Z(n4) );
  SELECT_OP ins_01_C9 ( .DATA1(n[75]), .DATA2(n[74]), .CONTROL1(n4), 
        .CONTROL2(n5), .Z(out[1]) );
  GTECH_NOT ins_00_I_0 ( .A(ctrl[0]), .Z(n3) );
  GTECH_BUF ins_00_B_1 ( .A(n3), .Z(n2) );
  GTECH_BUF ins_00_B_0 ( .A(ctrl[0]), .Z(n1) );
  SELECT_OP ins_00_C9 ( .DATA1(n[74]), .DATA2(n[73]), .CONTROL1(n1), 
        .CONTROL2(n2), .Z(out[0]) );
endmodule

