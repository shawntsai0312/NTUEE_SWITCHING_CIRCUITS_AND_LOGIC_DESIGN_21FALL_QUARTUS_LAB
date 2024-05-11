library verilog;
use verilog.vl_types.all;
entity MU4 is
    port(
        M               : out    vl_logic_vector(7 downto 0);
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0)
    );
end MU4;
