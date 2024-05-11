library verilog;
use verilog.vl_types.all;
entity WSC is
    port(
        done            : out    vl_logic;
        load            : in     vl_logic;
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        score           : out    vl_logic_vector(3 downto 0);
        X               : in     vl_logic
    );
end WSC;
