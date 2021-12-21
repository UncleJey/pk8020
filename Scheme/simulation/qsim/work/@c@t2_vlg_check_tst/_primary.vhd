library verilog;
use verilog.vl_types.all;
entity CT2_vlg_check_tst is
    port(
        CR              : in     vl_logic;
        OUT0            : in     vl_logic;
        OUT1            : in     vl_logic;
        OUT2            : in     vl_logic;
        OUT3            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end CT2_vlg_check_tst;
