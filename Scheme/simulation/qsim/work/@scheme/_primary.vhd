library verilog;
use verilog.vl_types.all;
entity Scheme is
    port(
        M4              : out    vl_logic;
        M20             : in     vl_logic;
        GND             : in     vl_logic;
        C1              : in     vl_logic;
        M2              : out    vl_logic;
        M1              : out    vl_logic;
        M10             : out    vl_logic;
        B1              : in     vl_logic;
        M5              : out    vl_logic;
        M2_5            : out    vl_logic;
        M1_25           : out    vl_logic;
        nF2T            : out    vl_logic;
        A1              : in     vl_logic;
        nRAS            : out    vl_logic;
        M_2_5           : out    vl_logic;
        nF1T            : out    vl_logic;
        nCAS            : out    vl_logic;
        \ACCESS\        : in     vl_logic;
        MODSEL          : in     vl_logic
    );
end Scheme;
