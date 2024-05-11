library verilog;
use verilog.vl_types.all;
entity FS4 is
    port(
        D               : out    vl_logic_vector(4 downto 0);
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0)
    );
end FS4;
