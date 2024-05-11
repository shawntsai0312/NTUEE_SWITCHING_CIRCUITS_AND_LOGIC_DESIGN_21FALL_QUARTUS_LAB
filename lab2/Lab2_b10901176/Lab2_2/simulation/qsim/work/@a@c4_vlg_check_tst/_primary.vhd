library verilog;
use verilog.vl_types.all;
entity AC4_vlg_check_tst is
    port(
        done            : in     vl_logic;
        sum_0           : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end AC4_vlg_check_tst;
