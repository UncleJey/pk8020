library verilog;
use verilog.vl_types.all;
entity CT2_vlg_sample_tst is
    port(
        C               : in     vl_logic;
        D0              : in     vl_logic;
        D1              : in     vl_logic;
        D2              : in     vl_logic;
        D3              : in     vl_logic;
        DECR            : in     vl_logic;
        E1              : in     vl_logic;
        E2              : in     vl_logic;
        notEWR          : in     vl_logic;
        notR            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end CT2_vlg_sample_tst;
