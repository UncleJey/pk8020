library verilog;
use verilog.vl_types.all;
entity T_vlg_check_tst is
    port(
        RF              : in     vl_logic;
        RI              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end T_vlg_check_tst;
