module CRC_16_serial(
   input clk,
   input rst_n,
   output [15:0] crc
    );
    
    reg [31:0]data_parallel;
    reg data_serial;
    reg [5:0]cnt;
    
    reg [16:0]tmpcrc;
    
    parameter source_data=32'h96E32077;
    parameter polynomial=17'b1_0001_0000_0010_0001;
 
   assign crc=tmpcrc[15:0];
    
always @ (posedge clk or negedge rst_n)
begin
    if(!rst_n)
    begin
        data_parallel<=source_data;
        data_serial<=0;
    end
    else if(cnt<32)
    begin
        data_serial<=data_parallel[31];
        data_parallel<=data_parallel<<1;    
    end
    else
    begin
        data_serial<=0;
        data_parallel<=0;
    end
end
 
always @ (posedge clk or negedge rst_n)
begin
    if(!rst_n)
    begin
       tmpcrc<=0;
       cnt<=0;  
    end
    else 
    begin
        
        if(cnt<=16) //17bit then xor
        begin
            cnt<=cnt+1;
            tmpcrc<={tmpcrc[15:0],data_serial};
        end
        else if((cnt>=17)&&(cnt<=32))
        begin
            cnt<=cnt+1;
            if(tmpcrc[15]) // if =1 XOR polynomial
                tmpcrc<={tmpcrc[15:0],data_serial}^polynomial;
            else           // if =0 XOR 0
                tmpcrc<={tmpcrc[15:0],data_serial};
        end
        else if((cnt>=33)&&(cnt<=48)) //add 0 at tail
        begin 
           cnt<=cnt+1; 
           if(tmpcrc[15])
                tmpcrc<={tmpcrc[15:0],1'b0}^polynomial; 
           else
                tmpcrc<={tmpcrc[15:0],1'b0};
        end
        else 
        begin
           cnt<=cnt;
           tmpcrc<=tmpcrc; 
        end           
    end
end   
   
endmodule
