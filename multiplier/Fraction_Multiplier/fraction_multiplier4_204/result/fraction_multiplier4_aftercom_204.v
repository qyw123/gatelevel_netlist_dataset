
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n117, n118, n119,
         n120, n121, n122, n123, n124;
  wire   [96:94] n;

  \**SEQGEN**  A_reg_3_ ( .clear(1'b0), .preset(1'b0), .next_state(n50), 
        .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(n93), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(n37) );
  \**SEQGEN**  A_reg_2_ ( .clear(1'b0), .preset(1'b0), .next_state(n52), 
        .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(Product[6]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(n53) );
  \**SEQGEN**  A_reg_1_ ( .clear(1'b0), .preset(1'b0), .next_state(n54), 
        .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(Product[5]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(n55) );
  \**SEQGEN**  A_reg_0_ ( .clear(1'b0), .preset(1'b0), .next_state(n56), 
        .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(Product[4]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(n57) );
  \**SEQGEN**  State_reg_2_ ( .clear(1'b0), .preset(1'b0), .next_state(n58), 
        .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(n[96]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  State_reg_1_ ( .clear(1'b0), .preset(1'b0), .next_state(n59), 
        .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(n[95]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  State_reg_0_ ( .clear(1'b0), .preset(1'b0), .next_state(n60), 
        .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(n[94]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  B_reg_3_ ( .clear(1'b0), .preset(1'b0), .next_state(n42), 
        .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(Product[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(n43) );
  \**SEQGEN**  B_reg_2_ ( .clear(1'b0), .preset(1'b0), .next_state(n44), 
        .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(Product[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(n45) );
  \**SEQGEN**  B_reg_1_ ( .clear(1'b0), .preset(1'b0), .next_state(n46), 
        .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(Product[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(n47) );
  \**SEQGEN**  B_reg_0_ ( .clear(1'b0), .preset(1'b0), .next_state(n48), 
        .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(Product[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(n49) );
  GTECH_NOT I_0 ( .A(n[96]), .Z(n36) );
  GTECH_NOT I_1 ( .A(n[94]), .Z(n35) );
  GTECH_OR2 C106 ( .A(n[95]), .B(n36), .Z(n34) );
  GTECH_OR2 C107 ( .A(n35), .B(n34), .Z(n33) );
  GTECH_NOT I_2 ( .A(n33), .Z(Done) );
  GTECH_OR2 C109 ( .A(n91), .B(n90), .Z(n32) );
  ADD_UNS_OP add_45 ( .A(n), .B(1'b1), .Z({n75, n76, n77}) );
  GTECH_OR2 C116 ( .A(n89), .B(n88), .Z(n31) );
  ADD_UNS_OP add_36 ( .A({n93, Product[6:4]}), .B(Mcand), .Z({n82, n83, n84, 
        n85}) );
  GTECH_OR4 C141 ( .A(n92), .B(n90), .C(n89), .D(n88), .Z(n30) );
  GTECH_OR3 C143 ( .A(n92), .B(n89), .C(n88), .Z(n29) );
  ADD_UNS_OP add_51 ( .A({n93, Product[6:4]}), .B({n73, n72, n71, n70}), .Z({
        n66, n67, n68, n69}) );
  SUB_UNS_OP sub_add_51 ( .A(1'b0), .B(Mcand), .Z({n73, n72, n71, n70}) );
  SELECT_OP C145 ( .DATA1(n85), .DATA2(Product[4]), .CONTROL1(n124), 
        .CONTROL2(n86), .Z(n81) );
  GTECH_BUF B_0 ( .A(Product[0]), .Z(n124) );
  SELECT_OP C146 ( .DATA1({n82, n83, n84}), .DATA2({n93, Product[6:5]}), 
        .CONTROL1(n124), .CONTROL2(n86), .Z({n78, n79, n80}) );
  SELECT_OP C147 ( .DATA1(n69), .DATA2(Product[4]), .CONTROL1(n124), 
        .CONTROL2(n86), .Z(n64) );
  SELECT_OP C148 ( .DATA1({n66, n67, n68}), .DATA2({n93, Product[6:5]}), 
        .CONTROL1(n124), .CONTROL2(n86), .Z({n61, n62, n63}) );
  SELECT_OP C149 ( .DATA1(St), .DATA2(n77), .DATA3(1'b1), .DATA4(1'b0), 
        .CONTROL1(n123), .CONTROL2(n122), .CONTROL3(n121), .CONTROL4(n120), 
        .Z(n60) );
  GTECH_BUF B_1 ( .A(n92), .Z(n123) );
  GTECH_BUF B_2 ( .A(n91), .Z(n122) );
  GTECH_BUF B_3 ( .A(n90), .Z(n121) );
  GTECH_BUF B_4 ( .A(n31), .Z(n120) );
  SELECT_OP C150 ( .DATA1(1'b0), .DATA2(n76), .CONTROL1(n119), .CONTROL2(n122), 
        .Z(n59) );
  GTECH_BUF B_5 ( .A(n30), .Z(n119) );
  SELECT_OP C151 ( .DATA1(1'b0), .DATA2(n75), .DATA3(1'b1), .CONTROL1(n118), 
        .CONTROL2(n122), .CONTROL3(n121), .Z(n58) );
  GTECH_BUF B_6 ( .A(n29), .Z(n118) );
  SELECT_OP C152 ( .DATA1({St, St, St, St}), .DATA2({1'b1, 1'b1, 1'b1, 1'b1}), 
        .DATA3({1'b0, 1'b0, 1'b0, 1'b0}), .CONTROL1(n123), .CONTROL2(n117), 
        .CONTROL3(n120), .Z({n51, n53, n55, n57}) );
  GTECH_BUF B_7 ( .A(n32), .Z(n117) );
  SELECT_OP C153 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0}), .DATA2({Mcand[3], n78, 
        n79, n80}), .DATA3({n65, n61, n62, n63}), .CONTROL1(n123), .CONTROL2(
        n122), .CONTROL3(n121), .Z({n50, n52, n54, n56}) );
  SELECT_OP C154 ( .DATA1({St, St, St, St}), .DATA2({1'b1, 1'b1, 1'b1, 1'b1}), 
        .DATA3({1'b0, 1'b0, 1'b0, 1'b0}), .CONTROL1(n123), .CONTROL2(n117), 
        .CONTROL3(n120), .Z({n43, n45, n47, n49}) );
  SELECT_OP C155 ( .DATA1(Mplier[2:0]), .DATA2(Product[3:1]), .CONTROL1(n123), 
        .CONTROL2(n117), .Z({n44, n46, n48}) );
  SELECT_OP C156 ( .DATA1(Mplier[3]), .DATA2(n81), .DATA3(n64), .CONTROL1(n123), .CONTROL2(n122), .CONTROL3(n121), .Z(n42) );
  GTECH_AND2 C159 ( .A(n27), .B(n35), .Z(n92) );
  GTECH_AND2 C160 ( .A(n36), .B(n28), .Z(n27) );
  GTECH_NOT I_3 ( .A(n[95]), .Z(n28) );
  GTECH_OR2 C164 ( .A(n20), .B(n18), .Z(n91) );
  GTECH_OR2 C165 ( .A(n24), .B(n21), .Z(n20) );
  GTECH_NOT I_4 ( .A(n25), .Z(n24) );
  GTECH_OR2 C167 ( .A(n26), .B(n35), .Z(n25) );
  GTECH_OR2 C168 ( .A(n[96]), .B(n[95]), .Z(n26) );
  GTECH_NOT I_5 ( .A(n22), .Z(n21) );
  GTECH_OR2 C171 ( .A(n23), .B(n[94]), .Z(n22) );
  GTECH_OR2 C172 ( .A(n[96]), .B(n28), .Z(n23) );
  GTECH_NOT I_6 ( .A(n19), .Z(n18) );
  GTECH_OR2 C175 ( .A(n23), .B(n35), .Z(n19) );
  GTECH_NOT I_7 ( .A(n16), .Z(n90) );
  GTECH_OR2 C180 ( .A(n17), .B(n[94]), .Z(n16) );
  GTECH_OR2 C181 ( .A(n36), .B(n[95]), .Z(n17) );
  GTECH_NOT I_8 ( .A(n14), .Z(n89) );
  GTECH_OR2 C184 ( .A(n15), .B(n35), .Z(n14) );
  GTECH_OR2 C185 ( .A(n36), .B(n[95]), .Z(n15) );
  GTECH_AND2 C188 ( .A(n[96]), .B(n[95]), .Z(n88) );
  GTECH_BUF B_8 ( .A(n91), .Z(n87) );
  GTECH_NOT I_9 ( .A(Product[0]), .Z(n86) );
  GTECH_AND2 C191 ( .A(n87), .B(Product[0]) );
  GTECH_BUF B_9 ( .A(n90), .Z(n74) );
  GTECH_AND2 C194 ( .A(n74), .B(Product[0]) );
  GTECH_NOT I_10 ( .A(Mcand[3]), .Z(n65) );
  GTECH_AND2 C196 ( .A(n86), .B(n91), .Z(n41) );
  GTECH_AND2 C197 ( .A(n86), .B(n90), .Z(n40) );
  GTECH_OR2 C198 ( .A(n41), .B(n40), .Z(n39) );
  GTECH_NOT I_11 ( .A(n39), .Z(n38) );
  GTECH_AND2 C200 ( .A(n51), .B(n38), .Z(n37) );
endmodule

