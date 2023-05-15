module booth_multiplier4#(
    parameter pN = 4                // Width = 2**pN: multiplicand & multiplier
)(
    input   Rst,                    // Reset
    input   clk,                    // Clock
    
    input   Ld,                     // Load Registers and Start Multiplier
    input   [(2**pN - 1):0] M,      // Multiplicand
    input   [(2**pN - 1):0] R,      // Multiplier
    output  reg Valid,              // Product Valid
    output  reg [(2**(pN+1) - 1):0] P   // Product <= M * R
);

///////////////////////////////////////////////////////////////////////////////
//
//  Local Parameters
//

///////////////////////////////////////////////////////////////////////////////
//
//  Declarations
//

reg     [2**pN:0] A;      // Multiplicand w/ sign guard bit
reg     [   pN:0] Cntr;   // Operation Counter
reg     [2**pN:0] S;      // Adder w/ sign guard bit

reg     [(2**(pN+1) + 1):0] Prod;   // Double length product w/ guard bits

///////////////////////////////////////////////////////////////////////////////
//
//  Implementation
//

always @(posedge clk)
begin
    if(Rst)
        Cntr <= #1 0;
    else if(Ld)
        Cntr <= #1 2**pN;
    else if(|Cntr)
        Cntr <= #1 (Cntr - 1);
end

//  Multiplicand Register
//      includes an additional bit to guard sign bit in the event the
//      most negative value is provided as the multiplicand.

always @(posedge clk)
begin
    if(Rst)
        A <= #1 0;
    else if(Ld)
        A <= #1 {M[2**pN - 1], M};  
end

//  Compute Upper Partial Product: (2**pN + 1) bits in width

always @(*)
begin
    case(Prod[1:0])
        2'b01   : S <= Prod[(2**(pN+1) + 1):(2**pN + 1)] + A;
        2'b10   : S <= Prod[(2**(pN+1) + 1):(2**pN + 1)] - A;
        default : S <= Prod[(2**(pN+1) + 1):(2**pN + 1)];
    endcase
end

//  Register Partial products and shift rigth arithmetically.
//      Product register has guard bits on both ends.

always @(posedge clk)
begin
    if(Rst)
        Prod <= #1 0;
    else if(Ld)
        Prod <= #1 {R, 1'b0};
    else if(|Cntr)
        Prod <= #1 {S[2**pN], S, Prod[2**pN:1]};    // Arithmetic Shift Right
end

//  Assign the product less the two guard bits to the output port

always @(posedge clk)
begin
    if(Rst)
        P <= #1 0;
    else if(Cntr == 1)
        P <= #1 {S[2**pN], S, Prod[2**pN:2]};
end

//  Count the number of shifts
//      This implementation does not use any optimizations to perform multiple
//      bit shifts to skip over runs of 1s or 0s.

always @(posedge clk)
begin
    if(Rst)
        Valid <= #1 0;
    else
        Valid <= #1 (Cntr == 1);
end

endmodule