module CRC8_IBUTTON(input [7:0] data,
                   input [7:0] crcIn,
                   output reg [7:0] crc);
                   
  always @ (data, crcIn) begin
    crc[0] = crcIn[2] ^ crcIn[4] ^ crcIn[5] ^ data[2] ^ data[4] ^ data[5];
    crc[1] = crcIn[0] ^ crcIn[3] ^ crcIn[5] ^ crcIn[6] ^ data[0] ^ data[3] ^ data[5] ^ data[6];
    crc[2] = crcIn[0] ^ crcIn[1] ^ crcIn[4] ^ crcIn[6] ^ crcIn[7] ^ data[0] ^ data[1] ^ data[4] ^ data[6] ^ data[7];
    crc[3] = crcIn[0] ^ crcIn[1] ^ crcIn[4] ^ crcIn[7] ^ data[0] ^ data[1] ^ data[4] ^ data[7];
    crc[4] = crcIn[0] ^ crcIn[1] ^ crcIn[4] ^ data[0] ^ data[1] ^ data[4];
    crc[5] = crcIn[1] ^ crcIn[2] ^ crcIn[5] ^ data[1] ^ data[2] ^ data[5];
    crc[6] = crcIn[0] ^ crcIn[2] ^ crcIn[3] ^ crcIn[6] ^ data[0] ^ data[2] ^ data[3] ^ data[6];
    crc[7] = crcIn[1] ^ crcIn[3] ^ crcIn[4] ^ crcIn[7] ^ data[1] ^ data[3] ^ data[4] ^ data[7];
  end

endmodule