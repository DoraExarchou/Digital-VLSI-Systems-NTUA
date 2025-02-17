----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/15/2024 07:42:57 PM
-- Design Name: 
-- Module Name: mac - Behavioral
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
USE ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mac is
    Port ( mac_a : in STD_LOGIC_VECTOR (7 downto 0);
           mac_b : in STD_LOGIC_VECTOR (7 downto 0);
           mac_ctrl : in STD_LOGIC_VECTOR (2 downto 0);
           mac_out : out STD_LOGIC_VECTOR (19 downto 0);
           rst : in STD_LOGIC;
           clk : in STD_LOGIC);
end mac;

architecture Behavioral of mac is
signal acc_value : std_logic_vector(7 downto 0);
begin
    process(clk)
    begin
        if(rising_edge(clk) then
            if rst='1' then
                acc_value<=(others=>'0'); --reset mac to 00000000
            else
                acc_value<=
                
    


end Behavioral;
