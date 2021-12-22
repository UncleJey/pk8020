library verilog;
use verilog.vl_types.all;
entity Scheme_vlg_sample_tst is
    port(
        \ACCESS\        : in     vl_logic;
        M20             : in     vl_logic;
        MODSEL          : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Scheme_vlg_sample_tst;
