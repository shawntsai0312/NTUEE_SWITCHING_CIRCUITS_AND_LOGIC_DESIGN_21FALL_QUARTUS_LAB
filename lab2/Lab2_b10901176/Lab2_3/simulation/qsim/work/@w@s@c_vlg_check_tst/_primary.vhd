library verilog;
use verilog.vl_types.all;
entity WSC_vlg_check_tst is
    port(
        done            : in     vl_logic;
        score           : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end WSC_vlg_check_tst;
