library verilog;
use verilog.vl_types.all;
entity test is
    port(
        R               : out    vl_logic;
        G               : out    vl_logic;
        B               : out    vl_logic;
        V               : out    vl_logic;
        H               : out    vl_logic;
        CSV             : out    vl_logic;
        GCLK            : out    vl_logic;
        S5M             : out    vl_logic;
        S2_5M           : out    vl_logic;
        S1_25M          : out    vl_logic;
        \ACCESS\        : in     vl_logic;
        C               : in     vl_logic;
        aR              : in     vl_logic
    );
end test;
