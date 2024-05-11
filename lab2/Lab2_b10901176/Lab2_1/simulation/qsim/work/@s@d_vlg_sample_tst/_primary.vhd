library verilog;
use verilog.vl_types.all;
entity SD_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        X               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end SD_vlg_sample_tst;
