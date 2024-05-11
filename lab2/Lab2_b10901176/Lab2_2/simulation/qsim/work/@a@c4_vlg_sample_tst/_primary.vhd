library verilog;
use verilog.vl_types.all;
entity AC4_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        load            : in     vl_logic;
        rst_n           : in     vl_logic;
        x_i             : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end AC4_vlg_sample_tst;
