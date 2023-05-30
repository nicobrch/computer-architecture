library ieee;
use ieee.std_logic_1164.all;

entity SequenceDetector is
    port (
        X : in std_logic;
        CLK : in std_logic;
        Z : out std_logic
    );
end entity;

architecture Behavioral of SequenceDetector is
    signal state : integer range 0 to 6 := 0;
begin
    process(CLK)
    begin
        if rising_edge(CLK) then
            case state is
                when 0 =>       -- Estado Q0
                    if X = '1' then
                        state <= 1;
                    else
                        state <= 0;
                    end if;
                when 1 =>       -- Estado Q1
                    if X = '0' then
                        state <= 2;
                    else
                        state <= 1;
                    end if;
                when 2 =>       -- Estado Q2
                    if X = '1' then
                        state <= 3;
                    else
                        state <= 0;
                    end if;
                when 3 =>       -- Estado Q3
                    if X = '1' then
                        state <= 4;
                    else
                        state <= 2;
                    end if;
                when 4 =>       -- Estado Q4
                    if X = '1' then
                        state <= 5;
                    else
                        state <= 2;
                    end if;
                when 5 =>       -- Estado Q5
                    if X = '0' then
                        state <= 6;
                    else
                        state <= 1;
                    end if;
                when 6 =>       -- Estado Q6
                    if X = '1' then
                        state <= 1;
                    else
                        state <= 0;
                    end if;
            end case;

            if state = 6 then
                Z <= '1';
            else
                Z <= '0';
            end if;
        end if;
    end process;
end architecture;
