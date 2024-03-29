library verilog;
use verilog.vl_types.all;
entity Scheme_vlg_check_tst is
    port(
        CSV             : in     vl_logic;
        GCLK            : in     vl_logic;
        HVSYNC          : in     vl_logic;
        LOAD            : in     vl_logic;
        LOADCT2         : in     vl_logic;
        LOADPOM         : in     vl_logic;
        M1              : in     vl_logic;
        M1_25           : in     vl_logic;
        M2              : in     vl_logic;
        M2_5            : in     vl_logic;
        M4              : in     vl_logic;
        M5              : in     vl_logic;
        M10             : in     vl_logic;
        M_2_5           : in     vl_logic;
        nCAS            : in     vl_logic;
        nF1T            : in     vl_logic;
        nF2T            : in     vl_logic;
        nRAS            : in     vl_logic;
        SHIFT           : in     vl_logic;
        VCLK            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Scheme_vlg_check_tst;
