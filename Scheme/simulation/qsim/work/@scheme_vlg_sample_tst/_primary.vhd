library verilog;
use verilog.vl_types.all;
entity Scheme_vlg_sample_tst is
    port(
        A1              : in     vl_logic;
        B1              : in     vl_logic;
        GND             : in     vl_logic;
        inC1            : in     vl_logic;
        MHz_20          : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Scheme_vlg_sample_tst;