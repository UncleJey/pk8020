library verilog;
use verilog.vl_types.all;
entity test_vlg_sample_tst is
    port(
        \ACCESS\        : in     vl_logic;
        C               : in     vl_logic;
        aR              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end test_vlg_sample_tst;
