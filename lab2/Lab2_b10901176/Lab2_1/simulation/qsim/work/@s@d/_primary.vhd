library verilog;
use verilog.vl_types.all;
entity SD is
    port(
        Z               : out    vl_logic;
        clk             : in     vl_logic;
        X               : in     vl_logic;
        rst_n           : in     vl_logic
    );
end SD;
