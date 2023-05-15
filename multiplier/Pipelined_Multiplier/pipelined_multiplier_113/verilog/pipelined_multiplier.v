module pipelined_multiplier#(
    parameter N = 4,
    parameter M = 4
)(
    input               clk, 
    input               rstn,
    input               data_rdy,
    input   [N-1:0]     mult1,
    input   [M-1:0]     mult2,

    output              res_rdy,
    output  [N+M-1:0]   res
);

    wire [N+M-1:0]  mult1_t         [M-1:0];
    wire [M-1:0]    mult2_t         [M-1:0];
    wire [N+M-1:0]  mult1_acc_t     [M-1:0];
    wire [M-1:0]    rdy_t;   

    // 初始化的数据和后面例化数据不同，不可以用generate例化
    mult_cell #(.N(N), .M(M)) inst0(
            .clk            (clk),
            .rstn           (rstn),
            .en             (data_rdy),
            .mult1          ({{(M){1'b0}}, mult1}),
            .mult2          (mult2),
            .mult1_acci     ({(N+M){1'b0}}),

            .mult1_acco     (mult1_acc_t[0]),
            .mult2_shift    (mult2_t[0]),
            .mult1_o        (mult1_t[0]),
            .rdy            (rdy_t[0])
    );

    genvar  i;
    generate
        for (i=1; i<=M-1; i=i+1) begin:mult_stepx
            mult_cell #(.N(N), .M(M)) inst (
                .clk            (clk),
                .rstn           (rstn),
                .en             (rdy_t[i-1]),
                .mult1          (mult1_t[i-1]),
                .mult2          (mult2_t[i-1]),
                .mult1_acci     (mult1_acc_t[i-1]),

                .mult1_acco     (mult1_acc_t[i]),
                .mult1_o        (mult1_t[i]),
                .mult2_shift    (mult2_t[i]),
                .rdy            (rdy_t[i])
            );
        end
    endgenerate

    assign res_rdy      = rdy_t[M-1];
    assign res          = mult1_acc_t[M-1];
endmodule

module mult_cell #(
    parameter N = 4,
    parameter M = 4
)
(
    input                   clk,
    input                   rstn,
    input                   en,
    input   [M+N-1:0]       mult1,
    input   [M-1:0]         mult2,
    input   [M+N-1:0]       mult1_acci,

    output reg [M+N-1:0]    mult1_o,
    output reg [M-1:0]      mult2_shift,
    output reg [M+N-1:0]    mult1_acco,
    output reg              rdy
);

    always @(posedge clk or negedge rstn) begin
        if (!rstn) begin
            rdy         <= 'b0;
            mult1_o     <= 'b0;
            mult1_acco  <= 'b0;
            mult2_shift <= 'b0; 
        end

        else if (en) begin
            rdy         <= 'b1;
            mult2_shift <= mult2 >> 1;
            mult1_o     <= mult1 << 1;

            if (mult2[0]) begin
                mult1_acco <= mult1_acci + mult1;
            end

            else begin
                mult1_acco <= mult1_acci;
            end
        end 

        else begin
            rdy             <= 'b0;
            mult1_o         <= 'b0;
            mult1_acco      <= 'b0;
            mult2_shift     <= 'b0; 
        end 
    end
    
endmodule


