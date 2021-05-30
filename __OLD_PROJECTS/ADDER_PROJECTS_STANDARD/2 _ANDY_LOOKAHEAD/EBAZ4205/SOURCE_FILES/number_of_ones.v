
number_of_ones: if ( ALU_WIDTH = 32 ) generate
begin

process(din)
-- multiple variables not needed, but make intermediate steps
visible in simulation
variable temp : unsigned (ALU_MSB downto 0);
variable temp1 : unsigned (ALU_MSB downto 0);
variable temp2 : unsigned (ALU_MSB downto 0);
variable temp3 : unsigned (ALU_MSB downto 0);
variable temp4 : unsigned (ALU_MSB downto 0);
variable temp5 : unsigned (ALU_MSB downto 0);

begin
temp := unsigned(din);

temp1 := (temp AND X"5555_5555") + ( ( temp srl 1) AND
X"5555_5555"); -- 0..2 out x16

temp2 := (temp1 AND X"3333_3333") + ( ( temp1 srl 2) AND
X"3333_3333"); -- 0..4 out x8

temp3 := (temp2 AND X"0707_0707") + ( ( temp2 srl 4) AND
X"0707_0707"); -- 0..8 out x4

temp4 := (temp3 AND X"001f_001f") + ( ( temp3 srl 8) AND
X"001f_001f"); -- 0..16 out x2

temp5 := (temp4 AND X"0000_003f") + ( ( temp4 srl 16) AND
X"0000_003f"); -- 0..32 out

cnt <= std_logic_vector(temp5(5 downto 0));

end process;

end generate number_of_ones;
