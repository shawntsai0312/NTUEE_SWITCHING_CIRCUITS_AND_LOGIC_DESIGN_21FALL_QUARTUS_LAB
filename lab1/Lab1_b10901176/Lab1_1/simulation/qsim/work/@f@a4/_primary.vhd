library verilog;
use verilog.vl_types.all;
entity FA4 is
    port(
        Co              : out    vl_logic;
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        S               : out    vl_logic_vector(3 downto 0)
    );
end FA4;
