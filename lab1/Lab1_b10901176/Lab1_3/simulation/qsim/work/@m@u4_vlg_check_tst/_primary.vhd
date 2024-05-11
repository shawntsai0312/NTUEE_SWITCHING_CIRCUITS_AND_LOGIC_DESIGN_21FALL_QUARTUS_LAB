library verilog;
use verilog.vl_types.all;
entity MU4_vlg_check_tst is
    port(
        M               : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end MU4_vlg_check_tst;
