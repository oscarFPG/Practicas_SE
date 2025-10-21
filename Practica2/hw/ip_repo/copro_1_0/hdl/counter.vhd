library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity counter is
    generic(
        SIZE: integer := 8;
        CLK_FREQ : integer := 100000000
    );
    port(
        clk: in std_logic;
        reset: in std_logic;
        top: in std_logic_vector(SIZE - 1 downto 0);
        count: out std_logic_vector(SIZE - 1 downto 0)
    );
end counter;

architecture Behavioral of counter is

    signal counter_s: unsigned(SIZE - 1 downto 0) := (others => '0');
    signal counter1Hz: unsigned(26 downto 0) := (others => '0');

begin

    count <= std_logic_vector(counter_s);

process(clk)
begin
    if rising_edge(clk) then
        if reset = '0' then
            counter_s  <= (others => '0');
            counter1Hz <= (others => '0');
        else
            if counter1Hz = to_unsigned(CLK_FREQ - 1, 27) then
                counter1Hz <= (others => '0');
                if( counter_s = to_unsigned(top, SIZE) ) then
                end if;
                counter_s  <= counter_s + 1;
            else
                counter1Hz <= counter1Hz + 1;
            end if;
        end if;
    end if;
end process;

end Behavioral;
