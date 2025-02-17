 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity pipeline_4bit_mult is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           P : out STD_LOGIC_VECTOR (7 downto 0);
          -- Cinall : in STD_LOGIC_VECTOR (3 downto 0);
           CLK : in STD_LOGIC;  -- Added CLK signal to port list
        RSTn : in STD_LOGIC  -- Added RSTn signal to port list
         --  Sinall : in STD_LOGIC_VECTOR (3 downto 0)
         );
         
           
end pipeline_4bit_mult;

 architecture structural of pipeline_4bit_mult is
 
signal tmp_B1 : std_logic;
signal tmp_B2 : std_logic_vector(1 downto 0);
signal tmp_B3 : std_logic_vector(2 downto 0);
signal tmp_S2 : std_logic;
signal tmp_S1 : std_logic_vector(1 downto 0);
signal tmp_S0 : std_logic_vector(2 downto 0);
signal cout_cell4 : std_logic_vector(3 downto 0);
signal cout_cell4_delay : std_logic_vector(2 downto 0);
signal Sout_First_cell4 : std_logic_vector(3 downto 0);
 signal Sout_Second_cell4 : std_logic_vector(3 downto 0);
signal Sout_Thirt_cell4 : std_logic_vector(3 downto 0);
signal Sout_Fourth_cell4 : std_logic_vector(3 downto 0);
signal Aout_First_cell4 : std_logic_vector(3 downto 0);
signal Aout_Second_cell4 : std_logic_vector(3 downto 0); 
signal Aout_Thirt_cell4 : std_logic_vector(3 downto 0);
signal Aout_Fourth_cell4 : std_logic_vector(3 downto 0);


 
 component cell_4_parallel is
      Port ( B_cell4 : in STD_LOGIC;
           A_cell4 : in STD_LOGIC_VECTOR (3 downto 0);
           Cin_cell4 : in STD_LOGIC;
           Sin_cell4 : in STD_LOGIC_VECTOR (3 downto 0);
           Sout_cell4 : out STD_LOGIC_VECTOR (3 downto 0);
           Cout_cell4 : out STD_LOGIC;
           CLK : in STD_LOGIC;
           RSTn : in STD_LOGIC;
           A_cell4_out :out STD_LOGIC_VECTOR (3 downto 0));
end component;

  component reg is 
    Port ( D : in STD_LOGIC;
           CLK : in STD_LOGIC;
           RSTn : in STD_LOGIC;
           Q : out STD_LOGIC);
  end component;

begin

 
First_cell4: cell_4_parallel port map(
B_cell4=>B(0),
A_cell4=>A,
Cin_cell4=>'0',
Sin_cell4=>(others => '0'),
Sout_cell4=>Sout_First_cell4,
Cout_cell4=>Cout_cell4(0),
CLK=>CLK,
A_cell4_out=>Aout_First_cell4,
RSTn=>RSTn);
 
reg_B1_shift: reg port map(D=>B(1) ,CLK=>CLK,RSTn=>RSTn,Q=>tmp_B1);
reg_cout_cell4_delay_first : reg port map(D=>Cout_cell4(0) ,CLK=>CLK,RSTn=>RSTn,Q=>cout_cell4_delay(0));
Second_cell4: cell_4_parallel port map(
B_cell4=>tmp_B1,
A_cell4=>Aout_First_cell4,
Cin_cell4=>'0',
Sin_cell4(0)=>Sout_First_cell4(1),
Sin_cell4(1)=>Sout_First_cell4(2),
Sin_cell4(2)=>Sout_First_cell4(3),
Sin_cell4(3)=>cout_cell4_delay(0),
Sout_cell4=>Sout_Second_cell4,
Cout_cell4=>cout_cell4(1),
A_cell4_out=>Aout_Second_cell4,
CLK=>CLK,
RSTn=>RSTn);
 
 reg_B20_shift: reg port map(D=>B(2),CLK=>CLK,RSTn=>RSTn,Q=>tmp_B2(0));
reg_B21_shift: reg port map(D=>tmp_B2(0),CLK=>CLK,RSTn=>RSTn,Q=>tmp_B2(1));
 reg_cout_cell4_delay_second : reg port map(D=>cout_cell4(1) ,CLK=>CLK,RSTn=>RSTn,Q=>cout_cell4_delay(1));
 
 Thirt_cell4: cell_4_parallel port map(
B_cell4=>tmp_B2(1),
A_cell4=>Aout_Second_cell4,
Cin_cell4=>'0',
Sin_cell4(0)=>Sout_Second_cell4(1),
Sin_cell4(1)=>Sout_Second_cell4(2),
Sin_cell4(2)=>Sout_Second_cell4(3),
Sin_cell4(3)=>cout_cell4_delay(1),
Sout_cell4=>Sout_Thirt_cell4,
Cout_cell4=>cout_cell4(2),
A_cell4_out=>Aout_Thirt_cell4,
CLK=>CLK,
RSTn=>RSTn);
  reg_B30_shift: reg port map(D=>B(3),CLK=>CLK,RSTn=>RSTn,Q=>tmp_B3(0));
 reg_B31_shift: reg port map(D=>tmp_B3(0),CLK=>CLK,RSTn=>RSTn,Q=>tmp_B3(1));
 reg_B32_shift: reg port map(D=>tmp_B3(1),CLK=>CLK,RSTn=>RSTn,Q=>tmp_B3(2));
 reg_cout_cell4_delay_third : reg port map(D=>cout_cell4(2) ,CLK=>CLK,RSTn=>RSTn,Q=>cout_cell4_delay(2));
 Fourth_cell4: cell_4_parallel port map(
B_cell4=>tmp_B3(2),
A_cell4=>Aout_Thirt_cell4,
Cin_cell4=>'0',
Sin_cell4(0)=>Sout_Thirt_cell4(1),
Sin_cell4(1)=>Sout_Thirt_cell4(2),
Sin_cell4(2)=>Sout_Thirt_cell4(3),
Sin_cell4(3)=>cout_cell4_delay(2),
Sout_cell4=>Sout_Fourth_cell4,
Cout_cell4=>cout_cell4(3),
A_cell4_out=>Aout_Fourth_cell4,
CLK=>CLK,
RSTn=>RSTn);





 reg_S00_Delay: reg port map(D=>Sout_First_cell4(0),CLK=>CLK,RSTn=>RSTn,Q=>tmp_S0(0));
 reg_S01_Delay: reg port map(D=>tmp_S0(0),CLK=>CLK,RSTn=>RSTn,Q=>P(0));
 --reg_S02_Delay: reg port map(D=>tmp_S0(1),CLK=>CLK,RSTn=>RSTn,Q=> P(0));
 
 
reg_S10_Delay: reg port map(D=>Sout_Second_cell4(0),CLK=>CLK,RSTn=>RSTn,Q=>P(1));
--reg_S11_Delay: reg port map(D=>tmp_S1(0),CLK=>CLK,RSTn=>RSTn,Q=>P(1));



--reg_S2_Delay: reg port map(D=>Sout_Thirt_cell4(0) ,CLK=>CLK,RSTn=>RSTn,Q=>P(2));

P(2)<=Sout_Thirt_cell4(0);
 P(3)<=Sout_Fourth_cell4(0) ;
 P(4)<=Sout_Fourth_cell4(1) ;
 P(5)<=Sout_Fourth_cell4(2) ;
 P(6)<=Sout_Fourth_cell4(3) ;
 P(7)<= cout_cell4(3) ;
 

 
end structural;
