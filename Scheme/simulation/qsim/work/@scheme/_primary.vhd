library verilog;
use verilog.vl_types.all;
entity Scheme is
    port(
        M4              : out    vl_logic;
        M20             : in     vl_logic;
        M2              : out    vl_logic;
        M1              : out    vl_logic;
        M10             : out    vl_logic;
        M5              : out    vl_logic;
        M2_5            : out    vl_logic;
        M1_25           : out    vl_logic;
        nF2T            : out    vl_logic;
        nRAS            : out    vl_logic;
        M_2_5           : out    vl_logic;
        nF1T            : out    vl_logic;
        nCAS            : out    vl_logic;
        CSV             : out    vl_logic;
        \ACCESS\        : in     vl_logic;
        MODSEL          : in     vl_logic;
        GCLK            : out    vl_logic;
        SHIFT           : out    vl_logic;
        LOADPOM         : out    vl_logic;
        HVSYNC          : out    vl_logic;
        LOADCT2         : out    vl_logic;
        LOAD            : out    vl_logic;
        VCLK            : out    vl_logic
    );
end Scheme;
