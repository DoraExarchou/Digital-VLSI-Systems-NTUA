----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/16/2024 01:37:08 AM
-- Design Name: 
-- Module Name: fir_filter_single_mac - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fir_filter_single_mac is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           valid_in : in STD_LOGIC;
           x : in STD_LOGIC_VECTOR (7 downto 0);
           valid_out : out STD_LOGIC;
           y : out STD_LOGIC_VECTOR (19 downto 0));
end fir_filter_single_mac;

architecture structural of fir_filter_single_mac is

component mlab_ram is
	 generic (
		data_width : integer :=8  				--- width of data (bits)
	 );
    port (clk  : in std_logic;
          we   : in std_logic;						--- memory write enable
			 en   : in std_logic;				--- operation enable
          addr : in std_logic_vector(2 downto 0);			-- memory address
          di   : in std_logic_vector(data_width-1 downto 0);		-- input data
          do   : out std_logic_vector(data_width-1 downto 0));		-- output data
end component;

component mlab_rom is
	 generic (
		coeff_width : integer :=8  				--- width of coefficients (bits)
	 );
    Port ( clk : in  STD_LOGIC;
			  en : in  STD_LOGIC;				--- operation enable
           addr : in  STD_LOGIC_VECTOR (2 downto 0);			-- memory address
           rom_out : out  STD_LOGIC_VECTOR (coeff_width-1 downto 0));	-- output data
end component;

component mac is
    Port ( mac_a : in STD_LOGIC_VECTOR (7 downto 0);
           mac_b : in STD_LOGIC_VECTOR (7 downto 0);
           mac_ctrl : in STD_LOGIC_VECTOR (2 downto 0);
           mac_out : out STD_LOGIC_VECTOR (19 downto 0);
           rst : in STD_LOGIC;
           clk : in STD_LOGIC);
end component;

begin


end structural;
