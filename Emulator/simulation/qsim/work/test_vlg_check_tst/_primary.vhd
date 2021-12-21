library verilog;
use verilog.vl_types.all;
entity test_vlg_check_tst is
    port(
        B               : in     vl_logic;
        CSV             : in     vl_logic;
        G               : in     vl_logic;
        GCLK            : in     vl_logic;
        H               : in     vl_logic;
        R               : in     vl_logic;
        S1_25M          : in     vl_logic;
        S2_5M           : in     vl_logic;
        S5M             : in     vl_logic;
        V               : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end test_vlg_check_tst;
