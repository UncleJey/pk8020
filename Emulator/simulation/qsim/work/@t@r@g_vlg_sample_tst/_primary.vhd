library verilog;
use verilog.vl_types.all;
entity TRG_vlg_sample_tst is
    port(
        C               : in     vl_logic;
        D               : in     vl_logic;
        R               : in     vl_logic;
        S               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end TRG_vlg_sample_tst;
