library verilog;
use verilog.vl_types.all;
entity FS4_vlg_check_tst is
    port(
        D               : in     vl_logic_vector(4 downto 0);
        sampler_rx      : in     vl_logic
    );
end FS4_vlg_check_tst;
