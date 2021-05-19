`timescale 1ns / 1ps

module number_of_ones(
    input [15:0] A,
    output reg [4:0] ones
    );

    integer i;
    
    always@(A)
    begin
        ones = 0;  //initialize count variable.
        for(i=0;i<16;i=i+1)   //for all the bits.
            ones = ones + A[i]; //Add the bit to the count.
    end

endmodule


//function count_ones_32_bit(s : std_logic_vector) return integer is
    
//        variable temp  : unsigned (31 downto 0);
//        variable temp1 : unsigned (31 downto 0);
//        variable temp2 : unsigned (31 downto 0);
//        variable temp3 : unsigned (31 downto 0);
//        variable temp4 : unsigned (31 downto 0);
//        variable temp5 : unsigned (31 downto 0);

//    begin
//        temp  := unsigned(s);
//        temp1 := (temp  AND X"5555_5555") + ( ( temp  srl 1)  AND X"5555_5555");  -- 0..2 out  x16
//        temp2 := (temp1 AND X"3333_3333") + ( ( temp1 srl 2)  AND X"3333_3333");  -- 0..4 out  x8
//        temp3 := (temp2 AND X"0707_0707") + ( ( temp2 srl 4)  AND X"0707_0707");  -- 0..8 out  x4
//        temp4 := (temp3 AND X"001f_001f") + ( ( temp3 srl 8)  AND X"001f_001f");  -- 0..16 out x2
//        temp5 := (temp4 AND X"0000_003f") + ( ( temp4 srl 16) AND X"0000_003f");  -- 0..32 out

//        return to_integer(temp5(5 downto 0));
//    end count_ones_32_bit;
